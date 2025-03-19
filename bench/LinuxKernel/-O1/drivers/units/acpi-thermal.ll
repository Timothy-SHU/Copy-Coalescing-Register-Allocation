; ModuleID = 'drivers/acpi/thermal.c'
source_filename = "drivers/acpi/thermal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_thermal__241_1151_acpi_thermal_init\22, \22a\22\09\09"
module asm "__initcall__kmod_thermal__241_1151_acpi_thermal_init6:\09\09\09"
module asm ".long\09__initstub__kmod_thermal__241_1151_acpi_thermal_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.acpi_driver = type { [80 x i8], [80 x i8], ptr, i32, %struct.acpi_device_ops, %struct.device_driver, ptr }
%struct.acpi_device_ops = type { ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_device_id = type { [16 x i8], i64, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.atomic64_t = type { i64 }
%struct.acpi_thermal = type { ptr, [8 x i8], i64, i64, i64, i8, %struct.acpi_thermal_trips, ptr, %struct.acpi_handle_list, ptr, i32, %struct.work_struct, %struct.mutex, %struct.refcount_struct }
%struct.acpi_thermal_trips = type { %struct.acpi_thermal_trip, %struct.acpi_thermal_trip, %struct.acpi_thermal_passive, [10 x %struct.acpi_thermal_active] }
%struct.acpi_thermal_trip = type { i64, i8 }
%struct.acpi_thermal_passive = type { %struct.acpi_thermal_trip, %struct.acpi_handle_list, i64, i64, i64 }
%struct.acpi_thermal_active = type { %struct.acpi_thermal_trip, %struct.acpi_handle_list }
%struct.acpi_handle_list = type { i32, [10 x ptr] }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.acpi_device = type { i32, i32, ptr, %struct.fwnode_handle, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, ptr, ptr, ptr, ptr, %struct.device, i32, i32, %struct.list_head, %struct.mutex, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], i32, %struct.acpi_pnp_type, i64, ptr, %struct.list_head, [40 x i8], [20 x i8], ptr }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state], i8 }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.3, i32, i32, %struct.list_head }
%struct.anon.3 = type { i8 }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.thermal_trip = type { i32, i32, i32, ptr }
%struct.thermal_cooling_device = type { i32, ptr, i64, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@__param_str_act = internal constant [12 x i8] c"thermal.act\00", align 1, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@act = internal global i32 0, align 4, !dbg !2348
@__param_act = internal constant %struct.kernel_param { ptr @__param_str_act, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.1 { ptr @act } }, section "__param", align 8, !dbg !2278
@__UNIQUE_ID_acttype229 = internal constant [25 x i8] c"thermal.parmtype=act:int\00", section ".modinfo", align 1, !dbg !2280
@__UNIQUE_ID_act230 = internal constant [68 x i8] c"thermal.parm=act:Disable or override all lowest active trip points.\00", section ".modinfo", align 1, !dbg !2285
@__param_str_crt = internal constant [12 x i8] c"thermal.crt\00", align 1, !dbg !2360
@crt = internal global i32 0, align 4, !dbg !2350
@__param_crt = internal constant %struct.kernel_param { ptr @__param_str_crt, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.1 { ptr @crt } }, section "__param", align 8, !dbg !2290
@__UNIQUE_ID_crttype231 = internal constant [25 x i8] c"thermal.parmtype=crt:int\00", section ".modinfo", align 1, !dbg !2292
@__UNIQUE_ID_crt232 = internal constant [60 x i8] c"thermal.parm=crt:Disable or lower all critical trip points.\00", section ".modinfo", align 1, !dbg !2294
@__param_str_tzp = internal constant [12 x i8] c"thermal.tzp\00", align 1, !dbg !2365
@tzp = internal global i32 0, align 4, !dbg !2352
@__param_tzp = internal constant %struct.kernel_param { ptr @__param_str_tzp, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.1 { ptr @tzp } }, section "__param", align 8, !dbg !2299
@__UNIQUE_ID_tzptype233 = internal constant [25 x i8] c"thermal.parmtype=tzp:int\00", section ".modinfo", align 1, !dbg !2301
@__UNIQUE_ID_tzp234 = internal constant [66 x i8] c"thermal.parm=tzp:Thermal zone polling frequency, in 1/10 seconds.\00", section ".modinfo", align 1, !dbg !2303
@__param_str_off = internal constant [12 x i8] c"thermal.off\00", align 1, !dbg !2367
@off = internal global i32 0, align 4, !dbg !2354
@__param_off = internal constant %struct.kernel_param { ptr @__param_str_off, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.1 { ptr @off } }, section "__param", align 8, !dbg !2308
@__UNIQUE_ID_offtype235 = internal constant [25 x i8] c"thermal.parmtype=off:int\00", section ".modinfo", align 1, !dbg !2310
@__UNIQUE_ID_off236 = internal constant [54 x i8] c"thermal.parm=off:Set to disable ACPI thermal support.\00", section ".modinfo", align 1, !dbg !2312
@__param_str_psv = internal constant [12 x i8] c"thermal.psv\00", align 1, !dbg !2369
@psv = internal global i32 0, align 4, !dbg !2356
@__param_psv = internal constant %struct.kernel_param { ptr @__param_str_psv, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.1 { ptr @psv } }, section "__param", align 8, !dbg !2317
@__UNIQUE_ID_psvtype237 = internal constant [25 x i8] c"thermal.parmtype=psv:int\00", section ".modinfo", align 1, !dbg !2319
@__UNIQUE_ID_psv238 = internal constant [62 x i8] c"thermal.parm=psv:Disable or override all passive trip points.\00", section ".modinfo", align 1, !dbg !2321
@acpi_thermal_driver = internal global %struct.acpi_driver { [80 x i8] c"thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [80 x i8] c"thermal_zone\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @thermal_device_ids, i32 0, %struct.acpi_device_ops { ptr @acpi_thermal_add, ptr @acpi_thermal_remove, ptr null }, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @acpi_thermal_pm, ptr null, ptr null }, ptr null }, align 8, !dbg !2371
@acpi_thermal_pm_queue = internal global ptr null, align 8, !dbg !2358
@__UNIQUE_ID___addressable___initstub__kmod_thermal__241_1151_acpi_thermal_init6242 = internal global ptr @__initstub__kmod_thermal__241_1151_acpi_thermal_init6, section ".discard.addressable", align 8, !dbg !2326
@__exitcall_acpi_thermal_exit = internal global ptr @acpi_thermal_exit, section ".exitcall.exit", align 8, !dbg !2328
@__UNIQUE_ID_author243 = internal constant [32 x i8] c"thermal.author=Paul Diefenbaugh\00", section ".modinfo", align 1, !dbg !2332
@__UNIQUE_ID_description244 = internal constant [45 x i8] c"thermal.description=ACPI Thermal Zone Driver\00", section ".modinfo", align 1, !dbg !2335
@__UNIQUE_ID_file245 = internal constant [34 x i8] c"thermal.file=drivers/acpi/thermal\00", section ".modinfo", align 1, !dbg !2340
@__UNIQUE_ID_license246 = internal constant [20 x i8] c"thermal.license=GPL\00", section ".modinfo", align 1, !dbg !2345
@thermal_device_ids = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [16 x i8] c"LNXTHERM\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !2393
@acpi_thermal_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @acpi_thermal_suspend, ptr @acpi_thermal_resume, ptr @acpi_thermal_suspend, ptr @acpi_thermal_resume, ptr @acpi_thermal_suspend, ptr @acpi_thermal_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !2496
@.str = private unnamed_addr constant [13 x i8] c"Thermal Zone\00", align 1, !dbg !2396
@.str.1 = private unnamed_addr constant [13 x i8] c"thermal_zone\00", align 1, !dbg !2401
@acpi_thermal_add.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2403
@.str.2 = private unnamed_addr constant [24 x i8] c"&tz->thermal_check_lock\00", align 1, !dbg !2415
@acpi_thermal_add.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2420
@.str.4 = private unnamed_addr constant [34 x i8] c"\016ACPI: thermal: %s [%s] (%ld C)\0A\00", align 1, !dbg !2422
@system_wq = external dso_local global ptr, align 8
@system_highpri_wq = external dso_local global ptr, align 8
@system_long_wq = external dso_local global ptr, align 8
@system_unbound_wq = external dso_local global ptr, align 8
@system_freezable_wq = external dso_local global ptr, align 8
@system_power_efficient_wq = external dso_local global ptr, align 8
@system_freezable_power_efficient_wq = external dso_local global ptr, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !2425
@.str.6 = private unnamed_addr constant [5 x i8] c"_SCP\00", align 1, !dbg !2430
@.str.7 = private unnamed_addr constant [5 x i8] c"_CRT\00", align 1, !dbg !2433
@.str.8 = private unnamed_addr constant [5 x i8] c"_HOT\00", align 1, !dbg !2435
@.str.9 = private unnamed_addr constant [5 x i8] c"_PSV\00", align 1, !dbg !2437
@.str.10 = private unnamed_addr constant [5 x i8] c"_TMP\00", align 1, !dbg !2439
@.str.11 = private unnamed_addr constant [54 x i8] c"\014ACPI: thermal: [Firmware Bug]: No valid trip found\0A\00", align 1, !dbg !2441
@.str.12 = private unnamed_addr constant [68 x i8] c"\016ACPI: thermal: [Firmware Bug]: Invalid critical threshold (%llu)\0A\00", align 1, !dbg !2444
@.str.13 = private unnamed_addr constant [42 x i8] c"\016ACPI: thermal: Critical threshold %d C\0A\00", align 1, !dbg !2447
@.str.14 = private unnamed_addr constant [5 x i8] c"_TC1\00", align 1, !dbg !2452
@.str.15 = private unnamed_addr constant [5 x i8] c"_TC2\00", align 1, !dbg !2454
@.str.16 = private unnamed_addr constant [5 x i8] c"_TSP\00", align 1, !dbg !2456
@.str.17 = private unnamed_addr constant [5 x i8] c"_PSL\00", align 1, !dbg !2458
@.str.18 = private unnamed_addr constant [3 x i8] c"\016\00", align 1, !dbg !2460
@.str.19 = private unnamed_addr constant [27 x i8] c"Invalid passive threshold\0A\00", align 1, !dbg !2463
@.str.20 = private unnamed_addr constant [80 x i8] c"ACPI thermal trip point %s changed\0APlease report to linux-acpi@vger.kernel.org\0A\00", align 1, !dbg !2468
@.str.21 = private unnamed_addr constant [7 x i8] c"device\00", align 1, !dbg !2470
@.str.22 = private unnamed_addr constant [6 x i8] c"state\00", align 1, !dbg !2473
@.str.23 = private unnamed_addr constant [28 x i8] c"Invalid active%d threshold\0A\00", align 1, !dbg !2478
@.str.24 = private unnamed_addr constant [5 x i8] c"_TZD\00", align 1, !dbg !2483
@.str.25 = private unnamed_addr constant [5 x i8] c"_TZP\00", align 1, !dbg !2485
@.str.26 = private unnamed_addr constant [7 x i8] c"acpitz\00", align 1, !dbg !2487
@acpi_thermal_zone_ops = internal global %struct.thermal_zone_device_ops { ptr @acpi_thermal_bind_cooling_device, ptr @acpi_thermal_unbind_cooling_device, ptr @thermal_get_temp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @thermal_get_trend, ptr @acpi_thermal_zone_device_hot, ptr @acpi_thermal_zone_device_critical }, align 8, !dbg !2494
@.str.27 = private unnamed_addr constant [30 x i8] c"registered as thermal_zone%d\0A\00", align 1, !dbg !2489
@thermal_dmi_table = internal constant [5 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @thermal_act, ptr @.str.30, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"AOpen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"i915GMm-HFS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @thermal_psv, ptr @.str.30, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"AOpen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"i915GMm-HFS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @thermal_tzp, ptr @.str.30, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"AOpen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"i915GMm-HFS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @thermal_nocrt, ptr @.str.31, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Gigabyte Technology Co., Ltd.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"7ZX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 16, !dbg !2513
@.str.28 = private unnamed_addr constant [43 x i8] c"\015ACPI: thermal: thermal control disabled\0A\00", align 1, !dbg !2498
@.str.29 = private unnamed_addr constant [16 x i8] c"acpi_thermal_pm\00", align 1, !dbg !2503
@.str.30 = private unnamed_addr constant [18 x i8] c"AOpen i915GMm-HFS\00", align 1, !dbg !2506
@.str.31 = private unnamed_addr constant [16 x i8] c"Gigabyte GA-7ZX\00", align 1, !dbg !2511
@.str.32 = private unnamed_addr constant [72 x i8] c"\015ACPI: thermal: %s detected: disabling all active thermal trip points\0A\00", align 1, !dbg !2536
@.str.33 = private unnamed_addr constant [73 x i8] c"\015ACPI: thermal: %s detected: disabling all passive thermal trip points\0A\00", align 1, !dbg !2541
@.str.34 = private unnamed_addr constant [61 x i8] c"\015ACPI: thermal: %s detected: enabling thermal zone polling\0A\00", align 1, !dbg !2546
@.str.35 = private unnamed_addr constant [82 x i8] c"\015ACPI: thermal: %s detected: disabling all critical thermal trip point actions.\0A\00", align 1, !dbg !2551
@llvm.compiler.used = appending global [22 x ptr] [ptr @__param_act, ptr @__UNIQUE_ID_acttype229, ptr @__UNIQUE_ID_act230, ptr @__param_crt, ptr @__UNIQUE_ID_crttype231, ptr @__UNIQUE_ID_crt232, ptr @__param_tzp, ptr @__UNIQUE_ID_tzptype233, ptr @__UNIQUE_ID_tzp234, ptr @__param_off, ptr @__UNIQUE_ID_offtype235, ptr @__UNIQUE_ID_off236, ptr @__param_psv, ptr @__UNIQUE_ID_psvtype237, ptr @__UNIQUE_ID_psv238, ptr @acpi_thermal_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_thermal__241_1151_acpi_thermal_init6242, ptr @__exitcall_acpi_thermal_exit, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @acpi_thermal_exit() #0 section ".exit.text" align 16 !dbg !2565 {
entry:
  call void @acpi_bus_unregister_driver(ptr noundef @acpi_thermal_driver) #20, !dbg !2566
  %0 = load ptr, ptr @acpi_thermal_pm_queue, align 8, !dbg !2567
  call void @destroy_workqueue(ptr noundef %0) #20, !dbg !2568
  ret void, !dbg !2569
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2570 dso_local void @acpi_bus_unregister_driver(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2574 dso_local void @destroy_workqueue(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_thermal__241_1151_acpi_thermal_init6() #0 section ".init.text" align 16 !dbg !2577 {
entry:
  %call = call i32 @acpi_thermal_init() #21, !dbg !2578
  ret i32 %call, !dbg !2578
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_thermal_init() #0 section ".init.text" align 16 !dbg !2579 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #22, !dbg !2582
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2581, metadata !DIExpression()), !dbg !2583
  %call = call i32 @dmi_check_system(ptr noundef @thermal_dmi_table) #20, !dbg !2584
  %0 = load i32, ptr @off, align 4, !dbg !2585
  %tobool = icmp ne i32 %0, 0, !dbg !2585
  br i1 %tobool, label %if.then, label %if.end, !dbg !2587

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2588

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2591

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2591

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.28) #21, !dbg !2588
  store i32 %call1, ptr %tmp, align 4, !dbg !2591
  %1 = load i32, ptr %tmp, align 4, !dbg !2588
  store i32 -19, ptr %retval, align 4, !dbg !2593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2593

if.end:                                           ; preds = %entry
  %call2 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef @.str.29, i32 noundef 24, i32 noundef 0) #20, !dbg !2594
  store ptr %call2, ptr @acpi_thermal_pm_queue, align 8, !dbg !2595
  %2 = load ptr, ptr @acpi_thermal_pm_queue, align 8, !dbg !2596
  %tobool3 = icmp ne ptr %2, null, !dbg !2596
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2598

if.then4:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !2599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2599

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @acpi_bus_register_driver(ptr noundef @acpi_thermal_driver) #20, !dbg !2600
  store i32 %call6, ptr %result, align 4, !dbg !2601
  %3 = load i32, ptr %result, align 4, !dbg !2602
  %cmp = icmp slt i32 %3, 0, !dbg !2604
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !2605

if.then7:                                         ; preds = %if.end5
  %4 = load ptr, ptr @acpi_thermal_pm_queue, align 8, !dbg !2606
  call void @destroy_workqueue(ptr noundef %4) #20, !dbg !2608
  store i32 -19, ptr %retval, align 4, !dbg !2609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2609

if.end8:                                          ; preds = %if.end5
  store i32 0, ptr %retval, align 4, !dbg !2610
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2610

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then4, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #22, !dbg !2611
  %5 = load i32, ptr %retval, align 4, !dbg !2611
  ret i32 %5, !dbg !2611
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_thermal_add(ptr noundef %device) #2 align 16 !dbg !2405 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  %tmp = alloca i32, align 4
  %_wq = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2407, metadata !DIExpression()), !dbg !2612
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #22, !dbg !2613
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !2408, metadata !DIExpression()), !dbg !2614
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #22, !dbg !2615
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2409, metadata !DIExpression()), !dbg !2616
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2617
  %tobool = icmp ne ptr %0, null, !dbg !2617
  br i1 %tobool, label %if.end, label %if.then, !dbg !2619

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2620

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 1432, i32 noundef 3264) #23, !dbg !2621
  store ptr %call, ptr %tz, align 8, !dbg !2622
  %1 = load ptr, ptr %tz, align 8, !dbg !2623
  %tobool1 = icmp ne ptr %1, null, !dbg !2623
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2625

if.then2:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !2626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2626

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %device.addr, align 8, !dbg !2627
  %3 = load ptr, ptr %tz, align 8, !dbg !2628
  %device4 = getelementptr inbounds %struct.acpi_thermal, ptr %3, i32 0, i32 0, !dbg !2629
  store ptr %2, ptr %device4, align 8, !dbg !2630
  %4 = load ptr, ptr %tz, align 8, !dbg !2631
  %name = getelementptr inbounds %struct.acpi_thermal, ptr %4, i32 0, i32 1, !dbg !2632
  %arraydecay = getelementptr inbounds [8 x i8], ptr %name, i64 0, i64 0, !dbg !2631
  %5 = load ptr, ptr %device.addr, align 8, !dbg !2633
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %5, i32 0, i32 8, !dbg !2634
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 0, !dbg !2635
  %arraydecay5 = getelementptr inbounds [8 x i8], ptr %bus_id, i64 0, i64 0, !dbg !2633
  %call6 = call ptr @strcpy(ptr noundef %arraydecay, ptr noundef %arraydecay5) #20, !dbg !2636
  %6 = load ptr, ptr %device.addr, align 8, !dbg !2637
  %pnp7 = getelementptr inbounds %struct.acpi_device, ptr %6, i32 0, i32 8, !dbg !2637
  %device_name = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp7, i32 0, i32 6, !dbg !2637
  %arraydecay8 = getelementptr inbounds [40 x i8], ptr %device_name, i64 0, i64 0, !dbg !2637
  %call9 = call ptr @strcpy(ptr noundef %arraydecay8, ptr noundef @.str) #20, !dbg !2638
  %7 = load ptr, ptr %device.addr, align 8, !dbg !2639
  %pnp10 = getelementptr inbounds %struct.acpi_device, ptr %7, i32 0, i32 8, !dbg !2639
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp10, i32 0, i32 7, !dbg !2639
  %arraydecay11 = getelementptr inbounds [20 x i8], ptr %device_class, i64 0, i64 0, !dbg !2639
  %call12 = call ptr @strcpy(ptr noundef %arraydecay11, ptr noundef @.str.1) #20, !dbg !2640
  %8 = load ptr, ptr %tz, align 8, !dbg !2641
  %9 = load ptr, ptr %device.addr, align 8, !dbg !2642
  %driver_data = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 17, !dbg !2643
  store ptr %8, ptr %driver_data, align 8, !dbg !2644
  %10 = load ptr, ptr %tz, align 8, !dbg !2645
  %call13 = call i32 @acpi_thermal_get_info(ptr noundef %10) #20, !dbg !2646
  store i32 %call13, ptr %result, align 4, !dbg !2647
  %11 = load i32, ptr %result, align 4, !dbg !2648
  %tobool14 = icmp ne i32 %11, 0, !dbg !2648
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2650

if.then15:                                        ; preds = %if.end3
  br label %free_memory, !dbg !2651

if.end16:                                         ; preds = %if.end3
  %12 = load ptr, ptr %tz, align 8, !dbg !2652
  call void @acpi_thermal_guess_offset(ptr noundef %12) #20, !dbg !2653
  %13 = load ptr, ptr %tz, align 8, !dbg !2654
  %call17 = call i32 @acpi_thermal_register_thermal_zone(ptr noundef %13) #20, !dbg !2655
  store i32 %call17, ptr %result, align 4, !dbg !2656
  %14 = load i32, ptr %result, align 4, !dbg !2657
  %tobool18 = icmp ne i32 %14, 0, !dbg !2657
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !2659

if.then19:                                        ; preds = %if.end16
  br label %free_memory, !dbg !2660

if.end20:                                         ; preds = %if.end16
  %15 = load ptr, ptr %tz, align 8, !dbg !2661
  %thermal_check_count = getelementptr inbounds %struct.acpi_thermal, ptr %15, i32 0, i32 13, !dbg !2662
  call void @refcount_set(ptr noundef %thermal_check_count, i32 noundef 3) #20, !dbg !2663
  br label %do.body, !dbg !2664

do.body:                                          ; preds = %if.end20
  %16 = load ptr, ptr %tz, align 8, !dbg !2665
  %thermal_check_lock = getelementptr inbounds %struct.acpi_thermal, ptr %16, i32 0, i32 12, !dbg !2665
  call void @__mutex_init(ptr noundef %thermal_check_lock, ptr noundef @.str.2, ptr noundef @acpi_thermal_add.__key) #20, !dbg !2665
  br label %do.cond, !dbg !2665

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2665

do.end:                                           ; preds = %do.cond
  br label %do.body21, !dbg !2667

do.body21:                                        ; preds = %do.end
  br label %do.body22, !dbg !2668

do.body22:                                        ; preds = %do.body21
  %17 = load ptr, ptr %tz, align 8, !dbg !2670
  %thermal_check_work = getelementptr inbounds %struct.acpi_thermal, ptr %17, i32 0, i32 11, !dbg !2670
  call void @__init_work(ptr noundef %thermal_check_work, i32 noundef 0) #20, !dbg !2670
  %18 = load ptr, ptr %tz, align 8, !dbg !2670
  %thermal_check_work23 = getelementptr inbounds %struct.acpi_thermal, ptr %18, i32 0, i32 11, !dbg !2670
  %data = getelementptr inbounds %struct.work_struct, ptr %thermal_check_work23, i32 0, i32 0, !dbg !2670
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !2670
  store i64 68719476704, ptr %counter, align 8, !dbg !2670
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !2670
  %19 = load ptr, ptr %tz, align 8, !dbg !2670
  %thermal_check_work24 = getelementptr inbounds %struct.acpi_thermal, ptr %19, i32 0, i32 11, !dbg !2670
  %entry25 = getelementptr inbounds %struct.work_struct, ptr %thermal_check_work24, i32 0, i32 1, !dbg !2670
  call void @INIT_LIST_HEAD(ptr noundef %entry25) #20, !dbg !2670
  %20 = load ptr, ptr %tz, align 8, !dbg !2670
  %thermal_check_work26 = getelementptr inbounds %struct.acpi_thermal, ptr %20, i32 0, i32 11, !dbg !2670
  %func = getelementptr inbounds %struct.work_struct, ptr %thermal_check_work26, i32 0, i32 2, !dbg !2670
  store ptr @acpi_thermal_check_fn, ptr %func, align 8, !dbg !2670
  br label %do.cond27, !dbg !2670

do.cond27:                                        ; preds = %do.body22
  br label %do.end28, !dbg !2670

do.end28:                                         ; preds = %do.cond27
  br label %do.cond29, !dbg !2668

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !2668

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !2672

do.body31:                                        ; preds = %do.end30
  br label %do.cond32, !dbg !2674

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !2674

do.end33:                                         ; preds = %do.cond32
  %21 = load ptr, ptr %device.addr, align 8, !dbg !2672
  %pnp34 = getelementptr inbounds %struct.acpi_device, ptr %21, i32 0, i32 8, !dbg !2672
  %device_name35 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp34, i32 0, i32 6, !dbg !2672
  %arraydecay36 = getelementptr inbounds [40 x i8], ptr %device_name35, i64 0, i64 0, !dbg !2672
  %22 = load ptr, ptr %device.addr, align 8, !dbg !2672
  %pnp37 = getelementptr inbounds %struct.acpi_device, ptr %22, i32 0, i32 8, !dbg !2672
  %bus_id38 = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp37, i32 0, i32 0, !dbg !2672
  %arraydecay39 = getelementptr inbounds [8 x i8], ptr %bus_id38, i64 0, i64 0, !dbg !2672
  %23 = load ptr, ptr %tz, align 8, !dbg !2672
  %temperature = getelementptr inbounds %struct.acpi_thermal, ptr %23, i32 0, i32 2, !dbg !2672
  %24 = load i64, ptr %temperature, align 8, !dbg !2672
  %call40 = call i64 @deci_kelvin_to_celsius(i64 noundef %24) #20, !dbg !2672
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %arraydecay36, ptr noundef %arraydecay39, i64 noundef %call40) #21, !dbg !2672
  store i32 %call41, ptr %tmp, align 4, !dbg !2674
  %25 = load i32, ptr %tmp, align 4, !dbg !2672
  %26 = load ptr, ptr %device.addr, align 8, !dbg !2676
  %call42 = call i32 @acpi_dev_install_notify_handler(ptr noundef %26, i32 noundef 2, ptr noundef @acpi_thermal_notify) #20, !dbg !2677
  store i32 %call42, ptr %result, align 4, !dbg !2678
  %27 = load i32, ptr %result, align 4, !dbg !2679
  %tobool43 = icmp ne i32 %27, 0, !dbg !2679
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !2681

if.then44:                                        ; preds = %do.end33
  br label %flush_wq, !dbg !2682

if.end45:                                         ; preds = %do.end33
  store i32 0, ptr %retval, align 4, !dbg !2683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2683

flush_wq:                                         ; preds = %if.then44
  call void @llvm.dbg.label(metadata !2410), !dbg !2684
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wq) #22, !dbg !2685
  call void @llvm.dbg.declare(metadata ptr %_wq, metadata !2411, metadata !DIExpression()), !dbg !2685
  %28 = load ptr, ptr @acpi_thermal_pm_queue, align 8, !dbg !2685
  store ptr %28, ptr %_wq, align 8, !dbg !2685
  %29 = load ptr, ptr %_wq, align 8, !dbg !2686
  %30 = load ptr, ptr @system_wq, align 8, !dbg !2686
  %cmp = icmp eq ptr %29, %30, !dbg !2686
  %conv = zext i1 %cmp to i32, !dbg !2686
  %31 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !2686
  br i1 %31, label %land.lhs.true, label %lor.lhs.false, !dbg !2686

land.lhs.true:                                    ; preds = %flush_wq
  %32 = load ptr, ptr %_wq, align 8, !dbg !2686
  %33 = load ptr, ptr @system_wq, align 8, !dbg !2686
  %cmp46 = icmp eq ptr %32, %33, !dbg !2686
  br i1 %cmp46, label %if.then83, label %lor.lhs.false, !dbg !2686

lor.lhs.false:                                    ; preds = %land.lhs.true, %flush_wq
  %34 = load ptr, ptr %_wq, align 8, !dbg !2686
  %35 = load ptr, ptr @system_highpri_wq, align 8, !dbg !2686
  %cmp48 = icmp eq ptr %34, %35, !dbg !2686
  %conv49 = zext i1 %cmp48 to i32, !dbg !2686
  %36 = call i1 @llvm.is.constant.i32(i32 %conv49), !dbg !2686
  br i1 %36, label %land.lhs.true50, label %lor.lhs.false53, !dbg !2686

land.lhs.true50:                                  ; preds = %lor.lhs.false
  %37 = load ptr, ptr %_wq, align 8, !dbg !2686
  %38 = load ptr, ptr @system_highpri_wq, align 8, !dbg !2686
  %cmp51 = icmp eq ptr %37, %38, !dbg !2686
  br i1 %cmp51, label %if.then83, label %lor.lhs.false53, !dbg !2686

lor.lhs.false53:                                  ; preds = %land.lhs.true50, %lor.lhs.false
  %39 = load ptr, ptr %_wq, align 8, !dbg !2686
  %40 = load ptr, ptr @system_long_wq, align 8, !dbg !2686
  %cmp54 = icmp eq ptr %39, %40, !dbg !2686
  %conv55 = zext i1 %cmp54 to i32, !dbg !2686
  %41 = call i1 @llvm.is.constant.i32(i32 %conv55), !dbg !2686
  br i1 %41, label %land.lhs.true56, label %lor.lhs.false59, !dbg !2686

land.lhs.true56:                                  ; preds = %lor.lhs.false53
  %42 = load ptr, ptr %_wq, align 8, !dbg !2686
  %43 = load ptr, ptr @system_long_wq, align 8, !dbg !2686
  %cmp57 = icmp eq ptr %42, %43, !dbg !2686
  br i1 %cmp57, label %if.then83, label %lor.lhs.false59, !dbg !2686

lor.lhs.false59:                                  ; preds = %land.lhs.true56, %lor.lhs.false53
  %44 = load ptr, ptr %_wq, align 8, !dbg !2686
  %45 = load ptr, ptr @system_unbound_wq, align 8, !dbg !2686
  %cmp60 = icmp eq ptr %44, %45, !dbg !2686
  %conv61 = zext i1 %cmp60 to i32, !dbg !2686
  %46 = call i1 @llvm.is.constant.i32(i32 %conv61), !dbg !2686
  br i1 %46, label %land.lhs.true62, label %lor.lhs.false65, !dbg !2686

land.lhs.true62:                                  ; preds = %lor.lhs.false59
  %47 = load ptr, ptr %_wq, align 8, !dbg !2686
  %48 = load ptr, ptr @system_unbound_wq, align 8, !dbg !2686
  %cmp63 = icmp eq ptr %47, %48, !dbg !2686
  br i1 %cmp63, label %if.then83, label %lor.lhs.false65, !dbg !2686

lor.lhs.false65:                                  ; preds = %land.lhs.true62, %lor.lhs.false59
  %49 = load ptr, ptr %_wq, align 8, !dbg !2686
  %50 = load ptr, ptr @system_freezable_wq, align 8, !dbg !2686
  %cmp66 = icmp eq ptr %49, %50, !dbg !2686
  %conv67 = zext i1 %cmp66 to i32, !dbg !2686
  %51 = call i1 @llvm.is.constant.i32(i32 %conv67), !dbg !2686
  br i1 %51, label %land.lhs.true68, label %lor.lhs.false71, !dbg !2686

land.lhs.true68:                                  ; preds = %lor.lhs.false65
  %52 = load ptr, ptr %_wq, align 8, !dbg !2686
  %53 = load ptr, ptr @system_freezable_wq, align 8, !dbg !2686
  %cmp69 = icmp eq ptr %52, %53, !dbg !2686
  br i1 %cmp69, label %if.then83, label %lor.lhs.false71, !dbg !2686

lor.lhs.false71:                                  ; preds = %land.lhs.true68, %lor.lhs.false65
  %54 = load ptr, ptr %_wq, align 8, !dbg !2686
  %55 = load ptr, ptr @system_power_efficient_wq, align 8, !dbg !2686
  %cmp72 = icmp eq ptr %54, %55, !dbg !2686
  %conv73 = zext i1 %cmp72 to i32, !dbg !2686
  %56 = call i1 @llvm.is.constant.i32(i32 %conv73), !dbg !2686
  br i1 %56, label %land.lhs.true74, label %lor.lhs.false77, !dbg !2686

land.lhs.true74:                                  ; preds = %lor.lhs.false71
  %57 = load ptr, ptr %_wq, align 8, !dbg !2686
  %58 = load ptr, ptr @system_power_efficient_wq, align 8, !dbg !2686
  %cmp75 = icmp eq ptr %57, %58, !dbg !2686
  br i1 %cmp75, label %if.then83, label %lor.lhs.false77, !dbg !2686

lor.lhs.false77:                                  ; preds = %land.lhs.true74, %lor.lhs.false71
  %59 = load ptr, ptr %_wq, align 8, !dbg !2686
  %60 = load ptr, ptr @system_freezable_power_efficient_wq, align 8, !dbg !2686
  %cmp78 = icmp eq ptr %59, %60, !dbg !2686
  %conv79 = zext i1 %cmp78 to i32, !dbg !2686
  %61 = call i1 @llvm.is.constant.i32(i32 %conv79), !dbg !2686
  br i1 %61, label %land.lhs.true80, label %if.end84, !dbg !2686

land.lhs.true80:                                  ; preds = %lor.lhs.false77
  %62 = load ptr, ptr %_wq, align 8, !dbg !2686
  %63 = load ptr, ptr @system_freezable_power_efficient_wq, align 8, !dbg !2686
  %cmp81 = icmp eq ptr %62, %63, !dbg !2686
  br i1 %cmp81, label %if.then83, label %if.end84, !dbg !2685

if.then83:                                        ; preds = %land.lhs.true80, %land.lhs.true74, %land.lhs.true68, %land.lhs.true62, %land.lhs.true56, %land.lhs.true50, %land.lhs.true
  call void @__warn_flushing_systemwide_wq() #20, !dbg !2686, !srcloc !2688
  br label %if.end84, !dbg !2686

if.end84:                                         ; preds = %if.then83, %land.lhs.true80, %lor.lhs.false77
  %64 = load ptr, ptr %_wq, align 8, !dbg !2685
  call void @__flush_workqueue(ptr noundef %64) #20, !dbg !2685
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wq) #22, !dbg !2689
  %65 = load ptr, ptr %tz, align 8, !dbg !2690
  call void @acpi_thermal_unregister_thermal_zone(ptr noundef %65) #20, !dbg !2691
  br label %free_memory, !dbg !2691

free_memory:                                      ; preds = %if.end84, %if.then19, %if.then15
  call void @llvm.dbg.label(metadata !2413), !dbg !2692
  %66 = load ptr, ptr %tz, align 8, !dbg !2693
  call void @kfree(ptr noundef %66) #20, !dbg !2694
  %67 = load i32, ptr %result, align 4, !dbg !2695
  store i32 %67, ptr %retval, align 4, !dbg !2696
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2696

cleanup:                                          ; preds = %free_memory, %if.end45, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #22, !dbg !2697
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #22, !dbg !2697
  %68 = load i32, ptr %retval, align 4, !dbg !2697
  ret i32 %68, !dbg !2697
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_thermal_remove(ptr noundef %device) #2 align 16 !dbg !2698 {
entry:
  %device.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_wq = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2700, metadata !DIExpression()), !dbg !2704
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #22, !dbg !2705
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !2701, metadata !DIExpression()), !dbg !2706
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2707
  %tobool = icmp ne ptr %0, null, !dbg !2707
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2709

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %device.addr, align 8, !dbg !2710
  %call = call ptr @acpi_driver_data(ptr noundef %1) #20, !dbg !2711
  %tobool1 = icmp ne ptr %call, null, !dbg !2711
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2712

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2713

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %device.addr, align 8, !dbg !2714
  %call2 = call ptr @acpi_driver_data(ptr noundef %2) #20, !dbg !2715
  store ptr %call2, ptr %tz, align 8, !dbg !2716
  %3 = load ptr, ptr %device.addr, align 8, !dbg !2717
  call void @acpi_dev_remove_notify_handler(ptr noundef %3, i32 noundef 2, ptr noundef @acpi_thermal_notify) #20, !dbg !2718
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wq) #22, !dbg !2719
  call void @llvm.dbg.declare(metadata ptr %_wq, metadata !2702, metadata !DIExpression()), !dbg !2719
  %4 = load ptr, ptr @acpi_thermal_pm_queue, align 8, !dbg !2719
  store ptr %4, ptr %_wq, align 8, !dbg !2719
  %5 = load ptr, ptr %_wq, align 8, !dbg !2720
  %6 = load ptr, ptr @system_wq, align 8, !dbg !2720
  %cmp = icmp eq ptr %5, %6, !dbg !2720
  %conv = zext i1 %cmp to i32, !dbg !2720
  %7 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !2720
  br i1 %7, label %land.lhs.true, label %lor.lhs.false5, !dbg !2720

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %_wq, align 8, !dbg !2720
  %9 = load ptr, ptr @system_wq, align 8, !dbg !2720
  %cmp3 = icmp eq ptr %8, %9, !dbg !2720
  br i1 %cmp3, label %if.then41, label %lor.lhs.false5, !dbg !2720

lor.lhs.false5:                                   ; preds = %land.lhs.true, %if.end
  %10 = load ptr, ptr %_wq, align 8, !dbg !2720
  %11 = load ptr, ptr @system_highpri_wq, align 8, !dbg !2720
  %cmp6 = icmp eq ptr %10, %11, !dbg !2720
  %conv7 = zext i1 %cmp6 to i32, !dbg !2720
  %12 = call i1 @llvm.is.constant.i32(i32 %conv7), !dbg !2720
  br i1 %12, label %land.lhs.true8, label %lor.lhs.false11, !dbg !2720

land.lhs.true8:                                   ; preds = %lor.lhs.false5
  %13 = load ptr, ptr %_wq, align 8, !dbg !2720
  %14 = load ptr, ptr @system_highpri_wq, align 8, !dbg !2720
  %cmp9 = icmp eq ptr %13, %14, !dbg !2720
  br i1 %cmp9, label %if.then41, label %lor.lhs.false11, !dbg !2720

lor.lhs.false11:                                  ; preds = %land.lhs.true8, %lor.lhs.false5
  %15 = load ptr, ptr %_wq, align 8, !dbg !2720
  %16 = load ptr, ptr @system_long_wq, align 8, !dbg !2720
  %cmp12 = icmp eq ptr %15, %16, !dbg !2720
  %conv13 = zext i1 %cmp12 to i32, !dbg !2720
  %17 = call i1 @llvm.is.constant.i32(i32 %conv13), !dbg !2720
  br i1 %17, label %land.lhs.true14, label %lor.lhs.false17, !dbg !2720

land.lhs.true14:                                  ; preds = %lor.lhs.false11
  %18 = load ptr, ptr %_wq, align 8, !dbg !2720
  %19 = load ptr, ptr @system_long_wq, align 8, !dbg !2720
  %cmp15 = icmp eq ptr %18, %19, !dbg !2720
  br i1 %cmp15, label %if.then41, label %lor.lhs.false17, !dbg !2720

lor.lhs.false17:                                  ; preds = %land.lhs.true14, %lor.lhs.false11
  %20 = load ptr, ptr %_wq, align 8, !dbg !2720
  %21 = load ptr, ptr @system_unbound_wq, align 8, !dbg !2720
  %cmp18 = icmp eq ptr %20, %21, !dbg !2720
  %conv19 = zext i1 %cmp18 to i32, !dbg !2720
  %22 = call i1 @llvm.is.constant.i32(i32 %conv19), !dbg !2720
  br i1 %22, label %land.lhs.true20, label %lor.lhs.false23, !dbg !2720

land.lhs.true20:                                  ; preds = %lor.lhs.false17
  %23 = load ptr, ptr %_wq, align 8, !dbg !2720
  %24 = load ptr, ptr @system_unbound_wq, align 8, !dbg !2720
  %cmp21 = icmp eq ptr %23, %24, !dbg !2720
  br i1 %cmp21, label %if.then41, label %lor.lhs.false23, !dbg !2720

lor.lhs.false23:                                  ; preds = %land.lhs.true20, %lor.lhs.false17
  %25 = load ptr, ptr %_wq, align 8, !dbg !2720
  %26 = load ptr, ptr @system_freezable_wq, align 8, !dbg !2720
  %cmp24 = icmp eq ptr %25, %26, !dbg !2720
  %conv25 = zext i1 %cmp24 to i32, !dbg !2720
  %27 = call i1 @llvm.is.constant.i32(i32 %conv25), !dbg !2720
  br i1 %27, label %land.lhs.true26, label %lor.lhs.false29, !dbg !2720

land.lhs.true26:                                  ; preds = %lor.lhs.false23
  %28 = load ptr, ptr %_wq, align 8, !dbg !2720
  %29 = load ptr, ptr @system_freezable_wq, align 8, !dbg !2720
  %cmp27 = icmp eq ptr %28, %29, !dbg !2720
  br i1 %cmp27, label %if.then41, label %lor.lhs.false29, !dbg !2720

lor.lhs.false29:                                  ; preds = %land.lhs.true26, %lor.lhs.false23
  %30 = load ptr, ptr %_wq, align 8, !dbg !2720
  %31 = load ptr, ptr @system_power_efficient_wq, align 8, !dbg !2720
  %cmp30 = icmp eq ptr %30, %31, !dbg !2720
  %conv31 = zext i1 %cmp30 to i32, !dbg !2720
  %32 = call i1 @llvm.is.constant.i32(i32 %conv31), !dbg !2720
  br i1 %32, label %land.lhs.true32, label %lor.lhs.false35, !dbg !2720

land.lhs.true32:                                  ; preds = %lor.lhs.false29
  %33 = load ptr, ptr %_wq, align 8, !dbg !2720
  %34 = load ptr, ptr @system_power_efficient_wq, align 8, !dbg !2720
  %cmp33 = icmp eq ptr %33, %34, !dbg !2720
  br i1 %cmp33, label %if.then41, label %lor.lhs.false35, !dbg !2720

lor.lhs.false35:                                  ; preds = %land.lhs.true32, %lor.lhs.false29
  %35 = load ptr, ptr %_wq, align 8, !dbg !2720
  %36 = load ptr, ptr @system_freezable_power_efficient_wq, align 8, !dbg !2720
  %cmp36 = icmp eq ptr %35, %36, !dbg !2720
  %conv37 = zext i1 %cmp36 to i32, !dbg !2720
  %37 = call i1 @llvm.is.constant.i32(i32 %conv37), !dbg !2720
  br i1 %37, label %land.lhs.true38, label %if.end42, !dbg !2720

land.lhs.true38:                                  ; preds = %lor.lhs.false35
  %38 = load ptr, ptr %_wq, align 8, !dbg !2720
  %39 = load ptr, ptr @system_freezable_power_efficient_wq, align 8, !dbg !2720
  %cmp39 = icmp eq ptr %38, %39, !dbg !2720
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !2719

if.then41:                                        ; preds = %land.lhs.true38, %land.lhs.true32, %land.lhs.true26, %land.lhs.true20, %land.lhs.true14, %land.lhs.true8, %land.lhs.true
  call void @__warn_flushing_systemwide_wq() #20, !dbg !2720, !srcloc !2722
  br label %if.end42, !dbg !2720

if.end42:                                         ; preds = %if.then41, %land.lhs.true38, %lor.lhs.false35
  %40 = load ptr, ptr %_wq, align 8, !dbg !2719
  call void @__flush_workqueue(ptr noundef %40) #20, !dbg !2719
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wq) #22, !dbg !2723
  %41 = load ptr, ptr %tz, align 8, !dbg !2724
  call void @acpi_thermal_unregister_thermal_zone(ptr noundef %41) #20, !dbg !2725
  %42 = load ptr, ptr %tz, align 8, !dbg !2726
  %trip_table = getelementptr inbounds %struct.acpi_thermal, ptr %42, i32 0, i32 7, !dbg !2727
  %43 = load ptr, ptr %trip_table, align 8, !dbg !2727
  call void @kfree(ptr noundef %43) #20, !dbg !2728
  %44 = load ptr, ptr %tz, align 8, !dbg !2729
  call void @kfree(ptr noundef %44) #20, !dbg !2730
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2731
  br label %cleanup, !dbg !2731

cleanup:                                          ; preds = %if.end42, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #22, !dbg !2731
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2731

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !2732 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2736, metadata !DIExpression()), !dbg !2738
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2737, metadata !DIExpression()), !dbg !2739
  %0 = load i64, ptr %size.addr, align 8, !dbg !2740
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2741
  %or = or i32 %1, 256, !dbg !2742
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #23, !dbg !2743
  ret ptr %call, !dbg !2744
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2745 dso_local ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_thermal_get_info(ptr noundef %tz) #2 align 16 !dbg !2749 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2753, metadata !DIExpression()), !dbg !2755
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #22, !dbg !2756
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2754, metadata !DIExpression()), !dbg !2757
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2758
  %tobool = icmp ne ptr %0, null, !dbg !2758
  br i1 %tobool, label %if.end, label %if.then, !dbg !2760

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2761

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !2762
  call void @acpi_thermal_aml_dependency_fix(ptr noundef %1) #20, !dbg !2763
  %2 = load ptr, ptr %tz.addr, align 8, !dbg !2764
  %call = call i32 @acpi_thermal_get_trip_points(ptr noundef %2) #20, !dbg !2765
  store i32 %call, ptr %result, align 4, !dbg !2766
  %3 = load i32, ptr %result, align 4, !dbg !2767
  %tobool1 = icmp ne i32 %3, 0, !dbg !2767
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2769

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr %result, align 4, !dbg !2770
  store i32 %4, ptr %retval, align 4, !dbg !2771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2771

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !2772
  %call4 = call i32 @acpi_thermal_get_temperature(ptr noundef %5) #20, !dbg !2773
  store i32 %call4, ptr %result, align 4, !dbg !2774
  %6 = load i32, ptr %result, align 4, !dbg !2775
  %tobool5 = icmp ne i32 %6, 0, !dbg !2775
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2777

if.then6:                                         ; preds = %if.end3
  %7 = load i32, ptr %result, align 4, !dbg !2778
  store i32 %7, ptr %retval, align 4, !dbg !2779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2779

if.end7:                                          ; preds = %if.end3
  %8 = load ptr, ptr %tz.addr, align 8, !dbg !2780
  %device = getelementptr inbounds %struct.acpi_thermal, ptr %8, i32 0, i32 0, !dbg !2781
  %9 = load ptr, ptr %device, align 8, !dbg !2781
  %handle = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 2, !dbg !2782
  %10 = load ptr, ptr %handle, align 8, !dbg !2782
  %call8 = call i32 @acpi_execute_simple_method(ptr noundef %10, ptr noundef @.str.6, i64 noundef 0) #20, !dbg !2783
  %11 = load i32, ptr @tzp, align 4, !dbg !2784
  %tobool9 = icmp ne i32 %11, 0, !dbg !2784
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !2786

if.then10:                                        ; preds = %if.end7
  %12 = load i32, ptr @tzp, align 4, !dbg !2787
  %conv = sext i32 %12 to i64, !dbg !2787
  %13 = load ptr, ptr %tz.addr, align 8, !dbg !2788
  %polling_frequency = getelementptr inbounds %struct.acpi_thermal, ptr %13, i32 0, i32 4, !dbg !2789
  store i64 %conv, ptr %polling_frequency, align 8, !dbg !2790
  br label %if.end12, !dbg !2788

if.else:                                          ; preds = %if.end7
  %14 = load ptr, ptr %tz.addr, align 8, !dbg !2791
  %call11 = call i32 @acpi_thermal_get_polling_frequency(ptr noundef %14) #20, !dbg !2792
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  store i32 0, ptr %retval, align 4, !dbg !2793
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2793

cleanup:                                          ; preds = %if.end12, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #22, !dbg !2794
  %15 = load i32, ptr %retval, align 4, !dbg !2794
  ret i32 %15, !dbg !2794
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_thermal_guess_offset(ptr noundef %tz) #2 align 16 !dbg !2795 {
entry:
  %tz.addr = alloca ptr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2799, metadata !DIExpression()), !dbg !2800
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2801
  %trips = getelementptr inbounds %struct.acpi_thermal, ptr %0, i32 0, i32 6, !dbg !2803
  %critical = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips, i32 0, i32 0, !dbg !2804
  %valid = getelementptr inbounds %struct.acpi_thermal_trip, ptr %critical, i32 0, i32 1, !dbg !2805
  %1 = load i8, ptr %valid, align 8, !dbg !2805, !range !2806, !noundef !421
  %tobool = trunc i8 %1 to i1, !dbg !2805
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !2807

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %tz.addr, align 8, !dbg !2808
  %trips1 = getelementptr inbounds %struct.acpi_thermal, ptr %2, i32 0, i32 6, !dbg !2809
  %critical2 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips1, i32 0, i32 0, !dbg !2810
  %temperature = getelementptr inbounds %struct.acpi_thermal_trip, ptr %critical2, i32 0, i32 0, !dbg !2811
  %3 = load i64, ptr %temperature, align 8, !dbg !2811
  %rem = urem i64 %3, 5, !dbg !2812
  %cmp = icmp eq i64 %rem, 1, !dbg !2813
  br i1 %cmp, label %if.then, label %if.else, !dbg !2814

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %tz.addr, align 8, !dbg !2815
  %kelvin_offset = getelementptr inbounds %struct.acpi_thermal, ptr %4, i32 0, i32 10, !dbg !2816
  store i32 273100, ptr %kelvin_offset, align 8, !dbg !2817
  br label %if.end, !dbg !2815

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !2818
  %kelvin_offset3 = getelementptr inbounds %struct.acpi_thermal, ptr %5, i32 0, i32 10, !dbg !2819
  store i32 273200, ptr %kelvin_offset3, align 8, !dbg !2820
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2821
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_thermal_register_thermal_zone(ptr noundef %tz) #2 align 16 !dbg !2822 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  %acpi_trip = alloca ptr, align 8
  %trip = alloca ptr, align 8
  %passive_delay = alloca i32, align 4
  %trip_count = alloca i32, align 4
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2824, metadata !DIExpression()), !dbg !2835
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_trip) #22, !dbg !2836
  call void @llvm.dbg.declare(metadata ptr %acpi_trip, metadata !2825, metadata !DIExpression()), !dbg !2837
  call void @llvm.lifetime.start.p0(i64 8, ptr %trip) #22, !dbg !2838
  call void @llvm.dbg.declare(metadata ptr %trip, metadata !2827, metadata !DIExpression()), !dbg !2839
  call void @llvm.lifetime.start.p0(i64 4, ptr %passive_delay) #22, !dbg !2840
  call void @llvm.dbg.declare(metadata ptr %passive_delay, metadata !2828, metadata !DIExpression()), !dbg !2841
  store i32 0, ptr %passive_delay, align 4, !dbg !2841
  call void @llvm.lifetime.start.p0(i64 4, ptr %trip_count) #22, !dbg !2842
  call void @llvm.dbg.declare(metadata ptr %trip_count, metadata !2829, metadata !DIExpression()), !dbg !2843
  store i32 0, ptr %trip_count, align 4, !dbg !2843
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #22, !dbg !2844
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2830, metadata !DIExpression()), !dbg !2845
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #22, !dbg !2846
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2831, metadata !DIExpression()), !dbg !2847
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2848
  %trips = getelementptr inbounds %struct.acpi_thermal, ptr %0, i32 0, i32 6, !dbg !2850
  %critical = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips, i32 0, i32 0, !dbg !2851
  %valid = getelementptr inbounds %struct.acpi_thermal_trip, ptr %critical, i32 0, i32 1, !dbg !2852
  %1 = load i8, ptr %valid, align 8, !dbg !2852, !range !2806, !noundef !421
  %tobool = trunc i8 %1 to i1, !dbg !2852
  br i1 %tobool, label %if.then, label %if.end, !dbg !2853

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %trip_count, align 4, !dbg !2854
  %inc = add i32 %2, 1, !dbg !2854
  store i32 %inc, ptr %trip_count, align 4, !dbg !2854
  br label %if.end, !dbg !2855

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %tz.addr, align 8, !dbg !2856
  %trips1 = getelementptr inbounds %struct.acpi_thermal, ptr %3, i32 0, i32 6, !dbg !2858
  %hot = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips1, i32 0, i32 1, !dbg !2859
  %valid2 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %hot, i32 0, i32 1, !dbg !2860
  %4 = load i8, ptr %valid2, align 8, !dbg !2860, !range !2806, !noundef !421
  %tobool3 = trunc i8 %4 to i1, !dbg !2860
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !2861

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr %trip_count, align 4, !dbg !2862
  %inc5 = add i32 %5, 1, !dbg !2862
  store i32 %inc5, ptr %trip_count, align 4, !dbg !2862
  br label %if.end6, !dbg !2863

if.end6:                                          ; preds = %if.then4, %if.end
  %6 = load ptr, ptr %tz.addr, align 8, !dbg !2864
  %trips7 = getelementptr inbounds %struct.acpi_thermal, ptr %6, i32 0, i32 6, !dbg !2866
  %passive = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips7, i32 0, i32 2, !dbg !2867
  %trip8 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive, i32 0, i32 0, !dbg !2868
  %valid9 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip8, i32 0, i32 1, !dbg !2869
  %7 = load i8, ptr %valid9, align 8, !dbg !2869, !range !2806, !noundef !421
  %tobool10 = trunc i8 %7 to i1, !dbg !2869
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !2870

if.then11:                                        ; preds = %if.end6
  %8 = load i32, ptr %trip_count, align 4, !dbg !2871
  %inc12 = add i32 %8, 1, !dbg !2871
  store i32 %inc12, ptr %trip_count, align 4, !dbg !2871
  %9 = load ptr, ptr %tz.addr, align 8, !dbg !2873
  %trips13 = getelementptr inbounds %struct.acpi_thermal, ptr %9, i32 0, i32 6, !dbg !2874
  %passive14 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips13, i32 0, i32 2, !dbg !2875
  %tsp = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive14, i32 0, i32 4, !dbg !2876
  %10 = load i64, ptr %tsp, align 8, !dbg !2876
  %mul = mul i64 %10, 100, !dbg !2877
  %conv = trunc i64 %mul to i32, !dbg !2873
  store i32 %conv, ptr %passive_delay, align 4, !dbg !2878
  br label %if.end15, !dbg !2879

if.end15:                                         ; preds = %if.then11, %if.end6
  store i32 0, ptr %i, align 4, !dbg !2880
  br label %for.cond, !dbg !2882

for.cond:                                         ; preds = %for.inc, %if.end15
  %11 = load i32, ptr %i, align 4, !dbg !2883
  %cmp = icmp slt i32 %11, 10, !dbg !2885
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2886

land.rhs:                                         ; preds = %for.cond
  %12 = load ptr, ptr %tz.addr, align 8, !dbg !2887
  %trips17 = getelementptr inbounds %struct.acpi_thermal, ptr %12, i32 0, i32 6, !dbg !2888
  %active = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips17, i32 0, i32 3, !dbg !2889
  %13 = load i32, ptr %i, align 4, !dbg !2890
  %idxprom = sext i32 %13 to i64, !dbg !2887
  %arrayidx = getelementptr [10 x %struct.acpi_thermal_active], ptr %active, i64 0, i64 %idxprom, !dbg !2887
  %trip18 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx, i32 0, i32 0, !dbg !2891
  %valid19 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip18, i32 0, i32 1, !dbg !2892
  %14 = load i8, ptr %valid19, align 8, !dbg !2892, !range !2806, !noundef !421
  %tobool20 = trunc i8 %14 to i1, !dbg !2892
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %tobool20, %land.rhs ], !dbg !2893
  br i1 %15, label %for.body, label %for.end, !dbg !2894

for.body:                                         ; preds = %land.end
  %16 = load i32, ptr %trip_count, align 4, !dbg !2895
  %inc22 = add i32 %16, 1, !dbg !2895
  store i32 %inc22, ptr %trip_count, align 4, !dbg !2895
  br label %for.inc, !dbg !2896

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4, !dbg !2897
  %inc23 = add i32 %17, 1, !dbg !2897
  store i32 %inc23, ptr %i, align 4, !dbg !2897
  br label %for.cond, !dbg !2898, !llvm.loop !2899

for.end:                                          ; preds = %land.end
  %18 = load i32, ptr %trip_count, align 4, !dbg !2903
  %conv24 = sext i32 %18 to i64, !dbg !2903
  %call = call noalias ptr @kcalloc(i64 noundef %conv24, i64 noundef 24, i32 noundef 3264) #24, !dbg !2904
  store ptr %call, ptr %trip, align 8, !dbg !2905
  %19 = load ptr, ptr %trip, align 8, !dbg !2906
  %tobool25 = icmp ne ptr %19, null, !dbg !2906
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !2908

if.then26:                                        ; preds = %for.end
  store i32 -12, ptr %retval, align 4, !dbg !2909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2909

if.end27:                                         ; preds = %for.end
  %20 = load ptr, ptr %trip, align 8, !dbg !2910
  %21 = load ptr, ptr %tz.addr, align 8, !dbg !2911
  %trip_table = getelementptr inbounds %struct.acpi_thermal, ptr %21, i32 0, i32 7, !dbg !2912
  store ptr %20, ptr %trip_table, align 8, !dbg !2913
  %22 = load ptr, ptr %tz.addr, align 8, !dbg !2914
  %trips28 = getelementptr inbounds %struct.acpi_thermal, ptr %22, i32 0, i32 6, !dbg !2916
  %critical29 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips28, i32 0, i32 0, !dbg !2917
  %valid30 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %critical29, i32 0, i32 1, !dbg !2918
  %23 = load i8, ptr %valid30, align 8, !dbg !2918, !range !2806, !noundef !421
  %tobool31 = trunc i8 %23 to i1, !dbg !2918
  br i1 %tobool31, label %if.then32, label %if.end38, !dbg !2919

if.then32:                                        ; preds = %if.end27
  %24 = load ptr, ptr %trip, align 8, !dbg !2920
  %type = getelementptr inbounds %struct.thermal_trip, ptr %24, i32 0, i32 2, !dbg !2922
  store i32 3, ptr %type, align 8, !dbg !2923
  %25 = load ptr, ptr %tz.addr, align 8, !dbg !2924
  %26 = load ptr, ptr %tz.addr, align 8, !dbg !2925
  %trips33 = getelementptr inbounds %struct.acpi_thermal, ptr %26, i32 0, i32 6, !dbg !2926
  %critical34 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips33, i32 0, i32 0, !dbg !2927
  %temperature = getelementptr inbounds %struct.acpi_thermal_trip, ptr %critical34, i32 0, i32 0, !dbg !2928
  %27 = load i64, ptr %temperature, align 8, !dbg !2928
  %conv35 = trunc i64 %27 to i32, !dbg !2925
  %call36 = call i32 @acpi_thermal_temp(ptr noundef %25, i32 noundef %conv35) #20, !dbg !2929
  %28 = load ptr, ptr %trip, align 8, !dbg !2930
  %temperature37 = getelementptr inbounds %struct.thermal_trip, ptr %28, i32 0, i32 0, !dbg !2931
  store i32 %call36, ptr %temperature37, align 8, !dbg !2932
  %29 = load ptr, ptr %trip, align 8, !dbg !2933
  %incdec.ptr = getelementptr %struct.thermal_trip, ptr %29, i32 1, !dbg !2933
  store ptr %incdec.ptr, ptr %trip, align 8, !dbg !2933
  br label %if.end38, !dbg !2934

if.end38:                                         ; preds = %if.then32, %if.end27
  %30 = load ptr, ptr %tz.addr, align 8, !dbg !2935
  %trips39 = getelementptr inbounds %struct.acpi_thermal, ptr %30, i32 0, i32 6, !dbg !2937
  %hot40 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips39, i32 0, i32 1, !dbg !2938
  %valid41 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %hot40, i32 0, i32 1, !dbg !2939
  %31 = load i8, ptr %valid41, align 8, !dbg !2939, !range !2806, !noundef !421
  %tobool42 = trunc i8 %31 to i1, !dbg !2939
  br i1 %tobool42, label %if.then43, label %if.end52, !dbg !2940

if.then43:                                        ; preds = %if.end38
  %32 = load ptr, ptr %trip, align 8, !dbg !2941
  %type44 = getelementptr inbounds %struct.thermal_trip, ptr %32, i32 0, i32 2, !dbg !2943
  store i32 2, ptr %type44, align 8, !dbg !2944
  %33 = load ptr, ptr %tz.addr, align 8, !dbg !2945
  %34 = load ptr, ptr %tz.addr, align 8, !dbg !2946
  %trips45 = getelementptr inbounds %struct.acpi_thermal, ptr %34, i32 0, i32 6, !dbg !2947
  %hot46 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips45, i32 0, i32 1, !dbg !2948
  %temperature47 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %hot46, i32 0, i32 0, !dbg !2949
  %35 = load i64, ptr %temperature47, align 8, !dbg !2949
  %conv48 = trunc i64 %35 to i32, !dbg !2946
  %call49 = call i32 @acpi_thermal_temp(ptr noundef %33, i32 noundef %conv48) #20, !dbg !2950
  %36 = load ptr, ptr %trip, align 8, !dbg !2951
  %temperature50 = getelementptr inbounds %struct.thermal_trip, ptr %36, i32 0, i32 0, !dbg !2952
  store i32 %call49, ptr %temperature50, align 8, !dbg !2953
  %37 = load ptr, ptr %trip, align 8, !dbg !2954
  %incdec.ptr51 = getelementptr %struct.thermal_trip, ptr %37, i32 1, !dbg !2954
  store ptr %incdec.ptr51, ptr %trip, align 8, !dbg !2954
  br label %if.end52, !dbg !2955

if.end52:                                         ; preds = %if.then43, %if.end38
  %38 = load ptr, ptr %tz.addr, align 8, !dbg !2956
  %trips53 = getelementptr inbounds %struct.acpi_thermal, ptr %38, i32 0, i32 6, !dbg !2957
  %passive54 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips53, i32 0, i32 2, !dbg !2958
  %trip55 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive54, i32 0, i32 0, !dbg !2959
  store ptr %trip55, ptr %acpi_trip, align 8, !dbg !2960
  %39 = load ptr, ptr %acpi_trip, align 8, !dbg !2961
  %valid56 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %39, i32 0, i32 1, !dbg !2963
  %40 = load i8, ptr %valid56, align 8, !dbg !2963, !range !2806, !noundef !421
  %tobool57 = trunc i8 %40 to i1, !dbg !2963
  br i1 %tobool57, label %if.then58, label %if.end65, !dbg !2964

if.then58:                                        ; preds = %if.end52
  %41 = load ptr, ptr %trip, align 8, !dbg !2965
  %type59 = getelementptr inbounds %struct.thermal_trip, ptr %41, i32 0, i32 2, !dbg !2967
  store i32 1, ptr %type59, align 8, !dbg !2968
  %42 = load ptr, ptr %tz.addr, align 8, !dbg !2969
  %43 = load ptr, ptr %acpi_trip, align 8, !dbg !2970
  %temperature60 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %43, i32 0, i32 0, !dbg !2971
  %44 = load i64, ptr %temperature60, align 8, !dbg !2971
  %conv61 = trunc i64 %44 to i32, !dbg !2970
  %call62 = call i32 @acpi_thermal_temp(ptr noundef %42, i32 noundef %conv61) #20, !dbg !2972
  %45 = load ptr, ptr %trip, align 8, !dbg !2973
  %temperature63 = getelementptr inbounds %struct.thermal_trip, ptr %45, i32 0, i32 0, !dbg !2974
  store i32 %call62, ptr %temperature63, align 8, !dbg !2975
  %46 = load ptr, ptr %acpi_trip, align 8, !dbg !2976
  %47 = load ptr, ptr %trip, align 8, !dbg !2977
  %priv = getelementptr inbounds %struct.thermal_trip, ptr %47, i32 0, i32 3, !dbg !2978
  store ptr %46, ptr %priv, align 8, !dbg !2979
  %48 = load ptr, ptr %trip, align 8, !dbg !2980
  %incdec.ptr64 = getelementptr %struct.thermal_trip, ptr %48, i32 1, !dbg !2980
  store ptr %incdec.ptr64, ptr %trip, align 8, !dbg !2980
  br label %if.end65, !dbg !2981

if.end65:                                         ; preds = %if.then58, %if.end52
  store i32 0, ptr %i, align 4, !dbg !2982
  br label %for.cond66, !dbg !2984

for.cond66:                                       ; preds = %for.inc86, %if.end65
  %49 = load i32, ptr %i, align 4, !dbg !2985
  %cmp67 = icmp slt i32 %49, 10, !dbg !2987
  br i1 %cmp67, label %for.body69, label %for.end88, !dbg !2988

for.body69:                                       ; preds = %for.cond66
  %50 = load ptr, ptr %tz.addr, align 8, !dbg !2989
  %trips70 = getelementptr inbounds %struct.acpi_thermal, ptr %50, i32 0, i32 6, !dbg !2991
  %active71 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips70, i32 0, i32 3, !dbg !2992
  %51 = load i32, ptr %i, align 4, !dbg !2993
  %idxprom72 = sext i32 %51 to i64, !dbg !2989
  %arrayidx73 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active71, i64 0, i64 %idxprom72, !dbg !2989
  %trip74 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx73, i32 0, i32 0, !dbg !2994
  store ptr %trip74, ptr %acpi_trip, align 8, !dbg !2995
  %52 = load ptr, ptr %acpi_trip, align 8, !dbg !2996
  %valid75 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %52, i32 0, i32 1, !dbg !2998
  %53 = load i8, ptr %valid75, align 8, !dbg !2998, !range !2806, !noundef !421
  %tobool76 = trunc i8 %53 to i1, !dbg !2998
  br i1 %tobool76, label %if.end78, label %if.then77, !dbg !2999

if.then77:                                        ; preds = %for.body69
  br label %for.end88, !dbg !3000

if.end78:                                         ; preds = %for.body69
  %54 = load ptr, ptr %trip, align 8, !dbg !3001
  %type79 = getelementptr inbounds %struct.thermal_trip, ptr %54, i32 0, i32 2, !dbg !3002
  store i32 0, ptr %type79, align 8, !dbg !3003
  %55 = load ptr, ptr %tz.addr, align 8, !dbg !3004
  %56 = load ptr, ptr %acpi_trip, align 8, !dbg !3005
  %temperature80 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %56, i32 0, i32 0, !dbg !3006
  %57 = load i64, ptr %temperature80, align 8, !dbg !3006
  %conv81 = trunc i64 %57 to i32, !dbg !3005
  %call82 = call i32 @acpi_thermal_temp(ptr noundef %55, i32 noundef %conv81) #20, !dbg !3007
  %58 = load ptr, ptr %trip, align 8, !dbg !3008
  %temperature83 = getelementptr inbounds %struct.thermal_trip, ptr %58, i32 0, i32 0, !dbg !3009
  store i32 %call82, ptr %temperature83, align 8, !dbg !3010
  %59 = load ptr, ptr %acpi_trip, align 8, !dbg !3011
  %60 = load ptr, ptr %trip, align 8, !dbg !3012
  %priv84 = getelementptr inbounds %struct.thermal_trip, ptr %60, i32 0, i32 3, !dbg !3013
  store ptr %59, ptr %priv84, align 8, !dbg !3014
  %61 = load ptr, ptr %trip, align 8, !dbg !3015
  %incdec.ptr85 = getelementptr %struct.thermal_trip, ptr %61, i32 1, !dbg !3015
  store ptr %incdec.ptr85, ptr %trip, align 8, !dbg !3015
  br label %for.inc86, !dbg !3016

for.inc86:                                        ; preds = %if.end78
  %62 = load i32, ptr %i, align 4, !dbg !3017
  %inc87 = add i32 %62, 1, !dbg !3017
  store i32 %inc87, ptr %i, align 4, !dbg !3017
  br label %for.cond66, !dbg !3018, !llvm.loop !3019

for.end88:                                        ; preds = %if.then77, %for.cond66
  %63 = load ptr, ptr %tz.addr, align 8, !dbg !3021
  %trip_table89 = getelementptr inbounds %struct.acpi_thermal, ptr %63, i32 0, i32 7, !dbg !3022
  %64 = load ptr, ptr %trip_table89, align 8, !dbg !3022
  %65 = load i32, ptr %trip_count, align 4, !dbg !3023
  %66 = load ptr, ptr %tz.addr, align 8, !dbg !3024
  %67 = load i32, ptr %passive_delay, align 4, !dbg !3025
  %68 = load ptr, ptr %tz.addr, align 8, !dbg !3026
  %polling_frequency = getelementptr inbounds %struct.acpi_thermal, ptr %68, i32 0, i32 4, !dbg !3027
  %69 = load i64, ptr %polling_frequency, align 8, !dbg !3027
  %mul90 = mul i64 %69, 100, !dbg !3028
  %conv91 = trunc i64 %mul90 to i32, !dbg !3026
  %call92 = call ptr @thermal_zone_device_register_with_trips(ptr noundef @.str.26, ptr noundef %64, i32 noundef %65, i32 noundef 0, ptr noundef %66, ptr noundef @acpi_thermal_zone_ops, ptr noundef null, i32 noundef %67, i32 noundef %conv91) #20, !dbg !3029
  %70 = load ptr, ptr %tz.addr, align 8, !dbg !3030
  %thermal_zone = getelementptr inbounds %struct.acpi_thermal, ptr %70, i32 0, i32 9, !dbg !3031
  store ptr %call92, ptr %thermal_zone, align 8, !dbg !3032
  %71 = load ptr, ptr %tz.addr, align 8, !dbg !3033
  %thermal_zone93 = getelementptr inbounds %struct.acpi_thermal, ptr %71, i32 0, i32 9, !dbg !3035
  %72 = load ptr, ptr %thermal_zone93, align 8, !dbg !3035
  %call94 = call zeroext i1 @IS_ERR(ptr noundef %72) #20, !dbg !3036
  br i1 %call94, label %if.then95, label %if.end99, !dbg !3037

if.then95:                                        ; preds = %for.end88
  %73 = load ptr, ptr %tz.addr, align 8, !dbg !3038
  %thermal_zone96 = getelementptr inbounds %struct.acpi_thermal, ptr %73, i32 0, i32 9, !dbg !3040
  %74 = load ptr, ptr %thermal_zone96, align 8, !dbg !3040
  %call97 = call i64 @PTR_ERR(ptr noundef %74) #20, !dbg !3041
  %conv98 = trunc i64 %call97 to i32, !dbg !3041
  store i32 %conv98, ptr %result, align 4, !dbg !3042
  br label %free_trip_table, !dbg !3043

if.end99:                                         ; preds = %for.end88
  %75 = load ptr, ptr %tz.addr, align 8, !dbg !3044
  %call100 = call i32 @acpi_thermal_zone_sysfs_add(ptr noundef %75) #20, !dbg !3045
  store i32 %call100, ptr %result, align 4, !dbg !3046
  %76 = load i32, ptr %result, align 4, !dbg !3047
  %tobool101 = icmp ne i32 %76, 0, !dbg !3047
  br i1 %tobool101, label %if.then102, label %if.end103, !dbg !3049

if.then102:                                       ; preds = %if.end99
  br label %unregister_tzd, !dbg !3050

if.end103:                                        ; preds = %if.end99
  %77 = load ptr, ptr %tz.addr, align 8, !dbg !3051
  %thermal_zone104 = getelementptr inbounds %struct.acpi_thermal, ptr %77, i32 0, i32 9, !dbg !3052
  %78 = load ptr, ptr %thermal_zone104, align 8, !dbg !3052
  %call105 = call i32 @thermal_zone_device_enable(ptr noundef %78) #20, !dbg !3053
  store i32 %call105, ptr %result, align 4, !dbg !3054
  %79 = load i32, ptr %result, align 4, !dbg !3055
  %tobool106 = icmp ne i32 %79, 0, !dbg !3055
  br i1 %tobool106, label %if.then107, label %if.end108, !dbg !3057

if.then107:                                       ; preds = %if.end103
  br label %remove_links, !dbg !3058

if.end108:                                        ; preds = %if.end103
  br label %do.body, !dbg !3059

do.body:                                          ; preds = %if.end108
  br label %do.cond, !dbg !3061

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3061

do.end:                                           ; preds = %do.cond
  %80 = load ptr, ptr %tz.addr, align 8, !dbg !3059
  %device = getelementptr inbounds %struct.acpi_thermal, ptr %80, i32 0, i32 0, !dbg !3059
  %81 = load ptr, ptr %device, align 8, !dbg !3059
  %dev = getelementptr inbounds %struct.acpi_device, ptr %81, i32 0, i32 18, !dbg !3059
  %82 = load ptr, ptr %tz.addr, align 8, !dbg !3059
  %thermal_zone109 = getelementptr inbounds %struct.acpi_thermal, ptr %82, i32 0, i32 9, !dbg !3059
  %83 = load ptr, ptr %thermal_zone109, align 8, !dbg !3059
  %call110 = call i32 @thermal_zone_device_id(ptr noundef %83) #20, !dbg !3059
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef @.str.27, i32 noundef %call110) #21, !dbg !3059
  store i32 0, ptr %retval, align 4, !dbg !3063
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3063

remove_links:                                     ; preds = %if.then107
  call void @llvm.dbg.label(metadata !2832), !dbg !3064
  %84 = load ptr, ptr %tz.addr, align 8, !dbg !3065
  call void @acpi_thermal_zone_sysfs_remove(ptr noundef %84) #20, !dbg !3066
  br label %unregister_tzd, !dbg !3066

unregister_tzd:                                   ; preds = %remove_links, %if.then102
  call void @llvm.dbg.label(metadata !2833), !dbg !3067
  %85 = load ptr, ptr %tz.addr, align 8, !dbg !3068
  %thermal_zone111 = getelementptr inbounds %struct.acpi_thermal, ptr %85, i32 0, i32 9, !dbg !3069
  %86 = load ptr, ptr %thermal_zone111, align 8, !dbg !3069
  call void @thermal_zone_device_unregister(ptr noundef %86) #20, !dbg !3070
  br label %free_trip_table, !dbg !3070

free_trip_table:                                  ; preds = %unregister_tzd, %if.then95
  call void @llvm.dbg.label(metadata !2834), !dbg !3071
  %87 = load ptr, ptr %tz.addr, align 8, !dbg !3072
  %trip_table112 = getelementptr inbounds %struct.acpi_thermal, ptr %87, i32 0, i32 7, !dbg !3073
  %88 = load ptr, ptr %trip_table112, align 8, !dbg !3073
  call void @kfree(ptr noundef %88) #20, !dbg !3074
  %89 = load i32, ptr %result, align 4, !dbg !3075
  store i32 %89, ptr %retval, align 4, !dbg !3076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3076

cleanup:                                          ; preds = %free_trip_table, %do.end, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #22, !dbg !3077
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #22, !dbg !3077
  call void @llvm.lifetime.end.p0(i64 4, ptr %trip_count) #22, !dbg !3077
  call void @llvm.lifetime.end.p0(i64 4, ptr %passive_delay) #22, !dbg !3077
  call void @llvm.lifetime.end.p0(i64 8, ptr %trip) #22, !dbg !3077
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_trip) #22, !dbg !3077
  %90 = load i32, ptr %retval, align 4, !dbg !3077
  ret i32 %90, !dbg !3077
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #6 align 16 !dbg !3078 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3083, metadata !DIExpression()), !dbg !3085
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3084, metadata !DIExpression()), !dbg !3086
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3087
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !3088
  %1 = load i32, ptr %n.addr, align 4, !dbg !3089
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #20, !dbg !3090
  ret void, !dbg !3091
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3092 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #6 align 16 !dbg !3097 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !3101, metadata !DIExpression()), !dbg !3103
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !3102, metadata !DIExpression()), !dbg !3104
  ret void, !dbg !3105
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #6 align 16 !dbg !3106 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3111, metadata !DIExpression()), !dbg !3112
  br label %do.body, !dbg !3113

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3114

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3116

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3114

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3118
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3118
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3118
  store volatile ptr %0, ptr %next, align 8, !dbg !3118
  br label %do.end3, !dbg !3118

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3114

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !3120

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !3121

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !3123

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !3121

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !3125
  %3 = load ptr, ptr %list.addr, align 8, !dbg !3125
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !3125
  store volatile ptr %2, ptr %prev, align 8, !dbg !3125
  br label %do.end9, !dbg !3125

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !3121

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !3127
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_thermal_check_fn(ptr noundef %work) #2 align 16 !dbg !3128 {
entry:
  %work.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !3130, metadata !DIExpression()), !dbg !3134
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #22, !dbg !3135
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3131, metadata !DIExpression()), !dbg !3136
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #22, !dbg !3137
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3132, metadata !DIExpression()), !dbg !3137
  %0 = load ptr, ptr %work.addr, align 8, !dbg !3137
  store ptr %0, ptr %__mptr, align 8, !dbg !3137
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3137
  %add.ptr = getelementptr i8, ptr %1, i64 -1360, !dbg !3137
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3137
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #22, !dbg !3138
  %2 = load ptr, ptr %tmp, align 8, !dbg !3137
  store ptr %2, ptr %tz, align 8, !dbg !3136
  %3 = load ptr, ptr %tz, align 8, !dbg !3139
  %thermal_check_count = getelementptr inbounds %struct.acpi_thermal, ptr %3, i32 0, i32 13, !dbg !3141
  %call = call zeroext i1 @refcount_dec_not_one(ptr noundef %thermal_check_count) #20, !dbg !3142
  br i1 %call, label %if.end, label %if.then, !dbg !3143

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3144

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %tz, align 8, !dbg !3145
  %thermal_check_lock = getelementptr inbounds %struct.acpi_thermal, ptr %4, i32 0, i32 12, !dbg !3146
  call void @mutex_lock(ptr noundef %thermal_check_lock) #20, !dbg !3147
  %5 = load ptr, ptr %tz, align 8, !dbg !3148
  %thermal_zone = getelementptr inbounds %struct.acpi_thermal, ptr %5, i32 0, i32 9, !dbg !3149
  %6 = load ptr, ptr %thermal_zone, align 8, !dbg !3149
  call void @thermal_zone_device_update(ptr noundef %6, i32 noundef 0) #20, !dbg !3150
  %7 = load ptr, ptr %tz, align 8, !dbg !3151
  %thermal_check_count1 = getelementptr inbounds %struct.acpi_thermal, ptr %7, i32 0, i32 13, !dbg !3152
  call void @refcount_inc(ptr noundef %thermal_check_count1) #20, !dbg !3153
  %8 = load ptr, ptr %tz, align 8, !dbg !3154
  %thermal_check_lock2 = getelementptr inbounds %struct.acpi_thermal, ptr %8, i32 0, i32 12, !dbg !3155
  call void @mutex_unlock(ptr noundef %thermal_check_lock2) #20, !dbg !3156
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3157
  br label %cleanup, !dbg !3157

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #22, !dbg !3157
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3157

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3158 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @deci_kelvin_to_celsius(i64 noundef %t) #6 align 16 !dbg !3162 {
entry:
  %t.addr = alloca i64, align 8
  %__x = alloca i64, align 8
  %__d = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !3167, metadata !DIExpression()), !dbg !3171
  %0 = load i64, ptr %t.addr, align 8, !dbg !3172
  %mul = mul i64 %0, 100, !dbg !3173
  %call = call i64 @milli_kelvin_to_millicelsius(i64 noundef %mul) #20, !dbg !3174
  store i64 %call, ptr %t.addr, align 8, !dbg !3175
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #22, !dbg !3176
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !3168, metadata !DIExpression()), !dbg !3176
  %1 = load i64, ptr %t.addr, align 8, !dbg !3176
  store i64 %1, ptr %__x, align 8, !dbg !3176
  call void @llvm.lifetime.start.p0(i64 4, ptr %__d) #22, !dbg !3176
  call void @llvm.dbg.declare(metadata ptr %__d, metadata !3170, metadata !DIExpression()), !dbg !3176
  store i32 1000, ptr %__d, align 4, !dbg !3176
  %2 = load i64, ptr %__x, align 8, !dbg !3176
  %cmp = icmp sgt i64 %2, 0, !dbg !3176
  %conv = zext i1 %cmp to i32, !dbg !3176
  %3 = load i32, ptr %__d, align 4, !dbg !3176
  %cmp1 = icmp sgt i32 %3, 0, !dbg !3176
  %conv2 = zext i1 %cmp1 to i32, !dbg !3176
  %cmp3 = icmp eq i32 %conv, %conv2, !dbg !3176
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !3176

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr %__x, align 8, !dbg !3176
  %5 = load i32, ptr %__d, align 4, !dbg !3176
  %div = sdiv i32 %5, 2, !dbg !3176
  %conv5 = sext i32 %div to i64, !dbg !3176
  %add = add i64 %4, %conv5, !dbg !3176
  %6 = load i32, ptr %__d, align 4, !dbg !3176
  %conv6 = sext i32 %6 to i64, !dbg !3176
  %div7 = sdiv i64 %add, %conv6, !dbg !3176
  br label %cond.end, !dbg !3176

cond.false:                                       ; preds = %entry
  %7 = load i64, ptr %__x, align 8, !dbg !3176
  %8 = load i32, ptr %__d, align 4, !dbg !3176
  %div8 = sdiv i32 %8, 2, !dbg !3176
  %conv9 = sext i32 %div8 to i64, !dbg !3176
  %sub = sub i64 %7, %conv9, !dbg !3176
  %9 = load i32, ptr %__d, align 4, !dbg !3176
  %conv10 = sext i32 %9 to i64, !dbg !3176
  %div11 = sdiv i64 %sub, %conv10, !dbg !3176
  br label %cond.end, !dbg !3176

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div7, %cond.true ], [ %div11, %cond.false ], !dbg !3176
  store i64 %cond, ptr %tmp, align 8, !dbg !3176
  call void @llvm.lifetime.end.p0(i64 4, ptr %__d) #22, !dbg !3177
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #22, !dbg !3177
  %10 = load i64, ptr %tmp, align 8, !dbg !3176
  ret i64 %10, !dbg !3178
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3179 dso_local i32 @acpi_dev_install_notify_handler(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_thermal_notify(ptr noundef %handle, i32 noundef %event, ptr noundef %data) #2 align 16 !dbg !3186 {
entry:
  %handle.addr = alloca ptr, align 8
  %event.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3188, metadata !DIExpression()), !dbg !3193
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !3189, metadata !DIExpression()), !dbg !3194
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3190, metadata !DIExpression()), !dbg !3195
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #22, !dbg !3196
  call void @llvm.dbg.declare(metadata ptr %device, metadata !3191, metadata !DIExpression()), !dbg !3197
  %0 = load ptr, ptr %data.addr, align 8, !dbg !3198
  store ptr %0, ptr %device, align 8, !dbg !3197
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #22, !dbg !3199
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3192, metadata !DIExpression()), !dbg !3200
  %1 = load ptr, ptr %device, align 8, !dbg !3201
  %call = call ptr @acpi_driver_data(ptr noundef %1) #20, !dbg !3202
  store ptr %call, ptr %tz, align 8, !dbg !3200
  %2 = load ptr, ptr %tz, align 8, !dbg !3203
  %tobool = icmp ne ptr %2, null, !dbg !3203
  br i1 %tobool, label %if.end, label %if.then, !dbg !3205

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3206

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %event.addr, align 4, !dbg !3207
  switch i32 %3, label %sw.default [
    i32 128, label %sw.bb
    i32 129, label %sw.bb1
    i32 130, label %sw.bb1
  ], !dbg !3208

sw.bb:                                            ; preds = %if.end
  %4 = load ptr, ptr %tz, align 8, !dbg !3209
  call void @acpi_queue_thermal_check(ptr noundef %4) #20, !dbg !3211
  br label %sw.epilog, !dbg !3212

sw.bb1:                                           ; preds = %if.end, %if.end
  %5 = load ptr, ptr %tz, align 8, !dbg !3213
  %6 = load i32, ptr %event.addr, align 4, !dbg !3214
  call void @acpi_thermal_trips_update(ptr noundef %5, i32 noundef %6) #20, !dbg !3215
  br label %sw.epilog, !dbg !3216

sw.default:                                       ; preds = %if.end
  store i32 0, ptr %tmp, align 4, !dbg !3217
  %7 = load i32, ptr %tmp, align 4, !dbg !3220
  br label %sw.epilog, !dbg !3221

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3222
  br label %cleanup, !dbg !3222

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #22, !dbg !3222
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #22, !dbg !3222
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3222

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3223 dso_local void @__warn_flushing_systemwide_wq() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3224 dso_local void @__flush_workqueue(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_thermal_unregister_thermal_zone(ptr noundef %tz) #2 align 16 !dbg !3225 {
entry:
  %tz.addr = alloca ptr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !3227, metadata !DIExpression()), !dbg !3228
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !3229
  %thermal_zone = getelementptr inbounds %struct.acpi_thermal, ptr %0, i32 0, i32 9, !dbg !3230
  %1 = load ptr, ptr %thermal_zone, align 8, !dbg !3230
  %call = call i32 @thermal_zone_device_disable(ptr noundef %1) #20, !dbg !3231
  %2 = load ptr, ptr %tz.addr, align 8, !dbg !3232
  call void @acpi_thermal_zone_sysfs_remove(ptr noundef %2) #20, !dbg !3233
  %3 = load ptr, ptr %tz.addr, align 8, !dbg !3234
  %thermal_zone1 = getelementptr inbounds %struct.acpi_thermal, ptr %3, i32 0, i32 9, !dbg !3235
  %4 = load ptr, ptr %thermal_zone1, align 8, !dbg !3235
  call void @thermal_zone_device_unregister(ptr noundef %4) #20, !dbg !3236
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !3237
  %thermal_zone2 = getelementptr inbounds %struct.acpi_thermal, ptr %5, i32 0, i32 9, !dbg !3238
  store ptr null, ptr %thermal_zone2, align 8, !dbg !3239
  ret void, !dbg !3240
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3241 dso_local void @kfree(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !3244 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3246, metadata !DIExpression()), !dbg !3251
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3247, metadata !DIExpression()), !dbg !3252
  %0 = load i64, ptr %size.addr, align 8, !dbg !3253
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3254
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3255

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3256
  %tobool = icmp ne i64 %2, 0, !dbg !3256
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3257

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #22, !dbg !3258
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3248, metadata !DIExpression()), !dbg !3259
  %3 = load i64, ptr %size.addr, align 8, !dbg !3260
  %cmp = icmp ugt i64 %3, 8192, !dbg !3262
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3263

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3264
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3265
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #23, !dbg !3266
  store ptr %call, ptr %retval, align 8, !dbg !3267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3267

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3268
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #20, !dbg !3268
  store i32 %call2, ptr %index, align 4, !dbg !3269
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3270
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3271
  %9 = ptrtoint ptr %8 to i64, !dbg !3271
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #20, !dbg !3272
  %idxprom = zext i32 %call3 to i64, !dbg !3273
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3273
  %10 = load i32, ptr %index, align 4, !dbg !3274
  %idxprom4 = zext i32 %10 to i64, !dbg !3273
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3273
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3273
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3275
  %13 = load i64, ptr %size.addr, align 8, !dbg !3276
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #25, !dbg !3277
  store ptr %call6, ptr %retval, align 8, !dbg !3278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3278

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #22, !dbg !3279
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3280
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3281
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #23, !dbg !3282
  store ptr %call8, ptr %retval, align 8, !dbg !3283
  br label %return, !dbg !3283

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3284
  ret ptr %16, !dbg !3284
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3285 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #13 align 16 !dbg !3286 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3290, metadata !DIExpression()), !dbg !3292
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3291, metadata !DIExpression()), !dbg !3293
  %0 = load i64, ptr %size.addr, align 8, !dbg !3294
  %tobool = icmp ne i64 %0, 0, !dbg !3294
  br i1 %tobool, label %if.end, label %if.then, !dbg !3296

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3297
  br label %return, !dbg !3297

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3298
  %cmp = icmp ule i64 %1, 8, !dbg !3300
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3301

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3302
  br label %return, !dbg !3302

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3303
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3305
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3306

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3307
  %cmp4 = icmp ule i64 %3, 96, !dbg !3308
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3309

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3310
  br label %return, !dbg !3310

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3311
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3313
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3314

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3315
  %cmp9 = icmp ule i64 %5, 192, !dbg !3316
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3317

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3318
  br label %return, !dbg !3318

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3319
  %cmp12 = icmp ule i64 %6, 8, !dbg !3321
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3322

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3323
  br label %return, !dbg !3323

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3324
  %cmp15 = icmp ule i64 %7, 16, !dbg !3326
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3327

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3328
  br label %return, !dbg !3328

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3329
  %cmp18 = icmp ule i64 %8, 32, !dbg !3331
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3332

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3333
  br label %return, !dbg !3333

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3334
  %cmp21 = icmp ule i64 %9, 64, !dbg !3336
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3337

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3338
  br label %return, !dbg !3338

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3339
  %cmp24 = icmp ule i64 %10, 128, !dbg !3341
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3342

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3343
  br label %return, !dbg !3343

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3344
  %cmp27 = icmp ule i64 %11, 256, !dbg !3346
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3347

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3348
  br label %return, !dbg !3348

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3349
  %cmp30 = icmp ule i64 %12, 512, !dbg !3351
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3352

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3353
  br label %return, !dbg !3353

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3354
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3356
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3357

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3358
  br label %return, !dbg !3358

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3359
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3361
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3362

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3363
  br label %return, !dbg !3363

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3364
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3366
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3367

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3368
  br label %return, !dbg !3368

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3369
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3371
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3372

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3373
  br label %return, !dbg !3373

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3374
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3376
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3377

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3378
  br label %return, !dbg !3378

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3379
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3381
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3382

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3383
  br label %return, !dbg !3383

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3384
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3386
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3387

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3388
  br label %return, !dbg !3388

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3389
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3391
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3392

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3393
  br label %return, !dbg !3393

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3394
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3396
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3397

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3398
  br label %return, !dbg !3398

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3399
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3401
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3402

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3403
  br label %return, !dbg !3403

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3404
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3406
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3407

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3408
  br label %return, !dbg !3408

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3409
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3411
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3412

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3413
  br label %return, !dbg !3413

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3414, !range !2806, !noundef !421
  %tobool69 = trunc i8 %25 to i1, !dbg !3414
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3416

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3417

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #26, !dbg !3418, !srcloc !3421
  unreachable, !dbg !3418

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3422

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3423

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3424

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3426

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3424

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #22, !dbg !3428, !srcloc !3430
  br label %do.end75, !dbg !3428

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3424

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3431
  br label %return, !dbg !3431

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3432
  ret i32 %26, !dbg !3432
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3433 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #13 align 16 !dbg !3439 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3443, metadata !DIExpression()), !dbg !3445
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3444, metadata !DIExpression()), !dbg !3446
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3447
  %and = and i32 %0, 17, !dbg !3447
  %cmp = icmp eq i32 %and, 0, !dbg !3447
  %lnot = xor i1 %cmp, true, !dbg !3447
  %lnot1 = xor i1 %lnot, true, !dbg !3447
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3447
  %conv = sext i32 %lnot.ext to i64, !dbg !3447
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3447
  %tobool = icmp ne i64 %expval, 0, !dbg !3447
  br i1 %tobool, label %if.then, label %if.end, !dbg !3449

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3450
  br label %return, !dbg !3450

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3451
  %and2 = and i32 %1, 1, !dbg !3453
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3453
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3454

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3455
  br label %return, !dbg !3455

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3456
  br label %return, !dbg !3456

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3458
  ret i32 %2, !dbg !3458
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3459 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3460 dso_local void @__compiletime_assert_196() #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #15

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_thermal_aml_dependency_fix(ptr noundef %tz) #2 align 16 !dbg !3461 {
entry:
  %tz.addr = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %value = alloca i64, align 8
  %i = alloca i32, align 4
  %name = alloca [5 x i8], align 1
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !3463, metadata !DIExpression()), !dbg !3472
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #22, !dbg !3473
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !3464, metadata !DIExpression()), !dbg !3474
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !3475
  %device = getelementptr inbounds %struct.acpi_thermal, ptr %0, i32 0, i32 0, !dbg !3476
  %1 = load ptr, ptr %device, align 8, !dbg !3476
  %handle1 = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 2, !dbg !3477
  %2 = load ptr, ptr %handle1, align 8, !dbg !3477
  store ptr %2, ptr %handle, align 8, !dbg !3474
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #22, !dbg !3478
  call void @llvm.dbg.declare(metadata ptr %value, metadata !3465, metadata !DIExpression()), !dbg !3479
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #22, !dbg !3480
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3466, metadata !DIExpression()), !dbg !3481
  %3 = load ptr, ptr %handle, align 8, !dbg !3482
  %call = call i32 @acpi_evaluate_integer(ptr noundef %3, ptr noundef @.str.7, ptr noundef null, ptr noundef %value) #20, !dbg !3483
  %4 = load ptr, ptr %handle, align 8, !dbg !3484
  %call2 = call i32 @acpi_evaluate_integer(ptr noundef %4, ptr noundef @.str.8, ptr noundef null, ptr noundef %value) #20, !dbg !3485
  %5 = load ptr, ptr %handle, align 8, !dbg !3486
  %call3 = call i32 @acpi_evaluate_integer(ptr noundef %5, ptr noundef @.str.9, ptr noundef null, ptr noundef %value) #20, !dbg !3487
  store i32 0, ptr %i, align 4, !dbg !3488
  br label %for.cond, !dbg !3489

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4, !dbg !3490
  %cmp = icmp slt i32 %6, 10, !dbg !3491
  br i1 %cmp, label %for.body, label %for.end, !dbg !3492

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 5, ptr %name) #22, !dbg !3493
  call void @llvm.dbg.declare(metadata ptr %name, metadata !3467, metadata !DIExpression()), !dbg !3494
  %arrayinit.begin = getelementptr inbounds [5 x i8], ptr %name, i64 0, i64 0, !dbg !3495
  store i8 95, ptr %arrayinit.begin, align 1, !dbg !3495
  %arrayinit.element = getelementptr inbounds i8, ptr %arrayinit.begin, i64 1, !dbg !3495
  store i8 65, ptr %arrayinit.element, align 1, !dbg !3495
  %arrayinit.element4 = getelementptr inbounds i8, ptr %arrayinit.element, i64 1, !dbg !3495
  store i8 67, ptr %arrayinit.element4, align 1, !dbg !3495
  %arrayinit.element5 = getelementptr inbounds i8, ptr %arrayinit.element4, i64 1, !dbg !3495
  %7 = load i32, ptr %i, align 4, !dbg !3496
  %add = add i32 48, %7, !dbg !3497
  %conv = trunc i32 %add to i8, !dbg !3498
  store i8 %conv, ptr %arrayinit.element5, align 1, !dbg !3495
  %arrayinit.element6 = getelementptr inbounds i8, ptr %arrayinit.element5, i64 1, !dbg !3495
  store i8 0, ptr %arrayinit.element6, align 1, !dbg !3495
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #22, !dbg !3499
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3471, metadata !DIExpression()), !dbg !3500
  %8 = load ptr, ptr %handle, align 8, !dbg !3501
  %arraydecay = getelementptr inbounds [5 x i8], ptr %name, i64 0, i64 0, !dbg !3502
  %call7 = call i32 @acpi_evaluate_integer(ptr noundef %8, ptr noundef %arraydecay, ptr noundef null, ptr noundef %value) #20, !dbg !3503
  store i32 %call7, ptr %status, align 4, !dbg !3504
  %9 = load i32, ptr %status, align 4, !dbg !3505
  %cmp8 = icmp eq i32 %9, 5, !dbg !3507
  br i1 %cmp8, label %if.then, label %if.end, !dbg !3508

if.then:                                          ; preds = %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3509

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3510
  br label %cleanup, !dbg !3510

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #22, !dbg !3510
  call void @llvm.lifetime.end.p0(i64 5, ptr %name) #22, !dbg !3510
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3511

for.inc:                                          ; preds = %cleanup.cont
  %10 = load i32, ptr %i, align 4, !dbg !3512
  %inc = add i32 %10, 1, !dbg !3512
  store i32 %inc, ptr %i, align 4, !dbg !3512
  br label %for.cond, !dbg !3513, !llvm.loop !3514

for.end:                                          ; preds = %cleanup, %for.cond
  %11 = load ptr, ptr %handle, align 8, !dbg !3516
  %call11 = call i32 @acpi_evaluate_integer(ptr noundef %11, ptr noundef @.str.10, ptr noundef null, ptr noundef %value) #20, !dbg !3517
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #22, !dbg !3518
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #22, !dbg !3518
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #22, !dbg !3518
  ret void, !dbg !3518

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_thermal_get_trip_points(ptr noundef %tz) #2 align 16 !dbg !3519 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  %valid = alloca i8, align 1
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !3521, metadata !DIExpression()), !dbg !3524
  call void @llvm.lifetime.start.p0(i64 1, ptr %valid) #22, !dbg !3525
  call void @llvm.dbg.declare(metadata ptr %valid, metadata !3522, metadata !DIExpression()), !dbg !3526
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #22, !dbg !3527
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3523, metadata !DIExpression()), !dbg !3528
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !3529
  call void @__acpi_thermal_trips_update(ptr noundef %0, i32 noundef 31) #20, !dbg !3530
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !3531
  %trips = getelementptr inbounds %struct.acpi_thermal, ptr %1, i32 0, i32 6, !dbg !3532
  %critical = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips, i32 0, i32 0, !dbg !3533
  %valid1 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %critical, i32 0, i32 1, !dbg !3534
  %2 = load i8, ptr %valid1, align 8, !dbg !3534, !range !2806, !noundef !421
  %tobool = trunc i8 %2 to i1, !dbg !3534
  %conv = zext i1 %tobool to i32, !dbg !3531
  %3 = load ptr, ptr %tz.addr, align 8, !dbg !3535
  %trips2 = getelementptr inbounds %struct.acpi_thermal, ptr %3, i32 0, i32 6, !dbg !3536
  %hot = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips2, i32 0, i32 1, !dbg !3537
  %valid3 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %hot, i32 0, i32 1, !dbg !3538
  %4 = load i8, ptr %valid3, align 8, !dbg !3538, !range !2806, !noundef !421
  %tobool4 = trunc i8 %4 to i1, !dbg !3538
  %conv5 = zext i1 %tobool4 to i32, !dbg !3535
  %or = or i32 %conv, %conv5, !dbg !3539
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !3540
  %trips6 = getelementptr inbounds %struct.acpi_thermal, ptr %5, i32 0, i32 6, !dbg !3541
  %passive = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips6, i32 0, i32 2, !dbg !3542
  %trip = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive, i32 0, i32 0, !dbg !3543
  %valid7 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip, i32 0, i32 1, !dbg !3544
  %6 = load i8, ptr %valid7, align 8, !dbg !3544, !range !2806, !noundef !421
  %tobool8 = trunc i8 %6 to i1, !dbg !3544
  %conv9 = zext i1 %tobool8 to i32, !dbg !3540
  %or10 = or i32 %or, %conv9, !dbg !3545
  %tobool11 = icmp ne i32 %or10, 0, !dbg !3531
  %frombool = zext i1 %tobool11 to i8, !dbg !3546
  store i8 %frombool, ptr %valid, align 1, !dbg !3546
  store i32 0, ptr %i, align 4, !dbg !3547
  br label %for.cond, !dbg !3549

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4, !dbg !3550
  %cmp = icmp slt i32 %7, 10, !dbg !3552
  br i1 %cmp, label %for.body, label %for.end, !dbg !3553

for.body:                                         ; preds = %for.cond
  %8 = load i8, ptr %valid, align 1, !dbg !3554, !range !2806, !noundef !421
  %tobool13 = trunc i8 %8 to i1, !dbg !3554
  br i1 %tobool13, label %lor.end, label %lor.rhs, !dbg !3555

lor.rhs:                                          ; preds = %for.body
  %9 = load ptr, ptr %tz.addr, align 8, !dbg !3556
  %trips15 = getelementptr inbounds %struct.acpi_thermal, ptr %9, i32 0, i32 6, !dbg !3557
  %active = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips15, i32 0, i32 3, !dbg !3558
  %10 = load i32, ptr %i, align 4, !dbg !3559
  %idxprom = sext i32 %10 to i64, !dbg !3556
  %arrayidx = getelementptr [10 x %struct.acpi_thermal_active], ptr %active, i64 0, i64 %idxprom, !dbg !3556
  %trip16 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx, i32 0, i32 0, !dbg !3560
  %valid17 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip16, i32 0, i32 1, !dbg !3561
  %11 = load i8, ptr %valid17, align 8, !dbg !3561, !range !2806, !noundef !421
  %tobool18 = trunc i8 %11 to i1, !dbg !3561
  br label %lor.end, !dbg !3555

lor.end:                                          ; preds = %lor.rhs, %for.body
  %12 = phi i1 [ true, %for.body ], [ %tobool18, %lor.rhs ]
  %frombool20 = zext i1 %12 to i8, !dbg !3562
  store i8 %frombool20, ptr %valid, align 1, !dbg !3562
  br label %for.inc, !dbg !3563

for.inc:                                          ; preds = %lor.end
  %13 = load i32, ptr %i, align 4, !dbg !3564
  %inc = add i32 %13, 1, !dbg !3564
  store i32 %inc, ptr %i, align 4, !dbg !3564
  br label %for.cond, !dbg !3565, !llvm.loop !3566

for.end:                                          ; preds = %for.cond
  %14 = load i8, ptr %valid, align 1, !dbg !3568, !range !2806, !noundef !421
  %tobool21 = trunc i8 %14 to i1, !dbg !3568
  br i1 %tobool21, label %if.end, label %if.then, !dbg !3570

if.then:                                          ; preds = %for.end
  br label %do.body, !dbg !3571

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !3574

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3574

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.11) #21, !dbg !3571
  store i32 %call, ptr %tmp, align 4, !dbg !3574
  %15 = load i32, ptr %tmp, align 4, !dbg !3571
  store i32 -19, ptr %retval, align 4, !dbg !3576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3576

if.end:                                           ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !3577
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3577

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #22, !dbg !3578
  call void @llvm.lifetime.end.p0(i64 1, ptr %valid) #22, !dbg !3578
  %16 = load i32, ptr %retval, align 4, !dbg !3578
  ret i32 %16, !dbg !3578
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_thermal_get_temperature(ptr noundef %tz) #2 align 16 !dbg !3579 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !3581, metadata !DIExpression()), !dbg !3584
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #22, !dbg !3585
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3582, metadata !DIExpression()), !dbg !3586
  store i32 0, ptr %status, align 4, !dbg !3586
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #22, !dbg !3587
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3583, metadata !DIExpression()), !dbg !3588
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !3589
  %tobool = icmp ne ptr %0, null, !dbg !3589
  br i1 %tobool, label %if.end, label %if.then, !dbg !3591

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3592
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3592

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !3593
  %temperature = getelementptr inbounds %struct.acpi_thermal, ptr %1, i32 0, i32 2, !dbg !3594
  %2 = load i64, ptr %temperature, align 8, !dbg !3594
  %3 = load ptr, ptr %tz.addr, align 8, !dbg !3595
  %last_temperature = getelementptr inbounds %struct.acpi_thermal, ptr %3, i32 0, i32 3, !dbg !3596
  store i64 %2, ptr %last_temperature, align 8, !dbg !3597
  %4 = load ptr, ptr %tz.addr, align 8, !dbg !3598
  %device = getelementptr inbounds %struct.acpi_thermal, ptr %4, i32 0, i32 0, !dbg !3599
  %5 = load ptr, ptr %device, align 8, !dbg !3599
  %handle = getelementptr inbounds %struct.acpi_device, ptr %5, i32 0, i32 2, !dbg !3600
  %6 = load ptr, ptr %handle, align 8, !dbg !3600
  %call = call i32 @acpi_evaluate_integer(ptr noundef %6, ptr noundef @.str.10, ptr noundef null, ptr noundef %tmp) #20, !dbg !3601
  store i32 %call, ptr %status, align 4, !dbg !3602
  %7 = load i32, ptr %status, align 4, !dbg !3603
  %tobool1 = icmp ne i32 %7, 0, !dbg !3603
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3605

if.then2:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !3606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3606

if.end3:                                          ; preds = %if.end
  %8 = load i64, ptr %tmp, align 8, !dbg !3607
  %9 = load ptr, ptr %tz.addr, align 8, !dbg !3608
  %temperature4 = getelementptr inbounds %struct.acpi_thermal, ptr %9, i32 0, i32 2, !dbg !3609
  store i64 %8, ptr %temperature4, align 8, !dbg !3610
  store i32 0, ptr %tmp5, align 4, !dbg !3611
  %10 = load i32, ptr %tmp5, align 4, !dbg !3614
  store i32 0, ptr %retval, align 4, !dbg !3615
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3615

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #22, !dbg !3616
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #22, !dbg !3616
  %11 = load i32, ptr %retval, align 4, !dbg !3616
  ret i32 %11, !dbg !3616
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3617 dso_local i32 @acpi_execute_simple_method(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_thermal_get_polling_frequency(ptr noundef %tz) #2 align 16 !dbg !3620 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !3622, metadata !DIExpression()), !dbg !3625
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #22, !dbg !3626
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3623, metadata !DIExpression()), !dbg !3627
  store i32 0, ptr %status, align 4, !dbg !3627
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #22, !dbg !3628
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3624, metadata !DIExpression()), !dbg !3629
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !3630
  %tobool = icmp ne ptr %0, null, !dbg !3630
  br i1 %tobool, label %if.end, label %if.then, !dbg !3632

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !3633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3633

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !3634
  %device = getelementptr inbounds %struct.acpi_thermal, ptr %1, i32 0, i32 0, !dbg !3635
  %2 = load ptr, ptr %device, align 8, !dbg !3635
  %handle = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 2, !dbg !3636
  %3 = load ptr, ptr %handle, align 8, !dbg !3636
  %call = call i32 @acpi_evaluate_integer(ptr noundef %3, ptr noundef @.str.25, ptr noundef null, ptr noundef %tmp) #20, !dbg !3637
  store i32 %call, ptr %status, align 4, !dbg !3638
  %4 = load i32, ptr %status, align 4, !dbg !3639
  %tobool1 = icmp ne i32 %4, 0, !dbg !3639
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3641

if.then2:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !3642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3642

if.end3:                                          ; preds = %if.end
  %5 = load i64, ptr %tmp, align 8, !dbg !3643
  %6 = load ptr, ptr %tz.addr, align 8, !dbg !3644
  %polling_frequency = getelementptr inbounds %struct.acpi_thermal, ptr %6, i32 0, i32 4, !dbg !3645
  store i64 %5, ptr %polling_frequency, align 8, !dbg !3646
  store i32 0, ptr %tmp4, align 4, !dbg !3647
  %7 = load i32, ptr %tmp4, align 4, !dbg !3650
  store i32 0, ptr %retval, align 4, !dbg !3651
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3651

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #22, !dbg !3652
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #22, !dbg !3652
  %8 = load i32, ptr %retval, align 4, !dbg !3652
  ret i32 %8, !dbg !3652
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3653 dso_local i32 @acpi_evaluate_integer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__acpi_thermal_trips_update(ptr noundef %tz, i32 noundef %flag) #2 align 16 !dbg !3663 {
entry:
  %tz.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %tmp = alloca i64, align 8
  %devices = alloca %struct.acpi_handle_list, align 8
  %valid = alloca i8, align 1
  %i = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %crt_k = alloca i64, align 8
  %tmp46 = alloca i32, align 4
  %tmp67 = alloca i32, align 4
  %tmp75 = alloca i32, align 4
  %name = alloca [5 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x239 = alloca i64, align 8
  %__UNIQUE_ID___y240 = alloca i64, align 8
  %tmp320 = alloca i64, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !3667, metadata !DIExpression()), !dbg !3694
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !3668, metadata !DIExpression()), !dbg !3695
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #22, !dbg !3696
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3669, metadata !DIExpression()), !dbg !3697
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #22, !dbg !3698
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !3670, metadata !DIExpression()), !dbg !3699
  call void @llvm.lifetime.start.p0(i64 88, ptr %devices) #22, !dbg !3700
  call void @llvm.dbg.declare(metadata ptr %devices, metadata !3671, metadata !DIExpression()), !dbg !3701
  call void @llvm.lifetime.start.p0(i64 1, ptr %valid) #22, !dbg !3702
  call void @llvm.dbg.declare(metadata ptr %valid, metadata !3672, metadata !DIExpression()), !dbg !3703
  store i8 0, ptr %valid, align 1, !dbg !3703
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #22, !dbg !3704
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3673, metadata !DIExpression()), !dbg !3705
  %0 = load i32, ptr %flag.addr, align 4, !dbg !3706
  %conv = sext i32 %0 to i64, !dbg !3706
  %and = and i64 %conv, 1, !dbg !3707
  %tobool = icmp ne i64 %and, 0, !dbg !3707
  br i1 %tobool, label %if.then, label %if.end55, !dbg !3708

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !3709
  %device = getelementptr inbounds %struct.acpi_thermal, ptr %1, i32 0, i32 0, !dbg !3710
  %2 = load ptr, ptr %device, align 8, !dbg !3710
  %handle = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 2, !dbg !3711
  %3 = load ptr, ptr %handle, align 8, !dbg !3711
  %call = call i32 @acpi_evaluate_integer(ptr noundef %3, ptr noundef @.str.7, ptr noundef null, ptr noundef %tmp) #20, !dbg !3712
  store i32 %call, ptr %status, align 4, !dbg !3713
  %4 = load i64, ptr %tmp, align 8, !dbg !3714
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !3715
  %trips = getelementptr inbounds %struct.acpi_thermal, ptr %5, i32 0, i32 6, !dbg !3716
  %critical = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips, i32 0, i32 0, !dbg !3717
  %temperature = getelementptr inbounds %struct.acpi_thermal_trip, ptr %critical, i32 0, i32 0, !dbg !3718
  store i64 %4, ptr %temperature, align 8, !dbg !3719
  %6 = load i32, ptr %status, align 4, !dbg !3720
  %tobool1 = icmp ne i32 %6, 0, !dbg !3720
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !3722

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %tz.addr, align 8, !dbg !3723
  %trips3 = getelementptr inbounds %struct.acpi_thermal, ptr %7, i32 0, i32 6, !dbg !3725
  %critical4 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips3, i32 0, i32 0, !dbg !3726
  %valid5 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %critical4, i32 0, i32 1, !dbg !3727
  store i8 0, ptr %valid5, align 8, !dbg !3728
  store i32 0, ptr %tmp6, align 4, !dbg !3729
  %8 = load i32, ptr %tmp6, align 4, !dbg !3732
  br label %if.end19, !dbg !3733

if.else:                                          ; preds = %if.then
  %9 = load i64, ptr %tmp, align 8, !dbg !3734
  %cmp = icmp ule i64 %9, 2732, !dbg !3736
  br i1 %cmp, label %if.then8, label %if.else14, !dbg !3737

if.then8:                                         ; preds = %if.else
  br label %do.body, !dbg !3738

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !3741

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3741

do.end:                                           ; preds = %do.cond
  %10 = load i64, ptr %tmp, align 8, !dbg !3738
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, i64 noundef %10) #21, !dbg !3738
  store i32 %call10, ptr %tmp9, align 4, !dbg !3741
  %11 = load i32, ptr %tmp9, align 4, !dbg !3738
  %12 = load ptr, ptr %tz.addr, align 8, !dbg !3743
  %trips11 = getelementptr inbounds %struct.acpi_thermal, ptr %12, i32 0, i32 6, !dbg !3744
  %critical12 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips11, i32 0, i32 0, !dbg !3745
  %valid13 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %critical12, i32 0, i32 1, !dbg !3746
  store i8 0, ptr %valid13, align 8, !dbg !3747
  br label %if.end, !dbg !3748

if.else14:                                        ; preds = %if.else
  %13 = load ptr, ptr %tz.addr, align 8, !dbg !3749
  %trips15 = getelementptr inbounds %struct.acpi_thermal, ptr %13, i32 0, i32 6, !dbg !3751
  %critical16 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips15, i32 0, i32 0, !dbg !3752
  %valid17 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %critical16, i32 0, i32 1, !dbg !3753
  store i8 1, ptr %valid17, align 8, !dbg !3754
  store i32 0, ptr %tmp18, align 4, !dbg !3755
  %14 = load i32, ptr %tmp18, align 4, !dbg !3758
  br label %if.end

if.end:                                           ; preds = %if.else14, %do.end
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then2
  %15 = load ptr, ptr %tz.addr, align 8, !dbg !3759
  %trips20 = getelementptr inbounds %struct.acpi_thermal, ptr %15, i32 0, i32 6, !dbg !3760
  %critical21 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips20, i32 0, i32 0, !dbg !3761
  %valid22 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %critical21, i32 0, i32 1, !dbg !3762
  %16 = load i8, ptr %valid22, align 8, !dbg !3762, !range !2806, !noundef !421
  %tobool23 = trunc i8 %16 to i1, !dbg !3762
  br i1 %tobool23, label %if.then24, label %if.end54, !dbg !3763

if.then24:                                        ; preds = %if.end19
  %17 = load i32, ptr @crt, align 4, !dbg !3764
  %cmp25 = icmp eq i32 %17, -1, !dbg !3765
  br i1 %cmp25, label %if.then27, label %if.else31, !dbg !3766

if.then27:                                        ; preds = %if.then24
  %18 = load ptr, ptr %tz.addr, align 8, !dbg !3767
  %trips28 = getelementptr inbounds %struct.acpi_thermal, ptr %18, i32 0, i32 6, !dbg !3769
  %critical29 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips28, i32 0, i32 0, !dbg !3770
  %valid30 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %critical29, i32 0, i32 1, !dbg !3771
  store i8 0, ptr %valid30, align 8, !dbg !3772
  br label %if.end53, !dbg !3773

if.else31:                                        ; preds = %if.then24
  %19 = load i32, ptr @crt, align 4, !dbg !3774
  %cmp32 = icmp sgt i32 %19, 0, !dbg !3775
  br i1 %cmp32, label %if.then34, label %if.end52, !dbg !3776

if.then34:                                        ; preds = %if.else31
  call void @llvm.lifetime.start.p0(i64 8, ptr %crt_k) #22, !dbg !3777
  call void @llvm.dbg.declare(metadata ptr %crt_k, metadata !3674, metadata !DIExpression()), !dbg !3778
  %20 = load i32, ptr @crt, align 4, !dbg !3779
  %conv35 = sext i32 %20 to i64, !dbg !3779
  %call36 = call i64 @celsius_to_deci_kelvin(i64 noundef %conv35) #20, !dbg !3780
  store i64 %call36, ptr %crt_k, align 8, !dbg !3778
  %21 = load i64, ptr %crt_k, align 8, !dbg !3781
  %22 = load ptr, ptr %tz.addr, align 8, !dbg !3783
  %trips37 = getelementptr inbounds %struct.acpi_thermal, ptr %22, i32 0, i32 6, !dbg !3784
  %critical38 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips37, i32 0, i32 0, !dbg !3785
  %temperature39 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %critical38, i32 0, i32 0, !dbg !3786
  %23 = load i64, ptr %temperature39, align 8, !dbg !3786
  %cmp40 = icmp ugt i64 %21, %23, !dbg !3787
  br i1 %cmp40, label %if.then42, label %if.end48, !dbg !3788

if.then42:                                        ; preds = %if.then34
  br label %do.body43, !dbg !3789

do.body43:                                        ; preds = %if.then42
  br label %do.cond44, !dbg !3791

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !3791

do.end45:                                         ; preds = %do.cond44
  %24 = load i32, ptr @crt, align 4, !dbg !3789
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, i32 noundef %24) #21, !dbg !3789
  store i32 %call47, ptr %tmp46, align 4, !dbg !3791
  %25 = load i32, ptr %tmp46, align 4, !dbg !3789
  br label %if.end48, !dbg !3793

if.end48:                                         ; preds = %do.end45, %if.then34
  %26 = load i64, ptr %crt_k, align 8, !dbg !3794
  %27 = load ptr, ptr %tz.addr, align 8, !dbg !3795
  %trips49 = getelementptr inbounds %struct.acpi_thermal, ptr %27, i32 0, i32 6, !dbg !3796
  %critical50 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips49, i32 0, i32 0, !dbg !3797
  %temperature51 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %critical50, i32 0, i32 0, !dbg !3798
  store i64 %26, ptr %temperature51, align 8, !dbg !3799
  call void @llvm.lifetime.end.p0(i64 8, ptr %crt_k) #22, !dbg !3800
  br label %if.end52, !dbg !3801

if.end52:                                         ; preds = %if.end48, %if.else31
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then27
  br label %if.end54, !dbg !3802

if.end54:                                         ; preds = %if.end53, %if.end19
  br label %if.end55, !dbg !3803

if.end55:                                         ; preds = %if.end54, %entry
  %28 = load i32, ptr %flag.addr, align 4, !dbg !3804
  %conv56 = sext i32 %28 to i64, !dbg !3804
  %and57 = and i64 %conv56, 2, !dbg !3806
  %tobool58 = icmp ne i64 %and57, 0, !dbg !3806
  br i1 %tobool58, label %if.then59, label %if.end77, !dbg !3807

if.then59:                                        ; preds = %if.end55
  %29 = load ptr, ptr %tz.addr, align 8, !dbg !3808
  %device60 = getelementptr inbounds %struct.acpi_thermal, ptr %29, i32 0, i32 0, !dbg !3810
  %30 = load ptr, ptr %device60, align 8, !dbg !3810
  %handle61 = getelementptr inbounds %struct.acpi_device, ptr %30, i32 0, i32 2, !dbg !3811
  %31 = load ptr, ptr %handle61, align 8, !dbg !3811
  %call62 = call i32 @acpi_evaluate_integer(ptr noundef %31, ptr noundef @.str.8, ptr noundef null, ptr noundef %tmp) #20, !dbg !3812
  store i32 %call62, ptr %status, align 4, !dbg !3813
  %32 = load i32, ptr %status, align 4, !dbg !3814
  %tobool63 = icmp ne i32 %32, 0, !dbg !3814
  br i1 %tobool63, label %if.then64, label %if.else68, !dbg !3816

if.then64:                                        ; preds = %if.then59
  %33 = load ptr, ptr %tz.addr, align 8, !dbg !3817
  %trips65 = getelementptr inbounds %struct.acpi_thermal, ptr %33, i32 0, i32 6, !dbg !3819
  %hot = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips65, i32 0, i32 1, !dbg !3820
  %valid66 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %hot, i32 0, i32 1, !dbg !3821
  store i8 0, ptr %valid66, align 8, !dbg !3822
  store i32 0, ptr %tmp67, align 4, !dbg !3823
  %34 = load i32, ptr %tmp67, align 4, !dbg !3826
  br label %if.end76, !dbg !3827

if.else68:                                        ; preds = %if.then59
  %35 = load i64, ptr %tmp, align 8, !dbg !3828
  %36 = load ptr, ptr %tz.addr, align 8, !dbg !3830
  %trips69 = getelementptr inbounds %struct.acpi_thermal, ptr %36, i32 0, i32 6, !dbg !3831
  %hot70 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips69, i32 0, i32 1, !dbg !3832
  %temperature71 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %hot70, i32 0, i32 0, !dbg !3833
  store i64 %35, ptr %temperature71, align 8, !dbg !3834
  %37 = load ptr, ptr %tz.addr, align 8, !dbg !3835
  %trips72 = getelementptr inbounds %struct.acpi_thermal, ptr %37, i32 0, i32 6, !dbg !3836
  %hot73 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips72, i32 0, i32 1, !dbg !3837
  %valid74 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %hot73, i32 0, i32 1, !dbg !3838
  store i8 1, ptr %valid74, align 8, !dbg !3839
  store i32 0, ptr %tmp75, align 4, !dbg !3840
  %38 = load i32, ptr %tmp75, align 4, !dbg !3843
  br label %if.end76

if.end76:                                         ; preds = %if.else68, %if.then64
  br label %if.end77, !dbg !3844

if.end77:                                         ; preds = %if.end76, %if.end55
  %39 = load i32, ptr %flag.addr, align 4, !dbg !3845
  %conv78 = sext i32 %39 to i64, !dbg !3845
  %and79 = and i64 %conv78, 4, !dbg !3847
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3847
  br i1 %tobool80, label %land.lhs.true, label %lor.lhs.false, !dbg !3848

land.lhs.true:                                    ; preds = %if.end77
  %40 = load ptr, ptr %tz.addr, align 8, !dbg !3849
  %trips81 = getelementptr inbounds %struct.acpi_thermal, ptr %40, i32 0, i32 6, !dbg !3850
  %passive = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips81, i32 0, i32 2, !dbg !3851
  %trip = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive, i32 0, i32 0, !dbg !3852
  %valid82 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip, i32 0, i32 1, !dbg !3853
  %41 = load i8, ptr %valid82, align 8, !dbg !3853, !range !2806, !noundef !421
  %tobool83 = trunc i8 %41 to i1, !dbg !3853
  br i1 %tobool83, label %if.then88, label %lor.lhs.false, !dbg !3854

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end77
  %42 = load i32, ptr %flag.addr, align 4, !dbg !3855
  %conv85 = sext i32 %42 to i64, !dbg !3855
  %cmp86 = icmp eq i64 %conv85, 31, !dbg !3856
  br i1 %cmp86, label %if.then88, label %if.end169, !dbg !3857

if.then88:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %43 = load ptr, ptr %tz.addr, align 8, !dbg !3858
  %trips89 = getelementptr inbounds %struct.acpi_thermal, ptr %43, i32 0, i32 6, !dbg !3860
  %passive90 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips89, i32 0, i32 2, !dbg !3861
  %trip91 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive90, i32 0, i32 0, !dbg !3862
  %valid92 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip91, i32 0, i32 1, !dbg !3863
  %44 = load i8, ptr %valid92, align 8, !dbg !3863, !range !2806, !noundef !421
  %tobool93 = trunc i8 %44 to i1, !dbg !3863
  %frombool = zext i1 %tobool93 to i8, !dbg !3864
  store i8 %frombool, ptr %valid, align 1, !dbg !3864
  %45 = load i32, ptr @psv, align 4, !dbg !3865
  %cmp94 = icmp eq i32 %45, -1, !dbg !3867
  br i1 %cmp94, label %if.then96, label %if.else97, !dbg !3868

if.then96:                                        ; preds = %if.then88
  store i32 15, ptr %status, align 4, !dbg !3869
  br label %if.end108, !dbg !3871

if.else97:                                        ; preds = %if.then88
  %46 = load i32, ptr @psv, align 4, !dbg !3872
  %cmp98 = icmp sgt i32 %46, 0, !dbg !3874
  br i1 %cmp98, label %if.then100, label %if.else103, !dbg !3875

if.then100:                                       ; preds = %if.else97
  %47 = load i32, ptr @psv, align 4, !dbg !3876
  %conv101 = sext i32 %47 to i64, !dbg !3876
  %call102 = call i64 @celsius_to_deci_kelvin(i64 noundef %conv101) #20, !dbg !3878
  store i64 %call102, ptr %tmp, align 8, !dbg !3879
  store i32 0, ptr %status, align 4, !dbg !3880
  br label %if.end107, !dbg !3881

if.else103:                                       ; preds = %if.else97
  %48 = load ptr, ptr %tz.addr, align 8, !dbg !3882
  %device104 = getelementptr inbounds %struct.acpi_thermal, ptr %48, i32 0, i32 0, !dbg !3884
  %49 = load ptr, ptr %device104, align 8, !dbg !3884
  %handle105 = getelementptr inbounds %struct.acpi_device, ptr %49, i32 0, i32 2, !dbg !3885
  %50 = load ptr, ptr %handle105, align 8, !dbg !3885
  %call106 = call i32 @acpi_evaluate_integer(ptr noundef %50, ptr noundef @.str.9, ptr noundef null, ptr noundef %tmp) #20, !dbg !3886
  store i32 %call106, ptr %status, align 4, !dbg !3887
  br label %if.end107

if.end107:                                        ; preds = %if.else103, %if.then100
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.then96
  %51 = load i32, ptr %status, align 4, !dbg !3888
  %tobool109 = icmp ne i32 %51, 0, !dbg !3888
  br i1 %tobool109, label %if.then110, label %if.else115, !dbg !3890

if.then110:                                       ; preds = %if.end108
  %52 = load ptr, ptr %tz.addr, align 8, !dbg !3891
  %trips111 = getelementptr inbounds %struct.acpi_thermal, ptr %52, i32 0, i32 6, !dbg !3893
  %passive112 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips111, i32 0, i32 2, !dbg !3894
  %trip113 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive112, i32 0, i32 0, !dbg !3895
  %valid114 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip113, i32 0, i32 1, !dbg !3896
  store i8 0, ptr %valid114, align 8, !dbg !3897
  br label %if.end168, !dbg !3898

if.else115:                                       ; preds = %if.end108
  %53 = load i64, ptr %tmp, align 8, !dbg !3899
  %54 = load ptr, ptr %tz.addr, align 8, !dbg !3901
  %trips116 = getelementptr inbounds %struct.acpi_thermal, ptr %54, i32 0, i32 6, !dbg !3902
  %passive117 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips116, i32 0, i32 2, !dbg !3903
  %trip118 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive117, i32 0, i32 0, !dbg !3904
  %temperature119 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip118, i32 0, i32 0, !dbg !3905
  store i64 %53, ptr %temperature119, align 8, !dbg !3906
  %55 = load ptr, ptr %tz.addr, align 8, !dbg !3907
  %trips120 = getelementptr inbounds %struct.acpi_thermal, ptr %55, i32 0, i32 6, !dbg !3908
  %passive121 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips120, i32 0, i32 2, !dbg !3909
  %trip122 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive121, i32 0, i32 0, !dbg !3910
  %valid123 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip122, i32 0, i32 1, !dbg !3911
  store i8 1, ptr %valid123, align 8, !dbg !3912
  %56 = load i32, ptr %flag.addr, align 4, !dbg !3913
  %conv124 = sext i32 %56 to i64, !dbg !3913
  %cmp125 = icmp eq i64 %conv124, 31, !dbg !3915
  br i1 %cmp125, label %if.then127, label %if.end167, !dbg !3916

if.then127:                                       ; preds = %if.else115
  %57 = load ptr, ptr %tz.addr, align 8, !dbg !3917
  %device128 = getelementptr inbounds %struct.acpi_thermal, ptr %57, i32 0, i32 0, !dbg !3919
  %58 = load ptr, ptr %device128, align 8, !dbg !3919
  %handle129 = getelementptr inbounds %struct.acpi_device, ptr %58, i32 0, i32 2, !dbg !3920
  %59 = load ptr, ptr %handle129, align 8, !dbg !3920
  %call130 = call i32 @acpi_evaluate_integer(ptr noundef %59, ptr noundef @.str.14, ptr noundef null, ptr noundef %tmp) #20, !dbg !3921
  store i32 %call130, ptr %status, align 4, !dbg !3922
  %60 = load i32, ptr %status, align 4, !dbg !3923
  %tobool131 = icmp ne i32 %60, 0, !dbg !3923
  br i1 %tobool131, label %if.then132, label %if.else137, !dbg !3925

if.then132:                                       ; preds = %if.then127
  %61 = load ptr, ptr %tz.addr, align 8, !dbg !3926
  %trips133 = getelementptr inbounds %struct.acpi_thermal, ptr %61, i32 0, i32 6, !dbg !3927
  %passive134 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips133, i32 0, i32 2, !dbg !3928
  %trip135 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive134, i32 0, i32 0, !dbg !3929
  %valid136 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip135, i32 0, i32 1, !dbg !3930
  store i8 0, ptr %valid136, align 8, !dbg !3931
  br label %if.end140, !dbg !3926

if.else137:                                       ; preds = %if.then127
  %62 = load i64, ptr %tmp, align 8, !dbg !3932
  %63 = load ptr, ptr %tz.addr, align 8, !dbg !3933
  %trips138 = getelementptr inbounds %struct.acpi_thermal, ptr %63, i32 0, i32 6, !dbg !3934
  %passive139 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips138, i32 0, i32 2, !dbg !3935
  %tc1 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive139, i32 0, i32 2, !dbg !3936
  store i64 %62, ptr %tc1, align 8, !dbg !3937
  br label %if.end140

if.end140:                                        ; preds = %if.else137, %if.then132
  %64 = load ptr, ptr %tz.addr, align 8, !dbg !3938
  %device141 = getelementptr inbounds %struct.acpi_thermal, ptr %64, i32 0, i32 0, !dbg !3939
  %65 = load ptr, ptr %device141, align 8, !dbg !3939
  %handle142 = getelementptr inbounds %struct.acpi_device, ptr %65, i32 0, i32 2, !dbg !3940
  %66 = load ptr, ptr %handle142, align 8, !dbg !3940
  %call143 = call i32 @acpi_evaluate_integer(ptr noundef %66, ptr noundef @.str.15, ptr noundef null, ptr noundef %tmp) #20, !dbg !3941
  store i32 %call143, ptr %status, align 4, !dbg !3942
  %67 = load i32, ptr %status, align 4, !dbg !3943
  %tobool144 = icmp ne i32 %67, 0, !dbg !3943
  br i1 %tobool144, label %if.then145, label %if.else150, !dbg !3945

if.then145:                                       ; preds = %if.end140
  %68 = load ptr, ptr %tz.addr, align 8, !dbg !3946
  %trips146 = getelementptr inbounds %struct.acpi_thermal, ptr %68, i32 0, i32 6, !dbg !3947
  %passive147 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips146, i32 0, i32 2, !dbg !3948
  %trip148 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive147, i32 0, i32 0, !dbg !3949
  %valid149 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip148, i32 0, i32 1, !dbg !3950
  store i8 0, ptr %valid149, align 8, !dbg !3951
  br label %if.end153, !dbg !3946

if.else150:                                       ; preds = %if.end140
  %69 = load i64, ptr %tmp, align 8, !dbg !3952
  %70 = load ptr, ptr %tz.addr, align 8, !dbg !3953
  %trips151 = getelementptr inbounds %struct.acpi_thermal, ptr %70, i32 0, i32 6, !dbg !3954
  %passive152 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips151, i32 0, i32 2, !dbg !3955
  %tc2 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive152, i32 0, i32 3, !dbg !3956
  store i64 %69, ptr %tc2, align 8, !dbg !3957
  br label %if.end153

if.end153:                                        ; preds = %if.else150, %if.then145
  %71 = load ptr, ptr %tz.addr, align 8, !dbg !3958
  %device154 = getelementptr inbounds %struct.acpi_thermal, ptr %71, i32 0, i32 0, !dbg !3959
  %72 = load ptr, ptr %device154, align 8, !dbg !3959
  %handle155 = getelementptr inbounds %struct.acpi_device, ptr %72, i32 0, i32 2, !dbg !3960
  %73 = load ptr, ptr %handle155, align 8, !dbg !3960
  %call156 = call i32 @acpi_evaluate_integer(ptr noundef %73, ptr noundef @.str.16, ptr noundef null, ptr noundef %tmp) #20, !dbg !3961
  store i32 %call156, ptr %status, align 4, !dbg !3962
  %74 = load i32, ptr %status, align 4, !dbg !3963
  %tobool157 = icmp ne i32 %74, 0, !dbg !3963
  br i1 %tobool157, label %if.then158, label %if.else163, !dbg !3965

if.then158:                                       ; preds = %if.end153
  %75 = load ptr, ptr %tz.addr, align 8, !dbg !3966
  %trips159 = getelementptr inbounds %struct.acpi_thermal, ptr %75, i32 0, i32 6, !dbg !3967
  %passive160 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips159, i32 0, i32 2, !dbg !3968
  %trip161 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive160, i32 0, i32 0, !dbg !3969
  %valid162 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip161, i32 0, i32 1, !dbg !3970
  store i8 0, ptr %valid162, align 8, !dbg !3971
  br label %if.end166, !dbg !3966

if.else163:                                       ; preds = %if.end153
  %76 = load i64, ptr %tmp, align 8, !dbg !3972
  %77 = load ptr, ptr %tz.addr, align 8, !dbg !3973
  %trips164 = getelementptr inbounds %struct.acpi_thermal, ptr %77, i32 0, i32 6, !dbg !3974
  %passive165 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips164, i32 0, i32 2, !dbg !3975
  %tsp = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive165, i32 0, i32 4, !dbg !3976
  store i64 %76, ptr %tsp, align 8, !dbg !3977
  br label %if.end166

if.end166:                                        ; preds = %if.else163, %if.then158
  br label %if.end167, !dbg !3978

if.end167:                                        ; preds = %if.end166, %if.else115
  br label %if.end168

if.end168:                                        ; preds = %if.end167, %if.then110
  br label %if.end169, !dbg !3979

if.end169:                                        ; preds = %if.end168, %lor.lhs.false
  %78 = load i32, ptr %flag.addr, align 4, !dbg !3980
  %conv170 = sext i32 %78 to i64, !dbg !3980
  %and171 = and i64 %conv170, 16, !dbg !3982
  %tobool172 = icmp ne i64 %and171, 0, !dbg !3982
  br i1 %tobool172, label %land.lhs.true173, label %if.end218, !dbg !3983

land.lhs.true173:                                 ; preds = %if.end169
  %79 = load ptr, ptr %tz.addr, align 8, !dbg !3984
  %trips174 = getelementptr inbounds %struct.acpi_thermal, ptr %79, i32 0, i32 6, !dbg !3985
  %passive175 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips174, i32 0, i32 2, !dbg !3986
  %trip176 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive175, i32 0, i32 0, !dbg !3987
  %valid177 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip176, i32 0, i32 1, !dbg !3988
  %80 = load i8, ptr %valid177, align 8, !dbg !3988, !range !2806, !noundef !421
  %tobool178 = trunc i8 %80 to i1, !dbg !3988
  br i1 %tobool178, label %if.then180, label %if.end218, !dbg !3989

if.then180:                                       ; preds = %land.lhs.true173
  call void @llvm.memset.p0.i64(ptr align 8 %devices, i8 0, i64 88, i1 false), !dbg !3990
  %81 = load ptr, ptr %tz.addr, align 8, !dbg !3992
  %device181 = getelementptr inbounds %struct.acpi_thermal, ptr %81, i32 0, i32 0, !dbg !3993
  %82 = load ptr, ptr %device181, align 8, !dbg !3993
  %handle182 = getelementptr inbounds %struct.acpi_device, ptr %82, i32 0, i32 2, !dbg !3994
  %83 = load ptr, ptr %handle182, align 8, !dbg !3994
  %call183 = call i32 @acpi_evaluate_reference(ptr noundef %83, ptr noundef @.str.17, ptr noundef null, ptr noundef %devices) #20, !dbg !3995
  store i32 %call183, ptr %status, align 4, !dbg !3996
  %84 = load i32, ptr %status, align 4, !dbg !3997
  %tobool184 = icmp ne i32 %84, 0, !dbg !3997
  br i1 %tobool184, label %if.then185, label %if.else192, !dbg !3999

if.then185:                                       ; preds = %if.then180
  %85 = load ptr, ptr %tz.addr, align 8, !dbg !4000
  %device186 = getelementptr inbounds %struct.acpi_thermal, ptr %85, i32 0, i32 0, !dbg !4000
  %86 = load ptr, ptr %device186, align 8, !dbg !4000
  %handle187 = getelementptr inbounds %struct.acpi_device, ptr %86, i32 0, i32 2, !dbg !4000
  %87 = load ptr, ptr %handle187, align 8, !dbg !4000
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.18, ptr noundef %87, ptr noundef @.str.19) #20, !dbg !4000
  %88 = load ptr, ptr %tz.addr, align 8, !dbg !4002
  %trips188 = getelementptr inbounds %struct.acpi_thermal, ptr %88, i32 0, i32 6, !dbg !4003
  %passive189 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips188, i32 0, i32 2, !dbg !4004
  %trip190 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive189, i32 0, i32 0, !dbg !4005
  %valid191 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip190, i32 0, i32 1, !dbg !4006
  store i8 0, ptr %valid191, align 8, !dbg !4007
  br label %if.end197, !dbg !4008

if.else192:                                       ; preds = %if.then180
  %89 = load ptr, ptr %tz.addr, align 8, !dbg !4009
  %trips193 = getelementptr inbounds %struct.acpi_thermal, ptr %89, i32 0, i32 6, !dbg !4011
  %passive194 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips193, i32 0, i32 2, !dbg !4012
  %trip195 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive194, i32 0, i32 0, !dbg !4013
  %valid196 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip195, i32 0, i32 1, !dbg !4014
  store i8 1, ptr %valid196, align 8, !dbg !4015
  br label %if.end197

if.end197:                                        ; preds = %if.else192, %if.then185
  %90 = load ptr, ptr %tz.addr, align 8, !dbg !4016
  %trips198 = getelementptr inbounds %struct.acpi_thermal, ptr %90, i32 0, i32 6, !dbg !4018
  %passive199 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips198, i32 0, i32 2, !dbg !4019
  %devices200 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive199, i32 0, i32 1, !dbg !4020
  %call201 = call i32 @memcmp(ptr noundef %devices200, ptr noundef %devices, i64 noundef 88) #20, !dbg !4021
  %tobool202 = icmp ne i32 %call201, 0, !dbg !4021
  br i1 %tobool202, label %if.then203, label %if.end217, !dbg !4022

if.then203:                                       ; preds = %if.end197
  %91 = load ptr, ptr %tz.addr, align 8, !dbg !4023
  %trips204 = getelementptr inbounds %struct.acpi_thermal, ptr %91, i32 0, i32 6, !dbg !4025
  %passive205 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips204, i32 0, i32 2, !dbg !4026
  %devices206 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive205, i32 0, i32 1, !dbg !4027
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %devices206, ptr align 8 %devices, i64 88, i1 false), !dbg !4028
  br label %do.body207, !dbg !4029

do.body207:                                       ; preds = %if.then203
  %92 = load i32, ptr %flag.addr, align 4, !dbg !4030
  %conv208 = sext i32 %92 to i64, !dbg !4030
  %cmp209 = icmp ne i64 %conv208, 31, !dbg !4030
  br i1 %cmp209, label %if.then211, label %if.end214, !dbg !4033

if.then211:                                       ; preds = %do.body207
  %93 = load ptr, ptr %tz.addr, align 8, !dbg !4030
  %device212 = getelementptr inbounds %struct.acpi_thermal, ptr %93, i32 0, i32 0, !dbg !4030
  %94 = load ptr, ptr %device212, align 8, !dbg !4030
  %handle213 = getelementptr inbounds %struct.acpi_device, ptr %94, i32 0, i32 2, !dbg !4030
  %95 = load ptr, ptr %handle213, align 8, !dbg !4030
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.18, ptr noundef %95, ptr noundef @.str.20, ptr noundef @.str.21) #20, !dbg !4030
  br label %if.end214, !dbg !4030

if.end214:                                        ; preds = %if.then211, %do.body207
  br label %do.cond215, !dbg !4033

do.cond215:                                       ; preds = %if.end214
  br label %do.end216, !dbg !4033

do.end216:                                        ; preds = %do.cond215
  br label %if.end217, !dbg !4034

if.end217:                                        ; preds = %do.end216, %if.end197
  br label %if.end218, !dbg !4035

if.end218:                                        ; preds = %if.end217, %land.lhs.true173, %if.end169
  %96 = load i32, ptr %flag.addr, align 4, !dbg !4036
  %conv219 = sext i32 %96 to i64, !dbg !4036
  %and220 = and i64 %conv219, 4, !dbg !4038
  %tobool221 = icmp ne i64 %and220, 0, !dbg !4038
  br i1 %tobool221, label %if.then226, label %lor.lhs.false222, !dbg !4039

lor.lhs.false222:                                 ; preds = %if.end218
  %97 = load i32, ptr %flag.addr, align 4, !dbg !4040
  %conv223 = sext i32 %97 to i64, !dbg !4040
  %and224 = and i64 %conv223, 16, !dbg !4041
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4041
  br i1 %tobool225, label %if.then226, label %if.end249, !dbg !4042

if.then226:                                       ; preds = %lor.lhs.false222, %if.end218
  %98 = load i8, ptr %valid, align 1, !dbg !4043, !range !2806, !noundef !421
  %tobool227 = trunc i8 %98 to i1, !dbg !4043
  %conv228 = zext i1 %tobool227 to i32, !dbg !4043
  %99 = load ptr, ptr %tz.addr, align 8, !dbg !4046
  %trips229 = getelementptr inbounds %struct.acpi_thermal, ptr %99, i32 0, i32 6, !dbg !4047
  %passive230 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips229, i32 0, i32 2, !dbg !4048
  %trip231 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive230, i32 0, i32 0, !dbg !4049
  %valid232 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip231, i32 0, i32 1, !dbg !4050
  %100 = load i8, ptr %valid232, align 8, !dbg !4050, !range !2806, !noundef !421
  %tobool233 = trunc i8 %100 to i1, !dbg !4050
  %conv234 = zext i1 %tobool233 to i32, !dbg !4046
  %cmp235 = icmp ne i32 %conv228, %conv234, !dbg !4051
  br i1 %cmp235, label %if.then237, label %if.end248, !dbg !4052

if.then237:                                       ; preds = %if.then226
  br label %do.body238, !dbg !4053

do.body238:                                       ; preds = %if.then237
  %101 = load i32, ptr %flag.addr, align 4, !dbg !4054
  %conv239 = sext i32 %101 to i64, !dbg !4054
  %cmp240 = icmp ne i64 %conv239, 31, !dbg !4054
  br i1 %cmp240, label %if.then242, label %if.end245, !dbg !4057

if.then242:                                       ; preds = %do.body238
  %102 = load ptr, ptr %tz.addr, align 8, !dbg !4054
  %device243 = getelementptr inbounds %struct.acpi_thermal, ptr %102, i32 0, i32 0, !dbg !4054
  %103 = load ptr, ptr %device243, align 8, !dbg !4054
  %handle244 = getelementptr inbounds %struct.acpi_device, ptr %103, i32 0, i32 2, !dbg !4054
  %104 = load ptr, ptr %handle244, align 8, !dbg !4054
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.18, ptr noundef %104, ptr noundef @.str.20, ptr noundef @.str.22) #20, !dbg !4054
  br label %if.end245, !dbg !4054

if.end245:                                        ; preds = %if.then242, %do.body238
  br label %do.cond246, !dbg !4057

do.cond246:                                       ; preds = %if.end245
  br label %do.end247, !dbg !4057

do.end247:                                        ; preds = %do.cond246
  br label %if.end248, !dbg !4057

if.end248:                                        ; preds = %do.end247, %if.then226
  br label %if.end249, !dbg !4058

if.end249:                                        ; preds = %if.end248, %lor.lhs.false222
  store i32 0, ptr %i, align 4, !dbg !4059
  br label %for.cond, !dbg !4060

for.cond:                                         ; preds = %for.inc, %if.end249
  %105 = load i32, ptr %i, align 4, !dbg !4061
  %cmp250 = icmp slt i32 %105, 10, !dbg !4062
  br i1 %cmp250, label %for.body, label %for.end, !dbg !4063

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 5, ptr %name) #22, !dbg !4064
  call void @llvm.dbg.declare(metadata ptr %name, metadata !3682, metadata !DIExpression()), !dbg !4065
  %arrayinit.begin = getelementptr inbounds [5 x i8], ptr %name, i64 0, i64 0, !dbg !4066
  store i8 95, ptr %arrayinit.begin, align 1, !dbg !4066
  %arrayinit.element = getelementptr inbounds i8, ptr %arrayinit.begin, i64 1, !dbg !4066
  store i8 65, ptr %arrayinit.element, align 1, !dbg !4066
  %arrayinit.element252 = getelementptr inbounds i8, ptr %arrayinit.element, i64 1, !dbg !4066
  store i8 67, ptr %arrayinit.element252, align 1, !dbg !4066
  %arrayinit.element253 = getelementptr inbounds i8, ptr %arrayinit.element252, i64 1, !dbg !4066
  %106 = load i32, ptr %i, align 4, !dbg !4067
  %add = add i32 48, %106, !dbg !4068
  %conv254 = trunc i32 %add to i8, !dbg !4069
  store i8 %conv254, ptr %arrayinit.element253, align 1, !dbg !4066
  %arrayinit.element255 = getelementptr inbounds i8, ptr %arrayinit.element253, i64 1, !dbg !4066
  store i8 0, ptr %arrayinit.element255, align 1, !dbg !4066
  %107 = load ptr, ptr %tz.addr, align 8, !dbg !4070
  %trips256 = getelementptr inbounds %struct.acpi_thermal, ptr %107, i32 0, i32 6, !dbg !4071
  %active = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips256, i32 0, i32 3, !dbg !4072
  %108 = load i32, ptr %i, align 4, !dbg !4073
  %idxprom = sext i32 %108 to i64, !dbg !4070
  %arrayidx = getelementptr [10 x %struct.acpi_thermal_active], ptr %active, i64 0, i64 %idxprom, !dbg !4070
  %trip257 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx, i32 0, i32 0, !dbg !4074
  %valid258 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip257, i32 0, i32 1, !dbg !4075
  %109 = load i8, ptr %valid258, align 8, !dbg !4075, !range !2806, !noundef !421
  %tobool259 = trunc i8 %109 to i1, !dbg !4075
  %frombool260 = zext i1 %tobool259 to i8, !dbg !4076
  store i8 %frombool260, ptr %valid, align 1, !dbg !4076
  %110 = load i32, ptr @act, align 4, !dbg !4077
  %cmp261 = icmp eq i32 %110, -1, !dbg !4079
  br i1 %cmp261, label %if.then263, label %if.end264, !dbg !4080

if.then263:                                       ; preds = %for.body
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4081

if.end264:                                        ; preds = %for.body
  %111 = load i32, ptr %flag.addr, align 4, !dbg !4082
  %conv265 = sext i32 %111 to i64, !dbg !4082
  %cmp266 = icmp eq i64 %conv265, 31, !dbg !4083
  br i1 %cmp266, label %if.then281, label %lor.lhs.false268, !dbg !4084

lor.lhs.false268:                                 ; preds = %if.end264
  %112 = load i32, ptr %flag.addr, align 4, !dbg !4085
  %conv269 = sext i32 %112 to i64, !dbg !4085
  %and270 = and i64 %conv269, 8, !dbg !4086
  %tobool271 = icmp ne i64 %and270, 0, !dbg !4086
  br i1 %tobool271, label %land.lhs.true272, label %if.end345, !dbg !4087

land.lhs.true272:                                 ; preds = %lor.lhs.false268
  %113 = load ptr, ptr %tz.addr, align 8, !dbg !4088
  %trips273 = getelementptr inbounds %struct.acpi_thermal, ptr %113, i32 0, i32 6, !dbg !4089
  %active274 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips273, i32 0, i32 3, !dbg !4090
  %114 = load i32, ptr %i, align 4, !dbg !4091
  %idxprom275 = sext i32 %114 to i64, !dbg !4088
  %arrayidx276 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active274, i64 0, i64 %idxprom275, !dbg !4088
  %trip277 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx276, i32 0, i32 0, !dbg !4092
  %valid278 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip277, i32 0, i32 1, !dbg !4093
  %115 = load i8, ptr %valid278, align 8, !dbg !4093, !range !2806, !noundef !421
  %tobool279 = trunc i8 %115 to i1, !dbg !4093
  br i1 %tobool279, label %if.then281, label %if.end345, !dbg !4094

if.then281:                                       ; preds = %land.lhs.true272, %if.end264
  %116 = load ptr, ptr %tz.addr, align 8, !dbg !4095
  %device282 = getelementptr inbounds %struct.acpi_thermal, ptr %116, i32 0, i32 0, !dbg !4096
  %117 = load ptr, ptr %device282, align 8, !dbg !4096
  %handle283 = getelementptr inbounds %struct.acpi_device, ptr %117, i32 0, i32 2, !dbg !4097
  %118 = load ptr, ptr %handle283, align 8, !dbg !4097
  %arraydecay = getelementptr inbounds [5 x i8], ptr %name, i64 0, i64 0, !dbg !4098
  %call284 = call i32 @acpi_evaluate_integer(ptr noundef %118, ptr noundef %arraydecay, ptr noundef null, ptr noundef %tmp) #20, !dbg !4099
  store i32 %call284, ptr %status, align 4, !dbg !4100
  %119 = load i32, ptr %status, align 4, !dbg !4101
  %tobool285 = icmp ne i32 %119, 0, !dbg !4101
  br i1 %tobool285, label %if.then286, label %if.else331, !dbg !4102

if.then286:                                       ; preds = %if.then281
  %120 = load ptr, ptr %tz.addr, align 8, !dbg !4103
  %trips287 = getelementptr inbounds %struct.acpi_thermal, ptr %120, i32 0, i32 6, !dbg !4104
  %active288 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips287, i32 0, i32 3, !dbg !4105
  %121 = load i32, ptr %i, align 4, !dbg !4106
  %idxprom289 = sext i32 %121 to i64, !dbg !4103
  %arrayidx290 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active288, i64 0, i64 %idxprom289, !dbg !4103
  %trip291 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx290, i32 0, i32 0, !dbg !4107
  %valid292 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip291, i32 0, i32 1, !dbg !4108
  store i8 0, ptr %valid292, align 8, !dbg !4109
  %122 = load i32, ptr %i, align 4, !dbg !4110
  %cmp293 = icmp eq i32 %122, 0, !dbg !4112
  br i1 %cmp293, label %if.then295, label %if.end296, !dbg !4113

if.then295:                                       ; preds = %if.then286
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4114

if.end296:                                        ; preds = %if.then286
  %123 = load i32, ptr @act, align 4, !dbg !4115
  %cmp297 = icmp sle i32 %123, 0, !dbg !4117
  br i1 %cmp297, label %if.then299, label %if.end300, !dbg !4118

if.then299:                                       ; preds = %if.end296
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4119

if.end300:                                        ; preds = %if.end296
  %124 = load i32, ptr %i, align 4, !dbg !4120
  %cmp301 = icmp eq i32 %124, 1, !dbg !4121
  br i1 %cmp301, label %if.then303, label %if.else311, !dbg !4122

if.then303:                                       ; preds = %if.end300
  %125 = load i32, ptr @act, align 4, !dbg !4123
  %conv304 = sext i32 %125 to i64, !dbg !4123
  %call305 = call i64 @celsius_to_deci_kelvin(i64 noundef %conv304) #20, !dbg !4124
  %126 = load ptr, ptr %tz.addr, align 8, !dbg !4125
  %trips306 = getelementptr inbounds %struct.acpi_thermal, ptr %126, i32 0, i32 6, !dbg !4126
  %active307 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips306, i32 0, i32 3, !dbg !4127
  %arrayidx308 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active307, i64 0, i64 0, !dbg !4125
  %trip309 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx308, i32 0, i32 0, !dbg !4128
  %temperature310 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip309, i32 0, i32 0, !dbg !4129
  store i64 %call305, ptr %temperature310, align 8, !dbg !4130
  br label %if.end330, !dbg !4125

if.else311:                                       ; preds = %if.end300
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x239) #22, !dbg !4131
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x239, metadata !3686, metadata !DIExpression()), !dbg !4131
  %127 = load ptr, ptr %tz.addr, align 8, !dbg !4131
  %trips312 = getelementptr inbounds %struct.acpi_thermal, ptr %127, i32 0, i32 6, !dbg !4131
  %active313 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips312, i32 0, i32 3, !dbg !4131
  %128 = load i32, ptr %i, align 4, !dbg !4131
  %sub = sub i32 %128, 2, !dbg !4131
  %idxprom314 = sext i32 %sub to i64, !dbg !4131
  %arrayidx315 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active313, i64 0, i64 %idxprom314, !dbg !4131
  %trip316 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx315, i32 0, i32 0, !dbg !4131
  %temperature317 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip316, i32 0, i32 0, !dbg !4131
  %129 = load i64, ptr %temperature317, align 8, !dbg !4131
  store i64 %129, ptr %__UNIQUE_ID___x239, align 8, !dbg !4131
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y240) #22, !dbg !4131
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y240, metadata !3693, metadata !DIExpression()), !dbg !4131
  %130 = load i32, ptr @act, align 4, !dbg !4131
  %conv318 = sext i32 %130 to i64, !dbg !4131
  %call319 = call i64 @celsius_to_deci_kelvin(i64 noundef %conv318) #20, !dbg !4131
  store i64 %call319, ptr %__UNIQUE_ID___y240, align 8, !dbg !4131
  %131 = load i64, ptr %__UNIQUE_ID___x239, align 8, !dbg !4131
  %132 = load i64, ptr %__UNIQUE_ID___y240, align 8, !dbg !4131
  %cmp321 = icmp ult i64 %131, %132, !dbg !4131
  br i1 %cmp321, label %cond.true, label %cond.false, !dbg !4131

cond.true:                                        ; preds = %if.else311
  %133 = load i64, ptr %__UNIQUE_ID___x239, align 8, !dbg !4131
  br label %cond.end, !dbg !4131

cond.false:                                       ; preds = %if.else311
  %134 = load i64, ptr %__UNIQUE_ID___y240, align 8, !dbg !4131
  br label %cond.end, !dbg !4131

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %133, %cond.true ], [ %134, %cond.false ], !dbg !4131
  store i64 %cond, ptr %tmp320, align 8, !dbg !4131
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y240) #22, !dbg !4132
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x239) #22, !dbg !4132
  %135 = load i64, ptr %tmp320, align 8, !dbg !4131
  %136 = load ptr, ptr %tz.addr, align 8, !dbg !4133
  %trips323 = getelementptr inbounds %struct.acpi_thermal, ptr %136, i32 0, i32 6, !dbg !4134
  %active324 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips323, i32 0, i32 3, !dbg !4135
  %137 = load i32, ptr %i, align 4, !dbg !4136
  %sub325 = sub i32 %137, 1, !dbg !4137
  %idxprom326 = sext i32 %sub325 to i64, !dbg !4133
  %arrayidx327 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active324, i64 0, i64 %idxprom326, !dbg !4133
  %trip328 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx327, i32 0, i32 0, !dbg !4138
  %temperature329 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip328, i32 0, i32 0, !dbg !4139
  store i64 %135, ptr %temperature329, align 8, !dbg !4140
  br label %if.end330

if.end330:                                        ; preds = %cond.end, %if.then303
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4141

if.else331:                                       ; preds = %if.then281
  %138 = load i64, ptr %tmp, align 8, !dbg !4142
  %139 = load ptr, ptr %tz.addr, align 8, !dbg !4144
  %trips332 = getelementptr inbounds %struct.acpi_thermal, ptr %139, i32 0, i32 6, !dbg !4145
  %active333 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips332, i32 0, i32 3, !dbg !4146
  %140 = load i32, ptr %i, align 4, !dbg !4147
  %idxprom334 = sext i32 %140 to i64, !dbg !4144
  %arrayidx335 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active333, i64 0, i64 %idxprom334, !dbg !4144
  %trip336 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx335, i32 0, i32 0, !dbg !4148
  %temperature337 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip336, i32 0, i32 0, !dbg !4149
  store i64 %138, ptr %temperature337, align 8, !dbg !4150
  %141 = load ptr, ptr %tz.addr, align 8, !dbg !4151
  %trips338 = getelementptr inbounds %struct.acpi_thermal, ptr %141, i32 0, i32 6, !dbg !4152
  %active339 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips338, i32 0, i32 3, !dbg !4153
  %142 = load i32, ptr %i, align 4, !dbg !4154
  %idxprom340 = sext i32 %142 to i64, !dbg !4151
  %arrayidx341 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active339, i64 0, i64 %idxprom340, !dbg !4151
  %trip342 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx341, i32 0, i32 0, !dbg !4155
  %valid343 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip342, i32 0, i32 1, !dbg !4156
  store i8 1, ptr %valid343, align 8, !dbg !4157
  br label %if.end344

if.end344:                                        ; preds = %if.else331
  br label %if.end345, !dbg !4158

if.end345:                                        ; preds = %if.end344, %land.lhs.true272, %lor.lhs.false268
  %arrayidx346 = getelementptr [5 x i8], ptr %name, i64 0, i64 2, !dbg !4159
  store i8 76, ptr %arrayidx346, align 1, !dbg !4160
  %143 = load i32, ptr %flag.addr, align 4, !dbg !4161
  %conv347 = sext i32 %143 to i64, !dbg !4161
  %and348 = and i64 %conv347, 16, !dbg !4163
  %tobool349 = icmp ne i64 %and348, 0, !dbg !4163
  br i1 %tobool349, label %land.lhs.true350, label %if.end406, !dbg !4164

land.lhs.true350:                                 ; preds = %if.end345
  %144 = load ptr, ptr %tz.addr, align 8, !dbg !4165
  %trips351 = getelementptr inbounds %struct.acpi_thermal, ptr %144, i32 0, i32 6, !dbg !4166
  %active352 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips351, i32 0, i32 3, !dbg !4167
  %145 = load i32, ptr %i, align 4, !dbg !4168
  %idxprom353 = sext i32 %145 to i64, !dbg !4165
  %arrayidx354 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active352, i64 0, i64 %idxprom353, !dbg !4165
  %trip355 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx354, i32 0, i32 0, !dbg !4169
  %valid356 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip355, i32 0, i32 1, !dbg !4170
  %146 = load i8, ptr %valid356, align 8, !dbg !4170, !range !2806, !noundef !421
  %tobool357 = trunc i8 %146 to i1, !dbg !4170
  br i1 %tobool357, label %if.then359, label %if.end406, !dbg !4171

if.then359:                                       ; preds = %land.lhs.true350
  call void @llvm.memset.p0.i64(ptr align 8 %devices, i8 0, i64 88, i1 false), !dbg !4172
  %147 = load ptr, ptr %tz.addr, align 8, !dbg !4174
  %device360 = getelementptr inbounds %struct.acpi_thermal, ptr %147, i32 0, i32 0, !dbg !4175
  %148 = load ptr, ptr %device360, align 8, !dbg !4175
  %handle361 = getelementptr inbounds %struct.acpi_device, ptr %148, i32 0, i32 2, !dbg !4176
  %149 = load ptr, ptr %handle361, align 8, !dbg !4176
  %arraydecay362 = getelementptr inbounds [5 x i8], ptr %name, i64 0, i64 0, !dbg !4177
  %call363 = call i32 @acpi_evaluate_reference(ptr noundef %149, ptr noundef %arraydecay362, ptr noundef null, ptr noundef %devices) #20, !dbg !4178
  store i32 %call363, ptr %status, align 4, !dbg !4179
  %150 = load i32, ptr %status, align 4, !dbg !4180
  %tobool364 = icmp ne i32 %150, 0, !dbg !4180
  br i1 %tobool364, label %if.then365, label %if.else374, !dbg !4182

if.then365:                                       ; preds = %if.then359
  %151 = load ptr, ptr %tz.addr, align 8, !dbg !4183
  %device366 = getelementptr inbounds %struct.acpi_thermal, ptr %151, i32 0, i32 0, !dbg !4183
  %152 = load ptr, ptr %device366, align 8, !dbg !4183
  %handle367 = getelementptr inbounds %struct.acpi_device, ptr %152, i32 0, i32 2, !dbg !4183
  %153 = load ptr, ptr %handle367, align 8, !dbg !4183
  %154 = load i32, ptr %i, align 4, !dbg !4183
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.18, ptr noundef %153, ptr noundef @.str.23, i32 noundef %154) #20, !dbg !4183
  %155 = load ptr, ptr %tz.addr, align 8, !dbg !4185
  %trips368 = getelementptr inbounds %struct.acpi_thermal, ptr %155, i32 0, i32 6, !dbg !4186
  %active369 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips368, i32 0, i32 3, !dbg !4187
  %156 = load i32, ptr %i, align 4, !dbg !4188
  %idxprom370 = sext i32 %156 to i64, !dbg !4185
  %arrayidx371 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active369, i64 0, i64 %idxprom370, !dbg !4185
  %trip372 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx371, i32 0, i32 0, !dbg !4189
  %valid373 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip372, i32 0, i32 1, !dbg !4190
  store i8 0, ptr %valid373, align 8, !dbg !4191
  br label %if.end381, !dbg !4192

if.else374:                                       ; preds = %if.then359
  %157 = load ptr, ptr %tz.addr, align 8, !dbg !4193
  %trips375 = getelementptr inbounds %struct.acpi_thermal, ptr %157, i32 0, i32 6, !dbg !4195
  %active376 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips375, i32 0, i32 3, !dbg !4196
  %158 = load i32, ptr %i, align 4, !dbg !4197
  %idxprom377 = sext i32 %158 to i64, !dbg !4193
  %arrayidx378 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active376, i64 0, i64 %idxprom377, !dbg !4193
  %trip379 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx378, i32 0, i32 0, !dbg !4198
  %valid380 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip379, i32 0, i32 1, !dbg !4199
  store i8 1, ptr %valid380, align 8, !dbg !4200
  br label %if.end381

if.end381:                                        ; preds = %if.else374, %if.then365
  %159 = load ptr, ptr %tz.addr, align 8, !dbg !4201
  %trips382 = getelementptr inbounds %struct.acpi_thermal, ptr %159, i32 0, i32 6, !dbg !4203
  %active383 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips382, i32 0, i32 3, !dbg !4204
  %160 = load i32, ptr %i, align 4, !dbg !4205
  %idxprom384 = sext i32 %160 to i64, !dbg !4201
  %arrayidx385 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active383, i64 0, i64 %idxprom384, !dbg !4201
  %devices386 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx385, i32 0, i32 1, !dbg !4206
  %call387 = call i32 @memcmp(ptr noundef %devices386, ptr noundef %devices, i64 noundef 88) #20, !dbg !4207
  %tobool388 = icmp ne i32 %call387, 0, !dbg !4207
  br i1 %tobool388, label %if.then389, label %if.end405, !dbg !4208

if.then389:                                       ; preds = %if.end381
  %161 = load ptr, ptr %tz.addr, align 8, !dbg !4209
  %trips390 = getelementptr inbounds %struct.acpi_thermal, ptr %161, i32 0, i32 6, !dbg !4211
  %active391 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips390, i32 0, i32 3, !dbg !4212
  %162 = load i32, ptr %i, align 4, !dbg !4213
  %idxprom392 = sext i32 %162 to i64, !dbg !4209
  %arrayidx393 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active391, i64 0, i64 %idxprom392, !dbg !4209
  %devices394 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx393, i32 0, i32 1, !dbg !4214
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %devices394, ptr align 8 %devices, i64 88, i1 false), !dbg !4215
  br label %do.body395, !dbg !4216

do.body395:                                       ; preds = %if.then389
  %163 = load i32, ptr %flag.addr, align 4, !dbg !4217
  %conv396 = sext i32 %163 to i64, !dbg !4217
  %cmp397 = icmp ne i64 %conv396, 31, !dbg !4217
  br i1 %cmp397, label %if.then399, label %if.end402, !dbg !4220

if.then399:                                       ; preds = %do.body395
  %164 = load ptr, ptr %tz.addr, align 8, !dbg !4217
  %device400 = getelementptr inbounds %struct.acpi_thermal, ptr %164, i32 0, i32 0, !dbg !4217
  %165 = load ptr, ptr %device400, align 8, !dbg !4217
  %handle401 = getelementptr inbounds %struct.acpi_device, ptr %165, i32 0, i32 2, !dbg !4217
  %166 = load ptr, ptr %handle401, align 8, !dbg !4217
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.18, ptr noundef %166, ptr noundef @.str.20, ptr noundef @.str.21) #20, !dbg !4217
  br label %if.end402, !dbg !4217

if.end402:                                        ; preds = %if.then399, %do.body395
  br label %do.cond403, !dbg !4220

do.cond403:                                       ; preds = %if.end402
  br label %do.end404, !dbg !4220

do.end404:                                        ; preds = %do.cond403
  br label %if.end405, !dbg !4221

if.end405:                                        ; preds = %do.end404, %if.end381
  br label %if.end406, !dbg !4222

if.end406:                                        ; preds = %if.end405, %land.lhs.true350, %if.end345
  %167 = load i32, ptr %flag.addr, align 4, !dbg !4223
  %conv407 = sext i32 %167 to i64, !dbg !4223
  %and408 = and i64 %conv407, 8, !dbg !4225
  %tobool409 = icmp ne i64 %and408, 0, !dbg !4225
  br i1 %tobool409, label %if.then414, label %lor.lhs.false410, !dbg !4226

lor.lhs.false410:                                 ; preds = %if.end406
  %168 = load i32, ptr %flag.addr, align 4, !dbg !4227
  %conv411 = sext i32 %168 to i64, !dbg !4227
  %and412 = and i64 %conv411, 16, !dbg !4228
  %tobool413 = icmp ne i64 %and412, 0, !dbg !4228
  br i1 %tobool413, label %if.then414, label %if.end439, !dbg !4229

if.then414:                                       ; preds = %lor.lhs.false410, %if.end406
  %169 = load i8, ptr %valid, align 1, !dbg !4230, !range !2806, !noundef !421
  %tobool415 = trunc i8 %169 to i1, !dbg !4230
  %conv416 = zext i1 %tobool415 to i32, !dbg !4230
  %170 = load ptr, ptr %tz.addr, align 8, !dbg !4232
  %trips417 = getelementptr inbounds %struct.acpi_thermal, ptr %170, i32 0, i32 6, !dbg !4233
  %active418 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips417, i32 0, i32 3, !dbg !4234
  %171 = load i32, ptr %i, align 4, !dbg !4235
  %idxprom419 = sext i32 %171 to i64, !dbg !4232
  %arrayidx420 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active418, i64 0, i64 %idxprom419, !dbg !4232
  %trip421 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx420, i32 0, i32 0, !dbg !4236
  %valid422 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip421, i32 0, i32 1, !dbg !4237
  %172 = load i8, ptr %valid422, align 8, !dbg !4237, !range !2806, !noundef !421
  %tobool423 = trunc i8 %172 to i1, !dbg !4237
  %conv424 = zext i1 %tobool423 to i32, !dbg !4232
  %cmp425 = icmp ne i32 %conv416, %conv424, !dbg !4238
  br i1 %cmp425, label %if.then427, label %if.end438, !dbg !4239

if.then427:                                       ; preds = %if.then414
  br label %do.body428, !dbg !4240

do.body428:                                       ; preds = %if.then427
  %173 = load i32, ptr %flag.addr, align 4, !dbg !4241
  %conv429 = sext i32 %173 to i64, !dbg !4241
  %cmp430 = icmp ne i64 %conv429, 31, !dbg !4241
  br i1 %cmp430, label %if.then432, label %if.end435, !dbg !4244

if.then432:                                       ; preds = %do.body428
  %174 = load ptr, ptr %tz.addr, align 8, !dbg !4241
  %device433 = getelementptr inbounds %struct.acpi_thermal, ptr %174, i32 0, i32 0, !dbg !4241
  %175 = load ptr, ptr %device433, align 8, !dbg !4241
  %handle434 = getelementptr inbounds %struct.acpi_device, ptr %175, i32 0, i32 2, !dbg !4241
  %176 = load ptr, ptr %handle434, align 8, !dbg !4241
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.18, ptr noundef %176, ptr noundef @.str.20, ptr noundef @.str.22) #20, !dbg !4241
  br label %if.end435, !dbg !4241

if.end435:                                        ; preds = %if.then432, %do.body428
  br label %do.cond436, !dbg !4244

do.cond436:                                       ; preds = %if.end435
  br label %do.end437, !dbg !4244

do.end437:                                        ; preds = %do.cond436
  br label %if.end438, !dbg !4244

if.end438:                                        ; preds = %do.end437, %if.then414
  br label %if.end439, !dbg !4237

if.end439:                                        ; preds = %if.end438, %lor.lhs.false410
  %177 = load ptr, ptr %tz.addr, align 8, !dbg !4245
  %trips440 = getelementptr inbounds %struct.acpi_thermal, ptr %177, i32 0, i32 6, !dbg !4247
  %active441 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips440, i32 0, i32 3, !dbg !4248
  %178 = load i32, ptr %i, align 4, !dbg !4249
  %idxprom442 = sext i32 %178 to i64, !dbg !4245
  %arrayidx443 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active441, i64 0, i64 %idxprom442, !dbg !4245
  %trip444 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx443, i32 0, i32 0, !dbg !4250
  %valid445 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip444, i32 0, i32 1, !dbg !4251
  %179 = load i8, ptr %valid445, align 8, !dbg !4251, !range !2806, !noundef !421
  %tobool446 = trunc i8 %179 to i1, !dbg !4251
  br i1 %tobool446, label %if.end448, label %if.then447, !dbg !4252

if.then447:                                       ; preds = %if.end439
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4253

if.end448:                                        ; preds = %if.end439
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4254
  br label %cleanup, !dbg !4254

cleanup:                                          ; preds = %if.end448, %if.then447, %if.end330, %if.then299, %if.then295, %if.then263
  call void @llvm.lifetime.end.p0(i64 5, ptr %name) #22, !dbg !4254
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 10, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4255

for.inc:                                          ; preds = %cleanup.cont
  %180 = load i32, ptr %i, align 4, !dbg !4256
  %inc = add i32 %180, 1, !dbg !4256
  store i32 %inc, ptr %i, align 4, !dbg !4256
  br label %for.cond, !dbg !4257, !llvm.loop !4258

for.end:                                          ; preds = %cleanup, %for.cond
  %181 = load i32, ptr %flag.addr, align 4, !dbg !4260
  %conv449 = sext i32 %181 to i64, !dbg !4260
  %and450 = and i64 %conv449, 16, !dbg !4262
  %tobool451 = icmp ne i64 %and450, 0, !dbg !4262
  br i1 %tobool451, label %if.then452, label %if.end474, !dbg !4263

if.then452:                                       ; preds = %for.end
  call void @llvm.memset.p0.i64(ptr align 8 %devices, i8 0, i64 88, i1 false), !dbg !4264
  %182 = load ptr, ptr %tz.addr, align 8, !dbg !4266
  %device453 = getelementptr inbounds %struct.acpi_thermal, ptr %182, i32 0, i32 0, !dbg !4267
  %183 = load ptr, ptr %device453, align 8, !dbg !4267
  %handle454 = getelementptr inbounds %struct.acpi_device, ptr %183, i32 0, i32 2, !dbg !4268
  %184 = load ptr, ptr %handle454, align 8, !dbg !4268
  %call455 = call i32 @acpi_evaluate_reference(ptr noundef %184, ptr noundef @.str.24, ptr noundef null, ptr noundef %devices) #20, !dbg !4269
  store i32 %call455, ptr %status, align 4, !dbg !4270
  %185 = load i32, ptr %status, align 4, !dbg !4271
  %tobool456 = icmp ne i32 %185, 0, !dbg !4271
  br i1 %tobool456, label %if.end473, label %land.lhs.true457, !dbg !4273

land.lhs.true457:                                 ; preds = %if.then452
  %186 = load ptr, ptr %tz.addr, align 8, !dbg !4274
  %devices458 = getelementptr inbounds %struct.acpi_thermal, ptr %186, i32 0, i32 8, !dbg !4275
  %call459 = call i32 @memcmp(ptr noundef %devices458, ptr noundef %devices, i64 noundef 88) #20, !dbg !4276
  %tobool460 = icmp ne i32 %call459, 0, !dbg !4276
  br i1 %tobool460, label %if.then461, label %if.end473, !dbg !4277

if.then461:                                       ; preds = %land.lhs.true457
  %187 = load ptr, ptr %tz.addr, align 8, !dbg !4278
  %devices462 = getelementptr inbounds %struct.acpi_thermal, ptr %187, i32 0, i32 8, !dbg !4280
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %devices462, ptr align 8 %devices, i64 88, i1 false), !dbg !4281
  br label %do.body463, !dbg !4282

do.body463:                                       ; preds = %if.then461
  %188 = load i32, ptr %flag.addr, align 4, !dbg !4283
  %conv464 = sext i32 %188 to i64, !dbg !4283
  %cmp465 = icmp ne i64 %conv464, 31, !dbg !4283
  br i1 %cmp465, label %if.then467, label %if.end470, !dbg !4286

if.then467:                                       ; preds = %do.body463
  %189 = load ptr, ptr %tz.addr, align 8, !dbg !4283
  %device468 = getelementptr inbounds %struct.acpi_thermal, ptr %189, i32 0, i32 0, !dbg !4283
  %190 = load ptr, ptr %device468, align 8, !dbg !4283
  %handle469 = getelementptr inbounds %struct.acpi_device, ptr %190, i32 0, i32 2, !dbg !4283
  %191 = load ptr, ptr %handle469, align 8, !dbg !4283
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.18, ptr noundef %191, ptr noundef @.str.20, ptr noundef @.str.21) #20, !dbg !4283
  br label %if.end470, !dbg !4283

if.end470:                                        ; preds = %if.then467, %do.body463
  br label %do.cond471, !dbg !4286

do.cond471:                                       ; preds = %if.end470
  br label %do.end472, !dbg !4286

do.end472:                                        ; preds = %do.cond471
  br label %if.end473, !dbg !4287

if.end473:                                        ; preds = %do.end472, %land.lhs.true457, %if.then452
  br label %if.end474, !dbg !4288

if.end474:                                        ; preds = %if.end473, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #22, !dbg !4289
  call void @llvm.lifetime.end.p0(i64 1, ptr %valid) #22, !dbg !4289
  call void @llvm.lifetime.end.p0(i64 88, ptr %devices) #22, !dbg !4289
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #22, !dbg !4289
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #22, !dbg !4289
  ret void, !dbg !4289

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @celsius_to_deci_kelvin(i64 noundef %t) #6 align 16 !dbg !4290 {
entry:
  %t.addr = alloca i64, align 8
  %__x = alloca i64, align 8
  %__d = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !4292, metadata !DIExpression()), !dbg !4296
  %0 = load i64, ptr %t.addr, align 8, !dbg !4297
  %mul = mul i64 %0, 1000, !dbg !4298
  %call = call i64 @millicelsius_to_milli_kelvin(i64 noundef %mul) #20, !dbg !4299
  store i64 %call, ptr %t.addr, align 8, !dbg !4300
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #22, !dbg !4301
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !4293, metadata !DIExpression()), !dbg !4301
  %1 = load i64, ptr %t.addr, align 8, !dbg !4301
  store i64 %1, ptr %__x, align 8, !dbg !4301
  call void @llvm.lifetime.start.p0(i64 4, ptr %__d) #22, !dbg !4301
  call void @llvm.dbg.declare(metadata ptr %__d, metadata !4295, metadata !DIExpression()), !dbg !4301
  store i32 100, ptr %__d, align 4, !dbg !4301
  %2 = load i64, ptr %__x, align 8, !dbg !4301
  %cmp = icmp sgt i64 %2, 0, !dbg !4301
  %conv = zext i1 %cmp to i32, !dbg !4301
  %3 = load i32, ptr %__d, align 4, !dbg !4301
  %cmp1 = icmp sgt i32 %3, 0, !dbg !4301
  %conv2 = zext i1 %cmp1 to i32, !dbg !4301
  %cmp3 = icmp eq i32 %conv, %conv2, !dbg !4301
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !4301

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr %__x, align 8, !dbg !4301
  %5 = load i32, ptr %__d, align 4, !dbg !4301
  %div = sdiv i32 %5, 2, !dbg !4301
  %conv5 = sext i32 %div to i64, !dbg !4301
  %add = add i64 %4, %conv5, !dbg !4301
  %6 = load i32, ptr %__d, align 4, !dbg !4301
  %conv6 = sext i32 %6 to i64, !dbg !4301
  %div7 = sdiv i64 %add, %conv6, !dbg !4301
  br label %cond.end, !dbg !4301

cond.false:                                       ; preds = %entry
  %7 = load i64, ptr %__x, align 8, !dbg !4301
  %8 = load i32, ptr %__d, align 4, !dbg !4301
  %div8 = sdiv i32 %8, 2, !dbg !4301
  %conv9 = sext i32 %div8 to i64, !dbg !4301
  %sub = sub i64 %7, %conv9, !dbg !4301
  %9 = load i32, ptr %__d, align 4, !dbg !4301
  %conv10 = sext i32 %9 to i64, !dbg !4301
  %div11 = sdiv i64 %sub, %conv10, !dbg !4301
  br label %cond.end, !dbg !4301

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div7, %cond.true ], [ %div11, %cond.false ], !dbg !4301
  store i64 %cond, ptr %tmp, align 8, !dbg !4301
  call void @llvm.lifetime.end.p0(i64 4, ptr %__d) #22, !dbg !4302
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #22, !dbg !4302
  %10 = load i64, ptr %tmp, align 8, !dbg !4301
  ret i64 %10, !dbg !4303
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4304 dso_local i32 @acpi_evaluate_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4308 dso_local void @acpi_handle_printk(ptr noundef, ptr noundef, ptr noundef, ...) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4312 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @millicelsius_to_milli_kelvin(i64 noundef %t) #6 align 16 !dbg !4315 {
entry:
  %t.addr = alloca i64, align 8
  store i64 %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !4317, metadata !DIExpression()), !dbg !4318
  %0 = load i64, ptr %t.addr, align 8, !dbg !4319
  %sub = sub i64 %0, -273150, !dbg !4320
  ret i64 %sub, !dbg !4321
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #18 align 16 !dbg !4322 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4326, metadata !DIExpression()), !dbg !4329
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4327, metadata !DIExpression()), !dbg !4330
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4328, metadata !DIExpression()), !dbg !4331
  %0 = load i64, ptr %n.addr, align 8, !dbg !4332
  %1 = load i64, ptr %size.addr, align 8, !dbg !4333
  %2 = load i32, ptr %flags.addr, align 4, !dbg !4334
  %or = or i32 %2, 256, !dbg !4335
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #24, !dbg !4336
  ret ptr %call, !dbg !4337
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_thermal_temp(ptr noundef %tz, i32 noundef %temp_deci_k) #2 align 16 !dbg !4338 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  %temp_deci_k.addr = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !4342, metadata !DIExpression()), !dbg !4344
  store i32 %temp_deci_k, ptr %temp_deci_k.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %temp_deci_k.addr, metadata !4343, metadata !DIExpression()), !dbg !4345
  %0 = load i32, ptr %temp_deci_k.addr, align 4, !dbg !4346
  %cmp = icmp eq i32 %0, -274000, !dbg !4348
  br i1 %cmp, label %if.then, label %if.end, !dbg !4349

if.then:                                          ; preds = %entry
  store i32 -274000, ptr %retval, align 4, !dbg !4350
  br label %return, !dbg !4350

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %temp_deci_k.addr, align 4, !dbg !4351
  %conv = sext i32 %1 to i64, !dbg !4351
  %2 = load ptr, ptr %tz.addr, align 8, !dbg !4352
  %kelvin_offset = getelementptr inbounds %struct.acpi_thermal, ptr %2, i32 0, i32 10, !dbg !4353
  %3 = load i32, ptr %kelvin_offset, align 8, !dbg !4353
  %conv1 = sext i32 %3 to i64, !dbg !4352
  %call = call i64 @deci_kelvin_to_millicelsius_with_offset(i64 noundef %conv, i64 noundef %conv1) #20, !dbg !4354
  %conv2 = trunc i64 %call to i32, !dbg !4354
  store i32 %conv2, ptr %retval, align 4, !dbg !4355
  br label %return, !dbg !4355

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !4356
  ret i32 %4, !dbg !4356
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4357 dso_local ptr @thermal_zone_device_register_with_trips(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #6 align 16 !dbg !4362 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4367, metadata !DIExpression()), !dbg !4368
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4369
  %1 = ptrtoint ptr %0 to i64, !dbg !4369
  %2 = inttoptr i64 %1 to ptr, !dbg !4369
  %3 = ptrtoint ptr %2 to i64, !dbg !4369
  %cmp = icmp uge i64 %3, -4095, !dbg !4369
  %lnot = xor i1 %cmp, true, !dbg !4369
  %lnot1 = xor i1 %lnot, true, !dbg !4369
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4369
  %conv = sext i32 %lnot.ext to i64, !dbg !4369
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4369
  %tobool = icmp ne i64 %expval, 0, !dbg !4369
  ret i1 %tobool, !dbg !4370
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #6 align 16 !dbg !4371 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4375, metadata !DIExpression()), !dbg !4376
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4377
  %1 = ptrtoint ptr %0 to i64, !dbg !4378
  ret i64 %1, !dbg !4379
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_thermal_zone_sysfs_add(ptr noundef %tz) #2 align 16 !dbg !4380 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  %tzdev = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !4382, metadata !DIExpression()), !dbg !4385
  call void @llvm.lifetime.start.p0(i64 8, ptr %tzdev) #22, !dbg !4386
  call void @llvm.dbg.declare(metadata ptr %tzdev, metadata !4383, metadata !DIExpression()), !dbg !4387
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !4388
  %thermal_zone = getelementptr inbounds %struct.acpi_thermal, ptr %0, i32 0, i32 9, !dbg !4389
  %1 = load ptr, ptr %thermal_zone, align 8, !dbg !4389
  %call = call ptr @thermal_zone_device(ptr noundef %1) #20, !dbg !4390
  store ptr %call, ptr %tzdev, align 8, !dbg !4387
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #22, !dbg !4391
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4384, metadata !DIExpression()), !dbg !4392
  %2 = load ptr, ptr %tz.addr, align 8, !dbg !4393
  %device = getelementptr inbounds %struct.acpi_thermal, ptr %2, i32 0, i32 0, !dbg !4394
  %3 = load ptr, ptr %device, align 8, !dbg !4394
  %dev = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 18, !dbg !4395
  %kobj = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 0, !dbg !4396
  %4 = load ptr, ptr %tzdev, align 8, !dbg !4397
  %kobj1 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !4398
  %call2 = call i32 @sysfs_create_link(ptr noundef %kobj, ptr noundef %kobj1, ptr noundef @.str.1) #20, !dbg !4399
  store i32 %call2, ptr %ret, align 4, !dbg !4400
  %5 = load i32, ptr %ret, align 4, !dbg !4401
  %tobool = icmp ne i32 %5, 0, !dbg !4401
  br i1 %tobool, label %if.then, label %if.end, !dbg !4403

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %ret, align 4, !dbg !4404
  store i32 %6, ptr %retval, align 4, !dbg !4405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4405

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %tzdev, align 8, !dbg !4406
  %kobj3 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 0, !dbg !4407
  %8 = load ptr, ptr %tz.addr, align 8, !dbg !4408
  %device4 = getelementptr inbounds %struct.acpi_thermal, ptr %8, i32 0, i32 0, !dbg !4409
  %9 = load ptr, ptr %device4, align 8, !dbg !4409
  %dev5 = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 18, !dbg !4410
  %kobj6 = getelementptr inbounds %struct.device, ptr %dev5, i32 0, i32 0, !dbg !4411
  %call7 = call i32 @sysfs_create_link(ptr noundef %kobj3, ptr noundef %kobj6, ptr noundef @.str.21) #20, !dbg !4412
  store i32 %call7, ptr %ret, align 4, !dbg !4413
  %10 = load i32, ptr %ret, align 4, !dbg !4414
  %tobool8 = icmp ne i32 %10, 0, !dbg !4414
  br i1 %tobool8, label %if.then9, label %if.end13, !dbg !4416

if.then9:                                         ; preds = %if.end
  %11 = load ptr, ptr %tz.addr, align 8, !dbg !4417
  %device10 = getelementptr inbounds %struct.acpi_thermal, ptr %11, i32 0, i32 0, !dbg !4418
  %12 = load ptr, ptr %device10, align 8, !dbg !4418
  %dev11 = getelementptr inbounds %struct.acpi_device, ptr %12, i32 0, i32 18, !dbg !4419
  %kobj12 = getelementptr inbounds %struct.device, ptr %dev11, i32 0, i32 0, !dbg !4420
  call void @sysfs_remove_link(ptr noundef %kobj12, ptr noundef @.str.1) #20, !dbg !4421
  br label %if.end13, !dbg !4421

if.end13:                                         ; preds = %if.then9, %if.end
  %13 = load i32, ptr %ret, align 4, !dbg !4422
  store i32 %13, ptr %retval, align 4, !dbg !4423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4423

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #22, !dbg !4424
  call void @llvm.lifetime.end.p0(i64 8, ptr %tzdev) #22, !dbg !4424
  %14 = load i32, ptr %retval, align 4, !dbg !4424
  ret i32 %14, !dbg !4424
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4425 dso_local i32 @thermal_zone_device_enable(ptr noundef) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4426 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4430 dso_local i32 @thermal_zone_device_id(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_thermal_zone_sysfs_remove(ptr noundef %tz) #2 align 16 !dbg !4431 {
entry:
  %tz.addr = alloca ptr, align 8
  %tzdev = alloca ptr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !4433, metadata !DIExpression()), !dbg !4435
  call void @llvm.lifetime.start.p0(i64 8, ptr %tzdev) #22, !dbg !4436
  call void @llvm.dbg.declare(metadata ptr %tzdev, metadata !4434, metadata !DIExpression()), !dbg !4437
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !4438
  %thermal_zone = getelementptr inbounds %struct.acpi_thermal, ptr %0, i32 0, i32 9, !dbg !4439
  %1 = load ptr, ptr %thermal_zone, align 8, !dbg !4439
  %call = call ptr @thermal_zone_device(ptr noundef %1) #20, !dbg !4440
  store ptr %call, ptr %tzdev, align 8, !dbg !4437
  %2 = load ptr, ptr %tz.addr, align 8, !dbg !4441
  %device = getelementptr inbounds %struct.acpi_thermal, ptr %2, i32 0, i32 0, !dbg !4442
  %3 = load ptr, ptr %device, align 8, !dbg !4442
  %dev = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 18, !dbg !4443
  %kobj = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 0, !dbg !4444
  call void @sysfs_remove_link(ptr noundef %kobj, ptr noundef @.str.1) #20, !dbg !4445
  %4 = load ptr, ptr %tzdev, align 8, !dbg !4446
  %kobj1 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !4447
  call void @sysfs_remove_link(ptr noundef %kobj1, ptr noundef @.str.21) #20, !dbg !4448
  call void @llvm.lifetime.end.p0(i64 8, ptr %tzdev) #22, !dbg !4449
  ret void, !dbg !4449
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4450 dso_local void @thermal_zone_device_unregister(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #18 align 16 !dbg !4451 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4453, metadata !DIExpression()), !dbg !4457
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4454, metadata !DIExpression()), !dbg !4458
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4455, metadata !DIExpression()), !dbg !4459
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #22, !dbg !4460
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4456, metadata !DIExpression()), !dbg !4461
  %0 = load i64, ptr %n.addr, align 8, !dbg !4462
  %1 = load i64, ptr %size.addr, align 8, !dbg !4462
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !4462
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4462
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4462
  store i64 %4, ptr %bytes, align 8, !dbg !4462
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #20, !dbg !4462
  %lnot = xor i1 %call, true, !dbg !4462
  %lnot1 = xor i1 %lnot, true, !dbg !4462
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4462
  %conv = sext i32 %lnot.ext to i64, !dbg !4462
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4462
  %tobool = icmp ne i64 %expval, 0, !dbg !4462
  br i1 %tobool, label %if.then, label %if.end, !dbg !4464

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4465
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4465

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !4466
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !4468
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !4469

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !4470
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4471
  br i1 %8, label %if.then2, label %if.end4, !dbg !4472

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !4473
  %10 = load i32, ptr %flags.addr, align 4, !dbg !4474
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #23, !dbg !4475
  store ptr %call3, ptr %retval, align 8, !dbg !4476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4476

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !4477
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4478
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #23, !dbg !4479
  store ptr %call5, ptr %retval, align 8, !dbg !4480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4480

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #22, !dbg !4481
  %13 = load ptr, ptr %retval, align 8, !dbg !4481
  ret ptr %13, !dbg !4481
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #6 align 16 !dbg !4482 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !4487, metadata !DIExpression()), !dbg !4488
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !4489, !range !2806, !noundef !421
  %tobool = trunc i8 %0 to i1, !dbg !4489
  %lnot = xor i1 %tobool, true, !dbg !4489
  %lnot1 = xor i1 %lnot, true, !dbg !4489
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4489
  %conv = sext i32 %lnot.ext to i64, !dbg !4489
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4489
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4489
  ret i1 %tobool2, !dbg !4490
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @deci_kelvin_to_millicelsius_with_offset(i64 noundef %t, i64 noundef %offset) #6 align 16 !dbg !4491 {
entry:
  %t.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  store i64 %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !4495, metadata !DIExpression()), !dbg !4497
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4496, metadata !DIExpression()), !dbg !4498
  %0 = load i64, ptr %t.addr, align 8, !dbg !4499
  %mul = mul i64 %0, 100, !dbg !4500
  %1 = load i64, ptr %offset.addr, align 8, !dbg !4501
  %sub = sub i64 %mul, %1, !dbg !4502
  ret i64 %sub, !dbg !4503
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_thermal_bind_cooling_device(ptr noundef %thermal, ptr noundef %cdev) #2 align 16 !dbg !4504 {
entry:
  %thermal.addr = alloca ptr, align 8
  %cdev.addr = alloca ptr, align 8
  store ptr %thermal, ptr %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thermal.addr, metadata !4506, metadata !DIExpression()), !dbg !4508
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !4507, metadata !DIExpression()), !dbg !4509
  %0 = load ptr, ptr %thermal.addr, align 8, !dbg !4510
  %1 = load ptr, ptr %cdev.addr, align 8, !dbg !4511
  %call = call i32 @acpi_thermal_cooling_device_cb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) #20, !dbg !4512
  ret i32 %call, !dbg !4513
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_thermal_unbind_cooling_device(ptr noundef %thermal, ptr noundef %cdev) #2 align 16 !dbg !4514 {
entry:
  %thermal.addr = alloca ptr, align 8
  %cdev.addr = alloca ptr, align 8
  store ptr %thermal, ptr %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thermal.addr, metadata !4516, metadata !DIExpression()), !dbg !4518
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !4517, metadata !DIExpression()), !dbg !4519
  %0 = load ptr, ptr %thermal.addr, align 8, !dbg !4520
  %1 = load ptr, ptr %cdev.addr, align 8, !dbg !4521
  %call = call i32 @acpi_thermal_cooling_device_cb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false) #20, !dbg !4522
  ret i32 %call, !dbg !4523
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @thermal_get_temp(ptr noundef %thermal, ptr noundef %temp) #2 align 16 !dbg !4524 {
entry:
  %retval = alloca i32, align 4
  %thermal.addr = alloca ptr, align 8
  %temp.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %thermal, ptr %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thermal.addr, metadata !4526, metadata !DIExpression()), !dbg !4530
  store ptr %temp, ptr %temp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %temp.addr, metadata !4527, metadata !DIExpression()), !dbg !4531
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #22, !dbg !4532
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !4528, metadata !DIExpression()), !dbg !4533
  %0 = load ptr, ptr %thermal.addr, align 8, !dbg !4534
  %call = call ptr @thermal_zone_device_priv(ptr noundef %0) #20, !dbg !4535
  store ptr %call, ptr %tz, align 8, !dbg !4533
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #22, !dbg !4536
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4529, metadata !DIExpression()), !dbg !4537
  %1 = load ptr, ptr %tz, align 8, !dbg !4538
  %tobool = icmp ne ptr %1, null, !dbg !4538
  br i1 %tobool, label %if.end, label %if.then, !dbg !4540

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4541

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tz, align 8, !dbg !4542
  %call1 = call i32 @acpi_thermal_get_temperature(ptr noundef %2) #20, !dbg !4543
  store i32 %call1, ptr %result, align 4, !dbg !4544
  %3 = load i32, ptr %result, align 4, !dbg !4545
  %tobool2 = icmp ne i32 %3, 0, !dbg !4545
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4547

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %result, align 4, !dbg !4548
  store i32 %4, ptr %retval, align 4, !dbg !4549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4549

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %tz, align 8, !dbg !4550
  %temperature = getelementptr inbounds %struct.acpi_thermal, ptr %5, i32 0, i32 2, !dbg !4551
  %6 = load i64, ptr %temperature, align 8, !dbg !4551
  %7 = load ptr, ptr %tz, align 8, !dbg !4552
  %kelvin_offset = getelementptr inbounds %struct.acpi_thermal, ptr %7, i32 0, i32 10, !dbg !4553
  %8 = load i32, ptr %kelvin_offset, align 8, !dbg !4553
  %conv = sext i32 %8 to i64, !dbg !4552
  %call5 = call i64 @deci_kelvin_to_millicelsius_with_offset(i64 noundef %6, i64 noundef %conv) #20, !dbg !4554
  %conv6 = trunc i64 %call5 to i32, !dbg !4554
  %9 = load ptr, ptr %temp.addr, align 8, !dbg !4555
  store i32 %conv6, ptr %9, align 4, !dbg !4556
  store i32 0, ptr %retval, align 4, !dbg !4557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4557

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #22, !dbg !4558
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #22, !dbg !4558
  %10 = load i32, ptr %retval, align 4, !dbg !4558
  ret i32 %10, !dbg !4558
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @thermal_get_trend(ptr noundef %thermal, ptr noundef %trip, ptr noundef %trend) #2 align 16 !dbg !4559 {
entry:
  %retval = alloca i32, align 4
  %thermal.addr = alloca ptr, align 8
  %trip.addr = alloca ptr, align 8
  %trend.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %acpi_trip = alloca ptr, align 8
  %t = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %thermal, ptr %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thermal.addr, metadata !4561, metadata !DIExpression()), !dbg !4567
  store ptr %trip, ptr %trip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trip.addr, metadata !4562, metadata !DIExpression()), !dbg !4568
  store ptr %trend, ptr %trend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trend.addr, metadata !4563, metadata !DIExpression()), !dbg !4569
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #22, !dbg !4570
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !4564, metadata !DIExpression()), !dbg !4571
  %0 = load ptr, ptr %thermal.addr, align 8, !dbg !4572
  %call = call ptr @thermal_zone_device_priv(ptr noundef %0) #20, !dbg !4573
  store ptr %call, ptr %tz, align 8, !dbg !4571
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_trip) #22, !dbg !4574
  call void @llvm.dbg.declare(metadata ptr %acpi_trip, metadata !4565, metadata !DIExpression()), !dbg !4575
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #22, !dbg !4576
  call void @llvm.dbg.declare(metadata ptr %t, metadata !4566, metadata !DIExpression()), !dbg !4577
  %1 = load ptr, ptr %tz, align 8, !dbg !4578
  %tobool = icmp ne ptr %1, null, !dbg !4578
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4580

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %trip.addr, align 8, !dbg !4581
  %tobool1 = icmp ne ptr %2, null, !dbg !4581
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4582

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !4583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4583

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %trip.addr, align 8, !dbg !4584
  %priv = getelementptr inbounds %struct.thermal_trip, ptr %3, i32 0, i32 3, !dbg !4585
  %4 = load ptr, ptr %priv, align 8, !dbg !4585
  store ptr %4, ptr %acpi_trip, align 8, !dbg !4586
  %5 = load ptr, ptr %acpi_trip, align 8, !dbg !4587
  %tobool2 = icmp ne ptr %5, null, !dbg !4587
  br i1 %tobool2, label %lor.lhs.false3, label %if.then5, !dbg !4589

lor.lhs.false3:                                   ; preds = %if.end
  %6 = load ptr, ptr %acpi_trip, align 8, !dbg !4590
  %valid = getelementptr inbounds %struct.acpi_thermal_trip, ptr %6, i32 0, i32 1, !dbg !4591
  %7 = load i8, ptr %valid, align 8, !dbg !4591, !range !2806, !noundef !421
  %tobool4 = trunc i8 %7 to i1, !dbg !4591
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4592

if.then5:                                         ; preds = %lor.lhs.false3, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !4593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4593

if.end6:                                          ; preds = %lor.lhs.false3
  %8 = load ptr, ptr %trip.addr, align 8, !dbg !4594
  %type = getelementptr inbounds %struct.thermal_trip, ptr %8, i32 0, i32 2, !dbg !4595
  %9 = load i32, ptr %type, align 8, !dbg !4595
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb21
  ], !dbg !4596

sw.bb:                                            ; preds = %if.end6
  %10 = load ptr, ptr %tz, align 8, !dbg !4597
  %trips = getelementptr inbounds %struct.acpi_thermal, ptr %10, i32 0, i32 6, !dbg !4599
  %passive = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips, i32 0, i32 2, !dbg !4600
  %tc1 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive, i32 0, i32 2, !dbg !4601
  %11 = load i64, ptr %tc1, align 8, !dbg !4601
  %12 = load ptr, ptr %tz, align 8, !dbg !4602
  %temperature = getelementptr inbounds %struct.acpi_thermal, ptr %12, i32 0, i32 2, !dbg !4603
  %13 = load i64, ptr %temperature, align 8, !dbg !4603
  %14 = load ptr, ptr %tz, align 8, !dbg !4604
  %last_temperature = getelementptr inbounds %struct.acpi_thermal, ptr %14, i32 0, i32 3, !dbg !4605
  %15 = load i64, ptr %last_temperature, align 8, !dbg !4605
  %sub = sub i64 %13, %15, !dbg !4606
  %mul = mul i64 %11, %sub, !dbg !4607
  %16 = load ptr, ptr %tz, align 8, !dbg !4608
  %trips7 = getelementptr inbounds %struct.acpi_thermal, ptr %16, i32 0, i32 6, !dbg !4609
  %passive8 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips7, i32 0, i32 2, !dbg !4610
  %tc2 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive8, i32 0, i32 3, !dbg !4611
  %17 = load i64, ptr %tc2, align 8, !dbg !4611
  %18 = load ptr, ptr %tz, align 8, !dbg !4612
  %temperature9 = getelementptr inbounds %struct.acpi_thermal, ptr %18, i32 0, i32 2, !dbg !4613
  %19 = load i64, ptr %temperature9, align 8, !dbg !4613
  %20 = load ptr, ptr %acpi_trip, align 8, !dbg !4614
  %temperature10 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %20, i32 0, i32 0, !dbg !4615
  %21 = load i64, ptr %temperature10, align 8, !dbg !4615
  %sub11 = sub i64 %19, %21, !dbg !4616
  %mul12 = mul i64 %17, %sub11, !dbg !4617
  %add = add i64 %mul, %mul12, !dbg !4618
  %conv = trunc i64 %add to i32, !dbg !4597
  store i32 %conv, ptr %t, align 4, !dbg !4619
  %22 = load i32, ptr %t, align 4, !dbg !4620
  %cmp = icmp sgt i32 %22, 0, !dbg !4622
  br i1 %cmp, label %if.then14, label %if.else, !dbg !4623

if.then14:                                        ; preds = %sw.bb
  %23 = load ptr, ptr %trend.addr, align 8, !dbg !4624
  store i32 1, ptr %23, align 4, !dbg !4625
  br label %if.end20, !dbg !4626

if.else:                                          ; preds = %sw.bb
  %24 = load i32, ptr %t, align 4, !dbg !4627
  %cmp15 = icmp slt i32 %24, 0, !dbg !4629
  br i1 %cmp15, label %if.then17, label %if.else18, !dbg !4630

if.then17:                                        ; preds = %if.else
  %25 = load ptr, ptr %trend.addr, align 8, !dbg !4631
  store i32 2, ptr %25, align 4, !dbg !4632
  br label %if.end19, !dbg !4633

if.else18:                                        ; preds = %if.else
  %26 = load ptr, ptr %trend.addr, align 8, !dbg !4634
  store i32 0, ptr %26, align 4, !dbg !4635
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then17
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then14
  store i32 0, ptr %retval, align 4, !dbg !4636
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4636

sw.bb21:                                          ; preds = %if.end6
  %27 = load ptr, ptr %tz, align 8, !dbg !4637
  %28 = load ptr, ptr %tz, align 8, !dbg !4638
  %temperature22 = getelementptr inbounds %struct.acpi_thermal, ptr %28, i32 0, i32 2, !dbg !4639
  %29 = load i64, ptr %temperature22, align 8, !dbg !4639
  %conv23 = trunc i64 %29 to i32, !dbg !4638
  %call24 = call i32 @acpi_thermal_temp(ptr noundef %27, i32 noundef %conv23) #20, !dbg !4640
  store i32 %call24, ptr %t, align 4, !dbg !4641
  %30 = load i32, ptr %t, align 4, !dbg !4642
  %31 = load ptr, ptr %trip.addr, align 8, !dbg !4644
  %temperature25 = getelementptr inbounds %struct.thermal_trip, ptr %31, i32 0, i32 0, !dbg !4645
  %32 = load i32, ptr %temperature25, align 8, !dbg !4645
  %cmp26 = icmp sle i32 %30, %32, !dbg !4646
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !4647

if.then28:                                        ; preds = %sw.bb21
  br label %sw.epilog, !dbg !4648

if.end29:                                         ; preds = %sw.bb21
  %33 = load ptr, ptr %trend.addr, align 8, !dbg !4649
  store i32 1, ptr %33, align 4, !dbg !4650
  store i32 0, ptr %retval, align 4, !dbg !4651
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4651

sw.default:                                       ; preds = %if.end6
  br label %sw.epilog, !dbg !4652

sw.epilog:                                        ; preds = %sw.default, %if.then28
  store i32 -22, ptr %retval, align 4, !dbg !4653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4653

cleanup:                                          ; preds = %sw.epilog, %if.end29, %if.end20, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #22, !dbg !4654
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_trip) #22, !dbg !4654
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #22, !dbg !4654
  %34 = load i32, ptr %retval, align 4, !dbg !4654
  ret i32 %34, !dbg !4654
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_thermal_zone_device_hot(ptr noundef %thermal) #2 align 16 !dbg !4655 {
entry:
  %thermal.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  store ptr %thermal, ptr %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thermal.addr, metadata !4657, metadata !DIExpression()), !dbg !4659
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #22, !dbg !4660
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !4658, metadata !DIExpression()), !dbg !4661
  %0 = load ptr, ptr %thermal.addr, align 8, !dbg !4662
  %call = call ptr @thermal_zone_device_priv(ptr noundef %0) #20, !dbg !4663
  store ptr %call, ptr %tz, align 8, !dbg !4661
  %1 = load ptr, ptr %tz, align 8, !dbg !4664
  %device = getelementptr inbounds %struct.acpi_thermal, ptr %1, i32 0, i32 0, !dbg !4665
  %2 = load ptr, ptr %device, align 8, !dbg !4665
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 8, !dbg !4666
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 7, !dbg !4667
  %arraydecay = getelementptr inbounds [20 x i8], ptr %device_class, i64 0, i64 0, !dbg !4664
  %3 = load ptr, ptr %tz, align 8, !dbg !4668
  %device1 = getelementptr inbounds %struct.acpi_thermal, ptr %3, i32 0, i32 0, !dbg !4669
  %4 = load ptr, ptr %device1, align 8, !dbg !4669
  %dev = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 18, !dbg !4670
  %call2 = call ptr @dev_name(ptr noundef %dev) #20, !dbg !4671
  %call3 = call i32 @acpi_bus_generate_netlink_event(ptr noundef %arraydecay, ptr noundef %call2, i8 noundef zeroext -15, i32 noundef 1) #20, !dbg !4672
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #22, !dbg !4673
  ret void, !dbg !4673
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_thermal_zone_device_critical(ptr noundef %thermal) #2 align 16 !dbg !4674 {
entry:
  %thermal.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  store ptr %thermal, ptr %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thermal.addr, metadata !4676, metadata !DIExpression()), !dbg !4678
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #22, !dbg !4679
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !4677, metadata !DIExpression()), !dbg !4680
  %0 = load ptr, ptr %thermal.addr, align 8, !dbg !4681
  %call = call ptr @thermal_zone_device_priv(ptr noundef %0) #20, !dbg !4682
  store ptr %call, ptr %tz, align 8, !dbg !4680
  %1 = load ptr, ptr %tz, align 8, !dbg !4683
  %device = getelementptr inbounds %struct.acpi_thermal, ptr %1, i32 0, i32 0, !dbg !4684
  %2 = load ptr, ptr %device, align 8, !dbg !4684
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 8, !dbg !4685
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 7, !dbg !4686
  %arraydecay = getelementptr inbounds [20 x i8], ptr %device_class, i64 0, i64 0, !dbg !4683
  %3 = load ptr, ptr %tz, align 8, !dbg !4687
  %device1 = getelementptr inbounds %struct.acpi_thermal, ptr %3, i32 0, i32 0, !dbg !4688
  %4 = load ptr, ptr %device1, align 8, !dbg !4688
  %dev = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 18, !dbg !4689
  %call2 = call ptr @dev_name(ptr noundef %dev) #20, !dbg !4690
  %call3 = call i32 @acpi_bus_generate_netlink_event(ptr noundef %arraydecay, ptr noundef %call2, i8 noundef zeroext -16, i32 noundef 1) #20, !dbg !4691
  %5 = load ptr, ptr %thermal.addr, align 8, !dbg !4692
  call void @thermal_zone_device_critical(ptr noundef %5) #20, !dbg !4693
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #22, !dbg !4694
  ret void, !dbg !4694
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_thermal_cooling_device_cb(ptr noundef %thermal, ptr noundef %cdev, i1 noundef zeroext %bind) #2 align 16 !dbg !4695 {
entry:
  %thermal.addr = alloca ptr, align 8
  %cdev.addr = alloca ptr, align 8
  %bind.addr = alloca i8, align 1
  %device = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %trip = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %thermal, ptr %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thermal.addr, metadata !4699, metadata !DIExpression()), !dbg !4711
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !4700, metadata !DIExpression()), !dbg !4712
  %frombool = zext i1 %bind to i8
  store i8 %frombool, ptr %bind.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bind.addr, metadata !4701, metadata !DIExpression()), !dbg !4713
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #22, !dbg !4714
  call void @llvm.dbg.declare(metadata ptr %device, metadata !4702, metadata !DIExpression()), !dbg !4715
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !4716
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 5, !dbg !4717
  %1 = load ptr, ptr %devdata, align 8, !dbg !4717
  store ptr %1, ptr %device, align 8, !dbg !4715
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #22, !dbg !4718
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !4703, metadata !DIExpression()), !dbg !4719
  %2 = load ptr, ptr %thermal.addr, align 8, !dbg !4720
  %call = call ptr @thermal_zone_device_priv(ptr noundef %2) #20, !dbg !4721
  store ptr %call, ptr %tz, align 8, !dbg !4719
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #22, !dbg !4722
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4704, metadata !DIExpression()), !dbg !4723
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #22, !dbg !4724
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !4705, metadata !DIExpression()), !dbg !4725
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #22, !dbg !4726
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4706, metadata !DIExpression()), !dbg !4727
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #22, !dbg !4728
  call void @llvm.dbg.declare(metadata ptr %j, metadata !4707, metadata !DIExpression()), !dbg !4729
  call void @llvm.lifetime.start.p0(i64 4, ptr %trip) #22, !dbg !4730
  call void @llvm.dbg.declare(metadata ptr %trip, metadata !4708, metadata !DIExpression()), !dbg !4731
  store i32 -1, ptr %trip, align 4, !dbg !4731
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #22, !dbg !4732
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4709, metadata !DIExpression()), !dbg !4733
  store i32 0, ptr %result, align 4, !dbg !4733
  %3 = load ptr, ptr %tz, align 8, !dbg !4734
  %trips = getelementptr inbounds %struct.acpi_thermal, ptr %3, i32 0, i32 6, !dbg !4736
  %critical = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips, i32 0, i32 0, !dbg !4737
  %valid = getelementptr inbounds %struct.acpi_thermal_trip, ptr %critical, i32 0, i32 1, !dbg !4738
  %4 = load i8, ptr %valid, align 8, !dbg !4738, !range !2806, !noundef !421
  %tobool = trunc i8 %4 to i1, !dbg !4738
  br i1 %tobool, label %if.then, label %if.end, !dbg !4739

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %trip, align 4, !dbg !4740
  %inc = add i32 %5, 1, !dbg !4740
  store i32 %inc, ptr %trip, align 4, !dbg !4740
  br label %if.end, !dbg !4741

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %tz, align 8, !dbg !4742
  %trips1 = getelementptr inbounds %struct.acpi_thermal, ptr %6, i32 0, i32 6, !dbg !4744
  %hot = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips1, i32 0, i32 1, !dbg !4745
  %valid2 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %hot, i32 0, i32 1, !dbg !4746
  %7 = load i8, ptr %valid2, align 8, !dbg !4746, !range !2806, !noundef !421
  %tobool3 = trunc i8 %7 to i1, !dbg !4746
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !4747

if.then4:                                         ; preds = %if.end
  %8 = load i32, ptr %trip, align 4, !dbg !4748
  %inc5 = add i32 %8, 1, !dbg !4748
  store i32 %inc5, ptr %trip, align 4, !dbg !4748
  br label %if.end6, !dbg !4749

if.end6:                                          ; preds = %if.then4, %if.end
  %9 = load ptr, ptr %tz, align 8, !dbg !4750
  %trips7 = getelementptr inbounds %struct.acpi_thermal, ptr %9, i32 0, i32 6, !dbg !4752
  %passive = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips7, i32 0, i32 2, !dbg !4753
  %trip8 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive, i32 0, i32 0, !dbg !4754
  %valid9 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip8, i32 0, i32 1, !dbg !4755
  %10 = load i8, ptr %valid9, align 8, !dbg !4755, !range !2806, !noundef !421
  %tobool10 = trunc i8 %10 to i1, !dbg !4755
  br i1 %tobool10, label %if.then11, label %if.end31, !dbg !4756

if.then11:                                        ; preds = %if.end6
  %11 = load i32, ptr %trip, align 4, !dbg !4757
  %inc12 = add i32 %11, 1, !dbg !4757
  store i32 %inc12, ptr %trip, align 4, !dbg !4757
  store i32 0, ptr %i, align 4, !dbg !4759
  br label %for.cond, !dbg !4761

for.cond:                                         ; preds = %for.inc, %if.then11
  %12 = load i32, ptr %i, align 4, !dbg !4762
  %13 = load ptr, ptr %tz, align 8, !dbg !4764
  %trips13 = getelementptr inbounds %struct.acpi_thermal, ptr %13, i32 0, i32 6, !dbg !4765
  %passive14 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips13, i32 0, i32 2, !dbg !4766
  %devices = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive14, i32 0, i32 1, !dbg !4767
  %count = getelementptr inbounds %struct.acpi_handle_list, ptr %devices, i32 0, i32 0, !dbg !4768
  %14 = load i32, ptr %count, align 8, !dbg !4768
  %cmp = icmp ult i32 %12, %14, !dbg !4769
  br i1 %cmp, label %for.body, label %for.end, !dbg !4770

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %tz, align 8, !dbg !4771
  %trips15 = getelementptr inbounds %struct.acpi_thermal, ptr %15, i32 0, i32 6, !dbg !4773
  %passive16 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips15, i32 0, i32 2, !dbg !4774
  %devices17 = getelementptr inbounds %struct.acpi_thermal_passive, ptr %passive16, i32 0, i32 1, !dbg !4775
  %handles = getelementptr inbounds %struct.acpi_handle_list, ptr %devices17, i32 0, i32 1, !dbg !4776
  %16 = load i32, ptr %i, align 4, !dbg !4777
  %idxprom = sext i32 %16 to i64, !dbg !4771
  %arrayidx = getelementptr [10 x ptr], ptr %handles, i64 0, i64 %idxprom, !dbg !4771
  %17 = load ptr, ptr %arrayidx, align 8, !dbg !4771
  store ptr %17, ptr %handle, align 8, !dbg !4778
  %18 = load ptr, ptr %handle, align 8, !dbg !4779
  %call18 = call ptr @acpi_fetch_acpi_dev(ptr noundef %18) #20, !dbg !4780
  store ptr %call18, ptr %dev, align 8, !dbg !4781
  %19 = load ptr, ptr %dev, align 8, !dbg !4782
  %20 = load ptr, ptr %device, align 8, !dbg !4784
  %cmp19 = icmp ne ptr %19, %20, !dbg !4785
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !4786

if.then20:                                        ; preds = %for.body
  br label %for.inc, !dbg !4787

if.end21:                                         ; preds = %for.body
  %21 = load i8, ptr %bind.addr, align 1, !dbg !4788, !range !2806, !noundef !421
  %tobool22 = trunc i8 %21 to i1, !dbg !4788
  br i1 %tobool22, label %if.then23, label %if.else, !dbg !4790

if.then23:                                        ; preds = %if.end21
  %22 = load ptr, ptr %thermal.addr, align 8, !dbg !4791
  %23 = load i32, ptr %trip, align 4, !dbg !4792
  %24 = load ptr, ptr %cdev.addr, align 8, !dbg !4793
  %call24 = call i32 @thermal_zone_bind_cooling_device(ptr noundef %22, i32 noundef %23, ptr noundef %24, i64 noundef 4294967295, i64 noundef 4294967295, i32 noundef 0) #20, !dbg !4794
  store i32 %call24, ptr %result, align 4, !dbg !4795
  br label %if.end26, !dbg !4796

if.else:                                          ; preds = %if.end21
  %25 = load ptr, ptr %thermal.addr, align 8, !dbg !4797
  %26 = load i32, ptr %trip, align 4, !dbg !4798
  %27 = load ptr, ptr %cdev.addr, align 8, !dbg !4799
  %call25 = call i32 @thermal_zone_unbind_cooling_device(ptr noundef %25, i32 noundef %26, ptr noundef %27) #20, !dbg !4800
  store i32 %call25, ptr %result, align 4, !dbg !4801
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23
  %28 = load i32, ptr %result, align 4, !dbg !4802
  %tobool27 = icmp ne i32 %28, 0, !dbg !4802
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !4804

if.then28:                                        ; preds = %if.end26
  br label %failed, !dbg !4805

if.end29:                                         ; preds = %if.end26
  br label %for.inc, !dbg !4806

for.inc:                                          ; preds = %if.end29, %if.then20
  %29 = load i32, ptr %i, align 4, !dbg !4807
  %inc30 = add i32 %29, 1, !dbg !4807
  store i32 %inc30, ptr %i, align 4, !dbg !4807
  br label %for.cond, !dbg !4808, !llvm.loop !4809

for.end:                                          ; preds = %for.cond
  br label %if.end31, !dbg !4811

if.end31:                                         ; preds = %for.end, %if.end6
  store i32 0, ptr %i, align 4, !dbg !4812
  br label %for.cond32, !dbg !4814

for.cond32:                                       ; preds = %for.inc77, %if.end31
  %30 = load i32, ptr %i, align 4, !dbg !4815
  %cmp33 = icmp slt i32 %30, 10, !dbg !4817
  br i1 %cmp33, label %for.body34, label %for.end79, !dbg !4818

for.body34:                                       ; preds = %for.cond32
  %31 = load ptr, ptr %tz, align 8, !dbg !4819
  %trips35 = getelementptr inbounds %struct.acpi_thermal, ptr %31, i32 0, i32 6, !dbg !4822
  %active = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips35, i32 0, i32 3, !dbg !4823
  %32 = load i32, ptr %i, align 4, !dbg !4824
  %idxprom36 = sext i32 %32 to i64, !dbg !4819
  %arrayidx37 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active, i64 0, i64 %idxprom36, !dbg !4819
  %trip38 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx37, i32 0, i32 0, !dbg !4825
  %valid39 = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip38, i32 0, i32 1, !dbg !4826
  %33 = load i8, ptr %valid39, align 8, !dbg !4826, !range !2806, !noundef !421
  %tobool40 = trunc i8 %33 to i1, !dbg !4826
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !4827

if.then41:                                        ; preds = %for.body34
  br label %for.end79, !dbg !4828

if.end42:                                         ; preds = %for.body34
  %34 = load i32, ptr %trip, align 4, !dbg !4829
  %inc43 = add i32 %34, 1, !dbg !4829
  store i32 %inc43, ptr %trip, align 4, !dbg !4829
  store i32 0, ptr %j, align 4, !dbg !4830
  br label %for.cond44, !dbg !4832

for.cond44:                                       ; preds = %for.inc74, %if.end42
  %35 = load i32, ptr %j, align 4, !dbg !4833
  %36 = load ptr, ptr %tz, align 8, !dbg !4835
  %trips45 = getelementptr inbounds %struct.acpi_thermal, ptr %36, i32 0, i32 6, !dbg !4836
  %active46 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips45, i32 0, i32 3, !dbg !4837
  %37 = load i32, ptr %i, align 4, !dbg !4838
  %idxprom47 = sext i32 %37 to i64, !dbg !4835
  %arrayidx48 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active46, i64 0, i64 %idxprom47, !dbg !4835
  %devices49 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx48, i32 0, i32 1, !dbg !4839
  %count50 = getelementptr inbounds %struct.acpi_handle_list, ptr %devices49, i32 0, i32 0, !dbg !4840
  %38 = load i32, ptr %count50, align 8, !dbg !4840
  %cmp51 = icmp ult i32 %35, %38, !dbg !4841
  br i1 %cmp51, label %for.body52, label %for.end76, !dbg !4842

for.body52:                                       ; preds = %for.cond44
  %39 = load ptr, ptr %tz, align 8, !dbg !4843
  %trips53 = getelementptr inbounds %struct.acpi_thermal, ptr %39, i32 0, i32 6, !dbg !4845
  %active54 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips53, i32 0, i32 3, !dbg !4846
  %40 = load i32, ptr %i, align 4, !dbg !4847
  %idxprom55 = sext i32 %40 to i64, !dbg !4843
  %arrayidx56 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active54, i64 0, i64 %idxprom55, !dbg !4843
  %devices57 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx56, i32 0, i32 1, !dbg !4848
  %handles58 = getelementptr inbounds %struct.acpi_handle_list, ptr %devices57, i32 0, i32 1, !dbg !4849
  %41 = load i32, ptr %j, align 4, !dbg !4850
  %idxprom59 = sext i32 %41 to i64, !dbg !4843
  %arrayidx60 = getelementptr [10 x ptr], ptr %handles58, i64 0, i64 %idxprom59, !dbg !4843
  %42 = load ptr, ptr %arrayidx60, align 8, !dbg !4843
  store ptr %42, ptr %handle, align 8, !dbg !4851
  %43 = load ptr, ptr %handle, align 8, !dbg !4852
  %call61 = call ptr @acpi_fetch_acpi_dev(ptr noundef %43) #20, !dbg !4853
  store ptr %call61, ptr %dev, align 8, !dbg !4854
  %44 = load ptr, ptr %dev, align 8, !dbg !4855
  %45 = load ptr, ptr %device, align 8, !dbg !4857
  %cmp62 = icmp ne ptr %44, %45, !dbg !4858
  br i1 %cmp62, label %if.then63, label %if.end64, !dbg !4859

if.then63:                                        ; preds = %for.body52
  br label %for.inc74, !dbg !4860

if.end64:                                         ; preds = %for.body52
  %46 = load i8, ptr %bind.addr, align 1, !dbg !4861, !range !2806, !noundef !421
  %tobool65 = trunc i8 %46 to i1, !dbg !4861
  br i1 %tobool65, label %if.then66, label %if.else68, !dbg !4863

if.then66:                                        ; preds = %if.end64
  %47 = load ptr, ptr %thermal.addr, align 8, !dbg !4864
  %48 = load i32, ptr %trip, align 4, !dbg !4865
  %49 = load ptr, ptr %cdev.addr, align 8, !dbg !4866
  %call67 = call i32 @thermal_zone_bind_cooling_device(ptr noundef %47, i32 noundef %48, ptr noundef %49, i64 noundef 4294967295, i64 noundef 4294967295, i32 noundef 0) #20, !dbg !4867
  store i32 %call67, ptr %result, align 4, !dbg !4868
  br label %if.end70, !dbg !4869

if.else68:                                        ; preds = %if.end64
  %50 = load ptr, ptr %thermal.addr, align 8, !dbg !4870
  %51 = load i32, ptr %trip, align 4, !dbg !4871
  %52 = load ptr, ptr %cdev.addr, align 8, !dbg !4872
  %call69 = call i32 @thermal_zone_unbind_cooling_device(ptr noundef %50, i32 noundef %51, ptr noundef %52) #20, !dbg !4873
  store i32 %call69, ptr %result, align 4, !dbg !4874
  br label %if.end70

if.end70:                                         ; preds = %if.else68, %if.then66
  %53 = load i32, ptr %result, align 4, !dbg !4875
  %tobool71 = icmp ne i32 %53, 0, !dbg !4875
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !4877

if.then72:                                        ; preds = %if.end70
  br label %failed, !dbg !4878

if.end73:                                         ; preds = %if.end70
  br label %for.inc74, !dbg !4879

for.inc74:                                        ; preds = %if.end73, %if.then63
  %54 = load i32, ptr %j, align 4, !dbg !4880
  %inc75 = add i32 %54, 1, !dbg !4880
  store i32 %inc75, ptr %j, align 4, !dbg !4880
  br label %for.cond44, !dbg !4881, !llvm.loop !4882

for.end76:                                        ; preds = %for.cond44
  br label %for.inc77, !dbg !4884

for.inc77:                                        ; preds = %for.end76
  %55 = load i32, ptr %i, align 4, !dbg !4885
  %inc78 = add i32 %55, 1, !dbg !4885
  store i32 %inc78, ptr %i, align 4, !dbg !4885
  br label %for.cond32, !dbg !4886, !llvm.loop !4887

for.end79:                                        ; preds = %if.then41, %for.cond32
  br label %failed, !dbg !4888

failed:                                           ; preds = %for.end79, %if.then72, %if.then28
  call void @llvm.dbg.label(metadata !4710), !dbg !4889
  %56 = load i32, ptr %result, align 4, !dbg !4890
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #22, !dbg !4891
  call void @llvm.lifetime.end.p0(i64 4, ptr %trip) #22, !dbg !4891
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #22, !dbg !4891
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #22, !dbg !4891
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #22, !dbg !4891
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #22, !dbg !4891
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #22, !dbg !4891
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #22, !dbg !4891
  ret i32 %56, !dbg !4892
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4893 dso_local ptr @thermal_zone_device_priv(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4896 dso_local ptr @acpi_fetch_acpi_dev(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4899 dso_local i32 @thermal_zone_bind_cooling_device(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4902 dso_local i32 @thermal_zone_unbind_cooling_device(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4905 dso_local i32 @acpi_bus_generate_netlink_event(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #6 align 16 !dbg !4908 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4912, metadata !DIExpression()), !dbg !4913
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4914
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !4916
  %1 = load ptr, ptr %init_name, align 8, !dbg !4916
  %tobool = icmp ne ptr %1, null, !dbg !4914
  br i1 %tobool, label %if.then, label %if.end, !dbg !4917

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4918
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !4919
  %3 = load ptr, ptr %init_name1, align 8, !dbg !4919
  store ptr %3, ptr %retval, align 8, !dbg !4920
  br label %return, !dbg !4920

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !4921
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !4922
  %call = call ptr @kobject_name(ptr noundef %kobj) #20, !dbg !4923
  store ptr %call, ptr %retval, align 8, !dbg !4924
  br label %return, !dbg !4924

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !4925
  ret ptr %5, !dbg !4925
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #6 align 16 !dbg !4926 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4928, metadata !DIExpression()), !dbg !4929
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4930
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !4931
  %1 = load ptr, ptr %name, align 8, !dbg !4931
  ret ptr %1, !dbg !4932
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4933 dso_local void @thermal_zone_device_critical(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4934 dso_local ptr @thermal_zone_device(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4937 dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4940 dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #13 align 16 !dbg !4943 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4949, metadata !DIExpression()), !dbg !4951
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4950, metadata !DIExpression()), !dbg !4952
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4953
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #20, !dbg !4954
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4955
  %2 = load i32, ptr %i.addr, align 4, !dbg !4956
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #20, !dbg !4957
  ret void, !dbg !4958
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #13 align 16 !dbg !4959 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4967, metadata !DIExpression()), !dbg !4969
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4968, metadata !DIExpression()), !dbg !4970
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4971
  %1 = load i64, ptr %size.addr, align 8, !dbg !4972
  %conv = trunc i64 %1 to i32, !dbg !4972
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #20, !dbg !4973
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4974
  %3 = load i64, ptr %size.addr, align 8, !dbg !4974
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #20, !dbg !4974
  ret void, !dbg !4975
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #13 align 16 !dbg !4976 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4979, metadata !DIExpression()), !dbg !4981
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4980, metadata !DIExpression()), !dbg !4982
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4983
  %1 = load i32, ptr %i.addr, align 4, !dbg !4984
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #20, !dbg !4985
  ret void, !dbg !4986
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !4987 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4992, metadata !DIExpression()), !dbg !4994
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4993, metadata !DIExpression()), !dbg !4995
  ret i1 true, !dbg !4996
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !4997 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5002, metadata !DIExpression()), !dbg !5005
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5003, metadata !DIExpression()), !dbg !5006
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5004, metadata !DIExpression()), !dbg !5007
  ret void, !dbg !5008
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #13 align 16 !dbg !5009 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5012, metadata !DIExpression()), !dbg !5014
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5013, metadata !DIExpression()), !dbg !5015
  br label %do.body, !dbg !5016

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !5017
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5017
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !5017
  store volatile i32 %0, ptr %counter, align 4, !dbg !5017
  br label %do.end, !dbg !5017

do.end:                                           ; preds = %do.body
  ret void, !dbg !5019
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5020 dso_local zeroext i1 @refcount_dec_not_one(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5023 dso_local void @mutex_lock(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5026 dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #6 align 16 !dbg !5029 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5033, metadata !DIExpression()), !dbg !5034
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5035
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #20, !dbg !5036
  ret void, !dbg !5037
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5038 dso_local void @mutex_unlock(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #6 align 16 !dbg !5039 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5043, metadata !DIExpression()), !dbg !5045
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5044, metadata !DIExpression()), !dbg !5046
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5047
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5048
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #20, !dbg !5049
  ret void, !dbg !5050
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #6 align 16 !dbg !5051 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5055, metadata !DIExpression()), !dbg !5059
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5056, metadata !DIExpression()), !dbg !5060
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5057, metadata !DIExpression()), !dbg !5061
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #22, !dbg !5062
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5058, metadata !DIExpression()), !dbg !5063
  %0 = load i32, ptr %i.addr, align 4, !dbg !5064
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5065
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5066
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #20, !dbg !5067
  store i32 %call, ptr %old, align 4, !dbg !5063
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5068
  %tobool = icmp ne ptr %2, null, !dbg !5068
  br i1 %tobool, label %if.then, label %if.end, !dbg !5070

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5071
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5072
  store i32 %3, ptr %4, align 4, !dbg !5073
  br label %if.end, !dbg !5074

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5075
  %tobool1 = icmp ne i32 %5, 0, !dbg !5075
  %lnot = xor i1 %tobool1, true, !dbg !5075
  %lnot2 = xor i1 %lnot, true, !dbg !5075
  %lnot3 = xor i1 %lnot2, true, !dbg !5075
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5075
  %conv = sext i32 %lnot.ext to i64, !dbg !5075
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5075
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5075
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5077

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !5078
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #20, !dbg !5079
  br label %if.end18, !dbg !5079

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5080
  %cmp = icmp slt i32 %7, 0, !dbg !5080
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5080

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !5080
  %9 = load i32, ptr %i.addr, align 4, !dbg !5080
  %add = add i32 %8, %9, !dbg !5080
  %cmp7 = icmp slt i32 %add, 0, !dbg !5080
  br label %lor.end, !dbg !5080

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !5080
  %lnot11 = xor i1 %lnot9, true, !dbg !5080
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5080
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5080
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5080
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !5080
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5082

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5083
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #20, !dbg !5084
  br label %if.end17, !dbg !5084

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #22, !dbg !5085
  ret void, !dbg !5085
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #13 align 16 !dbg !5086 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5090, metadata !DIExpression()), !dbg !5092
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5091, metadata !DIExpression()), !dbg !5093
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5094
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #20, !dbg !5095
  %1 = load i32, ptr %i.addr, align 4, !dbg !5096
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5097
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #20, !dbg !5098
  ret i32 %call, !dbg !5099
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5100 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #13 align 16 !dbg !5103 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5105, metadata !DIExpression()), !dbg !5107
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5106, metadata !DIExpression()), !dbg !5108
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5109
  %1 = load i64, ptr %size.addr, align 8, !dbg !5110
  %conv = trunc i64 %1 to i32, !dbg !5110
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #20, !dbg !5111
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5112
  %3 = load i64, ptr %size.addr, align 8, !dbg !5112
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #20, !dbg !5112
  ret void, !dbg !5113
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #13 align 16 !dbg !5114 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5116, metadata !DIExpression()), !dbg !5118
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5117, metadata !DIExpression()), !dbg !5119
  %0 = load i32, ptr %i.addr, align 4, !dbg !5120
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5121
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #20, !dbg !5122
  ret i32 %call, !dbg !5123
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #13 align 16 !dbg !5124 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5126, metadata !DIExpression()), !dbg !5130
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5127, metadata !DIExpression()), !dbg !5131
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #22, !dbg !5132
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5128, metadata !DIExpression()), !dbg !5132
  %0 = load i32, ptr %i.addr, align 4, !dbg !5132
  store i32 %0, ptr %__ret, align 4, !dbg !5132
  %1 = load i32, ptr %__ret, align 4, !dbg !5132
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5132
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5132
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #22, !dbg !5132, !srcloc !5133
  store i32 %3, ptr %__ret, align 4, !dbg !5132
  %4 = load i32, ptr %__ret, align 4, !dbg !5132
  store i32 %4, ptr %tmp, align 4, !dbg !5132
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #22, !dbg !5134
  %5 = load i32, ptr %tmp, align 4, !dbg !5132
  ret i32 %5, !dbg !5135
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @milli_kelvin_to_millicelsius(i64 noundef %t) #6 align 16 !dbg !5136 {
entry:
  %t.addr = alloca i64, align 8
  store i64 %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !5138, metadata !DIExpression()), !dbg !5139
  %0 = load i64, ptr %t.addr, align 8, !dbg !5140
  %add = add i64 %0, -273150, !dbg !5141
  ret i64 %add, !dbg !5142
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_driver_data(ptr noundef %d) #6 align 16 !dbg !5143 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5147, metadata !DIExpression()), !dbg !5148
  %0 = load ptr, ptr %d.addr, align 8, !dbg !5149
  %driver_data = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 17, !dbg !5150
  %1 = load ptr, ptr %driver_data, align 8, !dbg !5150
  ret ptr %1, !dbg !5151
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_queue_thermal_check(ptr noundef %tz) #2 align 16 !dbg !5152 {
entry:
  %tz.addr = alloca ptr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !5156
  %thermal_check_work = getelementptr inbounds %struct.acpi_thermal, ptr %0, i32 0, i32 11, !dbg !5156
  %data = getelementptr inbounds %struct.work_struct, ptr %thermal_check_work, i32 0, i32 0, !dbg !5156
  %1 = ptrtoint ptr %data to i64, !dbg !5156
  %cmp = icmp ne i64 %1, 0, !dbg !5156
  %conv = zext i1 %cmp to i32, !dbg !5156
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5156
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !5156

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %tz.addr, align 8, !dbg !5156
  %thermal_check_work1 = getelementptr inbounds %struct.acpi_thermal, ptr %3, i32 0, i32 11, !dbg !5156
  %data2 = getelementptr inbounds %struct.work_struct, ptr %thermal_check_work1, i32 0, i32 0, !dbg !5156
  %4 = ptrtoint ptr %data2 to i64, !dbg !5156
  %cmp3 = icmp ne i64 %4, 0, !dbg !5156
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !5156

land.lhs.true5:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !5156
  %thermal_check_work6 = getelementptr inbounds %struct.acpi_thermal, ptr %5, i32 0, i32 11, !dbg !5156
  %data7 = getelementptr inbounds %struct.work_struct, ptr %thermal_check_work6, i32 0, i32 0, !dbg !5156
  %6 = load i64, ptr %data7, align 8, !dbg !5156
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5156
  br i1 %7, label %cond.true, label %cond.false, !dbg !5158

cond.true:                                        ; preds = %land.lhs.true5
  %8 = load ptr, ptr %tz.addr, align 8, !dbg !5156
  %thermal_check_work8 = getelementptr inbounds %struct.acpi_thermal, ptr %8, i32 0, i32 11, !dbg !5156
  %data9 = getelementptr inbounds %struct.work_struct, ptr %thermal_check_work8, i32 0, i32 0, !dbg !5156
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %data9) #20, !dbg !5156
  br i1 %call, label %if.end, label %if.then, !dbg !5156

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true, %entry
  %9 = load ptr, ptr %tz.addr, align 8, !dbg !5156
  %thermal_check_work11 = getelementptr inbounds %struct.acpi_thermal, ptr %9, i32 0, i32 11, !dbg !5156
  %data12 = getelementptr inbounds %struct.work_struct, ptr %thermal_check_work11, i32 0, i32 0, !dbg !5156
  %call13 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %data12) #20, !dbg !5156
  br i1 %call13, label %if.end, label %if.then, !dbg !5158

if.then:                                          ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr @acpi_thermal_pm_queue, align 8, !dbg !5159
  %11 = load ptr, ptr %tz.addr, align 8, !dbg !5160
  %thermal_check_work15 = getelementptr inbounds %struct.acpi_thermal, ptr %11, i32 0, i32 11, !dbg !5161
  %call16 = call zeroext i1 @queue_work(ptr noundef %10, ptr noundef %thermal_check_work15) #20, !dbg !5162
  br label %if.end, !dbg !5162

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  ret void, !dbg !5163
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_thermal_trips_update(ptr noundef %tz, i32 noundef %event) #2 align 16 !dbg !5164 {
entry:
  %tz.addr = alloca ptr, align 8
  %event.addr = alloca i32, align 4
  %adev = alloca ptr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !5168, metadata !DIExpression()), !dbg !5171
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !5169, metadata !DIExpression()), !dbg !5172
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #22, !dbg !5173
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !5170, metadata !DIExpression()), !dbg !5174
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !5175
  %device = getelementptr inbounds %struct.acpi_thermal, ptr %0, i32 0, i32 0, !dbg !5176
  %1 = load ptr, ptr %device, align 8, !dbg !5176
  store ptr %1, ptr %adev, align 8, !dbg !5174
  %2 = load ptr, ptr %tz.addr, align 8, !dbg !5177
  %thermal_zone = getelementptr inbounds %struct.acpi_thermal, ptr %2, i32 0, i32 9, !dbg !5178
  %3 = load ptr, ptr %thermal_zone, align 8, !dbg !5178
  %4 = load i32, ptr %event.addr, align 4, !dbg !5179
  %conv = zext i32 %4 to i64, !dbg !5179
  call void @thermal_zone_device_exec(ptr noundef %3, ptr noundef @acpi_thermal_adjust_thermal_zone, i64 noundef %conv) #20, !dbg !5180
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !5181
  call void @acpi_queue_thermal_check(ptr noundef %5) #20, !dbg !5182
  %6 = load ptr, ptr %adev, align 8, !dbg !5183
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %6, i32 0, i32 8, !dbg !5184
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 7, !dbg !5185
  %arraydecay = getelementptr inbounds [20 x i8], ptr %device_class, i64 0, i64 0, !dbg !5183
  %7 = load ptr, ptr %adev, align 8, !dbg !5186
  %dev = getelementptr inbounds %struct.acpi_device, ptr %7, i32 0, i32 18, !dbg !5187
  %call = call ptr @dev_name(ptr noundef %dev) #20, !dbg !5188
  %8 = load i32, ptr %event.addr, align 4, !dbg !5189
  %conv1 = trunc i32 %8 to i8, !dbg !5189
  %call2 = call i32 @acpi_bus_generate_netlink_event(ptr noundef %arraydecay, ptr noundef %call, i8 noundef zeroext %conv1, i32 noundef 0) #20, !dbg !5190
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #22, !dbg !5191
  ret void, !dbg !5191
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #13 align 16 !dbg !5192 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5200, metadata !DIExpression()), !dbg !5205
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5201, metadata !DIExpression()), !dbg !5206
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #22, !dbg !5207
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5202, metadata !DIExpression()), !dbg !5208
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5209
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5210
  %div = udiv i64 %1, 64, !dbg !5210
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5211
  store ptr %add.ptr, ptr %p, align 8, !dbg !5208
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #22, !dbg !5212
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5203, metadata !DIExpression()), !dbg !5213
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5214
  %rem = urem i64 %2, 64, !dbg !5214
  %shl = shl i64 1, %rem, !dbg !5214
  store i64 %shl, ptr %mask, align 8, !dbg !5213
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #22, !dbg !5215
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5204, metadata !DIExpression()), !dbg !5216
  %3 = load ptr, ptr %p, align 8, !dbg !5217
  %4 = load i64, ptr %3, align 8, !dbg !5218
  store i64 %4, ptr %val, align 8, !dbg !5216
  %5 = load i64, ptr %val, align 8, !dbg !5219
  %6 = load i64, ptr %mask, align 8, !dbg !5220
  %and = and i64 %5, %6, !dbg !5221
  %tobool = icmp ne i64 %and, 0, !dbg !5222
  %lnot = xor i1 %tobool, true, !dbg !5222
  %lnot1 = xor i1 %lnot, true, !dbg !5223
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #22, !dbg !5224
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #22, !dbg !5224
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #22, !dbg !5224
  ret i1 %lnot1, !dbg !5225
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #13 align 16 !dbg !5226 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5229, metadata !DIExpression()), !dbg !5231
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5230, metadata !DIExpression()), !dbg !5232
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5233
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5234
  %div = udiv i64 %1, 64, !dbg !5234
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5235
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #20, !dbg !5236
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5237
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5238
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !5239
  ret i1 %call, !dbg !5240
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #6 align 16 !dbg !5241 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !5245, metadata !DIExpression()), !dbg !5247
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5246, metadata !DIExpression()), !dbg !5248
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !5249
  %1 = load ptr, ptr %work.addr, align 8, !dbg !5250
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #20, !dbg !5251
  ret i1 %call, !dbg !5252
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #13 align 16 !dbg !5253 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5255, metadata !DIExpression()), !dbg !5257
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5256, metadata !DIExpression()), !dbg !5258
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5259
  %1 = load i64, ptr %size.addr, align 8, !dbg !5260
  %conv = trunc i64 %1 to i32, !dbg !5260
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #20, !dbg !5261
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5262
  %3 = load i64, ptr %size.addr, align 8, !dbg !5262
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #20, !dbg !5262
  ret void, !dbg !5263
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #13 align 16 !dbg !5264 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5267, metadata !DIExpression()), !dbg !5269
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5268, metadata !DIExpression()), !dbg !5270
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5271
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5272
  br i1 %1, label %cond.true, label %cond.false, !dbg !5272

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5273
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5274
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #20, !dbg !5275
  %conv = zext i1 %call to i32, !dbg !5275
  br label %cond.end, !dbg !5272

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5276
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5277
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #20, !dbg !5278
  %conv2 = zext i1 %call1 to i32, !dbg !5278
  br label %cond.end, !dbg !5272

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5272
  %tobool = icmp ne i32 %cond, 0, !dbg !5272
  ret i1 %tobool, !dbg !5279
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5280 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5282, metadata !DIExpression()), !dbg !5284
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5283, metadata !DIExpression()), !dbg !5285
  ret i1 true, !dbg !5286
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #13 align 16 !dbg !5287 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5291, metadata !DIExpression()), !dbg !5293
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5292, metadata !DIExpression()), !dbg !5294
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5295
  %and = and i64 %0, 63, !dbg !5296
  %shl = shl i64 1, %and, !dbg !5297
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5298
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5299
  %shr = ashr i64 %2, 6, !dbg !5300
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5298
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5298
  %and1 = and i64 %shl, %3, !dbg !5301
  %cmp = icmp ne i64 %and1, 0, !dbg !5302
  ret i1 %cmp, !dbg !5303
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #13 align 16 !dbg !5304 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5306, metadata !DIExpression()), !dbg !5309
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5307, metadata !DIExpression()), !dbg !5310
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #22, !dbg !5311
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5308, metadata !DIExpression()), !dbg !5312
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5313
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5314
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #22, !dbg !5315, !srcloc !5316
  %3 = icmp ult i8 %2, 2, !dbg !5315
  call void @llvm.assume(i1 %3), !dbg !5315
  store i8 %2, ptr %oldbit, align 1, !dbg !5315
  %4 = load i8, ptr %oldbit, align 1, !dbg !5317, !range !2806, !noundef !421
  %tobool = trunc i8 %4 to i1, !dbg !5317
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #22, !dbg !5318
  ret i1 %tobool, !dbg !5319
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5320 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5323 dso_local void @thermal_zone_device_exec(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_thermal_adjust_thermal_zone(ptr noundef %thermal, i64 noundef %data) #2 align 16 !dbg !5329 {
entry:
  %thermal.addr = alloca ptr, align 8
  %data.addr = alloca i64, align 8
  %tz = alloca ptr, align 8
  %flag = alloca i32, align 4
  store ptr %thermal, ptr %thermal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thermal.addr, metadata !5331, metadata !DIExpression()), !dbg !5335
  store i64 %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5332, metadata !DIExpression()), !dbg !5336
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #22, !dbg !5337
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !5333, metadata !DIExpression()), !dbg !5338
  %0 = load ptr, ptr %thermal.addr, align 8, !dbg !5339
  %call = call ptr @thermal_zone_device_priv(ptr noundef %0) #20, !dbg !5340
  store ptr %call, ptr %tz, align 8, !dbg !5338
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag) #22, !dbg !5341
  call void @llvm.dbg.declare(metadata ptr %flag, metadata !5334, metadata !DIExpression()), !dbg !5342
  %1 = load i64, ptr %data.addr, align 8, !dbg !5343
  %cmp = icmp eq i64 %1, 129, !dbg !5344
  %2 = zext i1 %cmp to i64, !dbg !5343
  %cond = select i1 %cmp, i64 12, i64 16, !dbg !5343
  %conv = trunc i64 %cond to i32, !dbg !5343
  store i32 %conv, ptr %flag, align 4, !dbg !5342
  %3 = load ptr, ptr %tz, align 8, !dbg !5345
  %4 = load i32, ptr %flag, align 4, !dbg !5346
  call void @__acpi_thermal_trips_update(ptr noundef %3, i32 noundef %4) #20, !dbg !5347
  %5 = load ptr, ptr %tz, align 8, !dbg !5348
  %thermal_zone = getelementptr inbounds %struct.acpi_thermal, ptr %5, i32 0, i32 9, !dbg !5349
  %6 = load ptr, ptr %thermal_zone, align 8, !dbg !5349
  %7 = load ptr, ptr %tz, align 8, !dbg !5350
  %call1 = call i32 @for_each_thermal_trip(ptr noundef %6, ptr noundef @acpi_thermal_adjust_trip, ptr noundef %7) #20, !dbg !5351
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag) #22, !dbg !5352
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #22, !dbg !5352
  ret void, !dbg !5352
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5353 dso_local i32 @for_each_thermal_trip(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_thermal_adjust_trip(ptr noundef %trip, ptr noundef %data) #2 align 16 !dbg !5359 {
entry:
  %retval = alloca i32, align 4
  %trip.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %acpi_trip = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %trip, ptr %trip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trip.addr, metadata !5361, metadata !DIExpression()), !dbg !5365
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5362, metadata !DIExpression()), !dbg !5366
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_trip) #22, !dbg !5367
  call void @llvm.dbg.declare(metadata ptr %acpi_trip, metadata !5363, metadata !DIExpression()), !dbg !5368
  %0 = load ptr, ptr %trip.addr, align 8, !dbg !5369
  %priv = getelementptr inbounds %struct.thermal_trip, ptr %0, i32 0, i32 3, !dbg !5370
  %1 = load ptr, ptr %priv, align 8, !dbg !5370
  store ptr %1, ptr %acpi_trip, align 8, !dbg !5368
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #22, !dbg !5371
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !5364, metadata !DIExpression()), !dbg !5372
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5373
  store ptr %2, ptr %tz, align 8, !dbg !5372
  %3 = load ptr, ptr %acpi_trip, align 8, !dbg !5374
  %tobool = icmp ne ptr %3, null, !dbg !5374
  br i1 %tobool, label %if.end, label %if.then, !dbg !5376

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5377

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %acpi_trip, align 8, !dbg !5378
  %valid = getelementptr inbounds %struct.acpi_thermal_trip, ptr %4, i32 0, i32 1, !dbg !5380
  %5 = load i8, ptr %valid, align 8, !dbg !5380, !range !2806, !noundef !421
  %tobool1 = trunc i8 %5 to i1, !dbg !5380
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !5381

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %tz, align 8, !dbg !5382
  %7 = load ptr, ptr %acpi_trip, align 8, !dbg !5383
  %temperature = getelementptr inbounds %struct.acpi_thermal_trip, ptr %7, i32 0, i32 0, !dbg !5384
  %8 = load i64, ptr %temperature, align 8, !dbg !5384
  %conv = trunc i64 %8 to i32, !dbg !5383
  %call = call i32 @acpi_thermal_temp(ptr noundef %6, i32 noundef %conv) #20, !dbg !5385
  %9 = load ptr, ptr %trip.addr, align 8, !dbg !5386
  %temperature3 = getelementptr inbounds %struct.thermal_trip, ptr %9, i32 0, i32 0, !dbg !5387
  store i32 %call, ptr %temperature3, align 8, !dbg !5388
  br label %if.end5, !dbg !5386

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %trip.addr, align 8, !dbg !5389
  %temperature4 = getelementptr inbounds %struct.thermal_trip, ptr %10, i32 0, i32 0, !dbg !5390
  store i32 -274000, ptr %temperature4, align 8, !dbg !5391
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  store i32 0, ptr %retval, align 4, !dbg !5392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5392

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #22, !dbg !5393
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_trip) #22, !dbg !5393
  %11 = load i32, ptr %retval, align 4, !dbg !5393
  ret i32 %11, !dbg !5393
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5394 dso_local i32 @thermal_zone_device_disable(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5395 dso_local void @acpi_dev_remove_notify_handler(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_thermal_suspend(ptr noundef %dev) #2 align 16 !dbg !5398 {
entry:
  %dev.addr = alloca ptr, align 8
  %_wq = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5400, metadata !DIExpression()), !dbg !5403
  call void @llvm.lifetime.start.p0(i64 8, ptr %_wq) #22, !dbg !5404
  call void @llvm.dbg.declare(metadata ptr %_wq, metadata !5401, metadata !DIExpression()), !dbg !5404
  %0 = load ptr, ptr @acpi_thermal_pm_queue, align 8, !dbg !5404
  store ptr %0, ptr %_wq, align 8, !dbg !5404
  %1 = load ptr, ptr %_wq, align 8, !dbg !5405
  %2 = load ptr, ptr @system_wq, align 8, !dbg !5405
  %cmp = icmp eq ptr %1, %2, !dbg !5405
  %conv = zext i1 %cmp to i32, !dbg !5405
  %3 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5405
  br i1 %3, label %land.lhs.true, label %lor.lhs.false, !dbg !5405

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %_wq, align 8, !dbg !5405
  %5 = load ptr, ptr @system_wq, align 8, !dbg !5405
  %cmp1 = icmp eq ptr %4, %5, !dbg !5405
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !5405

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %_wq, align 8, !dbg !5405
  %7 = load ptr, ptr @system_highpri_wq, align 8, !dbg !5405
  %cmp3 = icmp eq ptr %6, %7, !dbg !5405
  %conv4 = zext i1 %cmp3 to i32, !dbg !5405
  %8 = call i1 @llvm.is.constant.i32(i32 %conv4), !dbg !5405
  br i1 %8, label %land.lhs.true5, label %lor.lhs.false8, !dbg !5405

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %9 = load ptr, ptr %_wq, align 8, !dbg !5405
  %10 = load ptr, ptr @system_highpri_wq, align 8, !dbg !5405
  %cmp6 = icmp eq ptr %9, %10, !dbg !5405
  br i1 %cmp6, label %if.then, label %lor.lhs.false8, !dbg !5405

lor.lhs.false8:                                   ; preds = %land.lhs.true5, %lor.lhs.false
  %11 = load ptr, ptr %_wq, align 8, !dbg !5405
  %12 = load ptr, ptr @system_long_wq, align 8, !dbg !5405
  %cmp9 = icmp eq ptr %11, %12, !dbg !5405
  %conv10 = zext i1 %cmp9 to i32, !dbg !5405
  %13 = call i1 @llvm.is.constant.i32(i32 %conv10), !dbg !5405
  br i1 %13, label %land.lhs.true11, label %lor.lhs.false14, !dbg !5405

land.lhs.true11:                                  ; preds = %lor.lhs.false8
  %14 = load ptr, ptr %_wq, align 8, !dbg !5405
  %15 = load ptr, ptr @system_long_wq, align 8, !dbg !5405
  %cmp12 = icmp eq ptr %14, %15, !dbg !5405
  br i1 %cmp12, label %if.then, label %lor.lhs.false14, !dbg !5405

lor.lhs.false14:                                  ; preds = %land.lhs.true11, %lor.lhs.false8
  %16 = load ptr, ptr %_wq, align 8, !dbg !5405
  %17 = load ptr, ptr @system_unbound_wq, align 8, !dbg !5405
  %cmp15 = icmp eq ptr %16, %17, !dbg !5405
  %conv16 = zext i1 %cmp15 to i32, !dbg !5405
  %18 = call i1 @llvm.is.constant.i32(i32 %conv16), !dbg !5405
  br i1 %18, label %land.lhs.true17, label %lor.lhs.false20, !dbg !5405

land.lhs.true17:                                  ; preds = %lor.lhs.false14
  %19 = load ptr, ptr %_wq, align 8, !dbg !5405
  %20 = load ptr, ptr @system_unbound_wq, align 8, !dbg !5405
  %cmp18 = icmp eq ptr %19, %20, !dbg !5405
  br i1 %cmp18, label %if.then, label %lor.lhs.false20, !dbg !5405

lor.lhs.false20:                                  ; preds = %land.lhs.true17, %lor.lhs.false14
  %21 = load ptr, ptr %_wq, align 8, !dbg !5405
  %22 = load ptr, ptr @system_freezable_wq, align 8, !dbg !5405
  %cmp21 = icmp eq ptr %21, %22, !dbg !5405
  %conv22 = zext i1 %cmp21 to i32, !dbg !5405
  %23 = call i1 @llvm.is.constant.i32(i32 %conv22), !dbg !5405
  br i1 %23, label %land.lhs.true23, label %lor.lhs.false26, !dbg !5405

land.lhs.true23:                                  ; preds = %lor.lhs.false20
  %24 = load ptr, ptr %_wq, align 8, !dbg !5405
  %25 = load ptr, ptr @system_freezable_wq, align 8, !dbg !5405
  %cmp24 = icmp eq ptr %24, %25, !dbg !5405
  br i1 %cmp24, label %if.then, label %lor.lhs.false26, !dbg !5405

lor.lhs.false26:                                  ; preds = %land.lhs.true23, %lor.lhs.false20
  %26 = load ptr, ptr %_wq, align 8, !dbg !5405
  %27 = load ptr, ptr @system_power_efficient_wq, align 8, !dbg !5405
  %cmp27 = icmp eq ptr %26, %27, !dbg !5405
  %conv28 = zext i1 %cmp27 to i32, !dbg !5405
  %28 = call i1 @llvm.is.constant.i32(i32 %conv28), !dbg !5405
  br i1 %28, label %land.lhs.true29, label %lor.lhs.false32, !dbg !5405

land.lhs.true29:                                  ; preds = %lor.lhs.false26
  %29 = load ptr, ptr %_wq, align 8, !dbg !5405
  %30 = load ptr, ptr @system_power_efficient_wq, align 8, !dbg !5405
  %cmp30 = icmp eq ptr %29, %30, !dbg !5405
  br i1 %cmp30, label %if.then, label %lor.lhs.false32, !dbg !5405

lor.lhs.false32:                                  ; preds = %land.lhs.true29, %lor.lhs.false26
  %31 = load ptr, ptr %_wq, align 8, !dbg !5405
  %32 = load ptr, ptr @system_freezable_power_efficient_wq, align 8, !dbg !5405
  %cmp33 = icmp eq ptr %31, %32, !dbg !5405
  %conv34 = zext i1 %cmp33 to i32, !dbg !5405
  %33 = call i1 @llvm.is.constant.i32(i32 %conv34), !dbg !5405
  br i1 %33, label %land.lhs.true35, label %if.end, !dbg !5405

land.lhs.true35:                                  ; preds = %lor.lhs.false32
  %34 = load ptr, ptr %_wq, align 8, !dbg !5405
  %35 = load ptr, ptr @system_freezable_power_efficient_wq, align 8, !dbg !5405
  %cmp36 = icmp eq ptr %34, %35, !dbg !5405
  br i1 %cmp36, label %if.then, label %if.end, !dbg !5404

if.then:                                          ; preds = %land.lhs.true35, %land.lhs.true29, %land.lhs.true23, %land.lhs.true17, %land.lhs.true11, %land.lhs.true5, %land.lhs.true
  call void @__warn_flushing_systemwide_wq() #20, !dbg !5405, !srcloc !5407
  br label %if.end, !dbg !5405

if.end:                                           ; preds = %if.then, %land.lhs.true35, %lor.lhs.false32
  %36 = load ptr, ptr %_wq, align 8, !dbg !5404
  call void @__flush_workqueue(ptr noundef %36) #20, !dbg !5404
  call void @llvm.lifetime.end.p0(i64 8, ptr %_wq) #22, !dbg !5408
  ret i32 0, !dbg !5409
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_thermal_resume(ptr noundef %dev) #2 align 16 !dbg !5410 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %power_state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5412, metadata !DIExpression()), !dbg !5419
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #22, !dbg !5420
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !5413, metadata !DIExpression()), !dbg !5421
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #22, !dbg !5422
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5414, metadata !DIExpression()), !dbg !5423
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #22, !dbg !5422
  call void @llvm.dbg.declare(metadata ptr %j, metadata !5415, metadata !DIExpression()), !dbg !5424
  call void @llvm.lifetime.start.p0(i64 4, ptr %power_state) #22, !dbg !5422
  call void @llvm.dbg.declare(metadata ptr %power_state, metadata !5416, metadata !DIExpression()), !dbg !5425
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5426
  %tobool = icmp ne ptr %0, null, !dbg !5426
  br i1 %tobool, label %if.end, label %if.then, !dbg !5428

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5429

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #22, !dbg !5430
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5417, metadata !DIExpression()), !dbg !5430
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5430
  store ptr %1, ptr %__mptr, align 8, !dbg !5430
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5430
  %add.ptr = getelementptr i8, ptr %2, i64 -608, !dbg !5430
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5430
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #22, !dbg !5431
  %3 = load ptr, ptr %tmp, align 8, !dbg !5430
  %call = call ptr @acpi_driver_data(ptr noundef %3) #20, !dbg !5432
  store ptr %call, ptr %tz, align 8, !dbg !5433
  %4 = load ptr, ptr %tz, align 8, !dbg !5434
  %tobool1 = icmp ne ptr %4, null, !dbg !5434
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5436

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5437
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5437

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !5438
  br label %for.cond, !dbg !5440

for.cond:                                         ; preds = %for.inc22, %if.end3
  %5 = load i32, ptr %i, align 4, !dbg !5441
  %cmp = icmp slt i32 %5, 10, !dbg !5443
  br i1 %cmp, label %for.body, label %for.end24, !dbg !5444

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %tz, align 8, !dbg !5445
  %trips = getelementptr inbounds %struct.acpi_thermal, ptr %6, i32 0, i32 6, !dbg !5448
  %active = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips, i32 0, i32 3, !dbg !5449
  %7 = load i32, ptr %i, align 4, !dbg !5450
  %idxprom = sext i32 %7 to i64, !dbg !5445
  %arrayidx = getelementptr [10 x %struct.acpi_thermal_active], ptr %active, i64 0, i64 %idxprom, !dbg !5445
  %trip = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx, i32 0, i32 0, !dbg !5451
  %valid = getelementptr inbounds %struct.acpi_thermal_trip, ptr %trip, i32 0, i32 1, !dbg !5452
  %8 = load i8, ptr %valid, align 8, !dbg !5452, !range !2806, !noundef !421
  %tobool4 = trunc i8 %8 to i1, !dbg !5452
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5453

if.then5:                                         ; preds = %for.body
  br label %for.end24, !dbg !5454

if.end6:                                          ; preds = %for.body
  store i32 0, ptr %j, align 4, !dbg !5455
  br label %for.cond7, !dbg !5457

for.cond7:                                        ; preds = %for.inc, %if.end6
  %9 = load i32, ptr %j, align 4, !dbg !5458
  %10 = load ptr, ptr %tz, align 8, !dbg !5460
  %trips8 = getelementptr inbounds %struct.acpi_thermal, ptr %10, i32 0, i32 6, !dbg !5461
  %active9 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips8, i32 0, i32 3, !dbg !5462
  %11 = load i32, ptr %i, align 4, !dbg !5463
  %idxprom10 = sext i32 %11 to i64, !dbg !5460
  %arrayidx11 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active9, i64 0, i64 %idxprom10, !dbg !5460
  %devices = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx11, i32 0, i32 1, !dbg !5464
  %count = getelementptr inbounds %struct.acpi_handle_list, ptr %devices, i32 0, i32 0, !dbg !5465
  %12 = load i32, ptr %count, align 8, !dbg !5465
  %cmp12 = icmp ult i32 %9, %12, !dbg !5466
  br i1 %cmp12, label %for.body13, label %for.end, !dbg !5467

for.body13:                                       ; preds = %for.cond7
  %13 = load ptr, ptr %tz, align 8, !dbg !5468
  %trips14 = getelementptr inbounds %struct.acpi_thermal, ptr %13, i32 0, i32 6, !dbg !5470
  %active15 = getelementptr inbounds %struct.acpi_thermal_trips, ptr %trips14, i32 0, i32 3, !dbg !5471
  %14 = load i32, ptr %i, align 4, !dbg !5472
  %idxprom16 = sext i32 %14 to i64, !dbg !5468
  %arrayidx17 = getelementptr [10 x %struct.acpi_thermal_active], ptr %active15, i64 0, i64 %idxprom16, !dbg !5468
  %devices18 = getelementptr inbounds %struct.acpi_thermal_active, ptr %arrayidx17, i32 0, i32 1, !dbg !5473
  %handles = getelementptr inbounds %struct.acpi_handle_list, ptr %devices18, i32 0, i32 1, !dbg !5474
  %15 = load i32, ptr %j, align 4, !dbg !5475
  %idxprom19 = sext i32 %15 to i64, !dbg !5468
  %arrayidx20 = getelementptr [10 x ptr], ptr %handles, i64 0, i64 %idxprom19, !dbg !5468
  %16 = load ptr, ptr %arrayidx20, align 8, !dbg !5468
  %call21 = call i32 @acpi_bus_update_power(ptr noundef %16, ptr noundef %power_state) #20, !dbg !5476
  br label %for.inc, !dbg !5477

for.inc:                                          ; preds = %for.body13
  %17 = load i32, ptr %j, align 4, !dbg !5478
  %inc = add i32 %17, 1, !dbg !5478
  store i32 %inc, ptr %j, align 4, !dbg !5478
  br label %for.cond7, !dbg !5479, !llvm.loop !5480

for.end:                                          ; preds = %for.cond7
  br label %for.inc22, !dbg !5482

for.inc22:                                        ; preds = %for.end
  %18 = load i32, ptr %i, align 4, !dbg !5483
  %inc23 = add i32 %18, 1, !dbg !5483
  store i32 %inc23, ptr %i, align 4, !dbg !5483
  br label %for.cond, !dbg !5484, !llvm.loop !5485

for.end24:                                        ; preds = %if.then5, %for.cond
  %19 = load ptr, ptr %tz, align 8, !dbg !5487
  call void @acpi_queue_thermal_check(ptr noundef %19) #20, !dbg !5488
  store i32 0, ptr %retval, align 4, !dbg !5489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5489

cleanup:                                          ; preds = %for.end24, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %power_state) #22, !dbg !5490
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #22, !dbg !5490
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #22, !dbg !5490
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #22, !dbg !5490
  %20 = load i32, ptr %retval, align 4, !dbg !5490
  ret i32 %20, !dbg !5490
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5491 dso_local i32 @acpi_bus_update_power(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5494 dso_local i32 @dmi_check_system(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5496 dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5499 dso_local i32 @acpi_bus_register_driver(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @thermal_act(ptr noundef %d) #2 align 16 !dbg !5502 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5504, metadata !DIExpression()), !dbg !5505
  %0 = load i32, ptr @act, align 4, !dbg !5506
  %cmp = icmp eq i32 %0, 0, !dbg !5508
  br i1 %cmp, label %if.then, label %if.end, !dbg !5509

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5510

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5513

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %d.addr, align 8, !dbg !5510
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %1, i32 0, i32 1, !dbg !5510
  %2 = load ptr, ptr %ident, align 8, !dbg !5510
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.32, ptr noundef %2) #21, !dbg !5510
  store i32 %call, ptr %tmp, align 4, !dbg !5513
  %3 = load i32, ptr %tmp, align 4, !dbg !5510
  store i32 -1, ptr @act, align 4, !dbg !5515
  br label %if.end, !dbg !5516

if.end:                                           ; preds = %do.end, %entry
  ret i32 0, !dbg !5517
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @thermal_psv(ptr noundef %d) #2 align 16 !dbg !5518 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5520, metadata !DIExpression()), !dbg !5521
  %0 = load i32, ptr @psv, align 4, !dbg !5522
  %cmp = icmp eq i32 %0, 0, !dbg !5524
  br i1 %cmp, label %if.then, label %if.end, !dbg !5525

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5526

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5529

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %d.addr, align 8, !dbg !5526
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %1, i32 0, i32 1, !dbg !5526
  %2 = load ptr, ptr %ident, align 8, !dbg !5526
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.33, ptr noundef %2) #21, !dbg !5526
  store i32 %call, ptr %tmp, align 4, !dbg !5529
  %3 = load i32, ptr %tmp, align 4, !dbg !5526
  store i32 -1, ptr @psv, align 4, !dbg !5531
  br label %if.end, !dbg !5532

if.end:                                           ; preds = %do.end, %entry
  ret i32 0, !dbg !5533
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @thermal_tzp(ptr noundef %d) #2 align 16 !dbg !5534 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5536, metadata !DIExpression()), !dbg !5537
  %0 = load i32, ptr @tzp, align 4, !dbg !5538
  %cmp = icmp eq i32 %0, 0, !dbg !5540
  br i1 %cmp, label %if.then, label %if.end, !dbg !5541

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5542

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5545

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %d.addr, align 8, !dbg !5542
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %1, i32 0, i32 1, !dbg !5542
  %2 = load ptr, ptr %ident, align 8, !dbg !5542
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.34, ptr noundef %2) #21, !dbg !5542
  store i32 %call, ptr %tmp, align 4, !dbg !5545
  %3 = load i32, ptr %tmp, align 4, !dbg !5542
  store i32 300, ptr @tzp, align 4, !dbg !5547
  br label %if.end, !dbg !5548

if.end:                                           ; preds = %do.end, %entry
  ret i32 0, !dbg !5549
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @thermal_nocrt(ptr noundef %d) #2 align 16 !dbg !5550 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5552, metadata !DIExpression()), !dbg !5553
  br label %do.body, !dbg !5554

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5556

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %d.addr, align 8, !dbg !5554
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %0, i32 0, i32 1, !dbg !5554
  %1 = load ptr, ptr %ident, align 8, !dbg !5554
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.35, ptr noundef %1) #21, !dbg !5554
  store i32 %call, ptr %tmp, align 4, !dbg !5556
  %2 = load i32, ptr %tmp, align 4, !dbg !5554
  store i32 -1, ptr @crt, align 4, !dbg !5558
  ret i32 0, !dbg !5559
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid "dontcall-warn"="Please avoid flushing system-wide workqueues." "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { noredzone }
attributes #21 = { cold noredzone }
attributes #22 = { nounwind }
attributes #23 = { noredzone allocsize(0) }
attributes #24 = { noredzone allocsize(0,1) }
attributes #25 = { noredzone allocsize(2) }
attributes #26 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563}
!llvm.ident = !{!2564}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_act", scope: !2, file: !3, line: 74, type: !2362, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.thermal.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/thermal\22 -D KBUILD_BASENAME=\22thermal\22 -D KBUILD_MODNAME=\22thermal\22 -D __KBUILD_MODNAME=kmod_thermal -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/thermal.ll drivers/acpi/thermal.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !178, globals: !2277, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/thermal.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53706c7636c3db9a7623bb7cbe7f492f")
!4 = !{!5, !13, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !84, !91, !95, !101, !112, !138, !143, !153, !161}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !14, line: 26, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!18 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
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
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trip_type", file: !85, line: 12, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/uapi/linux/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0988915424caf116c4c8a170acf5e63")
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "THERMAL_TRIP_ACTIVE", value: 0)
!88 = !DIEnumerator(name: "THERMAL_TRIP_PASSIVE", value: 1)
!89 = !DIEnumerator(name: "THERMAL_TRIP_HOT", value: 2)
!90 = !DIEnumerator(name: "THERMAL_TRIP_CRITICAL", value: 3)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_device_mode", file: !85, line: 7, baseType: !7, size: 32, elements: !92)
!92 = !{!93, !94}
!93 = !DIEnumerator(name: "THERMAL_DEVICE_DISABLED", value: 0)
!94 = !DIEnumerator(name: "THERMAL_DEVICE_ENABLED", value: 1)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trend", file: !96, line: 37, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0720786b938087c9219e0058826384af")
!97 = !{!98, !99, !100}
!98 = !DIEnumerator(name: "THERMAL_TREND_STABLE", value: 0)
!99 = !DIEnumerator(name: "THERMAL_TREND_RAISING", value: 1)
!100 = !DIEnumerator(name: "THERMAL_TREND_DROPPING", value: 2)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_notify_event", file: !96, line: 44, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111}
!103 = !DIEnumerator(name: "THERMAL_EVENT_UNSPECIFIED", value: 0)
!104 = !DIEnumerator(name: "THERMAL_EVENT_TEMP_SAMPLE", value: 1)
!105 = !DIEnumerator(name: "THERMAL_TRIP_VIOLATED", value: 2)
!106 = !DIEnumerator(name: "THERMAL_TRIP_CHANGED", value: 3)
!107 = !DIEnumerator(name: "THERMAL_DEVICE_DOWN", value: 4)
!108 = !DIEnumerator(name: "THERMAL_DEVICE_UP", value: 5)
!109 = !DIEnumerator(name: "THERMAL_DEVICE_POWER_CAPABILITY_CHANGED", value: 6)
!110 = !DIEnumerator(name: "THERMAL_TABLE_CHANGED", value: 7)
!111 = !DIEnumerator(name: "THERMAL_EVENT_KEEP_ALIVE", value: 8)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 30, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
!115 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!116 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!117 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!118 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!119 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!120 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!121 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!122 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!123 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!124 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!125 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!126 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!127 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!128 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!129 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!130 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!131 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!132 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!133 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!134 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!135 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!136 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!137 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !139, line: 10, baseType: !7, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!140 = !{!141, !142}
!141 = !DIEnumerator(name: "false", value: 0)
!142 = !DIEnumerator(name: "true", value: 1)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !144, line: 364, baseType: !7, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!145 = !{!146, !147, !148, !149, !150, !151, !152}
!146 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!147 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!148 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!149 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!150 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!151 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!152 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !154, line: 119, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!155 = !{!156, !157, !158, !159, !160}
!156 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!157 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!158 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!159 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!160 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 364, baseType: !7, size: 32, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!163 = !DIEnumerator(name: "WQ_UNBOUND", value: 2)
!164 = !DIEnumerator(name: "WQ_FREEZABLE", value: 4)
!165 = !DIEnumerator(name: "WQ_MEM_RECLAIM", value: 8)
!166 = !DIEnumerator(name: "WQ_HIGHPRI", value: 16)
!167 = !DIEnumerator(name: "WQ_CPU_INTENSIVE", value: 32)
!168 = !DIEnumerator(name: "WQ_SYSFS", value: 64)
!169 = !DIEnumerator(name: "WQ_POWER_EFFICIENT", value: 128)
!170 = !DIEnumerator(name: "__WQ_DESTROYING", value: 32768)
!171 = !DIEnumerator(name: "__WQ_DRAINING", value: 65536)
!172 = !DIEnumerator(name: "__WQ_ORDERED", value: 131072)
!173 = !DIEnumerator(name: "__WQ_LEGACY", value: 262144)
!174 = !DIEnumerator(name: "__WQ_ORDERED_EXPLICIT", value: 524288)
!175 = !DIEnumerator(name: "WQ_MAX_ACTIVE", value: 512)
!176 = !DIEnumerator(name: "WQ_UNBOUND_MAX_ACTIVE", value: 512)
!177 = !DIEnumerator(name: "WQ_DFL_ACTIVE", value: 256)
!178 = !{!179, !356, !1227, !334, !1228, !1129, !320, !1230, !1232, !1234, !2274, !1210, !2275, !1238}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !181)
!181 = !{!182, !183, !190, !195, !875, !901, !902, !903, !904, !908, !911, !912, !913, !966, !967, !968, !969, !970, !971, !972, !973, !981, !985, !1005, !1023, !1024, !1025, !1026, !1035, !1059, !1060, !1063, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1077, !1078, !1185, !1193, !1194, !1195, !1197, !1201, !1202, !1206, !1207, !1208, !1209, !1211, !1212, !1213, !1220, !1221, !1222, !1226}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !180, file: !6, line: 403, baseType: !5, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !180, file: !6, line: 406, baseType: !184, size: 128, offset: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !185, line: 190, size: 128, elements: !186)
!185 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!186 = !{!187, !189}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !185, line: 191, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !184, file: !185, line: 191, baseType: !188, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !180, file: !6, line: 409, baseType: !191, size: 448, offset: 192)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 448, elements: !193)
!192 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!193 = !{!194}
!194 = !DISubrange(count: 56)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !180, file: !6, line: 417, baseType: !196, size: 768, offset: 640)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !197)
!197 = !{!198, !858, !859, !860, !863}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !196, file: !6, line: 46, baseType: !199, size: 512)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !200, line: 64, size: 512, elements: !201)
!200 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!201 = !{!202, !205, !206, !208, !297, !729, !844, !853, !854, !855, !856, !857}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !199, file: !200, line: 65, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !199, file: !200, line: 66, baseType: !184, size: 128, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !200, line: 67, baseType: !207, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !199, file: !200, line: 68, baseType: !209, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !200, line: 168, size: 768, elements: !211)
!211 = !{!212, !213, !256, !257}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !210, file: !200, line: 169, baseType: !184, size: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !210, file: !200, line: 170, baseType: !214, size: 32, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !215, line: 29, baseType: !216)
!215 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !215, line: 17, size: 32, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !215, line: 18, baseType: !219, size: 32)
!219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !215, line: 18, size: 32, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !219, file: !215, line: 19, baseType: !222, size: 32)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !223, line: 14, size: 32, elements: !224)
!223 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !222, file: !223, line: 15, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !227, line: 44, baseType: !228)
!227 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !227, line: 14, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, scope: !228, file: !227, line: 15, baseType: !231, size: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !228, file: !227, line: 15, size: 32, elements: !232)
!232 = !{!233, !238, !248}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !231, file: !227, line: 16, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !185, line: 174, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 172, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !235, file: !185, line: 173, baseType: !46, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !227, line: 24, baseType: !239, size: 16)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !227, line: 24, size: 16, elements: !240)
!240 = !{!241, !247}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !239, file: !227, line: 25, baseType: !242, size: 8)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !243, line: 17, baseType: !244)
!243 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !245, line: 21, baseType: !246)
!245 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!246 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !239, file: !227, line: 26, baseType: !242, size: 8, offset: 8)
!248 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !227, line: 28, baseType: !249, size: 32)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !227, line: 28, size: 32, elements: !250)
!250 = !{!251, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !249, file: !227, line: 29, baseType: !252, size: 16)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !243, line: 19, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !245, line: 24, baseType: !254)
!254 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !249, file: !227, line: 30, baseType: !252, size: 16, offset: 16)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !210, file: !200, line: 171, baseType: !199, size: 512, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !210, file: !200, line: 172, baseType: !258, size: 64, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !200, line: 133, size: 192, elements: !261)
!261 = !{!262, !269, !274}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !260, file: !200, line: 134, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!46, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !200, line: 135, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!203, !267}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !260, file: !200, line: 136, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!46, !267, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !200, line: 125, size: 20736, elements: !281)
!281 = !{!282, !287, !291, !292, !296}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !280, file: !200, line: 126, baseType: !283, size: 192)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 192, elements: !285)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!285 = !{!286}
!286 = !DISubrange(count: 3)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !280, file: !200, line: 127, baseType: !288, size: 4096, offset: 192)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 4096, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !280, file: !200, line: 128, baseType: !46, size: 32, offset: 4288)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !280, file: !200, line: 129, baseType: !293, size: 16384, offset: 4320)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 16384, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 2048)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !280, file: !200, line: 130, baseType: !46, size: 32, offset: 20704)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !199, file: !200, line: 69, baseType: !298, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !200, line: 116, size: 384, elements: !301)
!301 = !{!302, !306, !335, !676, !707, !711}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !300, file: !200, line: 117, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !207}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !300, file: !200, line: 118, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !310, line: 254, size: 128, elements: !311)
!310 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!311 = !{!312, !327}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !309, file: !310, line: 255, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !207, !321, !284}
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !185, line: 66, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !318, line: 73, baseType: !319)
!318 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !318, line: 15, baseType: !320)
!320 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !310, line: 30, size: 128, elements: !323)
!323 = !{!324, !325}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !322, file: !310, line: 31, baseType: !203, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !322, file: !310, line: 32, baseType: !326, size: 16, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !185, line: 24, baseType: !254)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !309, file: !310, line: 256, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!316, !207, !321, !203, !331}
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !185, line: 61, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !318, line: 72, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !318, line: 16, baseType: !334)
!334 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !300, file: !200, line: 119, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !310, line: 84, size: 320, elements: !340)
!340 = !{!341, !342, !346, !672, !674}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !339, file: !310, line: 85, baseType: !203, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !339, file: !310, line: 86, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!326, !207, !321, !46}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !339, file: !310, line: 88, baseType: !347, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!326, !207, !350, !46}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !310, line: 175, size: 512, elements: !352)
!352 = !{!353, !354, !355, !357, !364, !374, !375}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !351, file: !310, line: 176, baseType: !322, size: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !351, file: !310, line: 177, baseType: !331, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !351, file: !310, line: 178, baseType: !356, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !351, file: !310, line: 179, baseType: !358, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !363, line: 32, flags: DIFlagFwdDecl)
!363 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!364 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !351, file: !310, line: 180, baseType: !365, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!316, !368, !207, !350, !284, !371, !331}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !370, line: 537, flags: DIFlagFwdDecl)
!370 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !185, line: 52, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !318, line: 88, baseType: !373)
!373 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !351, file: !310, line: 182, baseType: !365, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !351, file: !310, line: 184, baseType: !376, size: 64, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!46, !368, !207, !350, !379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !363, line: 625, size: 1344, elements: !381)
!381 = !{!382, !399, !621, !627, !634, !635, !640, !643, !655, !656, !659, !663, !664, !665, !666, !667, !670}
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !363, line: 628, baseType: !383, size: 128)
!383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !363, line: 628, size: 128, elements: !384)
!384 = !{!385, !390}
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !363, line: 629, baseType: !386, size: 128)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !363, line: 629, size: 128, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !386, file: !363, line: 631, baseType: !334, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !386, file: !363, line: 632, baseType: !334, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !383, file: !363, line: 635, baseType: !391, size: 128, align: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !185, line: 232, size: 128, align: 64, elements: !392)
!392 = !{!393, !395}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !391, file: !185, line: 233, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !391, file: !185, line: 234, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !394}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !380, file: !363, line: 639, baseType: !400, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !363, line: 733, size: 10240, elements: !402)
!402 = !{!403, !617}
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !363, line: 734, baseType: !404, size: 10240)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !401, file: !363, line: 734, size: 10240, elements: !405)
!405 = !{!406, !410, !424, !428, !429, !430, !431, !432, !433, !441, !442, !443, !452, !453, !462, !463, !464, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !511, !525, !528, !583, !584, !585, !588, !592, !593, !596, !597, !598, !605, !606}
!406 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !363, line: 739, baseType: !407, size: 512, align: 512)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !404, file: !363, line: 739, size: 512, align: 512, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !407, file: !363, line: 747, baseType: !234, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !404, file: !363, line: 750, baseType: !411, size: 128, offset: 512)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !412, line: 218, size: 128, elements: !413)
!412 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!413 = !{!414, !422, !423}
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !412, line: 219, baseType: !415, size: 32)
!415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !412, line: 219, size: 32, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !415, file: !412, line: 220, baseType: !214, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !415, file: !412, line: 221, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !412, line: 197, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 197, elements: !421)
!421 = !{}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !411, file: !412, line: 223, baseType: !7, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !411, file: !412, line: 224, baseType: !356, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !404, file: !363, line: 752, baseType: !425, size: 64, offset: 640)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!334, !368, !334, !334, !334, !334}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !404, file: !363, line: 756, baseType: !334, size: 64, offset: 704)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !404, file: !363, line: 757, baseType: !334, size: 64, offset: 768)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !404, file: !363, line: 760, baseType: !334, size: 64, offset: 832)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !404, file: !363, line: 761, baseType: !334, size: 64, offset: 896)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !404, file: !363, line: 763, baseType: !334, size: 64, offset: 960)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !404, file: !363, line: 764, baseType: !434, size: 64, offset: 1024)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !370, line: 299, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !370, line: 299, size: 64, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !436, file: !370, line: 299, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !440, line: 18, baseType: !334)
!440 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!441 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !404, file: !363, line: 773, baseType: !234, size: 32, offset: 1088)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !404, file: !363, line: 785, baseType: !234, size: 32, offset: 1120)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !404, file: !363, line: 795, baseType: !444, size: 64, offset: 1152)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !363, line: 726, size: 128, elements: !446)
!446 = !{!447, !451}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !445, file: !363, line: 727, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !243, line: 23, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !245, line: 31, baseType: !450)
!450 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !445, file: !363, line: 728, baseType: !46, size: 32, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !404, file: !363, line: 801, baseType: !334, size: 64, offset: 1216)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !404, file: !363, line: 804, baseType: !454, size: 64, offset: 1280)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !455, line: 13, baseType: !456)
!455 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !185, line: 181, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 179, size: 64, elements: !458)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !457, file: !185, line: 180, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !243, line: 22, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !245, line: 30, baseType: !373)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !404, file: !363, line: 806, baseType: !46, size: 32, offset: 1344)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !404, file: !363, line: 808, baseType: !214, size: 32, offset: 1376)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !404, file: !363, line: 823, baseType: !465, size: 320, offset: 1408)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !466, line: 48, size: 320, elements: !467)
!466 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!467 = !{!468, !469, !470, !475, !477}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !465, file: !466, line: 49, baseType: !454, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !465, file: !466, line: 55, baseType: !454, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !465, file: !466, line: 57, baseType: !471, size: 32, offset: 128)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !472, line: 15, size: 32, elements: !473)
!472 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !471, file: !472, line: 20, baseType: !234, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !465, file: !466, line: 59, baseType: !476, size: 32, offset: 160)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !223, line: 23, baseType: !222)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !465, file: !466, line: 60, baseType: !184, size: 128, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !404, file: !363, line: 825, baseType: !184, size: 128, offset: 1728)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !404, file: !363, line: 845, baseType: !46, size: 32, offset: 1856)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !404, file: !363, line: 849, baseType: !334, size: 64, offset: 1920)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !404, file: !363, line: 850, baseType: !334, size: 64, offset: 1984)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !404, file: !363, line: 852, baseType: !334, size: 64, offset: 2048)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !404, file: !363, line: 853, baseType: !334, size: 64, offset: 2112)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !404, file: !363, line: 854, baseType: !456, size: 64, offset: 2176)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !404, file: !363, line: 855, baseType: !334, size: 64, offset: 2240)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !404, file: !363, line: 856, baseType: !334, size: 64, offset: 2304)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !404, file: !363, line: 857, baseType: !334, size: 64, offset: 2368)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !404, file: !363, line: 858, baseType: !334, size: 64, offset: 2432)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !404, file: !363, line: 865, baseType: !490, size: 32, offset: 2496)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !491, line: 69, baseType: !492)
!491 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !491, line: 64, size: 32, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !492, file: !491, line: 65, baseType: !7, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !404, file: !363, line: 867, baseType: !214, size: 32, offset: 2528)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !404, file: !363, line: 869, baseType: !334, size: 64, offset: 2560)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !404, file: !363, line: 869, baseType: !334, size: 64, offset: 2624)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !404, file: !363, line: 869, baseType: !334, size: 64, offset: 2688)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !404, file: !363, line: 869, baseType: !334, size: 64, offset: 2752)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !404, file: !363, line: 870, baseType: !334, size: 64, offset: 2816)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !404, file: !363, line: 870, baseType: !334, size: 64, offset: 2880)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !404, file: !363, line: 870, baseType: !334, size: 64, offset: 2944)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !404, file: !363, line: 871, baseType: !334, size: 64, offset: 3008)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !404, file: !363, line: 871, baseType: !334, size: 64, offset: 3072)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !404, file: !363, line: 871, baseType: !334, size: 64, offset: 3136)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !404, file: !363, line: 871, baseType: !334, size: 64, offset: 3200)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !404, file: !363, line: 873, baseType: !508, size: 3328, offset: 3264)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 3328, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 52)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !404, file: !363, line: 875, baseType: !512, size: 1280, offset: 6592)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 1280, elements: !523)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !514, line: 22, size: 320, elements: !515)
!514 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!515 = !{!516, !517, !518, !519}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !513, file: !514, line: 23, baseType: !476, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !513, file: !514, line: 24, baseType: !460, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !513, file: !514, line: 26, baseType: !184, size: 128, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !513, file: !514, line: 28, baseType: !520, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !243, line: 20, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !245, line: 26, baseType: !46)
!523 = !{!524}
!524 = !DISubrange(count: 4)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !404, file: !363, line: 877, baseType: !526, size: 64, offset: 7872)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !363, line: 877, flags: DIFlagFwdDecl)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !404, file: !363, line: 880, baseType: !529, size: 1088, offset: 7936)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !530, line: 72, baseType: !531)
!530 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !530, line: 23, size: 1088, elements: !532)
!532 = !{!533, !534, !535, !536, !537, !540, !541, !549, !550, !577, !578, !579}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !531, file: !530, line: 28, baseType: !448, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !531, file: !530, line: 38, baseType: !456, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !531, file: !530, line: 40, baseType: !334, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !531, file: !530, line: 43, baseType: !465, size: 320, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !531, file: !530, line: 44, baseType: !538, size: 64, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !530, line: 44, flags: DIFlagFwdDecl)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !531, file: !530, line: 48, baseType: !334, size: 64, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !531, file: !530, line: 59, baseType: !542, size: 256, offset: 640)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !543, line: 66, size: 256, elements: !544)
!543 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!544 = !{!545, !546, !547, !548}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !542, file: !543, line: 67, baseType: !454, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !542, file: !543, line: 68, baseType: !476, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !542, file: !543, line: 70, baseType: !471, size: 32, offset: 96)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !542, file: !543, line: 72, baseType: !184, size: 128, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !531, file: !530, line: 60, baseType: !356, size: 64, offset: 896)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !531, file: !530, line: 61, baseType: !551, size: 64, offset: 960)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !554, line: 13, size: 1216, elements: !555)
!554 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!555 = !{!556, !557, !558, !559, !560, !561, !562, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !553, file: !554, line: 14, baseType: !356, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !553, file: !554, line: 15, baseType: !334, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !553, file: !554, line: 17, baseType: !334, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !553, file: !554, line: 17, baseType: !334, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !553, file: !554, line: 18, baseType: !334, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !553, file: !554, line: 18, baseType: !334, size: 64, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !553, file: !554, line: 19, baseType: !563, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !553, file: !554, line: 21, baseType: !320, size: 64, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !553, file: !554, line: 23, baseType: !320, size: 64, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !553, file: !554, line: 24, baseType: !320, size: 64, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !553, file: !554, line: 25, baseType: !320, size: 64, offset: 640)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !553, file: !554, line: 26, baseType: !320, size: 64, offset: 704)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !553, file: !554, line: 27, baseType: !320, size: 64, offset: 768)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !553, file: !554, line: 28, baseType: !320, size: 64, offset: 832)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !553, file: !554, line: 29, baseType: !320, size: 64, offset: 896)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !553, file: !554, line: 30, baseType: !320, size: 64, offset: 960)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !553, file: !554, line: 31, baseType: !320, size: 64, offset: 1024)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !553, file: !554, line: 32, baseType: !320, size: 64, offset: 1088)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !553, file: !554, line: 33, baseType: !320, size: 64, offset: 1152)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !531, file: !530, line: 63, baseType: !234, size: 32, offset: 1024)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !531, file: !530, line: 69, baseType: !252, size: 16, offset: 1056)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !531, file: !530, line: 70, baseType: !580, size: 16, offset: 1072)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !243, line: 18, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !245, line: 23, baseType: !582)
!582 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !404, file: !363, line: 882, baseType: !334, size: 64, offset: 9024)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !404, file: !363, line: 885, baseType: !214, size: 32, offset: 9088)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !404, file: !363, line: 886, baseType: !586, size: 64, offset: 9152)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !363, line: 732, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !404, file: !363, line: 901, baseType: !589, size: 64, offset: 9216)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !591, line: 18, flags: DIFlagFwdDecl)
!591 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!592 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !404, file: !363, line: 904, baseType: !368, size: 64, offset: 9280)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !404, file: !363, line: 906, baseType: !594, size: 64, offset: 9344)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !363, line: 906, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !404, file: !363, line: 930, baseType: !234, size: 32, offset: 9408)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !404, file: !363, line: 933, baseType: !234, size: 32, offset: 9440)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !404, file: !363, line: 935, baseType: !599, size: 64, offset: 9472)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !600, line: 103, size: 64, elements: !601)
!600 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !599, file: !600, line: 104, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !600, line: 101, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !404, file: !363, line: 940, baseType: !454, size: 64, offset: 9536)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !404, file: !363, line: 942, baseType: !607, size: 256, offset: 9600)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !113, line: 98, size: 256, elements: !608)
!608 = !{!609, !610, !611}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !607, file: !113, line: 99, baseType: !454, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !607, file: !113, line: 100, baseType: !184, size: 128, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !607, file: !113, line: 101, baseType: !612, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !113, line: 21, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !401, file: !363, line: 986, baseType: !618, offset: 10240)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: -1)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !380, file: !363, line: 640, baseType: !622, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !370, line: 297, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !370, line: 297, size: 64, elements: !624)
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !623, file: !370, line: 297, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !440, line: 19, baseType: !334)
!627 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !363, line: 646, baseType: !628, size: 64, offset: 256)
!628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !363, line: 646, size: 64, elements: !629)
!629 = !{!630, !633}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !628, file: !363, line: 647, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !363, line: 542, baseType: !334)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !628, file: !363, line: 648, baseType: !632, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !380, file: !363, line: 666, baseType: !46, size: 32, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !380, file: !363, line: 667, baseType: !636, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !363, line: 579, size: 320, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !637, file: !363, line: 580, baseType: !465, size: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !380, file: !363, line: 670, baseType: !641, size: 8, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !185, line: 35, baseType: !642)
!642 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !380, file: !363, line: 681, baseType: !644, size: 256, offset: 512)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !363, line: 678, size: 256, elements: !645)
!645 = !{!646, !654}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !644, file: !363, line: 679, baseType: !647, size: 192, align: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !648, line: 5, size: 192, align: 64, elements: !649)
!648 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!649 = !{!650, !651, !653}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !647, file: !648, line: 6, baseType: !334, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !647, file: !648, line: 7, baseType: !652, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !647, file: !648, line: 8, baseType: !652, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !644, file: !363, line: 680, baseType: !334, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !380, file: !363, line: 689, baseType: !184, size: 128, offset: 768)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !380, file: !363, line: 691, baseType: !657, size: 64, offset: 896)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !363, line: 691, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !380, file: !363, line: 694, baseType: !660, size: 64, offset: 960)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !363, line: 694, flags: DIFlagFwdDecl)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !380, file: !363, line: 697, baseType: !334, size: 64, offset: 1024)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !380, file: !363, line: 699, baseType: !368, size: 64, offset: 1088)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !380, file: !363, line: 700, baseType: !356, size: 64, offset: 1152)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !380, file: !363, line: 711, baseType: !454, size: 64, offset: 1216)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !380, file: !363, line: 717, baseType: !668, size: 64, offset: 1280)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !363, line: 717, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !380, file: !363, line: 722, baseType: !671, offset: 1344)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !363, line: 570, elements: !421)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !339, file: !310, line: 90, baseType: !673, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !339, file: !310, line: 91, baseType: !675, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !300, file: !200, line: 120, baseType: !677, size: 64, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!680, !267}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !683)
!683 = !{!684, !685, !689, !693, !699, !703}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !682, file: !14, line: 40, baseType: !13, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !682, file: !14, line: 41, baseType: !686, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!641}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !682, file: !14, line: 42, baseType: !690, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!356}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !682, file: !14, line: 43, baseType: !694, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!563, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !682, file: !14, line: 44, baseType: !700, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!563}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !682, file: !14, line: 45, baseType: !704, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !356}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !300, file: !200, line: 121, baseType: !708, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!563, !267}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !300, file: !200, line: 122, baseType: !712, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !267, !715, !722}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !591, line: 23, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !591, line: 21, size: 32, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !717, file: !591, line: 22, baseType: !720, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !185, line: 37, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !318, line: 49, baseType: !7)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !591, line: 28, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !591, line: 26, size: 32, elements: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !724, file: !591, line: 27, baseType: !727, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !185, line: 38, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !318, line: 50, baseType: !7)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !199, file: !200, line: 70, baseType: !730, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !732, line: 190, size: 1152, elements: !733)
!732 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !836, !837, !838, !839, !840, !843}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !731, file: !732, line: 191, baseType: !234, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !731, file: !732, line: 192, baseType: !234, size: 32, offset: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !731, file: !732, line: 202, baseType: !730, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !731, file: !732, line: 203, baseType: !203, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !731, file: !732, line: 205, baseType: !647, size: 192, align: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !731, file: !732, line: 207, baseType: !563, size: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !731, file: !732, line: 208, baseType: !7, size: 32, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 209, baseType: !742, size: 256, offset: 512)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 209, size: 256, elements: !743)
!743 = !{!744, !756, !760}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !742, file: !732, line: 210, baseType: !745, size: 256)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !732, line: 153, size: 256, elements: !746)
!746 = !{!747, !748, !752, !755}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !745, file: !732, line: 154, baseType: !334, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !745, file: !732, line: 156, baseType: !749, size: 64, offset: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !648, line: 12, size: 64, elements: !750)
!750 = !{!751}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !749, file: !648, line: 13, baseType: !652, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !745, file: !732, line: 162, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !732, line: 162, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !745, file: !732, line: 167, baseType: !334, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !742, file: !732, line: 211, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !732, line: 170, size: 64, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !757, file: !732, line: 171, baseType: !730, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !742, file: !732, line: 212, baseType: !761, size: 256)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !732, line: 174, size: 256, elements: !762)
!762 = !{!763, !831, !834, !835}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !761, file: !732, line: 175, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !732, line: 271, size: 768, elements: !767)
!767 = !{!768, !791, !795, !799, !804, !808, !812, !816, !817, !818, !819, !827}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !766, file: !732, line: 276, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!46, !772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !732, line: 251, size: 1216, elements: !774)
!774 = !{!775, !776, !777, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !773, file: !732, line: 253, baseType: !730, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !773, file: !732, line: 254, baseType: !368, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !773, file: !732, line: 255, baseType: !778, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !780, line: 66, flags: DIFlagFwdDecl)
!780 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!781 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !773, file: !732, line: 256, baseType: !356, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !773, file: !732, line: 259, baseType: !542, size: 256, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !773, file: !732, line: 260, baseType: !542, size: 256, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !773, file: !732, line: 261, baseType: !46, size: 32, offset: 768)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !773, file: !732, line: 262, baseType: !184, size: 128, offset: 832)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !773, file: !732, line: 263, baseType: !284, size: 64, offset: 960)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !773, file: !732, line: 265, baseType: !331, size: 64, offset: 1024)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !773, file: !732, line: 266, baseType: !641, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !773, file: !732, line: 267, baseType: !641, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !773, file: !732, line: 268, baseType: !660, size: 64, offset: 1152)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !766, file: !732, line: 277, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !772}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !766, file: !732, line: 290, baseType: !796, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!46, !778, !356}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !766, file: !732, line: 292, baseType: !800, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!356, !778, !803}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !766, file: !732, line: 293, baseType: !805, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!356, !778, !356, !803}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !766, file: !732, line: 294, baseType: !809, size: 64, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !778, !356}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !766, file: !732, line: 296, baseType: !813, size: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!316, !772, !284, !331, !371}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !766, file: !732, line: 306, baseType: !331, size: 64, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !766, file: !732, line: 313, baseType: !641, size: 8, offset: 512)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !766, file: !732, line: 314, baseType: !813, size: 64, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !766, file: !732, line: 317, baseType: !820, size: 64, offset: 640)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!823, !772, !825}
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !824, line: 59, baseType: !7)
!824 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !732, line: 31, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !766, file: !732, line: 320, baseType: !828, size: 64, offset: 704)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!46, !772, !379}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !761, file: !732, line: 176, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !732, line: 35, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !761, file: !732, line: 177, baseType: !371, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !761, file: !732, line: 178, baseType: !730, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !731, file: !732, line: 215, baseType: !356, size: 64, offset: 768)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !731, file: !732, line: 221, baseType: !448, size: 64, offset: 832)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !731, file: !732, line: 223, baseType: !254, size: 16, offset: 896)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !731, file: !732, line: 224, baseType: !326, size: 16, offset: 912)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !731, file: !732, line: 225, baseType: !841, size: 64, offset: 960)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !732, line: 36, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !731, file: !732, line: 227, baseType: !391, size: 128, align: 64, offset: 1024)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !199, file: !200, line: 71, baseType: !845, size: 32, offset: 448)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !846, line: 19, size: 32, elements: !847)
!846 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!847 = !{!848}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !845, file: !846, line: 20, baseType: !849, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !154, line: 113, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !154, line: 111, size: 32, elements: !851)
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !850, file: !154, line: 112, baseType: !234, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !199, file: !200, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !199, file: !200, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !199, file: !200, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !199, file: !200, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !199, file: !200, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !196, file: !6, line: 47, baseType: !179, size: 64, offset: 512)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !196, file: !6, line: 48, baseType: !207, size: 64, offset: 576)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !196, file: !6, line: 49, baseType: !861, size: 64, offset: 640)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !196, file: !6, line: 50, baseType: !864, size: 64, offset: 704)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !866, line: 26, size: 256, elements: !867)
!866 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !865, file: !866, line: 27, baseType: !7, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !865, file: !866, line: 28, baseType: !870, size: 192, offset: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !871, line: 43, size: 192, elements: !872)
!871 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !870, file: !871, line: 44, baseType: !476, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !870, file: !871, line: 45, baseType: !184, size: 128, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !180, file: !6, line: 418, baseType: !876, size: 64, offset: 1408)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !878)
!878 = !{!879, !880, !885, !889, !893, !897}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !877, file: !6, line: 54, baseType: !322, size: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !877, file: !6, line: 55, baseType: !881, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!316, !876, !884, !284}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !877, file: !6, line: 57, baseType: !886, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!316, !876, !884, !203, !331}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !877, file: !6, line: 59, baseType: !890, size: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !179, !203}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !877, file: !6, line: 60, baseType: !894, size: 64, offset: 320)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!46, !179}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !877, file: !6, line: 61, baseType: !898, size: 64, offset: 384)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !179}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !180, file: !6, line: 419, baseType: !203, size: 64, offset: 1472)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !180, file: !6, line: 420, baseType: !203, size: 64, offset: 1536)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !180, file: !6, line: 421, baseType: !207, size: 64, offset: 1600)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !180, file: !6, line: 424, baseType: !905, size: 64, offset: 1664)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !907)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !180, file: !6, line: 425, baseType: !909, size: 64, offset: 1728)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !180, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !180, file: !6, line: 435, baseType: !542, size: 256, offset: 1856)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !180, file: !6, line: 437, baseType: !914, size: 64, offset: 2112)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !916, line: 69, size: 320, elements: !917)
!916 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!917 = !{!918, !919, !920, !937, !939, !943, !944}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !915, file: !916, line: 70, baseType: !203, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !915, file: !916, line: 71, baseType: !179, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !915, file: !916, line: 72, baseType: !921, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !923)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !916, line: 47, size: 256, elements: !924)
!924 = !{!925, !926, !932, !936}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !923, file: !916, line: 49, baseType: !7, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !923, file: !916, line: 51, baseType: !927, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!46, !203, !930}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !915)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !923, file: !916, line: 53, baseType: !933, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!46, !284, !930}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !923, file: !916, line: 55, baseType: !704, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !915, file: !916, line: 73, baseType: !938, size: 16, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !915, file: !916, line: 74, baseType: !940, size: 8, offset: 208)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !243, line: 16, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !245, line: 20, baseType: !942)
!942 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !915, file: !916, line: 75, baseType: !242, size: 8, offset: 216)
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !916, line: 76, baseType: !945, size: 64, offset: 256)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !915, file: !916, line: 76, size: 64, elements: !946)
!946 = !{!947, !948, !955}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !945, file: !916, line: 77, baseType: !356, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !945, file: !916, line: 78, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !916, line: 86, size: 128, elements: !952)
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !951, file: !916, line: 87, baseType: !7, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !951, file: !916, line: 88, baseType: !284, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !945, file: !916, line: 79, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !958)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !916, line: 92, size: 256, elements: !959)
!959 = !{!960, !961, !962, !964, !965}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !958, file: !916, line: 94, baseType: !7, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !958, file: !916, line: 95, baseType: !7, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !958, file: !916, line: 96, baseType: !963, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !958, file: !916, line: 97, baseType: !921, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !958, file: !916, line: 98, baseType: !356, size: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !180, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !180, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !180, file: !6, line: 442, baseType: !905, size: 64, offset: 2240)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !180, file: !6, line: 443, baseType: !909, size: 64, offset: 2304)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !180, file: !6, line: 444, baseType: !641, size: 8, offset: 2368)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !180, file: !6, line: 451, baseType: !641, size: 8, offset: 2376)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !180, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !180, file: !6, line: 455, baseType: !974, size: 64, offset: 2432)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !976, line: 23, size: 96, elements: !977)
!976 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!977 = !{!978, !979, !980}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !975, file: !976, line: 24, baseType: !46, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !975, file: !976, line: 24, baseType: !46, size: 32, offset: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !975, file: !976, line: 24, baseType: !46, size: 32, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !180, file: !6, line: 458, baseType: !982, size: 64, offset: 2496)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!46}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !180, file: !6, line: 460, baseType: !986, size: 4032, align: 512, offset: 2560)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !987, size: 4032, elements: !1003)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !988)
!988 = !{!989, !990, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !987, file: !6, line: 363, baseType: !356, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !987, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !987, file: !6, line: 367, baseType: !992, size: 448, offset: 128)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !992, file: !6, line: 320, baseType: !179, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !992, file: !6, line: 321, baseType: !996, size: 384, offset: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !997, line: 40, size: 384, elements: !998)
!997 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !996, file: !997, line: 41, baseType: !1000, size: 384, align: 64)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 384, align: 64, elements: !1001)
!1001 = !{!1002}
!1002 = !DISubrange(count: 2)
!1003 = !{!1004}
!1004 = !DISubrange(count: 7)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !180, file: !6, line: 463, baseType: !1006, size: 192, offset: 6592)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1007, line: 8, size: 192, elements: !1008)
!1007 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1008 = !{!1009, !1010, !1012}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1006, file: !1007, line: 10, baseType: !7, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1006, file: !1007, line: 11, baseType: !1011, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1006, file: !1007, line: 12, baseType: !1013, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1015, line: 59, size: 48, elements: !1016)
!1015 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1022}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1014, file: !1015, line: 60, baseType: !580, size: 16)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1014, file: !1015, line: 61, baseType: !580, size: 16, offset: 16)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1014, file: !1015, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1014, file: !1015, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1014, file: !1015, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1014, file: !1015, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !180, file: !6, line: 465, baseType: !334, size: 64, offset: 6784)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !180, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !180, file: !6, line: 470, baseType: !184, size: 128, offset: 6912)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !180, file: !6, line: 471, baseType: !1027, size: 64, offset: 7040)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1029, line: 33, size: 96, elements: !1030)
!1029 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1030 = !{!1031, !1032, !1033, !1034}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1028, file: !1029, line: 37, baseType: !46, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1028, file: !1029, line: 43, baseType: !46, size: 32, offset: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1028, file: !1029, line: 45, baseType: !254, size: 16, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1028, file: !1029, line: 47, baseType: !254, size: 16, offset: 80)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !180, file: !6, line: 476, baseType: !1036, size: 64, offset: 7104)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1038)
!1038 = !{!1039, !1056, !1057, !1058}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1037, file: !6, line: 379, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1042, line: 204, baseType: !1043)
!1042 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1042, line: 197, size: 192, elements: !1044)
!1044 = !{!1045, !1048, !1049, !1050, !1052, !1054}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1043, file: !1042, line: 198, baseType: !1046, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1042, line: 21, baseType: !1047)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !245, line: 27, baseType: !7)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1043, file: !1042, line: 199, baseType: !246, size: 8, offset: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1043, file: !1042, line: 200, baseType: !246, size: 8, offset: 40)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1043, file: !1042, line: 201, baseType: !1051, size: 16, offset: 48)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1042, line: 17, baseType: !253)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1043, file: !1042, line: 202, baseType: !1053, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1042, line: 16, baseType: !449)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1043, file: !1042, line: 203, baseType: !1055, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1042, line: 22, baseType: !449)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1037, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1037, file: !6, line: 381, baseType: !284, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1037, file: !6, line: 382, baseType: !284, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !180, file: !6, line: 477, baseType: !1037, size: 256, offset: 7168)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !180, file: !6, line: 480, baseType: !1061, size: 64, offset: 7424)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !180, file: !6, line: 483, baseType: !1064, size: 64, offset: 7488)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !180, file: !6, line: 488, baseType: !284, size: 64, offset: 7552)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !180, file: !6, line: 492, baseType: !356, size: 64, offset: 7616)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !180, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !180, file: !6, line: 495, baseType: !356, size: 64, offset: 7744)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !180, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !180, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !180, file: !6, line: 500, baseType: !1073, size: 64, offset: 7872)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1075, line: 45, baseType: !1076)
!1075 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !180, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !180, file: !6, line: 504, baseType: !1079, size: 64, offset: 8000)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1082, line: 96, size: 192, elements: !1083)
!1082 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1083 = !{!1084, !1085, !1146, !1149}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1081, file: !1082, line: 97, baseType: !7, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1081, file: !1082, line: 98, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1082, line: 24, size: 3072, elements: !1088)
!1088 = !{!1089, !1091, !1092, !1093, !1094, !1108, !1109, !1110, !1111, !1130, !1131, !1132, !1143, !1144, !1145}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1087, file: !1082, line: 26, baseType: !1090, size: 128)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 128, elements: !1001)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1087, file: !1082, line: 27, baseType: !1090, size: 128, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1087, file: !1082, line: 28, baseType: !46, size: 32, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1087, file: !1082, line: 31, baseType: !214, size: 32, align: 512, offset: 512)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1087, file: !1082, line: 32, baseType: !1095, size: 960, offset: 576)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1096, line: 206, size: 960, elements: !1097)
!1096 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1097 = !{!1098, !1099, !1102, !1104, !1105, !1107}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1095, file: !1096, line: 207, baseType: !394, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1095, file: !1096, line: 208, baseType: !1100, size: 256, offset: 64)
!1100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1101, size: 256, elements: !523)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1095, file: !1096, line: 209, baseType: !1103, size: 256, offset: 320)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 256, elements: !523)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1095, file: !1096, line: 213, baseType: !320, size: 64, offset: 576)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1095, file: !1096, line: 215, baseType: !1106, size: 256, offset: 640)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 256, elements: !523)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1095, file: !1096, line: 216, baseType: !242, size: 8, offset: 896)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1087, file: !1082, line: 33, baseType: !334, size: 64, offset: 1536)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1087, file: !1082, line: 34, baseType: !334, size: 64, offset: 1600)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1087, file: !1082, line: 35, baseType: !641, size: 8, offset: 1664)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1087, file: !1082, line: 36, baseType: !1112, size: 320, offset: 1728)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1113, line: 11, size: 320, elements: !1114)
!1113 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1114 = !{!1115, !1122, !1123, !1128}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1112, file: !1113, line: 16, baseType: !1116, size: 128)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !185, line: 198, size: 128, elements: !1117)
!1117 = !{!1118, !1120}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1116, file: !185, line: 199, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1116, file: !185, line: 199, baseType: !1121, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1112, file: !1113, line: 17, baseType: !334, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1112, file: !1113, line: 18, baseType: !1124, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !1127}
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1112, file: !1113, line: 19, baseType: !1129, size: 32, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !243, line: 21, baseType: !1047)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1087, file: !1082, line: 37, baseType: !607, size: 256, offset: 2048)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1087, file: !1082, line: 38, baseType: !391, size: 128, align: 64, offset: 2304)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1087, file: !1082, line: 39, baseType: !1133, size: 64, offset: 2432)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1082, line: 49, size: 768, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1134, file: !1082, line: 50, baseType: !214, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1134, file: !1082, line: 51, baseType: !1103, size: 256, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1134, file: !1082, line: 53, baseType: !1103, size: 256, offset: 320)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1134, file: !1082, line: 54, baseType: !334, size: 64, offset: 576)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1134, file: !1082, line: 55, baseType: !1133, size: 64, offset: 640)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1134, file: !1082, line: 56, baseType: !46, size: 32, offset: 704)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1134, file: !1082, line: 57, baseType: !46, size: 32, offset: 736)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1087, file: !1082, line: 40, baseType: !334, size: 64, offset: 2496)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1087, file: !1082, line: 42, baseType: !46, size: 32, offset: 2560)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1087, file: !1082, line: 43, baseType: !1080, size: 64, offset: 2624)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1081, file: !1082, line: 99, baseType: !1147, offset: 128)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1148, line: 211, elements: !421)
!1148 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1081, file: !1082, line: 100, baseType: !1150, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1082, line: 63, size: 3008, elements: !1152)
!1152 = !{!1153, !1154, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1184}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1151, file: !1082, line: 64, baseType: !1133, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1151, file: !1082, line: 65, baseType: !1155, size: 192, offset: 64)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 192, elements: !285)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1151, file: !1082, line: 67, baseType: !46, size: 32, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1151, file: !1082, line: 68, baseType: !542, size: 256, offset: 320)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1151, file: !1082, line: 69, baseType: !214, size: 32, offset: 576)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1151, file: !1082, line: 70, baseType: !542, size: 256, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1151, file: !1082, line: 71, baseType: !334, size: 64, offset: 896)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1151, file: !1082, line: 72, baseType: !334, size: 64, offset: 960)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1151, file: !1082, line: 73, baseType: !334, size: 64, offset: 1024)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1151, file: !1082, line: 74, baseType: !334, size: 64, offset: 1088)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1151, file: !1082, line: 75, baseType: !334, size: 64, offset: 1152)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1151, file: !1082, line: 76, baseType: !334, size: 64, offset: 1216)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1151, file: !1082, line: 77, baseType: !334, size: 64, offset: 1280)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1151, file: !1082, line: 78, baseType: !334, size: 64, offset: 1344)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1151, file: !1082, line: 79, baseType: !641, size: 8, offset: 1408)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1151, file: !1082, line: 80, baseType: !334, size: 64, offset: 1472)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1151, file: !1082, line: 81, baseType: !542, size: 256, offset: 1536)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1151, file: !1082, line: 82, baseType: !865, size: 256, offset: 1792)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1151, file: !1082, line: 84, baseType: !234, size: 32, offset: 2048)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1151, file: !1082, line: 87, baseType: !334, size: 64, offset: 2112)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1151, file: !1082, line: 88, baseType: !334, size: 64, offset: 2176)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1151, file: !1082, line: 89, baseType: !1176, size: 704, offset: 2240)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !113, line: 111, size: 704, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1183}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1176, file: !113, line: 112, baseType: !607, size: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1176, file: !113, line: 113, baseType: !1112, size: 320, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1176, file: !113, line: 116, baseType: !1181, size: 64, offset: 576)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !113, line: 18, flags: DIFlagFwdDecl)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1176, file: !113, line: 117, baseType: !46, size: 32, offset: 640)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1151, file: !1082, line: 90, baseType: !1080, size: 64, offset: 2944)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !180, file: !6, line: 515, baseType: !1186, size: 64, offset: 8064)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1188, line: 117, size: 128, elements: !1189)
!1188 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1189 = !{!1190, !1191, !1192}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1187, file: !1188, line: 118, baseType: !521, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1187, file: !1188, line: 119, baseType: !521, size: 32, offset: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1187, file: !1188, line: 120, baseType: !320, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !180, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !180, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !180, file: !6, line: 520, baseType: !1196, size: 64, offset: 8192)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !180, file: !6, line: 523, baseType: !1198, size: 64, offset: 8256)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !180, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !180, file: !6, line: 525, baseType: !1203, size: 64, offset: 8384)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !180, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !180, file: !6, line: 533, baseType: !356, size: 64, offset: 8512)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !180, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !180, file: !6, line: 535, baseType: !1210, size: 64, offset: 8640)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !180, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !180, file: !6, line: 539, baseType: !46, size: 32, offset: 8736)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !180, file: !6, line: 540, baseType: !1214, size: 64, offset: 8768)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1216, line: 32, size: 64, elements: !1217)
!1216 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1215, file: !1216, line: 33, baseType: !521, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1215, file: !1216, line: 34, baseType: !521, size: 32, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !180, file: !6, line: 563, baseType: !184, size: 128, offset: 8832)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !180, file: !6, line: 565, baseType: !184, size: 128, offset: 8960)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !180, file: !6, line: 568, baseType: !1223, size: 64, offset: 9088)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !180, file: !6, line: 570, baseType: !234, size: 32, offset: 9152)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !185, line: 154, baseType: !7)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !1229, line: 421, baseType: !1129)
!1229 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !46)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !188)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thermal", file: !3, line: 120, size: 11456, elements: !1236)
!1236 = !{!1237, !2072, !2073, !2074, !2075, !2076, !2078, !2108, !2116, !2117, !2270, !2271, !2272, !2273}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1235, file: !3, line: 121, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !1240, line: 367, size: 11200, elements: !1241)
!1240 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!1241 = !{!1242, !1243, !1244, !1246, !1817, !1818, !1819, !1828, !1846, !1925, !1955, !1979, !2000, !2006, !2015, !2047, !2061, !2065, !2066, !2067, !2068, !2069, !2070, !2071}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !1239, file: !1240, line: 368, baseType: !1129, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !1239, file: !1240, line: 369, baseType: !46, size: 32, offset: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1239, file: !1240, line: 370, baseType: !1245, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !1229, line: 424, baseType: !356)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1239, file: !1240, line: 371, baseType: !1247, size: 512, offset: 128)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1248, line: 41, size: 512, elements: !1249)
!1248 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1249 = !{!1250, !1252, !1813, !1814, !1815, !1816}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1247, file: !1248, line: 42, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1247, file: !1248, line: 43, baseType: !1253, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1255)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1248, line: 125, size: 1408, elements: !1256)
!1256 = !{!1257, !1261, !1265, !1271, !1743, !1744, !1748, !1752, !1756, !1760, !1764, !1765, !1769, !1773, !1777, !1788, !1789, !1790, !1791, !1801, !1805, !1809}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1255, file: !1248, line: 126, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!1251, !1251}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1255, file: !1248, line: 127, baseType: !1262, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !1251}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1255, file: !1248, line: 128, baseType: !1266, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!641, !1269}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1247)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1255, file: !1248, line: 129, baseType: !1272, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!563, !1269, !1275}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1277)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !1278)
!1278 = !{!1279, !1280, !1282, !1285, !1286, !1337, !1428, !1429, !1430, !1431, !1432, !1439, !1609, !1622, !1632, !1636, !1638, !1639, !1640, !1644, !1651, !1652, !1655, !1658, !1682, !1683, !1684, !1687, !1688, !1689, !1690, !1720, !1721, !1722, !1725, !1728, !1737, !1738, !1739, !1740, !1741, !1742}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1277, file: !26, line: 706, baseType: !199, size: 512)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1277, file: !26, line: 707, baseType: !1281, size: 64, offset: 512)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1277, file: !26, line: 709, baseType: !1283, size: 64, offset: 576)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1277, file: !26, line: 711, baseType: !203, size: 64, offset: 640)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1277, file: !26, line: 712, baseType: !1287, size: 64, offset: 704)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1290)
!1290 = !{!1291, !1292, !1293, !1297, !1302, !1306}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1289, file: !26, line: 90, baseType: !203, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1289, file: !26, line: 91, baseType: !336, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1289, file: !26, line: 92, baseType: !1294, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!46, !1275, !279}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1289, file: !26, line: 93, baseType: !1298, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!284, !1275, !1301, !715, !722}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1289, file: !26, line: 95, baseType: !1303, size: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !1281}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1289, file: !26, line: 97, baseType: !1307, size: 64, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1309)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !1310)
!1310 = !{!1311, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1309, file: !38, line: 287, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!46, !1281}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1309, file: !38, line: 288, baseType: !1303, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1309, file: !38, line: 289, baseType: !1312, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1309, file: !38, line: 290, baseType: !1312, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1309, file: !38, line: 291, baseType: !1312, size: 64, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1309, file: !38, line: 292, baseType: !1312, size: 64, offset: 320)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1309, file: !38, line: 293, baseType: !1312, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1309, file: !38, line: 294, baseType: !1312, size: 64, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1309, file: !38, line: 295, baseType: !1312, size: 64, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1309, file: !38, line: 296, baseType: !1312, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1309, file: !38, line: 297, baseType: !1312, size: 64, offset: 640)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1309, file: !38, line: 298, baseType: !1312, size: 64, offset: 704)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1309, file: !38, line: 299, baseType: !1312, size: 64, offset: 768)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1309, file: !38, line: 300, baseType: !1312, size: 64, offset: 832)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1309, file: !38, line: 301, baseType: !1312, size: 64, offset: 896)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1309, file: !38, line: 302, baseType: !1312, size: 64, offset: 960)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1309, file: !38, line: 303, baseType: !1312, size: 64, offset: 1024)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1309, file: !38, line: 304, baseType: !1312, size: 64, offset: 1088)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1309, file: !38, line: 305, baseType: !1312, size: 64, offset: 1152)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1309, file: !38, line: 306, baseType: !1312, size: 64, offset: 1216)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1309, file: !38, line: 307, baseType: !1312, size: 64, offset: 1280)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1309, file: !38, line: 308, baseType: !1312, size: 64, offset: 1344)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1309, file: !38, line: 309, baseType: !1312, size: 64, offset: 1408)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1277, file: !26, line: 714, baseType: !1338, size: 64, offset: 768)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1340)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1341, line: 80, size: 1344, elements: !1342)
!1341 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1427}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1340, file: !1341, line: 81, baseType: !203, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1340, file: !1341, line: 82, baseType: !203, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1340, file: !1341, line: 83, baseType: !336, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1340, file: !1341, line: 84, baseType: !336, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1340, file: !1341, line: 85, baseType: !336, size: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1340, file: !1341, line: 87, baseType: !1349, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!46, !1281, !1352}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360, !1361, !1377, !1390, !1391, !1392, !1393, !1394, !1402, !1403, !1404, !1405, !1406, !1407}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1353, file: !20, line: 97, baseType: !203, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1353, file: !20, line: 98, baseType: !1338, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1353, file: !20, line: 100, baseType: !179, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1353, file: !20, line: 101, baseType: !203, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1353, file: !20, line: 103, baseType: !641, size: 8, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1353, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1353, file: !20, line: 106, baseType: !1362, size: 64, offset: 320)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1365, line: 282, size: 1600, elements: !1366)
!1365 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1366 = !{!1367, !1371, !1372, !1376}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1364, file: !1365, line: 283, baseType: !1368, size: 256)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 256, elements: !1369)
!1369 = !{!1370}
!1370 = !DISubrange(count: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1364, file: !1365, line: 284, baseType: !1368, size: 256, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1364, file: !1365, line: 285, baseType: !1373, size: 1024, offset: 512)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 1024, elements: !1374)
!1374 = !{!1375}
!1375 = !DISubrange(count: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1364, file: !1365, line: 286, baseType: !563, size: 64, offset: 1536)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1353, file: !20, line: 107, baseType: !1378, size: 64, offset: 384)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1380)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1365, line: 217, size: 256, elements: !1381)
!1381 = !{!1382, !1386, !1388, !1389}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1380, file: !1365, line: 218, baseType: !1383, size: 128)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 128, elements: !1384)
!1384 = !{!1385}
!1385 = !DISubrange(count: 16)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1380, file: !1365, line: 219, baseType: !1387, size: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1365, line: 15, baseType: !334)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1380, file: !1365, line: 220, baseType: !1047, size: 32, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1380, file: !1365, line: 221, baseType: !1047, size: 32, offset: 224)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1353, file: !20, line: 109, baseType: !1312, size: 64, offset: 448)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1353, file: !20, line: 110, baseType: !1303, size: 64, offset: 512)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1353, file: !20, line: 111, baseType: !1312, size: 64, offset: 576)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1353, file: !20, line: 112, baseType: !1303, size: 64, offset: 640)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1353, file: !20, line: 113, baseType: !1395, size: 64, offset: 704)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!46, !1281, !1398}
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1399)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1400)
!1400 = !{!1401}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1399, file: !38, line: 59, baseType: !46, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1353, file: !20, line: 114, baseType: !1312, size: 64, offset: 768)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1353, file: !20, line: 115, baseType: !336, size: 64, offset: 832)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1353, file: !20, line: 116, baseType: !336, size: 64, offset: 896)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1353, file: !20, line: 118, baseType: !1307, size: 64, offset: 960)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1353, file: !20, line: 119, baseType: !1303, size: 64, offset: 1024)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1353, file: !20, line: 121, baseType: !1408, size: 64, offset: 1088)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1340, file: !1341, line: 88, baseType: !1294, size: 64, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1340, file: !1341, line: 89, baseType: !1312, size: 64, offset: 448)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1340, file: !1341, line: 90, baseType: !1303, size: 64, offset: 512)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1340, file: !1341, line: 91, baseType: !1303, size: 64, offset: 576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1340, file: !1341, line: 92, baseType: !1303, size: 64, offset: 640)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1340, file: !1341, line: 94, baseType: !1312, size: 64, offset: 704)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1340, file: !1341, line: 95, baseType: !1312, size: 64, offset: 768)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1340, file: !1341, line: 97, baseType: !1395, size: 64, offset: 832)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1340, file: !1341, line: 98, baseType: !1312, size: 64, offset: 896)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1340, file: !1341, line: 100, baseType: !1312, size: 64, offset: 960)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1340, file: !1341, line: 102, baseType: !1312, size: 64, offset: 1024)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1340, file: !1341, line: 103, baseType: !1303, size: 64, offset: 1088)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1340, file: !1341, line: 105, baseType: !1307, size: 64, offset: 1152)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1340, file: !1341, line: 107, baseType: !1424, size: 64, offset: 1216)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1426)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1341, line: 107, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1340, file: !1341, line: 109, baseType: !641, size: 8, offset: 1280)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1277, file: !26, line: 715, baseType: !1352, size: 64, offset: 832)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1277, file: !26, line: 717, baseType: !356, size: 64, offset: 896)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1277, file: !26, line: 719, baseType: !356, size: 64, offset: 960)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1277, file: !26, line: 721, baseType: !542, size: 256, offset: 1024)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1277, file: !26, line: 725, baseType: !1433, size: 448, offset: 1280)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1438}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1433, file: !26, line: 518, baseType: !184, size: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1433, file: !26, line: 519, baseType: !184, size: 128, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1433, file: !26, line: 520, baseType: !184, size: 128, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1433, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1277, file: !26, line: 726, baseType: !1440, size: 2496, offset: 1728)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1486, !1487, !1488, !1489, !1490, !1491, !1562, !1563, !1564, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1602, !1606}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1440, file: !38, line: 664, baseType: !1398, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1440, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1440, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1440, file: !38, line: 667, baseType: !641, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1440, file: !38, line: 668, baseType: !641, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1440, file: !38, line: 669, baseType: !641, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1440, file: !38, line: 670, baseType: !641, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1440, file: !38, line: 671, baseType: !641, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1440, file: !38, line: 672, baseType: !641, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1440, file: !38, line: 673, baseType: !641, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1440, file: !38, line: 674, baseType: !641, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1440, file: !38, line: 675, baseType: !1129, size: 32, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1440, file: !38, line: 676, baseType: !214, size: 32, offset: 96)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1440, file: !38, line: 678, baseType: !184, size: 128, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1440, file: !38, line: 679, baseType: !865, size: 256, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1440, file: !38, line: 680, baseType: !1458, size: 64, offset: 512)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1460, line: 43, size: 1536, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1469, !1470, !1471, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1459, file: !1460, line: 44, baseType: !203, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1459, file: !1460, line: 45, baseType: !46, size: 32, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1459, file: !1460, line: 46, baseType: !184, size: 128, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1459, file: !1460, line: 47, baseType: !214, size: 32, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1459, file: !1460, line: 48, baseType: !1467, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1459, file: !1460, line: 49, baseType: !1112, size: 320, offset: 384)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1459, file: !1460, line: 50, baseType: !334, size: 64, offset: 704)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1459, file: !1460, line: 51, baseType: !1472, size: 64, offset: 768)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1473, line: 29, baseType: !460)
!1473 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1459, file: !1460, line: 52, baseType: !1472, size: 64, offset: 832)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1459, file: !1460, line: 53, baseType: !1472, size: 64, offset: 896)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1459, file: !1460, line: 54, baseType: !1472, size: 64, offset: 960)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1459, file: !1460, line: 55, baseType: !1472, size: 64, offset: 1024)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1459, file: !1460, line: 56, baseType: !334, size: 64, offset: 1088)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1459, file: !1460, line: 57, baseType: !334, size: 64, offset: 1152)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1459, file: !1460, line: 58, baseType: !334, size: 64, offset: 1216)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1459, file: !1460, line: 59, baseType: !334, size: 64, offset: 1280)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1459, file: !1460, line: 60, baseType: !334, size: 64, offset: 1344)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1459, file: !1460, line: 61, baseType: !1281, size: 64, offset: 1408)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1459, file: !1460, line: 62, baseType: !641, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1459, file: !1460, line: 63, baseType: !641, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1440, file: !38, line: 681, baseType: !641, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1440, file: !38, line: 682, baseType: !641, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1440, file: !38, line: 683, baseType: !641, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1440, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1440, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1440, file: !38, line: 690, baseType: !1492, size: 512, offset: 640)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1493)
!1493 = !{!1494, !1500, !1501, !1506, !1558, !1559, !1560, !1561}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1492, file: !33, line: 119, baseType: !1495, size: 256)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1496, line: 9, size: 256, elements: !1497)
!1496 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1495, file: !1496, line: 10, baseType: !647, size: 192, align: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1495, file: !1496, line: 11, baseType: !1472, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1492, file: !33, line: 120, baseType: !1472, size: 64, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1492, file: !33, line: 121, baseType: !1502, size: 64, offset: 320)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!32, !1505}
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1492, file: !33, line: 122, baseType: !1507, size: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1509)
!1509 = !{!1510, !1535, !1536, !1539, !1544, !1545, !1553, !1557}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1508, file: !33, line: 160, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1513)
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1512, file: !33, line: 216, baseType: !476, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1512, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1512, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1512, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1512, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1512, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1512, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1512, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1512, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1512, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1512, file: !33, line: 227, baseType: !254, size: 16, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1512, file: !33, line: 228, baseType: !254, size: 16, offset: 208)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1512, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1512, file: !33, line: 235, baseType: !1472, size: 64, offset: 256)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1512, file: !33, line: 236, baseType: !1505, size: 64, offset: 320)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1512, file: !33, line: 237, baseType: !1472, size: 64, offset: 384)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1512, file: !33, line: 238, baseType: !1505, size: 64, offset: 448)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1512, file: !33, line: 239, baseType: !1532, size: 4096, align: 512, offset: 512)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1508, size: 4096, align: 512, elements: !1533)
!1533 = !{!1534}
!1534 = !DISubrange(count: 8)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1508, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1508, file: !33, line: 162, baseType: !1537, size: 32, offset: 96)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !185, line: 32, baseType: !1538)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !318, line: 96, baseType: !46)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1508, file: !33, line: 163, baseType: !1540, size: 32, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !491, line: 274, baseType: !1541)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !491, line: 274, size: 32, elements: !1542)
!1542 = !{!1543}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1541, file: !491, line: 274, baseType: !490, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1508, file: !33, line: 164, baseType: !1505, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1508, file: !33, line: 165, baseType: !1546, size: 128, offset: 256)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1496, line: 14, size: 128, elements: !1547)
!1547 = !{!1548}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1546, file: !1496, line: 15, baseType: !1549, size: 128)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !648, line: 26, size: 128, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1549, file: !648, line: 27, baseType: !749, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1549, file: !648, line: 28, baseType: !652, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1508, file: !33, line: 166, baseType: !1554, size: 64, offset: 384)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!1472}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1508, file: !33, line: 167, baseType: !1472, size: 64, offset: 448)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1492, file: !33, line: 123, baseType: !242, size: 8, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1492, file: !33, line: 124, baseType: !242, size: 8, offset: 456)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1492, file: !33, line: 125, baseType: !242, size: 8, offset: 464)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1492, file: !33, line: 126, baseType: !242, size: 8, offset: 472)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1440, file: !38, line: 691, baseType: !448, size: 64, offset: 1152)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1440, file: !38, line: 692, baseType: !607, size: 256, offset: 1216)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1440, file: !38, line: 693, baseType: !1565, size: 192, offset: 1472)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1566, line: 41, baseType: !1567)
!1566 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1566, line: 37, size: 192, elements: !1568)
!1568 = !{!1569, !1570}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1567, file: !1566, line: 38, baseType: !214, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1567, file: !1566, line: 39, baseType: !184, size: 128, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1440, file: !38, line: 694, baseType: !1467, size: 64, offset: 1664)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1440, file: !38, line: 695, baseType: !234, size: 32, offset: 1728)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1440, file: !38, line: 696, baseType: !234, size: 32, offset: 1760)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1440, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1440, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1440, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1440, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1440, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1440, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1440, file: !38, line: 703, baseType: !641, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1440, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1440, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1440, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1440, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1440, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1440, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1440, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1440, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1440, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1440, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1440, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1440, file: !38, line: 715, baseType: !448, size: 64, offset: 2048)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1440, file: !38, line: 716, baseType: !448, size: 64, offset: 2112)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1440, file: !38, line: 717, baseType: !448, size: 64, offset: 2176)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1440, file: !38, line: 718, baseType: !448, size: 64, offset: 2240)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1440, file: !38, line: 720, baseType: !1597, size: 64, offset: 2304)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1599)
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1598, file: !38, line: 633, baseType: !214, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1598, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1440, file: !38, line: 721, baseType: !1603, size: 64, offset: 2368)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1281, !521}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1440, file: !38, line: 722, baseType: !1607, size: 64, offset: 2432)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1277, file: !26, line: 727, baseType: !1610, size: 64, offset: 4224)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1619, !1620, !1621}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1611, file: !38, line: 743, baseType: !1309, size: 1472)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1611, file: !38, line: 744, baseType: !1312, size: 64, offset: 1472)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1611, file: !38, line: 745, baseType: !1616, size: 64, offset: 1536)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !1281, !641}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1611, file: !38, line: 746, baseType: !1312, size: 64, offset: 1600)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1611, file: !38, line: 747, baseType: !1303, size: 64, offset: 1664)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1611, file: !38, line: 748, baseType: !1303, size: 64, offset: 1728)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1277, file: !26, line: 736, baseType: !1623, size: 128, offset: 4288)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1624)
!1624 = !{!1625, !1629}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1623, file: !26, line: 531, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1628, line: 13, flags: DIFlagFwdDecl)
!1628 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1623, file: !26, line: 532, baseType: !1630, size: 64, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1277, file: !26, line: 738, baseType: !1633, size: 64, offset: 4416)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1635)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1277, file: !26, line: 740, baseType: !1637, size: 64, offset: 4480)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1277, file: !26, line: 741, baseType: !448, size: 64, offset: 4544)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1277, file: !26, line: 746, baseType: !448, size: 64, offset: 4608)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1277, file: !26, line: 747, baseType: !1641, size: 64, offset: 4672)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1643)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1277, file: !26, line: 749, baseType: !1645, size: 64, offset: 4736)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1647)
!1647 = !{!1648, !1649, !1650}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1646, file: !26, line: 433, baseType: !7, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1646, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1646, file: !26, line: 435, baseType: !334, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1277, file: !26, line: 751, baseType: !184, size: 128, offset: 4800)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1277, file: !26, line: 762, baseType: !1653, size: 64, offset: 4928)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1277, file: !26, line: 770, baseType: !1656, offset: 4992)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1657, line: 5, elements: !421)
!1657 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1277, file: !26, line: 772, baseType: !1659, size: 64, offset: 4992)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1661, line: 48, size: 1152, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1662 = !{!1663, !1664, !1666, !1667, !1668, !1676, !1677, !1678, !1679, !1680, !1681}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1660, file: !1661, line: 49, baseType: !203, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1660, file: !1661, line: 50, baseType: !1665, size: 32, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1661, line: 25, baseType: !1129)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1660, file: !1661, line: 51, baseType: !203, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1660, file: !1661, line: 52, baseType: !1247, size: 512, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1660, file: !1661, line: 54, baseType: !1669, size: 64, offset: 704)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1661, line: 28, size: 256, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1670, file: !1661, line: 29, baseType: !284, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1670, file: !1661, line: 30, baseType: !46, size: 32, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1670, file: !1661, line: 31, baseType: !356, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1670, file: !1661, line: 32, baseType: !1669, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1660, file: !1661, line: 55, baseType: !1669, size: 64, offset: 768)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1660, file: !1661, line: 56, baseType: !1659, size: 64, offset: 832)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1660, file: !1661, line: 57, baseType: !1659, size: 64, offset: 896)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1660, file: !1661, line: 58, baseType: !1659, size: 64, offset: 960)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1660, file: !1661, line: 62, baseType: !334, size: 64, offset: 1024)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1660, file: !1661, line: 63, baseType: !356, size: 64, offset: 1088)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1277, file: !26, line: 773, baseType: !1251, size: 64, offset: 5056)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1277, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1277, file: !26, line: 778, baseType: !1685, size: 32, offset: 5152)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !185, line: 21, baseType: !1686)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !185, line: 18, baseType: !1129)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1277, file: !26, line: 779, baseType: !1129, size: 32, offset: 5184)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1277, file: !26, line: 781, baseType: !214, size: 32, offset: 5216)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1277, file: !26, line: 782, baseType: !184, size: 128, offset: 5248)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1277, file: !26, line: 784, baseType: !1691, size: 64, offset: 5376)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1693)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1694, line: 52, size: 768, elements: !1695)
!1694 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1695 = !{!1696, !1697, !1698, !1699, !1700, !1704, !1708, !1709, !1710, !1711, !1715, !1719}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1693, file: !1694, line: 53, baseType: !203, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1693, file: !1694, line: 55, baseType: !336, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1693, file: !1694, line: 56, baseType: !336, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1693, file: !1694, line: 58, baseType: !1294, size: 64, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1693, file: !1694, line: 59, baseType: !1701, size: 64, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!284, !1275, !1301}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1693, file: !1694, line: 61, baseType: !1705, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !1691}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1693, file: !1694, line: 62, baseType: !1303, size: 64, offset: 384)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1693, file: !1694, line: 64, baseType: !1312, size: 64, offset: 448)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1693, file: !1694, line: 66, baseType: !680, size: 64, offset: 512)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1693, file: !1694, line: 67, baseType: !1712, size: 64, offset: 576)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!563, !1275}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1693, file: !1694, line: 69, baseType: !1716, size: 64, offset: 640)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{null, !1275, !715, !722}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1693, file: !1694, line: 71, baseType: !1307, size: 64, offset: 704)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1277, file: !26, line: 785, baseType: !336, size: 64, offset: 5440)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1277, file: !26, line: 787, baseType: !1303, size: 64, offset: 5504)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1277, file: !26, line: 788, baseType: !1723, size: 64, offset: 5568)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1277, file: !26, line: 789, baseType: !1726, size: 64, offset: 5632)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1277, file: !26, line: 791, baseType: !1729, size: 64, offset: 5696)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1731)
!1731 = !{!1732, !1733, !1734, !1735, !1736}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1730, file: !26, line: 598, baseType: !53, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1730, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1730, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1730, file: !26, line: 601, baseType: !641, size: 8, offset: 96)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1730, file: !26, line: 602, baseType: !641, size: 8, offset: 104)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1277, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1277, file: !26, line: 795, baseType: !641, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1277, file: !26, line: 796, baseType: !641, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1277, file: !26, line: 797, baseType: !641, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1277, file: !26, line: 798, baseType: !641, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1277, file: !26, line: 799, baseType: !641, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1255, file: !1248, line: 131, baseType: !1266, size: 64, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1255, file: !1248, line: 133, baseType: !1745, size: 64, offset: 320)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!78, !1269}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1255, file: !1248, line: 134, baseType: !1749, size: 64, offset: 384)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!641, !1269, !203}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1255, file: !1248, line: 136, baseType: !1753, size: 64, offset: 448)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!46, !1269, !203, !7, !356, !331}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1255, file: !1248, line: 141, baseType: !1757, size: 64, offset: 512)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!46, !1269, !203, !1196, !331}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1255, file: !1248, line: 144, baseType: !1761, size: 64, offset: 576)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!203, !1269}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1255, file: !1248, line: 145, baseType: !1761, size: 64, offset: 640)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1255, file: !1248, line: 146, baseType: !1766, size: 64, offset: 704)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!1251, !1269}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1255, file: !1248, line: 148, baseType: !1770, size: 64, offset: 768)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!1251, !1269, !1251}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1255, file: !1248, line: 151, baseType: !1774, size: 64, offset: 832)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1251, !1269, !203}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1255, file: !1248, line: 153, baseType: !1778, size: 64, offset: 896)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!46, !1269, !203, !203, !7, !7, !1781}
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1248, line: 94, size: 640, elements: !1783)
!1783 = !{!1784, !1785, !1786}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1782, file: !1248, line: 95, baseType: !1251, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1782, file: !1248, line: 96, baseType: !7, size: 32, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1782, file: !1248, line: 97, baseType: !1787, size: 512, offset: 128)
!1787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 512, elements: !1533)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1255, file: !1248, line: 158, baseType: !1770, size: 64, offset: 960)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1255, file: !1248, line: 161, baseType: !1766, size: 64, offset: 1024)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1255, file: !1248, line: 163, baseType: !1258, size: 64, offset: 1088)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1255, file: !1248, line: 164, baseType: !1792, size: 64, offset: 1152)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!46, !1269, !1795}
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1248, line: 73, size: 128, elements: !1797)
!1797 = !{!1798, !1799, !1800}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1796, file: !1248, line: 74, baseType: !7, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1796, file: !1248, line: 75, baseType: !7, size: 32, offset: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1796, file: !1248, line: 76, baseType: !1269, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1255, file: !1248, line: 166, baseType: !1802, size: 64, offset: 1216)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!356, !1251, !46}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1255, file: !1248, line: 167, baseType: !1806, size: 64, offset: 1280)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!46, !1269, !7}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1255, file: !1248, line: 168, baseType: !1810, size: 64, offset: 1344)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!46, !1251}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1247, file: !1248, line: 44, baseType: !1281, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1247, file: !1248, line: 45, baseType: !184, size: 128, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1247, file: !1248, line: 46, baseType: !184, size: 128, offset: 320)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1247, file: !1248, line: 47, baseType: !242, size: 8, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !1239, file: !1240, line: 372, baseType: !184, size: 128, offset: 640)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !1239, file: !1240, line: 373, baseType: !184, size: 128, offset: 768)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1239, file: !1240, line: 374, baseType: !1820, size: 32, offset: 896)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !1240, line: 181, size: 32, elements: !1821)
!1821 = !{!1822, !1823, !1824, !1825, !1826, !1827}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1820, file: !1240, line: 182, baseType: !1129, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1820, file: !1240, line: 183, baseType: !1129, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1820, file: !1240, line: 184, baseType: !1129, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1820, file: !1240, line: 185, baseType: !1129, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1820, file: !1240, line: 186, baseType: !1129, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1820, file: !1240, line: 187, baseType: !1129, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1239, file: !1240, line: 375, baseType: !1829, size: 32, offset: 928)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !1240, line: 192, size: 32, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1829, file: !1240, line: 193, baseType: !1129, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1829, file: !1240, line: 194, baseType: !1129, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1829, file: !1240, line: 195, baseType: !1129, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1829, file: !1240, line: 196, baseType: !1129, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1829, file: !1240, line: 197, baseType: !1129, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1829, file: !1240, line: 198, baseType: !1129, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1829, file: !1240, line: 199, baseType: !1129, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1829, file: !1240, line: 200, baseType: !1129, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1829, file: !1240, line: 201, baseType: !1129, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1829, file: !1240, line: 202, baseType: !1129, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1829, file: !1240, line: 203, baseType: !1129, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1829, file: !1240, line: 204, baseType: !1129, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1829, file: !1240, line: 205, baseType: !1129, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1829, file: !1240, line: 206, baseType: !1129, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1829, file: !1240, line: 207, baseType: !1129, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !1239, file: !1240, line: 376, baseType: !1847, size: 960, offset: 960)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !1240, line: 238, size: 960, elements: !1848)
!1848 = !{!1849, !1852, !1853, !1861, !1863, !1864, !1865, !1870, !1875}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1847, file: !1240, line: 239, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !1240, line: 220, baseType: !1851)
!1851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 64, elements: !1533)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1847, file: !1240, line: 240, baseType: !46, size: 32, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1847, file: !1240, line: 241, baseType: !1854, size: 32, offset: 96)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !1240, line: 230, size: 32, elements: !1855)
!1855 = !{!1856, !1857, !1858, !1859, !1860}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1854, file: !1240, line: 231, baseType: !1129, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1854, file: !1240, line: 232, baseType: !1129, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1854, file: !1240, line: 233, baseType: !1129, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1854, file: !1240, line: 234, baseType: !1129, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1854, file: !1240, line: 235, baseType: !1129, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1847, file: !1240, line: 242, baseType: !1862, size: 64, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !1240, line: 221, baseType: !448)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1847, file: !1240, line: 243, baseType: !284, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1847, file: !1240, line: 244, baseType: !184, size: 128, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1847, file: !1240, line: 245, baseType: !1866, size: 320, offset: 384)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !1240, line: 222, baseType: !1867)
!1867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 320, elements: !1868)
!1868 = !{!1869}
!1869 = !DISubrange(count: 40)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1847, file: !1240, line: 246, baseType: !1871, size: 160, offset: 704)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !1240, line: 223, baseType: !1872)
!1872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 160, elements: !1873)
!1873 = !{!1874}
!1874 = !DISubrange(count: 20)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1847, file: !1240, line: 247, baseType: !1876, size: 64, offset: 896)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !1229, line: 908, size: 192, elements: !1878)
!1878 = !{!1879, !1881, !1886, !1892, !1899, !1905, !1911, !1919}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1877, file: !1229, line: 909, baseType: !1880, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !1229, line: 644, baseType: !1129)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1877, file: !1229, line: 913, baseType: !1882, size: 128)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1877, file: !1229, line: 910, size: 128, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1882, file: !1229, line: 911, baseType: !1880, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1882, file: !1229, line: 912, baseType: !448, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1877, file: !1229, line: 919, baseType: !1887, size: 128)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1877, file: !1229, line: 915, size: 128, elements: !1888)
!1888 = !{!1889, !1890, !1891}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1887, file: !1229, line: 916, baseType: !1880, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1887, file: !1229, line: 917, baseType: !1129, size: 32, offset: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1887, file: !1229, line: 918, baseType: !284, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1877, file: !1229, line: 925, baseType: !1893, size: 128)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1877, file: !1229, line: 921, size: 128, elements: !1894)
!1894 = !{!1895, !1896, !1897}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1893, file: !1229, line: 922, baseType: !1880, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1893, file: !1229, line: 923, baseType: !1129, size: 32, offset: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1893, file: !1229, line: 924, baseType: !1898, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1877, file: !1229, line: 931, baseType: !1900, size: 128)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1877, file: !1229, line: 927, size: 128, elements: !1901)
!1901 = !{!1902, !1903, !1904}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1900, file: !1229, line: 928, baseType: !1880, size: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1900, file: !1229, line: 929, baseType: !1129, size: 32, offset: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1900, file: !1229, line: 930, baseType: !1876, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1877, file: !1229, line: 937, baseType: !1906, size: 128)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1877, file: !1229, line: 933, size: 128, elements: !1907)
!1907 = !{!1908, !1909, !1910}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1906, file: !1229, line: 934, baseType: !1880, size: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1906, file: !1229, line: 935, baseType: !1880, size: 32, offset: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1906, file: !1229, line: 936, baseType: !1245, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1877, file: !1229, line: 944, baseType: !1912, size: 192)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1877, file: !1229, line: 939, size: 192, elements: !1913)
!1913 = !{!1914, !1915, !1916, !1918}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1912, file: !1229, line: 940, baseType: !1880, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1912, file: !1229, line: 941, baseType: !1129, size: 32, offset: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1912, file: !1229, line: 942, baseType: !1917, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !1229, line: 128, baseType: !448)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1912, file: !1229, line: 943, baseType: !1129, size: 32, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1877, file: !1229, line: 950, baseType: !1920, size: 96)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1877, file: !1229, line: 946, size: 96, elements: !1921)
!1921 = !{!1922, !1923, !1924}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1920, file: !1229, line: 947, baseType: !1880, size: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1920, file: !1229, line: 948, baseType: !1129, size: 32, offset: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1920, file: !1229, line: 949, baseType: !1129, size: 32, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1239, file: !1240, line: 377, baseType: !1926, size: 1408, offset: 1920)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !1240, line: 280, size: 1408, elements: !1927)
!1927 = !{!1928, !1929, !1939, !1954}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1926, file: !1240, line: 281, baseType: !46, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1926, file: !1240, line: 282, baseType: !1930, size: 32, offset: 32)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !1240, line: 259, size: 32, elements: !1931)
!1931 = !{!1932, !1933, !1934, !1935, !1936, !1937, !1938}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1930, file: !1240, line: 260, baseType: !1129, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1930, file: !1240, line: 261, baseType: !1129, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1930, file: !1240, line: 262, baseType: !1129, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1930, file: !1240, line: 263, baseType: !1129, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1930, file: !1240, line: 264, baseType: !1129, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1930, file: !1240, line: 265, baseType: !1129, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1930, file: !1240, line: 266, baseType: !1129, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1926, file: !1240, line: 283, baseType: !1940, size: 1280, offset: 64)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1941, size: 1280, elements: !1952)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !1240, line: 269, size: 256, elements: !1942)
!1942 = !{!1943, !1949, !1950, !1951}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1941, file: !1240, line: 274, baseType: !1944, size: 8)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1941, file: !1240, line: 270, size: 8, elements: !1945)
!1945 = !{!1946, !1947, !1948}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1944, file: !1240, line: 271, baseType: !242, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1944, file: !1240, line: 272, baseType: !242, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1944, file: !1240, line: 273, baseType: !242, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1941, file: !1240, line: 275, baseType: !46, size: 32, offset: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1941, file: !1240, line: 276, baseType: !46, size: 32, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1941, file: !1240, line: 277, baseType: !184, size: 128, offset: 128)
!1952 = !{!1953}
!1953 = !DISubrange(count: 5)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1926, file: !1240, line: 284, baseType: !242, size: 8, offset: 1344)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1239, file: !1240, line: 378, baseType: !1956, size: 640, offset: 3328)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !1240, line: 330, size: 640, elements: !1957)
!1957 = !{!1958, !1959, !1960, !1961, !1962, !1967, !1976, !1977, !1978}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1956, file: !1240, line: 331, baseType: !1245, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1956, file: !1240, line: 332, baseType: !448, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1956, file: !1240, line: 333, baseType: !448, size: 64, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1956, file: !1240, line: 334, baseType: !184, size: 128, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1956, file: !1240, line: 335, baseType: !1963, size: 8, offset: 320)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !1240, line: 320, size: 8, elements: !1964)
!1964 = !{!1965, !1966}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1963, file: !1240, line: 321, baseType: !242, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1963, file: !1240, line: 322, baseType: !242, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1956, file: !1240, line: 336, baseType: !1968, size: 128, offset: 384)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !1240, line: 325, size: 128, elements: !1969)
!1969 = !{!1970, !1975}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1968, file: !1240, line: 326, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{null, !1974}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1968, file: !1240, line: 327, baseType: !1281, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1956, file: !1240, line: 337, baseType: !1458, size: 64, offset: 512)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1956, file: !1240, line: 338, baseType: !46, size: 32, offset: 576)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1956, file: !1240, line: 339, baseType: !46, size: 32, offset: 608)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1239, file: !1240, line: 379, baseType: !1980, size: 192, offset: 3968)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !1240, line: 312, size: 192, elements: !1981)
!1981 = !{!1982, !1983, !1987, !1988}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1980, file: !1240, line: 313, baseType: !46, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1980, file: !1240, line: 314, baseType: !1984, size: 8, offset: 32)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !1240, line: 298, size: 8, elements: !1985)
!1985 = !{!1986}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1984, file: !1240, line: 299, baseType: !242, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1980, file: !1240, line: 315, baseType: !46, size: 32, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1980, file: !1240, line: 316, baseType: !1989, size: 64, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !1240, line: 302, size: 64, elements: !1991)
!1991 = !{!1992, !1997, !1998, !1999}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1990, file: !1240, line: 306, baseType: !1993, size: 8)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1990, file: !1240, line: 303, size: 8, elements: !1994)
!1994 = !{!1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1993, file: !1240, line: 304, baseType: !242, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1993, file: !1240, line: 305, baseType: !242, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1990, file: !1240, line: 307, baseType: !242, size: 8, offset: 8)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1990, file: !1240, line: 308, baseType: !242, size: 8, offset: 16)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1990, file: !1240, line: 309, baseType: !46, size: 32, offset: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1239, file: !1240, line: 380, baseType: !2001, size: 64, offset: 4160)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !1240, line: 212, size: 64, elements: !2002)
!2002 = !{!2003}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2001, file: !1240, line: 213, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !1240, line: 86, flags: DIFlagFwdDecl)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1239, file: !1240, line: 381, baseType: !2007, size: 384, offset: 4224)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !1240, line: 357, size: 384, elements: !2008)
!2008 = !{!2009, !2012, !2013, !2014}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2007, file: !1240, line: 358, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1877)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2007, file: !1240, line: 359, baseType: !184, size: 128, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2007, file: !1240, line: 360, baseType: !2010, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2007, file: !1240, line: 361, baseType: !184, size: 128, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1239, file: !1240, line: 382, baseType: !2016, size: 64, offset: 4608)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !1240, line: 124, size: 1216, elements: !2018)
!2018 = !{!2019, !2020, !2021, !2026, !2030, !2034, !2035, !2036}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2017, file: !1240, line: 125, baseType: !1378, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2017, file: !1240, line: 126, baseType: !184, size: 128, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2017, file: !1240, line: 127, baseType: !2022, size: 64, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!641, !203, !2025}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2017, file: !1240, line: 128, baseType: !2027, size: 64, offset: 256)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!46, !1238, !1378}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2017, file: !1240, line: 129, baseType: !2031, size: 64, offset: 320)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !1238}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2017, file: !1240, line: 130, baseType: !1303, size: 64, offset: 384)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2017, file: !1240, line: 131, baseType: !1303, size: 64, offset: 448)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2017, file: !1240, line: 132, baseType: !2037, size: 704, offset: 512)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !1240, line: 110, size: 704, elements: !2038)
!2038 = !{!2039, !2040, !2044, !2045, !2046}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2037, file: !1240, line: 111, baseType: !199, size: 512)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2037, file: !1240, line: 112, baseType: !2041, size: 64, offset: 512)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!46, !1238}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2037, file: !1240, line: 113, baseType: !2031, size: 64, offset: 576)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2037, file: !1240, line: 114, baseType: !641, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2037, file: !1240, line: 115, baseType: !641, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !1239, file: !1240, line: 383, baseType: !2048, size: 64, offset: 4672)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !1240, line: 140, size: 256, elements: !2050)
!2050 = !{!2051, !2052, !2056, !2060}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2049, file: !1240, line: 141, baseType: !1238, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2049, file: !1240, line: 142, baseType: !2053, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!46, !1238, !1129}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2049, file: !1240, line: 143, baseType: !2057, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !1238, !1129}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2049, file: !1240, line: 144, baseType: !2031, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !1239, file: !1240, line: 384, baseType: !2062, size: 64, offset: 4736)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2064)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !1240, line: 364, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1239, file: !1240, line: 385, baseType: !356, size: 64, offset: 4800)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1239, file: !1240, line: 386, baseType: !1277, size: 5824, offset: 4864)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !1239, file: !1240, line: 387, baseType: !7, size: 32, offset: 10688)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !1239, file: !1240, line: 388, baseType: !7, size: 32, offset: 10720)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !1239, file: !1240, line: 389, baseType: !184, size: 128, offset: 10752)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !1239, file: !1240, line: 390, baseType: !542, size: 256, offset: 10880)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1239, file: !1240, line: 391, baseType: !2031, size: 64, offset: 11136)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1235, file: !3, line: 122, baseType: !1850, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !1235, file: !3, line: 123, baseType: !334, size: 64, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !1235, file: !3, line: 124, baseType: !334, size: 64, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "polling_frequency", scope: !1235, file: !3, line: 125, baseType: !334, size: 64, offset: 256)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "zombie", scope: !1235, file: !3, line: 126, baseType: !2077, size: 8, offset: 320)
!2077 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !242)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !1235, file: !3, line: 127, baseType: !2079, size: 9600, offset: 384)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thermal_trips", file: !3, line: 113, size: 9600, elements: !2080)
!2080 = !{!2081, !2086, !2087, !2102}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "critical", scope: !2079, file: !3, line: 114, baseType: !2082, size: 128)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thermal_trip", file: !3, line: 95, size: 128, elements: !2083)
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2082, file: !3, line: 96, baseType: !334, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2082, file: !3, line: 97, baseType: !641, size: 8, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !2079, file: !3, line: 115, baseType: !2082, size: 128, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !2079, file: !3, line: 116, baseType: !2088, size: 1024, offset: 256)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thermal_passive", file: !3, line: 100, size: 1024, elements: !2089)
!2089 = !{!2090, !2091, !2099, !2100, !2101}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "trip", scope: !2088, file: !3, line: 101, baseType: !2082, size: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !2088, file: !3, line: 102, baseType: !2092, size: 704, offset: 128)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_handle_list", file: !1240, line: 17, size: 704, elements: !2093)
!2093 = !{!2094, !2095}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2092, file: !1240, line: 18, baseType: !1129, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !2092, file: !1240, line: 19, baseType: !2096, size: 640, offset: 64)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1245, size: 640, elements: !2097)
!2097 = !{!2098}
!2098 = !DISubrange(count: 10)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "tc1", scope: !2088, file: !3, line: 103, baseType: !334, size: 64, offset: 832)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "tc2", scope: !2088, file: !3, line: 104, baseType: !334, size: 64, offset: 896)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "tsp", scope: !2088, file: !3, line: 105, baseType: !334, size: 64, offset: 960)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2079, file: !3, line: 117, baseType: !2103, size: 8320, offset: 1280)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2104, size: 8320, elements: !2097)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thermal_active", file: !3, line: 108, size: 832, elements: !2105)
!2105 = !{!2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "trip", scope: !2104, file: !3, line: 109, baseType: !2082, size: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !2104, file: !3, line: 110, baseType: !2092, size: 704, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "trip_table", scope: !1235, file: !3, line: 128, baseType: !2109, size: 64, offset: 9984)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_trip", file: !96, line: 63, size: 192, elements: !2111)
!2111 = !{!2112, !2113, !2114, !2115}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2110, file: !96, line: 64, baseType: !46, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "hysteresis", scope: !2110, file: !96, line: 65, baseType: !46, size: 32, offset: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2110, file: !96, line: 66, baseType: !84, size: 32, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2110, file: !96, line: 67, baseType: !356, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1235, file: !3, line: 129, baseType: !2092, size: 704, offset: 10048)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !1235, file: !3, line: 130, baseType: !2118, size: 64, offset: 10752)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !96, line: 156, size: 9152, elements: !2120)
!2120 = !{!2121, !2122, !2123, !2124, !2125, !2126, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2226, !2240, !2252, !2253, !2254, !2265, !2266, !2267, !2268, !2269}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2119, file: !96, line: 157, baseType: !46, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2119, file: !96, line: 158, baseType: !1872, size: 160, offset: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2119, file: !96, line: 159, baseType: !1277, size: 5824, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "removal", scope: !2119, file: !96, line: 160, baseType: !865, size: 256, offset: 6016)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !2119, file: !96, line: 161, baseType: !339, size: 320, offset: 6272)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !2119, file: !96, line: 162, baseType: !2127, size: 64, offset: 6592)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !96, line: 35, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !2119, file: !96, line: 163, baseType: !2127, size: 64, offset: 6656)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !2119, file: !96, line: 164, baseType: !2127, size: 64, offset: 6720)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2119, file: !96, line: 165, baseType: !91, size: 32, offset: 6784)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2119, file: !96, line: 166, baseType: !356, size: 64, offset: 6848)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !2119, file: !96, line: 167, baseType: !2109, size: 64, offset: 6912)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "num_trips", scope: !2119, file: !96, line: 168, baseType: !46, size: 32, offset: 6976)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !2119, file: !96, line: 169, baseType: !334, size: 64, offset: 7040)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay_jiffies", scope: !2119, file: !96, line: 170, baseType: !334, size: 64, offset: 7104)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay_jiffies", scope: !2119, file: !96, line: 171, baseType: !334, size: 64, offset: 7168)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !2119, file: !96, line: 172, baseType: !46, size: 32, offset: 7232)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !2119, file: !96, line: 173, baseType: !46, size: 32, offset: 7264)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !2119, file: !96, line: 174, baseType: !46, size: 32, offset: 7296)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !2119, file: !96, line: 175, baseType: !46, size: 32, offset: 7328)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !2119, file: !96, line: 176, baseType: !46, size: 32, offset: 7360)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !2119, file: !96, line: 177, baseType: !46, size: 32, offset: 7392)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !2119, file: !96, line: 178, baseType: !234, size: 32, offset: 7424)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2119, file: !96, line: 179, baseType: !2146, size: 64, offset: 7488)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !96, line: 70, size: 768, elements: !2148)
!2148 = !{!2149, !2194, !2195, !2199, !2203, !2207, !2208, !2209, !2210, !2214, !2221, !2225}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2147, file: !96, line: 71, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!46, !2118, !2153}
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !96, line: 98, size: 6848, elements: !2155)
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2190, !2191, !2192, !2193}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2154, file: !96, line: 99, baseType: !46, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2154, file: !96, line: 100, baseType: !284, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "max_state", scope: !2154, file: !96, line: 101, baseType: !334, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2154, file: !96, line: 102, baseType: !1277, size: 5824, offset: 192)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2154, file: !96, line: 103, baseType: !1659, size: 64, offset: 6016)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2154, file: !96, line: 104, baseType: !356, size: 64, offset: 6080)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2154, file: !96, line: 105, baseType: !356, size: 64, offset: 6144)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2154, file: !96, line: 106, baseType: !2164, size: 64, offset: 6208)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2166)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !96, line: 89, size: 384, elements: !2167)
!2167 = !{!2168, !2172, !2173, !2177, !2182, !2186}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2166, file: !96, line: 90, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!46, !2153, !1210}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2166, file: !96, line: 91, baseType: !2169, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2166, file: !96, line: 92, baseType: !2174, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!46, !2153, !334}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2166, file: !96, line: 93, baseType: !2178, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!46, !2153, !2181}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2166, file: !96, line: 94, baseType: !2183, size: 64, offset: 256)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!46, !2153, !334, !2181}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2166, file: !96, line: 95, baseType: !2187, size: 64, offset: 320)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!46, !2153, !1129, !1210}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !2154, file: !96, line: 107, baseType: !641, size: 8, offset: 6272)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2154, file: !96, line: 108, baseType: !542, size: 256, offset: 6336)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2154, file: !96, line: 109, baseType: !184, size: 128, offset: 6592)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2154, file: !96, line: 110, baseType: !184, size: 128, offset: 6720)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2147, file: !96, line: 73, baseType: !2150, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !2147, file: !96, line: 75, baseType: !2196, size: 64, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!46, !2118, !1011}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !2147, file: !96, line: 76, baseType: !2200, size: 64, offset: 192)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!46, !2118, !46, !46}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !2147, file: !96, line: 77, baseType: !2204, size: 64, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!46, !2118, !91}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !2147, file: !96, line: 79, baseType: !2200, size: 64, offset: 320)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !2147, file: !96, line: 80, baseType: !2200, size: 64, offset: 384)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !2147, file: !96, line: 81, baseType: !2196, size: 64, offset: 448)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !2147, file: !96, line: 82, baseType: !2211, size: 64, offset: 512)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!46, !2118, !46}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !2147, file: !96, line: 83, baseType: !2215, size: 64, offset: 576)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!46, !2118, !2218, !2220}
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2110)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !2147, file: !96, line: 85, baseType: !2222, size: 64, offset: 640)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{null, !2118}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "critical", scope: !2147, file: !96, line: 86, baseType: !2222, size: 64, offset: 704)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !2119, file: !96, line: 180, baseType: !2227, size: 64, offset: 7552)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !96, line: 213, size: 448, elements: !2229)
!2229 = !{!2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !2228, file: !96, line: 214, baseType: !1872, size: 160)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !2228, file: !96, line: 221, baseType: !641, size: 8, offset: 160)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !2228, file: !96, line: 227, baseType: !1129, size: 32, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !2228, file: !96, line: 233, baseType: !521, size: 32, offset: 224)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !2228, file: !96, line: 239, baseType: !521, size: 32, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !2228, file: !96, line: 242, baseType: !521, size: 32, offset: 288)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !2228, file: !96, line: 245, baseType: !521, size: 32, offset: 320)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !2228, file: !96, line: 248, baseType: !521, size: 32, offset: 352)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !2228, file: !96, line: 254, baseType: !46, size: 32, offset: 384)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2228, file: !96, line: 259, baseType: !46, size: 32, offset: 416)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !2119, file: !96, line: 181, baseType: !2241, size: 64, offset: 7616)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !96, line: 204, size: 512, elements: !2243)
!2243 = !{!2244, !2245, !2249, !2250, !2251}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2242, file: !96, line: 205, baseType: !1872, size: 160)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !2242, file: !96, line: 206, baseType: !2246, size: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!46, !2118}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !2242, file: !96, line: 207, baseType: !2222, size: 64, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2242, file: !96, line: 208, baseType: !2211, size: 64, offset: 320)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !2242, file: !96, line: 209, baseType: !184, size: 128, offset: 384)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !2119, file: !96, line: 182, baseType: !356, size: 64, offset: 7680)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2119, file: !96, line: 183, baseType: !184, size: 128, offset: 7744)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !2119, file: !96, line: 184, baseType: !2255, size: 128, offset: 7872)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !2256, line: 246, size: 128, elements: !2257)
!2256 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!2257 = !{!2258}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2255, file: !2256, line: 247, baseType: !2259, size: 128)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2260, line: 296, size: 128, elements: !2261)
!2260 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2261 = !{!2262, !2263, !2264}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2259, file: !2260, line: 297, baseType: !214, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2259, file: !2260, line: 299, baseType: !1227, size: 32, offset: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2259, file: !2260, line: 300, baseType: !356, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2119, file: !96, line: 185, baseType: !542, size: 256, offset: 8000)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2119, file: !96, line: 186, baseType: !184, size: 128, offset: 8256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !2119, file: !96, line: 187, baseType: !1176, size: 704, offset: 8384)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !2119, file: !96, line: 188, baseType: !101, size: 32, offset: 9088)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2119, file: !96, line: 189, baseType: !641, size: 8, offset: 9120)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "kelvin_offset", scope: !1235, file: !3, line: 131, baseType: !46, size: 32, offset: 10816)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_check_work", scope: !1235, file: !3, line: 132, baseType: !607, size: 256, offset: 10880)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_check_lock", scope: !1235, file: !3, line: 133, baseType: !542, size: 256, offset: 11136)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_check_count", scope: !1235, file: !3, line: 134, baseType: !849, size: 32, offset: 11392)
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !185, line: 42, baseType: !334)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!2277 = !{!2278, !2280, !2285, !2290, !2292, !2294, !2299, !2301, !2303, !2308, !2310, !2312, !2317, !2319, !2321, !2326, !2328, !2332, !2335, !2340, !2345, !2348, !2350, !2352, !2354, !2356, !2358, !0, !2360, !2365, !2367, !2369, !2371, !2393, !2396, !2401, !2403, !2415, !2420, !2422, !2425, !2430, !2433, !2435, !2437, !2439, !2441, !2444, !2447, !2452, !2454, !2456, !2458, !2460, !2463, !2468, !2470, !2473, !2478, !2483, !2485, !2487, !2489, !2494, !2496, !2498, !2503, !2506, !2511, !2513, !2536, !2541, !2546, !2551}
!2278 = !DIGlobalVariableExpression(var: !2279, expr: !DIExpression())
!2279 = distinct !DIGlobalVariable(name: "__param_act", scope: !2, file: !3, line: 74, type: !931, isLocal: true, isDefinition: true, align: 64)
!2280 = !DIGlobalVariableExpression(var: !2281, expr: !DIExpression())
!2281 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_acttype229", scope: !2, file: !3, line: 74, type: !2282, isLocal: true, isDefinition: true, align: 8)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 200, elements: !2283)
!2283 = !{!2284}
!2284 = !DISubrange(count: 25)
!2285 = !DIGlobalVariableExpression(var: !2286, expr: !DIExpression())
!2286 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_act230", scope: !2, file: !3, line: 75, type: !2287, isLocal: true, isDefinition: true, align: 8)
!2287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 544, elements: !2288)
!2288 = !{!2289}
!2289 = !DISubrange(count: 68)
!2290 = !DIGlobalVariableExpression(var: !2291, expr: !DIExpression())
!2291 = distinct !DIGlobalVariable(name: "__param_crt", scope: !2, file: !3, line: 78, type: !931, isLocal: true, isDefinition: true, align: 64)
!2292 = !DIGlobalVariableExpression(var: !2293, expr: !DIExpression())
!2293 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_crttype231", scope: !2, file: !3, line: 78, type: !2282, isLocal: true, isDefinition: true, align: 8)
!2294 = !DIGlobalVariableExpression(var: !2295, expr: !DIExpression())
!2295 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_crt232", scope: !2, file: !3, line: 79, type: !2296, isLocal: true, isDefinition: true, align: 8)
!2296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 480, elements: !2297)
!2297 = !{!2298}
!2298 = !DISubrange(count: 60)
!2299 = !DIGlobalVariableExpression(var: !2300, expr: !DIExpression())
!2300 = distinct !DIGlobalVariable(name: "__param_tzp", scope: !2, file: !3, line: 82, type: !931, isLocal: true, isDefinition: true, align: 64)
!2301 = !DIGlobalVariableExpression(var: !2302, expr: !DIExpression())
!2302 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_tzptype233", scope: !2, file: !3, line: 82, type: !2282, isLocal: true, isDefinition: true, align: 8)
!2303 = !DIGlobalVariableExpression(var: !2304, expr: !DIExpression())
!2304 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_tzp234", scope: !2, file: !3, line: 83, type: !2305, isLocal: true, isDefinition: true, align: 8)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 528, elements: !2306)
!2306 = !{!2307}
!2307 = !DISubrange(count: 66)
!2308 = !DIGlobalVariableExpression(var: !2309, expr: !DIExpression())
!2309 = distinct !DIGlobalVariable(name: "__param_off", scope: !2, file: !3, line: 86, type: !931, isLocal: true, isDefinition: true, align: 64)
!2310 = !DIGlobalVariableExpression(var: !2311, expr: !DIExpression())
!2311 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_offtype235", scope: !2, file: !3, line: 86, type: !2282, isLocal: true, isDefinition: true, align: 8)
!2312 = !DIGlobalVariableExpression(var: !2313, expr: !DIExpression())
!2313 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_off236", scope: !2, file: !3, line: 87, type: !2314, isLocal: true, isDefinition: true, align: 8)
!2314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 432, elements: !2315)
!2315 = !{!2316}
!2316 = !DISubrange(count: 54)
!2317 = !DIGlobalVariableExpression(var: !2318, expr: !DIExpression())
!2318 = distinct !DIGlobalVariable(name: "__param_psv", scope: !2, file: !3, line: 90, type: !931, isLocal: true, isDefinition: true, align: 64)
!2319 = !DIGlobalVariableExpression(var: !2320, expr: !DIExpression())
!2320 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_psvtype237", scope: !2, file: !3, line: 90, type: !2282, isLocal: true, isDefinition: true, align: 8)
!2321 = !DIGlobalVariableExpression(var: !2322, expr: !DIExpression())
!2322 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_psv238", scope: !2, file: !3, line: 91, type: !2323, isLocal: true, isDefinition: true, align: 8)
!2323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 496, elements: !2324)
!2324 = !{!2325}
!2325 = !DISubrange(count: 62)
!2326 = !DIGlobalVariableExpression(var: !2327, expr: !DIExpression())
!2327 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_thermal__241_1151_acpi_thermal_init6242", scope: !2, file: !3, line: 1151, type: !356, isLocal: true, isDefinition: true)
!2328 = !DIGlobalVariableExpression(var: !2329, expr: !DIExpression())
!2329 = distinct !DIGlobalVariable(name: "__exitcall_acpi_thermal_exit", scope: !2, file: !3, line: 1152, type: !2330, isLocal: true, isDefinition: true)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2331, line: 120, baseType: !1223)
!2331 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!2332 = !DIGlobalVariableExpression(var: !2333, expr: !DIExpression())
!2333 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author243", scope: !2, file: !3, line: 1154, type: !2334, isLocal: true, isDefinition: true, align: 8)
!2334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 256, elements: !1369)
!2335 = !DIGlobalVariableExpression(var: !2336, expr: !DIExpression())
!2336 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description244", scope: !2, file: !3, line: 1155, type: !2337, isLocal: true, isDefinition: true, align: 8)
!2337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 360, elements: !2338)
!2338 = !{!2339}
!2339 = !DISubrange(count: 45)
!2340 = !DIGlobalVariableExpression(var: !2341, expr: !DIExpression())
!2341 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file245", scope: !2, file: !3, line: 1156, type: !2342, isLocal: true, isDefinition: true, align: 8)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 272, elements: !2343)
!2343 = !{!2344}
!2344 = !DISubrange(count: 34)
!2345 = !DIGlobalVariableExpression(var: !2346, expr: !DIExpression())
!2346 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license246", scope: !2, file: !3, line: 1156, type: !2347, isLocal: true, isDefinition: true, align: 8)
!2347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 160, elements: !1873)
!2348 = !DIGlobalVariableExpression(var: !2349, expr: !DIExpression())
!2349 = distinct !DIGlobalVariable(name: "act", scope: !2, file: !3, line: 73, type: !46, isLocal: true, isDefinition: true)
!2350 = !DIGlobalVariableExpression(var: !2351, expr: !DIExpression())
!2351 = distinct !DIGlobalVariable(name: "crt", scope: !2, file: !3, line: 77, type: !46, isLocal: true, isDefinition: true)
!2352 = !DIGlobalVariableExpression(var: !2353, expr: !DIExpression())
!2353 = distinct !DIGlobalVariable(name: "tzp", scope: !2, file: !3, line: 81, type: !46, isLocal: true, isDefinition: true)
!2354 = !DIGlobalVariableExpression(var: !2355, expr: !DIExpression())
!2355 = distinct !DIGlobalVariable(name: "off", scope: !2, file: !3, line: 85, type: !46, isLocal: true, isDefinition: true)
!2356 = !DIGlobalVariableExpression(var: !2357, expr: !DIExpression())
!2357 = distinct !DIGlobalVariable(name: "psv", scope: !2, file: !3, line: 89, type: !46, isLocal: true, isDefinition: true)
!2358 = !DIGlobalVariableExpression(var: !2359, expr: !DIExpression())
!2359 = distinct !DIGlobalVariable(name: "acpi_thermal_pm_queue", scope: !2, file: !3, line: 93, type: !1181, isLocal: true, isDefinition: true)
!2360 = !DIGlobalVariableExpression(var: !2361, expr: !DIExpression())
!2361 = distinct !DIGlobalVariable(name: "__param_str_crt", scope: !2, file: !3, line: 78, type: !2362, isLocal: true, isDefinition: true)
!2362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 96, elements: !2363)
!2363 = !{!2364}
!2364 = !DISubrange(count: 12)
!2365 = !DIGlobalVariableExpression(var: !2366, expr: !DIExpression())
!2366 = distinct !DIGlobalVariable(name: "__param_str_tzp", scope: !2, file: !3, line: 82, type: !2362, isLocal: true, isDefinition: true)
!2367 = !DIGlobalVariableExpression(var: !2368, expr: !DIExpression())
!2368 = distinct !DIGlobalVariable(name: "__param_str_off", scope: !2, file: !3, line: 86, type: !2362, isLocal: true, isDefinition: true)
!2369 = !DIGlobalVariableExpression(var: !2370, expr: !DIExpression())
!2370 = distinct !DIGlobalVariable(name: "__param_str_psv", scope: !2, file: !3, line: 90, type: !2362, isLocal: true, isDefinition: true)
!2371 = !DIGlobalVariableExpression(var: !2372, expr: !DIExpression())
!2372 = distinct !DIGlobalVariable(name: "acpi_thermal_driver", scope: !2, file: !3, line: 1038, type: !2373, isLocal: true, isDefinition: true)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !1240, line: 164, size: 2816, elements: !2374)
!2374 = !{!2375, !2379, !2380, !2381, !2382, !2391, !2392}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2373, file: !1240, line: 165, baseType: !2376, size: 640)
!2376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 640, elements: !2377)
!2377 = !{!2378}
!2378 = !DISubrange(count: 80)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2373, file: !1240, line: 166, baseType: !2376, size: 640, offset: 640)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2373, file: !1240, line: 167, baseType: !1378, size: 64, offset: 1280)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2373, file: !1240, line: 168, baseType: !7, size: 32, offset: 1344)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2373, file: !1240, line: 169, baseType: !2383, size: 192, offset: 1408)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !1240, line: 156, size: 192, elements: !2384)
!2384 = !{!2385, !2387, !2389}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2383, file: !1240, line: 157, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !1240, line: 152, baseType: !2041)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2383, file: !1240, line: 158, baseType: !2388, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !1240, line: 153, baseType: !2031)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2383, file: !1240, line: 159, baseType: !2390, size: 64, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !1240, line: 154, baseType: !2057)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2373, file: !1240, line: 170, baseType: !1353, size: 1152, offset: 1600)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2373, file: !1240, line: 171, baseType: !179, size: 64, offset: 2752)
!2393 = !DIGlobalVariableExpression(var: !2394, expr: !DIExpression())
!2394 = distinct !DIGlobalVariable(name: "thermal_device_ids", scope: !2, file: !3, line: 1032, type: !2395, isLocal: true, isDefinition: true)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, size: 512, elements: !1001)
!2396 = !DIGlobalVariableExpression(var: !2397, expr: !DIExpression())
!2397 = distinct !DIGlobalVariable(scope: null, file: !3, line: 937, type: !2398, isLocal: true, isDefinition: true)
!2398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 104, elements: !2399)
!2399 = !{!2400}
!2400 = !DISubrange(count: 13)
!2401 = !DIGlobalVariableExpression(var: !2402, expr: !DIExpression())
!2402 = distinct !DIGlobalVariable(scope: null, file: !3, line: 938, type: !2398, isLocal: true, isDefinition: true)
!2403 = !DIGlobalVariableExpression(var: !2404, expr: !DIExpression())
!2404 = distinct !DIGlobalVariable(name: "__key", scope: !2405, file: !3, line: 952, type: !2414, isLocal: true, isDefinition: true)
!2405 = distinct !DISubprogram(name: "acpi_thermal_add", scope: !3, file: !3, line: 923, type: !2042, scopeLine: 924, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2406)
!2406 = !{!2407, !2408, !2409, !2410, !2411, !2413}
!2407 = !DILocalVariable(name: "device", arg: 1, scope: !2405, file: !3, line: 923, type: !1238)
!2408 = !DILocalVariable(name: "tz", scope: !2405, file: !3, line: 925, type: !1234)
!2409 = !DILocalVariable(name: "result", scope: !2405, file: !3, line: 926, type: !46)
!2410 = !DILabel(scope: !2405, name: "flush_wq", file: !3, line: 965)
!2411 = !DILocalVariable(name: "_wq", scope: !2412, file: !3, line: 966, type: !1181)
!2412 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 966, column: 2)
!2413 = !DILabel(scope: !2405, name: "free_memory", file: !3, line: 968)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1148, line: 206, elements: !421)
!2415 = !DIGlobalVariableExpression(var: !2416, expr: !DIExpression())
!2416 = distinct !DIGlobalVariable(scope: null, file: !3, line: 952, type: !2417, isLocal: true, isDefinition: true)
!2417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 192, elements: !2418)
!2418 = !{!2419}
!2419 = !DISubrange(count: 24)
!2420 = !DIGlobalVariableExpression(var: !2421, expr: !DIExpression())
!2421 = distinct !DIGlobalVariable(name: "__key", scope: !2405, file: !3, line: 953, type: !2414, isLocal: true, isDefinition: true)
!2422 = !DIGlobalVariableExpression(var: !2423, expr: !DIExpression())
!2423 = distinct !DIGlobalVariable(scope: null, file: !3, line: 955, type: !2424, isLocal: true, isDefinition: true)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 272, elements: !2343)
!2425 = !DIGlobalVariableExpression(var: !2426, expr: !DIExpression())
!2426 = distinct !DIGlobalVariable(scope: null, file: !144, line: 480, type: !2427, isLocal: true, isDefinition: true)
!2427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 168, elements: !2428)
!2428 = !{!2429}
!2429 = !DISubrange(count: 21)
!2430 = !DIGlobalVariableExpression(var: !2431, expr: !DIExpression())
!2431 = distinct !DIGlobalVariable(scope: null, file: !3, line: 867, type: !2432, isLocal: true, isDefinition: true)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 40, elements: !1952)
!2433 = !DIGlobalVariableExpression(var: !2434, expr: !DIExpression())
!2434 = distinct !DIGlobalVariable(scope: null, file: !3, line: 833, type: !2432, isLocal: true, isDefinition: true)
!2435 = !DIGlobalVariableExpression(var: !2436, expr: !DIExpression())
!2436 = distinct !DIGlobalVariable(scope: null, file: !3, line: 834, type: !2432, isLocal: true, isDefinition: true)
!2437 = !DIGlobalVariableExpression(var: !2438, expr: !DIExpression())
!2438 = distinct !DIGlobalVariable(scope: null, file: !3, line: 835, type: !2432, isLocal: true, isDefinition: true)
!2439 = !DIGlobalVariableExpression(var: !2440, expr: !DIExpression())
!2440 = distinct !DIGlobalVariable(scope: null, file: !3, line: 844, type: !2432, isLocal: true, isDefinition: true)
!2441 = !DIGlobalVariableExpression(var: !2442, expr: !DIExpression())
!2442 = distinct !DIGlobalVariable(scope: null, file: !3, line: 469, type: !2443, isLocal: true, isDefinition: true)
!2443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 432, elements: !2315)
!2444 = !DIGlobalVariableExpression(var: !2445, expr: !DIExpression())
!2445 = distinct !DIGlobalVariable(scope: null, file: !3, line: 214, type: !2446, isLocal: true, isDefinition: true)
!2446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 544, elements: !2288)
!2447 = !DIGlobalVariableExpression(var: !2448, expr: !DIExpression())
!2448 = distinct !DIGlobalVariable(scope: null, file: !3, line: 232, type: !2449, isLocal: true, isDefinition: true)
!2449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 336, elements: !2450)
!2450 = !{!2451}
!2451 = !DISubrange(count: 42)
!2452 = !DIGlobalVariableExpression(var: !2453, expr: !DIExpression())
!2453 = distinct !DIGlobalVariable(scope: null, file: !3, line: 276, type: !2432, isLocal: true, isDefinition: true)
!2454 = !DIGlobalVariableExpression(var: !2455, expr: !DIExpression())
!2455 = distinct !DIGlobalVariable(scope: null, file: !3, line: 283, type: !2432, isLocal: true, isDefinition: true)
!2456 = !DIGlobalVariableExpression(var: !2457, expr: !DIExpression())
!2457 = distinct !DIGlobalVariable(scope: null, file: !3, line: 290, type: !2432, isLocal: true, isDefinition: true)
!2458 = !DIGlobalVariableExpression(var: !2459, expr: !DIExpression())
!2459 = distinct !DIGlobalVariable(scope: null, file: !3, line: 300, type: !2432, isLocal: true, isDefinition: true)
!2460 = !DIGlobalVariableExpression(var: !2461, expr: !DIExpression())
!2461 = distinct !DIGlobalVariable(scope: null, file: !3, line: 303, type: !2462, isLocal: true, isDefinition: true)
!2462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 24, elements: !285)
!2463 = !DIGlobalVariableExpression(var: !2464, expr: !DIExpression())
!2464 = distinct !DIGlobalVariable(scope: null, file: !3, line: 303, type: !2465, isLocal: true, isDefinition: true)
!2465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 216, elements: !2466)
!2466 = !{!2467}
!2467 = !DISubrange(count: 27)
!2468 = !DIGlobalVariableExpression(var: !2469, expr: !DIExpression())
!2469 = distinct !DIGlobalVariable(scope: null, file: !3, line: 314, type: !2376, isLocal: true, isDefinition: true)
!2470 = !DIGlobalVariableExpression(var: !2471, expr: !DIExpression())
!2471 = distinct !DIGlobalVariable(scope: null, file: !3, line: 314, type: !2472, isLocal: true, isDefinition: true)
!2472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 56, elements: !1003)
!2473 = !DIGlobalVariableExpression(var: !2474, expr: !DIExpression())
!2474 = distinct !DIGlobalVariable(scope: null, file: !3, line: 319, type: !2475, isLocal: true, isDefinition: true)
!2475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 48, elements: !2476)
!2476 = !{!2477}
!2477 = !DISubrange(count: 6)
!2478 = !DIGlobalVariableExpression(var: !2479, expr: !DIExpression())
!2479 = distinct !DIGlobalVariable(scope: null, file: !3, line: 368, type: !2480, isLocal: true, isDefinition: true)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 224, elements: !2481)
!2481 = !{!2482}
!2482 = !DISubrange(count: 28)
!2483 = !DIGlobalVariableExpression(var: !2484, expr: !DIExpression())
!2484 = distinct !DIGlobalVariable(scope: null, file: !3, line: 392, type: !2432, isLocal: true, isDefinition: true)
!2485 = !DIGlobalVariableExpression(var: !2486, expr: !DIExpression())
!2486 = distinct !DIGlobalVariable(scope: null, file: !3, line: 171, type: !2432, isLocal: true, isDefinition: true)
!2487 = !DIGlobalVariableExpression(var: !2488, expr: !DIExpression())
!2488 = distinct !DIGlobalVariable(scope: null, file: !3, line: 743, type: !2472, isLocal: true, isDefinition: true)
!2489 = !DIGlobalVariableExpression(var: !2490, expr: !DIExpression())
!2490 = distinct !DIGlobalVariable(scope: null, file: !3, line: 764, type: !2491, isLocal: true, isDefinition: true)
!2491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 240, elements: !2492)
!2492 = !{!2493}
!2493 = !DISubrange(count: 30)
!2494 = !DIGlobalVariableExpression(var: !2495, expr: !DIExpression())
!2495 = distinct !DIGlobalVariable(name: "acpi_thermal_zone_ops", scope: !2, file: !3, line: 647, type: !2147, isLocal: true, isDefinition: true)
!2496 = !DIGlobalVariableExpression(var: !2497, expr: !DIExpression())
!2497 = distinct !DIGlobalVariable(name: "acpi_thermal_pm", scope: !2, file: !3, line: 1030, type: !1308, isLocal: true, isDefinition: true)
!2498 = !DIGlobalVariableExpression(var: !2499, expr: !DIExpression())
!2499 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1127, type: !2500, isLocal: true, isDefinition: true)
!2500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 344, elements: !2501)
!2501 = !{!2502}
!2502 = !DISubrange(count: 43)
!2503 = !DIGlobalVariableExpression(var: !2504, expr: !DIExpression())
!2504 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1131, type: !2505, isLocal: true, isDefinition: true)
!2505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 128, elements: !1384)
!2506 = !DIGlobalVariableExpression(var: !2507, expr: !DIExpression())
!2507 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1087, type: !2508, isLocal: true, isDefinition: true)
!2508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 144, elements: !2509)
!2509 = !{!2510}
!2510 = !DISubrange(count: 18)
!2511 = !DIGlobalVariableExpression(var: !2512, expr: !DIExpression())
!2512 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1111, type: !2505, isLocal: true, isDefinition: true)
!2513 = !DIGlobalVariableExpression(var: !2514, expr: !DIExpression())
!2514 = distinct !DIGlobalVariable(name: "thermal_dmi_table", scope: !2, file: !3, line: 1080, type: !2515, isLocal: true, isDefinition: true)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2516, size: 13760, elements: !1952)
!2516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2517)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !1365, line: 587, size: 2752, elements: !2518)
!2518 = !{!2519, !2524, !2525, !2535}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2517, file: !1365, line: 588, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!46, !2523}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !2517, file: !1365, line: 589, baseType: !203, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !2517, file: !1365, line: 590, baseType: !2526, size: 2560, offset: 128)
!2526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2527, size: 2560, elements: !523)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !1365, line: 581, size: 640, elements: !2528)
!2528 = !{!2529, !2530, !2531}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !2527, file: !1365, line: 582, baseType: !246, size: 7, flags: DIFlagBitField, extraData: i64 0)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !2527, file: !1365, line: 583, baseType: !246, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !2527, file: !1365, line: 584, baseType: !2532, size: 632, offset: 8)
!2532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 632, elements: !2533)
!2533 = !{!2534}
!2534 = !DISubrange(count: 79)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2517, file: !1365, line: 591, baseType: !356, size: 64, offset: 2688)
!2536 = !DIGlobalVariableExpression(var: !2537, expr: !DIExpression())
!2537 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1051, type: !2538, isLocal: true, isDefinition: true)
!2538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 576, elements: !2539)
!2539 = !{!2540}
!2540 = !DISubrange(count: 72)
!2541 = !DIGlobalVariableExpression(var: !2542, expr: !DIExpression())
!2542 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1073, type: !2543, isLocal: true, isDefinition: true)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 584, elements: !2544)
!2544 = !{!2545}
!2545 = !DISubrange(count: 73)
!2546 = !DIGlobalVariableExpression(var: !2547, expr: !DIExpression())
!2547 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1065, type: !2548, isLocal: true, isDefinition: true)
!2548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 488, elements: !2549)
!2549 = !{!2550}
!2550 = !DISubrange(count: 61)
!2551 = !DIGlobalVariableExpression(var: !2552, expr: !DIExpression())
!2552 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1058, type: !2553, isLocal: true, isDefinition: true)
!2553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 656, elements: !2554)
!2554 = !{!2555}
!2555 = !DISubrange(count: 82)
!2556 = !{i32 7, !"Dwarf Version", i32 5}
!2557 = !{i32 2, !"Debug Info Version", i32 3}
!2558 = !{i32 1, !"wchar_size", i32 2}
!2559 = !{i32 8, !"cf-protection-branch", i32 1}
!2560 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2561 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2562 = !{i32 1, !"Code Model", i32 2}
!2563 = !{i32 1, !"override-stack-alignment", i32 8}
!2564 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2565 = distinct !DISubprogram(name: "acpi_thermal_exit", scope: !3, file: !3, line: 1145, type: !1224, scopeLine: 1146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2566 = !DILocation(line: 1147, column: 2, scope: !2565)
!2567 = !DILocation(line: 1148, column: 20, scope: !2565)
!2568 = !DILocation(line: 1148, column: 2, scope: !2565)
!2569 = !DILocation(line: 1149, column: 1, scope: !2565)
!2570 = !DISubprogram(name: "acpi_bus_unregister_driver", scope: !1240, file: !1240, line: 565, type: !2571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{null, !2573}
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2574 = !DISubprogram(name: "destroy_workqueue", scope: !113, file: !113, line: 488, type: !2575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !1181}
!2577 = distinct !DISubprogram(name: "__initstub__kmod_thermal__241_1151_acpi_thermal_init6", scope: !3, file: !3, line: 1151, type: !983, scopeLine: 1151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2578 = !DILocation(line: 1151, column: 1, scope: !2577)
!2579 = distinct !DISubprogram(name: "acpi_thermal_init", scope: !3, file: !3, line: 1120, type: !983, scopeLine: 1121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2580)
!2580 = !{!2581}
!2581 = !DILocalVariable(name: "result", scope: !2579, file: !3, line: 1122, type: !46)
!2582 = !DILocation(line: 1122, column: 2, scope: !2579)
!2583 = !DILocation(line: 1122, column: 6, scope: !2579)
!2584 = !DILocation(line: 1124, column: 2, scope: !2579)
!2585 = !DILocation(line: 1126, column: 6, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 1126, column: 6)
!2587 = !DILocation(line: 1126, column: 6, scope: !2579)
!2588 = !DILocation(line: 1127, column: 3, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 1127, column: 3)
!2590 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1126, column: 11)
!2591 = !DILocation(line: 1127, column: 3, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 1127, column: 3)
!2593 = !DILocation(line: 1128, column: 3, scope: !2590)
!2594 = !DILocation(line: 1131, column: 26, scope: !2579)
!2595 = !DILocation(line: 1131, column: 24, scope: !2579)
!2596 = !DILocation(line: 1133, column: 7, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 1133, column: 6)
!2598 = !DILocation(line: 1133, column: 6, scope: !2579)
!2599 = !DILocation(line: 1134, column: 3, scope: !2597)
!2600 = !DILocation(line: 1136, column: 11, scope: !2579)
!2601 = !DILocation(line: 1136, column: 9, scope: !2579)
!2602 = !DILocation(line: 1137, column: 6, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 1137, column: 6)
!2604 = !DILocation(line: 1137, column: 13, scope: !2603)
!2605 = !DILocation(line: 1137, column: 6, scope: !2579)
!2606 = !DILocation(line: 1138, column: 21, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 1137, column: 18)
!2608 = !DILocation(line: 1138, column: 3, scope: !2607)
!2609 = !DILocation(line: 1139, column: 3, scope: !2607)
!2610 = !DILocation(line: 1142, column: 2, scope: !2579)
!2611 = !DILocation(line: 1143, column: 1, scope: !2579)
!2612 = !DILocation(line: 923, column: 49, scope: !2405)
!2613 = !DILocation(line: 925, column: 2, scope: !2405)
!2614 = !DILocation(line: 925, column: 23, scope: !2405)
!2615 = !DILocation(line: 926, column: 2, scope: !2405)
!2616 = !DILocation(line: 926, column: 6, scope: !2405)
!2617 = !DILocation(line: 928, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 928, column: 6)
!2619 = !DILocation(line: 928, column: 6, scope: !2405)
!2620 = !DILocation(line: 929, column: 3, scope: !2618)
!2621 = !DILocation(line: 931, column: 7, scope: !2405)
!2622 = !DILocation(line: 931, column: 5, scope: !2405)
!2623 = !DILocation(line: 932, column: 7, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 932, column: 6)
!2625 = !DILocation(line: 932, column: 6, scope: !2405)
!2626 = !DILocation(line: 933, column: 3, scope: !2624)
!2627 = !DILocation(line: 935, column: 15, scope: !2405)
!2628 = !DILocation(line: 935, column: 2, scope: !2405)
!2629 = !DILocation(line: 935, column: 6, scope: !2405)
!2630 = !DILocation(line: 935, column: 13, scope: !2405)
!2631 = !DILocation(line: 936, column: 9, scope: !2405)
!2632 = !DILocation(line: 936, column: 13, scope: !2405)
!2633 = !DILocation(line: 936, column: 19, scope: !2405)
!2634 = !DILocation(line: 936, column: 27, scope: !2405)
!2635 = !DILocation(line: 936, column: 31, scope: !2405)
!2636 = !DILocation(line: 936, column: 2, scope: !2405)
!2637 = !DILocation(line: 937, column: 9, scope: !2405)
!2638 = !DILocation(line: 937, column: 2, scope: !2405)
!2639 = !DILocation(line: 938, column: 9, scope: !2405)
!2640 = !DILocation(line: 938, column: 2, scope: !2405)
!2641 = !DILocation(line: 939, column: 24, scope: !2405)
!2642 = !DILocation(line: 939, column: 2, scope: !2405)
!2643 = !DILocation(line: 939, column: 10, scope: !2405)
!2644 = !DILocation(line: 939, column: 22, scope: !2405)
!2645 = !DILocation(line: 941, column: 33, scope: !2405)
!2646 = !DILocation(line: 941, column: 11, scope: !2405)
!2647 = !DILocation(line: 941, column: 9, scope: !2405)
!2648 = !DILocation(line: 942, column: 6, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 942, column: 6)
!2650 = !DILocation(line: 942, column: 6, scope: !2405)
!2651 = !DILocation(line: 943, column: 3, scope: !2649)
!2652 = !DILocation(line: 945, column: 28, scope: !2405)
!2653 = !DILocation(line: 945, column: 2, scope: !2405)
!2654 = !DILocation(line: 947, column: 46, scope: !2405)
!2655 = !DILocation(line: 947, column: 11, scope: !2405)
!2656 = !DILocation(line: 947, column: 9, scope: !2405)
!2657 = !DILocation(line: 948, column: 6, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 948, column: 6)
!2659 = !DILocation(line: 948, column: 6, scope: !2405)
!2660 = !DILocation(line: 949, column: 3, scope: !2658)
!2661 = !DILocation(line: 951, column: 16, scope: !2405)
!2662 = !DILocation(line: 951, column: 20, scope: !2405)
!2663 = !DILocation(line: 951, column: 2, scope: !2405)
!2664 = !DILocation(line: 952, column: 2, scope: !2405)
!2665 = !DILocation(line: 952, column: 2, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 952, column: 2)
!2667 = !DILocation(line: 953, column: 2, scope: !2405)
!2668 = !DILocation(line: 953, column: 2, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 953, column: 2)
!2670 = !DILocation(line: 953, column: 2, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 953, column: 2)
!2672 = !DILocation(line: 955, column: 2, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 955, column: 2)
!2674 = !DILocation(line: 955, column: 2, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 955, column: 2)
!2676 = !DILocation(line: 958, column: 43, scope: !2405)
!2677 = !DILocation(line: 958, column: 11, scope: !2405)
!2678 = !DILocation(line: 958, column: 9, scope: !2405)
!2679 = !DILocation(line: 960, column: 6, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 960, column: 6)
!2681 = !DILocation(line: 960, column: 6, scope: !2405)
!2682 = !DILocation(line: 961, column: 3, scope: !2680)
!2683 = !DILocation(line: 963, column: 2, scope: !2405)
!2684 = !DILocation(line: 965, column: 1, scope: !2405)
!2685 = !DILocation(line: 966, column: 2, scope: !2412)
!2686 = !DILocation(line: 966, column: 2, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 966, column: 2)
!2688 = !{i32 -2140742714}
!2689 = !DILocation(line: 966, column: 2, scope: !2405)
!2690 = !DILocation(line: 967, column: 39, scope: !2405)
!2691 = !DILocation(line: 967, column: 2, scope: !2405)
!2692 = !DILocation(line: 968, column: 1, scope: !2405)
!2693 = !DILocation(line: 969, column: 8, scope: !2405)
!2694 = !DILocation(line: 969, column: 2, scope: !2405)
!2695 = !DILocation(line: 971, column: 9, scope: !2405)
!2696 = !DILocation(line: 971, column: 2, scope: !2405)
!2697 = !DILocation(line: 972, column: 1, scope: !2405)
!2698 = distinct !DISubprogram(name: "acpi_thermal_remove", scope: !3, file: !3, line: 974, type: !2032, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2699)
!2699 = !{!2700, !2701, !2702}
!2700 = !DILocalVariable(name: "device", arg: 1, scope: !2698, file: !3, line: 974, type: !1238)
!2701 = !DILocalVariable(name: "tz", scope: !2698, file: !3, line: 976, type: !1234)
!2702 = !DILocalVariable(name: "_wq", scope: !2703, file: !3, line: 986, type: !1181)
!2703 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 986, column: 2)
!2704 = !DILocation(line: 974, column: 53, scope: !2698)
!2705 = !DILocation(line: 976, column: 2, scope: !2698)
!2706 = !DILocation(line: 976, column: 23, scope: !2698)
!2707 = !DILocation(line: 978, column: 7, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 978, column: 6)
!2709 = !DILocation(line: 978, column: 14, scope: !2708)
!2710 = !DILocation(line: 978, column: 35, scope: !2708)
!2711 = !DILocation(line: 978, column: 18, scope: !2708)
!2712 = !DILocation(line: 978, column: 6, scope: !2698)
!2713 = !DILocation(line: 979, column: 3, scope: !2708)
!2714 = !DILocation(line: 981, column: 24, scope: !2698)
!2715 = !DILocation(line: 981, column: 7, scope: !2698)
!2716 = !DILocation(line: 981, column: 5, scope: !2698)
!2717 = !DILocation(line: 983, column: 33, scope: !2698)
!2718 = !DILocation(line: 983, column: 2, scope: !2698)
!2719 = !DILocation(line: 986, column: 2, scope: !2703)
!2720 = !DILocation(line: 986, column: 2, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 986, column: 2)
!2722 = !{i32 -2140741823}
!2723 = !DILocation(line: 986, column: 2, scope: !2698)
!2724 = !DILocation(line: 987, column: 39, scope: !2698)
!2725 = !DILocation(line: 987, column: 2, scope: !2698)
!2726 = !DILocation(line: 988, column: 8, scope: !2698)
!2727 = !DILocation(line: 988, column: 12, scope: !2698)
!2728 = !DILocation(line: 988, column: 2, scope: !2698)
!2729 = !DILocation(line: 989, column: 8, scope: !2698)
!2730 = !DILocation(line: 989, column: 2, scope: !2698)
!2731 = !DILocation(line: 990, column: 1, scope: !2698)
!2732 = distinct !DISubprogram(name: "kzalloc", scope: !144, file: !144, line: 719, type: !2733, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!356, !331, !1227}
!2735 = !{!2736, !2737}
!2736 = !DILocalVariable(name: "size", arg: 1, scope: !2732, file: !144, line: 719, type: !331)
!2737 = !DILocalVariable(name: "flags", arg: 2, scope: !2732, file: !144, line: 719, type: !1227)
!2738 = !DILocation(line: 719, column: 52, scope: !2732)
!2739 = !DILocation(line: 719, column: 64, scope: !2732)
!2740 = !DILocation(line: 721, column: 17, scope: !2732)
!2741 = !DILocation(line: 721, column: 23, scope: !2732)
!2742 = !DILocation(line: 721, column: 29, scope: !2732)
!2743 = !DILocation(line: 721, column: 9, scope: !2732)
!2744 = !DILocation(line: 721, column: 2, scope: !2732)
!2745 = !DISubprogram(name: "strcpy", scope: !2746, file: !2746, line: 63, type: !2747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2746 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!284, !284, !203}
!2749 = distinct !DISubprogram(name: "acpi_thermal_get_info", scope: !3, file: !3, line: 847, type: !2750, scopeLine: 848, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2752)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!46, !1234}
!2752 = !{!2753, !2754}
!2753 = !DILocalVariable(name: "tz", arg: 1, scope: !2749, file: !3, line: 847, type: !1234)
!2754 = !DILocalVariable(name: "result", scope: !2749, file: !3, line: 849, type: !46)
!2755 = !DILocation(line: 847, column: 55, scope: !2749)
!2756 = !DILocation(line: 849, column: 2, scope: !2749)
!2757 = !DILocation(line: 849, column: 6, scope: !2749)
!2758 = !DILocation(line: 851, column: 7, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 851, column: 6)
!2760 = !DILocation(line: 851, column: 6, scope: !2749)
!2761 = !DILocation(line: 852, column: 3, scope: !2759)
!2762 = !DILocation(line: 854, column: 34, scope: !2749)
!2763 = !DILocation(line: 854, column: 2, scope: !2749)
!2764 = !DILocation(line: 857, column: 40, scope: !2749)
!2765 = !DILocation(line: 857, column: 11, scope: !2749)
!2766 = !DILocation(line: 857, column: 9, scope: !2749)
!2767 = !DILocation(line: 858, column: 6, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 858, column: 6)
!2769 = !DILocation(line: 858, column: 6, scope: !2749)
!2770 = !DILocation(line: 859, column: 10, scope: !2768)
!2771 = !DILocation(line: 859, column: 3, scope: !2768)
!2772 = !DILocation(line: 862, column: 40, scope: !2749)
!2773 = !DILocation(line: 862, column: 11, scope: !2749)
!2774 = !DILocation(line: 862, column: 9, scope: !2749)
!2775 = !DILocation(line: 863, column: 6, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 863, column: 6)
!2777 = !DILocation(line: 863, column: 6, scope: !2749)
!2778 = !DILocation(line: 864, column: 10, scope: !2776)
!2779 = !DILocation(line: 864, column: 3, scope: !2776)
!2780 = !DILocation(line: 867, column: 29, scope: !2749)
!2781 = !DILocation(line: 867, column: 33, scope: !2749)
!2782 = !DILocation(line: 867, column: 41, scope: !2749)
!2783 = !DILocation(line: 867, column: 2, scope: !2749)
!2784 = !DILocation(line: 871, column: 6, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 871, column: 6)
!2786 = !DILocation(line: 871, column: 6, scope: !2749)
!2787 = !DILocation(line: 872, column: 27, scope: !2785)
!2788 = !DILocation(line: 872, column: 3, scope: !2785)
!2789 = !DILocation(line: 872, column: 7, scope: !2785)
!2790 = !DILocation(line: 872, column: 25, scope: !2785)
!2791 = !DILocation(line: 874, column: 38, scope: !2785)
!2792 = !DILocation(line: 874, column: 3, scope: !2785)
!2793 = !DILocation(line: 876, column: 2, scope: !2749)
!2794 = !DILocation(line: 877, column: 1, scope: !2749)
!2795 = distinct !DISubprogram(name: "acpi_thermal_guess_offset", scope: !3, file: !3, line: 889, type: !2796, scopeLine: 890, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2798)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{null, !1234}
!2798 = !{!2799}
!2799 = !DILocalVariable(name: "tz", arg: 1, scope: !2795, file: !3, line: 889, type: !1234)
!2800 = !DILocation(line: 889, column: 60, scope: !2795)
!2801 = !DILocation(line: 891, column: 6, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 891, column: 6)
!2803 = !DILocation(line: 891, column: 10, scope: !2802)
!2804 = !DILocation(line: 891, column: 16, scope: !2802)
!2805 = !DILocation(line: 891, column: 25, scope: !2802)
!2806 = !{i8 0, i8 2}
!2807 = !DILocation(line: 891, column: 31, scope: !2802)
!2808 = !DILocation(line: 892, column: 7, scope: !2802)
!2809 = !DILocation(line: 892, column: 11, scope: !2802)
!2810 = !DILocation(line: 892, column: 17, scope: !2802)
!2811 = !DILocation(line: 892, column: 26, scope: !2802)
!2812 = !DILocation(line: 892, column: 38, scope: !2802)
!2813 = !DILocation(line: 892, column: 43, scope: !2802)
!2814 = !DILocation(line: 891, column: 6, scope: !2795)
!2815 = !DILocation(line: 893, column: 3, scope: !2802)
!2816 = !DILocation(line: 893, column: 7, scope: !2802)
!2817 = !DILocation(line: 893, column: 21, scope: !2802)
!2818 = !DILocation(line: 895, column: 3, scope: !2802)
!2819 = !DILocation(line: 895, column: 7, scope: !2802)
!2820 = !DILocation(line: 895, column: 21, scope: !2802)
!2821 = !DILocation(line: 896, column: 1, scope: !2795)
!2822 = distinct !DISubprogram(name: "acpi_thermal_register_thermal_zone", scope: !3, file: !3, line: 682, type: !2750, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2823)
!2823 = !{!2824, !2825, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834}
!2824 = !DILocalVariable(name: "tz", arg: 1, scope: !2822, file: !3, line: 682, type: !1234)
!2825 = !DILocalVariable(name: "acpi_trip", scope: !2822, file: !3, line: 684, type: !2826)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2827 = !DILocalVariable(name: "trip", scope: !2822, file: !3, line: 685, type: !2109)
!2828 = !DILocalVariable(name: "passive_delay", scope: !2822, file: !3, line: 686, type: !46)
!2829 = !DILocalVariable(name: "trip_count", scope: !2822, file: !3, line: 687, type: !46)
!2830 = !DILocalVariable(name: "result", scope: !2822, file: !3, line: 688, type: !46)
!2831 = !DILocalVariable(name: "i", scope: !2822, file: !3, line: 689, type: !46)
!2832 = !DILabel(scope: !2822, name: "remove_links", file: !3, line: 769)
!2833 = !DILabel(scope: !2822, name: "unregister_tzd", file: !3, line: 771)
!2834 = !DILabel(scope: !2822, name: "free_trip_table", file: !3, line: 773)
!2835 = !DILocation(line: 682, column: 68, scope: !2822)
!2836 = !DILocation(line: 684, column: 2, scope: !2822)
!2837 = !DILocation(line: 684, column: 28, scope: !2822)
!2838 = !DILocation(line: 685, column: 2, scope: !2822)
!2839 = !DILocation(line: 685, column: 23, scope: !2822)
!2840 = !DILocation(line: 686, column: 2, scope: !2822)
!2841 = !DILocation(line: 686, column: 6, scope: !2822)
!2842 = !DILocation(line: 687, column: 2, scope: !2822)
!2843 = !DILocation(line: 687, column: 6, scope: !2822)
!2844 = !DILocation(line: 688, column: 2, scope: !2822)
!2845 = !DILocation(line: 688, column: 6, scope: !2822)
!2846 = !DILocation(line: 689, column: 2, scope: !2822)
!2847 = !DILocation(line: 689, column: 6, scope: !2822)
!2848 = !DILocation(line: 691, column: 6, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 691, column: 6)
!2850 = !DILocation(line: 691, column: 10, scope: !2849)
!2851 = !DILocation(line: 691, column: 16, scope: !2849)
!2852 = !DILocation(line: 691, column: 25, scope: !2849)
!2853 = !DILocation(line: 691, column: 6, scope: !2822)
!2854 = !DILocation(line: 692, column: 13, scope: !2849)
!2855 = !DILocation(line: 692, column: 3, scope: !2849)
!2856 = !DILocation(line: 694, column: 6, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 694, column: 6)
!2858 = !DILocation(line: 694, column: 10, scope: !2857)
!2859 = !DILocation(line: 694, column: 16, scope: !2857)
!2860 = !DILocation(line: 694, column: 20, scope: !2857)
!2861 = !DILocation(line: 694, column: 6, scope: !2822)
!2862 = !DILocation(line: 695, column: 13, scope: !2857)
!2863 = !DILocation(line: 695, column: 3, scope: !2857)
!2864 = !DILocation(line: 697, column: 6, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 697, column: 6)
!2866 = !DILocation(line: 697, column: 10, scope: !2865)
!2867 = !DILocation(line: 697, column: 16, scope: !2865)
!2868 = !DILocation(line: 697, column: 24, scope: !2865)
!2869 = !DILocation(line: 697, column: 29, scope: !2865)
!2870 = !DILocation(line: 697, column: 6, scope: !2822)
!2871 = !DILocation(line: 698, column: 13, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 697, column: 36)
!2873 = !DILocation(line: 699, column: 19, scope: !2872)
!2874 = !DILocation(line: 699, column: 23, scope: !2872)
!2875 = !DILocation(line: 699, column: 29, scope: !2872)
!2876 = !DILocation(line: 699, column: 37, scope: !2872)
!2877 = !DILocation(line: 699, column: 41, scope: !2872)
!2878 = !DILocation(line: 699, column: 17, scope: !2872)
!2879 = !DILocation(line: 700, column: 2, scope: !2872)
!2880 = !DILocation(line: 702, column: 9, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 702, column: 2)
!2882 = !DILocation(line: 702, column: 7, scope: !2881)
!2883 = !DILocation(line: 702, column: 14, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 702, column: 2)
!2885 = !DILocation(line: 702, column: 16, scope: !2884)
!2886 = !DILocation(line: 702, column: 42, scope: !2884)
!2887 = !DILocation(line: 702, column: 45, scope: !2884)
!2888 = !DILocation(line: 702, column: 49, scope: !2884)
!2889 = !DILocation(line: 702, column: 55, scope: !2884)
!2890 = !DILocation(line: 702, column: 62, scope: !2884)
!2891 = !DILocation(line: 702, column: 65, scope: !2884)
!2892 = !DILocation(line: 702, column: 70, scope: !2884)
!2893 = !DILocation(line: 0, scope: !2884)
!2894 = !DILocation(line: 702, column: 2, scope: !2881)
!2895 = !DILocation(line: 703, column: 13, scope: !2884)
!2896 = !DILocation(line: 703, column: 3, scope: !2884)
!2897 = !DILocation(line: 702, column: 78, scope: !2884)
!2898 = !DILocation(line: 702, column: 2, scope: !2884)
!2899 = distinct !{!2899, !2894, !2900, !2901, !2902}
!2900 = !DILocation(line: 703, column: 13, scope: !2881)
!2901 = !{!"llvm.loop.mustprogress"}
!2902 = !{!"llvm.loop.unroll.disable"}
!2903 = !DILocation(line: 705, column: 17, scope: !2822)
!2904 = !DILocation(line: 705, column: 9, scope: !2822)
!2905 = !DILocation(line: 705, column: 7, scope: !2822)
!2906 = !DILocation(line: 706, column: 7, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 706, column: 6)
!2908 = !DILocation(line: 706, column: 6, scope: !2822)
!2909 = !DILocation(line: 707, column: 3, scope: !2907)
!2910 = !DILocation(line: 709, column: 19, scope: !2822)
!2911 = !DILocation(line: 709, column: 2, scope: !2822)
!2912 = !DILocation(line: 709, column: 6, scope: !2822)
!2913 = !DILocation(line: 709, column: 17, scope: !2822)
!2914 = !DILocation(line: 711, column: 6, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 711, column: 6)
!2916 = !DILocation(line: 711, column: 10, scope: !2915)
!2917 = !DILocation(line: 711, column: 16, scope: !2915)
!2918 = !DILocation(line: 711, column: 25, scope: !2915)
!2919 = !DILocation(line: 711, column: 6, scope: !2822)
!2920 = !DILocation(line: 712, column: 3, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 711, column: 32)
!2922 = !DILocation(line: 712, column: 9, scope: !2921)
!2923 = !DILocation(line: 712, column: 14, scope: !2921)
!2924 = !DILocation(line: 713, column: 41, scope: !2921)
!2925 = !DILocation(line: 713, column: 45, scope: !2921)
!2926 = !DILocation(line: 713, column: 49, scope: !2921)
!2927 = !DILocation(line: 713, column: 55, scope: !2921)
!2928 = !DILocation(line: 713, column: 64, scope: !2921)
!2929 = !DILocation(line: 713, column: 23, scope: !2921)
!2930 = !DILocation(line: 713, column: 3, scope: !2921)
!2931 = !DILocation(line: 713, column: 9, scope: !2921)
!2932 = !DILocation(line: 713, column: 21, scope: !2921)
!2933 = !DILocation(line: 714, column: 7, scope: !2921)
!2934 = !DILocation(line: 715, column: 2, scope: !2921)
!2935 = !DILocation(line: 717, column: 6, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 717, column: 6)
!2937 = !DILocation(line: 717, column: 10, scope: !2936)
!2938 = !DILocation(line: 717, column: 16, scope: !2936)
!2939 = !DILocation(line: 717, column: 20, scope: !2936)
!2940 = !DILocation(line: 717, column: 6, scope: !2822)
!2941 = !DILocation(line: 718, column: 3, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 717, column: 27)
!2943 = !DILocation(line: 718, column: 9, scope: !2942)
!2944 = !DILocation(line: 718, column: 14, scope: !2942)
!2945 = !DILocation(line: 719, column: 41, scope: !2942)
!2946 = !DILocation(line: 719, column: 45, scope: !2942)
!2947 = !DILocation(line: 719, column: 49, scope: !2942)
!2948 = !DILocation(line: 719, column: 55, scope: !2942)
!2949 = !DILocation(line: 719, column: 59, scope: !2942)
!2950 = !DILocation(line: 719, column: 23, scope: !2942)
!2951 = !DILocation(line: 719, column: 3, scope: !2942)
!2952 = !DILocation(line: 719, column: 9, scope: !2942)
!2953 = !DILocation(line: 719, column: 21, scope: !2942)
!2954 = !DILocation(line: 720, column: 7, scope: !2942)
!2955 = !DILocation(line: 721, column: 2, scope: !2942)
!2956 = !DILocation(line: 723, column: 15, scope: !2822)
!2957 = !DILocation(line: 723, column: 19, scope: !2822)
!2958 = !DILocation(line: 723, column: 25, scope: !2822)
!2959 = !DILocation(line: 723, column: 33, scope: !2822)
!2960 = !DILocation(line: 723, column: 12, scope: !2822)
!2961 = !DILocation(line: 724, column: 6, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 724, column: 6)
!2963 = !DILocation(line: 724, column: 17, scope: !2962)
!2964 = !DILocation(line: 724, column: 6, scope: !2822)
!2965 = !DILocation(line: 725, column: 3, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 724, column: 24)
!2967 = !DILocation(line: 725, column: 9, scope: !2966)
!2968 = !DILocation(line: 725, column: 14, scope: !2966)
!2969 = !DILocation(line: 726, column: 41, scope: !2966)
!2970 = !DILocation(line: 726, column: 45, scope: !2966)
!2971 = !DILocation(line: 726, column: 56, scope: !2966)
!2972 = !DILocation(line: 726, column: 23, scope: !2966)
!2973 = !DILocation(line: 726, column: 3, scope: !2966)
!2974 = !DILocation(line: 726, column: 9, scope: !2966)
!2975 = !DILocation(line: 726, column: 21, scope: !2966)
!2976 = !DILocation(line: 727, column: 16, scope: !2966)
!2977 = !DILocation(line: 727, column: 3, scope: !2966)
!2978 = !DILocation(line: 727, column: 9, scope: !2966)
!2979 = !DILocation(line: 727, column: 14, scope: !2966)
!2980 = !DILocation(line: 728, column: 7, scope: !2966)
!2981 = !DILocation(line: 729, column: 2, scope: !2966)
!2982 = !DILocation(line: 731, column: 9, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 731, column: 2)
!2984 = !DILocation(line: 731, column: 7, scope: !2983)
!2985 = !DILocation(line: 731, column: 14, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 731, column: 2)
!2987 = !DILocation(line: 731, column: 16, scope: !2986)
!2988 = !DILocation(line: 731, column: 2, scope: !2983)
!2989 = !DILocation(line: 732, column: 16, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 731, column: 48)
!2991 = !DILocation(line: 732, column: 20, scope: !2990)
!2992 = !DILocation(line: 732, column: 26, scope: !2990)
!2993 = !DILocation(line: 732, column: 33, scope: !2990)
!2994 = !DILocation(line: 732, column: 36, scope: !2990)
!2995 = !DILocation(line: 732, column: 13, scope: !2990)
!2996 = !DILocation(line: 734, column: 8, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 734, column: 7)
!2998 = !DILocation(line: 734, column: 19, scope: !2997)
!2999 = !DILocation(line: 734, column: 7, scope: !2990)
!3000 = !DILocation(line: 735, column: 4, scope: !2997)
!3001 = !DILocation(line: 737, column: 3, scope: !2990)
!3002 = !DILocation(line: 737, column: 9, scope: !2990)
!3003 = !DILocation(line: 737, column: 14, scope: !2990)
!3004 = !DILocation(line: 738, column: 41, scope: !2990)
!3005 = !DILocation(line: 738, column: 45, scope: !2990)
!3006 = !DILocation(line: 738, column: 56, scope: !2990)
!3007 = !DILocation(line: 738, column: 23, scope: !2990)
!3008 = !DILocation(line: 738, column: 3, scope: !2990)
!3009 = !DILocation(line: 738, column: 9, scope: !2990)
!3010 = !DILocation(line: 738, column: 21, scope: !2990)
!3011 = !DILocation(line: 739, column: 16, scope: !2990)
!3012 = !DILocation(line: 739, column: 3, scope: !2990)
!3013 = !DILocation(line: 739, column: 9, scope: !2990)
!3014 = !DILocation(line: 739, column: 14, scope: !2990)
!3015 = !DILocation(line: 740, column: 7, scope: !2990)
!3016 = !DILocation(line: 741, column: 2, scope: !2990)
!3017 = !DILocation(line: 731, column: 44, scope: !2986)
!3018 = !DILocation(line: 731, column: 2, scope: !2986)
!3019 = distinct !{!3019, !2988, !3020, !2901, !2902}
!3020 = !DILocation(line: 741, column: 2, scope: !2983)
!3021 = !DILocation(line: 744, column: 12, scope: !2822)
!3022 = !DILocation(line: 744, column: 16, scope: !2822)
!3023 = !DILocation(line: 745, column: 12, scope: !2822)
!3024 = !DILocation(line: 746, column: 15, scope: !2822)
!3025 = !DILocation(line: 749, column: 12, scope: !2822)
!3026 = !DILocation(line: 750, column: 12, scope: !2822)
!3027 = !DILocation(line: 750, column: 16, scope: !2822)
!3028 = !DILocation(line: 750, column: 34, scope: !2822)
!3029 = !DILocation(line: 743, column: 21, scope: !2822)
!3030 = !DILocation(line: 743, column: 2, scope: !2822)
!3031 = !DILocation(line: 743, column: 6, scope: !2822)
!3032 = !DILocation(line: 743, column: 19, scope: !2822)
!3033 = !DILocation(line: 751, column: 13, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 751, column: 6)
!3035 = !DILocation(line: 751, column: 17, scope: !3034)
!3036 = !DILocation(line: 751, column: 6, scope: !3034)
!3037 = !DILocation(line: 751, column: 6, scope: !2822)
!3038 = !DILocation(line: 752, column: 20, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 751, column: 32)
!3040 = !DILocation(line: 752, column: 24, scope: !3039)
!3041 = !DILocation(line: 752, column: 12, scope: !3039)
!3042 = !DILocation(line: 752, column: 10, scope: !3039)
!3043 = !DILocation(line: 753, column: 3, scope: !3039)
!3044 = !DILocation(line: 756, column: 39, scope: !2822)
!3045 = !DILocation(line: 756, column: 11, scope: !2822)
!3046 = !DILocation(line: 756, column: 9, scope: !2822)
!3047 = !DILocation(line: 757, column: 6, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 757, column: 6)
!3049 = !DILocation(line: 757, column: 6, scope: !2822)
!3050 = !DILocation(line: 758, column: 3, scope: !3048)
!3051 = !DILocation(line: 760, column: 38, scope: !2822)
!3052 = !DILocation(line: 760, column: 42, scope: !2822)
!3053 = !DILocation(line: 760, column: 11, scope: !2822)
!3054 = !DILocation(line: 760, column: 9, scope: !2822)
!3055 = !DILocation(line: 761, column: 6, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 761, column: 6)
!3057 = !DILocation(line: 761, column: 6, scope: !2822)
!3058 = !DILocation(line: 762, column: 3, scope: !3056)
!3059 = !DILocation(line: 764, column: 2, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 764, column: 2)
!3061 = !DILocation(line: 764, column: 2, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 764, column: 2)
!3063 = !DILocation(line: 767, column: 2, scope: !2822)
!3064 = !DILocation(line: 769, column: 1, scope: !2822)
!3065 = !DILocation(line: 770, column: 33, scope: !2822)
!3066 = !DILocation(line: 770, column: 2, scope: !2822)
!3067 = !DILocation(line: 771, column: 1, scope: !2822)
!3068 = !DILocation(line: 772, column: 33, scope: !2822)
!3069 = !DILocation(line: 772, column: 37, scope: !2822)
!3070 = !DILocation(line: 772, column: 2, scope: !2822)
!3071 = !DILocation(line: 773, column: 1, scope: !2822)
!3072 = !DILocation(line: 774, column: 8, scope: !2822)
!3073 = !DILocation(line: 774, column: 12, scope: !2822)
!3074 = !DILocation(line: 774, column: 2, scope: !2822)
!3075 = !DILocation(line: 776, column: 9, scope: !2822)
!3076 = !DILocation(line: 776, column: 2, scope: !2822)
!3077 = !DILocation(line: 777, column: 1, scope: !2822)
!3078 = distinct !DISubprogram(name: "refcount_set", scope: !154, file: !154, line: 134, type: !3079, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3082)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{null, !3081, !46}
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!3082 = !{!3083, !3084}
!3083 = !DILocalVariable(name: "r", arg: 1, scope: !3078, file: !154, line: 134, type: !3081)
!3084 = !DILocalVariable(name: "n", arg: 2, scope: !3078, file: !154, line: 134, type: !46)
!3085 = !DILocation(line: 134, column: 45, scope: !3078)
!3086 = !DILocation(line: 134, column: 52, scope: !3078)
!3087 = !DILocation(line: 136, column: 14, scope: !3078)
!3088 = !DILocation(line: 136, column: 17, scope: !3078)
!3089 = !DILocation(line: 136, column: 23, scope: !3078)
!3090 = !DILocation(line: 136, column: 2, scope: !3078)
!3091 = !DILocation(line: 137, column: 1, scope: !3078)
!3092 = !DISubprogram(name: "__mutex_init", scope: !543, file: !543, line: 121, type: !3093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{null, !3095, !203, !3096}
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!3097 = distinct !DISubprogram(name: "__init_work", scope: !113, file: !113, line: 263, type: !3098, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{null, !616, !46}
!3100 = !{!3101, !3102}
!3101 = !DILocalVariable(name: "work", arg: 1, scope: !3097, file: !113, line: 263, type: !616)
!3102 = !DILocalVariable(name: "onstack", arg: 2, scope: !3097, file: !113, line: 263, type: !46)
!3103 = !DILocation(line: 263, column: 52, scope: !3097)
!3104 = !DILocation(line: 263, column: 62, scope: !3097)
!3105 = !DILocation(line: 263, column: 73, scope: !3097)
!3106 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3107, file: !3107, line: 35, type: !3108, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3110)
!3107 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!3108 = !DISubroutineType(types: !3109)
!3109 = !{null, !188}
!3110 = !{!3111}
!3111 = !DILocalVariable(name: "list", arg: 1, scope: !3106, file: !3107, line: 35, type: !188)
!3112 = !DILocation(line: 35, column: 53, scope: !3106)
!3113 = !DILocation(line: 37, column: 2, scope: !3106)
!3114 = !DILocation(line: 37, column: 2, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3106, file: !3107, line: 37, column: 2)
!3116 = !DILocation(line: 37, column: 2, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3115, file: !3107, line: 37, column: 2)
!3118 = !DILocation(line: 37, column: 2, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3115, file: !3107, line: 37, column: 2)
!3120 = !DILocation(line: 38, column: 2, scope: !3106)
!3121 = !DILocation(line: 38, column: 2, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3106, file: !3107, line: 38, column: 2)
!3123 = !DILocation(line: 38, column: 2, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3122, file: !3107, line: 38, column: 2)
!3125 = !DILocation(line: 38, column: 2, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3122, file: !3107, line: 38, column: 2)
!3127 = !DILocation(line: 39, column: 1, scope: !3106)
!3128 = distinct !DISubprogram(name: "acpi_thermal_check_fn", scope: !3, file: !3, line: 898, type: !614, scopeLine: 899, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3129)
!3129 = !{!3130, !3131, !3132}
!3130 = !DILocalVariable(name: "work", arg: 1, scope: !3128, file: !3, line: 898, type: !616)
!3131 = !DILocalVariable(name: "tz", scope: !3128, file: !3, line: 900, type: !1234)
!3132 = !DILocalVariable(name: "__mptr", scope: !3133, file: !3, line: 900, type: !356)
!3133 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 900, column: 28)
!3134 = !DILocation(line: 898, column: 55, scope: !3128)
!3135 = !DILocation(line: 900, column: 2, scope: !3128)
!3136 = !DILocation(line: 900, column: 23, scope: !3128)
!3137 = !DILocation(line: 900, column: 28, scope: !3133)
!3138 = !DILocation(line: 900, column: 28, scope: !3128)
!3139 = !DILocation(line: 911, column: 29, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 911, column: 6)
!3141 = !DILocation(line: 911, column: 33, scope: !3140)
!3142 = !DILocation(line: 911, column: 7, scope: !3140)
!3143 = !DILocation(line: 911, column: 6, scope: !3128)
!3144 = !DILocation(line: 912, column: 3, scope: !3140)
!3145 = !DILocation(line: 914, column: 14, scope: !3128)
!3146 = !DILocation(line: 914, column: 18, scope: !3128)
!3147 = !DILocation(line: 914, column: 2, scope: !3128)
!3148 = !DILocation(line: 916, column: 29, scope: !3128)
!3149 = !DILocation(line: 916, column: 33, scope: !3128)
!3150 = !DILocation(line: 916, column: 2, scope: !3128)
!3151 = !DILocation(line: 918, column: 16, scope: !3128)
!3152 = !DILocation(line: 918, column: 20, scope: !3128)
!3153 = !DILocation(line: 918, column: 2, scope: !3128)
!3154 = !DILocation(line: 920, column: 16, scope: !3128)
!3155 = !DILocation(line: 920, column: 20, scope: !3128)
!3156 = !DILocation(line: 920, column: 2, scope: !3128)
!3157 = !DILocation(line: 921, column: 1, scope: !3128)
!3158 = !DISubprogram(name: "_printk", scope: !3159, file: !3159, line: 153, type: !3160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3159 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!46, !203, null}
!3162 = distinct !DISubprogram(name: "deci_kelvin_to_celsius", scope: !3163, file: !3163, line: 61, type: !3164, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3166)
!3163 = !DIFile(filename: "./include/linux/units.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3561b1d2fd278c2c5b809db1cb4698a6")
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!320, !320}
!3166 = !{!3167, !3168, !3170}
!3167 = !DILocalVariable(name: "t", arg: 1, scope: !3162, file: !3163, line: 61, type: !320)
!3168 = !DILocalVariable(name: "__x", scope: !3169, file: !3163, line: 65, type: !320)
!3169 = distinct !DILexicalBlock(scope: !3162, file: !3163, line: 65, column: 9)
!3170 = !DILocalVariable(name: "__d", scope: !3169, file: !3163, line: 65, type: !46)
!3171 = !DILocation(line: 61, column: 48, scope: !3162)
!3172 = !DILocation(line: 63, column: 35, scope: !3162)
!3173 = !DILocation(line: 63, column: 37, scope: !3162)
!3174 = !DILocation(line: 63, column: 6, scope: !3162)
!3175 = !DILocation(line: 63, column: 4, scope: !3162)
!3176 = !DILocation(line: 65, column: 9, scope: !3169)
!3177 = !DILocation(line: 65, column: 9, scope: !3162)
!3178 = !DILocation(line: 65, column: 2, scope: !3162)
!3179 = !DISubprogram(name: "acpi_dev_install_notify_handler", scope: !1240, file: !1240, line: 518, type: !3180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!46, !1238, !1129, !3182}
!3182 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !1229, line: 1061, baseType: !3183)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{null, !1245, !1129, !356}
!3186 = distinct !DISubprogram(name: "acpi_thermal_notify", scope: !3, file: !3, line: 792, type: !3184, scopeLine: 793, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3187)
!3187 = !{!3188, !3189, !3190, !3191, !3192}
!3188 = !DILocalVariable(name: "handle", arg: 1, scope: !3186, file: !3, line: 792, type: !1245)
!3189 = !DILocalVariable(name: "event", arg: 2, scope: !3186, file: !3, line: 792, type: !1129)
!3190 = !DILocalVariable(name: "data", arg: 3, scope: !3186, file: !3, line: 792, type: !356)
!3191 = !DILocalVariable(name: "device", scope: !3186, file: !3, line: 794, type: !1238)
!3192 = !DILocalVariable(name: "tz", scope: !3186, file: !3, line: 795, type: !1234)
!3193 = !DILocation(line: 792, column: 45, scope: !3186)
!3194 = !DILocation(line: 792, column: 57, scope: !3186)
!3195 = !DILocation(line: 792, column: 70, scope: !3186)
!3196 = !DILocation(line: 794, column: 2, scope: !3186)
!3197 = !DILocation(line: 794, column: 22, scope: !3186)
!3198 = !DILocation(line: 794, column: 31, scope: !3186)
!3199 = !DILocation(line: 795, column: 2, scope: !3186)
!3200 = !DILocation(line: 795, column: 23, scope: !3186)
!3201 = !DILocation(line: 795, column: 45, scope: !3186)
!3202 = !DILocation(line: 795, column: 28, scope: !3186)
!3203 = !DILocation(line: 797, column: 7, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 797, column: 6)
!3205 = !DILocation(line: 797, column: 6, scope: !3186)
!3206 = !DILocation(line: 798, column: 3, scope: !3204)
!3207 = !DILocation(line: 800, column: 10, scope: !3186)
!3208 = !DILocation(line: 800, column: 2, scope: !3186)
!3209 = !DILocation(line: 802, column: 28, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 800, column: 17)
!3211 = !DILocation(line: 802, column: 3, scope: !3210)
!3212 = !DILocation(line: 803, column: 3, scope: !3210)
!3213 = !DILocation(line: 806, column: 29, scope: !3210)
!3214 = !DILocation(line: 806, column: 33, scope: !3210)
!3215 = !DILocation(line: 806, column: 3, scope: !3210)
!3216 = !DILocation(line: 807, column: 3, scope: !3210)
!3217 = !DILocation(line: 809, column: 3, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 809, column: 3)
!3219 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 809, column: 3)
!3220 = !DILocation(line: 809, column: 3, scope: !3219)
!3221 = !DILocation(line: 811, column: 3, scope: !3210)
!3222 = !DILocation(line: 813, column: 1, scope: !3186)
!3223 = !DISubprogram(name: "__warn_flushing_systemwide_wq", scope: !113, file: !113, line: 633, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3224 = !DISubprogram(name: "__flush_workqueue", scope: !113, file: !113, line: 506, type: !2575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3225 = distinct !DISubprogram(name: "acpi_thermal_unregister_thermal_zone", scope: !3, file: !3, line: 779, type: !2796, scopeLine: 780, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3226)
!3226 = !{!3227}
!3227 = !DILocalVariable(name: "tz", arg: 1, scope: !3225, file: !3, line: 779, type: !1234)
!3228 = !DILocation(line: 779, column: 71, scope: !3225)
!3229 = !DILocation(line: 781, column: 30, scope: !3225)
!3230 = !DILocation(line: 781, column: 34, scope: !3225)
!3231 = !DILocation(line: 781, column: 2, scope: !3225)
!3232 = !DILocation(line: 782, column: 33, scope: !3225)
!3233 = !DILocation(line: 782, column: 2, scope: !3225)
!3234 = !DILocation(line: 783, column: 33, scope: !3225)
!3235 = !DILocation(line: 783, column: 37, scope: !3225)
!3236 = !DILocation(line: 783, column: 2, scope: !3225)
!3237 = !DILocation(line: 784, column: 2, scope: !3225)
!3238 = !DILocation(line: 784, column: 6, scope: !3225)
!3239 = !DILocation(line: 784, column: 19, scope: !3225)
!3240 = !DILocation(line: 785, column: 1, scope: !3225)
!3241 = !DISubprogram(name: "kfree", scope: !144, file: !144, line: 227, type: !3242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{null, !563}
!3244 = distinct !DISubprogram(name: "kmalloc", scope: !144, file: !144, line: 591, type: !2733, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3245)
!3245 = !{!3246, !3247, !3248}
!3246 = !DILocalVariable(name: "size", arg: 1, scope: !3244, file: !144, line: 591, type: !331)
!3247 = !DILocalVariable(name: "flags", arg: 2, scope: !3244, file: !144, line: 591, type: !1227)
!3248 = !DILocalVariable(name: "index", scope: !3249, file: !144, line: 594, type: !7)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !144, line: 593, column: 42)
!3250 = distinct !DILexicalBlock(scope: !3244, file: !144, line: 593, column: 6)
!3251 = !DILocation(line: 591, column: 61, scope: !3244)
!3252 = !DILocation(line: 591, column: 73, scope: !3244)
!3253 = !DILocation(line: 593, column: 27, scope: !3250)
!3254 = !DILocation(line: 593, column: 6, scope: !3250)
!3255 = !DILocation(line: 593, column: 33, scope: !3250)
!3256 = !DILocation(line: 593, column: 36, scope: !3250)
!3257 = !DILocation(line: 593, column: 6, scope: !3244)
!3258 = !DILocation(line: 594, column: 3, scope: !3249)
!3259 = !DILocation(line: 594, column: 16, scope: !3249)
!3260 = !DILocation(line: 596, column: 7, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3249, file: !144, line: 596, column: 7)
!3262 = !DILocation(line: 596, column: 12, scope: !3261)
!3263 = !DILocation(line: 596, column: 7, scope: !3249)
!3264 = !DILocation(line: 597, column: 25, scope: !3261)
!3265 = !DILocation(line: 597, column: 31, scope: !3261)
!3266 = !DILocation(line: 597, column: 11, scope: !3261)
!3267 = !DILocation(line: 597, column: 4, scope: !3261)
!3268 = !DILocation(line: 599, column: 11, scope: !3249)
!3269 = !DILocation(line: 599, column: 9, scope: !3249)
!3270 = !DILocation(line: 601, column: 33, scope: !3249)
!3271 = !DILocation(line: 601, column: 40, scope: !3249)
!3272 = !DILocation(line: 601, column: 20, scope: !3249)
!3273 = !DILocation(line: 601, column: 5, scope: !3249)
!3274 = !DILocation(line: 601, column: 51, scope: !3249)
!3275 = !DILocation(line: 602, column: 5, scope: !3249)
!3276 = !DILocation(line: 602, column: 12, scope: !3249)
!3277 = !DILocation(line: 600, column: 10, scope: !3249)
!3278 = !DILocation(line: 600, column: 3, scope: !3249)
!3279 = !DILocation(line: 603, column: 2, scope: !3250)
!3280 = !DILocation(line: 604, column: 19, scope: !3244)
!3281 = !DILocation(line: 604, column: 25, scope: !3244)
!3282 = !DILocation(line: 604, column: 9, scope: !3244)
!3283 = !DILocation(line: 604, column: 2, scope: !3244)
!3284 = !DILocation(line: 605, column: 1, scope: !3244)
!3285 = !DISubprogram(name: "kmalloc_large", scope: !144, file: !144, line: 531, type: !2733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3286 = distinct !DISubprogram(name: "__kmalloc_index", scope: !144, file: !144, line: 444, type: !3287, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!7, !331, !641}
!3289 = !{!3290, !3291}
!3290 = !DILocalVariable(name: "size", arg: 1, scope: !3286, file: !144, line: 444, type: !331)
!3291 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3286, file: !144, line: 445, type: !641)
!3292 = !DILocation(line: 444, column: 60, scope: !3286)
!3293 = !DILocation(line: 445, column: 16, scope: !3286)
!3294 = !DILocation(line: 447, column: 7, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 447, column: 6)
!3296 = !DILocation(line: 447, column: 6, scope: !3286)
!3297 = !DILocation(line: 448, column: 3, scope: !3295)
!3298 = !DILocation(line: 450, column: 6, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 450, column: 6)
!3300 = !DILocation(line: 450, column: 11, scope: !3299)
!3301 = !DILocation(line: 450, column: 6, scope: !3286)
!3302 = !DILocation(line: 451, column: 3, scope: !3299)
!3303 = !DILocation(line: 453, column: 32, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 453, column: 6)
!3305 = !DILocation(line: 453, column: 37, scope: !3304)
!3306 = !DILocation(line: 453, column: 42, scope: !3304)
!3307 = !DILocation(line: 453, column: 45, scope: !3304)
!3308 = !DILocation(line: 453, column: 50, scope: !3304)
!3309 = !DILocation(line: 453, column: 6, scope: !3286)
!3310 = !DILocation(line: 454, column: 3, scope: !3304)
!3311 = !DILocation(line: 455, column: 32, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 455, column: 6)
!3313 = !DILocation(line: 455, column: 37, scope: !3312)
!3314 = !DILocation(line: 455, column: 43, scope: !3312)
!3315 = !DILocation(line: 455, column: 46, scope: !3312)
!3316 = !DILocation(line: 455, column: 51, scope: !3312)
!3317 = !DILocation(line: 455, column: 6, scope: !3286)
!3318 = !DILocation(line: 456, column: 3, scope: !3312)
!3319 = !DILocation(line: 457, column: 6, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 457, column: 6)
!3321 = !DILocation(line: 457, column: 11, scope: !3320)
!3322 = !DILocation(line: 457, column: 6, scope: !3286)
!3323 = !DILocation(line: 457, column: 26, scope: !3320)
!3324 = !DILocation(line: 458, column: 6, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 458, column: 6)
!3326 = !DILocation(line: 458, column: 11, scope: !3325)
!3327 = !DILocation(line: 458, column: 6, scope: !3286)
!3328 = !DILocation(line: 458, column: 26, scope: !3325)
!3329 = !DILocation(line: 459, column: 6, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 459, column: 6)
!3331 = !DILocation(line: 459, column: 11, scope: !3330)
!3332 = !DILocation(line: 459, column: 6, scope: !3286)
!3333 = !DILocation(line: 459, column: 26, scope: !3330)
!3334 = !DILocation(line: 460, column: 6, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 460, column: 6)
!3336 = !DILocation(line: 460, column: 11, scope: !3335)
!3337 = !DILocation(line: 460, column: 6, scope: !3286)
!3338 = !DILocation(line: 460, column: 26, scope: !3335)
!3339 = !DILocation(line: 461, column: 6, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 461, column: 6)
!3341 = !DILocation(line: 461, column: 11, scope: !3340)
!3342 = !DILocation(line: 461, column: 6, scope: !3286)
!3343 = !DILocation(line: 461, column: 26, scope: !3340)
!3344 = !DILocation(line: 462, column: 6, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 462, column: 6)
!3346 = !DILocation(line: 462, column: 11, scope: !3345)
!3347 = !DILocation(line: 462, column: 6, scope: !3286)
!3348 = !DILocation(line: 462, column: 26, scope: !3345)
!3349 = !DILocation(line: 463, column: 6, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 463, column: 6)
!3351 = !DILocation(line: 463, column: 11, scope: !3350)
!3352 = !DILocation(line: 463, column: 6, scope: !3286)
!3353 = !DILocation(line: 463, column: 26, scope: !3350)
!3354 = !DILocation(line: 464, column: 6, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 464, column: 6)
!3356 = !DILocation(line: 464, column: 11, scope: !3355)
!3357 = !DILocation(line: 464, column: 6, scope: !3286)
!3358 = !DILocation(line: 464, column: 26, scope: !3355)
!3359 = !DILocation(line: 465, column: 6, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 465, column: 6)
!3361 = !DILocation(line: 465, column: 11, scope: !3360)
!3362 = !DILocation(line: 465, column: 6, scope: !3286)
!3363 = !DILocation(line: 465, column: 26, scope: !3360)
!3364 = !DILocation(line: 466, column: 6, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 466, column: 6)
!3366 = !DILocation(line: 466, column: 11, scope: !3365)
!3367 = !DILocation(line: 466, column: 6, scope: !3286)
!3368 = !DILocation(line: 466, column: 26, scope: !3365)
!3369 = !DILocation(line: 467, column: 6, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 467, column: 6)
!3371 = !DILocation(line: 467, column: 11, scope: !3370)
!3372 = !DILocation(line: 467, column: 6, scope: !3286)
!3373 = !DILocation(line: 467, column: 26, scope: !3370)
!3374 = !DILocation(line: 468, column: 6, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 468, column: 6)
!3376 = !DILocation(line: 468, column: 11, scope: !3375)
!3377 = !DILocation(line: 468, column: 6, scope: !3286)
!3378 = !DILocation(line: 468, column: 26, scope: !3375)
!3379 = !DILocation(line: 469, column: 6, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 469, column: 6)
!3381 = !DILocation(line: 469, column: 11, scope: !3380)
!3382 = !DILocation(line: 469, column: 6, scope: !3286)
!3383 = !DILocation(line: 469, column: 26, scope: !3380)
!3384 = !DILocation(line: 470, column: 6, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 470, column: 6)
!3386 = !DILocation(line: 470, column: 11, scope: !3385)
!3387 = !DILocation(line: 470, column: 6, scope: !3286)
!3388 = !DILocation(line: 470, column: 26, scope: !3385)
!3389 = !DILocation(line: 471, column: 6, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 471, column: 6)
!3391 = !DILocation(line: 471, column: 11, scope: !3390)
!3392 = !DILocation(line: 471, column: 6, scope: !3286)
!3393 = !DILocation(line: 471, column: 26, scope: !3390)
!3394 = !DILocation(line: 472, column: 6, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 472, column: 6)
!3396 = !DILocation(line: 472, column: 11, scope: !3395)
!3397 = !DILocation(line: 472, column: 6, scope: !3286)
!3398 = !DILocation(line: 472, column: 26, scope: !3395)
!3399 = !DILocation(line: 473, column: 6, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 473, column: 6)
!3401 = !DILocation(line: 473, column: 11, scope: !3400)
!3402 = !DILocation(line: 473, column: 6, scope: !3286)
!3403 = !DILocation(line: 473, column: 26, scope: !3400)
!3404 = !DILocation(line: 474, column: 6, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 474, column: 6)
!3406 = !DILocation(line: 474, column: 11, scope: !3405)
!3407 = !DILocation(line: 474, column: 6, scope: !3286)
!3408 = !DILocation(line: 474, column: 27, scope: !3405)
!3409 = !DILocation(line: 475, column: 6, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 475, column: 6)
!3411 = !DILocation(line: 475, column: 11, scope: !3410)
!3412 = !DILocation(line: 475, column: 6, scope: !3286)
!3413 = !DILocation(line: 475, column: 32, scope: !3410)
!3414 = !DILocation(line: 477, column: 50, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3286, file: !144, line: 477, column: 6)
!3416 = !DILocation(line: 477, column: 6, scope: !3286)
!3417 = !DILocation(line: 478, column: 3, scope: !3415)
!3418 = !DILocation(line: 478, column: 3, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !144, line: 478, column: 3)
!3420 = distinct !DILexicalBlock(scope: !3415, file: !144, line: 478, column: 3)
!3421 = !{i32 -2142536443}
!3422 = !DILocation(line: 478, column: 3, scope: !3420)
!3423 = !DILocation(line: 480, column: 3, scope: !3415)
!3424 = !DILocation(line: 480, column: 3, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3415, file: !144, line: 480, column: 3)
!3426 = !DILocation(line: 480, column: 3, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3425, file: !144, line: 480, column: 3)
!3428 = !DILocation(line: 480, column: 3, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3425, file: !144, line: 480, column: 3)
!3430 = !{i64 2152431056, i64 2152431085, i64 2152431131, i64 2152431189, i64 2152431243, i64 2152431297, i64 2152431352, i64 2152431383}
!3431 = !DILocation(line: 483, column: 2, scope: !3286)
!3432 = !DILocation(line: 484, column: 1, scope: !3286)
!3433 = !DISubprogram(name: "kmalloc_trace", scope: !144, file: !144, line: 525, type: !3434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!356, !3436, !1227, !331}
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3438, line: 11, flags: DIFlagFwdDecl)
!3438 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3439 = distinct !DISubprogram(name: "kmalloc_type", scope: !144, file: !144, line: 401, type: !3440, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!143, !1227, !334}
!3442 = !{!3443, !3444}
!3443 = !DILocalVariable(name: "flags", arg: 1, scope: !3439, file: !144, line: 401, type: !1227)
!3444 = !DILocalVariable(name: "caller", arg: 2, scope: !3439, file: !144, line: 401, type: !334)
!3445 = !DILocation(line: 401, column: 67, scope: !3439)
!3446 = !DILocation(line: 401, column: 88, scope: !3439)
!3447 = !DILocation(line: 407, column: 6, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3439, file: !144, line: 407, column: 6)
!3449 = !DILocation(line: 407, column: 6, scope: !3439)
!3450 = !DILocation(line: 413, column: 3, scope: !3448)
!3451 = !DILocation(line: 423, column: 38, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3439, file: !144, line: 423, column: 6)
!3453 = !DILocation(line: 423, column: 44, scope: !3452)
!3454 = !DILocation(line: 423, column: 6, scope: !3439)
!3455 = !DILocation(line: 424, column: 3, scope: !3452)
!3456 = !DILocation(line: 426, column: 3, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3439, file: !144, line: 425, column: 6)
!3458 = !DILocation(line: 429, column: 1, scope: !3439)
!3459 = !DISubprogram(name: "__kmalloc", scope: !144, file: !144, line: 488, type: !2733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3460 = !DISubprogram(name: "__compiletime_assert_196", scope: !144, file: !144, line: 478, type: !1224, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3461 = distinct !DISubprogram(name: "acpi_thermal_aml_dependency_fix", scope: !3, file: !3, line: 827, type: !2796, scopeLine: 828, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3462)
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3471}
!3463 = !DILocalVariable(name: "tz", arg: 1, scope: !3461, file: !3, line: 827, type: !1234)
!3464 = !DILocalVariable(name: "handle", scope: !3461, file: !3, line: 829, type: !1245)
!3465 = !DILocalVariable(name: "value", scope: !3461, file: !3, line: 830, type: !450)
!3466 = !DILocalVariable(name: "i", scope: !3461, file: !3, line: 831, type: !46)
!3467 = !DILocalVariable(name: "name", scope: !3468, file: !3, line: 837, type: !2432)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 836, column: 48)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !3, line: 836, column: 2)
!3470 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 836, column: 2)
!3471 = !DILocalVariable(name: "status", scope: !3468, file: !3, line: 838, type: !1228)
!3472 = !DILocation(line: 827, column: 66, scope: !3461)
!3473 = !DILocation(line: 829, column: 2, scope: !3461)
!3474 = !DILocation(line: 829, column: 14, scope: !3461)
!3475 = !DILocation(line: 829, column: 23, scope: !3461)
!3476 = !DILocation(line: 829, column: 27, scope: !3461)
!3477 = !DILocation(line: 829, column: 35, scope: !3461)
!3478 = !DILocation(line: 830, column: 2, scope: !3461)
!3479 = !DILocation(line: 830, column: 21, scope: !3461)
!3480 = !DILocation(line: 831, column: 2, scope: !3461)
!3481 = !DILocation(line: 831, column: 6, scope: !3461)
!3482 = !DILocation(line: 833, column: 24, scope: !3461)
!3483 = !DILocation(line: 833, column: 2, scope: !3461)
!3484 = !DILocation(line: 834, column: 24, scope: !3461)
!3485 = !DILocation(line: 834, column: 2, scope: !3461)
!3486 = !DILocation(line: 835, column: 24, scope: !3461)
!3487 = !DILocation(line: 835, column: 2, scope: !3461)
!3488 = !DILocation(line: 836, column: 9, scope: !3470)
!3489 = !DILocation(line: 836, column: 7, scope: !3470)
!3490 = !DILocation(line: 836, column: 14, scope: !3469)
!3491 = !DILocation(line: 836, column: 16, scope: !3469)
!3492 = !DILocation(line: 836, column: 2, scope: !3470)
!3493 = !DILocation(line: 837, column: 3, scope: !3468)
!3494 = !DILocation(line: 837, column: 8, scope: !3468)
!3495 = !DILocation(line: 837, column: 18, scope: !3468)
!3496 = !DILocation(line: 837, column: 42, scope: !3468)
!3497 = !DILocation(line: 837, column: 40, scope: !3468)
!3498 = !DILocation(line: 837, column: 35, scope: !3468)
!3499 = !DILocation(line: 838, column: 3, scope: !3468)
!3500 = !DILocation(line: 838, column: 15, scope: !3468)
!3501 = !DILocation(line: 840, column: 34, scope: !3468)
!3502 = !DILocation(line: 840, column: 42, scope: !3468)
!3503 = !DILocation(line: 840, column: 12, scope: !3468)
!3504 = !DILocation(line: 840, column: 10, scope: !3468)
!3505 = !DILocation(line: 841, column: 7, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 841, column: 7)
!3507 = !DILocation(line: 841, column: 14, scope: !3506)
!3508 = !DILocation(line: 841, column: 7, scope: !3468)
!3509 = !DILocation(line: 842, column: 4, scope: !3506)
!3510 = !DILocation(line: 843, column: 2, scope: !3469)
!3511 = !DILocation(line: 843, column: 2, scope: !3468)
!3512 = !DILocation(line: 836, column: 44, scope: !3469)
!3513 = !DILocation(line: 836, column: 2, scope: !3469)
!3514 = distinct !{!3514, !3492, !3515, !2901, !2902}
!3515 = !DILocation(line: 843, column: 2, scope: !3470)
!3516 = !DILocation(line: 844, column: 24, scope: !3461)
!3517 = !DILocation(line: 844, column: 2, scope: !3461)
!3518 = !DILocation(line: 845, column: 1, scope: !3461)
!3519 = distinct !DISubprogram(name: "acpi_thermal_get_trip_points", scope: !3, file: !3, line: 454, type: !2750, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3520)
!3520 = !{!3521, !3522, !3523}
!3521 = !DILocalVariable(name: "tz", arg: 1, scope: !3519, file: !3, line: 454, type: !1234)
!3522 = !DILocalVariable(name: "valid", scope: !3519, file: !3, line: 456, type: !641)
!3523 = !DILocalVariable(name: "i", scope: !3519, file: !3, line: 457, type: !46)
!3524 = !DILocation(line: 454, column: 62, scope: !3519)
!3525 = !DILocation(line: 456, column: 2, scope: !3519)
!3526 = !DILocation(line: 456, column: 7, scope: !3519)
!3527 = !DILocation(line: 457, column: 2, scope: !3519)
!3528 = !DILocation(line: 457, column: 6, scope: !3519)
!3529 = !DILocation(line: 459, column: 30, scope: !3519)
!3530 = !DILocation(line: 459, column: 2, scope: !3519)
!3531 = !DILocation(line: 461, column: 10, scope: !3519)
!3532 = !DILocation(line: 461, column: 14, scope: !3519)
!3533 = !DILocation(line: 461, column: 20, scope: !3519)
!3534 = !DILocation(line: 461, column: 29, scope: !3519)
!3535 = !DILocation(line: 462, column: 3, scope: !3519)
!3536 = !DILocation(line: 462, column: 7, scope: !3519)
!3537 = !DILocation(line: 462, column: 13, scope: !3519)
!3538 = !DILocation(line: 462, column: 17, scope: !3519)
!3539 = !DILocation(line: 461, column: 35, scope: !3519)
!3540 = !DILocation(line: 463, column: 3, scope: !3519)
!3541 = !DILocation(line: 463, column: 7, scope: !3519)
!3542 = !DILocation(line: 463, column: 13, scope: !3519)
!3543 = !DILocation(line: 463, column: 21, scope: !3519)
!3544 = !DILocation(line: 463, column: 26, scope: !3519)
!3545 = !DILocation(line: 462, column: 23, scope: !3519)
!3546 = !DILocation(line: 461, column: 8, scope: !3519)
!3547 = !DILocation(line: 465, column: 9, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 465, column: 2)
!3549 = !DILocation(line: 465, column: 7, scope: !3548)
!3550 = !DILocation(line: 465, column: 14, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 465, column: 2)
!3552 = !DILocation(line: 465, column: 16, scope: !3551)
!3553 = !DILocation(line: 465, column: 2, scope: !3548)
!3554 = !DILocation(line: 466, column: 11, scope: !3551)
!3555 = !DILocation(line: 466, column: 17, scope: !3551)
!3556 = !DILocation(line: 466, column: 20, scope: !3551)
!3557 = !DILocation(line: 466, column: 24, scope: !3551)
!3558 = !DILocation(line: 466, column: 30, scope: !3551)
!3559 = !DILocation(line: 466, column: 37, scope: !3551)
!3560 = !DILocation(line: 466, column: 40, scope: !3551)
!3561 = !DILocation(line: 466, column: 45, scope: !3551)
!3562 = !DILocation(line: 466, column: 9, scope: !3551)
!3563 = !DILocation(line: 466, column: 3, scope: !3551)
!3564 = !DILocation(line: 465, column: 44, scope: !3551)
!3565 = !DILocation(line: 465, column: 2, scope: !3551)
!3566 = distinct !{!3566, !3553, !3567, !2901, !2902}
!3567 = !DILocation(line: 466, column: 45, scope: !3548)
!3568 = !DILocation(line: 468, column: 7, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 468, column: 6)
!3570 = !DILocation(line: 468, column: 6, scope: !3519)
!3571 = !DILocation(line: 469, column: 3, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 469, column: 3)
!3573 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 468, column: 14)
!3574 = !DILocation(line: 469, column: 3, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 469, column: 3)
!3576 = !DILocation(line: 470, column: 3, scope: !3573)
!3577 = !DILocation(line: 472, column: 2, scope: !3519)
!3578 = !DILocation(line: 473, column: 1, scope: !3519)
!3579 = distinct !DISubprogram(name: "acpi_thermal_get_temperature", scope: !3, file: !3, line: 141, type: !2750, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3580)
!3580 = !{!3581, !3582, !3583}
!3581 = !DILocalVariable(name: "tz", arg: 1, scope: !3579, file: !3, line: 141, type: !1234)
!3582 = !DILocalVariable(name: "status", scope: !3579, file: !3, line: 143, type: !1228)
!3583 = !DILocalVariable(name: "tmp", scope: !3579, file: !3, line: 144, type: !450)
!3584 = !DILocation(line: 141, column: 62, scope: !3579)
!3585 = !DILocation(line: 143, column: 2, scope: !3579)
!3586 = !DILocation(line: 143, column: 14, scope: !3579)
!3587 = !DILocation(line: 144, column: 2, scope: !3579)
!3588 = !DILocation(line: 144, column: 21, scope: !3579)
!3589 = !DILocation(line: 146, column: 7, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 146, column: 6)
!3591 = !DILocation(line: 146, column: 6, scope: !3579)
!3592 = !DILocation(line: 147, column: 3, scope: !3590)
!3593 = !DILocation(line: 149, column: 25, scope: !3579)
!3594 = !DILocation(line: 149, column: 29, scope: !3579)
!3595 = !DILocation(line: 149, column: 2, scope: !3579)
!3596 = !DILocation(line: 149, column: 6, scope: !3579)
!3597 = !DILocation(line: 149, column: 23, scope: !3579)
!3598 = !DILocation(line: 151, column: 33, scope: !3579)
!3599 = !DILocation(line: 151, column: 37, scope: !3579)
!3600 = !DILocation(line: 151, column: 45, scope: !3579)
!3601 = !DILocation(line: 151, column: 11, scope: !3579)
!3602 = !DILocation(line: 151, column: 9, scope: !3579)
!3603 = !DILocation(line: 152, column: 6, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 152, column: 6)
!3605 = !DILocation(line: 152, column: 6, scope: !3579)
!3606 = !DILocation(line: 153, column: 3, scope: !3604)
!3607 = !DILocation(line: 155, column: 20, scope: !3579)
!3608 = !DILocation(line: 155, column: 2, scope: !3579)
!3609 = !DILocation(line: 155, column: 6, scope: !3579)
!3610 = !DILocation(line: 155, column: 18, scope: !3579)
!3611 = !DILocation(line: 157, column: 2, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 157, column: 2)
!3613 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 157, column: 2)
!3614 = !DILocation(line: 157, column: 2, scope: !3613)
!3615 = !DILocation(line: 160, column: 2, scope: !3579)
!3616 = !DILocation(line: 161, column: 1, scope: !3579)
!3617 = !DISubprogram(name: "acpi_execute_simple_method", scope: !1240, file: !1240, line: 43, type: !3618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!1228, !1245, !284, !448}
!3620 = distinct !DISubprogram(name: "acpi_thermal_get_polling_frequency", scope: !3, file: !3, line: 163, type: !2750, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3621)
!3621 = !{!3622, !3623, !3624}
!3622 = !DILocalVariable(name: "tz", arg: 1, scope: !3620, file: !3, line: 163, type: !1234)
!3623 = !DILocalVariable(name: "status", scope: !3620, file: !3, line: 165, type: !1228)
!3624 = !DILocalVariable(name: "tmp", scope: !3620, file: !3, line: 166, type: !450)
!3625 = !DILocation(line: 163, column: 68, scope: !3620)
!3626 = !DILocation(line: 165, column: 2, scope: !3620)
!3627 = !DILocation(line: 165, column: 14, scope: !3620)
!3628 = !DILocation(line: 166, column: 2, scope: !3620)
!3629 = !DILocation(line: 166, column: 21, scope: !3620)
!3630 = !DILocation(line: 168, column: 7, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 168, column: 6)
!3632 = !DILocation(line: 168, column: 6, scope: !3620)
!3633 = !DILocation(line: 169, column: 3, scope: !3631)
!3634 = !DILocation(line: 171, column: 33, scope: !3620)
!3635 = !DILocation(line: 171, column: 37, scope: !3620)
!3636 = !DILocation(line: 171, column: 45, scope: !3620)
!3637 = !DILocation(line: 171, column: 11, scope: !3620)
!3638 = !DILocation(line: 171, column: 9, scope: !3620)
!3639 = !DILocation(line: 172, column: 6, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 172, column: 6)
!3641 = !DILocation(line: 172, column: 6, scope: !3620)
!3642 = !DILocation(line: 173, column: 3, scope: !3640)
!3643 = !DILocation(line: 175, column: 26, scope: !3620)
!3644 = !DILocation(line: 175, column: 2, scope: !3620)
!3645 = !DILocation(line: 175, column: 6, scope: !3620)
!3646 = !DILocation(line: 175, column: 24, scope: !3620)
!3647 = !DILocation(line: 176, column: 2, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !3, line: 176, column: 2)
!3649 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 176, column: 2)
!3650 = !DILocation(line: 176, column: 2, scope: !3649)
!3651 = !DILocation(line: 179, column: 2, scope: !3620)
!3652 = !DILocation(line: 180, column: 1, scope: !3620)
!3653 = !DISubprogram(name: "acpi_evaluate_integer", scope: !1240, file: !1240, line: 27, type: !3654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!1228, !1245, !3656, !3657, !3662}
!3656 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !1229, line: 423, baseType: !284)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !1229, line: 956, size: 128, elements: !3659)
!3659 = !{!3660, !3661}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3658, file: !1229, line: 957, baseType: !1129, size: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3658, file: !1229, line: 958, baseType: !1876, size: 64, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!3663 = distinct !DISubprogram(name: "__acpi_thermal_trips_update", scope: !3, file: !3, line: 191, type: !3664, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3666)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{null, !1234, !46}
!3666 = !{!3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3682, !3686, !3693}
!3667 = !DILocalVariable(name: "tz", arg: 1, scope: !3663, file: !3, line: 191, type: !1234)
!3668 = !DILocalVariable(name: "flag", arg: 2, scope: !3663, file: !3, line: 191, type: !46)
!3669 = !DILocalVariable(name: "status", scope: !3663, file: !3, line: 193, type: !1228)
!3670 = !DILocalVariable(name: "tmp", scope: !3663, file: !3, line: 194, type: !450)
!3671 = !DILocalVariable(name: "devices", scope: !3663, file: !3, line: 195, type: !2092)
!3672 = !DILocalVariable(name: "valid", scope: !3663, file: !3, line: 196, type: !641)
!3673 = !DILocalVariable(name: "i", scope: !3663, file: !3, line: 197, type: !46)
!3674 = !DILocalVariable(name: "crt_k", scope: !3675, file: !3, line: 226, type: !334)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 225, column: 24)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 225, column: 15)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 223, column: 8)
!3678 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 222, column: 33)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 222, column: 7)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 200, column: 34)
!3681 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 200, column: 6)
!3682 = !DILocalVariable(name: "name", scope: !3683, file: !3, line: 324, type: !2432)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 323, column: 48)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 323, column: 2)
!3685 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 323, column: 2)
!3686 = !DILocalVariable(name: "__UNIQUE_ID___x239", scope: !3687, file: !3, line: 351, type: !334)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 351, column: 7)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !3, line: 342, column: 9)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !3, line: 334, column: 30)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 334, column: 8)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !3, line: 331, column: 40)
!3692 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 330, column: 7)
!3693 = !DILocalVariable(name: "__UNIQUE_ID___y240", scope: !3687, file: !3, line: 351, type: !334)
!3694 = !DILocation(line: 191, column: 62, scope: !3663)
!3695 = !DILocation(line: 191, column: 70, scope: !3663)
!3696 = !DILocation(line: 193, column: 2, scope: !3663)
!3697 = !DILocation(line: 193, column: 14, scope: !3663)
!3698 = !DILocation(line: 194, column: 2, scope: !3663)
!3699 = !DILocation(line: 194, column: 21, scope: !3663)
!3700 = !DILocation(line: 195, column: 2, scope: !3663)
!3701 = !DILocation(line: 195, column: 26, scope: !3663)
!3702 = !DILocation(line: 196, column: 2, scope: !3663)
!3703 = !DILocation(line: 196, column: 7, scope: !3663)
!3704 = !DILocation(line: 197, column: 2, scope: !3663)
!3705 = !DILocation(line: 197, column: 6, scope: !3663)
!3706 = !DILocation(line: 200, column: 6, scope: !3681)
!3707 = !DILocation(line: 200, column: 11, scope: !3681)
!3708 = !DILocation(line: 200, column: 6, scope: !3663)
!3709 = !DILocation(line: 201, column: 34, scope: !3680)
!3710 = !DILocation(line: 201, column: 38, scope: !3680)
!3711 = !DILocation(line: 201, column: 46, scope: !3680)
!3712 = !DILocation(line: 201, column: 12, scope: !3680)
!3713 = !DILocation(line: 201, column: 10, scope: !3680)
!3714 = !DILocation(line: 202, column: 36, scope: !3680)
!3715 = !DILocation(line: 202, column: 3, scope: !3680)
!3716 = !DILocation(line: 202, column: 7, scope: !3680)
!3717 = !DILocation(line: 202, column: 13, scope: !3680)
!3718 = !DILocation(line: 202, column: 22, scope: !3680)
!3719 = !DILocation(line: 202, column: 34, scope: !3680)
!3720 = !DILocation(line: 209, column: 7, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 209, column: 7)
!3722 = !DILocation(line: 209, column: 7, scope: !3680)
!3723 = !DILocation(line: 210, column: 4, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 209, column: 29)
!3725 = !DILocation(line: 210, column: 8, scope: !3724)
!3726 = !DILocation(line: 210, column: 14, scope: !3724)
!3727 = !DILocation(line: 210, column: 23, scope: !3724)
!3728 = !DILocation(line: 210, column: 29, scope: !3724)
!3729 = !DILocation(line: 211, column: 4, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 211, column: 4)
!3731 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 211, column: 4)
!3732 = !DILocation(line: 211, column: 4, scope: !3731)
!3733 = !DILocation(line: 213, column: 3, scope: !3724)
!3734 = !DILocation(line: 213, column: 14, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 213, column: 14)
!3736 = !DILocation(line: 213, column: 18, scope: !3735)
!3737 = !DILocation(line: 213, column: 14, scope: !3721)
!3738 = !DILocation(line: 214, column: 4, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !3, line: 214, column: 4)
!3740 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 213, column: 27)
!3741 = !DILocation(line: 214, column: 4, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 214, column: 4)
!3743 = !DILocation(line: 215, column: 4, scope: !3740)
!3744 = !DILocation(line: 215, column: 8, scope: !3740)
!3745 = !DILocation(line: 215, column: 14, scope: !3740)
!3746 = !DILocation(line: 215, column: 23, scope: !3740)
!3747 = !DILocation(line: 215, column: 29, scope: !3740)
!3748 = !DILocation(line: 216, column: 3, scope: !3740)
!3749 = !DILocation(line: 217, column: 4, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 216, column: 10)
!3751 = !DILocation(line: 217, column: 8, scope: !3750)
!3752 = !DILocation(line: 217, column: 14, scope: !3750)
!3753 = !DILocation(line: 217, column: 23, scope: !3750)
!3754 = !DILocation(line: 217, column: 29, scope: !3750)
!3755 = !DILocation(line: 218, column: 4, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3757, file: !3, line: 218, column: 4)
!3757 = distinct !DILexicalBlock(scope: !3750, file: !3, line: 218, column: 4)
!3758 = !DILocation(line: 218, column: 4, scope: !3757)
!3759 = !DILocation(line: 222, column: 7, scope: !3679)
!3760 = !DILocation(line: 222, column: 11, scope: !3679)
!3761 = !DILocation(line: 222, column: 17, scope: !3679)
!3762 = !DILocation(line: 222, column: 26, scope: !3679)
!3763 = !DILocation(line: 222, column: 7, scope: !3680)
!3764 = !DILocation(line: 223, column: 8, scope: !3677)
!3765 = !DILocation(line: 223, column: 12, scope: !3677)
!3766 = !DILocation(line: 223, column: 8, scope: !3678)
!3767 = !DILocation(line: 224, column: 5, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 223, column: 19)
!3769 = !DILocation(line: 224, column: 9, scope: !3768)
!3770 = !DILocation(line: 224, column: 15, scope: !3768)
!3771 = !DILocation(line: 224, column: 24, scope: !3768)
!3772 = !DILocation(line: 224, column: 30, scope: !3768)
!3773 = !DILocation(line: 225, column: 4, scope: !3768)
!3774 = !DILocation(line: 225, column: 15, scope: !3676)
!3775 = !DILocation(line: 225, column: 19, scope: !3676)
!3776 = !DILocation(line: 225, column: 15, scope: !3677)
!3777 = !DILocation(line: 226, column: 5, scope: !3675)
!3778 = !DILocation(line: 226, column: 19, scope: !3675)
!3779 = !DILocation(line: 226, column: 50, scope: !3675)
!3780 = !DILocation(line: 226, column: 27, scope: !3675)
!3781 = !DILocation(line: 231, column: 9, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 231, column: 9)
!3783 = !DILocation(line: 231, column: 17, scope: !3782)
!3784 = !DILocation(line: 231, column: 21, scope: !3782)
!3785 = !DILocation(line: 231, column: 27, scope: !3782)
!3786 = !DILocation(line: 231, column: 36, scope: !3782)
!3787 = !DILocation(line: 231, column: 15, scope: !3782)
!3788 = !DILocation(line: 231, column: 9, scope: !3675)
!3789 = !DILocation(line: 232, column: 6, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 232, column: 6)
!3791 = !DILocation(line: 232, column: 6, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3790, file: !3, line: 232, column: 6)
!3793 = !DILocation(line: 232, column: 6, scope: !3782)
!3794 = !DILocation(line: 234, column: 38, scope: !3675)
!3795 = !DILocation(line: 234, column: 5, scope: !3675)
!3796 = !DILocation(line: 234, column: 9, scope: !3675)
!3797 = !DILocation(line: 234, column: 15, scope: !3675)
!3798 = !DILocation(line: 234, column: 24, scope: !3675)
!3799 = !DILocation(line: 234, column: 36, scope: !3675)
!3800 = !DILocation(line: 235, column: 4, scope: !3676)
!3801 = !DILocation(line: 235, column: 4, scope: !3675)
!3802 = !DILocation(line: 236, column: 3, scope: !3678)
!3803 = !DILocation(line: 237, column: 2, scope: !3680)
!3804 = !DILocation(line: 240, column: 6, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 240, column: 6)
!3806 = !DILocation(line: 240, column: 11, scope: !3805)
!3807 = !DILocation(line: 240, column: 6, scope: !3663)
!3808 = !DILocation(line: 241, column: 34, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 240, column: 29)
!3810 = !DILocation(line: 241, column: 38, scope: !3809)
!3811 = !DILocation(line: 241, column: 46, scope: !3809)
!3812 = !DILocation(line: 241, column: 12, scope: !3809)
!3813 = !DILocation(line: 241, column: 10, scope: !3809)
!3814 = !DILocation(line: 242, column: 7, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3809, file: !3, line: 242, column: 7)
!3816 = !DILocation(line: 242, column: 7, scope: !3809)
!3817 = !DILocation(line: 243, column: 4, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 242, column: 29)
!3819 = !DILocation(line: 243, column: 8, scope: !3818)
!3820 = !DILocation(line: 243, column: 14, scope: !3818)
!3821 = !DILocation(line: 243, column: 18, scope: !3818)
!3822 = !DILocation(line: 243, column: 24, scope: !3818)
!3823 = !DILocation(line: 244, column: 4, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 244, column: 4)
!3825 = distinct !DILexicalBlock(scope: !3818, file: !3, line: 244, column: 4)
!3826 = !DILocation(line: 244, column: 4, scope: !3825)
!3827 = !DILocation(line: 246, column: 3, scope: !3818)
!3828 = !DILocation(line: 247, column: 32, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 246, column: 10)
!3830 = !DILocation(line: 247, column: 4, scope: !3829)
!3831 = !DILocation(line: 247, column: 8, scope: !3829)
!3832 = !DILocation(line: 247, column: 14, scope: !3829)
!3833 = !DILocation(line: 247, column: 18, scope: !3829)
!3834 = !DILocation(line: 247, column: 30, scope: !3829)
!3835 = !DILocation(line: 248, column: 4, scope: !3829)
!3836 = !DILocation(line: 248, column: 8, scope: !3829)
!3837 = !DILocation(line: 248, column: 14, scope: !3829)
!3838 = !DILocation(line: 248, column: 18, scope: !3829)
!3839 = !DILocation(line: 248, column: 24, scope: !3829)
!3840 = !DILocation(line: 249, column: 4, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 249, column: 4)
!3842 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 249, column: 4)
!3843 = !DILocation(line: 249, column: 4, scope: !3842)
!3844 = !DILocation(line: 253, column: 2, scope: !3809)
!3845 = !DILocation(line: 256, column: 8, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 256, column: 6)
!3847 = !DILocation(line: 256, column: 13, scope: !3846)
!3848 = !DILocation(line: 256, column: 35, scope: !3846)
!3849 = !DILocation(line: 256, column: 38, scope: !3846)
!3850 = !DILocation(line: 256, column: 42, scope: !3846)
!3851 = !DILocation(line: 256, column: 48, scope: !3846)
!3852 = !DILocation(line: 256, column: 56, scope: !3846)
!3853 = !DILocation(line: 256, column: 61, scope: !3846)
!3854 = !DILocation(line: 256, column: 68, scope: !3846)
!3855 = !DILocation(line: 257, column: 6, scope: !3846)
!3856 = !DILocation(line: 257, column: 11, scope: !3846)
!3857 = !DILocation(line: 256, column: 6, scope: !3663)
!3858 = !DILocation(line: 258, column: 11, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 257, column: 31)
!3860 = !DILocation(line: 258, column: 15, scope: !3859)
!3861 = !DILocation(line: 258, column: 21, scope: !3859)
!3862 = !DILocation(line: 258, column: 29, scope: !3859)
!3863 = !DILocation(line: 258, column: 34, scope: !3859)
!3864 = !DILocation(line: 258, column: 9, scope: !3859)
!3865 = !DILocation(line: 259, column: 7, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 259, column: 7)
!3867 = !DILocation(line: 259, column: 11, scope: !3866)
!3868 = !DILocation(line: 259, column: 7, scope: !3859)
!3869 = !DILocation(line: 260, column: 11, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 259, column: 18)
!3871 = !DILocation(line: 261, column: 3, scope: !3870)
!3872 = !DILocation(line: 261, column: 14, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 261, column: 14)
!3874 = !DILocation(line: 261, column: 18, scope: !3873)
!3875 = !DILocation(line: 261, column: 14, scope: !3866)
!3876 = !DILocation(line: 262, column: 33, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 261, column: 23)
!3878 = !DILocation(line: 262, column: 10, scope: !3877)
!3879 = !DILocation(line: 262, column: 8, scope: !3877)
!3880 = !DILocation(line: 263, column: 11, scope: !3877)
!3881 = !DILocation(line: 264, column: 3, scope: !3877)
!3882 = !DILocation(line: 265, column: 35, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 264, column: 10)
!3884 = !DILocation(line: 265, column: 39, scope: !3883)
!3885 = !DILocation(line: 265, column: 47, scope: !3883)
!3886 = !DILocation(line: 265, column: 13, scope: !3883)
!3887 = !DILocation(line: 265, column: 11, scope: !3883)
!3888 = !DILocation(line: 269, column: 7, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 269, column: 7)
!3890 = !DILocation(line: 269, column: 7, scope: !3859)
!3891 = !DILocation(line: 270, column: 4, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 269, column: 29)
!3893 = !DILocation(line: 270, column: 8, scope: !3892)
!3894 = !DILocation(line: 270, column: 14, scope: !3892)
!3895 = !DILocation(line: 270, column: 22, scope: !3892)
!3896 = !DILocation(line: 270, column: 27, scope: !3892)
!3897 = !DILocation(line: 270, column: 33, scope: !3892)
!3898 = !DILocation(line: 271, column: 3, scope: !3892)
!3899 = !DILocation(line: 272, column: 41, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 271, column: 10)
!3901 = !DILocation(line: 272, column: 4, scope: !3900)
!3902 = !DILocation(line: 272, column: 8, scope: !3900)
!3903 = !DILocation(line: 272, column: 14, scope: !3900)
!3904 = !DILocation(line: 272, column: 22, scope: !3900)
!3905 = !DILocation(line: 272, column: 27, scope: !3900)
!3906 = !DILocation(line: 272, column: 39, scope: !3900)
!3907 = !DILocation(line: 273, column: 4, scope: !3900)
!3908 = !DILocation(line: 273, column: 8, scope: !3900)
!3909 = !DILocation(line: 273, column: 14, scope: !3900)
!3910 = !DILocation(line: 273, column: 22, scope: !3900)
!3911 = !DILocation(line: 273, column: 27, scope: !3900)
!3912 = !DILocation(line: 273, column: 33, scope: !3900)
!3913 = !DILocation(line: 274, column: 8, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 274, column: 8)
!3915 = !DILocation(line: 274, column: 13, scope: !3914)
!3916 = !DILocation(line: 274, column: 8, scope: !3900)
!3917 = !DILocation(line: 275, column: 36, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3914, file: !3, line: 274, column: 33)
!3919 = !DILocation(line: 275, column: 40, scope: !3918)
!3920 = !DILocation(line: 275, column: 48, scope: !3918)
!3921 = !DILocation(line: 275, column: 14, scope: !3918)
!3922 = !DILocation(line: 275, column: 12, scope: !3918)
!3923 = !DILocation(line: 277, column: 9, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3918, file: !3, line: 277, column: 9)
!3925 = !DILocation(line: 277, column: 9, scope: !3918)
!3926 = !DILocation(line: 278, column: 6, scope: !3924)
!3927 = !DILocation(line: 278, column: 10, scope: !3924)
!3928 = !DILocation(line: 278, column: 16, scope: !3924)
!3929 = !DILocation(line: 278, column: 24, scope: !3924)
!3930 = !DILocation(line: 278, column: 29, scope: !3924)
!3931 = !DILocation(line: 278, column: 35, scope: !3924)
!3932 = !DILocation(line: 280, column: 30, scope: !3924)
!3933 = !DILocation(line: 280, column: 6, scope: !3924)
!3934 = !DILocation(line: 280, column: 10, scope: !3924)
!3935 = !DILocation(line: 280, column: 16, scope: !3924)
!3936 = !DILocation(line: 280, column: 24, scope: !3924)
!3937 = !DILocation(line: 280, column: 28, scope: !3924)
!3938 = !DILocation(line: 282, column: 36, scope: !3918)
!3939 = !DILocation(line: 282, column: 40, scope: !3918)
!3940 = !DILocation(line: 282, column: 48, scope: !3918)
!3941 = !DILocation(line: 282, column: 14, scope: !3918)
!3942 = !DILocation(line: 282, column: 12, scope: !3918)
!3943 = !DILocation(line: 284, column: 9, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3918, file: !3, line: 284, column: 9)
!3945 = !DILocation(line: 284, column: 9, scope: !3918)
!3946 = !DILocation(line: 285, column: 6, scope: !3944)
!3947 = !DILocation(line: 285, column: 10, scope: !3944)
!3948 = !DILocation(line: 285, column: 16, scope: !3944)
!3949 = !DILocation(line: 285, column: 24, scope: !3944)
!3950 = !DILocation(line: 285, column: 29, scope: !3944)
!3951 = !DILocation(line: 285, column: 35, scope: !3944)
!3952 = !DILocation(line: 287, column: 30, scope: !3944)
!3953 = !DILocation(line: 287, column: 6, scope: !3944)
!3954 = !DILocation(line: 287, column: 10, scope: !3944)
!3955 = !DILocation(line: 287, column: 16, scope: !3944)
!3956 = !DILocation(line: 287, column: 24, scope: !3944)
!3957 = !DILocation(line: 287, column: 28, scope: !3944)
!3958 = !DILocation(line: 289, column: 36, scope: !3918)
!3959 = !DILocation(line: 289, column: 40, scope: !3918)
!3960 = !DILocation(line: 289, column: 48, scope: !3918)
!3961 = !DILocation(line: 289, column: 14, scope: !3918)
!3962 = !DILocation(line: 289, column: 12, scope: !3918)
!3963 = !DILocation(line: 291, column: 9, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3918, file: !3, line: 291, column: 9)
!3965 = !DILocation(line: 291, column: 9, scope: !3918)
!3966 = !DILocation(line: 292, column: 6, scope: !3964)
!3967 = !DILocation(line: 292, column: 10, scope: !3964)
!3968 = !DILocation(line: 292, column: 16, scope: !3964)
!3969 = !DILocation(line: 292, column: 24, scope: !3964)
!3970 = !DILocation(line: 292, column: 29, scope: !3964)
!3971 = !DILocation(line: 292, column: 35, scope: !3964)
!3972 = !DILocation(line: 294, column: 30, scope: !3964)
!3973 = !DILocation(line: 294, column: 6, scope: !3964)
!3974 = !DILocation(line: 294, column: 10, scope: !3964)
!3975 = !DILocation(line: 294, column: 16, scope: !3964)
!3976 = !DILocation(line: 294, column: 24, scope: !3964)
!3977 = !DILocation(line: 294, column: 28, scope: !3964)
!3978 = !DILocation(line: 295, column: 4, scope: !3918)
!3979 = !DILocation(line: 297, column: 2, scope: !3859)
!3980 = !DILocation(line: 298, column: 7, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 298, column: 6)
!3982 = !DILocation(line: 298, column: 12, scope: !3981)
!3983 = !DILocation(line: 298, column: 34, scope: !3981)
!3984 = !DILocation(line: 298, column: 37, scope: !3981)
!3985 = !DILocation(line: 298, column: 41, scope: !3981)
!3986 = !DILocation(line: 298, column: 47, scope: !3981)
!3987 = !DILocation(line: 298, column: 55, scope: !3981)
!3988 = !DILocation(line: 298, column: 60, scope: !3981)
!3989 = !DILocation(line: 298, column: 6, scope: !3663)
!3990 = !DILocation(line: 299, column: 3, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 298, column: 67)
!3992 = !DILocation(line: 300, column: 36, scope: !3991)
!3993 = !DILocation(line: 300, column: 40, scope: !3991)
!3994 = !DILocation(line: 300, column: 48, scope: !3991)
!3995 = !DILocation(line: 300, column: 12, scope: !3991)
!3996 = !DILocation(line: 300, column: 10, scope: !3991)
!3997 = !DILocation(line: 302, column: 7, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3991, file: !3, line: 302, column: 7)
!3999 = !DILocation(line: 302, column: 7, scope: !3991)
!4000 = !DILocation(line: 303, column: 4, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3998, file: !3, line: 302, column: 29)
!4002 = !DILocation(line: 305, column: 4, scope: !4001)
!4003 = !DILocation(line: 305, column: 8, scope: !4001)
!4004 = !DILocation(line: 305, column: 14, scope: !4001)
!4005 = !DILocation(line: 305, column: 22, scope: !4001)
!4006 = !DILocation(line: 305, column: 27, scope: !4001)
!4007 = !DILocation(line: 305, column: 33, scope: !4001)
!4008 = !DILocation(line: 306, column: 3, scope: !4001)
!4009 = !DILocation(line: 307, column: 4, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3998, file: !3, line: 306, column: 10)
!4011 = !DILocation(line: 307, column: 8, scope: !4010)
!4012 = !DILocation(line: 307, column: 14, scope: !4010)
!4013 = !DILocation(line: 307, column: 22, scope: !4010)
!4014 = !DILocation(line: 307, column: 27, scope: !4010)
!4015 = !DILocation(line: 307, column: 33, scope: !4010)
!4016 = !DILocation(line: 310, column: 15, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !3991, file: !3, line: 310, column: 7)
!4018 = !DILocation(line: 310, column: 19, scope: !4017)
!4019 = !DILocation(line: 310, column: 25, scope: !4017)
!4020 = !DILocation(line: 310, column: 33, scope: !4017)
!4021 = !DILocation(line: 310, column: 7, scope: !4017)
!4022 = !DILocation(line: 310, column: 7, scope: !3991)
!4023 = !DILocation(line: 312, column: 12, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 311, column: 41)
!4025 = !DILocation(line: 312, column: 16, scope: !4024)
!4026 = !DILocation(line: 312, column: 22, scope: !4024)
!4027 = !DILocation(line: 312, column: 30, scope: !4024)
!4028 = !DILocation(line: 312, column: 4, scope: !4024)
!4029 = !DILocation(line: 314, column: 4, scope: !4024)
!4030 = !DILocation(line: 314, column: 4, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 314, column: 4)
!4032 = distinct !DILexicalBlock(scope: !4024, file: !3, line: 314, column: 4)
!4033 = !DILocation(line: 314, column: 4, scope: !4032)
!4034 = !DILocation(line: 315, column: 3, scope: !4024)
!4035 = !DILocation(line: 316, column: 2, scope: !3991)
!4036 = !DILocation(line: 317, column: 7, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 317, column: 6)
!4038 = !DILocation(line: 317, column: 12, scope: !4037)
!4039 = !DILocation(line: 317, column: 34, scope: !4037)
!4040 = !DILocation(line: 317, column: 38, scope: !4037)
!4041 = !DILocation(line: 317, column: 43, scope: !4037)
!4042 = !DILocation(line: 317, column: 6, scope: !3663)
!4043 = !DILocation(line: 318, column: 7, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 318, column: 7)
!4045 = distinct !DILexicalBlock(scope: !4037, file: !3, line: 317, column: 66)
!4046 = !DILocation(line: 318, column: 16, scope: !4044)
!4047 = !DILocation(line: 318, column: 20, scope: !4044)
!4048 = !DILocation(line: 318, column: 26, scope: !4044)
!4049 = !DILocation(line: 318, column: 34, scope: !4044)
!4050 = !DILocation(line: 318, column: 39, scope: !4044)
!4051 = !DILocation(line: 318, column: 13, scope: !4044)
!4052 = !DILocation(line: 318, column: 7, scope: !4045)
!4053 = !DILocation(line: 319, column: 4, scope: !4044)
!4054 = !DILocation(line: 319, column: 4, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4056, file: !3, line: 319, column: 4)
!4056 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 319, column: 4)
!4057 = !DILocation(line: 319, column: 4, scope: !4056)
!4058 = !DILocation(line: 320, column: 2, scope: !4045)
!4059 = !DILocation(line: 323, column: 9, scope: !3685)
!4060 = !DILocation(line: 323, column: 7, scope: !3685)
!4061 = !DILocation(line: 323, column: 14, scope: !3684)
!4062 = !DILocation(line: 323, column: 16, scope: !3684)
!4063 = !DILocation(line: 323, column: 2, scope: !3685)
!4064 = !DILocation(line: 324, column: 3, scope: !3683)
!4065 = !DILocation(line: 324, column: 8, scope: !3683)
!4066 = !DILocation(line: 324, column: 18, scope: !3683)
!4067 = !DILocation(line: 324, column: 42, scope: !3683)
!4068 = !DILocation(line: 324, column: 40, scope: !3683)
!4069 = !DILocation(line: 324, column: 35, scope: !3683)
!4070 = !DILocation(line: 325, column: 11, scope: !3683)
!4071 = !DILocation(line: 325, column: 15, scope: !3683)
!4072 = !DILocation(line: 325, column: 21, scope: !3683)
!4073 = !DILocation(line: 325, column: 28, scope: !3683)
!4074 = !DILocation(line: 325, column: 31, scope: !3683)
!4075 = !DILocation(line: 325, column: 36, scope: !3683)
!4076 = !DILocation(line: 325, column: 9, scope: !3683)
!4077 = !DILocation(line: 327, column: 7, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 327, column: 7)
!4079 = !DILocation(line: 327, column: 11, scope: !4078)
!4080 = !DILocation(line: 327, column: 7, scope: !3683)
!4081 = !DILocation(line: 328, column: 4, scope: !4078)
!4082 = !DILocation(line: 330, column: 7, scope: !3692)
!4083 = !DILocation(line: 330, column: 12, scope: !3692)
!4084 = !DILocation(line: 330, column: 31, scope: !3692)
!4085 = !DILocation(line: 330, column: 36, scope: !3692)
!4086 = !DILocation(line: 330, column: 41, scope: !3692)
!4087 = !DILocation(line: 330, column: 62, scope: !3692)
!4088 = !DILocation(line: 331, column: 7, scope: !3692)
!4089 = !DILocation(line: 331, column: 11, scope: !3692)
!4090 = !DILocation(line: 331, column: 17, scope: !3692)
!4091 = !DILocation(line: 331, column: 24, scope: !3692)
!4092 = !DILocation(line: 331, column: 27, scope: !3692)
!4093 = !DILocation(line: 331, column: 32, scope: !3692)
!4094 = !DILocation(line: 330, column: 7, scope: !3683)
!4095 = !DILocation(line: 332, column: 35, scope: !3691)
!4096 = !DILocation(line: 332, column: 39, scope: !3691)
!4097 = !DILocation(line: 332, column: 47, scope: !3691)
!4098 = !DILocation(line: 333, column: 14, scope: !3691)
!4099 = !DILocation(line: 332, column: 13, scope: !3691)
!4100 = !DILocation(line: 332, column: 11, scope: !3691)
!4101 = !DILocation(line: 334, column: 8, scope: !3690)
!4102 = !DILocation(line: 334, column: 8, scope: !3691)
!4103 = !DILocation(line: 335, column: 5, scope: !3689)
!4104 = !DILocation(line: 335, column: 9, scope: !3689)
!4105 = !DILocation(line: 335, column: 15, scope: !3689)
!4106 = !DILocation(line: 335, column: 22, scope: !3689)
!4107 = !DILocation(line: 335, column: 25, scope: !3689)
!4108 = !DILocation(line: 335, column: 30, scope: !3689)
!4109 = !DILocation(line: 335, column: 36, scope: !3689)
!4110 = !DILocation(line: 336, column: 9, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !3689, file: !3, line: 336, column: 9)
!4112 = !DILocation(line: 336, column: 11, scope: !4111)
!4113 = !DILocation(line: 336, column: 9, scope: !3689)
!4114 = !DILocation(line: 337, column: 6, scope: !4111)
!4115 = !DILocation(line: 339, column: 9, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !3689, file: !3, line: 339, column: 9)
!4117 = !DILocation(line: 339, column: 13, scope: !4116)
!4118 = !DILocation(line: 339, column: 9, scope: !3689)
!4119 = !DILocation(line: 340, column: 6, scope: !4116)
!4120 = !DILocation(line: 342, column: 9, scope: !3688)
!4121 = !DILocation(line: 342, column: 11, scope: !3688)
!4122 = !DILocation(line: 342, column: 9, scope: !3689)
!4123 = !DILocation(line: 344, column: 31, scope: !3688)
!4124 = !DILocation(line: 344, column: 8, scope: !3688)
!4125 = !DILocation(line: 343, column: 6, scope: !3688)
!4126 = !DILocation(line: 343, column: 10, scope: !3688)
!4127 = !DILocation(line: 343, column: 16, scope: !3688)
!4128 = !DILocation(line: 343, column: 26, scope: !3688)
!4129 = !DILocation(line: 343, column: 31, scope: !3688)
!4130 = !DILocation(line: 343, column: 43, scope: !3688)
!4131 = !DILocation(line: 351, column: 7, scope: !3687)
!4132 = !DILocation(line: 351, column: 7, scope: !3688)
!4133 = !DILocation(line: 350, column: 6, scope: !3688)
!4134 = !DILocation(line: 350, column: 10, scope: !3688)
!4135 = !DILocation(line: 350, column: 16, scope: !3688)
!4136 = !DILocation(line: 350, column: 23, scope: !3688)
!4137 = !DILocation(line: 350, column: 24, scope: !3688)
!4138 = !DILocation(line: 350, column: 28, scope: !3688)
!4139 = !DILocation(line: 350, column: 33, scope: !3688)
!4140 = !DILocation(line: 350, column: 45, scope: !3688)
!4141 = !DILocation(line: 355, column: 5, scope: !3689)
!4142 = !DILocation(line: 357, column: 44, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !3690, file: !3, line: 356, column: 11)
!4144 = !DILocation(line: 357, column: 5, scope: !4143)
!4145 = !DILocation(line: 357, column: 9, scope: !4143)
!4146 = !DILocation(line: 357, column: 15, scope: !4143)
!4147 = !DILocation(line: 357, column: 22, scope: !4143)
!4148 = !DILocation(line: 357, column: 25, scope: !4143)
!4149 = !DILocation(line: 357, column: 30, scope: !4143)
!4150 = !DILocation(line: 357, column: 42, scope: !4143)
!4151 = !DILocation(line: 358, column: 5, scope: !4143)
!4152 = !DILocation(line: 358, column: 9, scope: !4143)
!4153 = !DILocation(line: 358, column: 15, scope: !4143)
!4154 = !DILocation(line: 358, column: 22, scope: !4143)
!4155 = !DILocation(line: 358, column: 25, scope: !4143)
!4156 = !DILocation(line: 358, column: 30, scope: !4143)
!4157 = !DILocation(line: 358, column: 36, scope: !4143)
!4158 = !DILocation(line: 360, column: 3, scope: !3691)
!4159 = !DILocation(line: 362, column: 3, scope: !3683)
!4160 = !DILocation(line: 362, column: 11, scope: !3683)
!4161 = !DILocation(line: 363, column: 8, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 363, column: 7)
!4163 = !DILocation(line: 363, column: 13, scope: !4162)
!4164 = !DILocation(line: 363, column: 35, scope: !4162)
!4165 = !DILocation(line: 363, column: 38, scope: !4162)
!4166 = !DILocation(line: 363, column: 42, scope: !4162)
!4167 = !DILocation(line: 363, column: 48, scope: !4162)
!4168 = !DILocation(line: 363, column: 55, scope: !4162)
!4169 = !DILocation(line: 363, column: 58, scope: !4162)
!4170 = !DILocation(line: 363, column: 63, scope: !4162)
!4171 = !DILocation(line: 363, column: 7, scope: !3683)
!4172 = !DILocation(line: 364, column: 4, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 363, column: 70)
!4174 = !DILocation(line: 365, column: 37, scope: !4173)
!4175 = !DILocation(line: 365, column: 41, scope: !4173)
!4176 = !DILocation(line: 365, column: 49, scope: !4173)
!4177 = !DILocation(line: 366, column: 9, scope: !4173)
!4178 = !DILocation(line: 365, column: 13, scope: !4173)
!4179 = !DILocation(line: 365, column: 11, scope: !4173)
!4180 = !DILocation(line: 367, column: 8, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4173, file: !3, line: 367, column: 8)
!4182 = !DILocation(line: 367, column: 8, scope: !4173)
!4183 = !DILocation(line: 368, column: 5, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 367, column: 30)
!4185 = !DILocation(line: 370, column: 5, scope: !4184)
!4186 = !DILocation(line: 370, column: 9, scope: !4184)
!4187 = !DILocation(line: 370, column: 15, scope: !4184)
!4188 = !DILocation(line: 370, column: 22, scope: !4184)
!4189 = !DILocation(line: 370, column: 25, scope: !4184)
!4190 = !DILocation(line: 370, column: 30, scope: !4184)
!4191 = !DILocation(line: 370, column: 36, scope: !4184)
!4192 = !DILocation(line: 371, column: 4, scope: !4184)
!4193 = !DILocation(line: 372, column: 5, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 371, column: 11)
!4195 = !DILocation(line: 372, column: 9, scope: !4194)
!4196 = !DILocation(line: 372, column: 15, scope: !4194)
!4197 = !DILocation(line: 372, column: 22, scope: !4194)
!4198 = !DILocation(line: 372, column: 25, scope: !4194)
!4199 = !DILocation(line: 372, column: 30, scope: !4194)
!4200 = !DILocation(line: 372, column: 36, scope: !4194)
!4201 = !DILocation(line: 375, column: 16, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4173, file: !3, line: 375, column: 8)
!4203 = !DILocation(line: 375, column: 20, scope: !4202)
!4204 = !DILocation(line: 375, column: 26, scope: !4202)
!4205 = !DILocation(line: 375, column: 33, scope: !4202)
!4206 = !DILocation(line: 375, column: 36, scope: !4202)
!4207 = !DILocation(line: 375, column: 8, scope: !4202)
!4208 = !DILocation(line: 375, column: 8, scope: !4173)
!4209 = !DILocation(line: 377, column: 13, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 376, column: 42)
!4211 = !DILocation(line: 377, column: 17, scope: !4210)
!4212 = !DILocation(line: 377, column: 23, scope: !4210)
!4213 = !DILocation(line: 377, column: 30, scope: !4210)
!4214 = !DILocation(line: 377, column: 33, scope: !4210)
!4215 = !DILocation(line: 377, column: 5, scope: !4210)
!4216 = !DILocation(line: 379, column: 5, scope: !4210)
!4217 = !DILocation(line: 379, column: 5, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 379, column: 5)
!4219 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 379, column: 5)
!4220 = !DILocation(line: 379, column: 5, scope: !4219)
!4221 = !DILocation(line: 380, column: 4, scope: !4210)
!4222 = !DILocation(line: 381, column: 3, scope: !4173)
!4223 = !DILocation(line: 382, column: 8, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 382, column: 7)
!4225 = !DILocation(line: 382, column: 13, scope: !4224)
!4226 = !DILocation(line: 382, column: 34, scope: !4224)
!4227 = !DILocation(line: 382, column: 38, scope: !4224)
!4228 = !DILocation(line: 382, column: 43, scope: !4224)
!4229 = !DILocation(line: 382, column: 7, scope: !3683)
!4230 = !DILocation(line: 383, column: 8, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4224, file: !3, line: 383, column: 8)
!4232 = !DILocation(line: 383, column: 17, scope: !4231)
!4233 = !DILocation(line: 383, column: 21, scope: !4231)
!4234 = !DILocation(line: 383, column: 27, scope: !4231)
!4235 = !DILocation(line: 383, column: 34, scope: !4231)
!4236 = !DILocation(line: 383, column: 37, scope: !4231)
!4237 = !DILocation(line: 383, column: 42, scope: !4231)
!4238 = !DILocation(line: 383, column: 14, scope: !4231)
!4239 = !DILocation(line: 383, column: 8, scope: !4224)
!4240 = !DILocation(line: 384, column: 5, scope: !4231)
!4241 = !DILocation(line: 384, column: 5, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4243, file: !3, line: 384, column: 5)
!4243 = distinct !DILexicalBlock(scope: !4231, file: !3, line: 384, column: 5)
!4244 = !DILocation(line: 384, column: 5, scope: !4243)
!4245 = !DILocation(line: 386, column: 8, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 386, column: 7)
!4247 = !DILocation(line: 386, column: 12, scope: !4246)
!4248 = !DILocation(line: 386, column: 18, scope: !4246)
!4249 = !DILocation(line: 386, column: 25, scope: !4246)
!4250 = !DILocation(line: 386, column: 28, scope: !4246)
!4251 = !DILocation(line: 386, column: 33, scope: !4246)
!4252 = !DILocation(line: 386, column: 7, scope: !3683)
!4253 = !DILocation(line: 387, column: 4, scope: !4246)
!4254 = !DILocation(line: 388, column: 2, scope: !3684)
!4255 = !DILocation(line: 388, column: 2, scope: !3683)
!4256 = !DILocation(line: 323, column: 44, scope: !3684)
!4257 = !DILocation(line: 323, column: 2, scope: !3684)
!4258 = distinct !{!4258, !4063, !4259, !2901, !2902}
!4259 = !DILocation(line: 388, column: 2, scope: !3685)
!4260 = !DILocation(line: 390, column: 6, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 390, column: 6)
!4262 = !DILocation(line: 390, column: 11, scope: !4261)
!4263 = !DILocation(line: 390, column: 6, scope: !3663)
!4264 = !DILocation(line: 391, column: 3, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 390, column: 33)
!4266 = !DILocation(line: 392, column: 36, scope: !4265)
!4267 = !DILocation(line: 392, column: 40, scope: !4265)
!4268 = !DILocation(line: 392, column: 48, scope: !4265)
!4269 = !DILocation(line: 392, column: 12, scope: !4265)
!4270 = !DILocation(line: 392, column: 10, scope: !4265)
!4271 = !DILocation(line: 394, column: 7, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4265, file: !3, line: 394, column: 7)
!4273 = !DILocation(line: 394, column: 28, scope: !4272)
!4274 = !DILocation(line: 395, column: 15, scope: !4272)
!4275 = !DILocation(line: 395, column: 19, scope: !4272)
!4276 = !DILocation(line: 395, column: 7, scope: !4272)
!4277 = !DILocation(line: 394, column: 7, scope: !4265)
!4278 = !DILocation(line: 396, column: 4, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 395, column: 56)
!4280 = !DILocation(line: 396, column: 8, scope: !4279)
!4281 = !DILocation(line: 396, column: 18, scope: !4279)
!4282 = !DILocation(line: 397, column: 4, scope: !4279)
!4283 = !DILocation(line: 397, column: 4, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 397, column: 4)
!4285 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 397, column: 4)
!4286 = !DILocation(line: 397, column: 4, scope: !4285)
!4287 = !DILocation(line: 398, column: 3, scope: !4279)
!4288 = !DILocation(line: 399, column: 2, scope: !4265)
!4289 = !DILocation(line: 400, column: 1, scope: !3663)
!4290 = distinct !DISubprogram(name: "celsius_to_deci_kelvin", scope: !3163, file: !3163, line: 68, type: !3164, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4291)
!4291 = !{!4292, !4293, !4295}
!4292 = !DILocalVariable(name: "t", arg: 1, scope: !4290, file: !3163, line: 68, type: !320)
!4293 = !DILocalVariable(name: "__x", scope: !4294, file: !3163, line: 72, type: !320)
!4294 = distinct !DILexicalBlock(scope: !4290, file: !3163, line: 72, column: 9)
!4295 = !DILocalVariable(name: "__d", scope: !4294, file: !3163, line: 72, type: !46)
!4296 = !DILocation(line: 68, column: 48, scope: !4290)
!4297 = !DILocation(line: 70, column: 35, scope: !4290)
!4298 = !DILocation(line: 70, column: 37, scope: !4290)
!4299 = !DILocation(line: 70, column: 6, scope: !4290)
!4300 = !DILocation(line: 70, column: 4, scope: !4290)
!4301 = !DILocation(line: 72, column: 9, scope: !4294)
!4302 = !DILocation(line: 72, column: 9, scope: !4290)
!4303 = !DILocation(line: 72, column: 2, scope: !4290)
!4304 = !DISubprogram(name: "acpi_evaluate_reference", scope: !1240, file: !1240, line: 31, type: !4305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!1228, !1245, !3656, !3657, !4307}
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!4308 = !DISubprogram(name: "acpi_handle_printk", scope: !4309, file: !4309, line: 1180, type: !4310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4309 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!4310 = !DISubroutineType(types: !4311)
!4311 = !{null, !203, !1245, !203, null}
!4312 = !DISubprogram(name: "memcmp", scope: !2746, file: !2746, line: 196, type: !4313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!46, !563, !563, !332}
!4315 = distinct !DISubprogram(name: "millicelsius_to_milli_kelvin", scope: !3163, file: !3163, line: 41, type: !3164, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4316)
!4316 = !{!4317}
!4317 = !DILocalVariable(name: "t", arg: 1, scope: !4315, file: !3163, line: 41, type: !320)
!4318 = !DILocation(line: 41, column: 54, scope: !4315)
!4319 = !DILocation(line: 43, column: 9, scope: !4315)
!4320 = !DILocation(line: 43, column: 11, scope: !4315)
!4321 = !DILocation(line: 43, column: 2, scope: !4315)
!4322 = distinct !DISubprogram(name: "kcalloc", scope: !144, file: !144, line: 666, type: !4323, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4325)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!356, !331, !331, !1227}
!4325 = !{!4326, !4327, !4328}
!4326 = !DILocalVariable(name: "n", arg: 1, scope: !4322, file: !144, line: 666, type: !331)
!4327 = !DILocalVariable(name: "size", arg: 2, scope: !4322, file: !144, line: 666, type: !331)
!4328 = !DILocalVariable(name: "flags", arg: 3, scope: !4322, file: !144, line: 666, type: !1227)
!4329 = !DILocation(line: 666, column: 55, scope: !4322)
!4330 = !DILocation(line: 666, column: 65, scope: !4322)
!4331 = !DILocation(line: 666, column: 77, scope: !4322)
!4332 = !DILocation(line: 668, column: 23, scope: !4322)
!4333 = !DILocation(line: 668, column: 26, scope: !4322)
!4334 = !DILocation(line: 668, column: 32, scope: !4322)
!4335 = !DILocation(line: 668, column: 38, scope: !4322)
!4336 = !DILocation(line: 668, column: 9, scope: !4322)
!4337 = !DILocation(line: 668, column: 2, scope: !4322)
!4338 = distinct !DISubprogram(name: "acpi_thermal_temp", scope: !3, file: !3, line: 182, type: !4339, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4341)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!46, !1234, !46}
!4341 = !{!4342, !4343}
!4342 = !DILocalVariable(name: "tz", arg: 1, scope: !4338, file: !3, line: 182, type: !1234)
!4343 = !DILocalVariable(name: "temp_deci_k", arg: 2, scope: !4338, file: !3, line: 182, type: !46)
!4344 = !DILocation(line: 182, column: 51, scope: !4338)
!4345 = !DILocation(line: 182, column: 59, scope: !4338)
!4346 = !DILocation(line: 184, column: 6, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4338, file: !3, line: 184, column: 6)
!4348 = !DILocation(line: 184, column: 18, scope: !4347)
!4349 = !DILocation(line: 184, column: 6, scope: !4338)
!4350 = !DILocation(line: 185, column: 3, scope: !4347)
!4351 = !DILocation(line: 187, column: 49, scope: !4338)
!4352 = !DILocation(line: 188, column: 14, scope: !4338)
!4353 = !DILocation(line: 188, column: 18, scope: !4338)
!4354 = !DILocation(line: 187, column: 9, scope: !4338)
!4355 = !DILocation(line: 187, column: 2, scope: !4338)
!4356 = !DILocation(line: 189, column: 1, scope: !4338)
!4357 = !DISubprogram(name: "thermal_zone_device_register_with_trips", scope: !96, file: !96, line: 307, type: !4358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!2118, !203, !2109, !46, !46, !356, !2146, !4360, !46, !46}
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2228)
!4362 = distinct !DISubprogram(name: "IS_ERR", scope: !4363, file: !4363, line: 59, type: !4364, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4366)
!4363 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!641, !563}
!4366 = !{!4367}
!4367 = !DILocalVariable(name: "ptr", arg: 1, scope: !4362, file: !4363, line: 59, type: !563)
!4368 = !DILocation(line: 59, column: 60, scope: !4362)
!4369 = !DILocation(line: 61, column: 9, scope: !4362)
!4370 = !DILocation(line: 61, column: 2, scope: !4362)
!4371 = distinct !DISubprogram(name: "PTR_ERR", scope: !4363, file: !4363, line: 49, type: !4372, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4374)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!320, !563}
!4374 = !{!4375}
!4375 = !DILocalVariable(name: "ptr", arg: 1, scope: !4371, file: !4363, line: 49, type: !563)
!4376 = !DILocation(line: 49, column: 61, scope: !4371)
!4377 = !DILocation(line: 51, column: 16, scope: !4371)
!4378 = !DILocation(line: 51, column: 9, scope: !4371)
!4379 = !DILocation(line: 51, column: 2, scope: !4371)
!4380 = distinct !DISubprogram(name: "acpi_thermal_zone_sysfs_add", scope: !3, file: !3, line: 656, type: !2750, scopeLine: 657, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4381)
!4381 = !{!4382, !4383, !4384}
!4382 = !DILocalVariable(name: "tz", arg: 1, scope: !4380, file: !3, line: 656, type: !1234)
!4383 = !DILocalVariable(name: "tzdev", scope: !4380, file: !3, line: 658, type: !1281)
!4384 = !DILocalVariable(name: "ret", scope: !4380, file: !3, line: 659, type: !46)
!4385 = !DILocation(line: 656, column: 61, scope: !4380)
!4386 = !DILocation(line: 658, column: 2, scope: !4380)
!4387 = !DILocation(line: 658, column: 17, scope: !4380)
!4388 = !DILocation(line: 658, column: 45, scope: !4380)
!4389 = !DILocation(line: 658, column: 49, scope: !4380)
!4390 = !DILocation(line: 658, column: 25, scope: !4380)
!4391 = !DILocation(line: 659, column: 2, scope: !4380)
!4392 = !DILocation(line: 659, column: 6, scope: !4380)
!4393 = !DILocation(line: 661, column: 27, scope: !4380)
!4394 = !DILocation(line: 661, column: 31, scope: !4380)
!4395 = !DILocation(line: 661, column: 39, scope: !4380)
!4396 = !DILocation(line: 661, column: 43, scope: !4380)
!4397 = !DILocation(line: 662, column: 6, scope: !4380)
!4398 = !DILocation(line: 662, column: 13, scope: !4380)
!4399 = !DILocation(line: 661, column: 8, scope: !4380)
!4400 = !DILocation(line: 661, column: 6, scope: !4380)
!4401 = !DILocation(line: 663, column: 6, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 663, column: 6)
!4403 = !DILocation(line: 663, column: 6, scope: !4380)
!4404 = !DILocation(line: 664, column: 10, scope: !4402)
!4405 = !DILocation(line: 664, column: 3, scope: !4402)
!4406 = !DILocation(line: 666, column: 27, scope: !4380)
!4407 = !DILocation(line: 666, column: 34, scope: !4380)
!4408 = !DILocation(line: 667, column: 9, scope: !4380)
!4409 = !DILocation(line: 667, column: 13, scope: !4380)
!4410 = !DILocation(line: 667, column: 21, scope: !4380)
!4411 = !DILocation(line: 667, column: 25, scope: !4380)
!4412 = !DILocation(line: 666, column: 8, scope: !4380)
!4413 = !DILocation(line: 666, column: 6, scope: !4380)
!4414 = !DILocation(line: 668, column: 6, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 668, column: 6)
!4416 = !DILocation(line: 668, column: 6, scope: !4380)
!4417 = !DILocation(line: 669, column: 22, scope: !4415)
!4418 = !DILocation(line: 669, column: 26, scope: !4415)
!4419 = !DILocation(line: 669, column: 34, scope: !4415)
!4420 = !DILocation(line: 669, column: 38, scope: !4415)
!4421 = !DILocation(line: 669, column: 3, scope: !4415)
!4422 = !DILocation(line: 671, column: 9, scope: !4380)
!4423 = !DILocation(line: 671, column: 2, scope: !4380)
!4424 = !DILocation(line: 672, column: 1, scope: !4380)
!4425 = !DISubprogram(name: "thermal_zone_device_enable", scope: !96, file: !96, line: 359, type: !2247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4426 = !DISubprogram(name: "_dev_info", scope: !4427, file: !4427, line: 56, type: !4428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4427 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!4428 = !DISubroutineType(types: !4429)
!4429 = !{null, !1275, !203, null}
!4430 = !DISubprogram(name: "thermal_zone_device_id", scope: !96, file: !96, line: 326, type: !2247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4431 = distinct !DISubprogram(name: "acpi_thermal_zone_sysfs_remove", scope: !3, file: !3, line: 674, type: !2796, scopeLine: 675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4432)
!4432 = !{!4433, !4434}
!4433 = !DILocalVariable(name: "tz", arg: 1, scope: !4431, file: !3, line: 674, type: !1234)
!4434 = !DILocalVariable(name: "tzdev", scope: !4431, file: !3, line: 676, type: !1281)
!4435 = !DILocation(line: 674, column: 65, scope: !4431)
!4436 = !DILocation(line: 676, column: 2, scope: !4431)
!4437 = !DILocation(line: 676, column: 17, scope: !4431)
!4438 = !DILocation(line: 676, column: 45, scope: !4431)
!4439 = !DILocation(line: 676, column: 49, scope: !4431)
!4440 = !DILocation(line: 676, column: 25, scope: !4431)
!4441 = !DILocation(line: 678, column: 21, scope: !4431)
!4442 = !DILocation(line: 678, column: 25, scope: !4431)
!4443 = !DILocation(line: 678, column: 33, scope: !4431)
!4444 = !DILocation(line: 678, column: 37, scope: !4431)
!4445 = !DILocation(line: 678, column: 2, scope: !4431)
!4446 = !DILocation(line: 679, column: 21, scope: !4431)
!4447 = !DILocation(line: 679, column: 28, scope: !4431)
!4448 = !DILocation(line: 679, column: 2, scope: !4431)
!4449 = !DILocation(line: 680, column: 1, scope: !4431)
!4450 = !DISubprogram(name: "thermal_zone_device_unregister", scope: !96, file: !96, line: 322, type: !2223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4451 = distinct !DISubprogram(name: "kmalloc_array", scope: !144, file: !144, line: 629, type: !4323, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4452)
!4452 = !{!4453, !4454, !4455, !4456}
!4453 = !DILocalVariable(name: "n", arg: 1, scope: !4451, file: !144, line: 629, type: !331)
!4454 = !DILocalVariable(name: "size", arg: 2, scope: !4451, file: !144, line: 629, type: !331)
!4455 = !DILocalVariable(name: "flags", arg: 3, scope: !4451, file: !144, line: 629, type: !1227)
!4456 = !DILocalVariable(name: "bytes", scope: !4451, file: !144, line: 631, type: !331)
!4457 = !DILocation(line: 629, column: 61, scope: !4451)
!4458 = !DILocation(line: 629, column: 71, scope: !4451)
!4459 = !DILocation(line: 629, column: 83, scope: !4451)
!4460 = !DILocation(line: 631, column: 2, scope: !4451)
!4461 = !DILocation(line: 631, column: 9, scope: !4451)
!4462 = !DILocation(line: 633, column: 6, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4451, file: !144, line: 633, column: 6)
!4464 = !DILocation(line: 633, column: 6, scope: !4451)
!4465 = !DILocation(line: 634, column: 3, scope: !4463)
!4466 = !DILocation(line: 635, column: 27, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4451, file: !144, line: 635, column: 6)
!4468 = !DILocation(line: 635, column: 6, scope: !4467)
!4469 = !DILocation(line: 635, column: 30, scope: !4467)
!4470 = !DILocation(line: 635, column: 54, scope: !4467)
!4471 = !DILocation(line: 635, column: 33, scope: !4467)
!4472 = !DILocation(line: 635, column: 6, scope: !4451)
!4473 = !DILocation(line: 636, column: 18, scope: !4467)
!4474 = !DILocation(line: 636, column: 25, scope: !4467)
!4475 = !DILocation(line: 636, column: 10, scope: !4467)
!4476 = !DILocation(line: 636, column: 3, scope: !4467)
!4477 = !DILocation(line: 637, column: 19, scope: !4451)
!4478 = !DILocation(line: 637, column: 26, scope: !4451)
!4479 = !DILocation(line: 637, column: 9, scope: !4451)
!4480 = !DILocation(line: 637, column: 2, scope: !4451)
!4481 = !DILocation(line: 638, column: 1, scope: !4451)
!4482 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4483, file: !4483, line: 51, type: !4484, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4486)
!4483 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!641, !641}
!4486 = !{!4487}
!4487 = !DILocalVariable(name: "overflow", arg: 1, scope: !4482, file: !4483, line: 51, type: !641)
!4488 = !DILocation(line: 51, column: 60, scope: !4482)
!4489 = !DILocation(line: 53, column: 9, scope: !4482)
!4490 = !DILocation(line: 53, column: 2, scope: !4482)
!4491 = distinct !DISubprogram(name: "deci_kelvin_to_millicelsius_with_offset", scope: !3163, file: !3163, line: 82, type: !4492, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4494)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!320, !320, !320}
!4494 = !{!4495, !4496}
!4495 = !DILocalVariable(name: "t", arg: 1, scope: !4491, file: !3163, line: 82, type: !320)
!4496 = !DILocalVariable(name: "offset", arg: 2, scope: !4491, file: !3163, line: 82, type: !320)
!4497 = !DILocation(line: 82, column: 65, scope: !4491)
!4498 = !DILocation(line: 82, column: 73, scope: !4491)
!4499 = !DILocation(line: 84, column: 9, scope: !4491)
!4500 = !DILocation(line: 84, column: 11, scope: !4491)
!4501 = !DILocation(line: 84, column: 42, scope: !4491)
!4502 = !DILocation(line: 84, column: 40, scope: !4491)
!4503 = !DILocation(line: 84, column: 2, scope: !4491)
!4504 = distinct !DISubprogram(name: "acpi_thermal_bind_cooling_device", scope: !3, file: !3, line: 634, type: !2151, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4505)
!4505 = !{!4506, !4507}
!4506 = !DILocalVariable(name: "thermal", arg: 1, scope: !4504, file: !3, line: 634, type: !2118)
!4507 = !DILocalVariable(name: "cdev", arg: 2, scope: !4504, file: !3, line: 635, type: !2153)
!4508 = !DILocation(line: 634, column: 62, scope: !4504)
!4509 = !DILocation(line: 635, column: 37, scope: !4504)
!4510 = !DILocation(line: 637, column: 40, scope: !4504)
!4511 = !DILocation(line: 637, column: 49, scope: !4504)
!4512 = !DILocation(line: 637, column: 9, scope: !4504)
!4513 = !DILocation(line: 637, column: 2, scope: !4504)
!4514 = distinct !DISubprogram(name: "acpi_thermal_unbind_cooling_device", scope: !3, file: !3, line: 641, type: !2151, scopeLine: 643, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4515)
!4515 = !{!4516, !4517}
!4516 = !DILocalVariable(name: "thermal", arg: 1, scope: !4514, file: !3, line: 641, type: !2118)
!4517 = !DILocalVariable(name: "cdev", arg: 2, scope: !4514, file: !3, line: 642, type: !2153)
!4518 = !DILocation(line: 641, column: 64, scope: !4514)
!4519 = !DILocation(line: 642, column: 39, scope: !4514)
!4520 = !DILocation(line: 644, column: 40, scope: !4514)
!4521 = !DILocation(line: 644, column: 49, scope: !4514)
!4522 = !DILocation(line: 644, column: 9, scope: !4514)
!4523 = !DILocation(line: 644, column: 2, scope: !4514)
!4524 = distinct !DISubprogram(name: "thermal_get_temp", scope: !3, file: !3, line: 477, type: !2197, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4525)
!4525 = !{!4526, !4527, !4528, !4529}
!4526 = !DILocalVariable(name: "thermal", arg: 1, scope: !4524, file: !3, line: 477, type: !2118)
!4527 = !DILocalVariable(name: "temp", arg: 2, scope: !4524, file: !3, line: 477, type: !1011)
!4528 = !DILocalVariable(name: "tz", scope: !4524, file: !3, line: 479, type: !1234)
!4529 = !DILocalVariable(name: "result", scope: !4524, file: !3, line: 480, type: !46)
!4530 = !DILocation(line: 477, column: 57, scope: !4524)
!4531 = !DILocation(line: 477, column: 71, scope: !4524)
!4532 = !DILocation(line: 479, column: 2, scope: !4524)
!4533 = !DILocation(line: 479, column: 23, scope: !4524)
!4534 = !DILocation(line: 479, column: 53, scope: !4524)
!4535 = !DILocation(line: 479, column: 28, scope: !4524)
!4536 = !DILocation(line: 480, column: 2, scope: !4524)
!4537 = !DILocation(line: 480, column: 6, scope: !4524)
!4538 = !DILocation(line: 482, column: 7, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 482, column: 6)
!4540 = !DILocation(line: 482, column: 6, scope: !4524)
!4541 = !DILocation(line: 483, column: 3, scope: !4539)
!4542 = !DILocation(line: 485, column: 40, scope: !4524)
!4543 = !DILocation(line: 485, column: 11, scope: !4524)
!4544 = !DILocation(line: 485, column: 9, scope: !4524)
!4545 = !DILocation(line: 486, column: 6, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 486, column: 6)
!4547 = !DILocation(line: 486, column: 6, scope: !4524)
!4548 = !DILocation(line: 487, column: 10, scope: !4546)
!4549 = !DILocation(line: 487, column: 3, scope: !4546)
!4550 = !DILocation(line: 489, column: 50, scope: !4524)
!4551 = !DILocation(line: 489, column: 54, scope: !4524)
!4552 = !DILocation(line: 490, column: 8, scope: !4524)
!4553 = !DILocation(line: 490, column: 12, scope: !4524)
!4554 = !DILocation(line: 489, column: 10, scope: !4524)
!4555 = !DILocation(line: 489, column: 3, scope: !4524)
!4556 = !DILocation(line: 489, column: 8, scope: !4524)
!4557 = !DILocation(line: 491, column: 2, scope: !4524)
!4558 = !DILocation(line: 492, column: 1, scope: !4524)
!4559 = distinct !DISubprogram(name: "thermal_get_trend", scope: !3, file: !3, line: 494, type: !2216, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4560)
!4560 = !{!4561, !4562, !4563, !4564, !4565, !4566}
!4561 = !DILocalVariable(name: "thermal", arg: 1, scope: !4559, file: !3, line: 494, type: !2118)
!4562 = !DILocalVariable(name: "trip", arg: 2, scope: !4559, file: !3, line: 495, type: !2218)
!4563 = !DILocalVariable(name: "trend", arg: 3, scope: !4559, file: !3, line: 496, type: !2220)
!4564 = !DILocalVariable(name: "tz", scope: !4559, file: !3, line: 498, type: !1234)
!4565 = !DILocalVariable(name: "acpi_trip", scope: !4559, file: !3, line: 499, type: !2826)
!4566 = !DILocalVariable(name: "t", scope: !4559, file: !3, line: 500, type: !46)
!4567 = !DILocation(line: 494, column: 58, scope: !4559)
!4568 = !DILocation(line: 495, column: 36, scope: !4559)
!4569 = !DILocation(line: 496, column: 29, scope: !4559)
!4570 = !DILocation(line: 498, column: 2, scope: !4559)
!4571 = !DILocation(line: 498, column: 23, scope: !4559)
!4572 = !DILocation(line: 498, column: 53, scope: !4559)
!4573 = !DILocation(line: 498, column: 28, scope: !4559)
!4574 = !DILocation(line: 499, column: 2, scope: !4559)
!4575 = !DILocation(line: 499, column: 28, scope: !4559)
!4576 = !DILocation(line: 500, column: 2, scope: !4559)
!4577 = !DILocation(line: 500, column: 6, scope: !4559)
!4578 = !DILocation(line: 502, column: 7, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 502, column: 6)
!4580 = !DILocation(line: 502, column: 10, scope: !4579)
!4581 = !DILocation(line: 502, column: 14, scope: !4579)
!4582 = !DILocation(line: 502, column: 6, scope: !4559)
!4583 = !DILocation(line: 503, column: 3, scope: !4579)
!4584 = !DILocation(line: 505, column: 14, scope: !4559)
!4585 = !DILocation(line: 505, column: 20, scope: !4559)
!4586 = !DILocation(line: 505, column: 12, scope: !4559)
!4587 = !DILocation(line: 506, column: 7, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 506, column: 6)
!4589 = !DILocation(line: 506, column: 17, scope: !4588)
!4590 = !DILocation(line: 506, column: 21, scope: !4588)
!4591 = !DILocation(line: 506, column: 32, scope: !4588)
!4592 = !DILocation(line: 506, column: 6, scope: !4559)
!4593 = !DILocation(line: 507, column: 3, scope: !4588)
!4594 = !DILocation(line: 509, column: 10, scope: !4559)
!4595 = !DILocation(line: 509, column: 16, scope: !4559)
!4596 = !DILocation(line: 509, column: 2, scope: !4559)
!4597 = !DILocation(line: 511, column: 7, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 509, column: 22)
!4599 = !DILocation(line: 511, column: 11, scope: !4598)
!4600 = !DILocation(line: 511, column: 17, scope: !4598)
!4601 = !DILocation(line: 511, column: 25, scope: !4598)
!4602 = !DILocation(line: 511, column: 32, scope: !4598)
!4603 = !DILocation(line: 511, column: 36, scope: !4598)
!4604 = !DILocation(line: 512, column: 7, scope: !4598)
!4605 = !DILocation(line: 512, column: 11, scope: !4598)
!4606 = !DILocation(line: 511, column: 48, scope: !4598)
!4607 = !DILocation(line: 511, column: 29, scope: !4598)
!4608 = !DILocation(line: 513, column: 4, scope: !4598)
!4609 = !DILocation(line: 513, column: 8, scope: !4598)
!4610 = !DILocation(line: 513, column: 14, scope: !4598)
!4611 = !DILocation(line: 513, column: 22, scope: !4598)
!4612 = !DILocation(line: 513, column: 29, scope: !4598)
!4613 = !DILocation(line: 513, column: 33, scope: !4598)
!4614 = !DILocation(line: 514, column: 7, scope: !4598)
!4615 = !DILocation(line: 514, column: 18, scope: !4598)
!4616 = !DILocation(line: 513, column: 45, scope: !4598)
!4617 = !DILocation(line: 513, column: 26, scope: !4598)
!4618 = !DILocation(line: 512, column: 29, scope: !4598)
!4619 = !DILocation(line: 511, column: 5, scope: !4598)
!4620 = !DILocation(line: 515, column: 7, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 515, column: 7)
!4622 = !DILocation(line: 515, column: 9, scope: !4621)
!4623 = !DILocation(line: 515, column: 7, scope: !4598)
!4624 = !DILocation(line: 516, column: 5, scope: !4621)
!4625 = !DILocation(line: 516, column: 11, scope: !4621)
!4626 = !DILocation(line: 516, column: 4, scope: !4621)
!4627 = !DILocation(line: 517, column: 12, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 517, column: 12)
!4629 = !DILocation(line: 517, column: 14, scope: !4628)
!4630 = !DILocation(line: 517, column: 12, scope: !4621)
!4631 = !DILocation(line: 518, column: 5, scope: !4628)
!4632 = !DILocation(line: 518, column: 11, scope: !4628)
!4633 = !DILocation(line: 518, column: 4, scope: !4628)
!4634 = !DILocation(line: 520, column: 5, scope: !4628)
!4635 = !DILocation(line: 520, column: 11, scope: !4628)
!4636 = !DILocation(line: 522, column: 3, scope: !4598)
!4637 = !DILocation(line: 525, column: 25, scope: !4598)
!4638 = !DILocation(line: 525, column: 29, scope: !4598)
!4639 = !DILocation(line: 525, column: 33, scope: !4598)
!4640 = !DILocation(line: 525, column: 7, scope: !4598)
!4641 = !DILocation(line: 525, column: 5, scope: !4598)
!4642 = !DILocation(line: 526, column: 7, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 526, column: 7)
!4644 = !DILocation(line: 526, column: 12, scope: !4643)
!4645 = !DILocation(line: 526, column: 18, scope: !4643)
!4646 = !DILocation(line: 526, column: 9, scope: !4643)
!4647 = !DILocation(line: 526, column: 7, scope: !4598)
!4648 = !DILocation(line: 527, column: 4, scope: !4643)
!4649 = !DILocation(line: 529, column: 4, scope: !4598)
!4650 = !DILocation(line: 529, column: 10, scope: !4598)
!4651 = !DILocation(line: 531, column: 3, scope: !4598)
!4652 = !DILocation(line: 534, column: 3, scope: !4598)
!4653 = !DILocation(line: 537, column: 2, scope: !4559)
!4654 = !DILocation(line: 538, column: 1, scope: !4559)
!4655 = distinct !DISubprogram(name: "acpi_thermal_zone_device_hot", scope: !3, file: !3, line: 540, type: !2223, scopeLine: 541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4656)
!4656 = !{!4657, !4658}
!4657 = !DILocalVariable(name: "thermal", arg: 1, scope: !4655, file: !3, line: 540, type: !2118)
!4658 = !DILocalVariable(name: "tz", scope: !4655, file: !3, line: 542, type: !1234)
!4659 = !DILocation(line: 540, column: 70, scope: !4655)
!4660 = !DILocation(line: 542, column: 2, scope: !4655)
!4661 = !DILocation(line: 542, column: 23, scope: !4655)
!4662 = !DILocation(line: 542, column: 53, scope: !4655)
!4663 = !DILocation(line: 542, column: 28, scope: !4655)
!4664 = !DILocation(line: 544, column: 34, scope: !4655)
!4665 = !DILocation(line: 544, column: 38, scope: !4655)
!4666 = !DILocation(line: 544, column: 46, scope: !4655)
!4667 = !DILocation(line: 544, column: 50, scope: !4655)
!4668 = !DILocation(line: 545, column: 16, scope: !4655)
!4669 = !DILocation(line: 545, column: 20, scope: !4655)
!4670 = !DILocation(line: 545, column: 28, scope: !4655)
!4671 = !DILocation(line: 545, column: 6, scope: !4655)
!4672 = !DILocation(line: 544, column: 2, scope: !4655)
!4673 = !DILocation(line: 547, column: 1, scope: !4655)
!4674 = distinct !DISubprogram(name: "acpi_thermal_zone_device_critical", scope: !3, file: !3, line: 549, type: !2223, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4675)
!4675 = !{!4676, !4677}
!4676 = !DILocalVariable(name: "thermal", arg: 1, scope: !4674, file: !3, line: 549, type: !2118)
!4677 = !DILocalVariable(name: "tz", scope: !4674, file: !3, line: 551, type: !1234)
!4678 = !DILocation(line: 549, column: 75, scope: !4674)
!4679 = !DILocation(line: 551, column: 2, scope: !4674)
!4680 = !DILocation(line: 551, column: 23, scope: !4674)
!4681 = !DILocation(line: 551, column: 53, scope: !4674)
!4682 = !DILocation(line: 551, column: 28, scope: !4674)
!4683 = !DILocation(line: 553, column: 34, scope: !4674)
!4684 = !DILocation(line: 553, column: 38, scope: !4674)
!4685 = !DILocation(line: 553, column: 46, scope: !4674)
!4686 = !DILocation(line: 553, column: 50, scope: !4674)
!4687 = !DILocation(line: 554, column: 16, scope: !4674)
!4688 = !DILocation(line: 554, column: 20, scope: !4674)
!4689 = !DILocation(line: 554, column: 28, scope: !4674)
!4690 = !DILocation(line: 554, column: 6, scope: !4674)
!4691 = !DILocation(line: 553, column: 2, scope: !4674)
!4692 = !DILocation(line: 557, column: 31, scope: !4674)
!4693 = !DILocation(line: 557, column: 2, scope: !4674)
!4694 = !DILocation(line: 558, column: 1, scope: !4674)
!4695 = distinct !DISubprogram(name: "acpi_thermal_cooling_device_cb", scope: !3, file: !3, line: 560, type: !4696, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4698)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!46, !2118, !2153, !641}
!4698 = !{!4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710}
!4699 = !DILocalVariable(name: "thermal", arg: 1, scope: !4695, file: !3, line: 560, type: !2118)
!4700 = !DILocalVariable(name: "cdev", arg: 2, scope: !4695, file: !3, line: 561, type: !2153)
!4701 = !DILocalVariable(name: "bind", arg: 3, scope: !4695, file: !3, line: 562, type: !641)
!4702 = !DILocalVariable(name: "device", scope: !4695, file: !3, line: 564, type: !1238)
!4703 = !DILocalVariable(name: "tz", scope: !4695, file: !3, line: 565, type: !1234)
!4704 = !DILocalVariable(name: "dev", scope: !4695, file: !3, line: 566, type: !1238)
!4705 = !DILocalVariable(name: "handle", scope: !4695, file: !3, line: 567, type: !1245)
!4706 = !DILocalVariable(name: "i", scope: !4695, file: !3, line: 568, type: !46)
!4707 = !DILocalVariable(name: "j", scope: !4695, file: !3, line: 569, type: !46)
!4708 = !DILocalVariable(name: "trip", scope: !4695, file: !3, line: 570, type: !46)
!4709 = !DILocalVariable(name: "result", scope: !4695, file: !3, line: 571, type: !46)
!4710 = !DILabel(scope: !4695, name: "failed", file: !3, line: 629)
!4711 = !DILocation(line: 560, column: 71, scope: !4695)
!4712 = !DILocation(line: 561, column: 39, scope: !4695)
!4713 = !DILocation(line: 562, column: 13, scope: !4695)
!4714 = !DILocation(line: 564, column: 2, scope: !4695)
!4715 = !DILocation(line: 564, column: 22, scope: !4695)
!4716 = !DILocation(line: 564, column: 31, scope: !4695)
!4717 = !DILocation(line: 564, column: 37, scope: !4695)
!4718 = !DILocation(line: 565, column: 2, scope: !4695)
!4719 = !DILocation(line: 565, column: 23, scope: !4695)
!4720 = !DILocation(line: 565, column: 53, scope: !4695)
!4721 = !DILocation(line: 565, column: 28, scope: !4695)
!4722 = !DILocation(line: 566, column: 2, scope: !4695)
!4723 = !DILocation(line: 566, column: 22, scope: !4695)
!4724 = !DILocation(line: 567, column: 2, scope: !4695)
!4725 = !DILocation(line: 567, column: 14, scope: !4695)
!4726 = !DILocation(line: 568, column: 2, scope: !4695)
!4727 = !DILocation(line: 568, column: 6, scope: !4695)
!4728 = !DILocation(line: 569, column: 2, scope: !4695)
!4729 = !DILocation(line: 569, column: 6, scope: !4695)
!4730 = !DILocation(line: 570, column: 2, scope: !4695)
!4731 = !DILocation(line: 570, column: 6, scope: !4695)
!4732 = !DILocation(line: 571, column: 2, scope: !4695)
!4733 = !DILocation(line: 571, column: 6, scope: !4695)
!4734 = !DILocation(line: 573, column: 6, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 573, column: 6)
!4736 = !DILocation(line: 573, column: 10, scope: !4735)
!4737 = !DILocation(line: 573, column: 16, scope: !4735)
!4738 = !DILocation(line: 573, column: 25, scope: !4735)
!4739 = !DILocation(line: 573, column: 6, scope: !4695)
!4740 = !DILocation(line: 574, column: 7, scope: !4735)
!4741 = !DILocation(line: 574, column: 3, scope: !4735)
!4742 = !DILocation(line: 576, column: 6, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 576, column: 6)
!4744 = !DILocation(line: 576, column: 10, scope: !4743)
!4745 = !DILocation(line: 576, column: 16, scope: !4743)
!4746 = !DILocation(line: 576, column: 20, scope: !4743)
!4747 = !DILocation(line: 576, column: 6, scope: !4695)
!4748 = !DILocation(line: 577, column: 7, scope: !4743)
!4749 = !DILocation(line: 577, column: 3, scope: !4743)
!4750 = !DILocation(line: 579, column: 6, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 579, column: 6)
!4752 = !DILocation(line: 579, column: 10, scope: !4751)
!4753 = !DILocation(line: 579, column: 16, scope: !4751)
!4754 = !DILocation(line: 579, column: 24, scope: !4751)
!4755 = !DILocation(line: 579, column: 29, scope: !4751)
!4756 = !DILocation(line: 579, column: 6, scope: !4695)
!4757 = !DILocation(line: 580, column: 7, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 579, column: 36)
!4759 = !DILocation(line: 581, column: 10, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 581, column: 3)
!4761 = !DILocation(line: 581, column: 8, scope: !4760)
!4762 = !DILocation(line: 581, column: 15, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 581, column: 3)
!4764 = !DILocation(line: 581, column: 19, scope: !4763)
!4765 = !DILocation(line: 581, column: 23, scope: !4763)
!4766 = !DILocation(line: 581, column: 29, scope: !4763)
!4767 = !DILocation(line: 581, column: 37, scope: !4763)
!4768 = !DILocation(line: 581, column: 45, scope: !4763)
!4769 = !DILocation(line: 581, column: 17, scope: !4763)
!4770 = !DILocation(line: 581, column: 3, scope: !4760)
!4771 = !DILocation(line: 582, column: 13, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4763, file: !3, line: 581, column: 57)
!4773 = !DILocation(line: 582, column: 17, scope: !4772)
!4774 = !DILocation(line: 582, column: 23, scope: !4772)
!4775 = !DILocation(line: 582, column: 31, scope: !4772)
!4776 = !DILocation(line: 582, column: 39, scope: !4772)
!4777 = !DILocation(line: 582, column: 47, scope: !4772)
!4778 = !DILocation(line: 582, column: 11, scope: !4772)
!4779 = !DILocation(line: 583, column: 30, scope: !4772)
!4780 = !DILocation(line: 583, column: 10, scope: !4772)
!4781 = !DILocation(line: 583, column: 8, scope: !4772)
!4782 = !DILocation(line: 584, column: 8, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 584, column: 8)
!4784 = !DILocation(line: 584, column: 15, scope: !4783)
!4785 = !DILocation(line: 584, column: 12, scope: !4783)
!4786 = !DILocation(line: 584, column: 8, scope: !4772)
!4787 = !DILocation(line: 585, column: 5, scope: !4783)
!4788 = !DILocation(line: 587, column: 8, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 587, column: 8)
!4790 = !DILocation(line: 587, column: 8, scope: !4772)
!4791 = !DILocation(line: 589, column: 7, scope: !4789)
!4792 = !DILocation(line: 589, column: 16, scope: !4789)
!4793 = !DILocation(line: 589, column: 22, scope: !4789)
!4794 = !DILocation(line: 588, column: 14, scope: !4789)
!4795 = !DILocation(line: 588, column: 12, scope: !4789)
!4796 = !DILocation(line: 588, column: 5, scope: !4789)
!4797 = !DILocation(line: 596, column: 7, scope: !4789)
!4798 = !DILocation(line: 596, column: 16, scope: !4789)
!4799 = !DILocation(line: 596, column: 22, scope: !4789)
!4800 = !DILocation(line: 595, column: 6, scope: !4789)
!4801 = !DILocation(line: 594, column: 12, scope: !4789)
!4802 = !DILocation(line: 598, column: 8, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 598, column: 8)
!4804 = !DILocation(line: 598, column: 8, scope: !4772)
!4805 = !DILocation(line: 599, column: 5, scope: !4803)
!4806 = !DILocation(line: 600, column: 3, scope: !4772)
!4807 = !DILocation(line: 581, column: 53, scope: !4763)
!4808 = !DILocation(line: 581, column: 3, scope: !4763)
!4809 = distinct !{!4809, !4770, !4810, !2901, !2902}
!4810 = !DILocation(line: 600, column: 3, scope: !4760)
!4811 = !DILocation(line: 601, column: 2, scope: !4758)
!4812 = !DILocation(line: 603, column: 9, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 603, column: 2)
!4814 = !DILocation(line: 603, column: 7, scope: !4813)
!4815 = !DILocation(line: 603, column: 14, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 603, column: 2)
!4817 = !DILocation(line: 603, column: 16, scope: !4816)
!4818 = !DILocation(line: 603, column: 2, scope: !4813)
!4819 = !DILocation(line: 604, column: 8, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 604, column: 7)
!4821 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 603, column: 48)
!4822 = !DILocation(line: 604, column: 12, scope: !4820)
!4823 = !DILocation(line: 604, column: 18, scope: !4820)
!4824 = !DILocation(line: 604, column: 25, scope: !4820)
!4825 = !DILocation(line: 604, column: 28, scope: !4820)
!4826 = !DILocation(line: 604, column: 33, scope: !4820)
!4827 = !DILocation(line: 604, column: 7, scope: !4821)
!4828 = !DILocation(line: 605, column: 4, scope: !4820)
!4829 = !DILocation(line: 607, column: 7, scope: !4821)
!4830 = !DILocation(line: 608, column: 10, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 608, column: 3)
!4832 = !DILocation(line: 608, column: 8, scope: !4831)
!4833 = !DILocation(line: 608, column: 15, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 608, column: 3)
!4835 = !DILocation(line: 608, column: 19, scope: !4834)
!4836 = !DILocation(line: 608, column: 23, scope: !4834)
!4837 = !DILocation(line: 608, column: 29, scope: !4834)
!4838 = !DILocation(line: 608, column: 36, scope: !4834)
!4839 = !DILocation(line: 608, column: 39, scope: !4834)
!4840 = !DILocation(line: 608, column: 47, scope: !4834)
!4841 = !DILocation(line: 608, column: 17, scope: !4834)
!4842 = !DILocation(line: 608, column: 3, scope: !4831)
!4843 = !DILocation(line: 609, column: 13, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 608, column: 59)
!4845 = !DILocation(line: 609, column: 17, scope: !4844)
!4846 = !DILocation(line: 609, column: 23, scope: !4844)
!4847 = !DILocation(line: 609, column: 30, scope: !4844)
!4848 = !DILocation(line: 609, column: 33, scope: !4844)
!4849 = !DILocation(line: 609, column: 41, scope: !4844)
!4850 = !DILocation(line: 609, column: 49, scope: !4844)
!4851 = !DILocation(line: 609, column: 11, scope: !4844)
!4852 = !DILocation(line: 610, column: 30, scope: !4844)
!4853 = !DILocation(line: 610, column: 10, scope: !4844)
!4854 = !DILocation(line: 610, column: 8, scope: !4844)
!4855 = !DILocation(line: 611, column: 8, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4844, file: !3, line: 611, column: 8)
!4857 = !DILocation(line: 611, column: 15, scope: !4856)
!4858 = !DILocation(line: 611, column: 12, scope: !4856)
!4859 = !DILocation(line: 611, column: 8, scope: !4844)
!4860 = !DILocation(line: 612, column: 5, scope: !4856)
!4861 = !DILocation(line: 614, column: 8, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4844, file: !3, line: 614, column: 8)
!4863 = !DILocation(line: 614, column: 8, scope: !4844)
!4864 = !DILocation(line: 616, column: 7, scope: !4862)
!4865 = !DILocation(line: 616, column: 16, scope: !4862)
!4866 = !DILocation(line: 616, column: 22, scope: !4862)
!4867 = !DILocation(line: 615, column: 14, scope: !4862)
!4868 = !DILocation(line: 615, column: 12, scope: !4862)
!4869 = !DILocation(line: 615, column: 5, scope: !4862)
!4870 = !DILocation(line: 622, column: 7, scope: !4862)
!4871 = !DILocation(line: 622, column: 16, scope: !4862)
!4872 = !DILocation(line: 622, column: 22, scope: !4862)
!4873 = !DILocation(line: 621, column: 14, scope: !4862)
!4874 = !DILocation(line: 621, column: 12, scope: !4862)
!4875 = !DILocation(line: 624, column: 8, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4844, file: !3, line: 624, column: 8)
!4877 = !DILocation(line: 624, column: 8, scope: !4844)
!4878 = !DILocation(line: 625, column: 5, scope: !4876)
!4879 = !DILocation(line: 626, column: 3, scope: !4844)
!4880 = !DILocation(line: 608, column: 55, scope: !4834)
!4881 = !DILocation(line: 608, column: 3, scope: !4834)
!4882 = distinct !{!4882, !4842, !4883, !2901, !2902}
!4883 = !DILocation(line: 626, column: 3, scope: !4831)
!4884 = !DILocation(line: 627, column: 2, scope: !4821)
!4885 = !DILocation(line: 603, column: 44, scope: !4816)
!4886 = !DILocation(line: 603, column: 2, scope: !4816)
!4887 = distinct !{!4887, !4818, !4888, !2901, !2902}
!4888 = !DILocation(line: 627, column: 2, scope: !4813)
!4889 = !DILocation(line: 629, column: 1, scope: !4695)
!4890 = !DILocation(line: 630, column: 9, scope: !4695)
!4891 = !DILocation(line: 631, column: 1, scope: !4695)
!4892 = !DILocation(line: 630, column: 2, scope: !4695)
!4893 = !DISubprogram(name: "thermal_zone_device_priv", scope: !96, file: !96, line: 324, type: !4894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!356, !2118}
!4896 = !DISubprogram(name: "acpi_fetch_acpi_dev", scope: !1240, file: !1240, line: 813, type: !4897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!1238, !1245}
!4899 = !DISubprogram(name: "thermal_zone_bind_cooling_device", scope: !96, file: !96, line: 329, type: !4900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!46, !2118, !46, !2153, !334, !334, !7}
!4902 = !DISubprogram(name: "thermal_zone_unbind_cooling_device", scope: !96, file: !96, line: 333, type: !4903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!46, !2118, !46, !2153}
!4905 = !DISubprogram(name: "acpi_bus_generate_netlink_event", scope: !1240, file: !1240, line: 513, type: !4906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!46, !203, !203, !242, !46}
!4908 = distinct !DISubprogram(name: "dev_name", scope: !26, file: !26, line: 858, type: !4909, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4911)
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!203, !1275}
!4911 = !{!4912}
!4912 = !DILocalVariable(name: "dev", arg: 1, scope: !4908, file: !26, line: 858, type: !1275)
!4913 = !DILocation(line: 858, column: 57, scope: !4908)
!4914 = !DILocation(line: 861, column: 6, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4908, file: !26, line: 861, column: 6)
!4916 = !DILocation(line: 861, column: 11, scope: !4915)
!4917 = !DILocation(line: 861, column: 6, scope: !4908)
!4918 = !DILocation(line: 862, column: 10, scope: !4915)
!4919 = !DILocation(line: 862, column: 15, scope: !4915)
!4920 = !DILocation(line: 862, column: 3, scope: !4915)
!4921 = !DILocation(line: 864, column: 23, scope: !4908)
!4922 = !DILocation(line: 864, column: 28, scope: !4908)
!4923 = !DILocation(line: 864, column: 9, scope: !4908)
!4924 = !DILocation(line: 864, column: 2, scope: !4908)
!4925 = !DILocation(line: 865, column: 1, scope: !4908)
!4926 = distinct !DISubprogram(name: "kobject_name", scope: !200, file: !200, line: 87, type: !272, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4927)
!4927 = !{!4928}
!4928 = !DILocalVariable(name: "kobj", arg: 1, scope: !4926, file: !200, line: 87, type: !267)
!4929 = !DILocation(line: 87, column: 62, scope: !4926)
!4930 = !DILocation(line: 89, column: 9, scope: !4926)
!4931 = !DILocation(line: 89, column: 15, scope: !4926)
!4932 = !DILocation(line: 89, column: 2, scope: !4926)
!4933 = !DISubprogram(name: "thermal_zone_device_critical", scope: !96, file: !96, line: 361, type: !2223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4934 = !DISubprogram(name: "thermal_zone_device", scope: !96, file: !96, line: 327, type: !4935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!1281, !2118}
!4937 = !DISubprogram(name: "sysfs_create_link", scope: !310, file: !310, line: 293, type: !4938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!46, !207, !207, !203}
!4940 = !DISubprogram(name: "sysfs_remove_link", scope: !310, file: !310, line: 298, type: !4941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4941 = !DISubroutineType(types: !4942)
!4942 = !{null, !207, !203}
!4943 = distinct !DISubprogram(name: "atomic_set", scope: !4944, file: !4944, line: 65, type: !4945, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4948)
!4944 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4945 = !DISubroutineType(types: !4946)
!4946 = !{null, !4947, !46}
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!4948 = !{!4949, !4950}
!4949 = !DILocalVariable(name: "v", arg: 1, scope: !4943, file: !4944, line: 65, type: !4947)
!4950 = !DILocalVariable(name: "i", arg: 2, scope: !4943, file: !4944, line: 65, type: !46)
!4951 = !DILocation(line: 65, column: 22, scope: !4943)
!4952 = !DILocation(line: 65, column: 29, scope: !4943)
!4953 = !DILocation(line: 67, column: 26, scope: !4943)
!4954 = !DILocation(line: 67, column: 2, scope: !4943)
!4955 = !DILocation(line: 68, column: 17, scope: !4943)
!4956 = !DILocation(line: 68, column: 20, scope: !4943)
!4957 = !DILocation(line: 68, column: 2, scope: !4943)
!4958 = !DILocation(line: 69, column: 1, scope: !4943)
!4959 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4960, file: !4960, line: 80, type: !4961, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4966)
!4960 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4961 = !DISubroutineType(types: !4962)
!4962 = !{null, !4963, !331}
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4965)
!4965 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4966 = !{!4967, !4968}
!4967 = !DILocalVariable(name: "v", arg: 1, scope: !4959, file: !4960, line: 80, type: !4963)
!4968 = !DILocalVariable(name: "size", arg: 2, scope: !4959, file: !4960, line: 80, type: !331)
!4969 = !DILocation(line: 80, column: 74, scope: !4959)
!4970 = !DILocation(line: 80, column: 84, scope: !4959)
!4971 = !DILocation(line: 82, column: 20, scope: !4959)
!4972 = !DILocation(line: 82, column: 23, scope: !4959)
!4973 = !DILocation(line: 82, column: 2, scope: !4959)
!4974 = !DILocation(line: 83, column: 2, scope: !4959)
!4975 = !DILocation(line: 84, column: 1, scope: !4959)
!4976 = distinct !DISubprogram(name: "raw_atomic_set", scope: !4977, file: !4977, line: 488, type: !4945, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4978)
!4977 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4978 = !{!4979, !4980}
!4979 = !DILocalVariable(name: "v", arg: 1, scope: !4976, file: !4977, line: 488, type: !4947)
!4980 = !DILocalVariable(name: "i", arg: 2, scope: !4976, file: !4977, line: 488, type: !46)
!4981 = !DILocation(line: 488, column: 26, scope: !4976)
!4982 = !DILocation(line: 488, column: 33, scope: !4976)
!4983 = !DILocation(line: 490, column: 18, scope: !4976)
!4984 = !DILocation(line: 490, column: 21, scope: !4976)
!4985 = !DILocation(line: 490, column: 2, scope: !4976)
!4986 = !DILocation(line: 491, column: 1, scope: !4976)
!4987 = distinct !DISubprogram(name: "kasan_check_write", scope: !4988, file: !4988, line: 44, type: !4989, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4991)
!4988 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!641, !4963, !7}
!4991 = !{!4992, !4993}
!4992 = !DILocalVariable(name: "p", arg: 1, scope: !4987, file: !4988, line: 44, type: !4963)
!4993 = !DILocalVariable(name: "size", arg: 2, scope: !4987, file: !4988, line: 44, type: !7)
!4994 = !DILocation(line: 44, column: 59, scope: !4987)
!4995 = !DILocation(line: 44, column: 75, scope: !4987)
!4996 = !DILocation(line: 46, column: 2, scope: !4987)
!4997 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4998, file: !4998, line: 229, type: !4999, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5001)
!4998 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4999 = !DISubroutineType(types: !5000)
!5000 = !{null, !4963, !331, !46}
!5001 = !{!5002, !5003, !5004}
!5002 = !DILocalVariable(name: "ptr", arg: 1, scope: !4997, file: !4998, line: 229, type: !4963)
!5003 = !DILocalVariable(name: "size", arg: 2, scope: !4997, file: !4998, line: 229, type: !331)
!5004 = !DILocalVariable(name: "type", arg: 3, scope: !4997, file: !4998, line: 230, type: !46)
!5005 = !DILocation(line: 229, column: 60, scope: !4997)
!5006 = !DILocation(line: 229, column: 72, scope: !4997)
!5007 = !DILocation(line: 230, column: 15, scope: !4997)
!5008 = !DILocation(line: 230, column: 23, scope: !4997)
!5009 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5010, file: !5010, line: 26, type: !4945, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5011)
!5010 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5011 = !{!5012, !5013}
!5012 = !DILocalVariable(name: "v", arg: 1, scope: !5009, file: !5010, line: 26, type: !4947)
!5013 = !DILocalVariable(name: "i", arg: 2, scope: !5009, file: !5010, line: 26, type: !46)
!5014 = !DILocation(line: 26, column: 55, scope: !5009)
!5015 = !DILocation(line: 26, column: 62, scope: !5009)
!5016 = !DILocation(line: 28, column: 2, scope: !5009)
!5017 = !DILocation(line: 28, column: 2, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5009, file: !5010, line: 28, column: 2)
!5019 = !DILocation(line: 29, column: 1, scope: !5009)
!5020 = !DISubprogram(name: "refcount_dec_not_one", scope: !154, file: !154, line: 363, type: !5021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!641, !3081}
!5023 = !DISubprogram(name: "mutex_lock", scope: !543, file: !543, line: 227, type: !5024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{null, !3095}
!5026 = !DISubprogram(name: "thermal_zone_device_update", scope: !96, file: !96, line: 335, type: !5027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{null, !2118, !101}
!5029 = distinct !DISubprogram(name: "refcount_inc", scope: !154, file: !154, line: 265, type: !5030, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5032)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{null, !3081}
!5032 = !{!5033}
!5033 = !DILocalVariable(name: "r", arg: 1, scope: !5029, file: !154, line: 265, type: !3081)
!5034 = !DILocation(line: 265, column: 45, scope: !5029)
!5035 = !DILocation(line: 267, column: 17, scope: !5029)
!5036 = !DILocation(line: 267, column: 2, scope: !5029)
!5037 = !DILocation(line: 268, column: 1, scope: !5029)
!5038 = !DISubprogram(name: "mutex_unlock", scope: !543, file: !543, line: 246, type: !5024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5039 = distinct !DISubprogram(name: "__refcount_inc", scope: !154, file: !154, line: 248, type: !5040, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5042)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{null, !3081, !1011}
!5042 = !{!5043, !5044}
!5043 = !DILocalVariable(name: "r", arg: 1, scope: !5039, file: !154, line: 248, type: !3081)
!5044 = !DILocalVariable(name: "oldp", arg: 2, scope: !5039, file: !154, line: 248, type: !1011)
!5045 = !DILocation(line: 248, column: 47, scope: !5039)
!5046 = !DILocation(line: 248, column: 55, scope: !5039)
!5047 = !DILocation(line: 250, column: 20, scope: !5039)
!5048 = !DILocation(line: 250, column: 23, scope: !5039)
!5049 = !DILocation(line: 250, column: 2, scope: !5039)
!5050 = !DILocation(line: 251, column: 1, scope: !5039)
!5051 = distinct !DISubprogram(name: "__refcount_add", scope: !154, file: !154, line: 191, type: !5052, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5054)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{null, !46, !3081, !1011}
!5054 = !{!5055, !5056, !5057, !5058}
!5055 = !DILocalVariable(name: "i", arg: 1, scope: !5051, file: !154, line: 191, type: !46)
!5056 = !DILocalVariable(name: "r", arg: 2, scope: !5051, file: !154, line: 191, type: !3081)
!5057 = !DILocalVariable(name: "oldp", arg: 3, scope: !5051, file: !154, line: 191, type: !1011)
!5058 = !DILocalVariable(name: "old", scope: !5051, file: !154, line: 193, type: !46)
!5059 = !DILocation(line: 191, column: 39, scope: !5051)
!5060 = !DILocation(line: 191, column: 54, scope: !5051)
!5061 = !DILocation(line: 191, column: 62, scope: !5051)
!5062 = !DILocation(line: 193, column: 2, scope: !5051)
!5063 = !DILocation(line: 193, column: 6, scope: !5051)
!5064 = !DILocation(line: 193, column: 37, scope: !5051)
!5065 = !DILocation(line: 193, column: 41, scope: !5051)
!5066 = !DILocation(line: 193, column: 44, scope: !5051)
!5067 = !DILocation(line: 193, column: 12, scope: !5051)
!5068 = !DILocation(line: 195, column: 6, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5051, file: !154, line: 195, column: 6)
!5070 = !DILocation(line: 195, column: 6, scope: !5051)
!5071 = !DILocation(line: 196, column: 11, scope: !5069)
!5072 = !DILocation(line: 196, column: 4, scope: !5069)
!5073 = !DILocation(line: 196, column: 9, scope: !5069)
!5074 = !DILocation(line: 196, column: 3, scope: !5069)
!5075 = !DILocation(line: 198, column: 6, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5051, file: !154, line: 198, column: 6)
!5077 = !DILocation(line: 198, column: 6, scope: !5051)
!5078 = !DILocation(line: 199, column: 26, scope: !5076)
!5079 = !DILocation(line: 199, column: 3, scope: !5076)
!5080 = !DILocation(line: 200, column: 11, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5076, file: !154, line: 200, column: 11)
!5082 = !DILocation(line: 200, column: 11, scope: !5076)
!5083 = !DILocation(line: 201, column: 26, scope: !5081)
!5084 = !DILocation(line: 201, column: 3, scope: !5081)
!5085 = !DILocation(line: 202, column: 1, scope: !5051)
!5086 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !4944, file: !4944, line: 250, type: !5087, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5089)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!46, !46, !4947}
!5089 = !{!5090, !5091}
!5090 = !DILocalVariable(name: "i", arg: 1, scope: !5086, file: !4944, line: 250, type: !46)
!5091 = !DILocalVariable(name: "v", arg: 2, scope: !5086, file: !4944, line: 250, type: !4947)
!5092 = !DILocation(line: 250, column: 30, scope: !5086)
!5093 = !DILocation(line: 250, column: 43, scope: !5086)
!5094 = !DILocation(line: 252, column: 31, scope: !5086)
!5095 = !DILocation(line: 252, column: 2, scope: !5086)
!5096 = !DILocation(line: 253, column: 38, scope: !5086)
!5097 = !DILocation(line: 253, column: 41, scope: !5086)
!5098 = !DILocation(line: 253, column: 9, scope: !5086)
!5099 = !DILocation(line: 253, column: 2, scope: !5086)
!5100 = !DISubprogram(name: "refcount_warn_saturate", scope: !154, file: !154, line: 127, type: !5101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{null, !3081, !153}
!5103 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4960, file: !4960, line: 94, type: !4961, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5104)
!5104 = !{!5105, !5106}
!5105 = !DILocalVariable(name: "v", arg: 1, scope: !5103, file: !4960, line: 94, type: !4963)
!5106 = !DILocalVariable(name: "size", arg: 2, scope: !5103, file: !4960, line: 94, type: !331)
!5107 = !DILocation(line: 94, column: 79, scope: !5103)
!5108 = !DILocation(line: 94, column: 89, scope: !5103)
!5109 = !DILocation(line: 96, column: 20, scope: !5103)
!5110 = !DILocation(line: 96, column: 23, scope: !5103)
!5111 = !DILocation(line: 96, column: 2, scope: !5103)
!5112 = !DILocation(line: 97, column: 2, scope: !5103)
!5113 = !DILocation(line: 98, column: 1, scope: !5103)
!5114 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !4977, file: !4977, line: 731, type: !5087, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5115)
!5115 = !{!5116, !5117}
!5116 = !DILocalVariable(name: "i", arg: 1, scope: !5114, file: !4977, line: 731, type: !46)
!5117 = !DILocalVariable(name: "v", arg: 2, scope: !5114, file: !4977, line: 731, type: !4947)
!5118 = !DILocation(line: 731, column: 34, scope: !5114)
!5119 = !DILocation(line: 731, column: 47, scope: !5114)
!5120 = !DILocation(line: 736, column: 31, scope: !5114)
!5121 = !DILocation(line: 736, column: 34, scope: !5114)
!5122 = !DILocation(line: 736, column: 9, scope: !5114)
!5123 = !DILocation(line: 736, column: 2, scope: !5114)
!5124 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5010, file: !5010, line: 95, type: !5087, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5125)
!5125 = !{!5126, !5127, !5128}
!5126 = !DILocalVariable(name: "i", arg: 1, scope: !5124, file: !5010, line: 95, type: !46)
!5127 = !DILocalVariable(name: "v", arg: 2, scope: !5124, file: !5010, line: 95, type: !4947)
!5128 = !DILocalVariable(name: "__ret", scope: !5129, file: !5010, line: 97, type: !46)
!5129 = distinct !DILexicalBlock(scope: !5124, file: !5010, line: 97, column: 9)
!5130 = !DILocation(line: 95, column: 54, scope: !5124)
!5131 = !DILocation(line: 95, column: 67, scope: !5124)
!5132 = !DILocation(line: 97, column: 9, scope: !5129)
!5133 = !{i64 2148820760, i64 2148820799, i64 2148820820, i64 2148820857, i64 2148820880, i64 2148820889}
!5134 = !DILocation(line: 97, column: 9, scope: !5124)
!5135 = !DILocation(line: 97, column: 2, scope: !5124)
!5136 = distinct !DISubprogram(name: "milli_kelvin_to_millicelsius", scope: !3163, file: !3163, line: 36, type: !3164, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5137)
!5137 = !{!5138}
!5138 = !DILocalVariable(name: "t", arg: 1, scope: !5136, file: !3163, line: 36, type: !320)
!5139 = !DILocation(line: 36, column: 54, scope: !5136)
!5140 = !DILocation(line: 38, column: 9, scope: !5136)
!5141 = !DILocation(line: 38, column: 11, scope: !5136)
!5142 = !DILocation(line: 38, column: 2, scope: !5136)
!5143 = distinct !DISubprogram(name: "acpi_driver_data", scope: !1240, file: !1240, line: 456, type: !5144, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5146)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!356, !1238}
!5146 = !{!5147}
!5147 = !DILocalVariable(name: "d", arg: 1, scope: !5143, file: !1240, line: 456, type: !1238)
!5148 = !DILocation(line: 456, column: 58, scope: !5143)
!5149 = !DILocation(line: 458, column: 9, scope: !5143)
!5150 = !DILocation(line: 458, column: 12, scope: !5143)
!5151 = !DILocation(line: 458, column: 2, scope: !5143)
!5152 = distinct !DISubprogram(name: "acpi_queue_thermal_check", scope: !3, file: !3, line: 430, type: !2796, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5153)
!5153 = !{!5154}
!5154 = !DILocalVariable(name: "tz", arg: 1, scope: !5152, file: !3, line: 430, type: !1234)
!5155 = !DILocation(line: 430, column: 59, scope: !5152)
!5156 = !DILocation(line: 432, column: 7, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 432, column: 6)
!5158 = !DILocation(line: 432, column: 6, scope: !5152)
!5159 = !DILocation(line: 433, column: 14, scope: !5157)
!5160 = !DILocation(line: 433, column: 38, scope: !5157)
!5161 = !DILocation(line: 433, column: 42, scope: !5157)
!5162 = !DILocation(line: 433, column: 3, scope: !5157)
!5163 = !DILocation(line: 434, column: 1, scope: !5152)
!5164 = distinct !DISubprogram(name: "acpi_thermal_trips_update", scope: !3, file: !3, line: 436, type: !5165, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5167)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{null, !1234, !1129}
!5167 = !{!5168, !5169, !5170}
!5168 = !DILocalVariable(name: "tz", arg: 1, scope: !5164, file: !3, line: 436, type: !1234)
!5169 = !DILocalVariable(name: "event", arg: 2, scope: !5164, file: !3, line: 436, type: !1129)
!5170 = !DILocalVariable(name: "adev", scope: !5164, file: !3, line: 438, type: !1238)
!5171 = !DILocation(line: 436, column: 60, scope: !5164)
!5172 = !DILocation(line: 436, column: 68, scope: !5164)
!5173 = !DILocation(line: 438, column: 2, scope: !5164)
!5174 = !DILocation(line: 438, column: 22, scope: !5164)
!5175 = !DILocation(line: 438, column: 29, scope: !5164)
!5176 = !DILocation(line: 438, column: 33, scope: !5164)
!5177 = !DILocation(line: 447, column: 27, scope: !5164)
!5178 = !DILocation(line: 447, column: 31, scope: !5164)
!5179 = !DILocation(line: 448, column: 40, scope: !5164)
!5180 = !DILocation(line: 447, column: 2, scope: !5164)
!5181 = !DILocation(line: 449, column: 27, scope: !5164)
!5182 = !DILocation(line: 449, column: 2, scope: !5164)
!5183 = !DILocation(line: 450, column: 34, scope: !5164)
!5184 = !DILocation(line: 450, column: 40, scope: !5164)
!5185 = !DILocation(line: 450, column: 44, scope: !5164)
!5186 = !DILocation(line: 451, column: 16, scope: !5164)
!5187 = !DILocation(line: 451, column: 22, scope: !5164)
!5188 = !DILocation(line: 451, column: 6, scope: !5164)
!5189 = !DILocation(line: 451, column: 28, scope: !5164)
!5190 = !DILocation(line: 450, column: 2, scope: !5164)
!5191 = !DILocation(line: 452, column: 1, scope: !5164)
!5192 = distinct !DISubprogram(name: "const_test_bit", scope: !5193, file: !5193, line: 166, type: !5194, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5199)
!5193 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5194 = !DISubroutineType(types: !5195)
!5195 = !{!641, !334, !5196}
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5198)
!5198 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !334)
!5199 = !{!5200, !5201, !5202, !5203, !5204}
!5200 = !DILocalVariable(name: "nr", arg: 1, scope: !5192, file: !5193, line: 166, type: !334)
!5201 = !DILocalVariable(name: "addr", arg: 2, scope: !5192, file: !5193, line: 166, type: !5196)
!5202 = !DILocalVariable(name: "p", scope: !5192, file: !5193, line: 168, type: !2275)
!5203 = !DILocalVariable(name: "mask", scope: !5192, file: !5193, line: 169, type: !334)
!5204 = !DILocalVariable(name: "val", scope: !5192, file: !5193, line: 170, type: !334)
!5205 = !DILocation(line: 166, column: 30, scope: !5192)
!5206 = !DILocation(line: 166, column: 64, scope: !5192)
!5207 = !DILocation(line: 168, column: 2, scope: !5192)
!5208 = !DILocation(line: 168, column: 23, scope: !5192)
!5209 = !DILocation(line: 168, column: 50, scope: !5192)
!5210 = !DILocation(line: 168, column: 57, scope: !5192)
!5211 = !DILocation(line: 168, column: 55, scope: !5192)
!5212 = !DILocation(line: 169, column: 2, scope: !5192)
!5213 = !DILocation(line: 169, column: 16, scope: !5192)
!5214 = !DILocation(line: 169, column: 23, scope: !5192)
!5215 = !DILocation(line: 170, column: 2, scope: !5192)
!5216 = !DILocation(line: 170, column: 16, scope: !5192)
!5217 = !DILocation(line: 170, column: 23, scope: !5192)
!5218 = !DILocation(line: 170, column: 22, scope: !5192)
!5219 = !DILocation(line: 172, column: 12, scope: !5192)
!5220 = !DILocation(line: 172, column: 18, scope: !5192)
!5221 = !DILocation(line: 172, column: 16, scope: !5192)
!5222 = !DILocation(line: 172, column: 10, scope: !5192)
!5223 = !DILocation(line: 172, column: 9, scope: !5192)
!5224 = !DILocation(line: 173, column: 1, scope: !5192)
!5225 = !DILocation(line: 172, column: 2, scope: !5192)
!5226 = distinct !DISubprogram(name: "_test_bit", scope: !5227, file: !5227, line: 139, type: !5194, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5228)
!5227 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5228 = !{!5229, !5230}
!5229 = !DILocalVariable(name: "nr", arg: 1, scope: !5226, file: !5227, line: 139, type: !334)
!5230 = !DILocalVariable(name: "addr", arg: 2, scope: !5226, file: !5227, line: 139, type: !5196)
!5231 = !DILocation(line: 139, column: 25, scope: !5226)
!5232 = !DILocation(line: 139, column: 59, scope: !5226)
!5233 = !DILocation(line: 141, column: 25, scope: !5226)
!5234 = !DILocation(line: 141, column: 32, scope: !5226)
!5235 = !DILocation(line: 141, column: 30, scope: !5226)
!5236 = !DILocation(line: 141, column: 2, scope: !5226)
!5237 = !DILocation(line: 142, column: 23, scope: !5226)
!5238 = !DILocation(line: 142, column: 27, scope: !5226)
!5239 = !DILocation(line: 142, column: 9, scope: !5226)
!5240 = !DILocation(line: 142, column: 2, scope: !5226)
!5241 = distinct !DISubprogram(name: "queue_work", scope: !113, file: !113, line: 559, type: !5242, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5244)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{!641, !1181, !616}
!5244 = !{!5245, !5246}
!5245 = !DILocalVariable(name: "wq", arg: 1, scope: !5241, file: !113, line: 559, type: !1181)
!5246 = !DILocalVariable(name: "work", arg: 2, scope: !5241, file: !113, line: 560, type: !616)
!5247 = !DILocation(line: 559, column: 56, scope: !5241)
!5248 = !DILocation(line: 560, column: 30, scope: !5241)
!5249 = !DILocation(line: 562, column: 41, scope: !5241)
!5250 = !DILocation(line: 562, column: 45, scope: !5241)
!5251 = !DILocation(line: 562, column: 9, scope: !5241)
!5252 = !DILocation(line: 562, column: 2, scope: !5241)
!5253 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4960, file: !4960, line: 66, type: !4961, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5254)
!5254 = !{!5255, !5256}
!5255 = !DILocalVariable(name: "v", arg: 1, scope: !5253, file: !4960, line: 66, type: !4963)
!5256 = !DILocalVariable(name: "size", arg: 2, scope: !5253, file: !4960, line: 66, type: !331)
!5257 = !DILocation(line: 66, column: 73, scope: !5253)
!5258 = !DILocation(line: 66, column: 83, scope: !5253)
!5259 = !DILocation(line: 68, column: 19, scope: !5253)
!5260 = !DILocation(line: 68, column: 22, scope: !5253)
!5261 = !DILocation(line: 68, column: 2, scope: !5253)
!5262 = !DILocation(line: 69, column: 2, scope: !5253)
!5263 = !DILocation(line: 70, column: 1, scope: !5253)
!5264 = distinct !DISubprogram(name: "arch_test_bit", scope: !5265, file: !5265, line: 237, type: !5194, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5266)
!5265 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5266 = !{!5267, !5268}
!5267 = !DILocalVariable(name: "nr", arg: 1, scope: !5264, file: !5265, line: 237, type: !334)
!5268 = !DILocalVariable(name: "addr", arg: 2, scope: !5264, file: !5265, line: 237, type: !5196)
!5269 = !DILocation(line: 237, column: 29, scope: !5264)
!5270 = !DILocation(line: 237, column: 63, scope: !5264)
!5271 = !DILocation(line: 239, column: 30, scope: !5264)
!5272 = !DILocation(line: 239, column: 9, scope: !5264)
!5273 = !DILocation(line: 239, column: 54, scope: !5264)
!5274 = !DILocation(line: 239, column: 58, scope: !5264)
!5275 = !DILocation(line: 239, column: 36, scope: !5264)
!5276 = !DILocation(line: 240, column: 26, scope: !5264)
!5277 = !DILocation(line: 240, column: 30, scope: !5264)
!5278 = !DILocation(line: 240, column: 8, scope: !5264)
!5279 = !DILocation(line: 239, column: 2, scope: !5264)
!5280 = distinct !DISubprogram(name: "kasan_check_read", scope: !4988, file: !4988, line: 40, type: !4989, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5281)
!5281 = !{!5282, !5283}
!5282 = !DILocalVariable(name: "p", arg: 1, scope: !5280, file: !4988, line: 40, type: !4963)
!5283 = !DILocalVariable(name: "size", arg: 2, scope: !5280, file: !4988, line: 40, type: !7)
!5284 = !DILocation(line: 40, column: 58, scope: !5280)
!5285 = !DILocation(line: 40, column: 74, scope: !5280)
!5286 = !DILocation(line: 42, column: 2, scope: !5280)
!5287 = distinct !DISubprogram(name: "constant_test_bit", scope: !5265, file: !5265, line: 204, type: !5288, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5290)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!641, !320, !5196}
!5290 = !{!5291, !5292}
!5291 = !DILocalVariable(name: "nr", arg: 1, scope: !5287, file: !5265, line: 204, type: !320)
!5292 = !DILocalVariable(name: "addr", arg: 2, scope: !5287, file: !5265, line: 204, type: !5196)
!5293 = !DILocation(line: 204, column: 52, scope: !5287)
!5294 = !DILocation(line: 204, column: 86, scope: !5287)
!5295 = !DILocation(line: 206, column: 19, scope: !5287)
!5296 = !DILocation(line: 206, column: 22, scope: !5287)
!5297 = !DILocation(line: 206, column: 15, scope: !5287)
!5298 = !DILocation(line: 207, column: 4, scope: !5287)
!5299 = !DILocation(line: 207, column: 9, scope: !5287)
!5300 = !DILocation(line: 207, column: 12, scope: !5287)
!5301 = !DILocation(line: 206, column: 44, scope: !5287)
!5302 = !DILocation(line: 207, column: 37, scope: !5287)
!5303 = !DILocation(line: 206, column: 2, scope: !5287)
!5304 = distinct !DISubprogram(name: "variable_test_bit", scope: !5265, file: !5265, line: 224, type: !5288, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5305)
!5305 = !{!5306, !5307, !5308}
!5306 = !DILocalVariable(name: "nr", arg: 1, scope: !5304, file: !5265, line: 224, type: !320)
!5307 = !DILocalVariable(name: "addr", arg: 2, scope: !5304, file: !5265, line: 224, type: !5196)
!5308 = !DILocalVariable(name: "oldbit", scope: !5304, file: !5265, line: 226, type: !641)
!5309 = !DILocation(line: 224, column: 52, scope: !5304)
!5310 = !DILocation(line: 224, column: 86, scope: !5304)
!5311 = !DILocation(line: 226, column: 2, scope: !5304)
!5312 = !DILocation(line: 226, column: 7, scope: !5304)
!5313 = !DILocation(line: 231, column: 33, scope: !5304)
!5314 = !DILocation(line: 231, column: 46, scope: !5304)
!5315 = !DILocation(line: 228, column: 2, scope: !5304)
!5316 = !{i64 2147828230, i64 2147828304}
!5317 = !DILocation(line: 233, column: 9, scope: !5304)
!5318 = !DILocation(line: 234, column: 1, scope: !5304)
!5319 = !DILocation(line: 233, column: 2, scope: !5304)
!5320 = !DISubprogram(name: "queue_work_on", scope: !113, file: !113, line: 496, type: !5321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{!641, !46, !1181, !616}
!5323 = !DISubprogram(name: "thermal_zone_device_exec", scope: !96, file: !96, line: 337, type: !5324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{null, !2118, !5326, !334}
!5326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5327, size: 64)
!5327 = !DISubroutineType(types: !5328)
!5328 = !{null, !2118, !334}
!5329 = distinct !DISubprogram(name: "acpi_thermal_adjust_thermal_zone", scope: !3, file: !3, line: 418, type: !5327, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5330)
!5330 = !{!5331, !5332, !5333, !5334}
!5331 = !DILocalVariable(name: "thermal", arg: 1, scope: !5329, file: !3, line: 418, type: !2118)
!5332 = !DILocalVariable(name: "data", arg: 2, scope: !5329, file: !3, line: 419, type: !334)
!5333 = !DILocalVariable(name: "tz", scope: !5329, file: !3, line: 421, type: !1234)
!5334 = !DILocalVariable(name: "flag", scope: !5329, file: !3, line: 422, type: !46)
!5335 = !DILocation(line: 418, column: 74, scope: !5329)
!5336 = !DILocation(line: 419, column: 25, scope: !5329)
!5337 = !DILocation(line: 421, column: 2, scope: !5329)
!5338 = !DILocation(line: 421, column: 23, scope: !5329)
!5339 = !DILocation(line: 421, column: 53, scope: !5329)
!5340 = !DILocation(line: 421, column: 28, scope: !5329)
!5341 = !DILocation(line: 422, column: 2, scope: !5329)
!5342 = !DILocation(line: 422, column: 6, scope: !5329)
!5343 = !DILocation(line: 422, column: 13, scope: !5329)
!5344 = !DILocation(line: 422, column: 18, scope: !5329)
!5345 = !DILocation(line: 425, column: 30, scope: !5329)
!5346 = !DILocation(line: 425, column: 34, scope: !5329)
!5347 = !DILocation(line: 425, column: 2, scope: !5329)
!5348 = !DILocation(line: 427, column: 24, scope: !5329)
!5349 = !DILocation(line: 427, column: 28, scope: !5329)
!5350 = !DILocation(line: 427, column: 68, scope: !5329)
!5351 = !DILocation(line: 427, column: 2, scope: !5329)
!5352 = !DILocation(line: 428, column: 1, scope: !5329)
!5353 = !DISubprogram(name: "for_each_thermal_trip", scope: !96, file: !96, line: 292, type: !5354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5354 = !DISubroutineType(types: !5355)
!5355 = !{!46, !2118, !5356, !356}
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5357, size: 64)
!5357 = !DISubroutineType(types: !5358)
!5358 = !{!46, !2109, !356}
!5359 = distinct !DISubprogram(name: "acpi_thermal_adjust_trip", scope: !3, file: !3, line: 402, type: !5357, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5360)
!5360 = !{!5361, !5362, !5363, !5364}
!5361 = !DILocalVariable(name: "trip", arg: 1, scope: !5359, file: !3, line: 402, type: !2109)
!5362 = !DILocalVariable(name: "data", arg: 2, scope: !5359, file: !3, line: 402, type: !356)
!5363 = !DILocalVariable(name: "acpi_trip", scope: !5359, file: !3, line: 404, type: !2826)
!5364 = !DILocalVariable(name: "tz", scope: !5359, file: !3, line: 405, type: !1234)
!5365 = !DILocation(line: 402, column: 58, scope: !5359)
!5366 = !DILocation(line: 402, column: 70, scope: !5359)
!5367 = !DILocation(line: 404, column: 2, scope: !5359)
!5368 = !DILocation(line: 404, column: 28, scope: !5359)
!5369 = !DILocation(line: 404, column: 40, scope: !5359)
!5370 = !DILocation(line: 404, column: 46, scope: !5359)
!5371 = !DILocation(line: 405, column: 2, scope: !5359)
!5372 = !DILocation(line: 405, column: 23, scope: !5359)
!5373 = !DILocation(line: 405, column: 28, scope: !5359)
!5374 = !DILocation(line: 407, column: 7, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 407, column: 6)
!5376 = !DILocation(line: 407, column: 6, scope: !5359)
!5377 = !DILocation(line: 408, column: 3, scope: !5375)
!5378 = !DILocation(line: 410, column: 6, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 410, column: 6)
!5380 = !DILocation(line: 410, column: 17, scope: !5379)
!5381 = !DILocation(line: 410, column: 6, scope: !5359)
!5382 = !DILocation(line: 411, column: 41, scope: !5379)
!5383 = !DILocation(line: 411, column: 45, scope: !5379)
!5384 = !DILocation(line: 411, column: 56, scope: !5379)
!5385 = !DILocation(line: 411, column: 23, scope: !5379)
!5386 = !DILocation(line: 411, column: 3, scope: !5379)
!5387 = !DILocation(line: 411, column: 9, scope: !5379)
!5388 = !DILocation(line: 411, column: 21, scope: !5379)
!5389 = !DILocation(line: 413, column: 3, scope: !5379)
!5390 = !DILocation(line: 413, column: 9, scope: !5379)
!5391 = !DILocation(line: 413, column: 21, scope: !5379)
!5392 = !DILocation(line: 415, column: 2, scope: !5359)
!5393 = !DILocation(line: 416, column: 1, scope: !5359)
!5394 = !DISubprogram(name: "thermal_zone_device_disable", scope: !96, file: !96, line: 360, type: !2247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5395 = !DISubprogram(name: "acpi_dev_remove_notify_handler", scope: !1240, file: !1240, line: 521, type: !5396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{null, !1238, !1129, !3182}
!5398 = distinct !DISubprogram(name: "acpi_thermal_suspend", scope: !3, file: !3, line: 993, type: !1313, scopeLine: 994, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5399)
!5399 = !{!5400, !5401}
!5400 = !DILocalVariable(name: "dev", arg: 1, scope: !5398, file: !3, line: 993, type: !1281)
!5401 = !DILocalVariable(name: "_wq", scope: !5402, file: !3, line: 996, type: !1181)
!5402 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 996, column: 2)
!5403 = !DILocation(line: 993, column: 48, scope: !5398)
!5404 = !DILocation(line: 996, column: 2, scope: !5402)
!5405 = !DILocation(line: 996, column: 2, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 996, column: 2)
!5407 = !{i32 -2140740936}
!5408 = !DILocation(line: 996, column: 2, scope: !5398)
!5409 = !DILocation(line: 997, column: 2, scope: !5398)
!5410 = distinct !DISubprogram(name: "acpi_thermal_resume", scope: !3, file: !3, line: 1000, type: !1313, scopeLine: 1001, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5411)
!5411 = !{!5412, !5413, !5414, !5415, !5416, !5417}
!5412 = !DILocalVariable(name: "dev", arg: 1, scope: !5410, file: !3, line: 1000, type: !1281)
!5413 = !DILocalVariable(name: "tz", scope: !5410, file: !3, line: 1002, type: !1234)
!5414 = !DILocalVariable(name: "i", scope: !5410, file: !3, line: 1003, type: !46)
!5415 = !DILocalVariable(name: "j", scope: !5410, file: !3, line: 1003, type: !46)
!5416 = !DILocalVariable(name: "power_state", scope: !5410, file: !3, line: 1003, type: !46)
!5417 = !DILocalVariable(name: "__mptr", scope: !5418, file: !3, line: 1008, type: !356)
!5418 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 1008, column: 24)
!5419 = !DILocation(line: 1000, column: 47, scope: !5410)
!5420 = !DILocation(line: 1002, column: 2, scope: !5410)
!5421 = !DILocation(line: 1002, column: 23, scope: !5410)
!5422 = !DILocation(line: 1003, column: 2, scope: !5410)
!5423 = !DILocation(line: 1003, column: 6, scope: !5410)
!5424 = !DILocation(line: 1003, column: 9, scope: !5410)
!5425 = !DILocation(line: 1003, column: 12, scope: !5410)
!5426 = !DILocation(line: 1005, column: 7, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 1005, column: 6)
!5428 = !DILocation(line: 1005, column: 6, scope: !5410)
!5429 = !DILocation(line: 1006, column: 3, scope: !5427)
!5430 = !DILocation(line: 1008, column: 24, scope: !5418)
!5431 = !DILocation(line: 1008, column: 24, scope: !5410)
!5432 = !DILocation(line: 1008, column: 7, scope: !5410)
!5433 = !DILocation(line: 1008, column: 5, scope: !5410)
!5434 = !DILocation(line: 1009, column: 7, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 1009, column: 6)
!5436 = !DILocation(line: 1009, column: 6, scope: !5410)
!5437 = !DILocation(line: 1010, column: 3, scope: !5435)
!5438 = !DILocation(line: 1012, column: 9, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 1012, column: 2)
!5440 = !DILocation(line: 1012, column: 7, scope: !5439)
!5441 = !DILocation(line: 1012, column: 14, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 1012, column: 2)
!5443 = !DILocation(line: 1012, column: 16, scope: !5442)
!5444 = !DILocation(line: 1012, column: 2, scope: !5439)
!5445 = !DILocation(line: 1013, column: 8, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 1013, column: 7)
!5447 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 1012, column: 48)
!5448 = !DILocation(line: 1013, column: 12, scope: !5446)
!5449 = !DILocation(line: 1013, column: 18, scope: !5446)
!5450 = !DILocation(line: 1013, column: 25, scope: !5446)
!5451 = !DILocation(line: 1013, column: 28, scope: !5446)
!5452 = !DILocation(line: 1013, column: 33, scope: !5446)
!5453 = !DILocation(line: 1013, column: 7, scope: !5447)
!5454 = !DILocation(line: 1014, column: 4, scope: !5446)
!5455 = !DILocation(line: 1016, column: 10, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 1016, column: 3)
!5457 = !DILocation(line: 1016, column: 8, scope: !5456)
!5458 = !DILocation(line: 1016, column: 15, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 1016, column: 3)
!5460 = !DILocation(line: 1016, column: 19, scope: !5459)
!5461 = !DILocation(line: 1016, column: 23, scope: !5459)
!5462 = !DILocation(line: 1016, column: 29, scope: !5459)
!5463 = !DILocation(line: 1016, column: 36, scope: !5459)
!5464 = !DILocation(line: 1016, column: 39, scope: !5459)
!5465 = !DILocation(line: 1016, column: 47, scope: !5459)
!5466 = !DILocation(line: 1016, column: 17, scope: !5459)
!5467 = !DILocation(line: 1016, column: 3, scope: !5456)
!5468 = !DILocation(line: 1017, column: 26, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 1016, column: 59)
!5470 = !DILocation(line: 1017, column: 30, scope: !5469)
!5471 = !DILocation(line: 1017, column: 36, scope: !5469)
!5472 = !DILocation(line: 1017, column: 43, scope: !5469)
!5473 = !DILocation(line: 1017, column: 46, scope: !5469)
!5474 = !DILocation(line: 1017, column: 54, scope: !5469)
!5475 = !DILocation(line: 1017, column: 62, scope: !5469)
!5476 = !DILocation(line: 1017, column: 4, scope: !5469)
!5477 = !DILocation(line: 1019, column: 3, scope: !5469)
!5478 = !DILocation(line: 1016, column: 55, scope: !5459)
!5479 = !DILocation(line: 1016, column: 3, scope: !5459)
!5480 = distinct !{!5480, !5467, !5481, !2901, !2902}
!5481 = !DILocation(line: 1019, column: 3, scope: !5456)
!5482 = !DILocation(line: 1020, column: 2, scope: !5447)
!5483 = !DILocation(line: 1012, column: 44, scope: !5442)
!5484 = !DILocation(line: 1012, column: 2, scope: !5442)
!5485 = distinct !{!5485, !5444, !5486, !2901, !2902}
!5486 = !DILocation(line: 1020, column: 2, scope: !5439)
!5487 = !DILocation(line: 1022, column: 27, scope: !5410)
!5488 = !DILocation(line: 1022, column: 2, scope: !5410)
!5489 = !DILocation(line: 1024, column: 2, scope: !5410)
!5490 = !DILocation(line: 1025, column: 1, scope: !5410)
!5491 = !DISubprogram(name: "acpi_bus_update_power", scope: !1240, file: !1240, line: 543, type: !5492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5492 = !DISubroutineType(types: !5493)
!5493 = !{!46, !1245, !1011}
!5494 = !DISubprogram(name: "dmi_check_system", scope: !5495, file: !5495, line: 100, type: !2521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5495 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!5496 = !DISubprogram(name: "alloc_workqueue", scope: !113, file: !113, line: 461, type: !5497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5497 = !DISubroutineType(types: !5498)
!5498 = !{!1181, !203, !7, !46, null}
!5499 = !DISubprogram(name: "acpi_bus_register_driver", scope: !1240, file: !1240, line: 564, type: !5500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5500 = !DISubroutineType(types: !5501)
!5501 = !{!46, !2573}
!5502 = distinct !DISubprogram(name: "thermal_act", scope: !3, file: !3, line: 1049, type: !2521, scopeLine: 1049, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5503)
!5503 = !{!5504}
!5504 = !DILocalVariable(name: "d", arg: 1, scope: !5502, file: !3, line: 1049, type: !2523)
!5505 = !DILocation(line: 1049, column: 52, scope: !5502)
!5506 = !DILocation(line: 1050, column: 6, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 1050, column: 6)
!5508 = !DILocation(line: 1050, column: 10, scope: !5507)
!5509 = !DILocation(line: 1050, column: 6, scope: !5502)
!5510 = !DILocation(line: 1051, column: 3, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 1051, column: 3)
!5512 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 1050, column: 16)
!5513 = !DILocation(line: 1051, column: 3, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 1051, column: 3)
!5515 = !DILocation(line: 1053, column: 7, scope: !5512)
!5516 = !DILocation(line: 1054, column: 2, scope: !5512)
!5517 = !DILocation(line: 1055, column: 2, scope: !5502)
!5518 = distinct !DISubprogram(name: "thermal_psv", scope: !3, file: !3, line: 1071, type: !2521, scopeLine: 1071, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5519)
!5519 = !{!5520}
!5520 = !DILocalVariable(name: "d", arg: 1, scope: !5518, file: !3, line: 1071, type: !2523)
!5521 = !DILocation(line: 1071, column: 52, scope: !5518)
!5522 = !DILocation(line: 1072, column: 6, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 1072, column: 6)
!5524 = !DILocation(line: 1072, column: 10, scope: !5523)
!5525 = !DILocation(line: 1072, column: 6, scope: !5518)
!5526 = !DILocation(line: 1073, column: 3, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 1073, column: 3)
!5528 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 1072, column: 16)
!5529 = !DILocation(line: 1073, column: 3, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 1073, column: 3)
!5531 = !DILocation(line: 1075, column: 7, scope: !5528)
!5532 = !DILocation(line: 1076, column: 2, scope: !5528)
!5533 = !DILocation(line: 1077, column: 2, scope: !5518)
!5534 = distinct !DISubprogram(name: "thermal_tzp", scope: !3, file: !3, line: 1063, type: !2521, scopeLine: 1063, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5535)
!5535 = !{!5536}
!5536 = !DILocalVariable(name: "d", arg: 1, scope: !5534, file: !3, line: 1063, type: !2523)
!5537 = !DILocation(line: 1063, column: 52, scope: !5534)
!5538 = !DILocation(line: 1064, column: 6, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 1064, column: 6)
!5540 = !DILocation(line: 1064, column: 10, scope: !5539)
!5541 = !DILocation(line: 1064, column: 6, scope: !5534)
!5542 = !DILocation(line: 1065, column: 3, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 1065, column: 3)
!5544 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 1064, column: 16)
!5545 = !DILocation(line: 1065, column: 3, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 1065, column: 3)
!5547 = !DILocation(line: 1067, column: 7, scope: !5544)
!5548 = !DILocation(line: 1068, column: 2, scope: !5544)
!5549 = !DILocation(line: 1069, column: 2, scope: !5534)
!5550 = distinct !DISubprogram(name: "thermal_nocrt", scope: !3, file: !3, line: 1057, type: !2521, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5551)
!5551 = !{!5552}
!5552 = !DILocalVariable(name: "d", arg: 1, scope: !5550, file: !3, line: 1057, type: !2523)
!5553 = !DILocation(line: 1057, column: 54, scope: !5550)
!5554 = !DILocation(line: 1058, column: 2, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 1058, column: 2)
!5556 = !DILocation(line: 1058, column: 2, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 1058, column: 2)
!5558 = !DILocation(line: 1060, column: 6, scope: !5550)
!5559 = !DILocation(line: 1061, column: 2, scope: !5550)
