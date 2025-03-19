; ModuleID = 'arch/x86/kernel/tsc.c'
source_filename = "arch/x86/kernel/tsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpu_khz: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad cpu_khz ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tsc_khz: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad tsc_khz ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_check_tsc_unstable: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad check_tsc_unstable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_recalibrate_cpu_khz: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad recalibrate_cpu_khz ; .previous"
module asm ".section\09\22.initcall1.init..kmod_tsc__297_1064_cpufreq_register_tsc_scaling\22, \22a\22\09\09"
module asm "__initcall__kmod_tsc__297_1064_cpufreq_register_tsc_scaling1:\09\09\09"
module asm ".long\09__initstub__kmod_tsc__297_1064_cpufreq_register_tsc_scaling1 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mark_tsc_unstable: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mark_tsc_unstable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_convert_art_to_tsc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad convert_art_to_tsc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_convert_art_ns_to_tsc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad convert_art_ns_to_tsc ; .previous"
module asm ".section\09\22.initcall6.init..kmod_tsc__302_1499_init_tsc_clocksource\22, \22a\22\09\09"
module asm "__initcall__kmod_tsc__302_1499_init_tsc_clocksource6:\09\09\09"
module asm ".long\09__initstub__kmod_tsc__302_1499_init_tsc_clocksource6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cyc2ns = type { [2 x %struct.cyc2ns_data], %struct.seqcount_latch_t }
%struct.cyc2ns_data = type { i32, i32, i64 }
%struct.seqcount_latch_t = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.static_call_key = type { ptr, %union.anon }
%union.anon = type { i64 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.0 }
%struct.atomic_t = type { i32 }
%union.anon.0 = type { i64 }
%struct.cpuinfo_x86 = type { %union.anon.1, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.2, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i64, [88 x i8] }
%struct.cpumask = type { [1 x i64] }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i64, i64, ptr }
%struct.list_head = type { ptr, ptr }
%struct.x86_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.x86_legacy_features, ptr, ptr, ptr, %struct.x86_hyper_runtime, %struct.x86_guest }
%struct.x86_legacy_features = type { i32, i32, i32, i32, i32, %struct.x86_legacy_devices }
%struct.x86_legacy_devices = type { i32 }
%struct.x86_hyper_runtime = type { ptr, ptr, ptr, ptr }
%struct.x86_guest = type { ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon.6 }
%union.anon.6 = type { %struct.anon.7, [16 x i8] }
%struct.anon.7 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.legacy_pic = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i8, i8, i8, i8 }
%struct.system_counterval_t = type { i64, ptr }
%struct.cpufreq_freqs = type { ptr, i32, i32, i8 }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@cpu_khz = hidden global i32 0, section ".data..read_mostly", align 4, !dbg !0
@__UNIQUE_ID___addressable_cpu_khz285 = internal global ptr @cpu_khz, section ".discard.addressable", align 8, !dbg !246
@tsc_khz = hidden global i32 0, section ".data..read_mostly", align 4, !dbg !315
@__UNIQUE_ID___addressable_tsc_khz286 = internal global ptr @tsc_khz, section ".discard.addressable", align 8, !dbg !248
@__setup_str_tsc_early_khz_setup = internal constant [14 x i8] c"tsc_early_khz\00", section ".init.rodata", align 1, !dbg !1387
@__setup_tsc_early_khz_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_tsc_early_khz_setup, ptr @tsc_early_khz_setup, i32 1 }, section ".init.setup", align 8, !dbg !250
@cyc2ns = internal global %struct.cyc2ns zeroinitializer, section ".data..percpu..shared_aligned", align 64, !dbg !1377
@cyc2ns_read_end.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace287 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !262
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__use_tsc = internal global %struct.static_key_false zeroinitializer, align 8, !dbg !1394
@jiffies_64 = external dso_local global i64, section ".data..cacheline_aligned", align 64
@__SCK__pv_sched_clock = external dso_local global %struct.static_call_key, align 8
@sched_clock.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace290 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !267
@tsc_unstable = internal global i32 0, section ".data..read_mostly", align 4, !dbg !317
@__UNIQUE_ID___addressable_check_tsc_unstable291 = internal global ptr @check_tsc_unstable, section ".discard.addressable", align 8, !dbg !274
@.str = private unnamed_addr constant [21 x i8] c"boot parameter notsc\00", align 1, !dbg !276
@__setup_str_notsc_setup = internal constant [6 x i8] c"notsc\00", section ".init.rodata", align 1, !dbg !1422
@__setup_notsc_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_notsc_setup, ptr @notsc_setup, i32 0 }, section ".init.setup", align 8, !dbg !281
@__setup_str_tsc_setup = internal constant [5 x i8] c"tsc=\00", section ".init.rodata", align 1, !dbg !1427
@__setup_tsc_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_tsc_setup, ptr @tsc_setup, i32 0 }, section ".init.setup", align 8, !dbg !283
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@cpu_caps_set = external dso_local global [24 x i32], align 16
@lapic_timer_period = external dso_local global i32, align 4
@__UNIQUE_ID___addressable_recalibrate_cpu_khz296 = internal global ptr @recalibrate_cpu_khz, section ".discard.addressable", align 8, !dbg !285
@cyc2ns_suspend = internal global i64 0, align 8, !dbg !1385
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@__UNIQUE_ID___addressable___initstub__kmod_tsc__297_1064_cpufreq_register_tsc_scaling1298 = internal global ptr @__initstub__kmod_tsc__297_1064_cpufreq_register_tsc_scaling1, section ".discard.addressable", align 8, !dbg !287
@.str.1 = private unnamed_addr constant [39 x i8] c"\016tsc: Marking TSC unstable due to %s\0A\00", align 1, !dbg !289
@clocksource_tsc_early = internal global %struct.clocksource { ptr @read_tsc, i64 -1, i32 0, i32 0, i64 0, i32 0, i32 32000000, i64 0, ptr @.str.18, %struct.list_head { ptr getelementptr (i8, ptr @clocksource_tsc_early, i64 56), ptr getelementptr (i8, ptr @clocksource_tsc_early, i64 56) }, i32 299, i32 0, i32 1, i64 3, ptr @tsc_cs_enable, ptr null, ptr null, ptr @tsc_resume, ptr @tsc_cs_mark_unstable, ptr @tsc_cs_tick_stable, %struct.list_head zeroinitializer, i64 0, i64 0, ptr null }, align 8, !dbg !1506
@clocksource_tsc = internal global %struct.clocksource { ptr @read_tsc, i64 -1, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.20, %struct.list_head { ptr getelementptr (i8, ptr @clocksource_tsc, i64 56), ptr getelementptr (i8, ptr @clocksource_tsc, i64 56) }, i32 300, i32 0, i32 1, i64 547, ptr @tsc_cs_enable, ptr null, ptr null, ptr @tsc_resume, ptr @tsc_cs_mark_unstable, ptr @tsc_cs_tick_stable, %struct.list_head zeroinitializer, i64 0, i64 0, ptr null }, align 8, !dbg !1516
@__UNIQUE_ID___addressable_mark_tsc_unstable299 = internal global ptr @mark_tsc_unstable, section ".discard.addressable", align 8, !dbg !294
@tsc_as_watchdog = internal global i32 0, align 4, !dbg !1383
@no_tsc_watchdog = internal global i32 0, align 4, !dbg !1381
@tsc_clocksource_reliable = hidden global i32 0, align 4, !dbg !319
@art_to_tsc_denominator = internal global i32 0, align 4, !dbg !323
@art_to_tsc_numerator = internal global i32 0, align 4, !dbg !321
@art_to_tsc_offset = internal global i64 0, align 8, !dbg !325
@art_related_clocksource = internal global ptr null, align 8, !dbg !327
@__UNIQUE_ID___addressable_convert_art_to_tsc300 = internal global ptr @convert_art_to_tsc, section ".discard.addressable", align 8, !dbg !296
@__UNIQUE_ID___addressable_convert_art_ns_to_tsc301 = internal global ptr @convert_art_ns_to_tsc, section ".discard.addressable", align 8, !dbg !298
@__UNIQUE_ID___addressable___initstub__kmod_tsc__302_1499_init_tsc_clocksource6303 = internal global ptr @__initstub__kmod_tsc__302_1499_init_tsc_clocksource6, section ".discard.addressable", align 8, !dbg !300
@x86_platform = external dso_local global %struct.x86_platform_ops, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"could not calculate TSC khz\00", align 1, !dbg !302
@no_sched_irq_time = internal global i32 0, align 4, !dbg !1379
@lpj_fine = external dso_local global i64, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"TSCs unsynchronized\00", align 1, !dbg !307
@.str.4 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !312
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@cpu_core_map = external dso_local global [1 x %struct.cpumask], section ".data..percpu..read_mostly", align 8
@nr_cpu_ids = external dso_local global i32, align 4
@tsc_early_khz = internal global i32 0, section ".init.data", align 4, !dbg !1392
@cycles_2_ns.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace288 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !1410
@paravirt_sched_clock.__UNIQUE_ID___addressable___SCK__pv_sched_clock92 = internal global ptr @__SCK__pv_sched_clock, section ".discard.addressable", align 8, !dbg !1418
@.str.5 = private unnamed_addr constant [9 x i8] c"reliable\00", align 1, !dbg !1430
@.str.6 = private unnamed_addr constant [10 x i8] c"noirqtime\00", align 1, !dbg !1435
@.str.7 = private unnamed_addr constant [9 x i8] c"unstable\00", align 1, !dbg !1440
@.str.8 = private unnamed_addr constant [15 x i8] c"boot parameter\00", align 1, !dbg !1442
@.str.9 = private unnamed_addr constant [11 x i8] c"nowatchdog\00", align 1, !dbg !1447
@.str.10 = private unnamed_addr constant [64 x i8] c"\011tsc: %s: Overriding earlier tsc=watchdog with tsc=nowatchdog\0A\00", align 1, !dbg !1452
@__func__.tsc_setup = private unnamed_addr constant [10 x i8] c"tsc_setup\00", align 1, !dbg !1454
@.str.11 = private unnamed_addr constant [12 x i8] c"recalibrate\00", align 1, !dbg !1457
@tsc_force_recalibrate = internal global i32 0, section ".data..read_mostly", align 4, !dbg !1469
@.str.12 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1, !dbg !1462
@.str.13 = private unnamed_addr constant [62 x i8] c"\011tsc: %s: tsc=watchdog overridden by earlier tsc=nowatchdog\0A\00", align 1, !dbg !1464
@.str.14 = private unnamed_addr constant [36 x i8] c"\016tsc: Fast TSC calibration failed\0A\00", align 1, !dbg !1471
@.str.15 = private unnamed_addr constant [39 x i8] c"\016tsc: Fast TSC calibration using PIT\0A\00", align 1, !dbg !1476
@legacy_pic = external dso_local global ptr, align 8
@null_legacy_pic = external dso_local global %struct.legacy_pic, align 8
@time_cpufreq_notifier_block = internal global %struct.notifier_block { ptr @time_cpufreq_notifier, ptr null, i32 0 }, align 8, !dbg !1478
@.str.16 = private unnamed_addr constant [23 x i8] c"cpufreq changes on SMP\00", align 1, !dbg !1491
@ref_freq = internal global i32 0, align 4, !dbg !1498
@loops_per_jiffy_ref = internal global i64 0, align 8, !dbg !1500
@tsc_khz_ref = internal global i64 0, align 8, !dbg !1502
@.str.17 = private unnamed_addr constant [16 x i8] c"cpufreq changes\00", align 1, !dbg !1496
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"tsc-early\00", align 1, !dbg !1504
@vclocks_used = external dso_local global i32, align 4
@.str.19 = private unnamed_addr constant [57 x i8] c"\016tsc: Marking TSC unstable due to clocksource watchdog\0A\00", align 1, !dbg !1508
@.str.20 = private unnamed_addr constant [4 x i8] c"tsc\00", align 1, !dbg !1513
@tsc_irqwork = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @tsc_irqwork, i64 8), ptr getelementptr (i8, ptr @tsc_irqwork, i64 8) }, ptr @tsc_refine_calibration_work }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i64 -2401263026318605568 to ptr), ptr null }, i64 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 8, !dbg !1518
@system_wq = external dso_local global ptr, align 8
@tsc_refine_calibration_work.tsc_start = internal global i64 -1, align 8, !dbg !1520
@tsc_refine_calibration_work.ref_start = internal global i64 0, align 8, !dbg !1543
@tsc_refine_calibration_work.hpet = internal global i32 0, align 4, !dbg !1545
@.str.21 = private unnamed_addr constant [122 x i8] c"\014tsc: Warning: TSC freq calibrated by CPUID/MSR differs from what is calibrated by HW timer, please check with vendor!!\0A\00", align 1, !dbg !1547
@.str.22 = private unnamed_addr constant [53 x i8] c"\016tsc: Previous calibrated TSC freq:\09 %lu.%03lu MHz\0A\00", align 1, !dbg !1552
@.str.23 = private unnamed_addr constant [54 x i8] c"\016tsc: TSC freq recalibrated by [%s]:\09 %lu.%03lu MHz\0A\00", align 1, !dbg !1557
@.str.24 = private unnamed_addr constant [5 x i8] c"HPET\00", align 1, !dbg !1562
@.str.25 = private unnamed_addr constant [9 x i8] c"PM_TIMER\00", align 1, !dbg !1564
@.str.26 = private unnamed_addr constant [59 x i8] c"\016tsc: Refined TSC clocksource calibration: %lu.%03lu MHz\0A\00", align 1, !dbg !1566
@pmtmr_ioport = external dso_local global i32, align 4
@.str.27 = private unnamed_addr constant [22 x i8] c"arch/x86/kernel/tsc.c\00", align 1, !dbg !1571
@.str.28 = private unnamed_addr constant [41 x i8] c"\016tsc: Detected %lu.%03lu MHz processor\0A\00", align 1, !dbg !1576
@.str.29 = private unnamed_addr constant [34 x i8] c"\016tsc: Detected %lu.%03lu MHz TSC\00", align 1, !dbg !1581
@.str.30 = private unnamed_addr constant [45 x i8] c"\016tsc: PIT calibration matches %s. %d loops\0A\00", align 1, !dbg !1586
@.str.31 = private unnamed_addr constant [8 x i8] c"PMTIMER\00", align 1, !dbg !1591
@.str.32 = private unnamed_addr constant [40 x i8] c"\014tsc: Unable to calibrate against PIT\0A\00", align 1, !dbg !1596
@.str.33 = private unnamed_addr constant [46 x i8] c"\015tsc: No reference (HPET/PMTIMER) available\0A\00", align 1, !dbg !1601
@.str.34 = private unnamed_addr constant [40 x i8] c"\014tsc: HPET/PMTIMER calibration failed\0A\00", align 1, !dbg !1606
@.str.35 = private unnamed_addr constant [39 x i8] c"\016tsc: using %s reference calibration\0A\00", align 1, !dbg !1608
@.str.36 = private unnamed_addr constant [36 x i8] c"\016tsc: Using PIT calibration value\0A\00", align 1, !dbg !1610
@.str.37 = private unnamed_addr constant [64 x i8] c"\014tsc: HPET/PMTIMER calibration failed. Using PIT calibration.\0A\00", align 1, !dbg !1612
@.str.38 = private unnamed_addr constant [50 x i8] c"\014tsc: PIT calibration deviates from %s: %lu %lu\0A\00", align 1, !dbg !1614
@loops_per_jiffy = external dso_local global i64, align 8
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@nr_online_nodes = external dso_local global i32, align 4
@tsc_async_resets = external dso_local global i8, align 1
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID___addressable_cpu_khz285, ptr @__UNIQUE_ID___addressable_tsc_khz286, ptr @__setup_tsc_early_khz_setup, ptr @cyc2ns_read_end.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace287, ptr @sched_clock.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace290, ptr @__UNIQUE_ID___addressable_check_tsc_unstable291, ptr @__setup_notsc_setup, ptr @__setup_tsc_setup, ptr @__UNIQUE_ID___addressable_recalibrate_cpu_khz296, ptr @__UNIQUE_ID___addressable___initstub__kmod_tsc__297_1064_cpufreq_register_tsc_scaling1298, ptr @__UNIQUE_ID___addressable_mark_tsc_unstable299, ptr @__UNIQUE_ID___addressable_convert_art_to_tsc300, ptr @__UNIQUE_ID___addressable_convert_art_ns_to_tsc301, ptr @__UNIQUE_ID___addressable___initstub__kmod_tsc__302_1499_init_tsc_clocksource6303, ptr @cycles_2_ns.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace288, ptr @paravirt_sched_clock.__UNIQUE_ID___addressable___SCK__pv_sched_clock92], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @tsc_early_khz_setup(ptr noundef %buf) #0 section ".init.text" align 16 !dbg !1629 {
entry:
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1631, metadata !DIExpression()), !dbg !1632
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !1633
  %call = call i32 @kstrtouint(ptr noundef %0, i32 noundef 0, ptr noundef @tsc_early_khz) #15, !dbg !1634
  ret i32 %call, !dbg !1635
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__cyc2ns_read(ptr noundef %data) #1 align 16 !dbg !1636 {
entry:
  %data.addr = alloca ptr, align 8
  %seq = alloca i32, align 4
  %idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %pscr_ret__4 = alloca i64, align 8
  %__vpp_verify6 = alloca ptr, align 8
  %pfo_val__9 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %tmp11 = alloca i64, align 8
  %pscr_ret__13 = alloca i32, align 4
  %__vpp_verify15 = alloca ptr, align 8
  %pfo_val__18 = alloca i32, align 4
  %tmp21 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %pscr_ret__26 = alloca i32, align 4
  %__vpp_verify28 = alloca ptr, align 8
  %pfo_val__31 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %pscr_ret__40 = alloca i32, align 4
  %__vpp_verify42 = alloca ptr, align 8
  %pfo_val__45 = alloca i32, align 4
  %tmp46 = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1641, metadata !DIExpression()), !dbg !1675
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #16, !dbg !1676
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !1642, metadata !DIExpression()), !dbg !1677
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #16, !dbg !1676
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !1643, metadata !DIExpression()), !dbg !1678
  br label %do.body, !dbg !1679

do.body:                                          ; preds = %do.end44, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #16, !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1644, metadata !DIExpression()), !dbg !1680
  br label %do.body1, !dbg !1680

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !1681
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1647, metadata !DIExpression()), !dbg !1681
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1681
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1681
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !1680
  br label %do.cond, !dbg !1681

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1681

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #16, !dbg !1682
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1649, metadata !DIExpression()), !dbg !1682
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.cyc2ns, ptr @cyc2ns, i32 0, i32 1)) #16, !dbg !1682, !srcloc !1683
  store i32 %1, ptr %pfo_val__, align 4, !dbg !1682
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !1682
  %conv = zext i32 %2 to i64, !dbg !1682
  %conv2 = trunc i64 %conv to i32, !dbg !1682
  store i32 %conv2, ptr %tmp, align 4, !dbg !1682
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #16, !dbg !1680
  %3 = load i32, ptr %tmp, align 4, !dbg !1682
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !1680
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !1680
  store i32 %4, ptr %tmp3, align 4, !dbg !1680
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #16, !dbg !1684
  %5 = load i32, ptr %tmp3, align 4, !dbg !1680
  store i32 %5, ptr %seq, align 4, !dbg !1685
  %6 = load i32, ptr %seq, align 4, !dbg !1686
  %and = and i32 %6, 1, !dbg !1687
  store i32 %and, ptr %idx, align 4, !dbg !1688
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__4) #16, !dbg !1689
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__4, metadata !1651, metadata !DIExpression()), !dbg !1689
  br label %do.body5, !dbg !1689

do.body5:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify6) #16, !dbg !1690
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify6, metadata !1653, metadata !DIExpression()), !dbg !1690
  store ptr null, ptr %__vpp_verify6, align 8, !dbg !1690
  %7 = load ptr, ptr %__vpp_verify6, align 8, !dbg !1690
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify6) #16, !dbg !1689
  br label %do.cond7, !dbg !1690

do.cond7:                                         ; preds = %do.body5
  br label %do.end8, !dbg !1690

do.end8:                                          ; preds = %do.cond7
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__9) #16, !dbg !1691
  call void @llvm.dbg.declare(metadata ptr %pfo_val__9, metadata !1655, metadata !DIExpression()), !dbg !1691
  %8 = load i32, ptr %idx, align 4, !dbg !1691
  %idxprom = sext i32 %8 to i64, !dbg !1691
  %arrayidx = getelementptr [2 x %struct.cyc2ns_data], ptr @cyc2ns, i64 0, i64 %idxprom, !dbg !1691
  %cyc2ns_offset = getelementptr inbounds %struct.cyc2ns_data, ptr %arrayidx, i32 0, i32 2, !dbg !1691
  %9 = call i64 asm sideeffect "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %cyc2ns_offset) #16, !dbg !1691, !srcloc !1692
  store i64 %9, ptr %pfo_val__9, align 8, !dbg !1691
  %10 = load i64, ptr %pfo_val__9, align 8, !dbg !1691
  store i64 %10, ptr %tmp10, align 8, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__9) #16, !dbg !1689
  %11 = load i64, ptr %tmp10, align 8, !dbg !1691
  store i64 %11, ptr %pscr_ret__4, align 8, !dbg !1689
  %12 = load i64, ptr %pscr_ret__4, align 8, !dbg !1689
  store i64 %12, ptr %tmp11, align 8, !dbg !1689
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__4) #16, !dbg !1693
  %13 = load i64, ptr %tmp11, align 8, !dbg !1689
  %14 = load ptr, ptr %data.addr, align 8, !dbg !1694
  %cyc2ns_offset12 = getelementptr inbounds %struct.cyc2ns_data, ptr %14, i32 0, i32 2, !dbg !1695
  store i64 %13, ptr %cyc2ns_offset12, align 8, !dbg !1696
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__13) #16, !dbg !1697
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__13, metadata !1657, metadata !DIExpression()), !dbg !1697
  br label %do.body14, !dbg !1697

do.body14:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify15) #16, !dbg !1698
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify15, metadata !1659, metadata !DIExpression()), !dbg !1698
  store ptr null, ptr %__vpp_verify15, align 8, !dbg !1698
  %15 = load ptr, ptr %__vpp_verify15, align 8, !dbg !1698
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify15) #16, !dbg !1697
  br label %do.cond16, !dbg !1698

do.cond16:                                        ; preds = %do.body14
  br label %do.end17, !dbg !1698

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__18) #16, !dbg !1699
  call void @llvm.dbg.declare(metadata ptr %pfo_val__18, metadata !1661, metadata !DIExpression()), !dbg !1699
  %16 = load i32, ptr %idx, align 4, !dbg !1699
  %idxprom19 = sext i32 %16 to i64, !dbg !1699
  %arrayidx20 = getelementptr [2 x %struct.cyc2ns_data], ptr @cyc2ns, i64 0, i64 %idxprom19, !dbg !1699
  %cyc2ns_mul = getelementptr inbounds %struct.cyc2ns_data, ptr %arrayidx20, i32 0, i32 0, !dbg !1699
  %17 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %cyc2ns_mul) #16, !dbg !1699, !srcloc !1700
  store i32 %17, ptr %pfo_val__18, align 4, !dbg !1699
  %18 = load i32, ptr %pfo_val__18, align 4, !dbg !1699
  %conv22 = zext i32 %18 to i64, !dbg !1699
  %conv23 = trunc i64 %conv22 to i32, !dbg !1699
  store i32 %conv23, ptr %tmp21, align 4, !dbg !1699
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__18) #16, !dbg !1697
  %19 = load i32, ptr %tmp21, align 4, !dbg !1699
  store i32 %19, ptr %pscr_ret__13, align 4, !dbg !1697
  %20 = load i32, ptr %pscr_ret__13, align 4, !dbg !1697
  store i32 %20, ptr %tmp24, align 4, !dbg !1697
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__13) #16, !dbg !1701
  %21 = load i32, ptr %tmp24, align 4, !dbg !1697
  %22 = load ptr, ptr %data.addr, align 8, !dbg !1702
  %cyc2ns_mul25 = getelementptr inbounds %struct.cyc2ns_data, ptr %22, i32 0, i32 0, !dbg !1703
  store i32 %21, ptr %cyc2ns_mul25, align 8, !dbg !1704
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__26) #16, !dbg !1705
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__26, metadata !1663, metadata !DIExpression()), !dbg !1705
  br label %do.body27, !dbg !1705

do.body27:                                        ; preds = %do.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify28) #16, !dbg !1706
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify28, metadata !1665, metadata !DIExpression()), !dbg !1706
  store ptr null, ptr %__vpp_verify28, align 8, !dbg !1706
  %23 = load ptr, ptr %__vpp_verify28, align 8, !dbg !1706
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify28) #16, !dbg !1705
  br label %do.cond29, !dbg !1706

do.cond29:                                        ; preds = %do.body27
  br label %do.end30, !dbg !1706

do.end30:                                         ; preds = %do.cond29
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__31) #16, !dbg !1707
  call void @llvm.dbg.declare(metadata ptr %pfo_val__31, metadata !1667, metadata !DIExpression()), !dbg !1707
  %24 = load i32, ptr %idx, align 4, !dbg !1707
  %idxprom32 = sext i32 %24 to i64, !dbg !1707
  %arrayidx33 = getelementptr [2 x %struct.cyc2ns_data], ptr @cyc2ns, i64 0, i64 %idxprom32, !dbg !1707
  %cyc2ns_shift = getelementptr inbounds %struct.cyc2ns_data, ptr %arrayidx33, i32 0, i32 1, !dbg !1707
  %25 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %cyc2ns_shift) #16, !dbg !1707, !srcloc !1708
  store i32 %25, ptr %pfo_val__31, align 4, !dbg !1707
  %26 = load i32, ptr %pfo_val__31, align 4, !dbg !1707
  %conv35 = zext i32 %26 to i64, !dbg !1707
  %conv36 = trunc i64 %conv35 to i32, !dbg !1707
  store i32 %conv36, ptr %tmp34, align 4, !dbg !1707
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__31) #16, !dbg !1705
  %27 = load i32, ptr %tmp34, align 4, !dbg !1707
  store i32 %27, ptr %pscr_ret__26, align 4, !dbg !1705
  %28 = load i32, ptr %pscr_ret__26, align 4, !dbg !1705
  store i32 %28, ptr %tmp37, align 4, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__26) #16, !dbg !1709
  %29 = load i32, ptr %tmp37, align 4, !dbg !1705
  %30 = load ptr, ptr %data.addr, align 8, !dbg !1710
  %cyc2ns_shift38 = getelementptr inbounds %struct.cyc2ns_data, ptr %30, i32 0, i32 1, !dbg !1711
  store i32 %29, ptr %cyc2ns_shift38, align 4, !dbg !1712
  br label %do.cond39, !dbg !1713

do.cond39:                                        ; preds = %do.end30
  %31 = load i32, ptr %seq, align 4, !dbg !1714
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__40) #16, !dbg !1715
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__40, metadata !1669, metadata !DIExpression()), !dbg !1715
  br label %do.body41, !dbg !1715

do.body41:                                        ; preds = %do.cond39
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify42) #16, !dbg !1716
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify42, metadata !1671, metadata !DIExpression()), !dbg !1716
  store ptr null, ptr %__vpp_verify42, align 8, !dbg !1716
  %32 = load ptr, ptr %__vpp_verify42, align 8, !dbg !1716
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify42) #16, !dbg !1715
  br label %do.cond43, !dbg !1716

do.cond43:                                        ; preds = %do.body41
  br label %do.end44, !dbg !1716

do.end44:                                         ; preds = %do.cond43
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__45) #16, !dbg !1717
  call void @llvm.dbg.declare(metadata ptr %pfo_val__45, metadata !1673, metadata !DIExpression()), !dbg !1717
  %33 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.cyc2ns, ptr @cyc2ns, i32 0, i32 1)) #16, !dbg !1717, !srcloc !1718
  store i32 %33, ptr %pfo_val__45, align 4, !dbg !1717
  %34 = load i32, ptr %pfo_val__45, align 4, !dbg !1717
  %conv47 = zext i32 %34 to i64, !dbg !1717
  %conv48 = trunc i64 %conv47 to i32, !dbg !1717
  store i32 %conv48, ptr %tmp46, align 4, !dbg !1717
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__45) #16, !dbg !1715
  %35 = load i32, ptr %tmp46, align 4, !dbg !1717
  store i32 %35, ptr %pscr_ret__40, align 4, !dbg !1715
  %36 = load i32, ptr %pscr_ret__40, align 4, !dbg !1715
  store i32 %36, ptr %tmp49, align 4, !dbg !1715
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__40) #16, !dbg !1714
  %37 = load i32, ptr %tmp49, align 4, !dbg !1715
  %cmp = icmp ne i32 %31, %37, !dbg !1714
  %lnot = xor i1 %cmp, true, !dbg !1714
  %lnot51 = xor i1 %lnot, true, !dbg !1714
  %lnot.ext = zext i1 %lnot51 to i32, !dbg !1714
  %conv52 = sext i32 %lnot.ext to i64, !dbg !1714
  %expval = call i64 @llvm.expect.i64(i64 %conv52, i64 0), !dbg !1714
  %tobool = icmp ne i64 %expval, 0, !dbg !1713
  br i1 %tobool, label %do.body, label %do.end53, !dbg !1713, !llvm.loop !1719

do.end53:                                         ; preds = %do.end44
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #16, !dbg !1723
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #16, !dbg !1723
  ret void, !dbg !1723
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cyc2ns_read_begin(ptr noundef %data) #1 align 16 !dbg !1724 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1726, metadata !DIExpression()), !dbg !1727
  br label %do.body, !dbg !1728

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #15, !dbg !1729
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !1729, !srcloc !1731
  br label %do.end, !dbg !1729

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %data.addr, align 8, !dbg !1732
  call void @__cyc2ns_read(ptr noundef %0) #15, !dbg !1733
  ret void, !dbg !1734
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #1 align 16 !dbg !1735 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1740, metadata !DIExpression()), !dbg !1747
  br label %do.body, !dbg !1748

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #16, !dbg !1749
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !1741, metadata !DIExpression()), !dbg !1749
  %0 = load i32, ptr %val.addr, align 4, !dbg !1749
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1749
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !1749

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !1749
  %cmp = icmp eq i32 %2, 1, !dbg !1749
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !1749

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !1749
  %cmp1 = icmp eq i32 %3, -1, !dbg !1749
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !1749

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !1749
  br label %cond.end, !dbg !1749

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !1749

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !1749
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !1749
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !1750
  %cmp2 = icmp eq i32 %5, 1, !dbg !1750
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1749

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !1751, !srcloc !1753
  br label %if.end8, !dbg !1750

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !1754
  %cmp3 = icmp eq i32 %6, -1, !dbg !1754
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !1750

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !1755, !srcloc !1757
  br label %if.end, !dbg !1754

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !1754

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #16, !dbg !1758
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1743, metadata !DIExpression()), !dbg !1758
  %7 = load i32, ptr %val.addr, align 4, !dbg !1758
  %conv = sext i32 %7 to i64, !dbg !1758
  %and = and i64 %conv, 4294967295, !dbg !1758
  %conv7 = trunc i64 %and to i32, !dbg !1758
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !1758
  %8 = load i32, ptr %pto_val__, align 4, !dbg !1758
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !1758, !srcloc !1759
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #16, !dbg !1754
  br label %do.cond, !dbg !1758

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !1758

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #16, !dbg !1748
  br label %do.end10, !dbg !1749

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !1760
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cyc2ns_read_end() #1 align 16 !dbg !264 {
entry:
  br label %do.body, !dbg !1761

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !1762, !srcloc !1764
  %call = call zeroext i1 @__preempt_count_dec_and_test() #15, !dbg !1765
  %lnot = xor i1 %call, true, !dbg !1765
  %lnot1 = xor i1 %lnot, true, !dbg !1765
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1765
  %conv = sext i32 %lnot.ext to i64, !dbg !1765
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1765
  %tobool = icmp ne i64 %expval, 0, !dbg !1765
  br i1 %tobool, label %if.then, label %if.end, !dbg !1762

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !1765

do.body2:                                         ; preds = %if.then
  %0 = call i64 @llvm.read_register.i64(metadata !1619), !dbg !1767
  %1 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %0) #16, !dbg !1767, !srcloc !1769
  call void @llvm.write_register.i64(metadata !1619, i64 %1), !dbg !1767
  br label %do.end, !dbg !1767

do.end:                                           ; preds = %do.body2
  br label %if.end, !dbg !1767

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end3, !dbg !1762

do.end3:                                          ; preds = %if.end
  ret void, !dbg !1770
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #1 align 16 !dbg !1771 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #16, !dbg !1775
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1773, metadata !DIExpression()), !dbg !1775
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 1)) #16, !dbg !1775, !srcloc !1776
  %1 = icmp ult i8 %0, 2, !dbg !1775
  call void @llvm.assume(i1 %1), !dbg !1775
  store i8 %0, ptr %c, align 1, !dbg !1775
  %2 = load i8, ptr %c, align 1, !dbg !1775, !range !1777, !noundef !590
  %tobool = trunc i8 %2 to i1, !dbg !1775
  %frombool = zext i1 %tobool to i8, !dbg !1775
  store i8 %frombool, ptr %tmp, align 1, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #16, !dbg !1778
  %3 = load i8, ptr %tmp, align 1, !dbg !1775, !range !1777, !noundef !590
  %tobool1 = trunc i8 %3 to i1, !dbg !1775
  ret i1 %tobool1, !dbg !1779
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @native_sched_clock() #7 section ".noinstr.text" align 16 !dbg !1780 {
entry:
  %retval = alloca i64, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tsc_now = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #16, !dbg !1789
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !1784, metadata !DIExpression()), !dbg !1789
  %call = call zeroext i1 @arch_static_branch_jump(ptr noundef @__use_tsc, i1 noundef zeroext true) #15, !dbg !1790
  %lnot = xor i1 %call, true, !dbg !1790
  %frombool = zext i1 %lnot to i8, !dbg !1790
  store i8 %frombool, ptr %branch, align 1, !dbg !1790
  %0 = load i8, ptr %branch, align 1, !dbg !1789, !range !1777, !noundef !590
  %tobool = trunc i8 %0 to i1, !dbg !1789
  %lnot1 = xor i1 %tobool, true, !dbg !1789
  %lnot2 = xor i1 %lnot1, true, !dbg !1789
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1789
  %conv = sext i32 %lnot.ext to i64, !dbg !1789
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1789
  store i64 %expval, ptr %tmp, align 8, !dbg !1793
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #16, !dbg !1794
  %1 = load i64, ptr %tmp, align 8, !dbg !1789
  %tobool3 = icmp ne i64 %1, 0, !dbg !1794
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1795

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsc_now) #16, !dbg !1796
  call void @llvm.dbg.declare(metadata ptr %tsc_now, metadata !1787, metadata !DIExpression()), !dbg !1797
  %call4 = call i64 @rdtsc() #15, !dbg !1798
  store i64 %call4, ptr %tsc_now, align 8, !dbg !1797
  %2 = load i64, ptr %tsc_now, align 8, !dbg !1799
  %call5 = call i64 @__cycles_2_ns(i64 noundef %2) #15, !dbg !1800
  store i64 %call5, ptr %retval, align 8, !dbg !1801
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsc_now) #16, !dbg !1802
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, ptr @jiffies_64, align 64, !dbg !1803
  %sub = sub i64 %3, 4294667296, !dbg !1804
  %mul = mul i64 %sub, 1000000, !dbg !1805
  store i64 %mul, ptr %retval, align 8, !dbg !1806
  br label %return, !dbg !1806

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, ptr %retval, align 8, !dbg !1807
  ret i64 %4, !dbg !1807
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch_jump(ptr noundef %key, i1 noundef zeroext %branch) #1 align 16 !dbg !1808 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1816, metadata !DIExpression()), !dbg !1819
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !1817, metadata !DIExpression()), !dbg !1820
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1821
  %1 = load i8, ptr %branch.addr, align 1, !dbg !1822, !range !1777, !noundef !590
  %tobool = trunc i8 %1 to i1, !dbg !1822
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i1 %tobool) #16
          to label %asm.fallthrough [label %l_yes], !dbg !1823, !srcloc !1824

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1825
  br label %return, !dbg !1825

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !1818), !dbg !1826
  store i1 true, ptr %retval, align 1, !dbg !1827
  br label %return, !dbg !1827

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !1828
  ret i1 %2, !dbg !1828
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rdtsc() #1 align 16 !dbg !1829 {
entry:
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #16, !dbg !1834
  call void @llvm.dbg.declare(metadata ptr %low, metadata !1832, metadata !DIExpression()), !dbg !1834
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #16, !dbg !1834
  call void @llvm.dbg.declare(metadata ptr %high, metadata !1833, metadata !DIExpression()), !dbg !1834
  %0 = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !1835, !srcloc !1836
  %asmresult = extractvalue { i64, i64 } %0, 0, !dbg !1835
  %asmresult1 = extractvalue { i64, i64 } %0, 1, !dbg !1835
  store i64 %asmresult, ptr %low, align 8, !dbg !1835
  store i64 %asmresult1, ptr %high, align 8, !dbg !1835
  %1 = load i64, ptr %low, align 8, !dbg !1837
  %2 = load i64, ptr %high, align 8, !dbg !1837
  %shl = shl i64 %2, 32, !dbg !1837
  %or = or i64 %1, %shl, !dbg !1837
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #16, !dbg !1838
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #16, !dbg !1838
  ret i64 %or, !dbg !1839
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__cycles_2_ns(i64 noundef %cyc) #1 align 16 !dbg !1840 {
entry:
  %cyc.addr = alloca i64, align 8
  %data = alloca %struct.cyc2ns_data, align 8
  %ns = alloca i64, align 8
  store i64 %cyc, ptr %cyc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cyc.addr, metadata !1842, metadata !DIExpression()), !dbg !1845
  call void @llvm.lifetime.start.p0(i64 16, ptr %data) #16, !dbg !1846
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1843, metadata !DIExpression()), !dbg !1847
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #16, !dbg !1848
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !1844, metadata !DIExpression()), !dbg !1849
  call void @__cyc2ns_read(ptr noundef %data) #15, !dbg !1850
  %cyc2ns_offset = getelementptr inbounds %struct.cyc2ns_data, ptr %data, i32 0, i32 2, !dbg !1851
  %0 = load i64, ptr %cyc2ns_offset, align 8, !dbg !1851
  store i64 %0, ptr %ns, align 8, !dbg !1852
  %1 = load i64, ptr %cyc.addr, align 8, !dbg !1853
  %cyc2ns_mul = getelementptr inbounds %struct.cyc2ns_data, ptr %data, i32 0, i32 0, !dbg !1854
  %2 = load i32, ptr %cyc2ns_mul, align 8, !dbg !1854
  %cyc2ns_shift = getelementptr inbounds %struct.cyc2ns_data, ptr %data, i32 0, i32 1, !dbg !1855
  %3 = load i32, ptr %cyc2ns_shift, align 4, !dbg !1855
  %call = call i64 @mul_u64_u32_shr(i64 noundef %1, i32 noundef %2, i32 noundef %3) #15, !dbg !1856
  %4 = load i64, ptr %ns, align 8, !dbg !1857
  %add = add i64 %4, %call, !dbg !1857
  store i64 %add, ptr %ns, align 8, !dbg !1857
  %5 = load i64, ptr %ns, align 8, !dbg !1858
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #16, !dbg !1859
  call void @llvm.lifetime.end.p0(i64 16, ptr %data) #16, !dbg !1859
  ret i64 %5, !dbg !1860
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @native_sched_clock_from_tsc(i64 noundef %tsc) #8 align 16 !dbg !1861 {
entry:
  %tsc.addr = alloca i64, align 8
  store i64 %tsc, ptr %tsc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsc.addr, metadata !1865, metadata !DIExpression()), !dbg !1866
  %0 = load i64, ptr %tsc.addr, align 8, !dbg !1867
  %call = call i64 @cycles_2_ns(i64 noundef %0) #15, !dbg !1868
  ret i64 %call, !dbg !1869
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cycles_2_ns(i64 noundef %cyc) #1 align 16 !dbg !1412 {
entry:
  %cyc.addr = alloca i64, align 8
  %ns = alloca i64, align 8
  store i64 %cyc, ptr %cyc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cyc.addr, metadata !1416, metadata !DIExpression()), !dbg !1870
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #16, !dbg !1871
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !1417, metadata !DIExpression()), !dbg !1872
  br label %do.body, !dbg !1873

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #15, !dbg !1874
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !1874, !srcloc !1876
  br label %do.cond, !dbg !1874

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1874

do.end:                                           ; preds = %do.cond
  %0 = load i64, ptr %cyc.addr, align 8, !dbg !1877
  %call = call i64 @__cycles_2_ns(i64 noundef %0) #15, !dbg !1878
  store i64 %call, ptr %ns, align 8, !dbg !1879
  br label %do.body1, !dbg !1880

do.body1:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !1881, !srcloc !1883
  %call2 = call zeroext i1 @__preempt_count_dec_and_test() #15, !dbg !1884
  %lnot = xor i1 %call2, true, !dbg !1884
  %lnot3 = xor i1 %lnot, true, !dbg !1884
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1884
  %conv = sext i32 %lnot.ext to i64, !dbg !1884
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1884
  %tobool = icmp ne i64 %expval, 0, !dbg !1884
  br i1 %tobool, label %if.then, label %if.end, !dbg !1881

if.then:                                          ; preds = %do.body1
  br label %do.body4, !dbg !1884

do.body4:                                         ; preds = %if.then
  %1 = call i64 @llvm.read_register.i64(metadata !1619), !dbg !1886
  %2 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %1) #16, !dbg !1886, !srcloc !1888
  call void @llvm.write_register.i64(metadata !1619, i64 %2), !dbg !1886
  br label %do.cond5, !dbg !1886

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1886

do.end6:                                          ; preds = %do.cond5
  br label %if.end, !dbg !1886

if.end:                                           ; preds = %do.end6, %do.body1
  br label %do.cond7, !dbg !1881

do.cond7:                                         ; preds = %if.end
  br label %do.end8, !dbg !1881

do.end8:                                          ; preds = %do.cond7
  %3 = load i64, ptr %ns, align 8, !dbg !1889
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #16, !dbg !1890
  ret i64 %3, !dbg !1891
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @sched_clock_noinstr() #7 section ".noinstr.text" align 16 !dbg !1892 {
entry:
  %call = call i64 @paravirt_sched_clock() #15, !dbg !1893
  ret i64 %call, !dbg !1894
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @paravirt_sched_clock() #1 align 16 !dbg !1420 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__pv_sched_clock, ptr %tmp, align 8, !dbg !1895
  %0 = load ptr, ptr %tmp, align 8, !dbg !1895
  %call = call i64 %0() #15, !dbg !1897
  ret i64 %call, !dbg !1898
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @using_native_sched_clock() #8 align 16 !dbg !1899 {
entry:
  %tmp = alloca ptr, align 8
  br label %do.body, !dbg !1900

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1902

do.end:                                           ; preds = %do.body
  %0 = load volatile ptr, ptr @__SCK__pv_sched_clock, align 8, !dbg !1900
  store ptr %0, ptr %tmp, align 8, !dbg !1902
  %1 = load ptr, ptr %tmp, align 8, !dbg !1900
  %cmp = icmp eq ptr %1, @native_sched_clock, !dbg !1904
  ret i1 %cmp, !dbg !1905
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @sched_clock() #8 align 16 !dbg !269 {
entry:
  %now = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #16, !dbg !1906
  call void @llvm.dbg.declare(metadata ptr %now, metadata !273, metadata !DIExpression()), !dbg !1907
  br label %do.body, !dbg !1908

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #15, !dbg !1909
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !1909, !srcloc !1911
  br label %do.cond, !dbg !1909

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1909

do.end:                                           ; preds = %do.cond
  %call = call i64 @sched_clock_noinstr() #15, !dbg !1912
  store i64 %call, ptr %now, align 8, !dbg !1913
  br label %do.body1, !dbg !1914

do.body1:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !1915, !srcloc !1917
  %call2 = call zeroext i1 @__preempt_count_dec_and_test() #15, !dbg !1918
  %lnot = xor i1 %call2, true, !dbg !1918
  %lnot3 = xor i1 %lnot, true, !dbg !1918
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1918
  %conv = sext i32 %lnot.ext to i64, !dbg !1918
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1918
  %tobool = icmp ne i64 %expval, 0, !dbg !1918
  br i1 %tobool, label %if.then, label %if.end, !dbg !1915

if.then:                                          ; preds = %do.body1
  br label %do.body4, !dbg !1918

do.body4:                                         ; preds = %if.then
  %0 = call i64 @llvm.read_register.i64(metadata !1619), !dbg !1920
  %1 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %0) #16, !dbg !1920, !srcloc !1922
  call void @llvm.write_register.i64(metadata !1619, i64 %1), !dbg !1920
  br label %do.cond5, !dbg !1920

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1920

do.end6:                                          ; preds = %do.cond5
  br label %if.end, !dbg !1920

if.end:                                           ; preds = %do.end6, %do.body1
  br label %do.cond7, !dbg !1915

do.cond7:                                         ; preds = %if.end
  br label %do.end8, !dbg !1915

do.end8:                                          ; preds = %do.cond7
  %2 = load i64, ptr %now, align 8, !dbg !1923
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #16, !dbg !1924
  ret i64 %2, !dbg !1925
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @check_tsc_unstable() #8 align 16 !dbg !1926 {
entry:
  %0 = load i32, ptr @tsc_unstable, align 4, !dbg !1927
  ret i32 %0, !dbg !1928
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @notsc_setup(ptr noundef %str) #0 section ".init.text" align 16 !dbg !1929 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !1931, metadata !DIExpression()), !dbg !1932
  call void @mark_tsc_unstable(ptr noundef @.str) #15, !dbg !1933
  ret i32 1, !dbg !1934
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mark_tsc_unstable(ptr noundef %reason) #8 align 16 !dbg !1935 {
entry:
  %reason.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %reason, ptr %reason.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reason.addr, metadata !1939, metadata !DIExpression()), !dbg !1940
  %0 = load i32, ptr @tsc_unstable, align 4, !dbg !1941
  %tobool = icmp ne i32 %0, 0, !dbg !1941
  br i1 %tobool, label %if.then, label %if.end, !dbg !1943

if.then:                                          ; preds = %entry
  br label %return, !dbg !1944

if.end:                                           ; preds = %entry
  store i32 1, ptr @tsc_unstable, align 4, !dbg !1945
  %call = call zeroext i1 @using_native_sched_clock() #15, !dbg !1946
  br i1 %call, label %if.then1, label %if.end2, !dbg !1948

if.then1:                                         ; preds = %if.end
  call void @clear_sched_clock_stable() #15, !dbg !1949
  br label %if.end2, !dbg !1949

if.end2:                                          ; preds = %if.then1, %if.end
  call void @disable_sched_clock_irqtime() #15, !dbg !1950
  br label %do.body, !dbg !1951

do.body:                                          ; preds = %if.end2
  br label %do.end, !dbg !1953

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %reason.addr, align 8, !dbg !1951
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %1) #17, !dbg !1951
  store i32 %call3, ptr %tmp, align 4, !dbg !1953
  %2 = load i32, ptr %tmp, align 4, !dbg !1951
  call void @clocksource_mark_unstable(ptr noundef @clocksource_tsc_early) #15, !dbg !1955
  call void @clocksource_mark_unstable(ptr noundef @clocksource_tsc) #15, !dbg !1956
  br label %return, !dbg !1957

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !1957
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @tsc_setup(ptr noundef %str) #0 section ".init.text" align 16 !dbg !1958 {
entry:
  %str.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !1960, metadata !DIExpression()), !dbg !1961
  %0 = load ptr, ptr %str.addr, align 8, !dbg !1962
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.5) #15, !dbg !1964
  %tobool = icmp ne i32 %call, 0, !dbg !1964
  br i1 %tobool, label %if.end, label %if.then, !dbg !1965

if.then:                                          ; preds = %entry
  store i32 1, ptr @tsc_clocksource_reliable, align 4, !dbg !1966
  br label %if.end, !dbg !1967

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !1968
  %call1 = call i32 @strncmp(ptr noundef %1, ptr noundef @.str.6, i64 noundef 9) #15, !dbg !1970
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1970
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1971

if.then3:                                         ; preds = %if.end
  store i32 1, ptr @no_sched_irq_time, align 4, !dbg !1972
  br label %if.end4, !dbg !1973

if.end4:                                          ; preds = %if.then3, %if.end
  %2 = load ptr, ptr %str.addr, align 8, !dbg !1974
  %call5 = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.7) #15, !dbg !1976
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1976
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1977

if.then7:                                         ; preds = %if.end4
  call void @mark_tsc_unstable(ptr noundef @.str.8) #15, !dbg !1978
  br label %if.end8, !dbg !1978

if.end8:                                          ; preds = %if.then7, %if.end4
  %3 = load ptr, ptr %str.addr, align 8, !dbg !1979
  %call9 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.9) #15, !dbg !1981
  %tobool10 = icmp ne i32 %call9, 0, !dbg !1981
  br i1 %tobool10, label %if.end16, label %if.then11, !dbg !1982

if.then11:                                        ; preds = %if.end8
  store i32 1, ptr @no_tsc_watchdog, align 4, !dbg !1983
  %4 = load i32, ptr @tsc_as_watchdog, align 4, !dbg !1985
  %tobool12 = icmp ne i32 %4, 0, !dbg !1985
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !1987

if.then13:                                        ; preds = %if.then11
  br label %do.body, !dbg !1988

do.body:                                          ; preds = %if.then13
  br label %do.end, !dbg !1990

do.end:                                           ; preds = %do.body
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10, ptr noundef @__func__.tsc_setup) #17, !dbg !1988
  store i32 %call14, ptr %tmp, align 4, !dbg !1990
  %5 = load i32, ptr %tmp, align 4, !dbg !1988
  br label %if.end15, !dbg !1992

if.end15:                                         ; preds = %do.end, %if.then11
  store i32 0, ptr @tsc_as_watchdog, align 4, !dbg !1993
  br label %if.end16, !dbg !1994

if.end16:                                         ; preds = %if.end15, %if.end8
  %6 = load ptr, ptr %str.addr, align 8, !dbg !1995
  %call17 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.11) #15, !dbg !1997
  %tobool18 = icmp ne i32 %call17, 0, !dbg !1997
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !1998

if.then19:                                        ; preds = %if.end16
  store i32 1, ptr @tsc_force_recalibrate, align 4, !dbg !1999
  br label %if.end20, !dbg !2000

if.end20:                                         ; preds = %if.then19, %if.end16
  %7 = load ptr, ptr %str.addr, align 8, !dbg !2001
  %call21 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.12) #15, !dbg !2003
  %tobool22 = icmp ne i32 %call21, 0, !dbg !2003
  br i1 %tobool22, label %if.end31, label %if.then23, !dbg !2004

if.then23:                                        ; preds = %if.end20
  %8 = load i32, ptr @no_tsc_watchdog, align 4, !dbg !2005
  %tobool24 = icmp ne i32 %8, 0, !dbg !2005
  br i1 %tobool24, label %if.then25, label %if.else, !dbg !2008

if.then25:                                        ; preds = %if.then23
  br label %do.body26, !dbg !2009

do.body26:                                        ; preds = %if.then25
  br label %do.end27, !dbg !2011

do.end27:                                         ; preds = %do.body26
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, ptr noundef @__func__.tsc_setup) #17, !dbg !2009
  store i32 %call29, ptr %tmp28, align 4, !dbg !2011
  %9 = load i32, ptr %tmp28, align 4, !dbg !2009
  br label %if.end30, !dbg !2013

if.else:                                          ; preds = %if.then23
  store i32 1, ptr @tsc_as_watchdog, align 4, !dbg !2014
  br label %if.end30

if.end30:                                         ; preds = %if.else, %do.end27
  br label %if.end31, !dbg !2015

if.end31:                                         ; preds = %if.end30, %if.end20
  ret i32 1, !dbg !2016
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @native_calibrate_tsc() #8 align 16 !dbg !2017 {
entry:
  %retval = alloca i64, align 8
  %eax_denominator = alloca i32, align 4
  %ebx_numerator = alloca i32, align 4
  %ecx_hz = alloca i32, align 4
  %edx = alloca i32, align 4
  %crystal_khz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %eax_base_mhz = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx29 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax_denominator) #16, !dbg !2032
  call void @llvm.dbg.declare(metadata ptr %eax_denominator, metadata !2021, metadata !DIExpression()), !dbg !2033
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx_numerator) #16, !dbg !2032
  call void @llvm.dbg.declare(metadata ptr %ebx_numerator, metadata !2022, metadata !DIExpression()), !dbg !2034
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx_hz) #16, !dbg !2032
  call void @llvm.dbg.declare(metadata ptr %ecx_hz, metadata !2023, metadata !DIExpression()), !dbg !2035
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #16, !dbg !2032
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !2024, metadata !DIExpression()), !dbg !2036
  call void @llvm.lifetime.start.p0(i64 4, ptr %crystal_khz) #16, !dbg !2037
  call void @llvm.dbg.declare(metadata ptr %crystal_khz, metadata !2025, metadata !DIExpression()), !dbg !2038
  %0 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !2039
  %conv = zext i8 %0 to i32, !dbg !2041
  %cmp = icmp ne i32 %conv, 0, !dbg !2042
  br i1 %cmp, label %if.then, label %if.end, !dbg !2043

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !2044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2044

if.end:                                           ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 9), align 8, !dbg !2045
  %cmp2 = icmp slt i32 %1, 21, !dbg !2047
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !2048

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !2049
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2049

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %edx, align 4, !dbg !2050
  store i32 0, ptr %ecx_hz, align 4, !dbg !2051
  store i32 0, ptr %ebx_numerator, align 4, !dbg !2052
  store i32 0, ptr %eax_denominator, align 4, !dbg !2053
  call void @cpuid(i32 noundef 21, ptr noundef %eax_denominator, ptr noundef %ebx_numerator, ptr noundef %ecx_hz, ptr noundef %edx) #15, !dbg !2054
  %2 = load i32, ptr %ebx_numerator, align 4, !dbg !2055
  %cmp6 = icmp eq i32 %2, 0, !dbg !2057
  br i1 %cmp6, label %if.then10, label %lor.lhs.false, !dbg !2058

lor.lhs.false:                                    ; preds = %if.end5
  %3 = load i32, ptr %eax_denominator, align 4, !dbg !2059
  %cmp8 = icmp eq i32 %3, 0, !dbg !2060
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !2061

if.then10:                                        ; preds = %lor.lhs.false, %if.end5
  store i64 0, ptr %retval, align 8, !dbg !2062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2062

if.end11:                                         ; preds = %lor.lhs.false
  %4 = load i32, ptr %ecx_hz, align 4, !dbg !2063
  %div = udiv i32 %4, 1000, !dbg !2064
  store i32 %div, ptr %crystal_khz, align 4, !dbg !2065
  %5 = load i32, ptr %crystal_khz, align 4, !dbg !2066
  %cmp12 = icmp eq i32 %5, 0, !dbg !2068
  br i1 %cmp12, label %land.lhs.true, label %if.end18, !dbg !2069

land.lhs.true:                                    ; preds = %if.end11
  %6 = load i8, ptr @boot_cpu_data, align 8, !dbg !2070
  %conv14 = zext i8 %6 to i32, !dbg !2071
  %cmp15 = icmp eq i32 %conv14, 95, !dbg !2072
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !2073

if.then17:                                        ; preds = %land.lhs.true
  store i32 25000, ptr %crystal_khz, align 4, !dbg !2074
  br label %if.end18, !dbg !2075

if.end18:                                         ; preds = %if.then17, %land.lhs.true, %if.end11
  %7 = load i32, ptr %crystal_khz, align 4, !dbg !2076
  %cmp19 = icmp ne i32 %7, 0, !dbg !2078
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !2079

if.then21:                                        ; preds = %if.end18
  br label %do.body, !dbg !2080

do.body:                                          ; preds = %if.then21
  call void @set_bit(i64 noundef 127, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !2081
  call void @set_bit(i64 noundef 127, ptr noundef @cpu_caps_set) #15, !dbg !2081
  br label %do.cond, !dbg !2081

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2081

do.end:                                           ; preds = %do.cond
  br label %if.end22, !dbg !2081

if.end22:                                         ; preds = %do.end, %if.end18
  %8 = load i32, ptr %crystal_khz, align 4, !dbg !2083
  %cmp23 = icmp eq i32 %8, 0, !dbg !2084
  br i1 %cmp23, label %land.lhs.true25, label %if.end32, !dbg !2085

land.lhs.true25:                                  ; preds = %if.end22
  %9 = load i32, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 9), align 8, !dbg !2086
  %cmp26 = icmp sge i32 %9, 22, !dbg !2087
  br i1 %cmp26, label %if.then28, label %if.end32, !dbg !2088

if.then28:                                        ; preds = %land.lhs.true25
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax_base_mhz) #16, !dbg !2089
  call void @llvm.dbg.declare(metadata ptr %eax_base_mhz, metadata !2026, metadata !DIExpression()), !dbg !2090
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #16, !dbg !2089
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !2029, metadata !DIExpression()), !dbg !2091
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #16, !dbg !2089
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !2030, metadata !DIExpression()), !dbg !2092
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx29) #16, !dbg !2089
  call void @llvm.dbg.declare(metadata ptr %edx29, metadata !2031, metadata !DIExpression()), !dbg !2093
  call void @cpuid(i32 noundef 22, ptr noundef %eax_base_mhz, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx29) #15, !dbg !2094
  %10 = load i32, ptr %eax_base_mhz, align 4, !dbg !2095
  %mul = mul i32 %10, 1000, !dbg !2096
  %11 = load i32, ptr %eax_denominator, align 4, !dbg !2097
  %mul30 = mul i32 %mul, %11, !dbg !2098
  %12 = load i32, ptr %ebx_numerator, align 4, !dbg !2099
  %div31 = udiv i32 %mul30, %12, !dbg !2100
  store i32 %div31, ptr %crystal_khz, align 4, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx29) #16, !dbg !2102
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #16, !dbg !2102
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #16, !dbg !2102
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax_base_mhz) #16, !dbg !2102
  br label %if.end32, !dbg !2103

if.end32:                                         ; preds = %if.then28, %land.lhs.true25, %if.end22
  %13 = load i32, ptr %crystal_khz, align 4, !dbg !2104
  %cmp33 = icmp eq i32 %13, 0, !dbg !2106
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !2107

if.then35:                                        ; preds = %if.end32
  store i64 0, ptr %retval, align 8, !dbg !2108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2108

if.end36:                                         ; preds = %if.end32
  %14 = load i8, ptr @boot_cpu_data, align 8, !dbg !2109
  %conv37 = zext i8 %14 to i32, !dbg !2111
  %cmp38 = icmp eq i32 %conv37, 92, !dbg !2112
  br i1 %cmp38, label %if.then40, label %if.end44, !dbg !2113

if.then40:                                        ; preds = %if.end36
  br label %do.body41, !dbg !2114

do.body41:                                        ; preds = %if.then40
  call void @set_bit(i64 noundef 119, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !2115
  call void @set_bit(i64 noundef 119, ptr noundef @cpu_caps_set) #15, !dbg !2115
  br label %do.cond42, !dbg !2115

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !2115

do.end43:                                         ; preds = %do.cond42
  br label %if.end44, !dbg !2115

if.end44:                                         ; preds = %do.end43, %if.end36
  %15 = load i32, ptr %crystal_khz, align 4, !dbg !2117
  %mul45 = mul i32 %15, 1000, !dbg !2118
  %div46 = udiv i32 %mul45, 1000, !dbg !2119
  store i32 %div46, ptr @lapic_timer_period, align 4, !dbg !2120
  %16 = load i32, ptr %crystal_khz, align 4, !dbg !2121
  %17 = load i32, ptr %ebx_numerator, align 4, !dbg !2122
  %mul47 = mul i32 %16, %17, !dbg !2123
  %18 = load i32, ptr %eax_denominator, align 4, !dbg !2124
  %div48 = udiv i32 %mul47, %18, !dbg !2125
  %conv49 = zext i32 %div48 to i64, !dbg !2121
  store i64 %conv49, ptr %retval, align 8, !dbg !2126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2126

cleanup:                                          ; preds = %if.end44, %if.then35, %if.then10, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %crystal_khz) #16, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #16, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx_hz) #16, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx_numerator) #16, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax_denominator) #16, !dbg !2127
  %19 = load i64, ptr %retval, align 8, !dbg !2127
  ret i64 %19, !dbg !2127
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid(i32 noundef %op, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #9 align 16 !dbg !2128 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !2133, metadata !DIExpression()), !dbg !2138
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !2134, metadata !DIExpression()), !dbg !2139
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !2135, metadata !DIExpression()), !dbg !2140
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !2136, metadata !DIExpression()), !dbg !2141
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !2137, metadata !DIExpression()), !dbg !2142
  %0 = load i32, ptr %op.addr, align 4, !dbg !2143
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !2144
  store i32 %0, ptr %1, align 4, !dbg !2145
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !2146
  store i32 0, ptr %2, align 4, !dbg !2147
  %3 = load ptr, ptr %eax.addr, align 8, !dbg !2148
  %4 = load ptr, ptr %ebx.addr, align 8, !dbg !2149
  %5 = load ptr, ptr %ecx.addr, align 8, !dbg !2150
  %6 = load ptr, ptr %edx.addr, align 8, !dbg !2151
  call void @native_cpuid(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #15, !dbg !2152
  ret void, !dbg !2153
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !2154 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2161, metadata !DIExpression()), !dbg !2163
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2162, metadata !DIExpression()), !dbg !2164
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2165
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2166
  %div = sdiv i64 %1, 64, !dbg !2166
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2167
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !2168
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2169
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2170
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !2171
  ret void, !dbg !2172
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @native_calibrate_cpu_early() #8 align 16 !dbg !2173 {
entry:
  %flags = alloca i64, align 8
  %fast_calibrate = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy11 = alloca i64, align 8
  %__dummy212 = alloca i64, align 8
  %tmp15 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !2189
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2175, metadata !DIExpression()), !dbg !2190
  call void @llvm.lifetime.start.p0(i64 8, ptr %fast_calibrate) #16, !dbg !2189
  call void @llvm.dbg.declare(metadata ptr %fast_calibrate, metadata !2176, metadata !DIExpression()), !dbg !2191
  %call = call i64 @cpu_khz_from_cpuid() #15, !dbg !2192
  store i64 %call, ptr %fast_calibrate, align 8, !dbg !2191
  %0 = load i64, ptr %fast_calibrate, align 8, !dbg !2193
  %tobool = icmp ne i64 %0, 0, !dbg !2193
  br i1 %tobool, label %if.end, label %if.then, !dbg !2195

if.then:                                          ; preds = %entry
  %call1 = call i64 @cpu_khz_from_msr() #15, !dbg !2196
  store i64 %call1, ptr %fast_calibrate, align 8, !dbg !2197
  br label %if.end, !dbg !2198

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %fast_calibrate, align 8, !dbg !2199
  %tobool2 = icmp ne i64 %1, 0, !dbg !2199
  br i1 %tobool2, label %if.end23, label %if.then3, !dbg !2200

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !2201

do.body:                                          ; preds = %if.then3
  br label %do.body4, !dbg !2202

do.body4:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !2203
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2177, metadata !DIExpression()), !dbg !2203
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !2203
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2183, metadata !DIExpression()), !dbg !2203
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2203
  %conv = zext i1 %cmp to i32, !dbg !2203
  store i32 1, ptr %tmp, align 4, !dbg !2203
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !2204
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !2204
  %2 = load i32, ptr %tmp, align 4, !dbg !2203
  %call5 = call i64 @arch_local_irq_save() #15, !dbg !2204
  store i64 %call5, ptr %flags, align 8, !dbg !2204
  br label %do.cond, !dbg !2204

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !2204

do.end:                                           ; preds = %do.cond
  br label %do.cond6, !dbg !2202

do.cond6:                                         ; preds = %do.end
  br label %do.end7, !dbg !2202

do.end7:                                          ; preds = %do.cond6
  %call8 = call i64 @quick_pit_calibrate() #15, !dbg !2205
  store i64 %call8, ptr %fast_calibrate, align 8, !dbg !2206
  br label %do.body9, !dbg !2207

do.body9:                                         ; preds = %do.end7
  br label %do.body10, !dbg !2208

do.body10:                                        ; preds = %do.body9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy11) #16, !dbg !2209
  call void @llvm.dbg.declare(metadata ptr %__dummy11, metadata !2184, metadata !DIExpression()), !dbg !2209
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy212) #16, !dbg !2209
  call void @llvm.dbg.declare(metadata ptr %__dummy212, metadata !2188, metadata !DIExpression()), !dbg !2209
  %cmp13 = icmp eq ptr %__dummy11, %__dummy212, !dbg !2209
  %conv14 = zext i1 %cmp13 to i32, !dbg !2209
  store i32 1, ptr %tmp15, align 4, !dbg !2209
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy212) #16, !dbg !2210
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy11) #16, !dbg !2210
  %3 = load i32, ptr %tmp15, align 4, !dbg !2209
  br label %do.body16, !dbg !2210

do.body16:                                        ; preds = %do.body10
  br label %do.cond17, !dbg !2211

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !2211

do.end18:                                         ; preds = %do.cond17
  %4 = load i64, ptr %flags, align 8, !dbg !2210
  call void @arch_local_irq_restore(i64 noundef %4) #15, !dbg !2210
  br label %do.cond19, !dbg !2210

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !2210

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !2208

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !2208

do.end22:                                         ; preds = %do.cond21
  br label %if.end23, !dbg !2213

if.end23:                                         ; preds = %do.end22, %if.end
  %5 = load i64, ptr %fast_calibrate, align 8, !dbg !2214
  call void @llvm.lifetime.end.p0(i64 8, ptr %fast_calibrate) #16, !dbg !2215
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !2215
  ret i64 %5, !dbg !2216
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpu_khz_from_cpuid() #8 align 16 !dbg !2217 {
entry:
  %retval = alloca i64, align 8
  %eax_base_mhz = alloca i32, align 4
  %ebx_max_mhz = alloca i32, align 4
  %ecx_bus_mhz = alloca i32, align 4
  %edx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax_base_mhz) #16, !dbg !2223
  call void @llvm.dbg.declare(metadata ptr %eax_base_mhz, metadata !2219, metadata !DIExpression()), !dbg !2224
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx_max_mhz) #16, !dbg !2223
  call void @llvm.dbg.declare(metadata ptr %ebx_max_mhz, metadata !2220, metadata !DIExpression()), !dbg !2225
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx_bus_mhz) #16, !dbg !2223
  call void @llvm.dbg.declare(metadata ptr %ecx_bus_mhz, metadata !2221, metadata !DIExpression()), !dbg !2226
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #16, !dbg !2223
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !2222, metadata !DIExpression()), !dbg !2227
  %0 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !2228
  %conv = zext i8 %0 to i32, !dbg !2230
  %cmp = icmp ne i32 %conv, 0, !dbg !2231
  br i1 %cmp, label %if.then, label %if.end, !dbg !2232

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !2233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2233

if.end:                                           ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 9), align 8, !dbg !2234
  %cmp2 = icmp slt i32 %1, 22, !dbg !2236
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !2237

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !2238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2238

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %edx, align 4, !dbg !2239
  store i32 0, ptr %ecx_bus_mhz, align 4, !dbg !2240
  store i32 0, ptr %ebx_max_mhz, align 4, !dbg !2241
  store i32 0, ptr %eax_base_mhz, align 4, !dbg !2242
  call void @cpuid(i32 noundef 22, ptr noundef %eax_base_mhz, ptr noundef %ebx_max_mhz, ptr noundef %ecx_bus_mhz, ptr noundef %edx) #15, !dbg !2243
  %2 = load i32, ptr %eax_base_mhz, align 4, !dbg !2244
  %mul = mul i32 %2, 1000, !dbg !2245
  %conv6 = zext i32 %mul to i64, !dbg !2244
  store i64 %conv6, ptr %retval, align 8, !dbg !2246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2246

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #16, !dbg !2247
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx_bus_mhz) #16, !dbg !2247
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx_max_mhz) #16, !dbg !2247
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax_base_mhz) #16, !dbg !2247
  %3 = load i64, ptr %retval, align 8, !dbg !2247
  ret i64 %3, !dbg !2247
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2248 dso_local i64 @cpu_khz_from_msr() #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #1 align 16 !dbg !2250 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !2254
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2253, metadata !DIExpression()), !dbg !2255
  %call = call i64 @arch_local_save_flags() #15, !dbg !2256
  store i64 %call, ptr %flags, align 8, !dbg !2255
  call void @arch_local_irq_disable() #15, !dbg !2257
  %0 = load i64, ptr %flags, align 8, !dbg !2258
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !2259
  ret i64 %0, !dbg !2260
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @quick_pit_calibrate() #8 align 16 !dbg !2261 {
entry:
  %retval = alloca i64, align 8
  %i = alloca i32, align 4
  %tsc = alloca i64, align 8
  %delta = alloca i64, align 8
  %d1 = alloca i64, align 8
  %d2 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %tmp44 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2263, metadata !DIExpression()), !dbg !2274
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsc) #16, !dbg !2275
  call void @llvm.dbg.declare(metadata ptr %tsc, metadata !2264, metadata !DIExpression()), !dbg !2276
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #16, !dbg !2275
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !2265, metadata !DIExpression()), !dbg !2277
  call void @llvm.lifetime.start.p0(i64 8, ptr %d1) #16, !dbg !2278
  call void @llvm.dbg.declare(metadata ptr %d1, metadata !2266, metadata !DIExpression()), !dbg !2279
  call void @llvm.lifetime.start.p0(i64 8, ptr %d2) #16, !dbg !2278
  call void @llvm.dbg.declare(metadata ptr %d2, metadata !2267, metadata !DIExpression()), !dbg !2280
  %call = call zeroext i1 @has_legacy_pic() #15, !dbg !2281
  br i1 %call, label %if.end, label %if.then, !dbg !2283

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !2284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2284

if.end:                                           ; preds = %entry
  %call1 = call zeroext i8 @__inb(i16 noundef zeroext 97) #15, !dbg !2285
  %conv = zext i8 %call1 to i32, !dbg !2285
  %and = and i32 %conv, -3, !dbg !2286
  %or = or i32 %and, 1, !dbg !2287
  %conv2 = trunc i32 %or to i8, !dbg !2288
  call void @__outb(i8 noundef zeroext %conv2, i16 noundef zeroext 97) #15, !dbg !2289
  call void @__outb(i8 noundef zeroext -80, i16 noundef zeroext 67) #15, !dbg !2290
  call void @__outb(i8 noundef zeroext -1, i16 noundef zeroext 66) #15, !dbg !2291
  call void @__outb(i8 noundef zeroext -1, i16 noundef zeroext 66) #15, !dbg !2292
  %call3 = call i32 @pit_verify_msb(i8 noundef zeroext 0) #15, !dbg !2293
  %call4 = call i32 @pit_expect_msb(i8 noundef zeroext -1, ptr noundef %tsc, ptr noundef %d1) #15, !dbg !2294
  %tobool = icmp ne i32 %call4, 0, !dbg !2294
  br i1 %tobool, label %if.then5, label %if.end32, !dbg !2296

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %i, align 4, !dbg !2297
  br label %for.cond, !dbg !2300

for.cond:                                         ; preds = %for.inc, %if.then5
  %0 = load i32, ptr %i, align 4, !dbg !2301
  %conv6 = sext i32 %0 to i64, !dbg !2301
  %cmp = icmp ule i64 %conv6, 233, !dbg !2303
  br i1 %cmp, label %for.body, label %for.end, !dbg !2304

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !2305
  %sub = sub i32 255, %1, !dbg !2308
  %conv8 = trunc i32 %sub to i8, !dbg !2309
  %call9 = call i32 @pit_expect_msb(i8 noundef zeroext %conv8, ptr noundef %delta, ptr noundef %d2) #15, !dbg !2310
  %tobool10 = icmp ne i32 %call9, 0, !dbg !2310
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !2311

if.then11:                                        ; preds = %for.body
  br label %for.end, !dbg !2312

if.end12:                                         ; preds = %for.body
  %2 = load i64, ptr %tsc, align 8, !dbg !2313
  %3 = load i64, ptr %delta, align 8, !dbg !2314
  %sub13 = sub i64 %3, %2, !dbg !2314
  store i64 %sub13, ptr %delta, align 8, !dbg !2314
  %4 = load i32, ptr %i, align 4, !dbg !2315
  %cmp14 = icmp eq i32 %4, 1, !dbg !2317
  br i1 %cmp14, label %land.lhs.true, label %if.end19, !dbg !2318

land.lhs.true:                                    ; preds = %if.end12
  %5 = load i64, ptr %d1, align 8, !dbg !2319
  %6 = load i64, ptr %d2, align 8, !dbg !2320
  %add = add i64 %5, %6, !dbg !2321
  %7 = load i64, ptr %delta, align 8, !dbg !2322
  %mul = mul i64 %7, 233, !dbg !2323
  %shr = lshr i64 %mul, 11, !dbg !2324
  %cmp16 = icmp uge i64 %add, %shr, !dbg !2325
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !2326

if.then18:                                        ; preds = %land.lhs.true
  store i64 0, ptr %retval, align 8, !dbg !2327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2327

if.end19:                                         ; preds = %land.lhs.true, %if.end12
  %8 = load i64, ptr %d1, align 8, !dbg !2328
  %9 = load i64, ptr %d2, align 8, !dbg !2330
  %add20 = add i64 %8, %9, !dbg !2331
  %10 = load i64, ptr %delta, align 8, !dbg !2332
  %shr21 = lshr i64 %10, 11, !dbg !2333
  %cmp22 = icmp uge i64 %add20, %shr21, !dbg !2334
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !2335

if.then24:                                        ; preds = %if.end19
  br label %for.inc, !dbg !2336

if.end25:                                         ; preds = %if.end19
  %11 = load i32, ptr %i, align 4, !dbg !2337
  %sub26 = sub i32 254, %11, !dbg !2339
  %conv27 = trunc i32 %sub26 to i8, !dbg !2340
  %call28 = call i32 @pit_verify_msb(i8 noundef zeroext %conv27) #15, !dbg !2341
  %tobool29 = icmp ne i32 %call28, 0, !dbg !2341
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !2342

if.then30:                                        ; preds = %if.end25
  br label %for.end, !dbg !2343

if.end31:                                         ; preds = %if.end25
  br label %success, !dbg !2344

for.inc:                                          ; preds = %if.then24
  %12 = load i32, ptr %i, align 4, !dbg !2345
  %inc = add i32 %12, 1, !dbg !2345
  store i32 %inc, ptr %i, align 4, !dbg !2345
  br label %for.cond, !dbg !2346, !llvm.loop !2347

for.end:                                          ; preds = %if.then30, %if.then11, %for.cond
  br label %if.end32, !dbg !2349

if.end32:                                         ; preds = %for.end, %if.end
  br label %do.body, !dbg !2350

do.body:                                          ; preds = %if.end32
  br label %do.cond, !dbg !2352

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2352

do.end:                                           ; preds = %do.cond
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14) #17, !dbg !2350
  store i32 %call33, ptr %tmp, align 4, !dbg !2352
  %13 = load i32, ptr %tmp, align 4, !dbg !2350
  store i64 0, ptr %retval, align 8, !dbg !2354
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2354

success:                                          ; preds = %if.end31
  call void @llvm.dbg.label(metadata !2268), !dbg !2355
  %14 = load i64, ptr %delta, align 8, !dbg !2356
  %mul34 = mul i64 %14, 1193182, !dbg !2356
  store i64 %mul34, ptr %delta, align 8, !dbg !2356
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #16, !dbg !2357
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !2269, metadata !DIExpression()), !dbg !2357
  %15 = load i32, ptr %i, align 4, !dbg !2357
  %mul35 = mul i32 %15, 256, !dbg !2357
  %mul36 = mul i32 %mul35, 1000, !dbg !2357
  store i32 %mul36, ptr %__base, align 4, !dbg !2357
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #16, !dbg !2357
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !2272, metadata !DIExpression()), !dbg !2357
  %16 = load i64, ptr %delta, align 8, !dbg !2357
  %17 = load i32, ptr %__base, align 4, !dbg !2357
  %conv37 = zext i32 %17 to i64, !dbg !2357
  %rem = urem i64 %16, %conv37, !dbg !2357
  %conv38 = trunc i64 %rem to i32, !dbg !2357
  store i32 %conv38, ptr %__rem, align 4, !dbg !2357
  %18 = load i64, ptr %delta, align 8, !dbg !2357
  %19 = load i32, ptr %__base, align 4, !dbg !2357
  %conv39 = zext i32 %19 to i64, !dbg !2357
  %div = udiv i64 %18, %conv39, !dbg !2357
  store i64 %div, ptr %delta, align 8, !dbg !2357
  %20 = load i32, ptr %__rem, align 4, !dbg !2357
  store i32 %20, ptr %tmp40, align 4, !dbg !2357
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #16, !dbg !2358
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #16, !dbg !2358
  %21 = load i32, ptr %tmp40, align 4, !dbg !2357
  br label %do.body41, !dbg !2359

do.body41:                                        ; preds = %success
  br label %do.cond42, !dbg !2361

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !2361

do.end43:                                         ; preds = %do.cond42
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15) #17, !dbg !2359
  store i32 %call45, ptr %tmp44, align 4, !dbg !2361
  %22 = load i32, ptr %tmp44, align 4, !dbg !2359
  %23 = load i64, ptr %delta, align 8, !dbg !2363
  store i64 %23, ptr %retval, align 8, !dbg !2364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2364

cleanup:                                          ; preds = %do.end43, %do.end, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %d2) #16, !dbg !2365
  call void @llvm.lifetime.end.p0(i64 8, ptr %d1) #16, !dbg !2365
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #16, !dbg !2365
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsc) #16, !dbg !2365
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !2365
  %24 = load i64, ptr %retval, align 8, !dbg !2365
  ret i64 %24, !dbg !2365
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #1 align 16 !dbg !2366 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2370, metadata !DIExpression()), !dbg !2371
  %0 = load i64, ptr %flags.addr, align 8, !dbg !2372
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #15, !dbg !2374
  %tobool = icmp ne i32 %call, 0, !dbg !2374
  br i1 %tobool, label %if.end, label %if.then, !dbg !2375

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #15, !dbg !2376
  br label %if.end, !dbg !2376

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2377
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @recalibrate_cpu_khz() #8 align 16 !dbg !2378 {
entry:
  ret void, !dbg !2379
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tsc_save_sched_clock_state() #8 align 16 !dbg !2380 {
entry:
  %call = call i32 @sched_clock_stable() #15, !dbg !2381
  %tobool = icmp ne i32 %call, 0, !dbg !2381
  br i1 %tobool, label %if.end, label %if.then, !dbg !2383

if.then:                                          ; preds = %entry
  br label %return, !dbg !2384

if.end:                                           ; preds = %entry
  %call1 = call i64 @sched_clock() #15, !dbg !2385
  store i64 %call1, ptr @cyc2ns_suspend, align 8, !dbg !2386
  br label %return, !dbg !2387

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2387
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2388 dso_local i32 @sched_clock_stable() #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tsc_restore_sched_clock_state() #8 align 16 !dbg !2390 {
entry:
  %offset = alloca i64, align 8
  %flags = alloca i64, align 8
  %cpu = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pto_val__ = alloca i64, align 8
  %__vpp_verify16 = alloca ptr, align 8
  %pto_val__20 = alloca i64, align 8
  %__vpp_verify32 = alloca ptr, align 8
  %tmp35 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp36 = alloca ptr, align 8
  %__vpp_verify38 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %__ptr42 = alloca i64, align 8
  %tmp43 = alloca ptr, align 8
  %__dummy49 = alloca i64, align 8
  %__dummy250 = alloca i64, align 8
  %tmp53 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #16, !dbg !2428
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !2392, metadata !DIExpression()), !dbg !2429
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !2430
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2393, metadata !DIExpression()), !dbg !2431
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #16, !dbg !2432
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2394, metadata !DIExpression()), !dbg !2433
  %call = call i32 @sched_clock_stable() #15, !dbg !2434
  %tobool = icmp ne i32 %call, 0, !dbg !2434
  br i1 %tobool, label %if.end, label %if.then, !dbg !2436

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2437

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2438

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !2439

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !2440
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2395, metadata !DIExpression()), !dbg !2440
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !2440
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2399, metadata !DIExpression()), !dbg !2440
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2440
  %conv = zext i1 %cmp to i32, !dbg !2440
  store i32 1, ptr %tmp, align 4, !dbg !2440
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !2441
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !2441
  %0 = load i32, ptr %tmp, align 4, !dbg !2440
  %call2 = call i64 @arch_local_irq_save() #15, !dbg !2441
  store i64 %call2, ptr %flags, align 8, !dbg !2441
  br label %do.cond, !dbg !2441

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2441

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !2439

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !2439

do.end4:                                          ; preds = %do.cond3
  br label %do.body5, !dbg !2442

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !2443

do.body6:                                         ; preds = %do.body5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2444
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2400, metadata !DIExpression()), !dbg !2444
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2444
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !2444
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2443
  br label %do.cond7, !dbg !2444

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !2444

do.end8:                                          ; preds = %do.cond7
  br label %do.body9, !dbg !2443

do.body9:                                         ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #16, !dbg !2445
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !2403, metadata !DIExpression()), !dbg !2445
  store i64 0, ptr %pto_val__, align 8, !dbg !2445
  %2 = load i64, ptr %pto_val__, align 8, !dbg !2445
  call void asm sideeffect "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) getelementptr inbounds (%struct.cyc2ns_data, ptr @cyc2ns, i32 0, i32 2), i64 %2, ptr elementtype(i64) getelementptr inbounds (%struct.cyc2ns_data, ptr @cyc2ns, i32 0, i32 2)) #16, !dbg !2445, !srcloc !2446
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #16, !dbg !2443
  br label %do.cond10, !dbg !2445

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !2445

do.end11:                                         ; preds = %do.cond10
  br label %do.cond12, !dbg !2443

do.cond12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !2443

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2447

do.body14:                                        ; preds = %do.end13
  br label %do.body15, !dbg !2448

do.body15:                                        ; preds = %do.body14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify16) #16, !dbg !2449
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify16, metadata !2405, metadata !DIExpression()), !dbg !2449
  store ptr null, ptr %__vpp_verify16, align 8, !dbg !2449
  %3 = load ptr, ptr %__vpp_verify16, align 8, !dbg !2449
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify16) #16, !dbg !2448
  br label %do.cond17, !dbg !2449

do.cond17:                                        ; preds = %do.body15
  br label %do.end18, !dbg !2449

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !2448

do.body19:                                        ; preds = %do.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__20) #16, !dbg !2450
  call void @llvm.dbg.declare(metadata ptr %pto_val__20, metadata !2408, metadata !DIExpression()), !dbg !2450
  store i64 0, ptr %pto_val__20, align 8, !dbg !2450
  %4 = load i64, ptr %pto_val__20, align 8, !dbg !2450
  call void asm sideeffect "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) getelementptr ([2 x %struct.cyc2ns_data], ptr @cyc2ns, i64 0, i64 1, i32 2), i64 %4, ptr elementtype(i64) getelementptr ([2 x %struct.cyc2ns_data], ptr @cyc2ns, i64 0, i64 1, i32 2)) #16, !dbg !2450, !srcloc !2451
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__20) #16, !dbg !2448
  br label %do.cond21, !dbg !2450

do.cond21:                                        ; preds = %do.body19
  br label %do.end22, !dbg !2450

do.end22:                                         ; preds = %do.cond21
  br label %do.cond23, !dbg !2448

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !2448

do.end24:                                         ; preds = %do.cond23
  %5 = load i64, ptr @cyc2ns_suspend, align 8, !dbg !2452
  %call25 = call i64 @sched_clock() #15, !dbg !2453
  %sub = sub i64 %5, %call25, !dbg !2454
  store i64 %sub, ptr %offset, align 8, !dbg !2455
  store i32 0, ptr %cpu, align 4, !dbg !2456
  br label %for.cond, !dbg !2456

for.cond:                                         ; preds = %for.inc, %do.end24
  %6 = load i32, ptr %cpu, align 4, !dbg !2457
  %conv26 = sext i32 %6 to i64, !dbg !2457
  %call27 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv26) #15, !dbg !2457
  %conv28 = trunc i64 %call27 to i32, !dbg !2457
  store i32 %conv28, ptr %cpu, align 4, !dbg !2457
  %7 = load i32, ptr %cpu, align 4, !dbg !2457
  %cmp29 = icmp ult i32 %7, 64, !dbg !2457
  br i1 %cmp29, label %for.body, label %for.end, !dbg !2456

for.body:                                         ; preds = %for.cond
  %8 = load i64, ptr %offset, align 8, !dbg !2458
  br label %do.body31, !dbg !2459

do.body31:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify32) #16, !dbg !2460
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify32, metadata !2410, metadata !DIExpression()), !dbg !2460
  store ptr null, ptr %__vpp_verify32, align 8, !dbg !2460
  %9 = load ptr, ptr %__vpp_verify32, align 8, !dbg !2460
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify32) #16, !dbg !2459
  br label %do.cond33, !dbg !2460

do.cond33:                                        ; preds = %do.body31
  br label %do.end34, !dbg !2460

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !2461
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2416, metadata !DIExpression()), !dbg !2461
  store i64 ptrtoint (ptr getelementptr inbounds (%struct.cyc2ns_data, ptr @cyc2ns, i32 0, i32 2) to i64), ptr %__ptr, align 8, !dbg !2461
  %10 = load i64, ptr %__ptr, align 8, !dbg !2461
  %11 = load i32, ptr %cpu, align 4, !dbg !2461
  %idxprom = sext i32 %11 to i64, !dbg !2461
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2461
  %12 = load i64, ptr %arrayidx, align 8, !dbg !2461
  %add = add i64 %10, %12, !dbg !2461
  %13 = inttoptr i64 %add to ptr, !dbg !2461
  store ptr %13, ptr %tmp36, align 8, !dbg !2461
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !2459
  %14 = load ptr, ptr %tmp36, align 8, !dbg !2461
  store ptr %14, ptr %tmp35, align 8, !dbg !2460
  %15 = load ptr, ptr %tmp35, align 8, !dbg !2459
  store i64 %8, ptr %15, align 8, !dbg !2462
  %16 = load i64, ptr %offset, align 8, !dbg !2463
  br label %do.body37, !dbg !2464

do.body37:                                        ; preds = %do.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify38) #16, !dbg !2465
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify38, metadata !2418, metadata !DIExpression()), !dbg !2465
  store ptr null, ptr %__vpp_verify38, align 8, !dbg !2465
  %17 = load ptr, ptr %__vpp_verify38, align 8, !dbg !2465
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify38) #16, !dbg !2464
  br label %do.cond39, !dbg !2465

do.cond39:                                        ; preds = %do.body37
  br label %do.end40, !dbg !2465

do.end40:                                         ; preds = %do.cond39
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr42) #16, !dbg !2466
  call void @llvm.dbg.declare(metadata ptr %__ptr42, metadata !2421, metadata !DIExpression()), !dbg !2466
  store i64 ptrtoint (ptr getelementptr ([2 x %struct.cyc2ns_data], ptr @cyc2ns, i64 0, i64 1, i32 2) to i64), ptr %__ptr42, align 8, !dbg !2466
  %18 = load i64, ptr %__ptr42, align 8, !dbg !2466
  %19 = load i32, ptr %cpu, align 4, !dbg !2466
  %idxprom44 = sext i32 %19 to i64, !dbg !2466
  %arrayidx45 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom44, !dbg !2466
  %20 = load i64, ptr %arrayidx45, align 8, !dbg !2466
  %add46 = add i64 %18, %20, !dbg !2466
  %21 = inttoptr i64 %add46 to ptr, !dbg !2466
  store ptr %21, ptr %tmp43, align 8, !dbg !2466
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr42) #16, !dbg !2464
  %22 = load ptr, ptr %tmp43, align 8, !dbg !2466
  store ptr %22, ptr %tmp41, align 8, !dbg !2465
  %23 = load ptr, ptr %tmp41, align 8, !dbg !2464
  store i64 %16, ptr %23, align 8, !dbg !2467
  br label %for.inc, !dbg !2468

for.inc:                                          ; preds = %do.end40
  %24 = load i32, ptr %cpu, align 4, !dbg !2457
  %inc = add i32 %24, 1, !dbg !2457
  store i32 %inc, ptr %cpu, align 4, !dbg !2457
  br label %for.cond, !dbg !2457, !llvm.loop !2469

for.end:                                          ; preds = %for.cond
  br label %do.body47, !dbg !2471

do.body47:                                        ; preds = %for.end
  br label %do.body48, !dbg !2472

do.body48:                                        ; preds = %do.body47
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy49) #16, !dbg !2473
  call void @llvm.dbg.declare(metadata ptr %__dummy49, metadata !2423, metadata !DIExpression()), !dbg !2473
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy250) #16, !dbg !2473
  call void @llvm.dbg.declare(metadata ptr %__dummy250, metadata !2427, metadata !DIExpression()), !dbg !2473
  %cmp51 = icmp eq ptr %__dummy49, %__dummy250, !dbg !2473
  %conv52 = zext i1 %cmp51 to i32, !dbg !2473
  store i32 1, ptr %tmp53, align 4, !dbg !2473
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy250) #16, !dbg !2474
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy49) #16, !dbg !2474
  %25 = load i32, ptr %tmp53, align 4, !dbg !2473
  br label %do.body54, !dbg !2474

do.body54:                                        ; preds = %do.body48
  br label %do.cond55, !dbg !2475

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !2475

do.end56:                                         ; preds = %do.cond55
  %26 = load i64, ptr %flags, align 8, !dbg !2474
  call void @arch_local_irq_restore(i64 noundef %26) #15, !dbg !2474
  br label %do.cond57, !dbg !2474

do.cond57:                                        ; preds = %do.end56
  br label %do.end58, !dbg !2474

do.end58:                                         ; preds = %do.cond57
  br label %do.cond59, !dbg !2472

do.cond59:                                        ; preds = %do.end58
  br label %do.end60, !dbg !2472

do.end60:                                         ; preds = %do.cond59
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2477
  br label %cleanup, !dbg !2477

cleanup:                                          ; preds = %do.end60, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #16, !dbg !2477
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !2477
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #16, !dbg !2477
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2477

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #9 align 16 !dbg !2478 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2485, metadata !DIExpression()), !dbg !2491
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2486, metadata !DIExpression()), !dbg !2492
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !2487, metadata !DIExpression()), !dbg !2493
  %0 = load i64, ptr %size.addr, align 8, !dbg !2494
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2494
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !2494

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2494
  %cmp = icmp ule i64 %2, 64, !dbg !2494
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !2494

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !2494
  %cmp2 = icmp ugt i64 %3, 0, !dbg !2494
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !2495

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !2496
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2488, metadata !DIExpression()), !dbg !2497
  %4 = load i64, ptr %offset.addr, align 8, !dbg !2498
  %5 = load i64, ptr %size.addr, align 8, !dbg !2498
  %cmp3 = icmp uge i64 %4, %5, !dbg !2498
  %lnot = xor i1 %cmp3, true, !dbg !2498
  %lnot4 = xor i1 %lnot, true, !dbg !2498
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2498
  %conv = sext i32 %lnot.ext to i64, !dbg !2498
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2498
  %tobool = icmp ne i64 %expval, 0, !dbg !2498
  br i1 %tobool, label %if.then5, label %if.end, !dbg !2500

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2501
  store i64 %6, ptr %retval, align 8, !dbg !2502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2502

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !2503
  %8 = load i64, ptr %7, align 8, !dbg !2504
  %9 = load i64, ptr %offset.addr, align 8, !dbg !2505
  %shl = shl i64 1, %9, !dbg !2505
  %sub = sub i64 -1, %shl, !dbg !2505
  %add = add i64 %sub, 1, !dbg !2505
  %10 = load i64, ptr %size.addr, align 8, !dbg !2505
  %sub6 = sub i64 %10, 1, !dbg !2505
  %sub7 = sub i64 63, %sub6, !dbg !2505
  %shr = lshr i64 -1, %sub7, !dbg !2505
  %and = and i64 %add, %shr, !dbg !2505
  %add8 = add i64 0, %and, !dbg !2505
  %and9 = and i64 %8, %add8, !dbg !2506
  store i64 %and9, ptr %val, align 8, !dbg !2507
  %11 = load i64, ptr %val, align 8, !dbg !2508
  %tobool10 = icmp ne i64 %11, 0, !dbg !2508
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !2508

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !2509
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !2509
  br i1 %13, label %cond.true11, label %cond.false, !dbg !2509

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !2509
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !2509
  %cast = trunc i64 %15 to i32, !dbg !2509
  %conv12 = sext i32 %cast to i64, !dbg !2509
  br label %cond.end, !dbg !2509

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !2509
  %call = call i64 @variable__ffs(i64 noundef %16) #15, !dbg !2509
  br label %cond.end, !dbg !2509

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !2509
  br label %cond.end14, !dbg !2508

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !2510
  br label %cond.end14, !dbg !2508

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !2508
  store i64 %cond15, ptr %retval, align 8, !dbg !2511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2511

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !2512
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !2513
  %19 = load i64, ptr %size.addr, align 8, !dbg !2514
  %20 = load i64, ptr %offset.addr, align 8, !dbg !2515
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #15, !dbg !2516
  store i64 %call17, ptr %retval, align 8, !dbg !2517
  br label %return, !dbg !2517

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !2518
  ret i64 %21, !dbg !2518
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_tsc__297_1064_cpufreq_register_tsc_scaling1() #0 section ".init.text" align 16 !dbg !2519 {
entry:
  %call = call i32 @cpufreq_register_tsc_scaling() #17, !dbg !2520
  ret i32 %call, !dbg !2520
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @cpufreq_register_tsc_scaling() #0 section ".init.text" align 16 !dbg !2521 {
entry:
  %retval = alloca i32, align 4
  br i1 false, label %cond.true, label %cond.false, !dbg !2522

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end, label %if.then, !dbg !2523

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 4, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !2523
  br i1 %call, label %if.end, label %if.then, !dbg !2522

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !2525
  br label %return, !dbg !2525

if.end:                                           ; preds = %cond.false, %cond.true
  br i1 false, label %cond.true1, label %cond.false2, !dbg !2526

cond.true1:                                       ; preds = %if.end
  br i1 true, label %if.then4, label %if.end5, !dbg !2527

cond.false2:                                      ; preds = %if.end
  %call3 = call zeroext i1 @arch_test_bit(i64 noundef 104, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !2527
  br i1 %call3, label %if.then4, label %if.end5, !dbg !2526

if.then4:                                         ; preds = %cond.false2, %cond.true1
  store i32 0, ptr %retval, align 4, !dbg !2529
  br label %return, !dbg !2529

if.end5:                                          ; preds = %cond.false2, %cond.true1
  %call6 = call i32 @cpufreq_register_notifier(ptr noundef @time_cpufreq_notifier_block, i32 noundef 0) #15, !dbg !2530
  store i32 0, ptr %retval, align 4, !dbg !2531
  br label %return, !dbg !2531

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %0 = load i32, ptr %retval, align 4, !dbg !2532
  ret i32 %0, !dbg !2532
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2533 dso_local void @clear_sched_clock_stable() #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @disable_sched_clock_irqtime() #9 align 16 !dbg !2534 {
entry:
  ret void, !dbg !2535
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2536 dso_local i32 @_printk(ptr noundef, ...) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2540 dso_local void @clocksource_mark_unstable(ptr noundef) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @tsc_clocksource_watchdog_disabled() #8 align 16 !dbg !2541 {
entry:
  %0 = load i64, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_tsc, i32 0, i32 13), align 8, !dbg !2542
  %and = and i64 %0, 2, !dbg !2543
  %tobool = icmp ne i64 %and, 0, !dbg !2543
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !2544

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @tsc_as_watchdog, align 4, !dbg !2545
  %tobool1 = icmp ne i32 %1, 0, !dbg !2545
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !2546

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load i32, ptr @no_tsc_watchdog, align 4, !dbg !2547
  %tobool2 = icmp ne i32 %2, 0, !dbg !2548
  %lnot = xor i1 %tobool2, true, !dbg !2548
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ], !dbg !2549
  ret i1 %3, !dbg !2550
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @unsynchronized_tsc() #8 align 16 !dbg !2551 {
entry:
  %retval = alloca i32, align 4
  br i1 false, label %cond.true, label %cond.false, !dbg !2552

cond.true:                                        ; preds = %entry
  br i1 true, label %lor.lhs.false, label %if.then, !dbg !2554

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 4, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !2554
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !2552

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  %0 = load i32, ptr @tsc_unstable, align 4, !dbg !2555
  %tobool = icmp ne i32 %0, 0, !dbg !2555
  br i1 %tobool, label %if.then, label %if.end, !dbg !2556

if.then:                                          ; preds = %lor.lhs.false, %cond.false, %cond.true
  store i32 1, ptr %retval, align 4, !dbg !2557
  br label %return, !dbg !2557

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call i32 @apic_is_clustered_box() #15, !dbg !2558
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2558
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2560

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2561
  br label %return, !dbg !2561

if.end4:                                          ; preds = %if.end
  br i1 false, label %cond.true5, label %cond.false6, !dbg !2562

cond.true5:                                       ; preds = %if.end4
  br i1 true, label %if.then8, label %if.end9, !dbg !2563

cond.false6:                                      ; preds = %if.end4
  %call7 = call zeroext i1 @arch_test_bit(i64 noundef 104, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !2563
  br i1 %call7, label %if.then8, label %if.end9, !dbg !2562

if.then8:                                         ; preds = %cond.false6, %cond.true5
  store i32 0, ptr %retval, align 4, !dbg !2565
  br label %return, !dbg !2565

if.end9:                                          ; preds = %cond.false6, %cond.true5
  %1 = load i32, ptr @tsc_clocksource_reliable, align 4, !dbg !2566
  %tobool10 = icmp ne i32 %1, 0, !dbg !2566
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2568

if.then11:                                        ; preds = %if.end9
  store i32 0, ptr %retval, align 4, !dbg !2569
  br label %return, !dbg !2569

if.end12:                                         ; preds = %if.end9
  %2 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !2570
  %conv = zext i8 %2 to i32, !dbg !2572
  %cmp = icmp ne i32 %conv, 0, !dbg !2573
  br i1 %cmp, label %if.then14, label %if.end20, !dbg !2574

if.then14:                                        ; preds = %if.end12
  %call15 = call i32 @cpumask_weight(ptr noundef @__cpu_possible_mask) #15, !dbg !2575
  %cmp16 = icmp ugt i32 %call15, 1, !dbg !2578
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !2579

if.then18:                                        ; preds = %if.then14
  store i32 1, ptr %retval, align 4, !dbg !2580
  br label %return, !dbg !2580

if.end19:                                         ; preds = %if.then14
  br label %if.end20, !dbg !2581

if.end20:                                         ; preds = %if.end19, %if.end12
  store i32 0, ptr %retval, align 4, !dbg !2582
  br label %return, !dbg !2582

return:                                           ; preds = %if.end20, %if.then18, %if.then11, %if.then8, %if.then3, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !2583
  ret i32 %3, !dbg !2583
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !2584 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2591, metadata !DIExpression()), !dbg !2593
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2592, metadata !DIExpression()), !dbg !2594
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2595
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2596
  br i1 %1, label %cond.true, label %cond.false, !dbg !2596

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2597
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2598
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !2599
  %conv = zext i1 %call to i32, !dbg !2599
  br label %cond.end, !dbg !2596

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2600
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2601
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !2602
  %conv2 = zext i1 %call1 to i32, !dbg !2602
  br label %cond.end, !dbg !2596

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2596
  %tobool = icmp ne i32 %cond, 0, !dbg !2596
  ret i1 %tobool, !dbg !2603
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2604 dso_local i32 @apic_is_clustered_box() #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_weight(ptr noundef %srcp) #9 align 16 !dbg !2606 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !2610, metadata !DIExpression()), !dbg !2611
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !2612
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !2612
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2612
  %call = call i32 @bitmap_weight(ptr noundef %arraydecay, i32 noundef 64) #15, !dbg !2613
  ret i32 %call, !dbg !2614
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden { i64, ptr } @convert_art_to_tsc(i64 noundef %art) #8 align 16 !dbg !2615 {
entry:
  %retval = alloca %struct.system_counterval_t, align 8
  %art.addr = alloca i64, align 8
  %tmp = alloca i64, align 8
  %res = alloca i64, align 8
  %rem = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %__base9 = alloca i32, align 4
  %__rem10 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  store i64 %art, ptr %art.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %art.addr, metadata !2624, metadata !DIExpression()), !dbg !2634
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !2635
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2625, metadata !DIExpression()), !dbg !2636
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !2635
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2626, metadata !DIExpression()), !dbg !2637
  call void @llvm.lifetime.start.p0(i64 8, ptr %rem) #16, !dbg !2635
  call void @llvm.dbg.declare(metadata ptr %rem, metadata !2627, metadata !DIExpression()), !dbg !2638
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #16, !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !2628, metadata !DIExpression()), !dbg !2639
  %0 = load i32, ptr @art_to_tsc_denominator, align 4, !dbg !2639
  store i32 %0, ptr %__base, align 4, !dbg !2639
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #16, !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !2630, metadata !DIExpression()), !dbg !2639
  %1 = load i64, ptr %art.addr, align 8, !dbg !2639
  %2 = load i32, ptr %__base, align 4, !dbg !2639
  %conv = zext i32 %2 to i64, !dbg !2639
  %rem1 = urem i64 %1, %conv, !dbg !2639
  %conv2 = trunc i64 %rem1 to i32, !dbg !2639
  store i32 %conv2, ptr %__rem, align 4, !dbg !2639
  %3 = load i64, ptr %art.addr, align 8, !dbg !2639
  %4 = load i32, ptr %__base, align 4, !dbg !2639
  %conv3 = zext i32 %4 to i64, !dbg !2639
  %div = udiv i64 %3, %conv3, !dbg !2639
  store i64 %div, ptr %art.addr, align 8, !dbg !2639
  %5 = load i32, ptr %__rem, align 4, !dbg !2639
  store i32 %5, ptr %tmp4, align 4, !dbg !2639
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #16, !dbg !2640
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #16, !dbg !2640
  %6 = load i32, ptr %tmp4, align 4, !dbg !2639
  %conv5 = zext i32 %6 to i64, !dbg !2640
  store i64 %conv5, ptr %rem, align 8, !dbg !2641
  %7 = load i64, ptr %art.addr, align 8, !dbg !2642
  %8 = load i32, ptr @art_to_tsc_numerator, align 4, !dbg !2643
  %conv6 = zext i32 %8 to i64, !dbg !2643
  %mul = mul i64 %7, %conv6, !dbg !2644
  store i64 %mul, ptr %res, align 8, !dbg !2645
  %9 = load i64, ptr %rem, align 8, !dbg !2646
  %10 = load i32, ptr @art_to_tsc_numerator, align 4, !dbg !2647
  %conv7 = zext i32 %10 to i64, !dbg !2647
  %mul8 = mul i64 %9, %conv7, !dbg !2648
  store i64 %mul8, ptr %tmp, align 8, !dbg !2649
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base9) #16, !dbg !2650
  call void @llvm.dbg.declare(metadata ptr %__base9, metadata !2631, metadata !DIExpression()), !dbg !2650
  %11 = load i32, ptr @art_to_tsc_denominator, align 4, !dbg !2650
  store i32 %11, ptr %__base9, align 4, !dbg !2650
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem10) #16, !dbg !2650
  call void @llvm.dbg.declare(metadata ptr %__rem10, metadata !2633, metadata !DIExpression()), !dbg !2650
  %12 = load i64, ptr %tmp, align 8, !dbg !2650
  %13 = load i32, ptr %__base9, align 4, !dbg !2650
  %conv11 = zext i32 %13 to i64, !dbg !2650
  %rem12 = urem i64 %12, %conv11, !dbg !2650
  %conv13 = trunc i64 %rem12 to i32, !dbg !2650
  store i32 %conv13, ptr %__rem10, align 4, !dbg !2650
  %14 = load i64, ptr %tmp, align 8, !dbg !2650
  %15 = load i32, ptr %__base9, align 4, !dbg !2650
  %conv14 = zext i32 %15 to i64, !dbg !2650
  %div15 = udiv i64 %14, %conv14, !dbg !2650
  store i64 %div15, ptr %tmp, align 8, !dbg !2650
  %16 = load i32, ptr %__rem10, align 4, !dbg !2650
  store i32 %16, ptr %tmp16, align 4, !dbg !2650
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem10) #16, !dbg !2651
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base9) #16, !dbg !2651
  %17 = load i32, ptr %tmp16, align 4, !dbg !2650
  %18 = load i64, ptr %tmp, align 8, !dbg !2652
  %19 = load i64, ptr @art_to_tsc_offset, align 8, !dbg !2653
  %add = add i64 %18, %19, !dbg !2654
  %20 = load i64, ptr %res, align 8, !dbg !2655
  %add17 = add i64 %20, %add, !dbg !2655
  store i64 %add17, ptr %res, align 8, !dbg !2655
  %cycles = getelementptr inbounds %struct.system_counterval_t, ptr %retval, i32 0, i32 0, !dbg !2656
  %21 = load i64, ptr %res, align 8, !dbg !2657
  store i64 %21, ptr %cycles, align 8, !dbg !2656
  %cs = getelementptr inbounds %struct.system_counterval_t, ptr %retval, i32 0, i32 1, !dbg !2656
  %22 = load ptr, ptr @art_related_clocksource, align 8, !dbg !2658
  store ptr %22, ptr %cs, align 8, !dbg !2656
  call void @llvm.lifetime.end.p0(i64 8, ptr %rem) #16, !dbg !2659
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !2659
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !2659
  %23 = load { i64, ptr }, ptr %retval, align 8, !dbg !2659
  ret { i64, ptr } %23, !dbg !2659
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden { i64, ptr } @convert_art_ns_to_tsc(i64 noundef %art_ns) #8 align 16 !dbg !2660 {
entry:
  %retval = alloca %struct.system_counterval_t, align 8
  %art_ns.addr = alloca i64, align 8
  %tmp = alloca i64, align 8
  %res = alloca i64, align 8
  %rem = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %__base9 = alloca i32, align 4
  %__rem10 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  store i64 %art_ns, ptr %art_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %art_ns.addr, metadata !2662, metadata !DIExpression()), !dbg !2672
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !2673
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2663, metadata !DIExpression()), !dbg !2674
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !2673
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2664, metadata !DIExpression()), !dbg !2675
  call void @llvm.lifetime.start.p0(i64 8, ptr %rem) #16, !dbg !2673
  call void @llvm.dbg.declare(metadata ptr %rem, metadata !2665, metadata !DIExpression()), !dbg !2676
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #16, !dbg !2677
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !2666, metadata !DIExpression()), !dbg !2677
  store i32 1000000, ptr %__base, align 4, !dbg !2677
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #16, !dbg !2677
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !2668, metadata !DIExpression()), !dbg !2677
  %0 = load i64, ptr %art_ns.addr, align 8, !dbg !2677
  %1 = load i32, ptr %__base, align 4, !dbg !2677
  %conv = zext i32 %1 to i64, !dbg !2677
  %rem1 = urem i64 %0, %conv, !dbg !2677
  %conv2 = trunc i64 %rem1 to i32, !dbg !2677
  store i32 %conv2, ptr %__rem, align 4, !dbg !2677
  %2 = load i64, ptr %art_ns.addr, align 8, !dbg !2677
  %3 = load i32, ptr %__base, align 4, !dbg !2677
  %conv3 = zext i32 %3 to i64, !dbg !2677
  %div = udiv i64 %2, %conv3, !dbg !2677
  store i64 %div, ptr %art_ns.addr, align 8, !dbg !2677
  %4 = load i32, ptr %__rem, align 4, !dbg !2677
  store i32 %4, ptr %tmp4, align 4, !dbg !2677
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #16, !dbg !2678
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #16, !dbg !2678
  %5 = load i32, ptr %tmp4, align 4, !dbg !2677
  %conv5 = zext i32 %5 to i64, !dbg !2678
  store i64 %conv5, ptr %rem, align 8, !dbg !2679
  %6 = load i64, ptr %art_ns.addr, align 8, !dbg !2680
  %7 = load i32, ptr @tsc_khz, align 4, !dbg !2681
  %conv6 = zext i32 %7 to i64, !dbg !2681
  %mul = mul i64 %6, %conv6, !dbg !2682
  store i64 %mul, ptr %res, align 8, !dbg !2683
  %8 = load i64, ptr %rem, align 8, !dbg !2684
  %9 = load i32, ptr @tsc_khz, align 4, !dbg !2685
  %conv7 = zext i32 %9 to i64, !dbg !2685
  %mul8 = mul i64 %8, %conv7, !dbg !2686
  store i64 %mul8, ptr %tmp, align 8, !dbg !2687
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base9) #16, !dbg !2688
  call void @llvm.dbg.declare(metadata ptr %__base9, metadata !2669, metadata !DIExpression()), !dbg !2688
  store i32 1000000, ptr %__base9, align 4, !dbg !2688
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem10) #16, !dbg !2688
  call void @llvm.dbg.declare(metadata ptr %__rem10, metadata !2671, metadata !DIExpression()), !dbg !2688
  %10 = load i64, ptr %tmp, align 8, !dbg !2688
  %11 = load i32, ptr %__base9, align 4, !dbg !2688
  %conv11 = zext i32 %11 to i64, !dbg !2688
  %rem12 = urem i64 %10, %conv11, !dbg !2688
  %conv13 = trunc i64 %rem12 to i32, !dbg !2688
  store i32 %conv13, ptr %__rem10, align 4, !dbg !2688
  %12 = load i64, ptr %tmp, align 8, !dbg !2688
  %13 = load i32, ptr %__base9, align 4, !dbg !2688
  %conv14 = zext i32 %13 to i64, !dbg !2688
  %div15 = udiv i64 %12, %conv14, !dbg !2688
  store i64 %div15, ptr %tmp, align 8, !dbg !2688
  %14 = load i32, ptr %__rem10, align 4, !dbg !2688
  store i32 %14, ptr %tmp16, align 4, !dbg !2688
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem10) #16, !dbg !2689
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base9) #16, !dbg !2689
  %15 = load i32, ptr %tmp16, align 4, !dbg !2688
  %16 = load i64, ptr %tmp, align 8, !dbg !2690
  %17 = load i64, ptr %res, align 8, !dbg !2691
  %add = add i64 %17, %16, !dbg !2691
  store i64 %add, ptr %res, align 8, !dbg !2691
  %cycles = getelementptr inbounds %struct.system_counterval_t, ptr %retval, i32 0, i32 0, !dbg !2692
  %18 = load i64, ptr %res, align 8, !dbg !2693
  store i64 %18, ptr %cycles, align 8, !dbg !2692
  %cs = getelementptr inbounds %struct.system_counterval_t, ptr %retval, i32 0, i32 1, !dbg !2692
  %19 = load ptr, ptr @art_related_clocksource, align 8, !dbg !2694
  store ptr %19, ptr %cs, align 8, !dbg !2692
  call void @llvm.lifetime.end.p0(i64 8, ptr %rem) #16, !dbg !2695
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !2695
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !2695
  %20 = load { i64, ptr }, ptr %retval, align 8, !dbg !2695
  ret { i64, ptr } %20, !dbg !2695
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_tsc__302_1499_init_tsc_clocksource6() #0 section ".init.text" align 16 !dbg !2696 {
entry:
  %call = call i32 @init_tsc_clocksource() #17, !dbg !2697
  ret i32 %call, !dbg !2697
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_tsc_clocksource() #0 section ".init.text" align 16 !dbg !2698 {
entry:
  %retval = alloca i32, align 4
  br i1 false, label %cond.true, label %cond.false, !dbg !2699

cond.true:                                        ; preds = %entry
  br i1 true, label %lor.lhs.false, label %if.then, !dbg !2701

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 4, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !2701
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !2699

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  %0 = load i32, ptr @tsc_khz, align 4, !dbg !2702
  %tobool = icmp ne i32 %0, 0, !dbg !2702
  br i1 %tobool, label %if.end, label %if.then, !dbg !2703

if.then:                                          ; preds = %lor.lhs.false, %cond.false, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !2704
  br label %return, !dbg !2704

if.end:                                           ; preds = %lor.lhs.false
  %1 = load i32, ptr @tsc_unstable, align 4, !dbg !2705
  %tobool1 = icmp ne i32 %1, 0, !dbg !2705
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !2707

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @clocksource_unregister(ptr noundef @clocksource_tsc_early) #15, !dbg !2708
  store i32 0, ptr %retval, align 4, !dbg !2710
  br label %return, !dbg !2710

if.end4:                                          ; preds = %if.end
  br i1 false, label %cond.true5, label %cond.false6, !dbg !2711

cond.true5:                                       ; preds = %if.end4
  br i1 true, label %if.then8, label %if.end9, !dbg !2712

cond.false6:                                      ; preds = %if.end4
  %call7 = call zeroext i1 @arch_test_bit(i64 noundef 126, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !2712
  br i1 %call7, label %if.then8, label %if.end9, !dbg !2711

if.then8:                                         ; preds = %cond.false6, %cond.true5
  %2 = load i64, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_tsc, i32 0, i32 13), align 8, !dbg !2714
  %or = or i64 %2, 128, !dbg !2714
  store i64 %or, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_tsc, i32 0, i32 13), align 8, !dbg !2714
  br label %if.end9, !dbg !2715

if.end9:                                          ; preds = %if.then8, %cond.false6, %cond.true5
  br i1 false, label %cond.true10, label %cond.false11, !dbg !2716

cond.true10:                                      ; preds = %if.end9
  br i1 true, label %if.then13, label %if.end24, !dbg !2717

cond.false11:                                     ; preds = %if.end9
  %call12 = call zeroext i1 @arch_test_bit(i64 noundef 127, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !2717
  br i1 %call12, label %if.then13, label %if.end24, !dbg !2716

if.then13:                                        ; preds = %cond.false11, %cond.true10
  br i1 false, label %cond.true14, label %cond.false15, !dbg !2719

cond.true14:                                      ; preds = %if.then13
  br i1 true, label %if.then17, label %if.end18, !dbg !2721

cond.false15:                                     ; preds = %if.then13
  %call16 = call zeroext i1 @arch_test_bit(i64 noundef 106, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !2721
  br i1 %call16, label %if.then17, label %if.end18, !dbg !2719

if.then17:                                        ; preds = %cond.false15, %cond.true14
  store ptr @clocksource_tsc, ptr @art_related_clocksource, align 8, !dbg !2723
  br label %if.end18, !dbg !2724

if.end18:                                         ; preds = %if.then17, %cond.false15, %cond.true14
  %3 = load i32, ptr @tsc_khz, align 4, !dbg !2725
  %call19 = call i32 @clocksource_register_khz(ptr noundef @clocksource_tsc, i32 noundef %3) #15, !dbg !2726
  %call20 = call i32 @clocksource_unregister(ptr noundef @clocksource_tsc_early) #15, !dbg !2727
  %4 = load i32, ptr @tsc_force_recalibrate, align 4, !dbg !2728
  %tobool21 = icmp ne i32 %4, 0, !dbg !2728
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !2730

if.then22:                                        ; preds = %if.end18
  store i32 0, ptr %retval, align 4, !dbg !2731
  br label %return, !dbg !2731

if.end23:                                         ; preds = %if.end18
  br label %if.end24, !dbg !2732

if.end24:                                         ; preds = %if.end23, %cond.false11, %cond.true10
  %call25 = call zeroext i1 @schedule_delayed_work(ptr noundef @tsc_irqwork, i64 noundef 0) #15, !dbg !2733
  store i32 0, ptr %retval, align 4, !dbg !2734
  br label %return, !dbg !2734

return:                                           ; preds = %if.end24, %if.then22, %if.then2, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !2735
  ret i32 %5, !dbg !2735
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @tsc_early_init() #0 section ".init.text" align 16 !dbg !2736 {
entry:
  br i1 false, label %cond.true, label %cond.false, !dbg !2737

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end, label %if.then, !dbg !2738

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 4, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !2738
  br i1 %call, label %if.end, label %if.then, !dbg !2737

if.then:                                          ; preds = %cond.false, %cond.true
  br label %return, !dbg !2740

if.end:                                           ; preds = %cond.false, %cond.true
  %call1 = call zeroext i1 @is_early_uv_system() #15, !dbg !2741
  br i1 %call1, label %if.then2, label %if.end3, !dbg !2743

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !2744

if.end3:                                          ; preds = %if.end
  %call4 = call zeroext i1 @determine_cpu_tsc_frequencies(i1 noundef zeroext true) #17, !dbg !2745
  br i1 %call4, label %if.end6, label %if.then5, !dbg !2747

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !2748

if.end6:                                          ; preds = %if.end3
  call void @tsc_enable_sched_clock() #17, !dbg !2749
  br label %return, !dbg !2750

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  ret void, !dbg !2750
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_early_uv_system() #9 align 16 !dbg !2751 {
entry:
  ret i1 false, !dbg !2753
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @determine_cpu_tsc_frequencies(i1 noundef zeroext %early) #0 section ".init.text" align 16 !dbg !2754 {
entry:
  %retval = alloca i1, align 1
  %early.addr = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on34 = alloca i32, align 4
  %__flags50 = alloca i32, align 4
  %tmp63 = alloca i64, align 8
  %__x = alloca i32, align 4
  %tmp78 = alloca i32, align 4
  %tmp94 = alloca i32, align 4
  %tmp104 = alloca i32, align 4
  %frombool = zext i1 %early to i8
  store i8 %frombool, ptr %early.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %early.addr, metadata !2758, metadata !DIExpression()), !dbg !2775
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !2776
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2759, metadata !DIExpression()), !dbg !2776
  %0 = load i32, ptr @cpu_khz, align 4, !dbg !2776
  %tobool = icmp ne i32 %0, 0, !dbg !2776
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2776

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr @tsc_khz, align 4, !dbg !2776
  %tobool1 = icmp ne i32 %1, 0, !dbg !2776
  br label %lor.end, !dbg !2776

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  %lnot = xor i1 %2, true, !dbg !2776
  %lnot2 = xor i1 %lnot, true, !dbg !2776
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2776
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2776
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !2777
  %tobool3 = icmp ne i32 %3, 0, !dbg !2777
  %lnot4 = xor i1 %tobool3, true, !dbg !2777
  %lnot6 = xor i1 %lnot4, true, !dbg !2777
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2777
  %conv = sext i32 %lnot.ext7 to i64, !dbg !2777
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2777
  %tobool8 = icmp ne i64 %expval, 0, !dbg !2777
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2776

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !2777

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !2778
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2761, metadata !DIExpression()), !dbg !2778
  store i32 2305, ptr %__flags, align 4, !dbg !2778
  br label %do.body9, !dbg !2778

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !2779

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !2779

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !2778

do.body10:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !2781
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.27, i32 1504, i32 %4, i64 12) #16, !dbg !2781, !srcloc !2783
  br label %do.cond11, !dbg !2781

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !2781

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !2778

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !2784

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !2784

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !2777
  br label %do.cond16, !dbg !2778

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !2778

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !2778

if.end:                                           ; preds = %do.end17, %lor.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !2776
  %tobool18 = icmp ne i32 %5, 0, !dbg !2776
  %lnot19 = xor i1 %tobool18, true, !dbg !2776
  %lnot21 = xor i1 %lnot19, true, !dbg !2776
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !2776
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !2776
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !2776
  store i64 %expval24, ptr %tmp, align 8, !dbg !2777
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !2786
  %6 = load i64, ptr %tmp, align 8, !dbg !2776
  %7 = load i8, ptr %early.addr, align 1, !dbg !2787, !range !1777, !noundef !590
  %tobool25 = trunc i8 %7 to i1, !dbg !2787
  br i1 %tobool25, label %if.then26, label %if.else33, !dbg !2788

if.then26:                                        ; preds = %if.end
  %8 = load ptr, ptr @x86_platform, align 8, !dbg !2789
  %call = call i64 %8() #15, !dbg !2791
  %conv27 = trunc i64 %call to i32, !dbg !2791
  store i32 %conv27, ptr @cpu_khz, align 4, !dbg !2792
  %9 = load i32, ptr @tsc_early_khz, align 4, !dbg !2793
  %tobool28 = icmp ne i32 %9, 0, !dbg !2793
  br i1 %tobool28, label %if.then29, label %if.else, !dbg !2795

if.then29:                                        ; preds = %if.then26
  %10 = load i32, ptr @tsc_early_khz, align 4, !dbg !2796
  store i32 %10, ptr @tsc_khz, align 4, !dbg !2797
  br label %if.end32, !dbg !2798

if.else:                                          ; preds = %if.then26
  %11 = load ptr, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 1), align 8, !dbg !2799
  %call30 = call i64 %11() #15, !dbg !2800
  %conv31 = trunc i64 %call30 to i32, !dbg !2800
  store i32 %conv31, ptr @tsc_khz, align 4, !dbg !2801
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then29
  br label %if.end73, !dbg !2802

if.else33:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on34) #16, !dbg !2803
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on34, metadata !2764, metadata !DIExpression()), !dbg !2803
  %12 = load ptr, ptr @x86_platform, align 8, !dbg !2803
  %cmp = icmp ne ptr %12, @native_calibrate_cpu, !dbg !2803
  %lnot36 = xor i1 %cmp, true, !dbg !2803
  %lnot38 = xor i1 %lnot36, true, !dbg !2803
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !2803
  store i32 %lnot.ext39, ptr %__ret_warn_on34, align 4, !dbg !2803
  %13 = load i32, ptr %__ret_warn_on34, align 4, !dbg !2804
  %tobool40 = icmp ne i32 %13, 0, !dbg !2804
  %lnot41 = xor i1 %tobool40, true, !dbg !2804
  %lnot43 = xor i1 %lnot41, true, !dbg !2804
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !2804
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !2804
  %expval46 = call i64 @llvm.expect.i64(i64 %conv45, i64 0), !dbg !2804
  %tobool47 = icmp ne i64 %expval46, 0, !dbg !2804
  br i1 %tobool47, label %if.then48, label %if.end62, !dbg !2803

if.then48:                                        ; preds = %if.else33
  br label %do.body49, !dbg !2804

do.body49:                                        ; preds = %if.then48
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags50) #16, !dbg !2805
  call void @llvm.dbg.declare(metadata ptr %__flags50, metadata !2768, metadata !DIExpression()), !dbg !2805
  store i32 2305, ptr %__flags50, align 4, !dbg !2805
  br label %do.body51, !dbg !2805

do.body51:                                        ; preds = %do.body49
  br label %do.cond52, !dbg !2806

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !2806

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !2805

do.body54:                                        ; preds = %do.end53
  %14 = load i32, ptr %__flags50, align 4, !dbg !2808
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.27, i32 1514, i32 %14, i64 12) #16, !dbg !2808, !srcloc !2810
  br label %do.cond55, !dbg !2808

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !2808

do.end56:                                         ; preds = %do.cond55
  br label %do.body57, !dbg !2805

do.body57:                                        ; preds = %do.end56
  br label %do.cond58, !dbg !2811

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !2811

do.end59:                                         ; preds = %do.cond58
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags50) #16, !dbg !2804
  br label %do.cond60, !dbg !2805

do.cond60:                                        ; preds = %do.end59
  br label %do.end61, !dbg !2805

do.end61:                                         ; preds = %do.cond60
  br label %if.end62, !dbg !2805

if.end62:                                         ; preds = %do.end61, %if.else33
  %15 = load i32, ptr %__ret_warn_on34, align 4, !dbg !2803
  %tobool64 = icmp ne i32 %15, 0, !dbg !2803
  %lnot65 = xor i1 %tobool64, true, !dbg !2803
  %lnot67 = xor i1 %lnot65, true, !dbg !2803
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !2803
  %conv69 = sext i32 %lnot.ext68 to i64, !dbg !2803
  %expval70 = call i64 @llvm.expect.i64(i64 %conv69, i64 0), !dbg !2803
  store i64 %expval70, ptr %tmp63, align 8, !dbg !2804
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on34) #16, !dbg !2813
  %16 = load i64, ptr %tmp63, align 8, !dbg !2803
  %call71 = call i64 @pit_hpet_ptimer_calibrate_cpu() #15, !dbg !2814
  %conv72 = trunc i64 %call71 to i32, !dbg !2814
  store i32 %conv72, ptr @cpu_khz, align 4, !dbg !2815
  br label %if.end73

if.end73:                                         ; preds = %if.end62, %if.end32
  %17 = load i32, ptr @tsc_khz, align 4, !dbg !2816
  %cmp74 = icmp eq i32 %17, 0, !dbg !2817
  br i1 %cmp74, label %if.then76, label %if.else77, !dbg !2818

if.then76:                                        ; preds = %if.end73
  %18 = load i32, ptr @cpu_khz, align 4, !dbg !2819
  store i32 %18, ptr @tsc_khz, align 4, !dbg !2820
  br label %if.end86, !dbg !2821

if.else77:                                        ; preds = %if.end73
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #16, !dbg !2822
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !2771, metadata !DIExpression()), !dbg !2822
  %19 = load i32, ptr @cpu_khz, align 4, !dbg !2822
  %20 = load i32, ptr @tsc_khz, align 4, !dbg !2822
  %sub = sub i32 %19, %20, !dbg !2822
  store i32 %sub, ptr %__x, align 4, !dbg !2822
  %21 = load i32, ptr %__x, align 4, !dbg !2822
  %cmp79 = icmp slt i32 %21, 0, !dbg !2822
  br i1 %cmp79, label %cond.true, label %cond.false, !dbg !2822

cond.true:                                        ; preds = %if.else77
  %22 = load i32, ptr %__x, align 4, !dbg !2822
  %sub81 = sub i32 0, %22, !dbg !2822
  br label %cond.end, !dbg !2822

cond.false:                                       ; preds = %if.else77
  %23 = load i32, ptr %__x, align 4, !dbg !2822
  br label %cond.end, !dbg !2822

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub81, %cond.true ], [ %23, %cond.false ], !dbg !2822
  store i32 %cond, ptr %tmp78, align 4, !dbg !2822
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #16, !dbg !2823
  %24 = load i32, ptr %tmp78, align 4, !dbg !2822
  %mul = mul i32 %24, 10, !dbg !2824
  %25 = load i32, ptr @tsc_khz, align 4, !dbg !2825
  %cmp82 = icmp ugt i32 %mul, %25, !dbg !2826
  br i1 %cmp82, label %if.then84, label %if.end85, !dbg !2827

if.then84:                                        ; preds = %cond.end
  %26 = load i32, ptr @tsc_khz, align 4, !dbg !2828
  store i32 %26, ptr @cpu_khz, align 4, !dbg !2829
  br label %if.end85, !dbg !2830

if.end85:                                         ; preds = %if.then84, %cond.end
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then76
  %27 = load i32, ptr @tsc_khz, align 4, !dbg !2831
  %cmp87 = icmp eq i32 %27, 0, !dbg !2833
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !2834

if.then89:                                        ; preds = %if.end86
  store i1 false, ptr %retval, align 1, !dbg !2835
  br label %return, !dbg !2835

if.end90:                                         ; preds = %if.end86
  br label %do.body91, !dbg !2836

do.body91:                                        ; preds = %if.end90
  br label %do.end93, !dbg !2838

do.end93:                                         ; preds = %do.body91
  %28 = load i32, ptr @cpu_khz, align 4, !dbg !2836
  %conv95 = zext i32 %28 to i64, !dbg !2836
  %div = udiv i64 %conv95, 1000, !dbg !2836
  %29 = load i32, ptr @cpu_khz, align 4, !dbg !2836
  %conv96 = zext i32 %29 to i64, !dbg !2836
  %rem = urem i64 %conv96, 1000, !dbg !2836
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef @.str.28, i64 noundef %div, i64 noundef %rem) #17, !dbg !2836
  store i32 %call97, ptr %tmp94, align 4, !dbg !2838
  %30 = load i32, ptr %tmp94, align 4, !dbg !2836
  %31 = load i32, ptr @cpu_khz, align 4, !dbg !2840
  %32 = load i32, ptr @tsc_khz, align 4, !dbg !2842
  %cmp98 = icmp ne i32 %31, %32, !dbg !2843
  br i1 %cmp98, label %if.then100, label %if.end110, !dbg !2844

if.then100:                                       ; preds = %do.end93
  br label %do.body101, !dbg !2845

do.body101:                                       ; preds = %if.then100
  br label %do.end103, !dbg !2848

do.end103:                                        ; preds = %do.body101
  %33 = load i32, ptr @tsc_khz, align 4, !dbg !2845
  %conv105 = zext i32 %33 to i64, !dbg !2845
  %div106 = udiv i64 %conv105, 1000, !dbg !2845
  %34 = load i32, ptr @tsc_khz, align 4, !dbg !2845
  %conv107 = zext i32 %34 to i64, !dbg !2845
  %rem108 = urem i64 %conv107, 1000, !dbg !2845
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef @.str.29, i64 noundef %div106, i64 noundef %rem108) #17, !dbg !2845
  store i32 %call109, ptr %tmp104, align 4, !dbg !2848
  %35 = load i32, ptr %tmp104, align 4, !dbg !2845
  br label %if.end110, !dbg !2850

if.end110:                                        ; preds = %do.end103, %do.end93
  store i1 true, ptr %retval, align 1, !dbg !2851
  br label %return, !dbg !2851

return:                                           ; preds = %if.end110, %if.then89
  %36 = load i1, ptr %retval, align 1, !dbg !2852
  ret i1 %36, !dbg !2852
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @tsc_enable_sched_clock() #0 section ".init.text" align 16 !dbg !2853 {
entry:
  %call = call i64 @get_loops_per_jiffy() #17, !dbg !2854
  store i64 %call, ptr @loops_per_jiffy, align 8, !dbg !2855
  call void @use_tsc_delay() #17, !dbg !2856
  %call1 = call zeroext i1 @tsc_store_and_check_tsc_adjust(i1 noundef zeroext true) #15, !dbg !2857
  call void @cyc2ns_init_boot_cpu() #17, !dbg !2858
  call void @static_key_enable(ptr noundef @__use_tsc) #15, !dbg !2859
  ret void, !dbg !2860
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @tsc_init() #0 section ".init.text" align 16 !dbg !2861 {
entry:
  br i1 false, label %cond.true, label %cond.false, !dbg !2862

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !2863

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !2862

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !2863

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !2863

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 4, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !2863
  br i1 %call, label %if.end, label %if.then, !dbg !2863

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 4) #15, !dbg !2863
  br i1 %call5, label %if.end, label %if.then, !dbg !2862

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  call void @setup_clear_cpu_cap(i32 noundef 152) #15, !dbg !2865
  br label %return, !dbg !2867

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load ptr, ptr @x86_platform, align 8, !dbg !2868
  %cmp = icmp eq ptr %0, @native_calibrate_cpu_early, !dbg !2870
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !2871

if.then6:                                         ; preds = %if.end
  store ptr @native_calibrate_cpu, ptr @x86_platform, align 8, !dbg !2872
  br label %if.end7, !dbg !2873

if.end7:                                          ; preds = %if.then6, %if.end
  %1 = load i32, ptr @tsc_khz, align 4, !dbg !2874
  %tobool = icmp ne i32 %1, 0, !dbg !2874
  br i1 %tobool, label %if.end12, label %if.then8, !dbg !2876

if.then8:                                         ; preds = %if.end7
  %call9 = call zeroext i1 @determine_cpu_tsc_frequencies(i1 noundef zeroext false) #17, !dbg !2877
  br i1 %call9, label %if.end11, label %if.then10, !dbg !2880

if.then10:                                        ; preds = %if.then8
  call void @mark_tsc_unstable(ptr noundef @.str.2) #15, !dbg !2881
  call void @setup_clear_cpu_cap(i32 noundef 152) #15, !dbg !2883
  br label %return, !dbg !2884

if.end11:                                         ; preds = %if.then8
  call void @tsc_enable_sched_clock() #17, !dbg !2885
  br label %if.end12, !dbg !2886

if.end12:                                         ; preds = %if.end11, %if.end7
  call void @cyc2ns_init_secondary_cpus() #17, !dbg !2887
  %2 = load i32, ptr @no_sched_irq_time, align 4, !dbg !2888
  %tobool13 = icmp ne i32 %2, 0, !dbg !2888
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !2890

if.then14:                                        ; preds = %if.end12
  call void @enable_sched_clock_irqtime() #15, !dbg !2891
  br label %if.end15, !dbg !2891

if.end15:                                         ; preds = %if.then14, %if.end12
  %call16 = call i64 @get_loops_per_jiffy() #17, !dbg !2892
  store i64 %call16, ptr @lpj_fine, align 8, !dbg !2893
  call void @check_system_tsc_reliable() #17, !dbg !2894
  %call17 = call i32 @unsynchronized_tsc() #15, !dbg !2895
  %tobool18 = icmp ne i32 %call17, 0, !dbg !2895
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !2897

if.then19:                                        ; preds = %if.end15
  call void @mark_tsc_unstable(ptr noundef @.str.3) #15, !dbg !2898
  br label %return, !dbg !2900

if.end20:                                         ; preds = %if.end15
  %3 = load i32, ptr @tsc_clocksource_reliable, align 4, !dbg !2901
  %tobool21 = icmp ne i32 %3, 0, !dbg !2901
  br i1 %tobool21, label %if.then23, label %lor.lhs.false, !dbg !2903

lor.lhs.false:                                    ; preds = %if.end20
  %4 = load i32, ptr @no_tsc_watchdog, align 4, !dbg !2904
  %tobool22 = icmp ne i32 %4, 0, !dbg !2904
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2905

if.then23:                                        ; preds = %lor.lhs.false, %if.end20
  call void @tsc_disable_clocksource_watchdog() #17, !dbg !2906
  br label %if.end24, !dbg !2906

if.end24:                                         ; preds = %if.then23, %lor.lhs.false
  %5 = load i32, ptr @tsc_khz, align 4, !dbg !2907
  %call25 = call i32 @clocksource_register_khz(ptr noundef @clocksource_tsc_early, i32 noundef %5) #15, !dbg !2908
  call void @detect_art() #17, !dbg !2909
  br label %return, !dbg !2910

return:                                           ; preds = %if.end24, %if.then19, %if.then10, %if.then
  ret void, !dbg !2910
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #1 align 16 !dbg !2911 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !2916, metadata !DIExpression()), !dbg !2919
  %0 = load i16, ptr %bit.addr, align 2, !dbg !2920
  %1 = load i16, ptr %bit.addr, align 2, !dbg !2921
  %conv = zext i16 %1 to i32, !dbg !2921
  %and = and i32 %conv, 7, !dbg !2922
  %shl = shl i32 1, %and, !dbg !2923
  %2 = load i16, ptr %bit.addr, align 2, !dbg !2924
  %conv1 = zext i16 %2 to i32, !dbg !2924
  %shr = ashr i32 %conv1, 3, !dbg !2925
  %idxprom = sext i32 %shr to i64, !dbg !2926
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !2926
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #16
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !2927, !srcloc !2928

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !2927

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !2917), !dbg !2929
  store i1 true, ptr %retval, align 1, !dbg !2930
  br label %return, !dbg !2930

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !2918), !dbg !2931
  store i1 false, ptr %retval, align 1, !dbg !2932
  br label %return, !dbg !2932

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !2933
  ret i1 %3, !dbg !2933
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2934 dso_local void @setup_clear_cpu_cap(i32 noundef) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_calibrate_cpu() #8 align 16 !dbg !2937 {
entry:
  %tsc_freq = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsc_freq) #16, !dbg !2940
  call void @llvm.dbg.declare(metadata ptr %tsc_freq, metadata !2939, metadata !DIExpression()), !dbg !2941
  %call = call i64 @native_calibrate_cpu_early() #15, !dbg !2942
  store i64 %call, ptr %tsc_freq, align 8, !dbg !2941
  %0 = load i64, ptr %tsc_freq, align 8, !dbg !2943
  %tobool = icmp ne i64 %0, 0, !dbg !2943
  br i1 %tobool, label %if.end, label %if.then, !dbg !2945

if.then:                                          ; preds = %entry
  %call1 = call i64 @pit_hpet_ptimer_calibrate_cpu() #15, !dbg !2946
  store i64 %call1, ptr %tsc_freq, align 8, !dbg !2947
  br label %if.end, !dbg !2948

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %tsc_freq, align 8, !dbg !2949
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsc_freq) #16, !dbg !2950
  ret i64 %1, !dbg !2951
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @cyc2ns_init_secondary_cpus() #0 section ".init.text" align 16 !dbg !2952 {
entry:
  %cpu = alloca i32, align 4
  %this_cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %c2n = alloca ptr, align 8
  %__vpp_verify5 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  %data = alloca ptr, align 8
  %__vpp_verify17 = alloca ptr, align 8
  %tmp20 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp21 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #16, !dbg !2980
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2954, metadata !DIExpression()), !dbg !2981
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_cpu) #16, !dbg !2980
  call void @llvm.dbg.declare(metadata ptr %this_cpu, metadata !2955, metadata !DIExpression()), !dbg !2982
  call void @__this_cpu_preempt_check(ptr noundef @.str.4) #15, !dbg !2983
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #16, !dbg !2984
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2956, metadata !DIExpression()), !dbg !2984
  br label %do.body, !dbg !2984

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2985
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2959, metadata !DIExpression()), !dbg !2985
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2985
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2985
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !2984
  br label %do.cond, !dbg !2985

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2985

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #16, !dbg !2986
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2961, metadata !DIExpression()), !dbg !2986
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 2)) #18, !dbg !2986, !srcloc !2987
  store i32 %1, ptr %pfo_val__, align 4, !dbg !2986
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !2986
  %conv = zext i32 %2 to i64, !dbg !2986
  %conv2 = trunc i64 %conv to i32, !dbg !2986
  store i32 %conv2, ptr %tmp1, align 4, !dbg !2986
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #16, !dbg !2984
  %3 = load i32, ptr %tmp1, align 4, !dbg !2986
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !2984
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !2984
  store i32 %4, ptr %tmp3, align 4, !dbg !2984
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #16, !dbg !2983
  %5 = load i32, ptr %tmp3, align 4, !dbg !2984
  store i32 %5, ptr %tmp, align 4, !dbg !2983
  %6 = load i32, ptr %tmp, align 4, !dbg !2983
  store i32 %6, ptr %this_cpu, align 4, !dbg !2982
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2n) #16, !dbg !2988
  call void @llvm.dbg.declare(metadata ptr %c2n, metadata !2963, metadata !DIExpression()), !dbg !2989
  br label %do.body4, !dbg !2990

do.body4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify5) #16, !dbg !2991
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify5, metadata !2964, metadata !DIExpression()), !dbg !2991
  store ptr null, ptr %__vpp_verify5, align 8, !dbg !2991
  %7 = load ptr, ptr %__vpp_verify5, align 8, !dbg !2991
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify5) #16, !dbg !2990
  br label %do.cond6, !dbg !2991

do.cond6:                                         ; preds = %do.body4
  br label %do.end7, !dbg !2991

do.end7:                                          ; preds = %do.cond6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #16, !dbg !2992
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !2967, metadata !DIExpression()), !dbg !2992
  %8 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @cyc2ns) #18, !dbg !2992, !srcloc !2993
  store i64 %8, ptr %tcp_ptr__, align 8, !dbg !2992
  %9 = load i64, ptr %tcp_ptr__, align 8, !dbg !2992
  %10 = inttoptr i64 %9 to ptr, !dbg !2992
  store ptr %10, ptr %tmp9, align 8, !dbg !2992
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #16, !dbg !2990
  %11 = load ptr, ptr %tmp9, align 8, !dbg !2992
  store ptr %11, ptr %tmp8, align 8, !dbg !2991
  %12 = load ptr, ptr %tmp8, align 8, !dbg !2990
  store ptr %12, ptr %c2n, align 8, !dbg !2989
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !2994
  call void @llvm.dbg.declare(metadata ptr %data, metadata !2969, metadata !DIExpression()), !dbg !2995
  %13 = load ptr, ptr %c2n, align 8, !dbg !2996
  %data10 = getelementptr inbounds %struct.cyc2ns, ptr %13, i32 0, i32 0, !dbg !2997
  %arraydecay = getelementptr inbounds [2 x %struct.cyc2ns_data], ptr %data10, i64 0, i64 0, !dbg !2996
  store ptr %arraydecay, ptr %data, align 8, !dbg !2995
  store i32 0, ptr %cpu, align 4, !dbg !2998
  br label %for.cond, !dbg !2998

for.cond:                                         ; preds = %for.inc, %do.end7
  %14 = load i32, ptr %cpu, align 4, !dbg !2999
  %conv11 = zext i32 %14 to i64, !dbg !2999
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv11) #15, !dbg !2999
  %conv12 = trunc i64 %call to i32, !dbg !2999
  store i32 %conv12, ptr %cpu, align 4, !dbg !2999
  %15 = load i32, ptr %cpu, align 4, !dbg !2999
  %cmp = icmp ult i32 %15, 64, !dbg !2999
  br i1 %cmp, label %for.body, label %for.end, !dbg !2998

for.body:                                         ; preds = %for.cond
  %16 = load i32, ptr %cpu, align 4, !dbg !3000
  %17 = load i32, ptr %this_cpu, align 4, !dbg !3001
  %cmp14 = icmp ne i32 %16, %17, !dbg !3002
  br i1 %cmp14, label %if.then, label %if.end, !dbg !3003

if.then:                                          ; preds = %for.body
  %18 = load ptr, ptr %c2n, align 8, !dbg !3004
  %seq = getelementptr inbounds %struct.cyc2ns, ptr %18, i32 0, i32 1, !dbg !3004
  %seqcount = getelementptr inbounds %struct.seqcount_latch_t, ptr %seq, i32 0, i32 0, !dbg !3004
  call void @__seqcount_init(ptr noundef %seqcount, ptr noundef null, ptr noundef null) #15, !dbg !3004
  br label %do.body16, !dbg !3005

do.body16:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify17) #16, !dbg !3006
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify17, metadata !2970, metadata !DIExpression()), !dbg !3006
  store ptr null, ptr %__vpp_verify17, align 8, !dbg !3006
  %19 = load ptr, ptr %__vpp_verify17, align 8, !dbg !3006
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify17) #16, !dbg !3005
  br label %do.cond18, !dbg !3006

do.cond18:                                        ; preds = %do.body16
  br label %do.end19, !dbg !3006

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !3007
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2978, metadata !DIExpression()), !dbg !3007
  store i64 ptrtoint (ptr @cyc2ns to i64), ptr %__ptr, align 8, !dbg !3007
  %20 = load i64, ptr %__ptr, align 8, !dbg !3007
  %21 = load i32, ptr %cpu, align 4, !dbg !3007
  %idxprom = zext i32 %21 to i64, !dbg !3007
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3007
  %22 = load i64, ptr %arrayidx, align 8, !dbg !3007
  %add = add i64 %20, %22, !dbg !3007
  %23 = inttoptr i64 %add to ptr, !dbg !3007
  store ptr %23, ptr %tmp21, align 8, !dbg !3007
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !3005
  %24 = load ptr, ptr %tmp21, align 8, !dbg !3007
  store ptr %24, ptr %tmp20, align 8, !dbg !3006
  %25 = load ptr, ptr %tmp20, align 8, !dbg !3005
  store ptr %25, ptr %c2n, align 8, !dbg !3008
  %26 = load ptr, ptr %c2n, align 8, !dbg !3009
  %data22 = getelementptr inbounds %struct.cyc2ns, ptr %26, i32 0, i32 0, !dbg !3010
  %arrayidx23 = getelementptr [2 x %struct.cyc2ns_data], ptr %data22, i64 0, i64 0, !dbg !3009
  %27 = load ptr, ptr %data, align 8, !dbg !3011
  %arrayidx24 = getelementptr %struct.cyc2ns_data, ptr %27, i64 0, !dbg !3011
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx23, ptr align 8 %arrayidx24, i64 16, i1 false), !dbg !3011
  %28 = load ptr, ptr %c2n, align 8, !dbg !3012
  %data25 = getelementptr inbounds %struct.cyc2ns, ptr %28, i32 0, i32 0, !dbg !3013
  %arrayidx26 = getelementptr [2 x %struct.cyc2ns_data], ptr %data25, i64 0, i64 1, !dbg !3012
  %29 = load ptr, ptr %data, align 8, !dbg !3014
  %arrayidx27 = getelementptr %struct.cyc2ns_data, ptr %29, i64 1, !dbg !3014
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx26, ptr align 8 %arrayidx27, i64 16, i1 false), !dbg !3014
  br label %if.end, !dbg !3015

if.end:                                           ; preds = %do.end19, %for.body
  br label %for.inc, !dbg !3016

for.inc:                                          ; preds = %if.end
  %30 = load i32, ptr %cpu, align 4, !dbg !2999
  %inc = add i32 %30, 1, !dbg !2999
  store i32 %inc, ptr %cpu, align 4, !dbg !2999
  br label %for.cond, !dbg !2999, !llvm.loop !3017

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !3019
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2n) #16, !dbg !3019
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_cpu) #16, !dbg !3019
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #16, !dbg !3019
  ret void, !dbg !3019
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @enable_sched_clock_irqtime() #9 align 16 !dbg !3020 {
entry:
  ret void, !dbg !3021
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i64 @get_loops_per_jiffy() #0 section ".init.text" align 16 !dbg !3022 {
entry:
  %lpj = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpj) #16, !dbg !3028
  call void @llvm.dbg.declare(metadata ptr %lpj, metadata !3024, metadata !DIExpression()), !dbg !3029
  %0 = load i32, ptr @tsc_khz, align 4, !dbg !3030
  %conv = zext i32 %0 to i64, !dbg !3031
  %mul = mul i64 %conv, 1000, !dbg !3032
  store i64 %mul, ptr %lpj, align 8, !dbg !3029
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #16, !dbg !3033
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !3025, metadata !DIExpression()), !dbg !3033
  store i32 1000, ptr %__base, align 4, !dbg !3033
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #16, !dbg !3033
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !3027, metadata !DIExpression()), !dbg !3033
  %1 = load i64, ptr %lpj, align 8, !dbg !3033
  %2 = load i32, ptr %__base, align 4, !dbg !3033
  %conv1 = zext i32 %2 to i64, !dbg !3033
  %rem = urem i64 %1, %conv1, !dbg !3033
  %conv2 = trunc i64 %rem to i32, !dbg !3033
  store i32 %conv2, ptr %__rem, align 4, !dbg !3033
  %3 = load i64, ptr %lpj, align 8, !dbg !3033
  %4 = load i32, ptr %__base, align 4, !dbg !3033
  %conv3 = zext i32 %4 to i64, !dbg !3033
  %div = udiv i64 %3, %conv3, !dbg !3033
  store i64 %div, ptr %lpj, align 8, !dbg !3033
  %5 = load i32, ptr %__rem, align 4, !dbg !3033
  store i32 %5, ptr %tmp, align 4, !dbg !3033
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #16, !dbg !3034
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #16, !dbg !3034
  %6 = load i32, ptr %tmp, align 4, !dbg !3033
  %7 = load i64, ptr %lpj, align 8, !dbg !3035
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpj) #16, !dbg !3036
  ret i64 %7, !dbg !3037
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @check_system_tsc_reliable() #0 section ".init.text" align 16 !dbg !3038 {
entry:
  br i1 false, label %cond.true, label %cond.false, !dbg !3039

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end, !dbg !3040

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 119, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !3040
  br i1 %call, label %if.then, label %if.end, !dbg !3039

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 1, ptr @tsc_clocksource_reliable, align 4, !dbg !3042
  br label %if.end, !dbg !3043

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  br i1 false, label %cond.true1, label %cond.false2, !dbg !3044

cond.true1:                                       ; preds = %if.end
  br i1 true, label %land.lhs.true, label %if.end13, !dbg !3046

cond.false2:                                      ; preds = %if.end
  %call3 = call zeroext i1 @arch_test_bit(i64 noundef 104, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !3046
  br i1 %call3, label %land.lhs.true, label %if.end13, !dbg !3044

land.lhs.true:                                    ; preds = %cond.false2, %cond.true1
  br i1 false, label %cond.true4, label %cond.false5, !dbg !3047

cond.true4:                                       ; preds = %land.lhs.true
  br i1 true, label %land.lhs.true7, label %if.end13, !dbg !3048

cond.false5:                                      ; preds = %land.lhs.true
  %call6 = call zeroext i1 @arch_test_bit(i64 noundef 120, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !3048
  br i1 %call6, label %land.lhs.true7, label %if.end13, !dbg !3047

land.lhs.true7:                                   ; preds = %cond.false5, %cond.true4
  br i1 false, label %cond.true8, label %cond.false9, !dbg !3049

cond.true8:                                       ; preds = %land.lhs.true7
  br i1 true, label %land.lhs.true11, label %if.end13, !dbg !3050

cond.false9:                                      ; preds = %land.lhs.true7
  %call10 = call zeroext i1 @arch_test_bit(i64 noundef 289, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !3050
  br i1 %call10, label %land.lhs.true11, label %if.end13, !dbg !3049

land.lhs.true11:                                  ; preds = %cond.false9, %cond.true8
  %0 = load i32, ptr @nr_online_nodes, align 4, !dbg !3051
  %cmp = icmp ule i32 %0, 4, !dbg !3052
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !3053

if.then12:                                        ; preds = %land.lhs.true11
  call void @tsc_disable_clocksource_watchdog() #17, !dbg !3054
  br label %if.end13, !dbg !3054

if.end13:                                         ; preds = %if.then12, %land.lhs.true11, %cond.false9, %cond.true8, %cond.false5, %cond.true4, %cond.false2, %cond.true1
  ret void, !dbg !3055
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @tsc_disable_clocksource_watchdog() #0 section ".init.text" align 16 !dbg !3056 {
entry:
  %0 = load i64, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_tsc_early, i32 0, i32 13), align 8, !dbg !3057
  %and = and i64 %0, -3, !dbg !3057
  store i64 %and, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_tsc_early, i32 0, i32 13), align 8, !dbg !3057
  %1 = load i64, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_tsc, i32 0, i32 13), align 8, !dbg !3058
  %and1 = and i64 %1, -3, !dbg !3058
  store i64 %and1, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource_tsc, i32 0, i32 13), align 8, !dbg !3058
  ret void, !dbg !3059
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clocksource_register_khz(ptr noundef %cs, i32 noundef %khz) #9 align 16 !dbg !3060 {
entry:
  %cs.addr = alloca ptr, align 8
  %khz.addr = alloca i32, align 4
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !3064, metadata !DIExpression()), !dbg !3066
  store i32 %khz, ptr %khz.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %khz.addr, metadata !3065, metadata !DIExpression()), !dbg !3067
  %0 = load ptr, ptr %cs.addr, align 8, !dbg !3068
  %1 = load i32, ptr %khz.addr, align 4, !dbg !3069
  %call = call i32 @__clocksource_register_scale(ptr noundef %0, i32 noundef 1000, i32 noundef %1) #15, !dbg !3070
  ret i32 %call, !dbg !3071
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @detect_art() #0 section ".init.text" align 16 !dbg !3072 {
entry:
  %unused = alloca [2 x i32], align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %unused) #16, !dbg !3076
  call void @llvm.dbg.declare(metadata ptr %unused, metadata !3074, metadata !DIExpression()), !dbg !3077
  %0 = load i32, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 9), align 8, !dbg !3078
  %cmp = icmp slt i32 %0, 21, !dbg !3080
  br i1 %cmp, label %if.then, label %if.end, !dbg !3081

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3082

if.end:                                           ; preds = %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !3083

cond.true:                                        ; preds = %if.end
  br i1 true, label %if.then9, label %lor.lhs.false, !dbg !3085

cond.false:                                       ; preds = %if.end
  %call = call zeroext i1 @arch_test_bit(i64 noundef 159, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !3085
  br i1 %call, label %if.then9, label %lor.lhs.false, !dbg !3083

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  br i1 false, label %cond.true1, label %cond.false2, !dbg !3086

cond.true1:                                       ; preds = %lor.lhs.false
  br i1 true, label %lor.lhs.false4, label %if.then9, !dbg !3087

cond.false2:                                      ; preds = %lor.lhs.false
  %call3 = call zeroext i1 @arch_test_bit(i64 noundef 120, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !3087
  br i1 %call3, label %lor.lhs.false4, label %if.then9, !dbg !3086

lor.lhs.false4:                                   ; preds = %cond.false2, %cond.true1
  br i1 false, label %cond.true5, label %cond.false6, !dbg !3088

cond.true5:                                       ; preds = %lor.lhs.false4
  br i1 true, label %lor.lhs.false8, label %if.then9, !dbg !3089

cond.false6:                                      ; preds = %lor.lhs.false4
  %call7 = call zeroext i1 @arch_test_bit(i64 noundef 289, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !3089
  br i1 %call7, label %lor.lhs.false8, label %if.then9, !dbg !3088

lor.lhs.false8:                                   ; preds = %cond.false6, %cond.true5
  %1 = load i8, ptr @tsc_async_resets, align 1, !dbg !3090, !range !1777, !noundef !590
  %tobool = trunc i8 %1 to i1, !dbg !3090
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !3091

if.then9:                                         ; preds = %lor.lhs.false8, %cond.false6, %cond.true5, %cond.false2, %cond.true1, %cond.false, %cond.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3092

if.end10:                                         ; preds = %lor.lhs.false8
  %arraydecay = getelementptr inbounds [2 x i32], ptr %unused, i64 0, i64 0, !dbg !3093
  %arraydecay11 = getelementptr inbounds [2 x i32], ptr %unused, i64 0, i64 0, !dbg !3094
  %add.ptr = getelementptr i32, ptr %arraydecay11, i64 1, !dbg !3095
  call void @cpuid(i32 noundef 21, ptr noundef @art_to_tsc_denominator, ptr noundef @art_to_tsc_numerator, ptr noundef %arraydecay, ptr noundef %add.ptr) #15, !dbg !3096
  %2 = load i32, ptr @art_to_tsc_denominator, align 4, !dbg !3097
  %cmp12 = icmp ult i32 %2, 1, !dbg !3099
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3100

if.then13:                                        ; preds = %if.end10
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3101

if.end14:                                         ; preds = %if.end10
  %call15 = call i64 @native_read_msr(i32 noundef 59) #15, !dbg !3102
  store i64 %call15, ptr @art_to_tsc_offset, align 8, !dbg !3102
  br label %do.body, !dbg !3103

do.body:                                          ; preds = %if.end14
  call void @set_bit(i64 noundef 106, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !3104
  call void @set_bit(i64 noundef 106, ptr noundef @cpu_caps_set) #15, !dbg !3104
  br label %do.cond, !dbg !3104

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3104

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3106
  br label %cleanup, !dbg !3106

cleanup:                                          ; preds = %do.end, %if.then13, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %unused) #16, !dbg !3106
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3106

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @calibrate_delay_is_known() #8 align 16 !dbg !3107 {
entry:
  %retval = alloca i64, align 8
  %sibling = alloca i32, align 4
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %constant_tsc = alloca i32, align 4
  %__vpp_verify5 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  %mask = alloca ptr, align 8
  %__vpp_verify12 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %__ptr16 = alloca i64, align 8
  %tmp17 = alloca ptr, align 8
  %__vpp_verify24 = alloca ptr, align 8
  %tmp27 = alloca ptr, align 8
  %__ptr28 = alloca i64, align 8
  %tmp29 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify39 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %__ptr43 = alloca i64, align 8
  %tmp44 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %sibling) #16, !dbg !3142
  call void @llvm.dbg.declare(metadata ptr %sibling, metadata !3109, metadata !DIExpression()), !dbg !3143
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #16, !dbg !3142
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !3110, metadata !DIExpression()), !dbg !3144
  call void @__this_cpu_preempt_check(ptr noundef @.str.4) #15, !dbg !3145
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #16, !dbg !3146
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3111, metadata !DIExpression()), !dbg !3146
  br label %do.body, !dbg !3146

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !3147
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3114, metadata !DIExpression()), !dbg !3147
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3147
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3147
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !3146
  br label %do.cond, !dbg !3147

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3147

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #16, !dbg !3148
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3116, metadata !DIExpression()), !dbg !3148
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 2)) #18, !dbg !3148, !srcloc !3149
  store i32 %1, ptr %pfo_val__, align 4, !dbg !3148
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !3148
  %conv = zext i32 %2 to i64, !dbg !3148
  %conv2 = trunc i64 %conv to i32, !dbg !3148
  store i32 %conv2, ptr %tmp1, align 4, !dbg !3148
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #16, !dbg !3146
  %3 = load i32, ptr %tmp1, align 4, !dbg !3148
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !3146
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !3146
  store i32 %4, ptr %tmp3, align 4, !dbg !3146
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #16, !dbg !3145
  %5 = load i32, ptr %tmp3, align 4, !dbg !3146
  store i32 %5, ptr %tmp, align 4, !dbg !3145
  %6 = load i32, ptr %tmp, align 4, !dbg !3145
  store i32 %6, ptr %cpu, align 4, !dbg !3144
  call void @llvm.lifetime.start.p0(i64 4, ptr %constant_tsc) #16, !dbg !3150
  call void @llvm.dbg.declare(metadata ptr %constant_tsc, metadata !3118, metadata !DIExpression()), !dbg !3151
  br label %do.body4, !dbg !3152

do.body4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify5) #16, !dbg !3153
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify5, metadata !3119, metadata !DIExpression()), !dbg !3153
  store ptr null, ptr %__vpp_verify5, align 8, !dbg !3153
  %7 = load ptr, ptr %__vpp_verify5, align 8, !dbg !3153
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify5) #16, !dbg !3152
  br label %do.cond6, !dbg !3153

do.cond6:                                         ; preds = %do.body4
  br label %do.end7, !dbg !3153

do.end7:                                          ; preds = %do.cond6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !3154
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3122, metadata !DIExpression()), !dbg !3154
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !3154
  %8 = load i64, ptr %__ptr, align 8, !dbg !3154
  %9 = load i32, ptr %cpu, align 4, !dbg !3154
  %idxprom = sext i32 %9 to i64, !dbg !3154
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3154
  %10 = load i64, ptr %arrayidx, align 8, !dbg !3154
  %add = add i64 %8, %10, !dbg !3154
  %11 = inttoptr i64 %add to ptr, !dbg !3154
  store ptr %11, ptr %tmp9, align 8, !dbg !3154
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !3152
  %12 = load ptr, ptr %tmp9, align 8, !dbg !3154
  store ptr %12, ptr %tmp8, align 8, !dbg !3153
  %13 = load ptr, ptr %tmp8, align 8, !dbg !3152
  %14 = getelementptr inbounds %struct.cpuinfo_x86, ptr %13, i32 0, i32 10, !dbg !3155
  %arraydecay = getelementptr inbounds [24 x i32], ptr %14, i64 0, i64 0, !dbg !3155
  %call = call zeroext i1 @arch_test_bit(i64 noundef 104, ptr noundef %arraydecay) #15, !dbg !3155
  %conv10 = zext i1 %call to i32, !dbg !3155
  store i32 %conv10, ptr %constant_tsc, align 4, !dbg !3151
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !3156
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !3124, metadata !DIExpression()), !dbg !3157
  br label %do.body11, !dbg !3158

do.body11:                                        ; preds = %do.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify12) #16, !dbg !3159
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify12, metadata !3125, metadata !DIExpression()), !dbg !3159
  store ptr null, ptr %__vpp_verify12, align 8, !dbg !3159
  %15 = load ptr, ptr %__vpp_verify12, align 8, !dbg !3159
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify12) #16, !dbg !3158
  br label %do.cond13, !dbg !3159

do.cond13:                                        ; preds = %do.body11
  br label %do.end14, !dbg !3159

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr16) #16, !dbg !3160
  call void @llvm.dbg.declare(metadata ptr %__ptr16, metadata !3128, metadata !DIExpression()), !dbg !3160
  store i64 ptrtoint (ptr @cpu_core_map to i64), ptr %__ptr16, align 8, !dbg !3160
  %16 = load i64, ptr %__ptr16, align 8, !dbg !3160
  %17 = load i32, ptr %cpu, align 4, !dbg !3160
  %idxprom18 = sext i32 %17 to i64, !dbg !3160
  %arrayidx19 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom18, !dbg !3160
  %18 = load i64, ptr %arrayidx19, align 8, !dbg !3160
  %add20 = add i64 %16, %18, !dbg !3160
  %19 = inttoptr i64 %add20 to ptr, !dbg !3160
  store ptr %19, ptr %tmp17, align 8, !dbg !3160
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr16) #16, !dbg !3158
  %20 = load ptr, ptr %tmp17, align 8, !dbg !3160
  store ptr %20, ptr %tmp15, align 8, !dbg !3159
  %21 = load ptr, ptr %tmp15, align 8, !dbg !3158
  %arraydecay21 = getelementptr inbounds [1 x %struct.cpumask], ptr %21, i64 0, i64 0, !dbg !3161
  store ptr %arraydecay21, ptr %mask, align 8, !dbg !3157
  %22 = load i32, ptr %constant_tsc, align 4, !dbg !3162
  %tobool = icmp ne i32 %22, 0, !dbg !3162
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3163

land.lhs.true:                                    ; preds = %do.end14
  %23 = load i32, ptr @tsc_unstable, align 4, !dbg !3164
  %tobool22 = icmp ne i32 %23, 0, !dbg !3164
  br i1 %tobool22, label %if.end, label %if.then, !dbg !3165

if.then:                                          ; preds = %land.lhs.true
  br label %do.body23, !dbg !3166

do.body23:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify24) #16, !dbg !3167
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify24, metadata !3130, metadata !DIExpression()), !dbg !3167
  store ptr null, ptr %__vpp_verify24, align 8, !dbg !3167
  %24 = load ptr, ptr %__vpp_verify24, align 8, !dbg !3167
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify24) #16, !dbg !3166
  br label %do.cond25, !dbg !3167

do.cond25:                                        ; preds = %do.body23
  br label %do.end26, !dbg !3167

do.end26:                                         ; preds = %do.cond25
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr28) #16, !dbg !3168
  call void @llvm.dbg.declare(metadata ptr %__ptr28, metadata !3134, metadata !DIExpression()), !dbg !3168
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr28, align 8, !dbg !3168
  %25 = load i64, ptr %__ptr28, align 8, !dbg !3168
  %26 = load i64, ptr @__per_cpu_offset, align 16, !dbg !3168
  %add30 = add i64 %25, %26, !dbg !3168
  %27 = inttoptr i64 %add30 to ptr, !dbg !3168
  store ptr %27, ptr %tmp29, align 8, !dbg !3168
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr28) #16, !dbg !3166
  %28 = load ptr, ptr %tmp29, align 8, !dbg !3168
  store ptr %28, ptr %tmp27, align 8, !dbg !3167
  %29 = load ptr, ptr %tmp27, align 8, !dbg !3166
  %loops_per_jiffy = getelementptr inbounds %struct.cpuinfo_x86, ptr %29, i32 0, i32 19, !dbg !3169
  %30 = load i64, ptr %loops_per_jiffy, align 8, !dbg !3169
  store i64 %30, ptr %retval, align 8, !dbg !3170
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3170

if.end:                                           ; preds = %land.lhs.true, %do.end14
  %31 = load i32, ptr %constant_tsc, align 4, !dbg !3171
  %tobool31 = icmp ne i32 %31, 0, !dbg !3171
  br i1 %tobool31, label %lor.lhs.false, label %if.then33, !dbg !3173

lor.lhs.false:                                    ; preds = %if.end
  %32 = load ptr, ptr %mask, align 8, !dbg !3174
  %tobool32 = icmp ne ptr %32, null, !dbg !3174
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !3175

if.then33:                                        ; preds = %lor.lhs.false, %if.end
  store i64 0, ptr %retval, align 8, !dbg !3176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3176

if.end34:                                         ; preds = %lor.lhs.false
  %33 = load ptr, ptr %mask, align 8, !dbg !3177
  %34 = load i32, ptr %cpu, align 4, !dbg !3178
  %call35 = call i32 @cpumask_any_but(ptr noundef %33, i32 noundef %34) #15, !dbg !3179
  store i32 %call35, ptr %sibling, align 4, !dbg !3180
  %35 = load i32, ptr %sibling, align 4, !dbg !3181
  %36 = load i32, ptr @nr_cpu_ids, align 4, !dbg !3182
  %cmp = icmp ult i32 %35, %36, !dbg !3183
  br i1 %cmp, label %if.then37, label %if.end49, !dbg !3184

if.then37:                                        ; preds = %if.end34
  br label %do.body38, !dbg !3185

do.body38:                                        ; preds = %if.then37
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify39) #16, !dbg !3186
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify39, metadata !3136, metadata !DIExpression()), !dbg !3186
  store ptr null, ptr %__vpp_verify39, align 8, !dbg !3186
  %37 = load ptr, ptr %__vpp_verify39, align 8, !dbg !3186
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify39) #16, !dbg !3185
  br label %do.cond40, !dbg !3186

do.cond40:                                        ; preds = %do.body38
  br label %do.end41, !dbg !3186

do.end41:                                         ; preds = %do.cond40
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr43) #16, !dbg !3187
  call void @llvm.dbg.declare(metadata ptr %__ptr43, metadata !3140, metadata !DIExpression()), !dbg !3187
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr43, align 8, !dbg !3187
  %38 = load i64, ptr %__ptr43, align 8, !dbg !3187
  %39 = load i32, ptr %sibling, align 4, !dbg !3187
  %idxprom45 = sext i32 %39 to i64, !dbg !3187
  %arrayidx46 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom45, !dbg !3187
  %40 = load i64, ptr %arrayidx46, align 8, !dbg !3187
  %add47 = add i64 %38, %40, !dbg !3187
  %41 = inttoptr i64 %add47 to ptr, !dbg !3187
  store ptr %41, ptr %tmp44, align 8, !dbg !3187
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr43) #16, !dbg !3185
  %42 = load ptr, ptr %tmp44, align 8, !dbg !3187
  store ptr %42, ptr %tmp42, align 8, !dbg !3186
  %43 = load ptr, ptr %tmp42, align 8, !dbg !3185
  %loops_per_jiffy48 = getelementptr inbounds %struct.cpuinfo_x86, ptr %43, i32 0, i32 19, !dbg !3188
  %44 = load i64, ptr %loops_per_jiffy48, align 8, !dbg !3188
  store i64 %44, ptr %retval, align 8, !dbg !3189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3189

if.end49:                                         ; preds = %if.end34
  store i64 0, ptr %retval, align 8, !dbg !3190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3190

cleanup:                                          ; preds = %if.end49, %do.end41, %if.then33, %do.end26
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !3191
  call void @llvm.lifetime.end.p0(i64 4, ptr %constant_tsc) #16, !dbg !3191
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #16, !dbg !3191
  call void @llvm.lifetime.end.p0(i64 4, ptr %sibling) #16, !dbg !3191
  %45 = load i64, ptr %retval, align 8, !dbg !3191
  ret i64 %45, !dbg !3191
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #1 align 16 !dbg !3192 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !3197, metadata !DIExpression()), !dbg !3198
  ret void, !dbg !3199
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_any_but(ptr noundef %mask, i32 noundef %cpu) #9 align 16 !dbg !3200 {
entry:
  %mask.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !3204, metadata !DIExpression()), !dbg !3207
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3205, metadata !DIExpression()), !dbg !3208
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !3209
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3206, metadata !DIExpression()), !dbg !3210
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3211
  %call = call i32 @cpumask_check(i32 noundef %0) #15, !dbg !3212
  store i32 0, ptr %i, align 4, !dbg !3213
  br label %for.cond, !dbg !3213

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !3215
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !3215
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3215
  %2 = load i32, ptr %i, align 4, !dbg !3215
  %conv = zext i32 %2 to i64, !dbg !3215
  %call1 = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #15, !dbg !3215
  %conv2 = trunc i64 %call1 to i32, !dbg !3215
  store i32 %conv2, ptr %i, align 4, !dbg !3215
  %3 = load i32, ptr %i, align 4, !dbg !3215
  %cmp = icmp ult i32 %3, 64, !dbg !3215
  br i1 %cmp, label %for.body, label %for.end, !dbg !3213

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !dbg !3217
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !3219
  %cmp4 = icmp ne i32 %4, %5, !dbg !3220
  br i1 %cmp4, label %if.then, label %if.end, !dbg !3221

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !3222

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3219

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4, !dbg !3215
  %inc = add i32 %6, 1, !dbg !3215
  store i32 %inc, ptr %i, align 4, !dbg !3215
  br label %for.cond, !dbg !3215, !llvm.loop !3223

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i32, ptr %i, align 4, !dbg !3225
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !3226
  ret i32 %7, !dbg !3227
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3228 dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mul_u64_u32_shr(i64 noundef %a, i32 noundef %mul, i32 noundef %shift) #1 align 16 !dbg !3232 {
entry:
  %a.addr = alloca i64, align 8
  %mul.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i64 %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !3237, metadata !DIExpression()), !dbg !3240
  store i32 %mul, ptr %mul.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mul.addr, metadata !3238, metadata !DIExpression()), !dbg !3241
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !3239, metadata !DIExpression()), !dbg !3242
  %0 = load i64, ptr %a.addr, align 8, !dbg !3243
  %conv = zext i64 %0 to i128, !dbg !3244
  %1 = load i32, ptr %mul.addr, align 4, !dbg !3245
  %conv1 = zext i32 %1 to i128, !dbg !3245
  %mul2 = mul i128 %conv, %conv1, !dbg !3246
  %2 = load i32, ptr %shift.addr, align 4, !dbg !3247
  %sh_prom = zext i32 %2 to i128, !dbg !3248
  %shr = lshr i128 %mul2, %sh_prom, !dbg !3248
  %conv3 = trunc i128 %shr to i64, !dbg !3249
  ret i64 %conv3, !dbg !3250
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__SCT__pv_sched_clock() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3251 dso_local i32 @strcmp(ptr noundef, ptr noundef) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3255 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #9 align 16 !dbg !3258 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !3262, metadata !DIExpression()), !dbg !3266
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !3263, metadata !DIExpression()), !dbg !3267
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !3264, metadata !DIExpression()), !dbg !3268
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !3265, metadata !DIExpression()), !dbg !3269
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !3270
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !3271
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !3272
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !3273
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !3274
  %5 = load i32, ptr %4, align 4, !dbg !3275
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !3276
  %7 = load i32, ptr %6, align 4, !dbg !3277
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #16, !dbg !3278, !srcloc !3279
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !3278
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !3278
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !3278
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !3278
  store i32 %asmresult, ptr %0, align 4, !dbg !3278
  store i32 %asmresult1, ptr %1, align 4, !dbg !3278
  store i32 %asmresult2, ptr %2, align 4, !dbg !3278
  store i32 %asmresult3, ptr %3, align 4, !dbg !3278
  ret void, !dbg !3280
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !3281 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3289, metadata !DIExpression()), !dbg !3291
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3290, metadata !DIExpression()), !dbg !3292
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3293
  %1 = load i64, ptr %size.addr, align 8, !dbg !3294
  %conv = trunc i64 %1 to i32, !dbg !3294
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !3295
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3296
  %3 = load i64, ptr %size.addr, align 8, !dbg !3296
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #15, !dbg !3296
  ret void, !dbg !3297
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !3298 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3300, metadata !DIExpression()), !dbg !3302
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3301, metadata !DIExpression()), !dbg !3303
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3304
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3306
  br i1 %1, label %if.then, label %if.else, !dbg !3307

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !3308
  %3 = load i64, ptr %nr.addr, align 8, !dbg !3308
  %shr = ashr i64 %3, 3, !dbg !3308
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !3308
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3310
  %and = and i64 %4, 7, !dbg !3310
  %sh_prom = trunc i64 %and to i32, !dbg !3310
  %shl = shl i32 1, %sh_prom, !dbg !3310
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #16, !dbg !3311, !srcloc !3312
  br label %if.end, !dbg !3313

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3314
  %6 = load i64, ptr %nr.addr, align 8, !dbg !3316
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !3317, !srcloc !3318
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3319
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #9 align 16 !dbg !3320 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3325, metadata !DIExpression()), !dbg !3327
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3326, metadata !DIExpression()), !dbg !3328
  ret i1 true, !dbg !3329
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #9 align 16 !dbg !3330 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3335, metadata !DIExpression()), !dbg !3338
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3336, metadata !DIExpression()), !dbg !3339
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3337, metadata !DIExpression()), !dbg !3340
  ret void, !dbg !3341
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #1 align 16 !dbg !3342 {
entry:
  %call = call i64 @native_save_fl() #15, !dbg !3343
  ret i64 %call, !dbg !3344
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #1 align 16 !dbg !3345 {
entry:
  call void @native_irq_disable() #15, !dbg !3346
  ret void, !dbg !3347
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #1 align 16 !dbg !3348 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !3351
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3350, metadata !DIExpression()), !dbg !3352
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #16, !dbg !3353, !srcloc !3354
  %0 = load i64, ptr %flags, align 8, !dbg !3355
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !3356
  ret i64 %0, !dbg !3357
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #1 align 16 !dbg !3358 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !3359, !srcloc !3360
  ret void, !dbg !3361
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @has_legacy_pic() #9 align 16 !dbg !3362 {
entry:
  %0 = load ptr, ptr @legacy_pic, align 8, !dbg !3364
  %cmp = icmp ne ptr %0, @null_legacy_pic, !dbg !3365
  ret i1 %cmp, !dbg !3366
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outb(i8 noundef zeroext %value, i16 noundef zeroext %port) #1 align 16 !dbg !3367 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !3372, metadata !DIExpression()), !dbg !3374
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !3373, metadata !DIExpression()), !dbg !3374
  %0 = load i8, ptr %value.addr, align 1, !dbg !3374
  %1 = load i16, ptr %port.addr, align 2, !dbg !3374
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #16, !dbg !3374, !srcloc !3375
  ret void, !dbg !3374
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__inb(i16 noundef zeroext %port) #1 align 16 !dbg !3376 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !3380, metadata !DIExpression()), !dbg !3382
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #16, !dbg !3382
  call void @llvm.dbg.declare(metadata ptr %value, metadata !3381, metadata !DIExpression()), !dbg !3382
  %0 = load i16, ptr %port.addr, align 2, !dbg !3382
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #16, !dbg !3382, !srcloc !3383
  store i8 %1, ptr %value, align 1, !dbg !3382
  %2 = load i8, ptr %value, align 1, !dbg !3382
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #16, !dbg !3382
  ret i8 %2, !dbg !3382
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pit_verify_msb(i8 noundef zeroext %val) #9 align 16 !dbg !3384 {
entry:
  %val.addr = alloca i8, align 1
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3388, metadata !DIExpression()), !dbg !3389
  %call = call zeroext i8 @__inb(i16 noundef zeroext 66) #15, !dbg !3390
  %call1 = call zeroext i8 @__inb(i16 noundef zeroext 66) #15, !dbg !3391
  %conv = zext i8 %call1 to i32, !dbg !3391
  %0 = load i8, ptr %val.addr, align 1, !dbg !3392
  %conv2 = zext i8 %0 to i32, !dbg !3392
  %cmp = icmp eq i32 %conv, %conv2, !dbg !3393
  %conv3 = zext i1 %cmp to i32, !dbg !3393
  ret i32 %conv3, !dbg !3394
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pit_expect_msb(i8 noundef zeroext %val, ptr noundef %tscp, ptr noundef %deltap) #9 align 16 !dbg !3395 {
entry:
  %val.addr = alloca i8, align 1
  %tscp.addr = alloca ptr, align 8
  %deltap.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %tsc = alloca i64, align 8
  %prev_tsc = alloca i64, align 8
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3399, metadata !DIExpression()), !dbg !3405
  store ptr %tscp, ptr %tscp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tscp.addr, metadata !3400, metadata !DIExpression()), !dbg !3406
  store ptr %deltap, ptr %deltap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %deltap.addr, metadata !3401, metadata !DIExpression()), !dbg !3407
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #16, !dbg !3408
  call void @llvm.dbg.declare(metadata ptr %count, metadata !3402, metadata !DIExpression()), !dbg !3409
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsc) #16, !dbg !3410
  call void @llvm.dbg.declare(metadata ptr %tsc, metadata !3403, metadata !DIExpression()), !dbg !3411
  store i64 0, ptr %tsc, align 8, !dbg !3411
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_tsc) #16, !dbg !3410
  call void @llvm.dbg.declare(metadata ptr %prev_tsc, metadata !3404, metadata !DIExpression()), !dbg !3412
  store i64 0, ptr %prev_tsc, align 8, !dbg !3412
  store i32 0, ptr %count, align 4, !dbg !3413
  br label %for.cond, !dbg !3415

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %count, align 4, !dbg !3416
  %cmp = icmp slt i32 %0, 50000, !dbg !3418
  br i1 %cmp, label %for.body, label %for.end, !dbg !3419

for.body:                                         ; preds = %for.cond
  %1 = load i8, ptr %val.addr, align 1, !dbg !3420
  %call = call i32 @pit_verify_msb(i8 noundef zeroext %1) #15, !dbg !3423
  %tobool = icmp ne i32 %call, 0, !dbg !3423
  br i1 %tobool, label %if.end, label %if.then, !dbg !3424

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !3425

if.end:                                           ; preds = %for.body
  %2 = load i64, ptr %tsc, align 8, !dbg !3426
  store i64 %2, ptr %prev_tsc, align 8, !dbg !3427
  %call1 = call i64 @get_cycles() #15, !dbg !3428
  store i64 %call1, ptr %tsc, align 8, !dbg !3429
  br label %for.inc, !dbg !3430

for.inc:                                          ; preds = %if.end
  %3 = load i32, ptr %count, align 4, !dbg !3431
  %inc = add i32 %3, 1, !dbg !3431
  store i32 %inc, ptr %count, align 4, !dbg !3431
  br label %for.cond, !dbg !3432, !llvm.loop !3433

for.end:                                          ; preds = %if.then, %for.cond
  %call2 = call i64 @get_cycles() #15, !dbg !3435
  %4 = load i64, ptr %prev_tsc, align 8, !dbg !3436
  %sub = sub i64 %call2, %4, !dbg !3437
  %5 = load ptr, ptr %deltap.addr, align 8, !dbg !3438
  store i64 %sub, ptr %5, align 8, !dbg !3439
  %6 = load i64, ptr %tsc, align 8, !dbg !3440
  %7 = load ptr, ptr %tscp.addr, align 8, !dbg !3441
  store i64 %6, ptr %7, align 8, !dbg !3442
  %8 = load i32, ptr %count, align 4, !dbg !3443
  %cmp3 = icmp sgt i32 %8, 5, !dbg !3444
  %conv = zext i1 %cmp3 to i32, !dbg !3444
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_tsc) #16, !dbg !3445
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsc) #16, !dbg !3445
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #16, !dbg !3445
  ret i32 %conv, !dbg !3446
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_cycles() #9 align 16 !dbg !3447 {
entry:
  %call = call i64 @rdtsc() #15, !dbg !3451
  ret i64 %call, !dbg !3452
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #1 align 16 !dbg !3453 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3457, metadata !DIExpression()), !dbg !3458
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3459
  %and = and i64 %0, 512, !dbg !3460
  %tobool = icmp ne i64 %and, 0, !dbg !3461
  %lnot = xor i1 %tobool, true, !dbg !3461
  %lnot.ext = zext i1 %lnot to i32, !dbg !3461
  ret i32 %lnot.ext, !dbg !3462
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #1 align 16 !dbg !3463 {
entry:
  call void @native_irq_enable() #15, !dbg !3464
  ret void, !dbg !3465
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #1 align 16 !dbg !3466 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !3467, !srcloc !3468
  ret void, !dbg !3469
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #1 align 16 !dbg !3470 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !3474, metadata !DIExpression()), !dbg !3475
  %0 = load i64, ptr %word.addr, align 8, !dbg !3476
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #18, !dbg !3477, !srcloc !3478
  store i64 %1, ptr %word.addr, align 8, !dbg !3477
  %2 = load i64, ptr %word.addr, align 8, !dbg !3479
  ret i64 %2, !dbg !3480
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3481 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3482 dso_local i32 @cpufreq_register_notifier(ptr noundef, i32 noundef) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @time_cpufreq_notifier(ptr noundef %nb, i64 noundef %val, ptr noundef %data) #8 align 16 !dbg !3485 {
entry:
  %retval = alloca i32, align 4
  %nb.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %freq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !3487, metadata !DIExpression()), !dbg !5061
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3488, metadata !DIExpression()), !dbg !5062
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3489, metadata !DIExpression()), !dbg !5063
  call void @llvm.lifetime.start.p0(i64 8, ptr %freq) #16, !dbg !5064
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !3490, metadata !DIExpression()), !dbg !5065
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5066
  store ptr %0, ptr %freq, align 8, !dbg !5065
  %call = call i32 @num_online_cpus() #15, !dbg !5067
  %cmp = icmp ugt i32 %call, 1, !dbg !5069
  br i1 %cmp, label %if.then, label %if.end, !dbg !5070

if.then:                                          ; preds = %entry
  call void @mark_tsc_unstable(ptr noundef @.str.16) #15, !dbg !5071
  store i32 0, ptr %retval, align 4, !dbg !5073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5073

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @ref_freq, align 4, !dbg !5074
  %tobool = icmp ne i32 %1, 0, !dbg !5074
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !5076

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr %freq, align 8, !dbg !5077
  %old = getelementptr inbounds %struct.cpufreq_freqs, ptr %2, i32 0, i32 1, !dbg !5079
  %3 = load i32, ptr %old, align 8, !dbg !5079
  store i32 %3, ptr @ref_freq, align 4, !dbg !5080
  %4 = load i64, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 19), align 8, !dbg !5081
  store i64 %4, ptr @loops_per_jiffy_ref, align 8, !dbg !5082
  %5 = load i32, ptr @tsc_khz, align 4, !dbg !5083
  %conv = zext i32 %5 to i64, !dbg !5083
  store i64 %conv, ptr @tsc_khz_ref, align 8, !dbg !5084
  br label %if.end2, !dbg !5085

if.end2:                                          ; preds = %if.then1, %if.end
  %6 = load i64, ptr %val.addr, align 8, !dbg !5086
  %cmp3 = icmp eq i64 %6, 0, !dbg !5088
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false, !dbg !5089

land.lhs.true:                                    ; preds = %if.end2
  %7 = load ptr, ptr %freq, align 8, !dbg !5090
  %old5 = getelementptr inbounds %struct.cpufreq_freqs, ptr %7, i32 0, i32 1, !dbg !5091
  %8 = load i32, ptr %old5, align 8, !dbg !5091
  %9 = load ptr, ptr %freq, align 8, !dbg !5092
  %new = getelementptr inbounds %struct.cpufreq_freqs, ptr %9, i32 0, i32 2, !dbg !5093
  %10 = load i32, ptr %new, align 4, !dbg !5093
  %cmp6 = icmp ult i32 %8, %10, !dbg !5094
  br i1 %cmp6, label %if.then15, label %lor.lhs.false, !dbg !5095

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end2
  %11 = load i64, ptr %val.addr, align 8, !dbg !5096
  %cmp8 = icmp eq i64 %11, 1, !dbg !5097
  br i1 %cmp8, label %land.lhs.true10, label %if.end27, !dbg !5098

land.lhs.true10:                                  ; preds = %lor.lhs.false
  %12 = load ptr, ptr %freq, align 8, !dbg !5099
  %old11 = getelementptr inbounds %struct.cpufreq_freqs, ptr %12, i32 0, i32 1, !dbg !5100
  %13 = load i32, ptr %old11, align 8, !dbg !5100
  %14 = load ptr, ptr %freq, align 8, !dbg !5101
  %new12 = getelementptr inbounds %struct.cpufreq_freqs, ptr %14, i32 0, i32 2, !dbg !5102
  %15 = load i32, ptr %new12, align 4, !dbg !5102
  %cmp13 = icmp ugt i32 %13, %15, !dbg !5103
  br i1 %cmp13, label %if.then15, label %if.end27, !dbg !5104

if.then15:                                        ; preds = %land.lhs.true10, %land.lhs.true
  %16 = load i64, ptr @loops_per_jiffy_ref, align 8, !dbg !5105
  %17 = load i32, ptr @ref_freq, align 4, !dbg !5107
  %18 = load ptr, ptr %freq, align 8, !dbg !5108
  %new16 = getelementptr inbounds %struct.cpufreq_freqs, ptr %18, i32 0, i32 2, !dbg !5109
  %19 = load i32, ptr %new16, align 4, !dbg !5109
  %call17 = call i64 @cpufreq_scale(i64 noundef %16, i32 noundef %17, i32 noundef %19) #15, !dbg !5110
  store i64 %call17, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 19), align 8, !dbg !5111
  %20 = load i64, ptr @tsc_khz_ref, align 8, !dbg !5112
  %21 = load i32, ptr @ref_freq, align 4, !dbg !5113
  %22 = load ptr, ptr %freq, align 8, !dbg !5114
  %new18 = getelementptr inbounds %struct.cpufreq_freqs, ptr %22, i32 0, i32 2, !dbg !5115
  %23 = load i32, ptr %new18, align 4, !dbg !5115
  %call19 = call i64 @cpufreq_scale(i64 noundef %20, i32 noundef %21, i32 noundef %23) #15, !dbg !5116
  %conv20 = trunc i64 %call19 to i32, !dbg !5116
  store i32 %conv20, ptr @tsc_khz, align 4, !dbg !5117
  %24 = load ptr, ptr %freq, align 8, !dbg !5118
  %flags = getelementptr inbounds %struct.cpufreq_freqs, ptr %24, i32 0, i32 3, !dbg !5120
  %25 = load i8, ptr %flags, align 8, !dbg !5120
  %conv21 = zext i8 %25 to i64, !dbg !5118
  %and = and i64 %conv21, 2, !dbg !5121
  %tobool22 = icmp ne i64 %and, 0, !dbg !5121
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !5122

if.then23:                                        ; preds = %if.then15
  call void @mark_tsc_unstable(ptr noundef @.str.17) #15, !dbg !5123
  br label %if.end24, !dbg !5123

if.end24:                                         ; preds = %if.then23, %if.then15
  %26 = load i32, ptr @tsc_khz, align 4, !dbg !5124
  %conv25 = zext i32 %26 to i64, !dbg !5124
  %27 = load ptr, ptr %freq, align 8, !dbg !5125
  %policy = getelementptr inbounds %struct.cpufreq_freqs, ptr %27, i32 0, i32 0, !dbg !5126
  %28 = load ptr, ptr %policy, align 8, !dbg !5126
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %28, i32 0, i32 4, !dbg !5127
  %29 = load i32, ptr %cpu, align 4, !dbg !5127
  %call26 = call i64 @rdtsc() #15, !dbg !5128
  call void @set_cyc2ns_scale(i64 noundef %conv25, i32 noundef %29, i64 noundef %call26) #15, !dbg !5129
  br label %if.end27, !dbg !5130

if.end27:                                         ; preds = %if.end24, %land.lhs.true10, %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !5131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5131

cleanup:                                          ; preds = %if.end27, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %freq) #16, !dbg !5132
  %30 = load i32, ptr %retval, align 4, !dbg !5132
  ret i32 %30, !dbg !5132
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @num_online_cpus() #1 align 16 !dbg !5133 {
entry:
  %call = call i32 @raw_atomic_read(ptr noundef @__num_online_cpus) #15, !dbg !5136
  ret i32 %call, !dbg !5137
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpufreq_scale(i64 noundef %old, i32 noundef %div, i32 noundef %mult) #9 align 16 !dbg !5138 {
entry:
  %old.addr = alloca i64, align 8
  %div.addr = alloca i32, align 4
  %mult.addr = alloca i32, align 4
  %result = alloca i64, align 8
  store i64 %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !5143, metadata !DIExpression()), !dbg !5147
  store i32 %div, ptr %div.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %div.addr, metadata !5144, metadata !DIExpression()), !dbg !5148
  store i32 %mult, ptr %mult.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mult.addr, metadata !5145, metadata !DIExpression()), !dbg !5149
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #16, !dbg !5150
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5146, metadata !DIExpression()), !dbg !5151
  %0 = load i64, ptr %old.addr, align 8, !dbg !5152
  %1 = load i32, ptr %mult.addr, align 4, !dbg !5153
  %conv = zext i32 %1 to i64, !dbg !5154
  %mul = mul i64 %0, %conv, !dbg !5155
  store i64 %mul, ptr %result, align 8, !dbg !5151
  %2 = load i32, ptr %div.addr, align 4, !dbg !5156
  %conv1 = zext i32 %2 to i64, !dbg !5156
  %3 = load i64, ptr %result, align 8, !dbg !5157
  %div2 = udiv i64 %3, %conv1, !dbg !5157
  store i64 %div2, ptr %result, align 8, !dbg !5157
  %4 = load i64, ptr %result, align 8, !dbg !5158
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #16, !dbg !5159
  ret i64 %4, !dbg !5160
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_cyc2ns_scale(i64 noundef %khz, i32 noundef %cpu, i64 noundef %tsc_now) #8 align 16 !dbg !5161 {
entry:
  %khz.addr = alloca i64, align 8
  %cpu.addr = alloca i32, align 4
  %tsc_now.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store i64 %khz, ptr %khz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %khz.addr, metadata !5165, metadata !DIExpression()), !dbg !5179
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5166, metadata !DIExpression()), !dbg !5180
  store i64 %tsc_now, ptr %tsc_now.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsc_now.addr, metadata !5167, metadata !DIExpression()), !dbg !5181
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5182
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5168, metadata !DIExpression()), !dbg !5183
  br label %do.body, !dbg !5184

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5185

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5186
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5169, metadata !DIExpression()), !dbg !5186
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5186
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5173, metadata !DIExpression()), !dbg !5186
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5186
  %conv = zext i1 %cmp to i32, !dbg !5186
  store i32 1, ptr %tmp, align 4, !dbg !5186
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5187
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5187
  %0 = load i32, ptr %tmp, align 4, !dbg !5186
  %call = call i64 @arch_local_irq_save() #15, !dbg !5187
  store i64 %call, ptr %flags, align 8, !dbg !5187
  br label %do.cond, !dbg !5187

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5187

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !5185

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !5185

do.end3:                                          ; preds = %do.cond2
  call void @sched_clock_idle_sleep_event() #15, !dbg !5188
  %1 = load i64, ptr %khz.addr, align 8, !dbg !5189
  %tobool = icmp ne i64 %1, 0, !dbg !5189
  br i1 %tobool, label %if.then, label %if.end, !dbg !5191

if.then:                                          ; preds = %do.end3
  %2 = load i64, ptr %khz.addr, align 8, !dbg !5192
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !5193
  %4 = load i64, ptr %tsc_now.addr, align 8, !dbg !5194
  call void @__set_cyc2ns_scale(i64 noundef %2, i32 noundef %3, i64 noundef %4) #15, !dbg !5195
  br label %if.end, !dbg !5195

if.end:                                           ; preds = %if.then, %do.end3
  call void @sched_clock_idle_wakeup_event() #15, !dbg !5196
  br label %do.body4, !dbg !5197

do.body4:                                         ; preds = %if.end
  br label %do.body5, !dbg !5198

do.body5:                                         ; preds = %do.body4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy6) #16, !dbg !5199
  call void @llvm.dbg.declare(metadata ptr %__dummy6, metadata !5174, metadata !DIExpression()), !dbg !5199
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy27) #16, !dbg !5199
  call void @llvm.dbg.declare(metadata ptr %__dummy27, metadata !5178, metadata !DIExpression()), !dbg !5199
  %cmp8 = icmp eq ptr %__dummy6, %__dummy27, !dbg !5199
  %conv9 = zext i1 %cmp8 to i32, !dbg !5199
  store i32 1, ptr %tmp10, align 4, !dbg !5199
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy27) #16, !dbg !5200
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy6) #16, !dbg !5200
  %5 = load i32, ptr %tmp10, align 4, !dbg !5199
  br label %do.body11, !dbg !5200

do.body11:                                        ; preds = %do.body5
  br label %do.cond12, !dbg !5201

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5201

do.end13:                                         ; preds = %do.cond12
  %6 = load i64, ptr %flags, align 8, !dbg !5200
  call void @arch_local_irq_restore(i64 noundef %6) #15, !dbg !5200
  br label %do.cond14, !dbg !5200

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5200

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !5198

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5198

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5203
  ret void, !dbg !5203
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #1 align 16 !dbg !5204 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5211, metadata !DIExpression()), !dbg !5212
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5213
  %call = call i32 @arch_atomic_read(ptr noundef %0) #15, !dbg !5214
  ret i32 %call, !dbg !5215
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #1 align 16 !dbg !5216 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5219, metadata !DIExpression()), !dbg !5220
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5221
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5221
  %1 = load volatile i32, ptr %counter, align 4, !dbg !5221
  ret i32 %1, !dbg !5222
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5223 dso_local void @sched_clock_idle_sleep_event() #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__set_cyc2ns_scale(i64 noundef %khz, i32 noundef %cpu, i64 noundef %tsc_now) #8 align 16 !dbg !5224 {
entry:
  %khz.addr = alloca i64, align 8
  %cpu.addr = alloca i32, align 4
  %tsc_now.addr = alloca i64, align 8
  %ns_now = alloca i64, align 8
  %data = alloca %struct.cyc2ns_data, align 8
  %c2n = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp8 = alloca ptr, align 8
  store i64 %khz, ptr %khz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %khz.addr, metadata !5226, metadata !DIExpression()), !dbg !5237
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5227, metadata !DIExpression()), !dbg !5238
  store i64 %tsc_now, ptr %tsc_now.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsc_now.addr, metadata !5228, metadata !DIExpression()), !dbg !5239
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns_now) #16, !dbg !5240
  call void @llvm.dbg.declare(metadata ptr %ns_now, metadata !5229, metadata !DIExpression()), !dbg !5241
  call void @llvm.lifetime.start.p0(i64 16, ptr %data) #16, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5230, metadata !DIExpression()), !dbg !5243
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2n) #16, !dbg !5244
  call void @llvm.dbg.declare(metadata ptr %c2n, metadata !5231, metadata !DIExpression()), !dbg !5245
  %0 = load i64, ptr %tsc_now.addr, align 8, !dbg !5246
  %call = call i64 @cycles_2_ns(i64 noundef %0) #15, !dbg !5247
  store i64 %call, ptr %ns_now, align 8, !dbg !5248
  %cyc2ns_mul = getelementptr inbounds %struct.cyc2ns_data, ptr %data, i32 0, i32 0, !dbg !5249
  %cyc2ns_shift = getelementptr inbounds %struct.cyc2ns_data, ptr %data, i32 0, i32 1, !dbg !5250
  %1 = load i64, ptr %khz.addr, align 8, !dbg !5251
  %conv = trunc i64 %1 to i32, !dbg !5251
  call void @clocks_calc_mult_shift(ptr noundef %cyc2ns_mul, ptr noundef %cyc2ns_shift, i32 noundef %conv, i32 noundef 1000000, i32 noundef 0) #15, !dbg !5252
  %cyc2ns_shift1 = getelementptr inbounds %struct.cyc2ns_data, ptr %data, i32 0, i32 1, !dbg !5253
  %2 = load i32, ptr %cyc2ns_shift1, align 4, !dbg !5253
  %cmp = icmp eq i32 %2, 32, !dbg !5255
  br i1 %cmp, label %if.then, label %if.end, !dbg !5256

if.then:                                          ; preds = %entry
  %cyc2ns_shift3 = getelementptr inbounds %struct.cyc2ns_data, ptr %data, i32 0, i32 1, !dbg !5257
  store i32 31, ptr %cyc2ns_shift3, align 4, !dbg !5259
  %cyc2ns_mul4 = getelementptr inbounds %struct.cyc2ns_data, ptr %data, i32 0, i32 0, !dbg !5260
  %3 = load i32, ptr %cyc2ns_mul4, align 8, !dbg !5261
  %shr = lshr i32 %3, 1, !dbg !5261
  store i32 %shr, ptr %cyc2ns_mul4, align 8, !dbg !5261
  br label %if.end, !dbg !5262

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, ptr %ns_now, align 8, !dbg !5263
  %5 = load i64, ptr %tsc_now.addr, align 8, !dbg !5264
  %cyc2ns_mul5 = getelementptr inbounds %struct.cyc2ns_data, ptr %data, i32 0, i32 0, !dbg !5265
  %6 = load i32, ptr %cyc2ns_mul5, align 8, !dbg !5265
  %cyc2ns_shift6 = getelementptr inbounds %struct.cyc2ns_data, ptr %data, i32 0, i32 1, !dbg !5266
  %7 = load i32, ptr %cyc2ns_shift6, align 4, !dbg !5266
  %call7 = call i64 @mul_u64_u32_shr(i64 noundef %5, i32 noundef %6, i32 noundef %7) #15, !dbg !5267
  %sub = sub i64 %4, %call7, !dbg !5268
  %cyc2ns_offset = getelementptr inbounds %struct.cyc2ns_data, ptr %data, i32 0, i32 2, !dbg !5269
  store i64 %sub, ptr %cyc2ns_offset, align 8, !dbg !5270
  br label %do.body, !dbg !5271

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5272
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5232, metadata !DIExpression()), !dbg !5272
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5272
  %8 = load ptr, ptr %__vpp_verify, align 8, !dbg !5272
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !5271
  br label %do.cond, !dbg !5272

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5272

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !5273
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5235, metadata !DIExpression()), !dbg !5273
  store i64 ptrtoint (ptr @cyc2ns to i64), ptr %__ptr, align 8, !dbg !5273
  %9 = load i64, ptr %__ptr, align 8, !dbg !5273
  %10 = load i32, ptr %cpu.addr, align 4, !dbg !5273
  %idxprom = sext i32 %10 to i64, !dbg !5273
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5273
  %11 = load i64, ptr %arrayidx, align 8, !dbg !5273
  %add = add i64 %9, %11, !dbg !5273
  %12 = inttoptr i64 %add to ptr, !dbg !5273
  store ptr %12, ptr %tmp8, align 8, !dbg !5273
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !5271
  %13 = load ptr, ptr %tmp8, align 8, !dbg !5273
  store ptr %13, ptr %tmp, align 8, !dbg !5272
  %14 = load ptr, ptr %tmp, align 8, !dbg !5271
  store ptr %14, ptr %c2n, align 8, !dbg !5274
  %15 = load ptr, ptr %c2n, align 8, !dbg !5275
  %seq = getelementptr inbounds %struct.cyc2ns, ptr %15, i32 0, i32 1, !dbg !5276
  call void @raw_write_seqcount_latch(ptr noundef %seq) #15, !dbg !5277
  %16 = load ptr, ptr %c2n, align 8, !dbg !5278
  %data9 = getelementptr inbounds %struct.cyc2ns, ptr %16, i32 0, i32 0, !dbg !5279
  %arrayidx10 = getelementptr [2 x %struct.cyc2ns_data], ptr %data9, i64 0, i64 0, !dbg !5278
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx10, ptr align 8 %data, i64 16, i1 false), !dbg !5280
  %17 = load ptr, ptr %c2n, align 8, !dbg !5281
  %seq11 = getelementptr inbounds %struct.cyc2ns, ptr %17, i32 0, i32 1, !dbg !5282
  call void @raw_write_seqcount_latch(ptr noundef %seq11) #15, !dbg !5283
  %18 = load ptr, ptr %c2n, align 8, !dbg !5284
  %data12 = getelementptr inbounds %struct.cyc2ns, ptr %18, i32 0, i32 0, !dbg !5285
  %arrayidx13 = getelementptr [2 x %struct.cyc2ns_data], ptr %data12, i64 0, i64 1, !dbg !5284
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx13, ptr align 8 %data, i64 16, i1 false), !dbg !5286
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2n) #16, !dbg !5287
  call void @llvm.lifetime.end.p0(i64 16, ptr %data) #16, !dbg !5287
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns_now) #16, !dbg !5287
  ret void, !dbg !5287
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5288 dso_local void @sched_clock_idle_wakeup_event() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5289 dso_local void @clocks_calc_mult_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_write_seqcount_latch(ptr noundef %s) #1 align 16 !dbg !5292 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5297, metadata !DIExpression()), !dbg !5298
  br label %do.body, !dbg !5299

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5300

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5302

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5300, !srcloc !5304
  br label %do.end2, !dbg !5300

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5305
  %seqcount = getelementptr inbounds %struct.seqcount_latch_t, ptr %0, i32 0, i32 0, !dbg !5306
  %sequence = getelementptr inbounds %struct.seqcount, ptr %seqcount, i32 0, i32 0, !dbg !5307
  %1 = load i32, ptr %sequence, align 4, !dbg !5308
  %inc = add i32 %1, 1, !dbg !5308
  store i32 %inc, ptr %sequence, align 4, !dbg !5308
  br label %do.body3, !dbg !5309

do.body3:                                         ; preds = %do.end2
  br label %do.body4, !dbg !5310

do.body4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !5312

do.end5:                                          ; preds = %do.body4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5310, !srcloc !5314
  br label %do.end6, !dbg !5310

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5315
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @read_tsc(ptr noundef %cs) #8 align 16 !dbg !5316 {
entry:
  %cs.addr = alloca ptr, align 8
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !5318, metadata !DIExpression()), !dbg !5319
  %call = call i64 @rdtsc_ordered() #15, !dbg !5320
  ret i64 %call, !dbg !5321
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tsc_cs_enable(ptr noundef %cs) #8 align 16 !dbg !5322 {
entry:
  %cs.addr = alloca ptr, align 8
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !5324, metadata !DIExpression()), !dbg !5325
  call void @vclocks_set_used(i32 noundef 1) #15, !dbg !5326
  ret i32 0, !dbg !5327
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tsc_resume(ptr noundef %cs) #8 align 16 !dbg !5328 {
entry:
  %cs.addr = alloca ptr, align 8
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !5330, metadata !DIExpression()), !dbg !5331
  call void @tsc_verify_tsc_adjust(i1 noundef zeroext true) #15, !dbg !5332
  ret void, !dbg !5333
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tsc_cs_mark_unstable(ptr noundef %cs) #8 align 16 !dbg !5334 {
entry:
  %cs.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !5336, metadata !DIExpression()), !dbg !5337
  %0 = load i32, ptr @tsc_unstable, align 4, !dbg !5338
  %tobool = icmp ne i32 %0, 0, !dbg !5338
  br i1 %tobool, label %if.then, label %if.end, !dbg !5340

if.then:                                          ; preds = %entry
  br label %return, !dbg !5341

if.end:                                           ; preds = %entry
  store i32 1, ptr @tsc_unstable, align 4, !dbg !5342
  %call = call zeroext i1 @using_native_sched_clock() #15, !dbg !5343
  br i1 %call, label %if.then1, label %if.end2, !dbg !5345

if.then1:                                         ; preds = %if.end
  call void @clear_sched_clock_stable() #15, !dbg !5346
  br label %if.end2, !dbg !5346

if.end2:                                          ; preds = %if.then1, %if.end
  call void @disable_sched_clock_irqtime() #15, !dbg !5347
  br label %do.body, !dbg !5348

do.body:                                          ; preds = %if.end2
  br label %do.end, !dbg !5350

do.end:                                           ; preds = %do.body
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.19) #17, !dbg !5348
  store i32 %call3, ptr %tmp, align 4, !dbg !5350
  %1 = load i32, ptr %tmp, align 4, !dbg !5348
  br label %return, !dbg !5352

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !5352
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tsc_cs_tick_stable(ptr noundef %cs) #8 align 16 !dbg !5353 {
entry:
  %cs.addr = alloca ptr, align 8
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !5355, metadata !DIExpression()), !dbg !5356
  %0 = load i32, ptr @tsc_unstable, align 4, !dbg !5357
  %tobool = icmp ne i32 %0, 0, !dbg !5357
  br i1 %tobool, label %if.then, label %if.end, !dbg !5359

if.then:                                          ; preds = %entry
  br label %if.end2, !dbg !5360

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @using_native_sched_clock() #15, !dbg !5361
  br i1 %call, label %if.then1, label %if.end2, !dbg !5363

if.then1:                                         ; preds = %if.end
  call void @sched_clock_tick_stable() #15, !dbg !5364
  br label %if.end2, !dbg !5364

if.end2:                                          ; preds = %if.then, %if.then1, %if.end
  ret void, !dbg !5365
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rdtsc_ordered() #1 align 16 !dbg !5366 {
entry:
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #16, !dbg !5370
  call void @llvm.dbg.declare(metadata ptr %low, metadata !5368, metadata !DIExpression()), !dbg !5370
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #16, !dbg !5370
  call void @llvm.dbg.declare(metadata ptr %high, metadata !5369, metadata !DIExpression()), !dbg !5370
  %0 = call { i64, i64 } asm sideeffect "# ALT: oldinstr2\0A661:\0A\09rdtsc\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (20*32+ 2)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ( 1*32+27)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence; rdtsc\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09rdtscp\0A6652:\0A.popsection\0A", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5371, !srcloc !5372
  %asmresult = extractvalue { i64, i64 } %0, 0, !dbg !5371
  %asmresult1 = extractvalue { i64, i64 } %0, 1, !dbg !5371
  store i64 %asmresult, ptr %low, align 8, !dbg !5371
  store i64 %asmresult1, ptr %high, align 8, !dbg !5371
  %1 = load i64, ptr %low, align 8, !dbg !5373
  %2 = load i64, ptr %high, align 8, !dbg !5373
  %shl = shl i64 %2, 32, !dbg !5373
  %or = or i64 %1, %shl, !dbg !5373
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #16, !dbg !5374
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #16, !dbg !5374
  ret i64 %or, !dbg !5375
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vclocks_set_used(i32 noundef %which) #9 align 16 !dbg !5376 {
entry:
  %which.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %which, ptr %which.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %which.addr, metadata !5379, metadata !DIExpression()), !dbg !5380
  br label %do.body, !dbg !5381

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5382

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5384

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5382

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !5386

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5389

do.end4:                                          ; preds = %do.body3
  %0 = load volatile i32, ptr @vclocks_used, align 4, !dbg !5386
  store i32 %0, ptr %tmp, align 4, !dbg !5389
  %1 = load i32, ptr %tmp, align 4, !dbg !5386
  %2 = load i32, ptr %which.addr, align 4, !dbg !5391
  %shl = shl i32 1, %2, !dbg !5391
  %or = or i32 %1, %shl, !dbg !5391
  store volatile i32 %or, ptr @vclocks_used, align 4, !dbg !5391
  br label %do.end5, !dbg !5391

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !5382

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5392
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5393 dso_local void @tsc_verify_tsc_adjust(i1 noundef zeroext) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5396 dso_local void @sched_clock_tick_stable() #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !5397 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5401, metadata !DIExpression()), !dbg !5403
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5402, metadata !DIExpression()), !dbg !5404
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5405
  %and = and i64 %0, 63, !dbg !5406
  %shl = shl i64 1, %and, !dbg !5407
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5408
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5409
  %shr = ashr i64 %2, 6, !dbg !5410
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5408
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5408
  %and1 = and i64 %shl, %3, !dbg !5411
  %cmp = icmp ne i64 %and1, 0, !dbg !5412
  ret i1 %cmp, !dbg !5413
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !5414 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5416, metadata !DIExpression()), !dbg !5419
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5417, metadata !DIExpression()), !dbg !5420
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !5421
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5418, metadata !DIExpression()), !dbg !5422
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5423
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5424
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !5425, !srcloc !5426
  %3 = icmp ult i8 %2, 2, !dbg !5425
  call void @llvm.assume(i1 %3), !dbg !5425
  store i8 %2, ptr %oldbit, align 1, !dbg !5425
  %4 = load i8, ptr %oldbit, align 1, !dbg !5427, !range !1777, !noundef !590
  %tobool = trunc i8 %4 to i1, !dbg !5427
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !5428
  ret i1 %tobool, !dbg !5429
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #1 align 16 !dbg !5430 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5435, metadata !DIExpression()), !dbg !5437
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5436, metadata !DIExpression()), !dbg !5438
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5439
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5439
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !5439

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !5439
  %cmp = icmp ule i32 %2, 64, !dbg !5439
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !5439

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5439
  %cmp2 = icmp ugt i32 %3, 0, !dbg !5439
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5441

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !5442
  %5 = load i64, ptr %4, align 8, !dbg !5443
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !5444
  %sub = sub i32 0, %6, !dbg !5444
  %and = and i32 %sub, 63, !dbg !5444
  %sh_prom = zext i32 %and to i64, !dbg !5444
  %shr = lshr i64 -1, %sh_prom, !dbg !5444
  %and3 = and i64 %5, %shr, !dbg !5445
  %call = call i64 @hweight_long(i64 noundef %and3) #15, !dbg !5446
  %conv = trunc i64 %call to i32, !dbg !5446
  store i32 %conv, ptr %retval, align 4, !dbg !5447
  br label %return, !dbg !5447

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !5448
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !5449
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #15, !dbg !5450
  store i32 %call4, ptr %retval, align 4, !dbg !5451
  br label %return, !dbg !5451

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !5452
  ret i32 %9, !dbg !5452
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #1 align 16 !dbg !5453 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !5456, metadata !DIExpression()), !dbg !5457
  %0 = load i64, ptr %w.addr, align 8, !dbg !5458
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5458
  br i1 %1, label %cond.true, label %cond.false, !dbg !5458

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !5458
  %and = and i64 %2, 1, !dbg !5458
  %tobool = icmp ne i64 %and, 0, !dbg !5458
  %lnot = xor i1 %tobool, true, !dbg !5458
  %lnot1 = xor i1 %lnot, true, !dbg !5458
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5458
  %3 = load i64, ptr %w.addr, align 8, !dbg !5458
  %and2 = and i64 %3, 2, !dbg !5458
  %tobool3 = icmp ne i64 %and2, 0, !dbg !5458
  %lnot4 = xor i1 %tobool3, true, !dbg !5458
  %lnot6 = xor i1 %lnot4, true, !dbg !5458
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5458
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !5458
  %4 = load i64, ptr %w.addr, align 8, !dbg !5458
  %and8 = and i64 %4, 4, !dbg !5458
  %tobool9 = icmp ne i64 %and8, 0, !dbg !5458
  %lnot10 = xor i1 %tobool9, true, !dbg !5458
  %lnot12 = xor i1 %lnot10, true, !dbg !5458
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !5458
  %add14 = add i32 %add, %lnot.ext13, !dbg !5458
  %5 = load i64, ptr %w.addr, align 8, !dbg !5458
  %and15 = and i64 %5, 8, !dbg !5458
  %tobool16 = icmp ne i64 %and15, 0, !dbg !5458
  %lnot17 = xor i1 %tobool16, true, !dbg !5458
  %lnot19 = xor i1 %lnot17, true, !dbg !5458
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5458
  %add21 = add i32 %add14, %lnot.ext20, !dbg !5458
  %6 = load i64, ptr %w.addr, align 8, !dbg !5458
  %and22 = and i64 %6, 16, !dbg !5458
  %tobool23 = icmp ne i64 %and22, 0, !dbg !5458
  %lnot24 = xor i1 %tobool23, true, !dbg !5458
  %lnot26 = xor i1 %lnot24, true, !dbg !5458
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !5458
  %add28 = add i32 %add21, %lnot.ext27, !dbg !5458
  %7 = load i64, ptr %w.addr, align 8, !dbg !5458
  %and29 = and i64 %7, 32, !dbg !5458
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5458
  %lnot31 = xor i1 %tobool30, true, !dbg !5458
  %lnot33 = xor i1 %lnot31, true, !dbg !5458
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !5458
  %add35 = add i32 %add28, %lnot.ext34, !dbg !5458
  %8 = load i64, ptr %w.addr, align 8, !dbg !5458
  %and36 = and i64 %8, 64, !dbg !5458
  %tobool37 = icmp ne i64 %and36, 0, !dbg !5458
  %lnot38 = xor i1 %tobool37, true, !dbg !5458
  %lnot40 = xor i1 %lnot38, true, !dbg !5458
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !5458
  %add42 = add i32 %add35, %lnot.ext41, !dbg !5458
  %9 = load i64, ptr %w.addr, align 8, !dbg !5458
  %and43 = and i64 %9, 128, !dbg !5458
  %tobool44 = icmp ne i64 %and43, 0, !dbg !5458
  %lnot45 = xor i1 %tobool44, true, !dbg !5458
  %lnot47 = xor i1 %lnot45, true, !dbg !5458
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !5458
  %add49 = add i32 %add42, %lnot.ext48, !dbg !5458
  %10 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr = lshr i64 %10, 8, !dbg !5458
  %and50 = and i64 %shr, 1, !dbg !5458
  %tobool51 = icmp ne i64 %and50, 0, !dbg !5458
  %lnot52 = xor i1 %tobool51, true, !dbg !5458
  %lnot54 = xor i1 %lnot52, true, !dbg !5458
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5458
  %11 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr56 = lshr i64 %11, 8, !dbg !5458
  %and57 = and i64 %shr56, 2, !dbg !5458
  %tobool58 = icmp ne i64 %and57, 0, !dbg !5458
  %lnot59 = xor i1 %tobool58, true, !dbg !5458
  %lnot61 = xor i1 %lnot59, true, !dbg !5458
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !5458
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !5458
  %12 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr64 = lshr i64 %12, 8, !dbg !5458
  %and65 = and i64 %shr64, 4, !dbg !5458
  %tobool66 = icmp ne i64 %and65, 0, !dbg !5458
  %lnot67 = xor i1 %tobool66, true, !dbg !5458
  %lnot69 = xor i1 %lnot67, true, !dbg !5458
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !5458
  %add71 = add i32 %add63, %lnot.ext70, !dbg !5458
  %13 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr72 = lshr i64 %13, 8, !dbg !5458
  %and73 = and i64 %shr72, 8, !dbg !5458
  %tobool74 = icmp ne i64 %and73, 0, !dbg !5458
  %lnot75 = xor i1 %tobool74, true, !dbg !5458
  %lnot77 = xor i1 %lnot75, true, !dbg !5458
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !5458
  %add79 = add i32 %add71, %lnot.ext78, !dbg !5458
  %14 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr80 = lshr i64 %14, 8, !dbg !5458
  %and81 = and i64 %shr80, 16, !dbg !5458
  %tobool82 = icmp ne i64 %and81, 0, !dbg !5458
  %lnot83 = xor i1 %tobool82, true, !dbg !5458
  %lnot85 = xor i1 %lnot83, true, !dbg !5458
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !5458
  %add87 = add i32 %add79, %lnot.ext86, !dbg !5458
  %15 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr88 = lshr i64 %15, 8, !dbg !5458
  %and89 = and i64 %shr88, 32, !dbg !5458
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5458
  %lnot91 = xor i1 %tobool90, true, !dbg !5458
  %lnot93 = xor i1 %lnot91, true, !dbg !5458
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !5458
  %add95 = add i32 %add87, %lnot.ext94, !dbg !5458
  %16 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr96 = lshr i64 %16, 8, !dbg !5458
  %and97 = and i64 %shr96, 64, !dbg !5458
  %tobool98 = icmp ne i64 %and97, 0, !dbg !5458
  %lnot99 = xor i1 %tobool98, true, !dbg !5458
  %lnot101 = xor i1 %lnot99, true, !dbg !5458
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !5458
  %add103 = add i32 %add95, %lnot.ext102, !dbg !5458
  %17 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr104 = lshr i64 %17, 8, !dbg !5458
  %and105 = and i64 %shr104, 128, !dbg !5458
  %tobool106 = icmp ne i64 %and105, 0, !dbg !5458
  %lnot107 = xor i1 %tobool106, true, !dbg !5458
  %lnot109 = xor i1 %lnot107, true, !dbg !5458
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !5458
  %add111 = add i32 %add103, %lnot.ext110, !dbg !5458
  %add112 = add i32 %add49, %add111, !dbg !5458
  %18 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr113 = lshr i64 %18, 16, !dbg !5458
  %and114 = and i64 %shr113, 1, !dbg !5458
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5458
  %lnot116 = xor i1 %tobool115, true, !dbg !5458
  %lnot118 = xor i1 %lnot116, true, !dbg !5458
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !5458
  %19 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr120 = lshr i64 %19, 16, !dbg !5458
  %and121 = and i64 %shr120, 2, !dbg !5458
  %tobool122 = icmp ne i64 %and121, 0, !dbg !5458
  %lnot123 = xor i1 %tobool122, true, !dbg !5458
  %lnot125 = xor i1 %lnot123, true, !dbg !5458
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !5458
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !5458
  %20 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr128 = lshr i64 %20, 16, !dbg !5458
  %and129 = and i64 %shr128, 4, !dbg !5458
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5458
  %lnot131 = xor i1 %tobool130, true, !dbg !5458
  %lnot133 = xor i1 %lnot131, true, !dbg !5458
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !5458
  %add135 = add i32 %add127, %lnot.ext134, !dbg !5458
  %21 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr136 = lshr i64 %21, 16, !dbg !5458
  %and137 = and i64 %shr136, 8, !dbg !5458
  %tobool138 = icmp ne i64 %and137, 0, !dbg !5458
  %lnot139 = xor i1 %tobool138, true, !dbg !5458
  %lnot141 = xor i1 %lnot139, true, !dbg !5458
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !5458
  %add143 = add i32 %add135, %lnot.ext142, !dbg !5458
  %22 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr144 = lshr i64 %22, 16, !dbg !5458
  %and145 = and i64 %shr144, 16, !dbg !5458
  %tobool146 = icmp ne i64 %and145, 0, !dbg !5458
  %lnot147 = xor i1 %tobool146, true, !dbg !5458
  %lnot149 = xor i1 %lnot147, true, !dbg !5458
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !5458
  %add151 = add i32 %add143, %lnot.ext150, !dbg !5458
  %23 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr152 = lshr i64 %23, 16, !dbg !5458
  %and153 = and i64 %shr152, 32, !dbg !5458
  %tobool154 = icmp ne i64 %and153, 0, !dbg !5458
  %lnot155 = xor i1 %tobool154, true, !dbg !5458
  %lnot157 = xor i1 %lnot155, true, !dbg !5458
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !5458
  %add159 = add i32 %add151, %lnot.ext158, !dbg !5458
  %24 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr160 = lshr i64 %24, 16, !dbg !5458
  %and161 = and i64 %shr160, 64, !dbg !5458
  %tobool162 = icmp ne i64 %and161, 0, !dbg !5458
  %lnot163 = xor i1 %tobool162, true, !dbg !5458
  %lnot165 = xor i1 %lnot163, true, !dbg !5458
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !5458
  %add167 = add i32 %add159, %lnot.ext166, !dbg !5458
  %25 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr168 = lshr i64 %25, 16, !dbg !5458
  %and169 = and i64 %shr168, 128, !dbg !5458
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5458
  %lnot171 = xor i1 %tobool170, true, !dbg !5458
  %lnot173 = xor i1 %lnot171, true, !dbg !5458
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !5458
  %add175 = add i32 %add167, %lnot.ext174, !dbg !5458
  %26 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr176 = lshr i64 %26, 16, !dbg !5458
  %shr177 = lshr i64 %shr176, 8, !dbg !5458
  %and178 = and i64 %shr177, 1, !dbg !5458
  %tobool179 = icmp ne i64 %and178, 0, !dbg !5458
  %lnot180 = xor i1 %tobool179, true, !dbg !5458
  %lnot182 = xor i1 %lnot180, true, !dbg !5458
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !5458
  %27 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr184 = lshr i64 %27, 16, !dbg !5458
  %shr185 = lshr i64 %shr184, 8, !dbg !5458
  %and186 = and i64 %shr185, 2, !dbg !5458
  %tobool187 = icmp ne i64 %and186, 0, !dbg !5458
  %lnot188 = xor i1 %tobool187, true, !dbg !5458
  %lnot190 = xor i1 %lnot188, true, !dbg !5458
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !5458
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !5458
  %28 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr193 = lshr i64 %28, 16, !dbg !5458
  %shr194 = lshr i64 %shr193, 8, !dbg !5458
  %and195 = and i64 %shr194, 4, !dbg !5458
  %tobool196 = icmp ne i64 %and195, 0, !dbg !5458
  %lnot197 = xor i1 %tobool196, true, !dbg !5458
  %lnot199 = xor i1 %lnot197, true, !dbg !5458
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !5458
  %add201 = add i32 %add192, %lnot.ext200, !dbg !5458
  %29 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr202 = lshr i64 %29, 16, !dbg !5458
  %shr203 = lshr i64 %shr202, 8, !dbg !5458
  %and204 = and i64 %shr203, 8, !dbg !5458
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5458
  %lnot206 = xor i1 %tobool205, true, !dbg !5458
  %lnot208 = xor i1 %lnot206, true, !dbg !5458
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !5458
  %add210 = add i32 %add201, %lnot.ext209, !dbg !5458
  %30 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr211 = lshr i64 %30, 16, !dbg !5458
  %shr212 = lshr i64 %shr211, 8, !dbg !5458
  %and213 = and i64 %shr212, 16, !dbg !5458
  %tobool214 = icmp ne i64 %and213, 0, !dbg !5458
  %lnot215 = xor i1 %tobool214, true, !dbg !5458
  %lnot217 = xor i1 %lnot215, true, !dbg !5458
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !5458
  %add219 = add i32 %add210, %lnot.ext218, !dbg !5458
  %31 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr220 = lshr i64 %31, 16, !dbg !5458
  %shr221 = lshr i64 %shr220, 8, !dbg !5458
  %and222 = and i64 %shr221, 32, !dbg !5458
  %tobool223 = icmp ne i64 %and222, 0, !dbg !5458
  %lnot224 = xor i1 %tobool223, true, !dbg !5458
  %lnot226 = xor i1 %lnot224, true, !dbg !5458
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !5458
  %add228 = add i32 %add219, %lnot.ext227, !dbg !5458
  %32 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr229 = lshr i64 %32, 16, !dbg !5458
  %shr230 = lshr i64 %shr229, 8, !dbg !5458
  %and231 = and i64 %shr230, 64, !dbg !5458
  %tobool232 = icmp ne i64 %and231, 0, !dbg !5458
  %lnot233 = xor i1 %tobool232, true, !dbg !5458
  %lnot235 = xor i1 %lnot233, true, !dbg !5458
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !5458
  %add237 = add i32 %add228, %lnot.ext236, !dbg !5458
  %33 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr238 = lshr i64 %33, 16, !dbg !5458
  %shr239 = lshr i64 %shr238, 8, !dbg !5458
  %and240 = and i64 %shr239, 128, !dbg !5458
  %tobool241 = icmp ne i64 %and240, 0, !dbg !5458
  %lnot242 = xor i1 %tobool241, true, !dbg !5458
  %lnot244 = xor i1 %lnot242, true, !dbg !5458
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !5458
  %add246 = add i32 %add237, %lnot.ext245, !dbg !5458
  %add247 = add i32 %add175, %add246, !dbg !5458
  %add248 = add i32 %add112, %add247, !dbg !5458
  %34 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr249 = lshr i64 %34, 32, !dbg !5458
  %and250 = and i64 %shr249, 1, !dbg !5458
  %tobool251 = icmp ne i64 %and250, 0, !dbg !5458
  %lnot252 = xor i1 %tobool251, true, !dbg !5458
  %lnot254 = xor i1 %lnot252, true, !dbg !5458
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !5458
  %35 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr256 = lshr i64 %35, 32, !dbg !5458
  %and257 = and i64 %shr256, 2, !dbg !5458
  %tobool258 = icmp ne i64 %and257, 0, !dbg !5458
  %lnot259 = xor i1 %tobool258, true, !dbg !5458
  %lnot261 = xor i1 %lnot259, true, !dbg !5458
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !5458
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !5458
  %36 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr264 = lshr i64 %36, 32, !dbg !5458
  %and265 = and i64 %shr264, 4, !dbg !5458
  %tobool266 = icmp ne i64 %and265, 0, !dbg !5458
  %lnot267 = xor i1 %tobool266, true, !dbg !5458
  %lnot269 = xor i1 %lnot267, true, !dbg !5458
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !5458
  %add271 = add i32 %add263, %lnot.ext270, !dbg !5458
  %37 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr272 = lshr i64 %37, 32, !dbg !5458
  %and273 = and i64 %shr272, 8, !dbg !5458
  %tobool274 = icmp ne i64 %and273, 0, !dbg !5458
  %lnot275 = xor i1 %tobool274, true, !dbg !5458
  %lnot277 = xor i1 %lnot275, true, !dbg !5458
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !5458
  %add279 = add i32 %add271, %lnot.ext278, !dbg !5458
  %38 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr280 = lshr i64 %38, 32, !dbg !5458
  %and281 = and i64 %shr280, 16, !dbg !5458
  %tobool282 = icmp ne i64 %and281, 0, !dbg !5458
  %lnot283 = xor i1 %tobool282, true, !dbg !5458
  %lnot285 = xor i1 %lnot283, true, !dbg !5458
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !5458
  %add287 = add i32 %add279, %lnot.ext286, !dbg !5458
  %39 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr288 = lshr i64 %39, 32, !dbg !5458
  %and289 = and i64 %shr288, 32, !dbg !5458
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5458
  %lnot291 = xor i1 %tobool290, true, !dbg !5458
  %lnot293 = xor i1 %lnot291, true, !dbg !5458
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !5458
  %add295 = add i32 %add287, %lnot.ext294, !dbg !5458
  %40 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr296 = lshr i64 %40, 32, !dbg !5458
  %and297 = and i64 %shr296, 64, !dbg !5458
  %tobool298 = icmp ne i64 %and297, 0, !dbg !5458
  %lnot299 = xor i1 %tobool298, true, !dbg !5458
  %lnot301 = xor i1 %lnot299, true, !dbg !5458
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !5458
  %add303 = add i32 %add295, %lnot.ext302, !dbg !5458
  %41 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr304 = lshr i64 %41, 32, !dbg !5458
  %and305 = and i64 %shr304, 128, !dbg !5458
  %tobool306 = icmp ne i64 %and305, 0, !dbg !5458
  %lnot307 = xor i1 %tobool306, true, !dbg !5458
  %lnot309 = xor i1 %lnot307, true, !dbg !5458
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !5458
  %add311 = add i32 %add303, %lnot.ext310, !dbg !5458
  %42 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr312 = lshr i64 %42, 32, !dbg !5458
  %shr313 = lshr i64 %shr312, 8, !dbg !5458
  %and314 = and i64 %shr313, 1, !dbg !5458
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5458
  %lnot316 = xor i1 %tobool315, true, !dbg !5458
  %lnot318 = xor i1 %lnot316, true, !dbg !5458
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !5458
  %43 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr320 = lshr i64 %43, 32, !dbg !5458
  %shr321 = lshr i64 %shr320, 8, !dbg !5458
  %and322 = and i64 %shr321, 2, !dbg !5458
  %tobool323 = icmp ne i64 %and322, 0, !dbg !5458
  %lnot324 = xor i1 %tobool323, true, !dbg !5458
  %lnot326 = xor i1 %lnot324, true, !dbg !5458
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !5458
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !5458
  %44 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr329 = lshr i64 %44, 32, !dbg !5458
  %shr330 = lshr i64 %shr329, 8, !dbg !5458
  %and331 = and i64 %shr330, 4, !dbg !5458
  %tobool332 = icmp ne i64 %and331, 0, !dbg !5458
  %lnot333 = xor i1 %tobool332, true, !dbg !5458
  %lnot335 = xor i1 %lnot333, true, !dbg !5458
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !5458
  %add337 = add i32 %add328, %lnot.ext336, !dbg !5458
  %45 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr338 = lshr i64 %45, 32, !dbg !5458
  %shr339 = lshr i64 %shr338, 8, !dbg !5458
  %and340 = and i64 %shr339, 8, !dbg !5458
  %tobool341 = icmp ne i64 %and340, 0, !dbg !5458
  %lnot342 = xor i1 %tobool341, true, !dbg !5458
  %lnot344 = xor i1 %lnot342, true, !dbg !5458
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !5458
  %add346 = add i32 %add337, %lnot.ext345, !dbg !5458
  %46 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr347 = lshr i64 %46, 32, !dbg !5458
  %shr348 = lshr i64 %shr347, 8, !dbg !5458
  %and349 = and i64 %shr348, 16, !dbg !5458
  %tobool350 = icmp ne i64 %and349, 0, !dbg !5458
  %lnot351 = xor i1 %tobool350, true, !dbg !5458
  %lnot353 = xor i1 %lnot351, true, !dbg !5458
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !5458
  %add355 = add i32 %add346, %lnot.ext354, !dbg !5458
  %47 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr356 = lshr i64 %47, 32, !dbg !5458
  %shr357 = lshr i64 %shr356, 8, !dbg !5458
  %and358 = and i64 %shr357, 32, !dbg !5458
  %tobool359 = icmp ne i64 %and358, 0, !dbg !5458
  %lnot360 = xor i1 %tobool359, true, !dbg !5458
  %lnot362 = xor i1 %lnot360, true, !dbg !5458
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !5458
  %add364 = add i32 %add355, %lnot.ext363, !dbg !5458
  %48 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr365 = lshr i64 %48, 32, !dbg !5458
  %shr366 = lshr i64 %shr365, 8, !dbg !5458
  %and367 = and i64 %shr366, 64, !dbg !5458
  %tobool368 = icmp ne i64 %and367, 0, !dbg !5458
  %lnot369 = xor i1 %tobool368, true, !dbg !5458
  %lnot371 = xor i1 %lnot369, true, !dbg !5458
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !5458
  %add373 = add i32 %add364, %lnot.ext372, !dbg !5458
  %49 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr374 = lshr i64 %49, 32, !dbg !5458
  %shr375 = lshr i64 %shr374, 8, !dbg !5458
  %and376 = and i64 %shr375, 128, !dbg !5458
  %tobool377 = icmp ne i64 %and376, 0, !dbg !5458
  %lnot378 = xor i1 %tobool377, true, !dbg !5458
  %lnot380 = xor i1 %lnot378, true, !dbg !5458
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !5458
  %add382 = add i32 %add373, %lnot.ext381, !dbg !5458
  %add383 = add i32 %add311, %add382, !dbg !5458
  %50 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr384 = lshr i64 %50, 32, !dbg !5458
  %shr385 = lshr i64 %shr384, 16, !dbg !5458
  %and386 = and i64 %shr385, 1, !dbg !5458
  %tobool387 = icmp ne i64 %and386, 0, !dbg !5458
  %lnot388 = xor i1 %tobool387, true, !dbg !5458
  %lnot390 = xor i1 %lnot388, true, !dbg !5458
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !5458
  %51 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr392 = lshr i64 %51, 32, !dbg !5458
  %shr393 = lshr i64 %shr392, 16, !dbg !5458
  %and394 = and i64 %shr393, 2, !dbg !5458
  %tobool395 = icmp ne i64 %and394, 0, !dbg !5458
  %lnot396 = xor i1 %tobool395, true, !dbg !5458
  %lnot398 = xor i1 %lnot396, true, !dbg !5458
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !5458
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !5458
  %52 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr401 = lshr i64 %52, 32, !dbg !5458
  %shr402 = lshr i64 %shr401, 16, !dbg !5458
  %and403 = and i64 %shr402, 4, !dbg !5458
  %tobool404 = icmp ne i64 %and403, 0, !dbg !5458
  %lnot405 = xor i1 %tobool404, true, !dbg !5458
  %lnot407 = xor i1 %lnot405, true, !dbg !5458
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !5458
  %add409 = add i32 %add400, %lnot.ext408, !dbg !5458
  %53 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr410 = lshr i64 %53, 32, !dbg !5458
  %shr411 = lshr i64 %shr410, 16, !dbg !5458
  %and412 = and i64 %shr411, 8, !dbg !5458
  %tobool413 = icmp ne i64 %and412, 0, !dbg !5458
  %lnot414 = xor i1 %tobool413, true, !dbg !5458
  %lnot416 = xor i1 %lnot414, true, !dbg !5458
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !5458
  %add418 = add i32 %add409, %lnot.ext417, !dbg !5458
  %54 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr419 = lshr i64 %54, 32, !dbg !5458
  %shr420 = lshr i64 %shr419, 16, !dbg !5458
  %and421 = and i64 %shr420, 16, !dbg !5458
  %tobool422 = icmp ne i64 %and421, 0, !dbg !5458
  %lnot423 = xor i1 %tobool422, true, !dbg !5458
  %lnot425 = xor i1 %lnot423, true, !dbg !5458
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !5458
  %add427 = add i32 %add418, %lnot.ext426, !dbg !5458
  %55 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr428 = lshr i64 %55, 32, !dbg !5458
  %shr429 = lshr i64 %shr428, 16, !dbg !5458
  %and430 = and i64 %shr429, 32, !dbg !5458
  %tobool431 = icmp ne i64 %and430, 0, !dbg !5458
  %lnot432 = xor i1 %tobool431, true, !dbg !5458
  %lnot434 = xor i1 %lnot432, true, !dbg !5458
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !5458
  %add436 = add i32 %add427, %lnot.ext435, !dbg !5458
  %56 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr437 = lshr i64 %56, 32, !dbg !5458
  %shr438 = lshr i64 %shr437, 16, !dbg !5458
  %and439 = and i64 %shr438, 64, !dbg !5458
  %tobool440 = icmp ne i64 %and439, 0, !dbg !5458
  %lnot441 = xor i1 %tobool440, true, !dbg !5458
  %lnot443 = xor i1 %lnot441, true, !dbg !5458
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !5458
  %add445 = add i32 %add436, %lnot.ext444, !dbg !5458
  %57 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr446 = lshr i64 %57, 32, !dbg !5458
  %shr447 = lshr i64 %shr446, 16, !dbg !5458
  %and448 = and i64 %shr447, 128, !dbg !5458
  %tobool449 = icmp ne i64 %and448, 0, !dbg !5458
  %lnot450 = xor i1 %tobool449, true, !dbg !5458
  %lnot452 = xor i1 %lnot450, true, !dbg !5458
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !5458
  %add454 = add i32 %add445, %lnot.ext453, !dbg !5458
  %58 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr455 = lshr i64 %58, 32, !dbg !5458
  %shr456 = lshr i64 %shr455, 16, !dbg !5458
  %shr457 = lshr i64 %shr456, 8, !dbg !5458
  %and458 = and i64 %shr457, 1, !dbg !5458
  %tobool459 = icmp ne i64 %and458, 0, !dbg !5458
  %lnot460 = xor i1 %tobool459, true, !dbg !5458
  %lnot462 = xor i1 %lnot460, true, !dbg !5458
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !5458
  %59 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr464 = lshr i64 %59, 32, !dbg !5458
  %shr465 = lshr i64 %shr464, 16, !dbg !5458
  %shr466 = lshr i64 %shr465, 8, !dbg !5458
  %and467 = and i64 %shr466, 2, !dbg !5458
  %tobool468 = icmp ne i64 %and467, 0, !dbg !5458
  %lnot469 = xor i1 %tobool468, true, !dbg !5458
  %lnot471 = xor i1 %lnot469, true, !dbg !5458
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !5458
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !5458
  %60 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr474 = lshr i64 %60, 32, !dbg !5458
  %shr475 = lshr i64 %shr474, 16, !dbg !5458
  %shr476 = lshr i64 %shr475, 8, !dbg !5458
  %and477 = and i64 %shr476, 4, !dbg !5458
  %tobool478 = icmp ne i64 %and477, 0, !dbg !5458
  %lnot479 = xor i1 %tobool478, true, !dbg !5458
  %lnot481 = xor i1 %lnot479, true, !dbg !5458
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !5458
  %add483 = add i32 %add473, %lnot.ext482, !dbg !5458
  %61 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr484 = lshr i64 %61, 32, !dbg !5458
  %shr485 = lshr i64 %shr484, 16, !dbg !5458
  %shr486 = lshr i64 %shr485, 8, !dbg !5458
  %and487 = and i64 %shr486, 8, !dbg !5458
  %tobool488 = icmp ne i64 %and487, 0, !dbg !5458
  %lnot489 = xor i1 %tobool488, true, !dbg !5458
  %lnot491 = xor i1 %lnot489, true, !dbg !5458
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !5458
  %add493 = add i32 %add483, %lnot.ext492, !dbg !5458
  %62 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr494 = lshr i64 %62, 32, !dbg !5458
  %shr495 = lshr i64 %shr494, 16, !dbg !5458
  %shr496 = lshr i64 %shr495, 8, !dbg !5458
  %and497 = and i64 %shr496, 16, !dbg !5458
  %tobool498 = icmp ne i64 %and497, 0, !dbg !5458
  %lnot499 = xor i1 %tobool498, true, !dbg !5458
  %lnot501 = xor i1 %lnot499, true, !dbg !5458
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !5458
  %add503 = add i32 %add493, %lnot.ext502, !dbg !5458
  %63 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr504 = lshr i64 %63, 32, !dbg !5458
  %shr505 = lshr i64 %shr504, 16, !dbg !5458
  %shr506 = lshr i64 %shr505, 8, !dbg !5458
  %and507 = and i64 %shr506, 32, !dbg !5458
  %tobool508 = icmp ne i64 %and507, 0, !dbg !5458
  %lnot509 = xor i1 %tobool508, true, !dbg !5458
  %lnot511 = xor i1 %lnot509, true, !dbg !5458
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !5458
  %add513 = add i32 %add503, %lnot.ext512, !dbg !5458
  %64 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr514 = lshr i64 %64, 32, !dbg !5458
  %shr515 = lshr i64 %shr514, 16, !dbg !5458
  %shr516 = lshr i64 %shr515, 8, !dbg !5458
  %and517 = and i64 %shr516, 64, !dbg !5458
  %tobool518 = icmp ne i64 %and517, 0, !dbg !5458
  %lnot519 = xor i1 %tobool518, true, !dbg !5458
  %lnot521 = xor i1 %lnot519, true, !dbg !5458
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !5458
  %add523 = add i32 %add513, %lnot.ext522, !dbg !5458
  %65 = load i64, ptr %w.addr, align 8, !dbg !5458
  %shr524 = lshr i64 %65, 32, !dbg !5458
  %shr525 = lshr i64 %shr524, 16, !dbg !5458
  %shr526 = lshr i64 %shr525, 8, !dbg !5458
  %and527 = and i64 %shr526, 128, !dbg !5458
  %tobool528 = icmp ne i64 %and527, 0, !dbg !5458
  %lnot529 = xor i1 %tobool528, true, !dbg !5458
  %lnot531 = xor i1 %lnot529, true, !dbg !5458
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !5458
  %add533 = add i32 %add523, %lnot.ext532, !dbg !5458
  %add534 = add i32 %add454, %add533, !dbg !5458
  %add535 = add i32 %add383, %add534, !dbg !5458
  %add536 = add i32 %add248, %add535, !dbg !5458
  %conv = zext i32 %add536 to i64, !dbg !5458
  br label %cond.end, !dbg !5458

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !5458
  %call = call i64 @__arch_hweight64(i64 noundef %66) #15, !dbg !5458
  br label %cond.end, !dbg !5458

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !5458
  ret i64 %cond, !dbg !5459
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5460 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #1 align 16 !dbg !5461 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !5466, metadata !DIExpression()), !dbg !5468
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !5469
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5467, metadata !DIExpression()), !dbg !5470
  %0 = load i64, ptr %w.addr, align 8, !dbg !5471
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #19, !dbg !5472, !srcloc !5473
  store i64 %1, ptr %res, align 8, !dbg !5472
  %2 = load i64, ptr %res, align 8, !dbg !5474
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !5475
  ret i64 %2, !dbg !5476
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5477 dso_local i32 @clocksource_unregister(ptr noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_delayed_work(ptr noundef %dwork, i64 noundef %delay) #9 align 16 !dbg !5478 {
entry:
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !5483, metadata !DIExpression()), !dbg !5485
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !5484, metadata !DIExpression()), !dbg !5486
  %0 = load ptr, ptr @system_wq, align 8, !dbg !5487
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !5488
  %2 = load i64, ptr %delay.addr, align 8, !dbg !5489
  %call = call zeroext i1 @queue_delayed_work(ptr noundef %0, ptr noundef %1, i64 noundef %2) #15, !dbg !5490
  ret i1 %call, !dbg !5491
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_delayed_work(ptr noundef %wq, ptr noundef %dwork, i64 noundef %delay) #9 align 16 !dbg !5492 {
entry:
  %wq.addr = alloca ptr, align 8
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !5496, metadata !DIExpression()), !dbg !5499
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !5497, metadata !DIExpression()), !dbg !5500
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !5498, metadata !DIExpression()), !dbg !5501
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !5502
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !5503
  %2 = load i64, ptr %delay.addr, align 8, !dbg !5504
  %call = call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1, i64 noundef %2) #15, !dbg !5505
  ret i1 %call, !dbg !5506
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5507 dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tsc_refine_calibration_work(ptr noundef %work) #8 align 16 !dbg !1522 {
entry:
  %work.addr = alloca ptr, align 8
  %tsc_stop = alloca i64, align 8
  %ref_stop = alloca i64, align 8
  %delta = alloca i64, align 8
  %freq = alloca i64, align 8
  %cpu = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__x = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp29 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %__x49 = alloca i64, align 8
  %tmp52 = alloca i64, align 8
  %tmp70 = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1524, metadata !DIExpression()), !dbg !5510
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsc_stop) #16, !dbg !5511
  call void @llvm.dbg.declare(metadata ptr %tsc_stop, metadata !1525, metadata !DIExpression()), !dbg !5512
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref_stop) #16, !dbg !5511
  call void @llvm.dbg.declare(metadata ptr %ref_stop, metadata !1526, metadata !DIExpression()), !dbg !5513
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #16, !dbg !5511
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !1527, metadata !DIExpression()), !dbg !5514
  call void @llvm.lifetime.start.p0(i64 8, ptr %freq) #16, !dbg !5515
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !1528, metadata !DIExpression()), !dbg !5516
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #16, !dbg !5517
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !1529, metadata !DIExpression()), !dbg !5518
  %0 = load i32, ptr @tsc_unstable, align 4, !dbg !5519
  %tobool = icmp ne i32 %0, 0, !dbg !5519
  br i1 %tobool, label %if.then, label %if.end, !dbg !5521

if.then:                                          ; preds = %entry
  br label %unreg, !dbg !5522

if.end:                                           ; preds = %entry
  %1 = load i64, ptr @tsc_refine_calibration_work.tsc_start, align 8, !dbg !5523
  %cmp = icmp eq i64 %1, -1, !dbg !5524
  br i1 %cmp, label %if.then1, label %if.end4, !dbg !5525

if.then1:                                         ; preds = %if.end
  br label %restart, !dbg !5526

restart:                                          ; preds = %if.then10, %if.then1
  call void @llvm.dbg.label(metadata !1530), !dbg !5527
  %call = call i32 @is_hpet_enabled() #15, !dbg !5528
  store i32 %call, ptr @tsc_refine_calibration_work.hpet, align 4, !dbg !5529
  %2 = load i32, ptr @tsc_refine_calibration_work.hpet, align 4, !dbg !5530
  %call2 = call i64 @tsc_read_refs(ptr noundef @tsc_refine_calibration_work.ref_start, i32 noundef %2) #15, !dbg !5531
  store i64 %call2, ptr @tsc_refine_calibration_work.tsc_start, align 8, !dbg !5532
  %call3 = call zeroext i1 @schedule_delayed_work(ptr noundef @tsc_irqwork, i64 noundef 1000) #15, !dbg !5533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5534

if.end4:                                          ; preds = %if.end
  %3 = load i32, ptr @tsc_refine_calibration_work.hpet, align 4, !dbg !5535
  %call5 = call i64 @tsc_read_refs(ptr noundef %ref_stop, i32 noundef %3) #15, !dbg !5536
  store i64 %call5, ptr %tsc_stop, align 8, !dbg !5537
  %4 = load i64, ptr @tsc_refine_calibration_work.ref_start, align 8, !dbg !5538
  %5 = load i64, ptr %ref_stop, align 8, !dbg !5540
  %cmp6 = icmp eq i64 %4, %5, !dbg !5541
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5542

if.then7:                                         ; preds = %if.end4
  br label %out, !dbg !5543

if.end8:                                          ; preds = %if.end4
  %6 = load i64, ptr %tsc_stop, align 8, !dbg !5544
  %cmp9 = icmp eq i64 %6, -1, !dbg !5546
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5547

if.then10:                                        ; preds = %if.end8
  br label %restart, !dbg !5548

if.end11:                                         ; preds = %if.end8
  %7 = load i64, ptr %tsc_stop, align 8, !dbg !5549
  %8 = load i64, ptr @tsc_refine_calibration_work.tsc_start, align 8, !dbg !5550
  %sub = sub i64 %7, %8, !dbg !5551
  store i64 %sub, ptr %delta, align 8, !dbg !5552
  %9 = load i64, ptr %delta, align 8, !dbg !5553
  %mul = mul i64 %9, 1000000, !dbg !5553
  store i64 %mul, ptr %delta, align 8, !dbg !5553
  %10 = load i32, ptr @tsc_refine_calibration_work.hpet, align 4, !dbg !5554
  %tobool12 = icmp ne i32 %10, 0, !dbg !5554
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !5556

if.then13:                                        ; preds = %if.end11
  %11 = load i64, ptr %delta, align 8, !dbg !5557
  %12 = load i64, ptr @tsc_refine_calibration_work.ref_start, align 8, !dbg !5558
  %13 = load i64, ptr %ref_stop, align 8, !dbg !5559
  %call14 = call i64 @calc_hpet_ref(i64 noundef %11, i64 noundef %12, i64 noundef %13) #15, !dbg !5560
  store i64 %call14, ptr %freq, align 8, !dbg !5561
  br label %if.end16, !dbg !5562

if.else:                                          ; preds = %if.end11
  %14 = load i64, ptr %delta, align 8, !dbg !5563
  %15 = load i64, ptr @tsc_refine_calibration_work.ref_start, align 8, !dbg !5564
  %16 = load i64, ptr %ref_stop, align 8, !dbg !5565
  %call15 = call i64 @calc_pmtimer_ref(i64 noundef %14, i64 noundef %15, i64 noundef %16) #15, !dbg !5566
  store i64 %call15, ptr %freq, align 8, !dbg !5567
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  br i1 false, label %cond.true, label %cond.false, !dbg !5568

cond.true:                                        ; preds = %if.end16
  br i1 true, label %if.then18, label %if.end48, !dbg !5569

cond.false:                                       ; preds = %if.end16
  %call17 = call zeroext i1 @arch_test_bit(i64 noundef 127, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !5569
  br i1 %call17, label %if.then18, label %if.end48, !dbg !5568

if.then18:                                        ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #16, !dbg !5570
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !1533, metadata !DIExpression()), !dbg !5570
  %17 = load i32, ptr @tsc_khz, align 4, !dbg !5570
  %conv = zext i32 %17 to i64, !dbg !5570
  %18 = load i64, ptr %freq, align 8, !dbg !5570
  %sub19 = sub i64 %conv, %18, !dbg !5570
  store i64 %sub19, ptr %__x, align 8, !dbg !5570
  %19 = load i64, ptr %__x, align 8, !dbg !5570
  %cmp20 = icmp slt i64 %19, 0, !dbg !5570
  br i1 %cmp20, label %cond.true22, label %cond.false24, !dbg !5570

cond.true22:                                      ; preds = %if.then18
  %20 = load i64, ptr %__x, align 8, !dbg !5570
  %sub23 = sub i64 0, %20, !dbg !5570
  br label %cond.end, !dbg !5570

cond.false24:                                     ; preds = %if.then18
  %21 = load i64, ptr %__x, align 8, !dbg !5570
  br label %cond.end, !dbg !5570

cond.end:                                         ; preds = %cond.false24, %cond.true22
  %cond = phi i64 [ %sub23, %cond.true22 ], [ %21, %cond.false24 ], !dbg !5570
  store i64 %cond, ptr %tmp, align 8, !dbg !5570
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #16, !dbg !5571
  %22 = load i64, ptr %tmp, align 8, !dbg !5570
  %23 = load i32, ptr @tsc_khz, align 4, !dbg !5572
  %shr = lshr i32 %23, 11, !dbg !5573
  %conv25 = zext i32 %shr to i64, !dbg !5574
  %cmp26 = icmp sgt i64 %22, %conv25, !dbg !5575
  br i1 %cmp26, label %if.then28, label %if.end38, !dbg !5576

if.then28:                                        ; preds = %cond.end
  br label %do.body, !dbg !5577

do.body:                                          ; preds = %if.then28
  br label %do.cond, !dbg !5580

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5580

do.end:                                           ; preds = %do.cond
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef @.str.21) #17, !dbg !5577
  store i32 %call30, ptr %tmp29, align 4, !dbg !5580
  %24 = load i32, ptr %tmp29, align 4, !dbg !5577
  br label %do.body31, !dbg !5582

do.body31:                                        ; preds = %do.end
  br label %do.cond32, !dbg !5584

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !5584

do.end33:                                         ; preds = %do.cond32
  %25 = load i32, ptr @tsc_khz, align 4, !dbg !5582
  %conv35 = zext i32 %25 to i64, !dbg !5582
  %div = udiv i64 %conv35, 1000, !dbg !5582
  %26 = load i32, ptr @tsc_khz, align 4, !dbg !5582
  %conv36 = zext i32 %26 to i64, !dbg !5582
  %rem = urem i64 %conv36, 1000, !dbg !5582
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef @.str.22, i64 noundef %div, i64 noundef %rem) #17, !dbg !5582
  store i32 %call37, ptr %tmp34, align 4, !dbg !5584
  %27 = load i32, ptr %tmp34, align 4, !dbg !5582
  br label %if.end38, !dbg !5586

if.end38:                                         ; preds = %do.end33, %cond.end
  br label %do.body39, !dbg !5587

do.body39:                                        ; preds = %if.end38
  br label %do.cond40, !dbg !5589

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !5589

do.end41:                                         ; preds = %do.cond40
  %28 = load i32, ptr @tsc_refine_calibration_work.hpet, align 4, !dbg !5587
  %tobool43 = icmp ne i32 %28, 0, !dbg !5587
  %29 = zext i1 %tobool43 to i64, !dbg !5587
  %cond44 = select i1 %tobool43, ptr @.str.24, ptr @.str.25, !dbg !5587
  %30 = load i64, ptr %freq, align 8, !dbg !5587
  %div45 = udiv i64 %30, 1000, !dbg !5587
  %31 = load i64, ptr %freq, align 8, !dbg !5587
  %rem46 = urem i64 %31, 1000, !dbg !5587
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef @.str.23, ptr noundef %cond44, i64 noundef %div45, i64 noundef %rem46) #17, !dbg !5587
  store i32 %call47, ptr %tmp42, align 4, !dbg !5589
  %32 = load i32, ptr %tmp42, align 4, !dbg !5587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5591

if.end48:                                         ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x49) #16, !dbg !5592
  call void @llvm.dbg.declare(metadata ptr %__x49, metadata !1538, metadata !DIExpression()), !dbg !5592
  %33 = load i32, ptr @tsc_khz, align 4, !dbg !5592
  %conv50 = zext i32 %33 to i64, !dbg !5592
  %34 = load i64, ptr %freq, align 8, !dbg !5592
  %sub51 = sub i64 %conv50, %34, !dbg !5592
  store i64 %sub51, ptr %__x49, align 8, !dbg !5592
  %35 = load i64, ptr %__x49, align 8, !dbg !5592
  %cmp53 = icmp slt i64 %35, 0, !dbg !5592
  br i1 %cmp53, label %cond.true55, label %cond.false57, !dbg !5592

cond.true55:                                      ; preds = %if.end48
  %36 = load i64, ptr %__x49, align 8, !dbg !5592
  %sub56 = sub i64 0, %36, !dbg !5592
  br label %cond.end58, !dbg !5592

cond.false57:                                     ; preds = %if.end48
  %37 = load i64, ptr %__x49, align 8, !dbg !5592
  br label %cond.end58, !dbg !5592

cond.end58:                                       ; preds = %cond.false57, %cond.true55
  %cond59 = phi i64 [ %sub56, %cond.true55 ], [ %37, %cond.false57 ], !dbg !5592
  store i64 %cond59, ptr %tmp52, align 8, !dbg !5592
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x49) #16, !dbg !5593
  %38 = load i64, ptr %tmp52, align 8, !dbg !5592
  %39 = load i32, ptr @tsc_khz, align 4, !dbg !5594
  %div60 = udiv i32 %39, 100, !dbg !5595
  %conv61 = zext i32 %div60 to i64, !dbg !5594
  %cmp62 = icmp sgt i64 %38, %conv61, !dbg !5596
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !5597

if.then64:                                        ; preds = %cond.end58
  br label %out, !dbg !5598

if.end65:                                         ; preds = %cond.end58
  %40 = load i64, ptr %freq, align 8, !dbg !5599
  %conv66 = trunc i64 %40 to i32, !dbg !5599
  store i32 %conv66, ptr @tsc_khz, align 4, !dbg !5600
  br label %do.body67, !dbg !5601

do.body67:                                        ; preds = %if.end65
  br label %do.cond68, !dbg !5603

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !5603

do.end69:                                         ; preds = %do.cond68
  %41 = load i32, ptr @tsc_khz, align 4, !dbg !5601
  %conv71 = zext i32 %41 to i64, !dbg !5601
  %div72 = udiv i64 %conv71, 1000, !dbg !5601
  %42 = load i32, ptr @tsc_khz, align 4, !dbg !5601
  %conv73 = zext i32 %42 to i64, !dbg !5601
  %rem74 = urem i64 %conv73, 1000, !dbg !5601
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef @.str.26, i64 noundef %div72, i64 noundef %rem74) #17, !dbg !5601
  store i32 %call75, ptr %tmp70, align 4, !dbg !5603
  %43 = load i32, ptr %tmp70, align 4, !dbg !5601
  call void @lapic_update_tsc_freq() #15, !dbg !5605
  store i32 0, ptr %cpu, align 4, !dbg !5606
  br label %for.cond, !dbg !5606

for.cond:                                         ; preds = %for.inc, %do.end69
  %44 = load i32, ptr %cpu, align 4, !dbg !5608
  %conv76 = sext i32 %44 to i64, !dbg !5608
  %call77 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv76) #15, !dbg !5608
  %conv78 = trunc i64 %call77 to i32, !dbg !5608
  store i32 %conv78, ptr %cpu, align 4, !dbg !5608
  %45 = load i32, ptr %cpu, align 4, !dbg !5608
  %cmp79 = icmp ult i32 %45, 64, !dbg !5608
  br i1 %cmp79, label %for.body, label %for.end, !dbg !5606

for.body:                                         ; preds = %for.cond
  %46 = load i32, ptr @tsc_khz, align 4, !dbg !5610
  %conv81 = zext i32 %46 to i64, !dbg !5610
  %47 = load i32, ptr %cpu, align 4, !dbg !5611
  %48 = load i64, ptr %tsc_stop, align 8, !dbg !5612
  call void @set_cyc2ns_scale(i64 noundef %conv81, i32 noundef %47, i64 noundef %48) #15, !dbg !5613
  br label %for.inc, !dbg !5613

for.inc:                                          ; preds = %for.body
  %49 = load i32, ptr %cpu, align 4, !dbg !5608
  %inc = add i32 %49, 1, !dbg !5608
  store i32 %inc, ptr %cpu, align 4, !dbg !5608
  br label %for.cond, !dbg !5608, !llvm.loop !5614

for.end:                                          ; preds = %for.cond
  br label %out, !dbg !5615

out:                                              ; preds = %for.end, %if.then64, %if.then7
  call void @llvm.dbg.label(metadata !1541), !dbg !5616
  %50 = load i32, ptr @tsc_unstable, align 4, !dbg !5617
  %tobool82 = icmp ne i32 %50, 0, !dbg !5617
  br i1 %tobool82, label %if.then83, label %if.end84, !dbg !5619

if.then83:                                        ; preds = %out
  br label %unreg, !dbg !5620

if.end84:                                         ; preds = %out
  br i1 false, label %cond.true85, label %cond.false86, !dbg !5621

cond.true85:                                      ; preds = %if.end84
  br i1 true, label %if.then89, label %if.end90, !dbg !5622

cond.false86:                                     ; preds = %if.end84
  %call87 = call zeroext i1 @arch_test_bit(i64 noundef 106, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !5622
  br i1 %call87, label %if.then89, label %if.end90, !dbg !5621

if.then89:                                        ; preds = %cond.false86, %cond.true85
  store ptr @clocksource_tsc, ptr @art_related_clocksource, align 8, !dbg !5624
  br label %if.end90, !dbg !5625

if.end90:                                         ; preds = %if.then89, %cond.false86, %cond.true85
  %51 = load i32, ptr @tsc_khz, align 4, !dbg !5626
  %call91 = call i32 @clocksource_register_khz(ptr noundef @clocksource_tsc, i32 noundef %51) #15, !dbg !5627
  br label %unreg, !dbg !5627

unreg:                                            ; preds = %if.end90, %if.then83, %if.then
  call void @llvm.dbg.label(metadata !1542), !dbg !5628
  %call92 = call i32 @clocksource_unregister(ptr noundef @clocksource_tsc_early) #15, !dbg !5629
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5630
  br label %cleanup, !dbg !5630

cleanup:                                          ; preds = %unreg, %do.end41, %restart
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #16, !dbg !5630
  call void @llvm.lifetime.end.p0(i64 8, ptr %freq) #16, !dbg !5630
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #16, !dbg !5630
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref_stop) #16, !dbg !5630
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsc_stop) #16, !dbg !5630
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5630

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5631 dso_local i32 @is_hpet_enabled() #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @tsc_read_refs(ptr noundef %p, i32 noundef %hpet) #8 align 16 !dbg !5633 {
entry:
  %retval = alloca i64, align 8
  %p.addr = alloca ptr, align 8
  %hpet.addr = alloca i32, align 4
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %thresh = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5637, metadata !DIExpression()), !dbg !5643
  store i32 %hpet, ptr %hpet.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hpet.addr, metadata !5638, metadata !DIExpression()), !dbg !5644
  call void @llvm.lifetime.start.p0(i64 8, ptr %t1) #16, !dbg !5645
  call void @llvm.dbg.declare(metadata ptr %t1, metadata !5639, metadata !DIExpression()), !dbg !5646
  call void @llvm.lifetime.start.p0(i64 8, ptr %t2) #16, !dbg !5645
  call void @llvm.dbg.declare(metadata ptr %t2, metadata !5640, metadata !DIExpression()), !dbg !5647
  call void @llvm.lifetime.start.p0(i64 8, ptr %thresh) #16, !dbg !5648
  call void @llvm.dbg.declare(metadata ptr %thresh, metadata !5641, metadata !DIExpression()), !dbg !5649
  %0 = load i32, ptr @tsc_khz, align 4, !dbg !5650
  %tobool = icmp ne i32 %0, 0, !dbg !5650
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5650

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr @tsc_khz, align 4, !dbg !5651
  %shr = lshr i32 %1, 5, !dbg !5652
  br label %cond.end, !dbg !5650

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5650

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr, %cond.true ], [ 131072, %cond.false ], !dbg !5650
  %conv = zext i32 %cond to i64, !dbg !5650
  store i64 %conv, ptr %thresh, align 8, !dbg !5649
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5653
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5642, metadata !DIExpression()), !dbg !5654
  store i32 0, ptr %i, align 4, !dbg !5655
  br label %for.cond, !dbg !5657

for.cond:                                         ; preds = %for.inc, %cond.end
  %2 = load i32, ptr %i, align 4, !dbg !5658
  %cmp = icmp slt i32 %2, 5, !dbg !5660
  br i1 %cmp, label %for.body, label %for.end, !dbg !5661

for.body:                                         ; preds = %for.cond
  %call = call i64 @get_cycles() #15, !dbg !5662
  store i64 %call, ptr %t1, align 8, !dbg !5664
  %3 = load i32, ptr %hpet.addr, align 4, !dbg !5665
  %tobool2 = icmp ne i32 %3, 0, !dbg !5665
  br i1 %tobool2, label %if.then, label %if.else, !dbg !5667

if.then:                                          ; preds = %for.body
  %call3 = call i32 @hpet_readl(i32 noundef 240) #15, !dbg !5668
  %and = and i32 %call3, -1, !dbg !5669
  %conv4 = zext i32 %and to i64, !dbg !5668
  %4 = load ptr, ptr %p.addr, align 8, !dbg !5670
  store i64 %conv4, ptr %4, align 8, !dbg !5671
  br label %if.end, !dbg !5672

if.else:                                          ; preds = %for.body
  %call5 = call i32 @acpi_pm_read_early() #15, !dbg !5673
  %conv6 = zext i32 %call5 to i64, !dbg !5673
  %5 = load ptr, ptr %p.addr, align 8, !dbg !5674
  store i64 %conv6, ptr %5, align 8, !dbg !5675
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call7 = call i64 @get_cycles() #15, !dbg !5676
  store i64 %call7, ptr %t2, align 8, !dbg !5677
  %6 = load i64, ptr %t2, align 8, !dbg !5678
  %7 = load i64, ptr %t1, align 8, !dbg !5680
  %sub = sub i64 %6, %7, !dbg !5681
  %8 = load i64, ptr %thresh, align 8, !dbg !5682
  %cmp8 = icmp ult i64 %sub, %8, !dbg !5683
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !5684

if.then10:                                        ; preds = %if.end
  %9 = load i64, ptr %t2, align 8, !dbg !5685
  store i64 %9, ptr %retval, align 8, !dbg !5686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5686

if.end11:                                         ; preds = %if.end
  br label %for.inc, !dbg !5687

for.inc:                                          ; preds = %if.end11
  %10 = load i32, ptr %i, align 4, !dbg !5688
  %inc = add i32 %10, 1, !dbg !5688
  store i32 %inc, ptr %i, align 4, !dbg !5688
  br label %for.cond, !dbg !5689, !llvm.loop !5690

for.end:                                          ; preds = %for.cond
  store i64 -1, ptr %retval, align 8, !dbg !5692
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5692

cleanup:                                          ; preds = %for.end, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5693
  call void @llvm.lifetime.end.p0(i64 8, ptr %thresh) #16, !dbg !5693
  call void @llvm.lifetime.end.p0(i64 8, ptr %t2) #16, !dbg !5693
  call void @llvm.lifetime.end.p0(i64 8, ptr %t1) #16, !dbg !5693
  %11 = load i64, ptr %retval, align 8, !dbg !5693
  ret i64 %11, !dbg !5693
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @calc_hpet_ref(i64 noundef %deltatsc, i64 noundef %hpet1, i64 noundef %hpet2) #8 align 16 !dbg !5694 {
entry:
  %deltatsc.addr = alloca i64, align 8
  %hpet1.addr = alloca i64, align 8
  %hpet2.addr = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store i64 %deltatsc, ptr %deltatsc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %deltatsc.addr, metadata !5698, metadata !DIExpression()), !dbg !5705
  store i64 %hpet1, ptr %hpet1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hpet1.addr, metadata !5699, metadata !DIExpression()), !dbg !5706
  store i64 %hpet2, ptr %hpet2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hpet2.addr, metadata !5700, metadata !DIExpression()), !dbg !5707
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !5708
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5701, metadata !DIExpression()), !dbg !5709
  %0 = load i64, ptr %hpet2.addr, align 8, !dbg !5710
  %1 = load i64, ptr %hpet1.addr, align 8, !dbg !5712
  %cmp = icmp ult i64 %0, %1, !dbg !5713
  br i1 %cmp, label %if.then, label %if.end, !dbg !5714

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %hpet2.addr, align 8, !dbg !5715
  %add = add i64 %2, 4294967296, !dbg !5715
  store i64 %add, ptr %hpet2.addr, align 8, !dbg !5715
  br label %if.end, !dbg !5716

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %hpet1.addr, align 8, !dbg !5717
  %4 = load i64, ptr %hpet2.addr, align 8, !dbg !5718
  %sub = sub i64 %4, %3, !dbg !5718
  store i64 %sub, ptr %hpet2.addr, align 8, !dbg !5718
  %5 = load i64, ptr %hpet2.addr, align 8, !dbg !5719
  %call = call i32 @hpet_readl(i32 noundef 4) #15, !dbg !5720
  %conv = zext i32 %call to i64, !dbg !5720
  %mul = mul i64 %5, %conv, !dbg !5721
  store i64 %mul, ptr %tmp, align 8, !dbg !5722
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #16, !dbg !5723
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !5702, metadata !DIExpression()), !dbg !5723
  store i32 1000000, ptr %__base, align 4, !dbg !5723
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #16, !dbg !5723
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !5704, metadata !DIExpression()), !dbg !5723
  %6 = load i64, ptr %tmp, align 8, !dbg !5723
  %7 = load i32, ptr %__base, align 4, !dbg !5723
  %conv1 = zext i32 %7 to i64, !dbg !5723
  %rem = urem i64 %6, %conv1, !dbg !5723
  %conv2 = trunc i64 %rem to i32, !dbg !5723
  store i32 %conv2, ptr %__rem, align 4, !dbg !5723
  %8 = load i64, ptr %tmp, align 8, !dbg !5723
  %9 = load i32, ptr %__base, align 4, !dbg !5723
  %conv3 = zext i32 %9 to i64, !dbg !5723
  %div = udiv i64 %8, %conv3, !dbg !5723
  store i64 %div, ptr %tmp, align 8, !dbg !5723
  %10 = load i32, ptr %__rem, align 4, !dbg !5723
  store i32 %10, ptr %tmp4, align 4, !dbg !5723
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #16, !dbg !5724
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #16, !dbg !5724
  %11 = load i32, ptr %tmp4, align 4, !dbg !5723
  %12 = load i64, ptr %deltatsc.addr, align 8, !dbg !5725
  %13 = load i64, ptr %tmp, align 8, !dbg !5726
  %call5 = call i64 @div64_u64(i64 noundef %12, i64 noundef %13) #15, !dbg !5727
  store i64 %call5, ptr %deltatsc.addr, align 8, !dbg !5728
  %14 = load i64, ptr %deltatsc.addr, align 8, !dbg !5729
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !5730
  ret i64 %14, !dbg !5731
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @calc_pmtimer_ref(i64 noundef %deltatsc, i64 noundef %pm1, i64 noundef %pm2) #8 align 16 !dbg !5732 {
entry:
  %retval = alloca i64, align 8
  %deltatsc.addr = alloca i64, align 8
  %pm1.addr = alloca i64, align 8
  %pm2.addr = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %__base7 = alloca i32, align 4
  %__rem9 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  store i64 %deltatsc, ptr %deltatsc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %deltatsc.addr, metadata !5734, metadata !DIExpression()), !dbg !5744
  store i64 %pm1, ptr %pm1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pm1.addr, metadata !5735, metadata !DIExpression()), !dbg !5745
  store i64 %pm2, ptr %pm2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pm2.addr, metadata !5736, metadata !DIExpression()), !dbg !5746
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #16, !dbg !5747
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5737, metadata !DIExpression()), !dbg !5748
  %0 = load i64, ptr %pm1.addr, align 8, !dbg !5749
  %tobool = icmp ne i64 %0, 0, !dbg !5749
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5751

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, ptr %pm2.addr, align 8, !dbg !5752
  %tobool1 = icmp ne i64 %1, 0, !dbg !5752
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5753

if.then:                                          ; preds = %land.lhs.true
  store i64 -1, ptr %retval, align 8, !dbg !5754
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5754

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i64, ptr %pm2.addr, align 8, !dbg !5755
  %3 = load i64, ptr %pm1.addr, align 8, !dbg !5757
  %cmp = icmp ult i64 %2, %3, !dbg !5758
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5759

if.then2:                                         ; preds = %if.end
  %4 = load i64, ptr %pm2.addr, align 8, !dbg !5760
  %add = add i64 %4, 16777216, !dbg !5760
  store i64 %add, ptr %pm2.addr, align 8, !dbg !5760
  br label %if.end3, !dbg !5761

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load i64, ptr %pm1.addr, align 8, !dbg !5762
  %6 = load i64, ptr %pm2.addr, align 8, !dbg !5763
  %sub = sub i64 %6, %5, !dbg !5763
  store i64 %sub, ptr %pm2.addr, align 8, !dbg !5763
  %7 = load i64, ptr %pm2.addr, align 8, !dbg !5764
  %mul = mul i64 %7, 1000000000, !dbg !5765
  store i64 %mul, ptr %tmp, align 8, !dbg !5766
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #16, !dbg !5767
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !5738, metadata !DIExpression()), !dbg !5767
  store i32 3579545, ptr %__base, align 4, !dbg !5767
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #16, !dbg !5767
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !5740, metadata !DIExpression()), !dbg !5767
  %8 = load i64, ptr %tmp, align 8, !dbg !5767
  %9 = load i32, ptr %__base, align 4, !dbg !5767
  %conv = zext i32 %9 to i64, !dbg !5767
  %rem = urem i64 %8, %conv, !dbg !5767
  %conv4 = trunc i64 %rem to i32, !dbg !5767
  store i32 %conv4, ptr %__rem, align 4, !dbg !5767
  %10 = load i64, ptr %tmp, align 8, !dbg !5767
  %11 = load i32, ptr %__base, align 4, !dbg !5767
  %conv5 = zext i32 %11 to i64, !dbg !5767
  %div = udiv i64 %10, %conv5, !dbg !5767
  store i64 %div, ptr %tmp, align 8, !dbg !5767
  %12 = load i32, ptr %__rem, align 4, !dbg !5767
  store i32 %12, ptr %tmp6, align 4, !dbg !5767
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #16, !dbg !5768
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #16, !dbg !5768
  %13 = load i32, ptr %tmp6, align 4, !dbg !5767
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base7) #16, !dbg !5769
  call void @llvm.dbg.declare(metadata ptr %__base7, metadata !5741, metadata !DIExpression()), !dbg !5769
  %14 = load i64, ptr %tmp, align 8, !dbg !5769
  %conv8 = trunc i64 %14 to i32, !dbg !5769
  store i32 %conv8, ptr %__base7, align 4, !dbg !5769
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem9) #16, !dbg !5769
  call void @llvm.dbg.declare(metadata ptr %__rem9, metadata !5743, metadata !DIExpression()), !dbg !5769
  %15 = load i64, ptr %deltatsc.addr, align 8, !dbg !5769
  %16 = load i32, ptr %__base7, align 4, !dbg !5769
  %conv10 = zext i32 %16 to i64, !dbg !5769
  %rem11 = urem i64 %15, %conv10, !dbg !5769
  %conv12 = trunc i64 %rem11 to i32, !dbg !5769
  store i32 %conv12, ptr %__rem9, align 4, !dbg !5769
  %17 = load i64, ptr %deltatsc.addr, align 8, !dbg !5769
  %18 = load i32, ptr %__base7, align 4, !dbg !5769
  %conv13 = zext i32 %18 to i64, !dbg !5769
  %div14 = udiv i64 %17, %conv13, !dbg !5769
  store i64 %div14, ptr %deltatsc.addr, align 8, !dbg !5769
  %19 = load i32, ptr %__rem9, align 4, !dbg !5769
  store i32 %19, ptr %tmp15, align 4, !dbg !5769
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem9) #16, !dbg !5770
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base7) #16, !dbg !5770
  %20 = load i32, ptr %tmp15, align 4, !dbg !5769
  %21 = load i64, ptr %deltatsc.addr, align 8, !dbg !5771
  store i64 %21, ptr %retval, align 8, !dbg !5772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5772

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #16, !dbg !5773
  %22 = load i64, ptr %retval, align 8, !dbg !5773
  ret i64 %22, !dbg !5773
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5774 dso_local void @lapic_update_tsc_freq() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5775 dso_local i32 @hpet_readl(i32 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_pm_read_early() #9 align 16 !dbg !5778 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, ptr @pmtmr_ioport, align 4, !dbg !5782
  %tobool = icmp ne i32 %0, 0, !dbg !5782
  br i1 %tobool, label %if.end, label %if.then, !dbg !5784

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5785
  br label %return, !dbg !5785

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_pm_read_verified() #15, !dbg !5786
  %conv = zext i32 %call to i64, !dbg !5786
  %and = and i64 %conv, 16777215, !dbg !5787
  %conv1 = trunc i64 %and to i32, !dbg !5786
  store i32 %conv1, ptr %retval, align 4, !dbg !5788
  br label %return, !dbg !5788

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !5789
  ret i32 %1, !dbg !5789
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5790 dso_local i32 @acpi_pm_read_verified() #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div64_u64(i64 noundef %dividend, i64 noundef %divisor) #9 align 16 !dbg !5791 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !5795, metadata !DIExpression()), !dbg !5797
  store i64 %divisor, ptr %divisor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !5796, metadata !DIExpression()), !dbg !5798
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !5799
  %1 = load i64, ptr %divisor.addr, align 8, !dbg !5800
  %div = udiv i64 %0, %1, !dbg !5801
  ret i64 %div, !dbg !5802
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pit_hpet_ptimer_calibrate_cpu() #8 align 16 !dbg !5803 {
entry:
  %retval = alloca i64, align 8
  %tsc1 = alloca i64, align 8
  %tsc2 = alloca i64, align 8
  %delta = alloca i64, align 8
  %ref1 = alloca i64, align 8
  %ref2 = alloca i64, align 8
  %tsc_pit_min = alloca i64, align 8
  %tsc_ref_min = alloca i64, align 8
  %flags = alloca i64, align 8
  %latch = alloca i64, align 8
  %ms = alloca i64, align 8
  %hpet = alloca i32, align 4
  %i = alloca i32, align 4
  %loopmin = alloca i32, align 4
  %tsc_pit_khz = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy12 = alloca i64, align 8
  %__dummy213 = alloca i64, align 8
  %tmp16 = alloca i32, align 4
  %__UNIQUE_ID___x292 = alloca i64, align 8
  %__UNIQUE_ID___y293 = alloca i64, align 8
  %tmp24 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x294 = alloca i64, align 8
  %__UNIQUE_ID___y295 = alloca i64, align 8
  %tmp39 = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  %tmp60 = alloca i32, align 4
  %tmp78 = alloca i32, align 4
  %tmp89 = alloca i32, align 4
  %tmp98 = alloca i32, align 4
  %tmp104 = alloca i32, align 4
  %tmp118 = alloca i32, align 4
  %tmp127 = alloca i32, align 4
  %tmp133 = alloca i32, align 4
  %tmp140 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsc1) #16, !dbg !5841
  call void @llvm.dbg.declare(metadata ptr %tsc1, metadata !5805, metadata !DIExpression()), !dbg !5842
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsc2) #16, !dbg !5841
  call void @llvm.dbg.declare(metadata ptr %tsc2, metadata !5806, metadata !DIExpression()), !dbg !5843
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #16, !dbg !5841
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !5807, metadata !DIExpression()), !dbg !5844
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref1) #16, !dbg !5841
  call void @llvm.dbg.declare(metadata ptr %ref1, metadata !5808, metadata !DIExpression()), !dbg !5845
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref2) #16, !dbg !5841
  call void @llvm.dbg.declare(metadata ptr %ref2, metadata !5809, metadata !DIExpression()), !dbg !5846
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsc_pit_min) #16, !dbg !5847
  call void @llvm.dbg.declare(metadata ptr %tsc_pit_min, metadata !5810, metadata !DIExpression()), !dbg !5848
  store i64 -1, ptr %tsc_pit_min, align 8, !dbg !5848
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsc_ref_min) #16, !dbg !5847
  call void @llvm.dbg.declare(metadata ptr %tsc_ref_min, metadata !5811, metadata !DIExpression()), !dbg !5849
  store i64 -1, ptr %tsc_ref_min, align 8, !dbg !5849
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5850
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5812, metadata !DIExpression()), !dbg !5851
  call void @llvm.lifetime.start.p0(i64 8, ptr %latch) #16, !dbg !5850
  call void @llvm.dbg.declare(metadata ptr %latch, metadata !5813, metadata !DIExpression()), !dbg !5852
  call void @llvm.lifetime.start.p0(i64 8, ptr %ms) #16, !dbg !5850
  call void @llvm.dbg.declare(metadata ptr %ms, metadata !5814, metadata !DIExpression()), !dbg !5853
  call void @llvm.lifetime.start.p0(i64 4, ptr %hpet) #16, !dbg !5854
  call void @llvm.dbg.declare(metadata ptr %hpet, metadata !5815, metadata !DIExpression()), !dbg !5855
  %call = call i32 @is_hpet_enabled() #15, !dbg !5856
  store i32 %call, ptr %hpet, align 4, !dbg !5855
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5854
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5816, metadata !DIExpression()), !dbg !5857
  call void @llvm.lifetime.start.p0(i64 4, ptr %loopmin) #16, !dbg !5854
  call void @llvm.dbg.declare(metadata ptr %loopmin, metadata !5817, metadata !DIExpression()), !dbg !5858
  store i64 11931, ptr %latch, align 8, !dbg !5859
  store i64 10, ptr %ms, align 8, !dbg !5860
  store i32 1000, ptr %loopmin, align 4, !dbg !5861
  store i32 0, ptr %i, align 4, !dbg !5862
  br label %for.cond, !dbg !5863

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5864
  %cmp = icmp slt i32 %0, 3, !dbg !5865
  br i1 %cmp, label %for.body, label %for.end, !dbg !5866

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsc_pit_khz) #16, !dbg !5867
  call void @llvm.dbg.declare(metadata ptr %tsc_pit_khz, metadata !5818, metadata !DIExpression()), !dbg !5868
  br label %do.body, !dbg !5869

do.body:                                          ; preds = %for.body
  br label %do.body1, !dbg !5870

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5871
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5822, metadata !DIExpression()), !dbg !5871
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5871
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5826, metadata !DIExpression()), !dbg !5871
  %cmp2 = icmp eq ptr %__dummy, %__dummy2, !dbg !5871
  %conv = zext i1 %cmp2 to i32, !dbg !5871
  store i32 1, ptr %tmp, align 4, !dbg !5871
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5872
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5872
  %1 = load i32, ptr %tmp, align 4, !dbg !5871
  %call3 = call i64 @arch_local_irq_save() #15, !dbg !5872
  store i64 %call3, ptr %flags, align 8, !dbg !5872
  br label %do.cond, !dbg !5872

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5872

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !5870

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5870

do.end5:                                          ; preds = %do.cond4
  %2 = load i32, ptr %hpet, align 4, !dbg !5873
  %call6 = call i64 @tsc_read_refs(ptr noundef %ref1, i32 noundef %2) #15, !dbg !5874
  store i64 %call6, ptr %tsc1, align 8, !dbg !5875
  %3 = load i64, ptr %latch, align 8, !dbg !5876
  %conv7 = trunc i64 %3 to i32, !dbg !5876
  %4 = load i64, ptr %ms, align 8, !dbg !5877
  %5 = load i32, ptr %loopmin, align 4, !dbg !5878
  %call8 = call i64 @pit_calibrate_tsc(i32 noundef %conv7, i64 noundef %4, i32 noundef %5) #15, !dbg !5879
  store i64 %call8, ptr %tsc_pit_khz, align 8, !dbg !5880
  %6 = load i32, ptr %hpet, align 4, !dbg !5881
  %call9 = call i64 @tsc_read_refs(ptr noundef %ref2, i32 noundef %6) #15, !dbg !5882
  store i64 %call9, ptr %tsc2, align 8, !dbg !5883
  br label %do.body10, !dbg !5884

do.body10:                                        ; preds = %do.end5
  br label %do.body11, !dbg !5885

do.body11:                                        ; preds = %do.body10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy12) #16, !dbg !5886
  call void @llvm.dbg.declare(metadata ptr %__dummy12, metadata !5827, metadata !DIExpression()), !dbg !5886
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy213) #16, !dbg !5886
  call void @llvm.dbg.declare(metadata ptr %__dummy213, metadata !5831, metadata !DIExpression()), !dbg !5886
  %cmp14 = icmp eq ptr %__dummy12, %__dummy213, !dbg !5886
  %conv15 = zext i1 %cmp14 to i32, !dbg !5886
  store i32 1, ptr %tmp16, align 4, !dbg !5886
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy213) #16, !dbg !5887
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy12) #16, !dbg !5887
  %7 = load i32, ptr %tmp16, align 4, !dbg !5886
  br label %do.body17, !dbg !5887

do.body17:                                        ; preds = %do.body11
  br label %do.cond18, !dbg !5888

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5888

do.end19:                                         ; preds = %do.cond18
  %8 = load i64, ptr %flags, align 8, !dbg !5887
  call void @arch_local_irq_restore(i64 noundef %8) #15, !dbg !5887
  br label %do.cond20, !dbg !5887

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5887

do.end21:                                         ; preds = %do.cond20
  br label %do.cond22, !dbg !5885

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !5885

do.end23:                                         ; preds = %do.cond22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x292) #16, !dbg !5890
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x292, metadata !5832, metadata !DIExpression()), !dbg !5890
  %9 = load i64, ptr %tsc_pit_min, align 8, !dbg !5890
  store i64 %9, ptr %__UNIQUE_ID___x292, align 8, !dbg !5890
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y293) #16, !dbg !5890
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y293, metadata !5834, metadata !DIExpression()), !dbg !5890
  %10 = load i64, ptr %tsc_pit_khz, align 8, !dbg !5890
  store i64 %10, ptr %__UNIQUE_ID___y293, align 8, !dbg !5890
  %11 = load i64, ptr %__UNIQUE_ID___x292, align 8, !dbg !5890
  %12 = load i64, ptr %__UNIQUE_ID___y293, align 8, !dbg !5890
  %cmp25 = icmp ult i64 %11, %12, !dbg !5890
  br i1 %cmp25, label %cond.true, label %cond.false, !dbg !5890

cond.true:                                        ; preds = %do.end23
  %13 = load i64, ptr %__UNIQUE_ID___x292, align 8, !dbg !5890
  br label %cond.end, !dbg !5890

cond.false:                                       ; preds = %do.end23
  %14 = load i64, ptr %__UNIQUE_ID___y293, align 8, !dbg !5890
  br label %cond.end, !dbg !5890

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !5890
  store i64 %cond, ptr %tmp24, align 8, !dbg !5890
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y293) #16, !dbg !5891
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x292) #16, !dbg !5891
  %15 = load i64, ptr %tmp24, align 8, !dbg !5890
  store i64 %15, ptr %tsc_pit_min, align 8, !dbg !5892
  %16 = load i64, ptr %ref1, align 8, !dbg !5893
  %17 = load i64, ptr %ref2, align 8, !dbg !5895
  %cmp27 = icmp eq i64 %16, %17, !dbg !5896
  br i1 %cmp27, label %if.then, label %if.end, !dbg !5897

if.then:                                          ; preds = %cond.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5898

if.end:                                           ; preds = %cond.end
  %18 = load i64, ptr %tsc1, align 8, !dbg !5899
  %cmp29 = icmp eq i64 %18, -1, !dbg !5901
  br i1 %cmp29, label %if.then33, label %lor.lhs.false, !dbg !5902

lor.lhs.false:                                    ; preds = %if.end
  %19 = load i64, ptr %tsc2, align 8, !dbg !5903
  %cmp31 = icmp eq i64 %19, -1, !dbg !5904
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !5905

if.then33:                                        ; preds = %lor.lhs.false, %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5906

if.end34:                                         ; preds = %lor.lhs.false
  %20 = load i64, ptr %tsc2, align 8, !dbg !5907
  %21 = load i64, ptr %tsc1, align 8, !dbg !5908
  %sub = sub i64 %20, %21, !dbg !5909
  %mul = mul i64 %sub, 1000000, !dbg !5910
  store i64 %mul, ptr %tsc2, align 8, !dbg !5911
  %22 = load i32, ptr %hpet, align 4, !dbg !5912
  %tobool = icmp ne i32 %22, 0, !dbg !5912
  br i1 %tobool, label %if.then35, label %if.else, !dbg !5914

if.then35:                                        ; preds = %if.end34
  %23 = load i64, ptr %tsc2, align 8, !dbg !5915
  %24 = load i64, ptr %ref1, align 8, !dbg !5916
  %25 = load i64, ptr %ref2, align 8, !dbg !5917
  %call36 = call i64 @calc_hpet_ref(i64 noundef %23, i64 noundef %24, i64 noundef %25) #15, !dbg !5918
  store i64 %call36, ptr %tsc2, align 8, !dbg !5919
  br label %if.end38, !dbg !5920

if.else:                                          ; preds = %if.end34
  %26 = load i64, ptr %tsc2, align 8, !dbg !5921
  %27 = load i64, ptr %ref1, align 8, !dbg !5922
  %28 = load i64, ptr %ref2, align 8, !dbg !5923
  %call37 = call i64 @calc_pmtimer_ref(i64 noundef %26, i64 noundef %27, i64 noundef %28) #15, !dbg !5924
  store i64 %call37, ptr %tsc2, align 8, !dbg !5925
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then35
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x294) #16, !dbg !5926
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x294, metadata !5835, metadata !DIExpression()), !dbg !5926
  %29 = load i64, ptr %tsc_ref_min, align 8, !dbg !5926
  store i64 %29, ptr %__UNIQUE_ID___x294, align 8, !dbg !5926
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y295) #16, !dbg !5926
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y295, metadata !5837, metadata !DIExpression()), !dbg !5926
  %30 = load i64, ptr %tsc2, align 8, !dbg !5926
  store i64 %30, ptr %__UNIQUE_ID___y295, align 8, !dbg !5926
  %31 = load i64, ptr %__UNIQUE_ID___x294, align 8, !dbg !5926
  %32 = load i64, ptr %__UNIQUE_ID___y295, align 8, !dbg !5926
  %cmp40 = icmp ult i64 %31, %32, !dbg !5926
  br i1 %cmp40, label %cond.true42, label %cond.false43, !dbg !5926

cond.true42:                                      ; preds = %if.end38
  %33 = load i64, ptr %__UNIQUE_ID___x294, align 8, !dbg !5926
  br label %cond.end44, !dbg !5926

cond.false43:                                     ; preds = %if.end38
  %34 = load i64, ptr %__UNIQUE_ID___y295, align 8, !dbg !5926
  br label %cond.end44, !dbg !5926

cond.end44:                                       ; preds = %cond.false43, %cond.true42
  %cond45 = phi i64 [ %33, %cond.true42 ], [ %34, %cond.false43 ], !dbg !5926
  store i64 %cond45, ptr %tmp39, align 8, !dbg !5926
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y295) #16, !dbg !5927
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x294) #16, !dbg !5927
  %35 = load i64, ptr %tmp39, align 8, !dbg !5926
  store i64 %35, ptr %tsc_ref_min, align 8, !dbg !5928
  %36 = load i64, ptr %tsc_pit_min, align 8, !dbg !5929
  %mul46 = mul i64 %36, 100, !dbg !5930
  store i64 %mul46, ptr %delta, align 8, !dbg !5931
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #16, !dbg !5932
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !5838, metadata !DIExpression()), !dbg !5932
  %37 = load i64, ptr %tsc_ref_min, align 8, !dbg !5932
  %conv47 = trunc i64 %37 to i32, !dbg !5932
  store i32 %conv47, ptr %__base, align 4, !dbg !5932
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #16, !dbg !5932
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !5840, metadata !DIExpression()), !dbg !5932
  %38 = load i64, ptr %delta, align 8, !dbg !5932
  %39 = load i32, ptr %__base, align 4, !dbg !5932
  %conv48 = zext i32 %39 to i64, !dbg !5932
  %rem = urem i64 %38, %conv48, !dbg !5932
  %conv49 = trunc i64 %rem to i32, !dbg !5932
  store i32 %conv49, ptr %__rem, align 4, !dbg !5932
  %40 = load i64, ptr %delta, align 8, !dbg !5932
  %41 = load i32, ptr %__base, align 4, !dbg !5932
  %conv50 = zext i32 %41 to i64, !dbg !5932
  %div = udiv i64 %40, %conv50, !dbg !5932
  store i64 %div, ptr %delta, align 8, !dbg !5932
  %42 = load i32, ptr %__rem, align 4, !dbg !5932
  store i32 %42, ptr %tmp51, align 4, !dbg !5932
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #16, !dbg !5933
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #16, !dbg !5933
  %43 = load i32, ptr %tmp51, align 4, !dbg !5932
  %44 = load i64, ptr %delta, align 8, !dbg !5934
  %cmp52 = icmp uge i64 %44, 90, !dbg !5936
  br i1 %cmp52, label %land.lhs.true, label %if.end64, !dbg !5937

land.lhs.true:                                    ; preds = %cond.end44
  %45 = load i64, ptr %delta, align 8, !dbg !5938
  %cmp54 = icmp ule i64 %45, 110, !dbg !5939
  br i1 %cmp54, label %if.then56, label %if.end64, !dbg !5940

if.then56:                                        ; preds = %land.lhs.true
  br label %do.body57, !dbg !5941

do.body57:                                        ; preds = %if.then56
  br label %do.cond58, !dbg !5944

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !5944

do.end59:                                         ; preds = %do.cond58
  %46 = load i32, ptr %hpet, align 4, !dbg !5941
  %tobool61 = icmp ne i32 %46, 0, !dbg !5941
  %47 = zext i1 %tobool61 to i64, !dbg !5941
  %cond62 = select i1 %tobool61, ptr @.str.24, ptr @.str.31, !dbg !5941
  %48 = load i32, ptr %i, align 4, !dbg !5941
  %add = add i32 %48, 1, !dbg !5941
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef @.str.30, ptr noundef %cond62, i32 noundef %add) #17, !dbg !5941
  store i32 %call63, ptr %tmp60, align 4, !dbg !5944
  %49 = load i32, ptr %tmp60, align 4, !dbg !5941
  %50 = load i64, ptr %tsc_ref_min, align 8, !dbg !5946
  store i64 %50, ptr %retval, align 8, !dbg !5947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5947

if.end64:                                         ; preds = %land.lhs.true, %cond.end44
  %51 = load i32, ptr %i, align 4, !dbg !5948
  %cmp65 = icmp eq i32 %51, 1, !dbg !5950
  br i1 %cmp65, label %land.lhs.true67, label %if.end71, !dbg !5951

land.lhs.true67:                                  ; preds = %if.end64
  %52 = load i64, ptr %tsc_pit_min, align 8, !dbg !5952
  %cmp68 = icmp eq i64 %52, -1, !dbg !5953
  br i1 %cmp68, label %if.then70, label %if.end71, !dbg !5954

if.then70:                                        ; preds = %land.lhs.true67
  store i64 59659, ptr %latch, align 8, !dbg !5955
  store i64 50, ptr %ms, align 8, !dbg !5957
  store i32 5000, ptr %loopmin, align 4, !dbg !5958
  br label %if.end71, !dbg !5959

if.end71:                                         ; preds = %if.then70, %land.lhs.true67, %if.end64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5960
  br label %cleanup, !dbg !5960

cleanup:                                          ; preds = %if.end71, %do.end59, %if.then33, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsc_pit_khz) #16, !dbg !5960
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup142 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5961

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %53 = load i32, ptr %i, align 4, !dbg !5962
  %inc = add i32 %53, 1, !dbg !5962
  store i32 %inc, ptr %i, align 4, !dbg !5962
  br label %for.cond, !dbg !5963, !llvm.loop !5964

for.end:                                          ; preds = %for.cond
  %54 = load i64, ptr %tsc_pit_min, align 8, !dbg !5966
  %cmp72 = icmp eq i64 %54, -1, !dbg !5968
  br i1 %cmp72, label %if.then74, label %if.end108, !dbg !5969

if.then74:                                        ; preds = %for.end
  br label %do.body75, !dbg !5970

do.body75:                                        ; preds = %if.then74
  br label %do.cond76, !dbg !5973

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !5973

do.end77:                                         ; preds = %do.cond76
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef @.str.32) #17, !dbg !5970
  store i32 %call79, ptr %tmp78, align 4, !dbg !5973
  %55 = load i32, ptr %tmp78, align 4, !dbg !5970
  %56 = load i32, ptr %hpet, align 4, !dbg !5975
  %tobool80 = icmp ne i32 %56, 0, !dbg !5975
  br i1 %tobool80, label %if.end91, label %land.lhs.true81, !dbg !5977

land.lhs.true81:                                  ; preds = %do.end77
  %57 = load i64, ptr %ref1, align 8, !dbg !5978
  %tobool82 = icmp ne i64 %57, 0, !dbg !5978
  br i1 %tobool82, label %if.end91, label %land.lhs.true83, !dbg !5979

land.lhs.true83:                                  ; preds = %land.lhs.true81
  %58 = load i64, ptr %ref2, align 8, !dbg !5980
  %tobool84 = icmp ne i64 %58, 0, !dbg !5980
  br i1 %tobool84, label %if.end91, label %if.then85, !dbg !5981

if.then85:                                        ; preds = %land.lhs.true83
  br label %do.body86, !dbg !5982

do.body86:                                        ; preds = %if.then85
  br label %do.cond87, !dbg !5985

do.cond87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !5985

do.end88:                                         ; preds = %do.cond87
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef @.str.33) #17, !dbg !5982
  store i32 %call90, ptr %tmp89, align 4, !dbg !5985
  %59 = load i32, ptr %tmp89, align 4, !dbg !5982
  store i64 0, ptr %retval, align 8, !dbg !5987
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup142, !dbg !5987

if.end91:                                         ; preds = %land.lhs.true83, %land.lhs.true81, %do.end77
  %60 = load i64, ptr %tsc_ref_min, align 8, !dbg !5988
  %cmp92 = icmp eq i64 %60, -1, !dbg !5990
  br i1 %cmp92, label %if.then94, label %if.end100, !dbg !5991

if.then94:                                        ; preds = %if.end91
  br label %do.body95, !dbg !5992

do.body95:                                        ; preds = %if.then94
  br label %do.cond96, !dbg !5995

do.cond96:                                        ; preds = %do.body95
  br label %do.end97, !dbg !5995

do.end97:                                         ; preds = %do.cond96
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef @.str.34) #17, !dbg !5992
  store i32 %call99, ptr %tmp98, align 4, !dbg !5995
  %61 = load i32, ptr %tmp98, align 4, !dbg !5992
  store i64 0, ptr %retval, align 8, !dbg !5997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup142, !dbg !5997

if.end100:                                        ; preds = %if.end91
  br label %do.body101, !dbg !5998

do.body101:                                       ; preds = %if.end100
  br label %do.cond102, !dbg !6000

do.cond102:                                       ; preds = %do.body101
  br label %do.end103, !dbg !6000

do.end103:                                        ; preds = %do.cond102
  %62 = load i32, ptr %hpet, align 4, !dbg !5998
  %tobool105 = icmp ne i32 %62, 0, !dbg !5998
  %63 = zext i1 %tobool105 to i64, !dbg !5998
  %cond106 = select i1 %tobool105, ptr @.str.24, ptr @.str.31, !dbg !5998
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef @.str.35, ptr noundef %cond106) #17, !dbg !5998
  store i32 %call107, ptr %tmp104, align 4, !dbg !6000
  %64 = load i32, ptr %tmp104, align 4, !dbg !5998
  %65 = load i64, ptr %tsc_ref_min, align 8, !dbg !6002
  store i64 %65, ptr %retval, align 8, !dbg !6003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup142, !dbg !6003

if.end108:                                        ; preds = %for.end
  %66 = load i32, ptr %hpet, align 4, !dbg !6004
  %tobool109 = icmp ne i32 %66, 0, !dbg !6004
  br i1 %tobool109, label %if.end120, label %land.lhs.true110, !dbg !6006

land.lhs.true110:                                 ; preds = %if.end108
  %67 = load i64, ptr %ref1, align 8, !dbg !6007
  %tobool111 = icmp ne i64 %67, 0, !dbg !6007
  br i1 %tobool111, label %if.end120, label %land.lhs.true112, !dbg !6008

land.lhs.true112:                                 ; preds = %land.lhs.true110
  %68 = load i64, ptr %ref2, align 8, !dbg !6009
  %tobool113 = icmp ne i64 %68, 0, !dbg !6009
  br i1 %tobool113, label %if.end120, label %if.then114, !dbg !6010

if.then114:                                       ; preds = %land.lhs.true112
  br label %do.body115, !dbg !6011

do.body115:                                       ; preds = %if.then114
  br label %do.cond116, !dbg !6014

do.cond116:                                       ; preds = %do.body115
  br label %do.end117, !dbg !6014

do.end117:                                        ; preds = %do.cond116
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef @.str.36) #17, !dbg !6011
  store i32 %call119, ptr %tmp118, align 4, !dbg !6014
  %69 = load i32, ptr %tmp118, align 4, !dbg !6011
  %70 = load i64, ptr %tsc_pit_min, align 8, !dbg !6016
  store i64 %70, ptr %retval, align 8, !dbg !6017
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup142, !dbg !6017

if.end120:                                        ; preds = %land.lhs.true112, %land.lhs.true110, %if.end108
  %71 = load i64, ptr %tsc_ref_min, align 8, !dbg !6018
  %cmp121 = icmp eq i64 %71, -1, !dbg !6020
  br i1 %cmp121, label %if.then123, label %if.end129, !dbg !6021

if.then123:                                       ; preds = %if.end120
  br label %do.body124, !dbg !6022

do.body124:                                       ; preds = %if.then123
  br label %do.cond125, !dbg !6025

do.cond125:                                       ; preds = %do.body124
  br label %do.end126, !dbg !6025

do.end126:                                        ; preds = %do.cond125
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef @.str.37) #17, !dbg !6022
  store i32 %call128, ptr %tmp127, align 4, !dbg !6025
  %72 = load i32, ptr %tmp127, align 4, !dbg !6022
  %73 = load i64, ptr %tsc_pit_min, align 8, !dbg !6027
  store i64 %73, ptr %retval, align 8, !dbg !6028
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup142, !dbg !6028

if.end129:                                        ; preds = %if.end120
  br label %do.body130, !dbg !6029

do.body130:                                       ; preds = %if.end129
  br label %do.cond131, !dbg !6031

do.cond131:                                       ; preds = %do.body130
  br label %do.end132, !dbg !6031

do.end132:                                        ; preds = %do.cond131
  %74 = load i32, ptr %hpet, align 4, !dbg !6029
  %tobool134 = icmp ne i32 %74, 0, !dbg !6029
  %75 = zext i1 %tobool134 to i64, !dbg !6029
  %cond135 = select i1 %tobool134, ptr @.str.24, ptr @.str.31, !dbg !6029
  %76 = load i64, ptr %tsc_pit_min, align 8, !dbg !6029
  %77 = load i64, ptr %tsc_ref_min, align 8, !dbg !6029
  %call136 = call i32 (ptr, ...) @_printk(ptr noundef @.str.38, ptr noundef %cond135, i64 noundef %76, i64 noundef %77) #17, !dbg !6029
  store i32 %call136, ptr %tmp133, align 4, !dbg !6031
  %78 = load i32, ptr %tmp133, align 4, !dbg !6029
  br label %do.body137, !dbg !6033

do.body137:                                       ; preds = %do.end132
  br label %do.cond138, !dbg !6035

do.cond138:                                       ; preds = %do.body137
  br label %do.end139, !dbg !6035

do.end139:                                        ; preds = %do.cond138
  %call141 = call i32 (ptr, ...) @_printk(ptr noundef @.str.36) #17, !dbg !6033
  store i32 %call141, ptr %tmp140, align 4, !dbg !6035
  %79 = load i32, ptr %tmp140, align 4, !dbg !6033
  %80 = load i64, ptr %tsc_pit_min, align 8, !dbg !6037
  store i64 %80, ptr %retval, align 8, !dbg !6038
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup142, !dbg !6038

cleanup142:                                       ; preds = %do.end139, %do.end126, %do.end117, %do.end103, %do.end97, %do.end88, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %loopmin) #16, !dbg !6039
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6039
  call void @llvm.lifetime.end.p0(i64 4, ptr %hpet) #16, !dbg !6039
  call void @llvm.lifetime.end.p0(i64 8, ptr %ms) #16, !dbg !6039
  call void @llvm.lifetime.end.p0(i64 8, ptr %latch) #16, !dbg !6039
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6039
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsc_ref_min) #16, !dbg !6039
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsc_pit_min) #16, !dbg !6039
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref2) #16, !dbg !6039
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref1) #16, !dbg !6039
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #16, !dbg !6039
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsc2) #16, !dbg !6039
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsc1) #16, !dbg !6039
  %81 = load i64, ptr %retval, align 8, !dbg !6039
  ret i64 %81, !dbg !6039
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pit_calibrate_tsc(i32 noundef %latch, i64 noundef %ms, i32 noundef %loopmin) #8 align 16 !dbg !6040 {
entry:
  %retval = alloca i64, align 8
  %latch.addr = alloca i32, align 4
  %ms.addr = alloca i64, align 8
  %loopmin.addr = alloca i32, align 4
  %tsc = alloca i64, align 8
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %delta = alloca i64, align 8
  %tscmin = alloca i64, align 8
  %tscmax = alloca i64, align 8
  %pitcnt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %latch, ptr %latch.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %latch.addr, metadata !6044, metadata !DIExpression()), !dbg !6057
  store i64 %ms, ptr %ms.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ms.addr, metadata !6045, metadata !DIExpression()), !dbg !6058
  store i32 %loopmin, ptr %loopmin.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %loopmin.addr, metadata !6046, metadata !DIExpression()), !dbg !6059
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsc) #16, !dbg !6060
  call void @llvm.dbg.declare(metadata ptr %tsc, metadata !6047, metadata !DIExpression()), !dbg !6061
  call void @llvm.lifetime.start.p0(i64 8, ptr %t1) #16, !dbg !6060
  call void @llvm.dbg.declare(metadata ptr %t1, metadata !6048, metadata !DIExpression()), !dbg !6062
  call void @llvm.lifetime.start.p0(i64 8, ptr %t2) #16, !dbg !6060
  call void @llvm.dbg.declare(metadata ptr %t2, metadata !6049, metadata !DIExpression()), !dbg !6063
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #16, !dbg !6060
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !6050, metadata !DIExpression()), !dbg !6064
  call void @llvm.lifetime.start.p0(i64 8, ptr %tscmin) #16, !dbg !6065
  call void @llvm.dbg.declare(metadata ptr %tscmin, metadata !6051, metadata !DIExpression()), !dbg !6066
  call void @llvm.lifetime.start.p0(i64 8, ptr %tscmax) #16, !dbg !6065
  call void @llvm.dbg.declare(metadata ptr %tscmax, metadata !6052, metadata !DIExpression()), !dbg !6067
  call void @llvm.lifetime.start.p0(i64 4, ptr %pitcnt) #16, !dbg !6068
  call void @llvm.dbg.declare(metadata ptr %pitcnt, metadata !6053, metadata !DIExpression()), !dbg !6069
  %call = call zeroext i1 @has_legacy_pic() #15, !dbg !6070
  br i1 %call, label %if.end, label %if.then, !dbg !6072

if.then:                                          ; preds = %entry
  call void @__const_udelay(i64 noundef 42950000) #15, !dbg !6073
  call void @__const_udelay(i64 noundef 42950000) #15, !dbg !6079
  call void @__const_udelay(i64 noundef 42950000) #15, !dbg !6084
  call void @__const_udelay(i64 noundef 42950000) #15, !dbg !6089
  call void @__const_udelay(i64 noundef 42950000) #15, !dbg !6094
  store i64 -1, ptr %retval, align 8, !dbg !6099
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6099

if.end:                                           ; preds = %entry
  %call1 = call zeroext i8 @__inb(i16 noundef zeroext 97) #15, !dbg !6100
  %conv = zext i8 %call1 to i32, !dbg !6100
  %and = and i32 %conv, -3, !dbg !6101
  %or = or i32 %and, 1, !dbg !6102
  %conv2 = trunc i32 %or to i8, !dbg !6103
  call void @__outb(i8 noundef zeroext %conv2, i16 noundef zeroext 97) #15, !dbg !6104
  call void @__outb(i8 noundef zeroext -80, i16 noundef zeroext 67) #15, !dbg !6105
  %0 = load i32, ptr %latch.addr, align 4, !dbg !6106
  %and3 = and i32 %0, 255, !dbg !6107
  %conv4 = trunc i32 %and3 to i8, !dbg !6106
  call void @__outb(i8 noundef zeroext %conv4, i16 noundef zeroext 66) #15, !dbg !6108
  %1 = load i32, ptr %latch.addr, align 4, !dbg !6109
  %shr = lshr i32 %1, 8, !dbg !6110
  %conv5 = trunc i32 %shr to i8, !dbg !6109
  call void @__outb(i8 noundef zeroext %conv5, i16 noundef zeroext 66) #15, !dbg !6111
  %call6 = call i64 @get_cycles() #15, !dbg !6112
  store i64 %call6, ptr %t2, align 8, !dbg !6113
  store i64 %call6, ptr %t1, align 8, !dbg !6114
  store i64 %call6, ptr %tsc, align 8, !dbg !6115
  store i32 0, ptr %pitcnt, align 4, !dbg !6116
  store i64 0, ptr %tscmax, align 8, !dbg !6117
  store i64 -1, ptr %tscmin, align 8, !dbg !6118
  br label %while.cond, !dbg !6119

while.cond:                                       ; preds = %if.end23, %if.end
  %call7 = call zeroext i8 @__inb(i16 noundef zeroext 97) #15, !dbg !6120
  %conv8 = zext i8 %call7 to i32, !dbg !6120
  %and9 = and i32 %conv8, 32, !dbg !6121
  %cmp = icmp eq i32 %and9, 0, !dbg !6122
  br i1 %cmp, label %while.body, label %while.end, !dbg !6119

while.body:                                       ; preds = %while.cond
  %call11 = call i64 @get_cycles() #15, !dbg !6123
  store i64 %call11, ptr %t2, align 8, !dbg !6125
  %2 = load i64, ptr %t2, align 8, !dbg !6126
  %3 = load i64, ptr %tsc, align 8, !dbg !6127
  %sub = sub i64 %2, %3, !dbg !6128
  store i64 %sub, ptr %delta, align 8, !dbg !6129
  %4 = load i64, ptr %t2, align 8, !dbg !6130
  store i64 %4, ptr %tsc, align 8, !dbg !6131
  %5 = load i64, ptr %delta, align 8, !dbg !6132
  %6 = load i64, ptr %tscmin, align 8, !dbg !6134
  %cmp12 = icmp ult i64 %5, %6, !dbg !6135
  br i1 %cmp12, label %if.then14, label %if.end17, !dbg !6136

if.then14:                                        ; preds = %while.body
  %7 = load i64, ptr %delta, align 8, !dbg !6137
  %conv15 = trunc i64 %7 to i32, !dbg !6138
  %conv16 = zext i32 %conv15 to i64, !dbg !6138
  store i64 %conv16, ptr %tscmin, align 8, !dbg !6139
  br label %if.end17, !dbg !6140

if.end17:                                         ; preds = %if.then14, %while.body
  %8 = load i64, ptr %delta, align 8, !dbg !6141
  %9 = load i64, ptr %tscmax, align 8, !dbg !6143
  %cmp18 = icmp ugt i64 %8, %9, !dbg !6144
  br i1 %cmp18, label %if.then20, label %if.end23, !dbg !6145

if.then20:                                        ; preds = %if.end17
  %10 = load i64, ptr %delta, align 8, !dbg !6146
  %conv21 = trunc i64 %10 to i32, !dbg !6147
  %conv22 = zext i32 %conv21 to i64, !dbg !6147
  store i64 %conv22, ptr %tscmax, align 8, !dbg !6148
  br label %if.end23, !dbg !6149

if.end23:                                         ; preds = %if.then20, %if.end17
  %11 = load i32, ptr %pitcnt, align 4, !dbg !6150
  %inc = add i32 %11, 1, !dbg !6150
  store i32 %inc, ptr %pitcnt, align 4, !dbg !6150
  br label %while.cond, !dbg !6119, !llvm.loop !6151

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr %pitcnt, align 4, !dbg !6153
  %13 = load i32, ptr %loopmin.addr, align 4, !dbg !6155
  %cmp24 = icmp slt i32 %12, %13, !dbg !6156
  br i1 %cmp24, label %if.then28, label %lor.lhs.false, !dbg !6157

lor.lhs.false:                                    ; preds = %while.end
  %14 = load i64, ptr %tscmax, align 8, !dbg !6158
  %15 = load i64, ptr %tscmin, align 8, !dbg !6159
  %mul = mul i64 10, %15, !dbg !6160
  %cmp26 = icmp ugt i64 %14, %mul, !dbg !6161
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !6162

if.then28:                                        ; preds = %lor.lhs.false, %while.end
  store i64 -1, ptr %retval, align 8, !dbg !6163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6163

if.end29:                                         ; preds = %lor.lhs.false
  %16 = load i64, ptr %t2, align 8, !dbg !6164
  %17 = load i64, ptr %t1, align 8, !dbg !6165
  %sub30 = sub i64 %16, %17, !dbg !6166
  store i64 %sub30, ptr %delta, align 8, !dbg !6167
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #16, !dbg !6168
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !6054, metadata !DIExpression()), !dbg !6168
  %18 = load i64, ptr %ms.addr, align 8, !dbg !6168
  %conv31 = trunc i64 %18 to i32, !dbg !6168
  store i32 %conv31, ptr %__base, align 4, !dbg !6168
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #16, !dbg !6168
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !6056, metadata !DIExpression()), !dbg !6168
  %19 = load i64, ptr %delta, align 8, !dbg !6168
  %20 = load i32, ptr %__base, align 4, !dbg !6168
  %conv32 = zext i32 %20 to i64, !dbg !6168
  %rem = urem i64 %19, %conv32, !dbg !6168
  %conv33 = trunc i64 %rem to i32, !dbg !6168
  store i32 %conv33, ptr %__rem, align 4, !dbg !6168
  %21 = load i64, ptr %delta, align 8, !dbg !6168
  %22 = load i32, ptr %__base, align 4, !dbg !6168
  %conv34 = zext i32 %22 to i64, !dbg !6168
  %div = udiv i64 %21, %conv34, !dbg !6168
  store i64 %div, ptr %delta, align 8, !dbg !6168
  %23 = load i32, ptr %__rem, align 4, !dbg !6168
  store i32 %23, ptr %tmp, align 4, !dbg !6168
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #16, !dbg !6169
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #16, !dbg !6169
  %24 = load i32, ptr %tmp, align 4, !dbg !6168
  %25 = load i64, ptr %delta, align 8, !dbg !6170
  store i64 %25, ptr %retval, align 8, !dbg !6171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6171

cleanup:                                          ; preds = %if.end29, %if.then28, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pitcnt) #16, !dbg !6172
  call void @llvm.lifetime.end.p0(i64 8, ptr %tscmax) #16, !dbg !6172
  call void @llvm.lifetime.end.p0(i64 8, ptr %tscmin) #16, !dbg !6172
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #16, !dbg !6172
  call void @llvm.lifetime.end.p0(i64 8, ptr %t2) #16, !dbg !6172
  call void @llvm.lifetime.end.p0(i64 8, ptr %t1) #16, !dbg !6172
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsc) #16, !dbg !6172
  %26 = load i64, ptr %retval, align 8, !dbg !6172
  ret i64 %26, !dbg !6172
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6173 dso_local void @__const_udelay(i64 noundef) #10

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6175 dso_local void @use_tsc_delay() #11 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6177 dso_local zeroext i1 @tsc_store_and_check_tsc_adjust(i1 noundef zeroext) #10

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @cyc2ns_init_boot_cpu() #0 section ".init.text" align 16 !dbg !6178 {
entry:
  %c2n = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify4 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2n) #16, !dbg !6193
  call void @llvm.dbg.declare(metadata ptr %c2n, metadata !6180, metadata !DIExpression()), !dbg !6194
  br label %do.body, !dbg !6195

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6196
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6181, metadata !DIExpression()), !dbg !6196
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6196
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6196
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6195
  br label %do.cond, !dbg !6196

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6196

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #16, !dbg !6197
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6184, metadata !DIExpression()), !dbg !6197
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @cyc2ns) #18, !dbg !6197, !srcloc !6198
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !6197
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !6197
  %3 = inttoptr i64 %2 to ptr, !dbg !6197
  store ptr %3, ptr %tmp1, align 8, !dbg !6197
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #16, !dbg !6195
  %4 = load ptr, ptr %tmp1, align 8, !dbg !6197
  store ptr %4, ptr %tmp, align 8, !dbg !6196
  %5 = load ptr, ptr %tmp, align 8, !dbg !6195
  store ptr %5, ptr %c2n, align 8, !dbg !6194
  %6 = load ptr, ptr %c2n, align 8, !dbg !6199
  %seq = getelementptr inbounds %struct.cyc2ns, ptr %6, i32 0, i32 1, !dbg !6199
  %seqcount = getelementptr inbounds %struct.seqcount_latch_t, ptr %seq, i32 0, i32 0, !dbg !6199
  call void @__seqcount_init(ptr noundef %seqcount, ptr noundef null, ptr noundef null) #15, !dbg !6199
  %7 = load i32, ptr @tsc_khz, align 4, !dbg !6200
  %conv = zext i32 %7 to i64, !dbg !6200
  call void @__this_cpu_preempt_check(ptr noundef @.str.4) #15, !dbg !6201
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #16, !dbg !6202
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6186, metadata !DIExpression()), !dbg !6202
  br label %do.body3, !dbg !6202

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify4) #16, !dbg !6203
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify4, metadata !6189, metadata !DIExpression()), !dbg !6203
  store ptr null, ptr %__vpp_verify4, align 8, !dbg !6203
  %8 = load ptr, ptr %__vpp_verify4, align 8, !dbg !6203
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify4) #16, !dbg !6202
  br label %do.cond5, !dbg !6203

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !6203

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #16, !dbg !6204
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6191, metadata !DIExpression()), !dbg !6204
  %9 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 2)) #18, !dbg !6204, !srcloc !6205
  store i32 %9, ptr %pfo_val__, align 4, !dbg !6204
  %10 = load i32, ptr %pfo_val__, align 4, !dbg !6204
  %conv8 = zext i32 %10 to i64, !dbg !6204
  %conv9 = trunc i64 %conv8 to i32, !dbg !6204
  store i32 %conv9, ptr %tmp7, align 4, !dbg !6204
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #16, !dbg !6202
  %11 = load i32, ptr %tmp7, align 4, !dbg !6204
  store i32 %11, ptr %pscr_ret__, align 4, !dbg !6202
  %12 = load i32, ptr %pscr_ret__, align 4, !dbg !6202
  store i32 %12, ptr %tmp10, align 4, !dbg !6202
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #16, !dbg !6201
  %13 = load i32, ptr %tmp10, align 4, !dbg !6202
  store i32 %13, ptr %tmp2, align 4, !dbg !6201
  %14 = load i32, ptr %tmp2, align 4, !dbg !6201
  %call = call i64 @rdtsc() #15, !dbg !6206
  call void @__set_cyc2ns_scale(i64 noundef %conv, i32 noundef %14, i64 noundef %call) #15, !dbg !6207
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2n) #16, !dbg !6208
  ret void, !dbg !6208
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6209 dso_local void @static_key_enable(ptr noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__seqcount_init(ptr noundef %s, ptr noundef %name, ptr noundef %key) #9 align 16 !dbg !6212 {
entry:
  %s.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6219, metadata !DIExpression()), !dbg !6222
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6220, metadata !DIExpression()), !dbg !6223
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6221, metadata !DIExpression()), !dbg !6224
  br label %do.body, !dbg !6225

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %name.addr, align 8, !dbg !6226
  %1 = load ptr, ptr %key.addr, align 8, !dbg !6226
  br label %do.end, !dbg !6226

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %s.addr, align 8, !dbg !6228
  %sequence = getelementptr inbounds %struct.seqcount, ptr %2, i32 0, i32 0, !dbg !6229
  store i32 0, ptr %sequence, align 4, !dbg !6230
  ret void, !dbg !6231
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6232 dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #9 align 16 !dbg !6235 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6239, metadata !DIExpression()), !dbg !6241
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !6242
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6240, metadata !DIExpression()), !dbg !6243
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6244
  %call = call i64 @__rdmsr(i32 noundef %0) #15, !dbg !6245
  store i64 %call, ptr %val, align 8, !dbg !6246
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #15, !dbg !6247
  br i1 %call1, label %if.then, label %if.end, !dbg !6249

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !6250
  %2 = load i64, ptr %val, align 8, !dbg !6251
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #15, !dbg !6252
  br label %if.end, !dbg !6252

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !6253
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !6254
  ret i64 %3, !dbg !6255
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #1 align 16 !dbg !6256 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6258, metadata !DIExpression()), !dbg !6261
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #16, !dbg !6262
  call void @llvm.dbg.declare(metadata ptr %low, metadata !6259, metadata !DIExpression()), !dbg !6262
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #16, !dbg !6262
  call void @llvm.dbg.declare(metadata ptr %high, metadata !6260, metadata !DIExpression()), !dbg !6262
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6263
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #16, !dbg !6264, !srcloc !6265
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !6264
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !6264
  store i64 %asmresult, ptr %low, align 8, !dbg !6264
  store i64 %asmresult1, ptr %high, align 8, !dbg !6264
  %2 = load i64, ptr %low, align 8, !dbg !6266
  %3 = load i64, ptr %high, align 8, !dbg !6266
  %shl = shl i64 %3, 32, !dbg !6266
  %or = or i64 %2, %shl, !dbg !6266
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #16, !dbg !6267
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #16, !dbg !6267
  ret i64 %or, !dbg !6268
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #1 align 16 !dbg !6269 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6273, metadata !DIExpression()), !dbg !6274
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6275
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #15, !dbg !6276
  ret i1 %call, !dbg !6277
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6278 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #1 align 16 !dbg !6281 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6285, metadata !DIExpression()), !dbg !6288
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !6286, metadata !DIExpression()), !dbg !6289
  %0 = load ptr, ptr %key.addr, align 8, !dbg !6290
  %1 = load i8, ptr %branch.addr, align 1, !dbg !6291, !range !1777, !noundef !590
  %tobool = trunc i8 %1 to i1, !dbg !6291
  %conv = zext i1 %tobool to i32, !dbg !6291
  %or = or i32 2, %conv, !dbg !6292
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #16
          to label %asm.fallthrough [label %l_yes], !dbg !6293, !srcloc !6294

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6295
  br label %return, !dbg !6295

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !6287), !dbg !6296
  store i1 true, ptr %retval, align 1, !dbg !6297
  br label %return, !dbg !6297

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !6298
  ret i1 %2, !dbg !6298
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #1 align 16 !dbg !6299 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6301, metadata !DIExpression()), !dbg !6302
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6303
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #15, !dbg !6304
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !6305
  ret i32 %1, !dbg !6306
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #1 align 16 !dbg !6307 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6311, metadata !DIExpression()), !dbg !6313
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !6312, metadata !DIExpression()), !dbg !6314
  ret void, !dbg !6315
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #6 = { nocallback nounwind }
attributes #7 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { noredzone }
attributes #16 = { nounwind }
attributes #17 = { cold noredzone }
attributes #18 = { nounwind memory(read) }
attributes #19 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!1619}
!llvm.module.flags = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627}
!llvm.ident = !{!1628}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cpu_khz", scope: !2, file: !3, line: 33, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.tsc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/tsc\22 -D KBUILD_BASENAME=\22tsc\22 -D KBUILD_MODNAME=\22tsc\22 -D __KBUILD_MODNAME=kmod_tsc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/tsc.ll arch/x86/kernel/tsc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !99, globals: !245, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/tsc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3fe53fcaf0f205ee80fa162c04c9895")
!4 = !{!5, !11, !17, !26, !33, !39, !45, !49, !55, !60, !66, !73}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clocksource_ids", file: !12, line: 6, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/clocksource_ids.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "774f19ce120af1af8c42b816fa8c1ff1")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "CSID_GENERIC", value: 0)
!15 = !DIEnumerator(name: "CSID_ARM_ARCH_COUNTER", value: 1)
!16 = !DIEnumerator(name: "CSID_MAX", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vdso_clock_mode", file: !18, line: 11, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/vdso/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5c94bac8b1931d6fab42a415ede12b1")
!19 = !{!20, !21, !22, !23, !24, !25}
!20 = !DIEnumerator(name: "VDSO_CLOCKMODE_NONE", value: 0)
!21 = !DIEnumerator(name: "VDSO_CLOCKMODE_TSC", value: 1)
!22 = !DIEnumerator(name: "VDSO_CLOCKMODE_PVCLOCK", value: 2)
!23 = !DIEnumerator(name: "VDSO_CLOCKMODE_HVCLOCK", value: 3)
!24 = !DIEnumerator(name: "VDSO_CLOCKMODE_MAX", value: 4)
!25 = !DIEnumerator(name: "VDSO_CLOCKMODE_TIMENS", value: 2147483647)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !27, line: 312, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!28 = !{!29, !30, !31, !32}
!29 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!30 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!31 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!32 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !34, line: 26, baseType: !7, size: 32, elements: !35)
!34 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!35 = !{!36, !37, !38}
!36 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!37 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!38 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !40, line: 41, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!43 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!44 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !40, line: 80, baseType: !7, size: 32, elements: !46)
!46 = !{!47, !48}
!47 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!48 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpufreq_table_sorting", file: !50, line: 41, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/cpufreq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad5b2d8eef98749599a01da4cdfaed5a")
!51 = !{!52, !53, !54}
!52 = !DIEnumerator(name: "CPUFREQ_TABLE_UNSORTED", value: 0)
!53 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_ASCENDING", value: 1)
!54 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_DESCENDING", value: 2)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !56, line: 65, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!57 = !{!58, !59}
!58 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!59 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !61, line: 16, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "TT_NONE", value: 0)
!64 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!65 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !67, line: 51, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!70 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!71 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!72 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !74, line: 30, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!76 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!77 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!78 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!79 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!80 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!81 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!82 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!83 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!84 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!85 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!86 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!87 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!88 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!89 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!90 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!91 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!92 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!93 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!94 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!95 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!96 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!97 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!98 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!99 = !{!100, !101, !7, !102, !103, !104, !109, !110, !112, !115, !116, !125, !126, !128, !129, !204, !207, !208, !210, !213, !216, !239, !242, !106, !243}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!102 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !105, line: 23, baseType: !106)
!105 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !107, line: 31, baseType: !108)
!107 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!108 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !105, line: 21, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !107, line: 27, baseType: !7)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !100)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !119, line: 19, size: 64, elements: !120)
!119 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !118, file: !119, line: 19, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 1)
!125 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !127, line: 113, baseType: !104)
!127 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !131, line: 83, size: 2368, elements: !132)
!131 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!132 = !{!133, !146, !147, !148, !152, !153, !154, !155, !156, !157, !158, !166, !171, !175, !176, !177, !178, !179, !180, !181, !182, !183, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !200, !201, !203}
!133 = !DIDerivedType(tag: DW_TAG_member, scope: !130, file: !131, line: 84, baseType: !134, size: 32)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !130, file: !131, line: 84, size: 32, elements: !135)
!135 = !{!136, !145}
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !131, line: 90, baseType: !137, size: 32)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !131, line: 90, size: 32, elements: !138)
!138 = !{!139, !142, !143, !144}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !137, file: !131, line: 91, baseType: !140, size: 8)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !107, line: 21, baseType: !141)
!141 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !137, file: !131, line: 93, baseType: !140, size: 8, offset: 8)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !137, file: !131, line: 95, baseType: !140, size: 8, offset: 16)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !137, file: !131, line: 96, baseType: !140, size: 8, offset: 24)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !134, file: !131, line: 99, baseType: !111, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !130, file: !131, line: 101, baseType: !140, size: 8, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !130, file: !131, line: 104, baseType: !125, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !130, file: !131, line: 107, baseType: !149, size: 160, offset: 96)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 160, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 5)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !130, file: !131, line: 109, baseType: !140, size: 8, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !130, file: !131, line: 110, baseType: !140, size: 8, offset: 264)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !130, file: !131, line: 112, baseType: !140, size: 8, offset: 272)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !130, file: !131, line: 113, baseType: !140, size: 8, offset: 280)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !130, file: !131, line: 115, baseType: !111, size: 32, offset: 288)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !130, file: !131, line: 117, baseType: !125, size: 32, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !130, file: !131, line: 123, baseType: !159, size: 768, offset: 384)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !130, file: !131, line: 123, size: 768, elements: !160)
!160 = !{!161, !165}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !159, file: !131, line: 124, baseType: !162, size: 768)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 768, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 24)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !159, file: !131, line: 125, baseType: !102, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !130, file: !131, line: 127, baseType: !167, size: 128, offset: 1152)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 128, elements: !169)
!168 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!169 = !{!170}
!170 = !DISubrange(count: 16)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !130, file: !131, line: 128, baseType: !172, size: 512, offset: 1280)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 512, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !130, file: !131, line: 130, baseType: !7, size: 32, offset: 1792)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !130, file: !131, line: 131, baseType: !125, size: 32, offset: 1824)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !130, file: !131, line: 133, baseType: !125, size: 32, offset: 1856)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !130, file: !131, line: 134, baseType: !125, size: 32, offset: 1888)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !130, file: !131, line: 135, baseType: !125, size: 32, offset: 1920)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !130, file: !131, line: 136, baseType: !125, size: 32, offset: 1952)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !130, file: !131, line: 137, baseType: !102, size: 64, offset: 1984)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !130, file: !131, line: 139, baseType: !104, size: 64, offset: 2048)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !130, file: !131, line: 141, baseType: !184, size: 16, offset: 2112)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !105, line: 19, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !107, line: 24, baseType: !186)
!186 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !130, file: !131, line: 142, baseType: !184, size: 16, offset: 2128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !130, file: !131, line: 143, baseType: !184, size: 16, offset: 2144)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !130, file: !131, line: 144, baseType: !184, size: 16, offset: 2160)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !130, file: !131, line: 146, baseType: !184, size: 16, offset: 2176)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !130, file: !131, line: 148, baseType: !184, size: 16, offset: 2192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !130, file: !131, line: 150, baseType: !184, size: 16, offset: 2208)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !130, file: !131, line: 152, baseType: !184, size: 16, offset: 2224)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !130, file: !131, line: 153, baseType: !184, size: 16, offset: 2240)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !130, file: !131, line: 154, baseType: !184, size: 16, offset: 2256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !130, file: !131, line: 156, baseType: !184, size: 16, offset: 2272)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !130, file: !131, line: 158, baseType: !198, size: 8, offset: 2288)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !127, line: 35, baseType: !199)
!199 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !130, file: !131, line: 159, baseType: !110, size: 32, offset: 2304)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !130, file: !131, line: 161, baseType: !202, size: 8, offset: 2336)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !105, line: 17, baseType: !140)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !130, file: !131, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !119, line: 913, baseType: !206)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 64, elements: !123)
!207 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !168)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !212)
!212 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !125)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cyc2ns", file: !3, line: 58, size: 320, elements: !218)
!218 = !{!219, !229}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !217, file: !3, line: 59, baseType: !220, size: 256)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, elements: !227)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cyc2ns_data", file: !222, line: 29, size: 128, elements: !223)
!222 = !DIFile(filename: "./arch/x86/include/asm/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26381dd2a6e8f4b5f231663701dbc646")
!223 = !{!224, !225, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "cyc2ns_mul", scope: !221, file: !222, line: 30, baseType: !110, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "cyc2ns_shift", scope: !221, file: !222, line: 31, baseType: !110, size: 32, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "cyc2ns_offset", scope: !221, file: !222, line: 32, baseType: !104, size: 64, offset: 64)
!227 = !{!228}
!228 = !DISubrange(count: 2)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !217, file: !3, line: 60, baseType: !230, size: 32, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_latch_t", file: !231, line: 649, baseType: !232)
!231 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !231, line: 647, size: 32, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !232, file: !231, line: 648, baseType: !235, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !231, line: 69, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !231, line: 64, size: 32, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !236, file: !231, line: 65, baseType: !7, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!245 = !{!246, !248, !250, !262, !267, !274, !276, !281, !283, !285, !287, !289, !294, !296, !298, !300, !302, !307, !312, !0, !315, !317, !319, !321, !323, !325, !327, !1377, !1379, !1381, !1383, !1385, !1387, !1392, !1394, !1410, !1418, !1422, !1427, !1430, !1435, !1440, !1442, !1447, !1452, !1454, !1457, !1462, !1464, !1469, !1471, !1476, !1478, !1491, !1496, !1498, !1500, !1502, !1504, !1506, !1508, !1513, !1516, !1518, !1520, !1543, !1545, !1547, !1552, !1557, !1562, !1564, !1566, !1571, !1576, !1581, !1586, !1591, !1596, !1601, !1606, !1608, !1610, !1612, !1614}
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpu_khz285", scope: !2, file: !3, line: 34, type: !100, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tsc_khz286", scope: !2, file: !3, line: 37, type: !100, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "__setup_tsc_early_khz_setup", scope: !2, file: !3, line: 70, type: !252, isLocal: true, isDefinition: true, align: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !253, line: 324, size: 192, elements: !254)
!253 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!254 = !{!255, !256, !261}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !252, file: !253, line: 325, baseType: !243, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !252, file: !253, line: 326, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!125, !260}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !252, file: !253, line: 327, baseType: !125, size: 32, offset: 128)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace287", scope: !264, file: !3, line: 95, type: !100, isLocal: true, isDefinition: true)
!264 = distinct !DISubprogram(name: "cyc2ns_read_end", scope: !3, file: !3, line: 93, type: !265, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!265 = !DISubroutineType(types: !266)
!266 = !{null}
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace290", scope: !269, file: !3, line: 284, type: !100, isLocal: true, isDefinition: true)
!269 = distinct !DISubprogram(name: "sched_clock", scope: !3, file: !3, line: 279, type: !270, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !272)
!270 = !DISubroutineType(types: !271)
!271 = !{!104}
!272 = !{!273}
!273 = !DILocalVariable(name: "now", scope: !269, file: !3, line: 281, type: !104)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_check_tsc_unstable291", scope: !2, file: !3, line: 292, type: !100, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 168, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 21)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "__setup_notsc_setup", scope: !2, file: !3, line: 312, type: !252, isLocal: true, isDefinition: true, align: 64)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "__setup_tsc_setup", scope: !2, file: !3, line: 345, type: !252, isLocal: true, isDefinition: true, align: 64)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_recalibrate_cpu_khz296", scope: !2, file: !3, line: 951, type: !100, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_tsc__297_1064_cpufreq_register_tsc_scaling1298", scope: !2, file: !3, line: 1064, type: !100, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1210, type: !291, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 312, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 39)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mark_tsc_unstable299", scope: !2, file: !3, line: 1216, type: !100, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_convert_art_to_tsc300", scope: !2, file: !3, line: 1315, type: !100, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_convert_art_ns_to_tsc301", scope: !2, file: !3, line: 1353, type: !100, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_tsc__302_1499_init_tsc_clocksource6303", scope: !2, file: !3, line: 1499, type: !100, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1591, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 224, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 28)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1608, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 160, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 20)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1625, type: !314, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 40, elements: !150)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(name: "tsc_khz", scope: !2, file: !3, line: 36, type: !7, isLocal: false, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "tsc_unstable", scope: !2, file: !3, line: 44, type: !125, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "tsc_clocksource_reliable", scope: !2, file: !3, line: 49, type: !125, isLocal: false, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(name: "art_to_tsc_numerator", scope: !2, file: !3, line: 53, type: !110, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(name: "art_to_tsc_denominator", scope: !2, file: !3, line: 54, type: !110, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "art_to_tsc_offset", scope: !2, file: !3, line: 55, type: !104, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "art_related_clocksource", scope: !2, file: !3, line: 56, type: !329, isLocal: true, isDefinition: true)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clocksource", file: !331, line: 96, size: 1472, elements: !332)
!331 = !DIFile(filename: "./include/linux/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f664f6d0ed93221709a7301012f8ae1")
!332 = !{!333, !337, !338, !339, !340, !341, !342, !343, !344, !345, !351, !352, !353, !354, !355, !359, !363, !364, !365, !366, !367, !368, !369, !370}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !330, file: !331, line: 97, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!104, !329}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !330, file: !331, line: 98, baseType: !104, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !330, file: !331, line: 99, baseType: !110, size: 32, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !330, file: !331, line: 100, baseType: !110, size: 32, offset: 160)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "max_idle_ns", scope: !330, file: !331, line: 101, baseType: !104, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "maxadj", scope: !330, file: !331, line: 102, baseType: !110, size: 32, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "uncertainty_margin", scope: !330, file: !331, line: 103, baseType: !110, size: 32, offset: 288)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "max_cycles", scope: !330, file: !331, line: 107, baseType: !104, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !330, file: !331, line: 108, baseType: !243, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !330, file: !331, line: 109, baseType: !346, size: 128, offset: 448)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !127, line: 190, size: 128, elements: !347)
!347 = !{!348, !350}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !127, line: 191, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !346, file: !127, line: 191, baseType: !349, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !330, file: !331, line: 110, baseType: !125, size: 32, offset: 576)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !330, file: !331, line: 111, baseType: !11, size: 32, offset: 608)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_clock_mode", scope: !330, file: !331, line: 112, baseType: !17, size: 32, offset: 640)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !331, line: 113, baseType: !102, size: 64, offset: 704)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !330, file: !331, line: 115, baseType: !356, size: 64, offset: 768)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!125, !329}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !330, file: !331, line: 116, baseType: !360, size: 64, offset: 832)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !329}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !330, file: !331, line: 117, baseType: !360, size: 64, offset: 896)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !330, file: !331, line: 118, baseType: !360, size: 64, offset: 960)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mark_unstable", scope: !330, file: !331, line: 119, baseType: !360, size: 64, offset: 1024)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tick_stable", scope: !330, file: !331, line: 120, baseType: !360, size: 64, offset: 1088)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "wd_list", scope: !330, file: !331, line: 125, baseType: !346, size: 128, offset: 1152)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "cs_last", scope: !330, file: !331, line: 126, baseType: !104, size: 64, offset: 1280)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "wd_last", scope: !330, file: !331, line: 127, baseType: !104, size: 64, offset: 1344)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !330, file: !331, line: 129, baseType: !371, size: 64, offset: 1408)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !27, line: 402, size: 9216, align: 512, elements: !373)
!373 = !{!374, !375, !376, !380, !1034, !1060, !1061, !1062, !1063, !1067, !1070, !1071, !1072, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1139, !1143, !1161, !1178, !1179, !1180, !1181, !1190, !1213, !1214, !1217, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1231, !1232, !1338, !1346, !1347, !1348, !1350, !1354, !1355, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1372, !1373, !1374, !1376}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !372, file: !27, line: 403, baseType: !26, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !372, file: !27, line: 406, baseType: !346, size: 128, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !372, file: !27, line: 409, baseType: !377, size: 448, offset: 192)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 448, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 56)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !372, file: !27, line: 417, baseType: !381, size: 768, offset: 640)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !27, line: 45, size: 768, elements: !382)
!382 = !{!383, !1017, !1018, !1019, !1022}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !381, file: !27, line: 46, baseType: !384, size: 512)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !385, line: 64, size: 512, elements: !386)
!385 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!386 = !{!387, !388, !389, !391, !469, !888, !1002, !1012, !1013, !1014, !1015, !1016}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !384, file: !385, line: 65, baseType: !243, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !384, file: !385, line: 66, baseType: !346, size: 128, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !384, file: !385, line: 67, baseType: !390, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !384, file: !385, line: 68, baseType: !392, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !385, line: 168, size: 768, elements: !394)
!394 = !{!395, !396, !431, !432}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !393, file: !385, line: 169, baseType: !346, size: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !393, file: !385, line: 170, baseType: !397, size: 32, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !398, line: 29, baseType: !399)
!398 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !398, line: 17, size: 32, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !398, line: 18, baseType: !402, size: 32)
!402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !398, line: 18, size: 32, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !402, file: !398, line: 19, baseType: !405, size: 32)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !406, line: 14, size: 32, elements: !407)
!406 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !405, file: !406, line: 15, baseType: !409, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !410, line: 44, baseType: !411)
!410 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !410, line: 14, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !410, line: 15, baseType: !414, size: 32)
!414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !410, line: 15, size: 32, elements: !415)
!415 = !{!416, !421, !426}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !414, file: !410, line: 16, baseType: !417, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !127, line: 174, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 172, size: 32, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !418, file: !127, line: 173, baseType: !125, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !410, line: 24, baseType: !422, size: 16)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !414, file: !410, line: 24, size: 16, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !422, file: !410, line: 25, baseType: !202, size: 8)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !422, file: !410, line: 26, baseType: !202, size: 8, offset: 8)
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !410, line: 28, baseType: !427, size: 32)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !414, file: !410, line: 28, size: 32, elements: !428)
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !427, file: !410, line: 29, baseType: !184, size: 16)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !427, file: !410, line: 30, baseType: !184, size: 16, offset: 16)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !393, file: !385, line: 171, baseType: !384, size: 512, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !393, file: !385, line: 172, baseType: !433, size: 64, offset: 704)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !385, line: 133, size: 192, elements: !436)
!436 = !{!437, !444, !449}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !435, file: !385, line: 134, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!125, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !435, file: !385, line: 135, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!243, !442}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !435, file: !385, line: 136, baseType: !450, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!125, !442, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !385, line: 125, size: 20736, elements: !456)
!456 = !{!457, !461, !463, !464, !468}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !455, file: !385, line: 126, baseType: !458, size: 192)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 192, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 3)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !455, file: !385, line: 127, baseType: !462, size: 4096, offset: 192)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 4096, elements: !173)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !455, file: !385, line: 128, baseType: !125, size: 32, offset: 4288)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !455, file: !385, line: 129, baseType: !465, size: 16384, offset: 4320)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 16384, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 2048)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !455, file: !385, line: 130, baseType: !125, size: 32, offset: 20704)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !384, file: !385, line: 69, baseType: !470, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !385, line: 116, size: 384, elements: !473)
!473 = !{!474, !478, !505, !835, !866, !870}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !472, file: !385, line: 117, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !390}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !472, file: !385, line: 118, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !482, line: 254, size: 128, elements: !483)
!482 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!483 = !{!484, !498}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !481, file: !482, line: 255, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !390, !492, !260}
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !127, line: 66, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !490, line: 73, baseType: !491)
!490 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !490, line: 15, baseType: !212)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !482, line: 30, size: 128, elements: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !493, file: !482, line: 31, baseType: !243, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !493, file: !482, line: 32, baseType: !497, size: 16, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !127, line: 24, baseType: !186)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !481, file: !482, line: 256, baseType: !499, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!488, !390, !492, !243, !502}
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 61, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !490, line: 72, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !490, line: 16, baseType: !102)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !472, file: !385, line: 119, baseType: !506, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !482, line: 84, size: 320, elements: !510)
!510 = !{!511, !512, !516, !831, !833}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !509, file: !482, line: 85, baseType: !243, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !509, file: !482, line: 86, baseType: !513, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!497, !390, !492, !125}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !509, file: !482, line: 88, baseType: !517, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!497, !390, !520, !125}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !482, line: 175, size: 512, elements: !522)
!522 = !{!523, !524, !525, !526, !533, !543, !544}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !521, file: !482, line: 176, baseType: !493, size: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !521, file: !482, line: 177, baseType: !502, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !521, file: !482, line: 178, baseType: !100, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !521, file: !482, line: 179, baseType: !527, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !532, line: 32, flags: DIFlagFwdDecl)
!532 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!533 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !521, file: !482, line: 180, baseType: !534, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!488, !537, !390, !520, !260, !540, !502}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !539, line: 537, flags: DIFlagFwdDecl)
!539 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !127, line: 52, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !490, line: 88, baseType: !542)
!542 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !521, file: !482, line: 182, baseType: !534, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !521, file: !482, line: 184, baseType: !545, size: 64, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!125, !537, !390, !520, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !532, line: 625, size: 1344, elements: !550)
!550 = !{!551, !568, !781, !787, !794, !795, !800, !801, !813, !814, !817, !821, !822, !823, !824, !825, !829}
!551 = !DIDerivedType(tag: DW_TAG_member, scope: !549, file: !532, line: 628, baseType: !552, size: 128)
!552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !549, file: !532, line: 628, size: 128, elements: !553)
!553 = !{!554, !559}
!554 = !DIDerivedType(tag: DW_TAG_member, scope: !552, file: !532, line: 629, baseType: !555, size: 128)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !552, file: !532, line: 629, size: 128, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !555, file: !532, line: 631, baseType: !102, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !555, file: !532, line: 632, baseType: !102, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !552, file: !532, line: 635, baseType: !560, size: 128, align: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !127, line: 232, size: 128, align: 64, elements: !561)
!561 = !{!562, !564}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !560, file: !127, line: 233, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !560, file: !127, line: 234, baseType: !565, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !563}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !549, file: !532, line: 639, baseType: !569, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !532, line: 733, size: 10240, elements: !571)
!571 = !{!572, !777}
!572 = !DIDerivedType(tag: DW_TAG_member, scope: !570, file: !532, line: 734, baseType: !573, size: 10240)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !570, file: !532, line: 734, size: 10240, elements: !574)
!574 = !{!575, !579, !593, !597, !598, !599, !600, !601, !602, !610, !611, !612, !618, !619, !628, !629, !630, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !672, !686, !689, !744, !745, !746, !749, !753, !754, !757, !758, !759, !765, !766}
!575 = !DIDerivedType(tag: DW_TAG_member, scope: !573, file: !532, line: 739, baseType: !576, size: 512, align: 512)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !573, file: !532, line: 739, size: 512, align: 512, elements: !577)
!577 = !{!578}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !576, file: !532, line: 747, baseType: !417, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !573, file: !532, line: 750, baseType: !580, size: 128, offset: 512)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !581, line: 218, size: 128, elements: !582)
!581 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!582 = !{!583, !591, !592}
!583 = !DIDerivedType(tag: DW_TAG_member, scope: !580, file: !581, line: 219, baseType: !584, size: 32)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !581, line: 219, size: 32, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !584, file: !581, line: 220, baseType: !397, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !584, file: !581, line: 221, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !581, line: 197, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !581, line: 197, elements: !590)
!590 = !{}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !580, file: !581, line: 223, baseType: !7, size: 32, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !580, file: !581, line: 224, baseType: !100, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !573, file: !532, line: 752, baseType: !594, size: 64, offset: 640)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!102, !537, !102, !102, !102, !102}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !573, file: !532, line: 756, baseType: !102, size: 64, offset: 704)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !573, file: !532, line: 757, baseType: !102, size: 64, offset: 768)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !573, file: !532, line: 760, baseType: !102, size: 64, offset: 832)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !573, file: !532, line: 761, baseType: !102, size: 64, offset: 896)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !573, file: !532, line: 763, baseType: !102, size: 64, offset: 960)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !573, file: !532, line: 764, baseType: !603, size: 64, offset: 1024)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !539, line: 299, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !539, line: 299, size: 64, elements: !606)
!606 = !{!607}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !605, file: !539, line: 299, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !609, line: 18, baseType: !102)
!609 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!610 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !573, file: !532, line: 773, baseType: !417, size: 32, offset: 1088)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !573, file: !532, line: 785, baseType: !417, size: 32, offset: 1120)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !573, file: !532, line: 795, baseType: !613, size: 64, offset: 1152)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !532, line: 726, size: 128, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !614, file: !532, line: 727, baseType: !104, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !614, file: !532, line: 728, baseType: !125, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !573, file: !532, line: 801, baseType: !102, size: 64, offset: 1216)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !573, file: !532, line: 804, baseType: !620, size: 64, offset: 1280)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !621, line: 13, baseType: !622)
!621 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !127, line: 181, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 179, size: 64, elements: !624)
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !623, file: !127, line: 180, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !105, line: 22, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !107, line: 30, baseType: !542)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !573, file: !532, line: 806, baseType: !125, size: 32, offset: 1344)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !573, file: !532, line: 808, baseType: !397, size: 32, offset: 1376)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !573, file: !532, line: 823, baseType: !631, size: 320, offset: 1408)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !632, line: 48, size: 320, elements: !633)
!632 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!633 = !{!634, !635, !636, !641, !643}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !631, file: !632, line: 49, baseType: !620, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !631, file: !632, line: 55, baseType: !620, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !631, file: !632, line: 57, baseType: !637, size: 32, offset: 128)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !638, line: 15, size: 32, elements: !639)
!638 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !637, file: !638, line: 20, baseType: !417, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !631, file: !632, line: 59, baseType: !642, size: 32, offset: 160)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !406, line: 23, baseType: !405)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !631, file: !632, line: 60, baseType: !346, size: 128, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !573, file: !532, line: 825, baseType: !346, size: 128, offset: 1728)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !573, file: !532, line: 845, baseType: !125, size: 32, offset: 1856)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !573, file: !532, line: 849, baseType: !102, size: 64, offset: 1920)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !573, file: !532, line: 850, baseType: !102, size: 64, offset: 1984)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !573, file: !532, line: 852, baseType: !102, size: 64, offset: 2048)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !573, file: !532, line: 853, baseType: !102, size: 64, offset: 2112)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !573, file: !532, line: 854, baseType: !622, size: 64, offset: 2176)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !573, file: !532, line: 855, baseType: !102, size: 64, offset: 2240)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !573, file: !532, line: 856, baseType: !102, size: 64, offset: 2304)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !573, file: !532, line: 857, baseType: !102, size: 64, offset: 2368)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !573, file: !532, line: 858, baseType: !102, size: 64, offset: 2432)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !573, file: !532, line: 865, baseType: !235, size: 32, offset: 2496)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !573, file: !532, line: 867, baseType: !397, size: 32, offset: 2528)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !573, file: !532, line: 869, baseType: !102, size: 64, offset: 2560)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !573, file: !532, line: 869, baseType: !102, size: 64, offset: 2624)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !573, file: !532, line: 869, baseType: !102, size: 64, offset: 2688)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !573, file: !532, line: 869, baseType: !102, size: 64, offset: 2752)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !573, file: !532, line: 870, baseType: !102, size: 64, offset: 2816)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !573, file: !532, line: 870, baseType: !102, size: 64, offset: 2880)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !573, file: !532, line: 870, baseType: !102, size: 64, offset: 2944)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !573, file: !532, line: 871, baseType: !102, size: 64, offset: 3008)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !573, file: !532, line: 871, baseType: !102, size: 64, offset: 3072)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !573, file: !532, line: 871, baseType: !102, size: 64, offset: 3136)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !573, file: !532, line: 871, baseType: !102, size: 64, offset: 3200)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !573, file: !532, line: 873, baseType: !669, size: 3328, offset: 3264)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 3328, elements: !670)
!670 = !{!671}
!671 = !DISubrange(count: 52)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !573, file: !532, line: 875, baseType: !673, size: 1280, offset: 6592)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 1280, elements: !684)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !675, line: 22, size: 320, elements: !676)
!675 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!676 = !{!677, !678, !679, !680}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !674, file: !675, line: 23, baseType: !642, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !674, file: !675, line: 24, baseType: !626, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !674, file: !675, line: 26, baseType: !346, size: 128, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !674, file: !675, line: 28, baseType: !681, size: 64, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !105, line: 20, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !107, line: 26, baseType: !125)
!684 = !{!685}
!685 = !DISubrange(count: 4)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !573, file: !532, line: 877, baseType: !687, size: 64, offset: 7872)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !532, line: 877, flags: DIFlagFwdDecl)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !573, file: !532, line: 880, baseType: !690, size: 1088, offset: 7936)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !691, line: 72, baseType: !692)
!691 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !691, line: 23, size: 1088, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !701, !702, !710, !711, !738, !739, !740}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !692, file: !691, line: 28, baseType: !104, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !692, file: !691, line: 38, baseType: !622, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !692, file: !691, line: 40, baseType: !102, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !692, file: !691, line: 43, baseType: !631, size: 320, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !692, file: !691, line: 44, baseType: !699, size: 64, offset: 512)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !691, line: 44, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !692, file: !691, line: 48, baseType: !102, size: 64, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !692, file: !691, line: 59, baseType: !703, size: 256, offset: 640)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !704, line: 66, size: 256, elements: !705)
!704 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!705 = !{!706, !707, !708, !709}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !703, file: !704, line: 67, baseType: !620, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !703, file: !704, line: 68, baseType: !642, size: 32, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !703, file: !704, line: 70, baseType: !637, size: 32, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !703, file: !704, line: 72, baseType: !346, size: 128, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !692, file: !691, line: 60, baseType: !100, size: 64, offset: 896)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !692, file: !691, line: 61, baseType: !712, size: 64, offset: 960)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !715, line: 13, size: 1216, elements: !716)
!715 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!716 = !{!717, !718, !719, !720, !721, !722, !723, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !714, file: !715, line: 14, baseType: !100, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !714, file: !715, line: 15, baseType: !102, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !714, file: !715, line: 17, baseType: !102, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !714, file: !715, line: 17, baseType: !102, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !714, file: !715, line: 18, baseType: !102, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !714, file: !715, line: 18, baseType: !102, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !714, file: !715, line: 19, baseType: !724, size: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !714, file: !715, line: 21, baseType: !212, size: 64, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !714, file: !715, line: 23, baseType: !212, size: 64, offset: 512)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !714, file: !715, line: 24, baseType: !212, size: 64, offset: 576)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !714, file: !715, line: 25, baseType: !212, size: 64, offset: 640)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !714, file: !715, line: 26, baseType: !212, size: 64, offset: 704)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !714, file: !715, line: 27, baseType: !212, size: 64, offset: 768)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !714, file: !715, line: 28, baseType: !212, size: 64, offset: 832)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !714, file: !715, line: 29, baseType: !212, size: 64, offset: 896)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !714, file: !715, line: 30, baseType: !212, size: 64, offset: 960)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !714, file: !715, line: 31, baseType: !212, size: 64, offset: 1024)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !714, file: !715, line: 32, baseType: !212, size: 64, offset: 1088)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !714, file: !715, line: 33, baseType: !212, size: 64, offset: 1152)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !692, file: !691, line: 63, baseType: !417, size: 32, offset: 1024)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !692, file: !691, line: 69, baseType: !184, size: 16, offset: 1056)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !692, file: !691, line: 70, baseType: !741, size: 16, offset: 1072)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !105, line: 18, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !107, line: 23, baseType: !743)
!743 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !532, line: 882, baseType: !102, size: 64, offset: 9024)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !573, file: !532, line: 885, baseType: !397, size: 32, offset: 9088)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !573, file: !532, line: 886, baseType: !747, size: 64, offset: 9152)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !532, line: 732, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !573, file: !532, line: 901, baseType: !750, size: 64, offset: 9216)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !752, line: 18, flags: DIFlagFwdDecl)
!752 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!753 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !573, file: !532, line: 904, baseType: !537, size: 64, offset: 9280)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !573, file: !532, line: 906, baseType: !755, size: 64, offset: 9344)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !532, line: 906, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !573, file: !532, line: 930, baseType: !417, size: 32, offset: 9408)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !573, file: !532, line: 933, baseType: !417, size: 32, offset: 9440)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !573, file: !532, line: 935, baseType: !760, size: 64, offset: 9472)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !67, line: 103, size: 64, elements: !761)
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !760, file: !67, line: 104, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !67, line: 101, flags: DIFlagFwdDecl)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !573, file: !532, line: 940, baseType: !620, size: 64, offset: 9536)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !573, file: !532, line: 942, baseType: !767, size: 256, offset: 9600)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !74, line: 98, size: 256, elements: !768)
!768 = !{!769, !770, !771}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !767, file: !74, line: 99, baseType: !620, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !767, file: !74, line: 100, baseType: !346, size: 128, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !767, file: !74, line: 101, baseType: !772, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !74, line: 21, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !570, file: !532, line: 986, baseType: !778, offset: 10240)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, elements: !779)
!779 = !{!780}
!780 = !DISubrange(count: -1)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !549, file: !532, line: 640, baseType: !782, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !539, line: 297, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !539, line: 297, size: 64, elements: !784)
!784 = !{!785}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !783, file: !539, line: 297, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !609, line: 19, baseType: !102)
!787 = !DIDerivedType(tag: DW_TAG_member, scope: !549, file: !532, line: 646, baseType: !788, size: 64, offset: 256)
!788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !549, file: !532, line: 646, size: 64, elements: !789)
!789 = !{!790, !793}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !788, file: !532, line: 647, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !532, line: 542, baseType: !102)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !788, file: !532, line: 648, baseType: !792, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !549, file: !532, line: 666, baseType: !125, size: 32, offset: 320)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !549, file: !532, line: 667, baseType: !796, size: 64, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !532, line: 579, size: 320, elements: !798)
!798 = !{!799}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !797, file: !532, line: 580, baseType: !631, size: 320)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !549, file: !532, line: 670, baseType: !198, size: 8, offset: 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !549, file: !532, line: 681, baseType: !802, size: 256, offset: 512)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !549, file: !532, line: 678, size: 256, elements: !803)
!803 = !{!804, !812}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !802, file: !532, line: 679, baseType: !805, size: 192, align: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !806, line: 5, size: 192, align: 64, elements: !807)
!806 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!807 = !{!808, !809, !811}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !805, file: !806, line: 6, baseType: !102, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !805, file: !806, line: 7, baseType: !810, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !805, file: !806, line: 8, baseType: !810, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !802, file: !532, line: 680, baseType: !102, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !549, file: !532, line: 689, baseType: !346, size: 128, offset: 768)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !549, file: !532, line: 691, baseType: !815, size: 64, offset: 896)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !532, line: 691, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !549, file: !532, line: 694, baseType: !818, size: 64, offset: 960)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !532, line: 694, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !549, file: !532, line: 697, baseType: !102, size: 64, offset: 1024)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !549, file: !532, line: 699, baseType: !537, size: 64, offset: 1088)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !549, file: !532, line: 700, baseType: !100, size: 64, offset: 1152)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !549, file: !532, line: 711, baseType: !620, size: 64, offset: 1216)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !549, file: !532, line: 717, baseType: !826, size: 64, offset: 1280)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !828, line: 54, flags: DIFlagFwdDecl)
!828 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!829 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !549, file: !532, line: 722, baseType: !830, offset: 1344)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !532, line: 570, elements: !590)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !509, file: !482, line: 90, baseType: !832, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !509, file: !482, line: 91, baseType: !834, size: 64, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !472, file: !385, line: 120, baseType: !836, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!839, !442}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !34, line: 39, size: 384, elements: !842)
!842 = !{!843, !844, !848, !852, !858, !862}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !841, file: !34, line: 40, baseType: !33, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !841, file: !34, line: 41, baseType: !845, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!198}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !841, file: !34, line: 42, baseType: !849, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!100}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !841, file: !34, line: 43, baseType: !853, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!724, !856}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !34, line: 19, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !841, file: !34, line: 44, baseType: !859, size: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!724}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !841, file: !34, line: 45, baseType: !863, size: 64, offset: 320)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !100}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !472, file: !385, line: 121, baseType: !867, size: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!724, !442}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !472, file: !385, line: 122, baseType: !871, size: 64, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !442, !874, !881}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !752, line: 23, baseType: !876)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 21, size: 32, elements: !877)
!877 = !{!878}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !876, file: !752, line: 22, baseType: !879, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !127, line: 37, baseType: !880)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !490, line: 49, baseType: !7)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !752, line: 28, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 26, size: 32, elements: !884)
!884 = !{!885}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !883, file: !752, line: 27, baseType: !886, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !127, line: 38, baseType: !887)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !490, line: 50, baseType: !7)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !384, file: !385, line: 70, baseType: !889, size: 64, offset: 384)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !891, line: 190, size: 1152, elements: !892)
!891 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!892 = !{!893, !894, !895, !896, !897, !898, !899, !900, !994, !995, !996, !997, !998, !1001}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !890, file: !891, line: 191, baseType: !417, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !890, file: !891, line: 192, baseType: !417, size: 32, offset: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !890, file: !891, line: 202, baseType: !889, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !890, file: !891, line: 203, baseType: !243, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !890, file: !891, line: 205, baseType: !805, size: 192, align: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !890, file: !891, line: 207, baseType: !724, size: 64, offset: 384)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !890, file: !891, line: 208, baseType: !7, size: 32, offset: 448)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !891, line: 209, baseType: !901, size: 256, offset: 512)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !891, line: 209, size: 256, elements: !902)
!902 = !{!903, !915, !919}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !901, file: !891, line: 210, baseType: !904, size: 256)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !891, line: 153, size: 256, elements: !905)
!905 = !{!906, !907, !911, !914}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !904, file: !891, line: 154, baseType: !102, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !904, file: !891, line: 156, baseType: !908, size: 64, offset: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !806, line: 12, size: 64, elements: !909)
!909 = !{!910}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !908, file: !806, line: 13, baseType: !810, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !904, file: !891, line: 162, baseType: !912, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !891, line: 162, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !904, file: !891, line: 167, baseType: !102, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !901, file: !891, line: 211, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !891, line: 170, size: 64, elements: !917)
!917 = !{!918}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !916, file: !891, line: 171, baseType: !889, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !901, file: !891, line: 212, baseType: !920, size: 256)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !891, line: 174, size: 256, elements: !921)
!921 = !{!922, !989, !992, !993}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !920, file: !891, line: 175, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !925)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !891, line: 271, size: 768, elements: !926)
!926 = !{!927, !949, !953, !957, !962, !966, !970, !974, !975, !976, !977, !985}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !925, file: !891, line: 276, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!125, !931}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !891, line: 251, size: 1216, elements: !933)
!933 = !{!934, !935, !936, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !932, file: !891, line: 253, baseType: !889, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !932, file: !891, line: 254, baseType: !537, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !932, file: !891, line: 255, baseType: !937, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !828, line: 66, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !932, file: !891, line: 256, baseType: !100, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !932, file: !891, line: 259, baseType: !703, size: 256, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !932, file: !891, line: 260, baseType: !703, size: 256, offset: 512)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !932, file: !891, line: 261, baseType: !125, size: 32, offset: 768)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !932, file: !891, line: 262, baseType: !346, size: 128, offset: 832)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !932, file: !891, line: 263, baseType: !260, size: 64, offset: 960)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !932, file: !891, line: 265, baseType: !502, size: 64, offset: 1024)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !932, file: !891, line: 266, baseType: !198, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !932, file: !891, line: 267, baseType: !198, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !932, file: !891, line: 268, baseType: !818, size: 64, offset: 1152)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !925, file: !891, line: 277, baseType: !950, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !931}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !925, file: !891, line: 290, baseType: !954, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!125, !937, !100}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !925, file: !891, line: 292, baseType: !958, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!100, !937, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !925, file: !891, line: 293, baseType: !963, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!100, !937, !100, !961}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !925, file: !891, line: 294, baseType: !967, size: 64, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !937, !100}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !925, file: !891, line: 296, baseType: !971, size: 64, offset: 384)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!488, !931, !260, !502, !540}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !925, file: !891, line: 306, baseType: !502, size: 64, offset: 448)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !925, file: !891, line: 313, baseType: !198, size: 8, offset: 512)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !925, file: !891, line: 314, baseType: !971, size: 64, offset: 576)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !925, file: !891, line: 317, baseType: !978, size: 64, offset: 640)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!981, !931, !983}
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !982, line: 59, baseType: !7)
!982 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !891, line: 31, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !925, file: !891, line: 320, baseType: !986, size: 64, offset: 704)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!125, !931, !548}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !920, file: !891, line: 176, baseType: !990, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !891, line: 35, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !920, file: !891, line: 177, baseType: !540, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !920, file: !891, line: 178, baseType: !889, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !890, file: !891, line: 215, baseType: !100, size: 64, offset: 768)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !890, file: !891, line: 221, baseType: !104, size: 64, offset: 832)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !890, file: !891, line: 223, baseType: !186, size: 16, offset: 896)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !890, file: !891, line: 224, baseType: !497, size: 16, offset: 912)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !890, file: !891, line: 225, baseType: !999, size: 64, offset: 960)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !891, line: 36, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !890, file: !891, line: 227, baseType: !560, size: 128, align: 64, offset: 1024)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !384, file: !385, line: 71, baseType: !1003, size: 32, offset: 448)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1004, line: 19, size: 32, elements: !1005)
!1004 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1005 = !{!1006}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1003, file: !1004, line: 20, baseType: !1007, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1008, line: 113, baseType: !1009)
!1008 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1008, line: 111, size: 32, elements: !1010)
!1010 = !{!1011}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1009, file: !1008, line: 112, baseType: !417, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !384, file: !385, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !384, file: !385, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !384, file: !385, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !384, file: !385, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !384, file: !385, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !381, file: !27, line: 47, baseType: !371, size: 64, offset: 512)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !381, file: !27, line: 48, baseType: !390, size: 64, offset: 576)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !381, file: !27, line: 49, baseType: !1020, size: 64, offset: 640)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !27, line: 49, flags: DIFlagFwdDecl)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !381, file: !27, line: 50, baseType: !1023, size: 64, offset: 704)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1025, line: 26, size: 256, elements: !1026)
!1025 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1024, file: !1025, line: 27, baseType: !7, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1024, file: !1025, line: 28, baseType: !1029, size: 192, offset: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1030, line: 43, size: 192, elements: !1031)
!1030 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1029, file: !1030, line: 44, baseType: !642, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1029, file: !1030, line: 45, baseType: !346, size: 128, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !372, file: !27, line: 418, baseType: !1035, size: 64, offset: 1408)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !27, line: 53, size: 448, elements: !1037)
!1037 = !{!1038, !1039, !1044, !1048, !1052, !1056}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1036, file: !27, line: 54, baseType: !493, size: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1036, file: !27, line: 55, baseType: !1040, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!488, !1035, !1043, !260}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1036, file: !27, line: 57, baseType: !1045, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!488, !1035, !1043, !243, !502}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1036, file: !27, line: 59, baseType: !1049, size: 64, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !371, !243}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1036, file: !27, line: 60, baseType: !1053, size: 64, offset: 320)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!125, !371}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1036, file: !27, line: 61, baseType: !1057, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !371}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !372, file: !27, line: 419, baseType: !243, size: 64, offset: 1472)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !372, file: !27, line: 420, baseType: !243, size: 64, offset: 1536)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !372, file: !27, line: 421, baseType: !390, size: 64, offset: 1600)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !372, file: !27, line: 424, baseType: !1064, size: 64, offset: 1664)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1066)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !27, line: 424, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !372, file: !27, line: 425, baseType: !1068, size: 64, offset: 1728)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !372, file: !27, line: 426, baseType: !7, size: 32, offset: 1792)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !372, file: !27, line: 435, baseType: !703, size: 256, offset: 1856)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !372, file: !27, line: 437, baseType: !1073, size: 64, offset: 2112)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1075, line: 69, size: 320, elements: !1076)
!1075 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1076 = !{!1077, !1078, !1079, !1096, !1098, !1102, !1103}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1074, file: !1075, line: 70, baseType: !243, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1074, file: !1075, line: 71, baseType: !371, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1074, file: !1075, line: 72, baseType: !1080, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1082)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1075, line: 47, size: 256, elements: !1083)
!1083 = !{!1084, !1085, !1091, !1095}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1082, file: !1075, line: 49, baseType: !7, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1082, file: !1075, line: 51, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!125, !243, !1089}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1074)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1082, file: !1075, line: 53, baseType: !1092, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!125, !260, !1089}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1082, file: !1075, line: 55, baseType: !863, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1074, file: !1075, line: 73, baseType: !1097, size: 16, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1074, file: !1075, line: 74, baseType: !1099, size: 8, offset: 208)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !105, line: 16, baseType: !1100)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !107, line: 20, baseType: !1101)
!1101 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1074, file: !1075, line: 75, baseType: !202, size: 8, offset: 216)
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !1075, line: 76, baseType: !1104, size: 64, offset: 256)
!1104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !1075, line: 76, size: 64, elements: !1105)
!1105 = !{!1106, !1107, !1114}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1104, file: !1075, line: 77, baseType: !100, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1104, file: !1075, line: 78, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1110)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1075, line: 86, size: 128, elements: !1111)
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1110, file: !1075, line: 87, baseType: !7, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1110, file: !1075, line: 88, baseType: !260, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1104, file: !1075, line: 79, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1075, line: 92, size: 256, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1122, !1123}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1117, file: !1075, line: 94, baseType: !7, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1117, file: !1075, line: 95, baseType: !7, size: 32, offset: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1117, file: !1075, line: 96, baseType: !101, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1117, file: !1075, line: 97, baseType: !1080, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1117, file: !1075, line: 98, baseType: !100, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !372, file: !27, line: 438, baseType: !7, size: 32, offset: 2176)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !372, file: !27, line: 441, baseType: !7, size: 32, offset: 2208)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !372, file: !27, line: 442, baseType: !1064, size: 64, offset: 2240)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !372, file: !27, line: 443, baseType: !1068, size: 64, offset: 2304)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !372, file: !27, line: 444, baseType: !198, size: 8, offset: 2368)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !372, file: !27, line: 451, baseType: !198, size: 8, offset: 2376)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !372, file: !27, line: 454, baseType: !7, size: 32, offset: 2400)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !372, file: !27, line: 455, baseType: !1132, size: 64, offset: 2432)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1134, line: 23, size: 96, elements: !1135)
!1134 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1135 = !{!1136, !1137, !1138}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1133, file: !1134, line: 24, baseType: !125, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1133, file: !1134, line: 24, baseType: !125, size: 32, offset: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1133, file: !1134, line: 24, baseType: !125, size: 32, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !372, file: !27, line: 458, baseType: !1140, size: 64, offset: 2496)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!125}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !372, file: !27, line: 460, baseType: !1144, size: 4032, align: 512, offset: 2560)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1145, size: 4032, elements: !1159)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !27, line: 362, size: 576, elements: !1146)
!1146 = !{!1147, !1148, !1149}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1145, file: !27, line: 363, baseType: !100, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1145, file: !27, line: 364, baseType: !7, size: 32, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1145, file: !27, line: 367, baseType: !1150, size: 448, offset: 128)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !27, line: 319, size: 448, elements: !1151)
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1150, file: !27, line: 320, baseType: !371, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1150, file: !27, line: 321, baseType: !1154, size: 384, offset: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1155, line: 40, size: 384, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1156 = !{!1157}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1154, file: !1155, line: 41, baseType: !1158, size: 384, align: 64)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 384, align: 64, elements: !227)
!1159 = !{!1160}
!1160 = !DISubrange(count: 7)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !372, file: !27, line: 463, baseType: !1162, size: 192, offset: 6592)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1163, line: 8, size: 192, elements: !1164)
!1163 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1164 = !{!1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1162, file: !1163, line: 10, baseType: !7, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1162, file: !1163, line: 11, baseType: !128, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1162, file: !1163, line: 12, baseType: !1168, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1170, line: 59, size: 48, elements: !1171)
!1170 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1171 = !{!1172, !1173, !1174, !1175, !1176, !1177}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1169, file: !1170, line: 60, baseType: !741, size: 16)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1169, file: !1170, line: 61, baseType: !741, size: 16, offset: 16)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1169, file: !1170, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1169, file: !1170, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1169, file: !1170, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1169, file: !1170, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !372, file: !27, line: 465, baseType: !102, size: 64, offset: 6784)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !372, file: !27, line: 469, baseType: !7, size: 32, offset: 6848)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !372, file: !27, line: 470, baseType: !346, size: 128, offset: 6912)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !372, file: !27, line: 471, baseType: !1182, size: 64, offset: 7040)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1184, line: 33, size: 96, elements: !1185)
!1184 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1185 = !{!1186, !1187, !1188, !1189}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1183, file: !1184, line: 37, baseType: !125, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1183, file: !1184, line: 43, baseType: !125, size: 32, offset: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1183, file: !1184, line: 45, baseType: !186, size: 16, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1183, file: !1184, line: 47, baseType: !186, size: 16, offset: 80)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !372, file: !27, line: 476, baseType: !1191, size: 64, offset: 7104)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !27, line: 378, size: 256, elements: !1193)
!1193 = !{!1194, !1210, !1211, !1212}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1192, file: !27, line: 379, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1197, line: 204, baseType: !1198)
!1197 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1197, line: 197, size: 192, elements: !1199)
!1199 = !{!1200, !1202, !1203, !1204, !1206, !1208}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1198, file: !1197, line: 198, baseType: !1201, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1197, line: 21, baseType: !111)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1198, file: !1197, line: 199, baseType: !141, size: 8, offset: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1198, file: !1197, line: 200, baseType: !141, size: 8, offset: 40)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1198, file: !1197, line: 201, baseType: !1205, size: 16, offset: 48)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1197, line: 17, baseType: !185)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1198, file: !1197, line: 202, baseType: !1207, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1197, line: 16, baseType: !106)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1198, file: !1197, line: 203, baseType: !1209, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1197, line: 22, baseType: !106)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1192, file: !27, line: 380, baseType: !7, size: 32, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1192, file: !27, line: 381, baseType: !260, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1192, file: !27, line: 382, baseType: !260, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !372, file: !27, line: 477, baseType: !1192, size: 256, offset: 7168)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !372, file: !27, line: 480, baseType: !1215, size: 64, offset: 7424)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !27, line: 480, flags: DIFlagFwdDecl)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !372, file: !27, line: 483, baseType: !1218, size: 64, offset: 7488)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !27, line: 483, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !372, file: !27, line: 488, baseType: !260, size: 64, offset: 7552)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !372, file: !27, line: 492, baseType: !100, size: 64, offset: 7616)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !372, file: !27, line: 493, baseType: !7, size: 32, offset: 7680)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !372, file: !27, line: 495, baseType: !100, size: 64, offset: 7744)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !372, file: !27, line: 496, baseType: !7, size: 32, offset: 7808)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !372, file: !27, line: 499, baseType: !7, size: 32, offset: 7840)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !372, file: !27, line: 500, baseType: !1227, size: 64, offset: 7872)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1229, line: 45, baseType: !1230)
!1229 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !372, file: !27, line: 503, baseType: !7, size: 32, offset: 7936)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !372, file: !27, line: 504, baseType: !1233, size: 64, offset: 8000)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1236, line: 96, size: 192, elements: !1237)
!1236 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1237 = !{!1238, !1239, !1299, !1302}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1235, file: !1236, line: 97, baseType: !7, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1235, file: !1236, line: 98, baseType: !1240, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1236, line: 24, size: 3072, elements: !1242)
!1242 = !{!1243, !1245, !1246, !1247, !1248, !1262, !1263, !1264, !1265, !1283, !1284, !1285, !1296, !1297, !1298}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1241, file: !1236, line: 26, baseType: !1244, size: 128)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 128, elements: !227)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1241, file: !1236, line: 27, baseType: !1244, size: 128, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1241, file: !1236, line: 28, baseType: !125, size: 32, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1241, file: !1236, line: 31, baseType: !397, size: 32, align: 512, offset: 512)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1241, file: !1236, line: 32, baseType: !1249, size: 960, offset: 576)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1250, line: 206, size: 960, elements: !1251)
!1250 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1251 = !{!1252, !1253, !1256, !1258, !1259, !1261}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1249, file: !1250, line: 207, baseType: !563, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1249, file: !1250, line: 208, baseType: !1254, size: 256, offset: 64)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1255, size: 256, elements: !684)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1249, file: !1250, line: 209, baseType: !1257, size: 256, offset: 320)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 256, elements: !684)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1249, file: !1250, line: 213, baseType: !212, size: 64, offset: 576)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1249, file: !1250, line: 215, baseType: !1260, size: 256, offset: 640)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 256, elements: !684)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1249, file: !1250, line: 216, baseType: !202, size: 8, offset: 896)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1241, file: !1236, line: 33, baseType: !102, size: 64, offset: 1536)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1241, file: !1236, line: 34, baseType: !102, size: 64, offset: 1600)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1241, file: !1236, line: 35, baseType: !198, size: 8, offset: 1664)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1241, file: !1236, line: 36, baseType: !1266, size: 320, offset: 1728)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1267, line: 11, size: 320, elements: !1268)
!1267 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1268 = !{!1269, !1276, !1277, !1282}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1266, file: !1267, line: 16, baseType: !1270, size: 128)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !127, line: 198, size: 128, elements: !1271)
!1271 = !{!1272, !1274}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1270, file: !127, line: 199, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1270, file: !127, line: 199, baseType: !1275, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1266, file: !1267, line: 17, baseType: !102, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1266, file: !1267, line: 18, baseType: !1278, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{null, !1281}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1266, file: !1267, line: 19, baseType: !110, size: 32, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1241, file: !1236, line: 37, baseType: !767, size: 256, offset: 2048)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1241, file: !1236, line: 38, baseType: !560, size: 128, align: 64, offset: 2304)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1241, file: !1236, line: 39, baseType: !1286, size: 64, offset: 2432)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1236, line: 49, size: 768, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1292, !1293, !1294, !1295}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1287, file: !1236, line: 50, baseType: !397, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1287, file: !1236, line: 51, baseType: !1257, size: 256, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1287, file: !1236, line: 53, baseType: !1257, size: 256, offset: 320)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1287, file: !1236, line: 54, baseType: !102, size: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1287, file: !1236, line: 55, baseType: !1286, size: 64, offset: 640)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1287, file: !1236, line: 56, baseType: !125, size: 32, offset: 704)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1287, file: !1236, line: 57, baseType: !125, size: 32, offset: 736)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1241, file: !1236, line: 40, baseType: !102, size: 64, offset: 2496)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1241, file: !1236, line: 42, baseType: !125, size: 32, offset: 2560)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1241, file: !1236, line: 43, baseType: !1234, size: 64, offset: 2624)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1235, file: !1236, line: 99, baseType: !1300, offset: 128)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1301, line: 211, elements: !590)
!1301 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1235, file: !1236, line: 100, baseType: !1303, size: 64, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1236, line: 63, size: 3008, elements: !1305)
!1305 = !{!1306, !1307, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1337}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1304, file: !1236, line: 64, baseType: !1286, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1304, file: !1236, line: 65, baseType: !1308, size: 192, offset: 64)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1286, size: 192, elements: !459)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1304, file: !1236, line: 67, baseType: !125, size: 32, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1304, file: !1236, line: 68, baseType: !703, size: 256, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1304, file: !1236, line: 69, baseType: !397, size: 32, offset: 576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1304, file: !1236, line: 70, baseType: !703, size: 256, offset: 640)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1304, file: !1236, line: 71, baseType: !102, size: 64, offset: 896)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1304, file: !1236, line: 72, baseType: !102, size: 64, offset: 960)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1304, file: !1236, line: 73, baseType: !102, size: 64, offset: 1024)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1304, file: !1236, line: 74, baseType: !102, size: 64, offset: 1088)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1304, file: !1236, line: 75, baseType: !102, size: 64, offset: 1152)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1304, file: !1236, line: 76, baseType: !102, size: 64, offset: 1216)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1304, file: !1236, line: 77, baseType: !102, size: 64, offset: 1280)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1304, file: !1236, line: 78, baseType: !102, size: 64, offset: 1344)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1304, file: !1236, line: 79, baseType: !198, size: 8, offset: 1408)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1304, file: !1236, line: 80, baseType: !102, size: 64, offset: 1472)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1304, file: !1236, line: 81, baseType: !703, size: 256, offset: 1536)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1304, file: !1236, line: 82, baseType: !1024, size: 256, offset: 1792)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1304, file: !1236, line: 84, baseType: !417, size: 32, offset: 2048)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1304, file: !1236, line: 87, baseType: !102, size: 64, offset: 2112)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1304, file: !1236, line: 88, baseType: !102, size: 64, offset: 2176)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1304, file: !1236, line: 89, baseType: !1329, size: 704, offset: 2240)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !74, line: 111, size: 704, elements: !1330)
!1330 = !{!1331, !1332, !1333, !1336}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1329, file: !74, line: 112, baseType: !767, size: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1329, file: !74, line: 113, baseType: !1266, size: 320, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1329, file: !74, line: 116, baseType: !1334, size: 64, offset: 576)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !74, line: 18, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1329, file: !74, line: 117, baseType: !125, size: 32, offset: 640)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1304, file: !1236, line: 90, baseType: !1234, size: 64, offset: 2944)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !372, file: !27, line: 515, baseType: !1339, size: 64, offset: 8064)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1341, line: 117, size: 128, elements: !1342)
!1341 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1342 = !{!1343, !1344, !1345}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1340, file: !1341, line: 118, baseType: !682, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1340, file: !1341, line: 119, baseType: !682, size: 32, offset: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1340, file: !1341, line: 120, baseType: !212, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !372, file: !27, line: 516, baseType: !7, size: 32, offset: 8128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !372, file: !27, line: 519, baseType: !7, size: 32, offset: 8160)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !372, file: !27, line: 520, baseType: !1349, size: 64, offset: 8192)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !372, file: !27, line: 523, baseType: !1351, size: 64, offset: 8256)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !27, line: 523, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !372, file: !27, line: 524, baseType: !7, size: 32, offset: 8320)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !372, file: !27, line: 525, baseType: !1356, size: 64, offset: 8384)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !27, line: 525, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !372, file: !27, line: 526, baseType: !7, size: 32, offset: 8448)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !372, file: !27, line: 533, baseType: !100, size: 64, offset: 8512)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !372, file: !27, line: 534, baseType: !7, size: 32, offset: 8576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !372, file: !27, line: 535, baseType: !115, size: 64, offset: 8640)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !372, file: !27, line: 536, baseType: !7, size: 32, offset: 8704)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !372, file: !27, line: 539, baseType: !125, size: 32, offset: 8736)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !372, file: !27, line: 540, baseType: !1366, size: 64, offset: 8768)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1368, line: 32, size: 64, elements: !1369)
!1368 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1367, file: !1368, line: 33, baseType: !682, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1367, file: !1368, line: 34, baseType: !682, size: 32, offset: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !372, file: !27, line: 563, baseType: !346, size: 128, offset: 8832)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !372, file: !27, line: 565, baseType: !346, size: 128, offset: 8960)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !372, file: !27, line: 568, baseType: !1375, size: 64, offset: 9088)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !372, file: !27, line: 570, baseType: !417, size: 32, offset: 9152)
!1377 = !DIGlobalVariableExpression(var: !1378, expr: !DIExpression())
!1378 = distinct !DIGlobalVariable(name: "cyc2ns", scope: !2, file: !3, line: 64, type: !217, isLocal: true, isDefinition: true, align: 512)
!1379 = !DIGlobalVariableExpression(var: !1380, expr: !DIExpression())
!1380 = distinct !DIGlobalVariable(name: "no_sched_irq_time", scope: !2, file: !3, line: 314, type: !125, isLocal: true, isDefinition: true)
!1381 = !DIGlobalVariableExpression(var: !1382, expr: !DIExpression())
!1382 = distinct !DIGlobalVariable(name: "no_tsc_watchdog", scope: !2, file: !3, line: 315, type: !125, isLocal: true, isDefinition: true)
!1383 = !DIGlobalVariableExpression(var: !1384, expr: !DIExpression())
!1384 = distinct !DIGlobalVariable(name: "tsc_as_watchdog", scope: !2, file: !3, line: 316, type: !125, isLocal: true, isDefinition: true)
!1385 = !DIGlobalVariableExpression(var: !1386, expr: !DIExpression())
!1386 = distinct !DIGlobalVariable(name: "cyc2ns_suspend", scope: !2, file: !3, line: 954, type: !108, isLocal: true, isDefinition: true)
!1387 = !DIGlobalVariableExpression(var: !1388, expr: !DIExpression())
!1388 = distinct !DIGlobalVariable(name: "__setup_str_tsc_early_khz_setup", scope: !2, file: !3, line: 70, type: !1389, isLocal: true, isDefinition: true, align: 8)
!1389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 112, elements: !1390)
!1390 = !{!1391}
!1391 = !DISubrange(count: 14)
!1392 = !DIGlobalVariableExpression(var: !1393, expr: !DIExpression())
!1393 = distinct !DIGlobalVariable(name: "tsc_early_khz", scope: !2, file: !3, line: 45, type: !7, isLocal: true, isDefinition: true)
!1394 = !DIGlobalVariableExpression(var: !1395, expr: !DIExpression())
!1395 = distinct !DIGlobalVariable(name: "__use_tsc", scope: !2, file: !3, line: 47, type: !1396, isLocal: true, isDefinition: true)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !1341, line: 363, size: 128, elements: !1397)
!1397 = !{!1398}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1396, file: !1341, line: 364, baseType: !1399, size: 128)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1341, line: 85, size: 128, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1399, file: !1341, line: 86, baseType: !417, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !1341, line: 101, baseType: !1403, size: 64, offset: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1399, file: !1341, line: 101, size: 64, elements: !1404)
!1404 = !{!1405, !1406, !1407}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1403, file: !1341, line: 102, baseType: !102, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1403, file: !1341, line: 103, baseType: !1339, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1403, file: !1341, line: 104, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1341, line: 104, flags: DIFlagFwdDecl)
!1410 = !DIGlobalVariableExpression(var: !1411, expr: !DIExpression())
!1411 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace288", scope: !1412, file: !3, line: 140, type: !100, isLocal: true, isDefinition: true)
!1412 = distinct !DISubprogram(name: "cycles_2_ns", scope: !3, file: !3, line: 135, type: !1413, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1415)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!108, !108}
!1415 = !{!1416, !1417}
!1416 = !DILocalVariable(name: "cyc", arg: 1, scope: !1412, file: !3, line: 135, type: !108)
!1417 = !DILocalVariable(name: "ns", scope: !1412, file: !3, line: 137, type: !108)
!1418 = !DIGlobalVariableExpression(var: !1419, expr: !DIExpression())
!1419 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__pv_sched_clock92", scope: !1420, file: !1421, line: 31, type: !100, isLocal: true, isDefinition: true)
!1420 = distinct !DISubprogram(name: "paravirt_sched_clock", scope: !1421, file: !1421, line: 29, type: !270, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1421 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03130265545439d5fc6fd2b961c93410")
!1422 = !DIGlobalVariableExpression(var: !1423, expr: !DIExpression())
!1423 = distinct !DIGlobalVariable(name: "__setup_str_notsc_setup", scope: !2, file: !3, line: 312, type: !1424, isLocal: true, isDefinition: true, align: 8)
!1424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 48, elements: !1425)
!1425 = !{!1426}
!1426 = !DISubrange(count: 6)
!1427 = !DIGlobalVariableExpression(var: !1428, expr: !DIExpression())
!1428 = distinct !DIGlobalVariable(name: "__setup_str_tsc_setup", scope: !2, file: !3, line: 345, type: !1429, isLocal: true, isDefinition: true, align: 8)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 40, elements: !150)
!1430 = !DIGlobalVariableExpression(var: !1431, expr: !DIExpression())
!1431 = distinct !DIGlobalVariable(scope: null, file: !3, line: 320, type: !1432, isLocal: true, isDefinition: true)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 72, elements: !1433)
!1433 = !{!1434}
!1434 = !DISubrange(count: 9)
!1435 = !DIGlobalVariableExpression(var: !1436, expr: !DIExpression())
!1436 = distinct !DIGlobalVariable(scope: null, file: !3, line: 322, type: !1437, isLocal: true, isDefinition: true)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 80, elements: !1438)
!1438 = !{!1439}
!1439 = !DISubrange(count: 10)
!1440 = !DIGlobalVariableExpression(var: !1441, expr: !DIExpression())
!1441 = distinct !DIGlobalVariable(scope: null, file: !3, line: 324, type: !1432, isLocal: true, isDefinition: true)
!1442 = !DIGlobalVariableExpression(var: !1443, expr: !DIExpression())
!1443 = distinct !DIGlobalVariable(scope: null, file: !3, line: 325, type: !1444, isLocal: true, isDefinition: true)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 120, elements: !1445)
!1445 = !{!1446}
!1446 = !DISubrange(count: 15)
!1447 = !DIGlobalVariableExpression(var: !1448, expr: !DIExpression())
!1448 = distinct !DIGlobalVariable(scope: null, file: !3, line: 326, type: !1449, isLocal: true, isDefinition: true)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 88, elements: !1450)
!1450 = !{!1451}
!1451 = !DISubrange(count: 11)
!1452 = !DIGlobalVariableExpression(var: !1453, expr: !DIExpression())
!1453 = distinct !DIGlobalVariable(scope: null, file: !3, line: 329, type: !172, isLocal: true, isDefinition: true)
!1454 = !DIGlobalVariableExpression(var: !1455, expr: !DIExpression())
!1455 = distinct !DIGlobalVariable(scope: null, file: !3, line: 329, type: !1456, isLocal: true, isDefinition: true)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 80, elements: !1438)
!1457 = !DIGlobalVariableExpression(var: !1458, expr: !DIExpression())
!1458 = distinct !DIGlobalVariable(scope: null, file: !3, line: 333, type: !1459, isLocal: true, isDefinition: true)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 96, elements: !1460)
!1460 = !{!1461}
!1461 = !DISubrange(count: 12)
!1462 = !DIGlobalVariableExpression(var: !1463, expr: !DIExpression())
!1463 = distinct !DIGlobalVariable(scope: null, file: !3, line: 335, type: !1432, isLocal: true, isDefinition: true)
!1464 = !DIGlobalVariableExpression(var: !1465, expr: !DIExpression())
!1465 = distinct !DIGlobalVariable(scope: null, file: !3, line: 337, type: !1466, isLocal: true, isDefinition: true)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 496, elements: !1467)
!1467 = !{!1468}
!1468 = !DISubrange(count: 62)
!1469 = !DIGlobalVariableExpression(var: !1470, expr: !DIExpression())
!1470 = distinct !DIGlobalVariable(name: "tsc_force_recalibrate", scope: !2, file: !3, line: 51, type: !125, isLocal: true, isDefinition: true)
!1471 = !DIGlobalVariableExpression(var: !1472, expr: !DIExpression())
!1472 = distinct !DIGlobalVariable(scope: null, file: !3, line: 631, type: !1473, isLocal: true, isDefinition: true)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 288, elements: !1474)
!1474 = !{!1475}
!1475 = !DISubrange(count: 36)
!1476 = !DIGlobalVariableExpression(var: !1477, expr: !DIExpression())
!1477 = distinct !DIGlobalVariable(scope: null, file: !3, line: 650, type: !291, isLocal: true, isDefinition: true)
!1478 = !DIGlobalVariableExpression(var: !1479, expr: !DIExpression())
!1479 = distinct !DIGlobalVariable(name: "time_cpufreq_notifier_block", scope: !2, file: !3, line: 1049, type: !1480, isLocal: true, isDefinition: true)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1481, line: 54, size: 192, elements: !1482)
!1481 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1482 = !{!1483, !1489, !1490}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1480, file: !1481, line: 55, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1481, line: 51, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!125, !1488, !102, !100}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1480, file: !1481, line: 56, baseType: !1488, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1480, file: !1481, line: 57, baseType: !125, size: 32, offset: 128)
!1491 = !DIGlobalVariableExpression(var: !1492, expr: !DIExpression())
!1492 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1024, type: !1493, isLocal: true, isDefinition: true)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 184, elements: !1494)
!1494 = !{!1495}
!1495 = !DISubrange(count: 23)
!1496 = !DIGlobalVariableExpression(var: !1497, expr: !DIExpression())
!1497 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1041, type: !167, isLocal: true, isDefinition: true)
!1498 = !DIGlobalVariableExpression(var: !1499, expr: !DIExpression())
!1499 = distinct !DIGlobalVariable(name: "ref_freq", scope: !2, file: !3, line: 1014, type: !7, isLocal: true, isDefinition: true)
!1500 = !DIGlobalVariableExpression(var: !1501, expr: !DIExpression())
!1501 = distinct !DIGlobalVariable(name: "loops_per_jiffy_ref", scope: !2, file: !3, line: 1015, type: !102, isLocal: true, isDefinition: true)
!1502 = !DIGlobalVariableExpression(var: !1503, expr: !DIExpression())
!1503 = distinct !DIGlobalVariable(name: "tsc_khz_ref", scope: !2, file: !3, line: 1016, type: !102, isLocal: true, isDefinition: true)
!1504 = !DIGlobalVariableExpression(var: !1505, expr: !DIExpression())
!1505 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1164, type: !1437, isLocal: true, isDefinition: true)
!1506 = !DIGlobalVariableExpression(var: !1507, expr: !DIExpression())
!1507 = distinct !DIGlobalVariable(name: "clocksource_tsc_early", scope: !2, file: !3, line: 1163, type: !330, isLocal: true, isDefinition: true)
!1508 = !DIGlobalVariableExpression(var: !1509, expr: !DIExpression())
!1509 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1142, type: !1510, isLocal: true, isDefinition: true)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 456, elements: !1511)
!1511 = !{!1512}
!1512 = !DISubrange(count: 57)
!1513 = !DIGlobalVariableExpression(var: !1514, expr: !DIExpression())
!1514 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1185, type: !1515, isLocal: true, isDefinition: true)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 32, elements: !684)
!1516 = !DIGlobalVariableExpression(var: !1517, expr: !DIExpression())
!1517 = distinct !DIGlobalVariable(name: "clocksource_tsc", scope: !2, file: !3, line: 1184, type: !330, isLocal: true, isDefinition: true)
!1518 = !DIGlobalVariableExpression(var: !1519, expr: !DIExpression())
!1519 = distinct !DIGlobalVariable(name: "tsc_irqwork", scope: !2, file: !3, line: 1357, type: !1329, isLocal: true, isDefinition: true)
!1520 = !DIGlobalVariableExpression(var: !1521, expr: !DIExpression())
!1521 = distinct !DIGlobalVariable(name: "tsc_start", scope: !1522, file: !3, line: 1374, type: !104, isLocal: true, isDefinition: true)
!1522 = distinct !DISubprogram(name: "tsc_refine_calibration_work", scope: !3, file: !3, line: 1372, type: !774, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1523)
!1523 = !{!1524, !1525, !1526, !1527, !1528, !1529, !1530, !1533, !1538, !1541, !1542}
!1524 = !DILocalVariable(name: "work", arg: 1, scope: !1522, file: !3, line: 1372, type: !776)
!1525 = !DILocalVariable(name: "tsc_stop", scope: !1522, file: !3, line: 1376, type: !104)
!1526 = !DILocalVariable(name: "ref_stop", scope: !1522, file: !3, line: 1376, type: !104)
!1527 = !DILocalVariable(name: "delta", scope: !1522, file: !3, line: 1376, type: !104)
!1528 = !DILocalVariable(name: "freq", scope: !1522, file: !3, line: 1377, type: !102)
!1529 = !DILocalVariable(name: "cpu", scope: !1522, file: !3, line: 1378, type: !125)
!1530 = !DILabel(scope: !1531, name: "restart", file: !3, line: 1390)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 1389, column: 31)
!1532 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 1389, column: 6)
!1533 = !DILocalVariable(name: "__x", scope: !1534, file: !3, line: 1422, type: !212)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 1422, column: 7)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 1422, column: 7)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 1419, column: 48)
!1537 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 1419, column: 6)
!1538 = !DILocalVariable(name: "__x", scope: !1539, file: !3, line: 1438, type: !212)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 1438, column: 6)
!1540 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 1438, column: 6)
!1541 = !DILabel(scope: !1522, name: "out", file: !3, line: 1453)
!1542 = !DILabel(scope: !1522, name: "unreg", file: !3, line: 1460)
!1543 = !DIGlobalVariableExpression(var: !1544, expr: !DIExpression())
!1544 = distinct !DIGlobalVariable(name: "ref_start", scope: !1522, file: !3, line: 1374, type: !104, isLocal: true, isDefinition: true)
!1545 = !DIGlobalVariableExpression(var: !1546, expr: !DIExpression())
!1546 = distinct !DIGlobalVariable(name: "hpet", scope: !1522, file: !3, line: 1375, type: !125, isLocal: true, isDefinition: true)
!1547 = !DIGlobalVariableExpression(var: !1548, expr: !DIExpression())
!1548 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1423, type: !1549, isLocal: true, isDefinition: true)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 976, elements: !1550)
!1550 = !{!1551}
!1551 = !DISubrange(count: 122)
!1552 = !DIGlobalVariableExpression(var: !1553, expr: !DIExpression())
!1553 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1424, type: !1554, isLocal: true, isDefinition: true)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 424, elements: !1555)
!1555 = !{!1556}
!1556 = !DISubrange(count: 53)
!1557 = !DIGlobalVariableExpression(var: !1558, expr: !DIExpression())
!1558 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1429, type: !1559, isLocal: true, isDefinition: true)
!1559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 432, elements: !1560)
!1560 = !{!1561}
!1561 = !DISubrange(count: 54)
!1562 = !DIGlobalVariableExpression(var: !1563, expr: !DIExpression())
!1563 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1429, type: !314, isLocal: true, isDefinition: true)
!1564 = !DIGlobalVariableExpression(var: !1565, expr: !DIExpression())
!1565 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1429, type: !1432, isLocal: true, isDefinition: true)
!1566 = !DIGlobalVariableExpression(var: !1567, expr: !DIExpression())
!1567 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1442, type: !1568, isLocal: true, isDefinition: true)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 472, elements: !1569)
!1569 = !{!1570}
!1570 = !DISubrange(count: 59)
!1571 = !DIGlobalVariableExpression(var: !1572, expr: !DIExpression())
!1572 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1504, type: !1573, isLocal: true, isDefinition: true)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 176, elements: !1574)
!1574 = !{!1575}
!1575 = !DISubrange(count: 22)
!1576 = !DIGlobalVariableExpression(var: !1577, expr: !DIExpression())
!1577 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1531, type: !1578, isLocal: true, isDefinition: true)
!1578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 328, elements: !1579)
!1579 = !{!1580}
!1580 = !DISubrange(count: 41)
!1581 = !DIGlobalVariableExpression(var: !1582, expr: !DIExpression())
!1582 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1536, type: !1583, isLocal: true, isDefinition: true)
!1583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 272, elements: !1584)
!1584 = !{!1585}
!1585 = !DISubrange(count: 34)
!1586 = !DIGlobalVariableExpression(var: !1587, expr: !DIExpression())
!1587 = distinct !DIGlobalVariable(scope: null, file: !3, line: 835, type: !1588, isLocal: true, isDefinition: true)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 360, elements: !1589)
!1589 = !{!1590}
!1590 = !DISubrange(count: 45)
!1591 = !DIGlobalVariableExpression(var: !1592, expr: !DIExpression())
!1592 = distinct !DIGlobalVariable(scope: null, file: !3, line: 835, type: !1593, isLocal: true, isDefinition: true)
!1593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 64, elements: !1594)
!1594 = !{!1595}
!1595 = !DISubrange(count: 8)
!1596 = !DIGlobalVariableExpression(var: !1597, expr: !DIExpression())
!1597 = distinct !DIGlobalVariable(scope: null, file: !3, line: 858, type: !1598, isLocal: true, isDefinition: true)
!1598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 320, elements: !1599)
!1599 = !{!1600}
!1600 = !DISubrange(count: 40)
!1601 = !DIGlobalVariableExpression(var: !1602, expr: !DIExpression())
!1602 = distinct !DIGlobalVariable(scope: null, file: !3, line: 862, type: !1603, isLocal: true, isDefinition: true)
!1603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 368, elements: !1604)
!1604 = !{!1605}
!1605 = !DISubrange(count: 46)
!1606 = !DIGlobalVariableExpression(var: !1607, expr: !DIExpression())
!1607 = distinct !DIGlobalVariable(scope: null, file: !3, line: 868, type: !1598, isLocal: true, isDefinition: true)
!1608 = !DIGlobalVariableExpression(var: !1609, expr: !DIExpression())
!1609 = distinct !DIGlobalVariable(scope: null, file: !3, line: 873, type: !291, isLocal: true, isDefinition: true)
!1610 = !DIGlobalVariableExpression(var: !1611, expr: !DIExpression())
!1611 = distinct !DIGlobalVariable(scope: null, file: !3, line: 881, type: !1473, isLocal: true, isDefinition: true)
!1612 = !DIGlobalVariableExpression(var: !1613, expr: !DIExpression())
!1613 = distinct !DIGlobalVariable(scope: null, file: !3, line: 887, type: !172, isLocal: true, isDefinition: true)
!1614 = !DIGlobalVariableExpression(var: !1615, expr: !DIExpression())
!1615 = distinct !DIGlobalVariable(scope: null, file: !3, line: 896, type: !1616, isLocal: true, isDefinition: true)
!1616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 400, elements: !1617)
!1617 = !{!1618}
!1618 = !DISubrange(count: 50)
!1619 = !{!"rsp"}
!1620 = !{i32 7, !"Dwarf Version", i32 5}
!1621 = !{i32 2, !"Debug Info Version", i32 3}
!1622 = !{i32 1, !"wchar_size", i32 2}
!1623 = !{i32 8, !"cf-protection-branch", i32 1}
!1624 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1625 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1626 = !{i32 1, !"Code Model", i32 2}
!1627 = !{i32 1, !"override-stack-alignment", i32 8}
!1628 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1629 = distinct !DISubprogram(name: "tsc_early_khz_setup", scope: !3, file: !3, line: 66, type: !258, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1630)
!1630 = !{!1631}
!1631 = !DILocalVariable(name: "buf", arg: 1, scope: !1629, file: !3, line: 66, type: !260)
!1632 = !DILocation(line: 66, column: 45, scope: !1629)
!1633 = !DILocation(line: 68, column: 20, scope: !1629)
!1634 = !DILocation(line: 68, column: 9, scope: !1629)
!1635 = !DILocation(line: 68, column: 2, scope: !1629)
!1636 = distinct !DISubprogram(name: "__cyc2ns_read", scope: !3, file: !3, line: 72, type: !1637, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1640)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null, !1639}
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!1640 = !{!1641, !1642, !1643, !1644, !1647, !1649, !1651, !1653, !1655, !1657, !1659, !1661, !1663, !1665, !1667, !1669, !1671, !1673}
!1641 = !DILocalVariable(name: "data", arg: 1, scope: !1636, file: !3, line: 72, type: !1639)
!1642 = !DILocalVariable(name: "seq", scope: !1636, file: !3, line: 74, type: !125)
!1643 = !DILocalVariable(name: "idx", scope: !1636, file: !3, line: 74, type: !125)
!1644 = !DILocalVariable(name: "pscr_ret__", scope: !1645, file: !3, line: 77, type: !7)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 77, column: 9)
!1646 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 76, column: 5)
!1647 = !DILocalVariable(name: "__vpp_verify", scope: !1648, file: !3, line: 77, type: !724)
!1648 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 77, column: 9)
!1649 = !DILocalVariable(name: "pfo_val__", scope: !1650, file: !3, line: 77, type: !110)
!1650 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 77, column: 9)
!1651 = !DILocalVariable(name: "pscr_ret__", scope: !1652, file: !3, line: 80, type: !104)
!1652 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 80, column: 25)
!1653 = !DILocalVariable(name: "__vpp_verify", scope: !1654, file: !3, line: 80, type: !724)
!1654 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 80, column: 25)
!1655 = !DILocalVariable(name: "pfo_val__", scope: !1656, file: !3, line: 80, type: !104)
!1656 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 80, column: 25)
!1657 = !DILocalVariable(name: "pscr_ret__", scope: !1658, file: !3, line: 81, type: !110)
!1658 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 81, column: 25)
!1659 = !DILocalVariable(name: "__vpp_verify", scope: !1660, file: !3, line: 81, type: !724)
!1660 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 81, column: 25)
!1661 = !DILocalVariable(name: "pfo_val__", scope: !1662, file: !3, line: 81, type: !110)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 81, column: 25)
!1663 = !DILocalVariable(name: "pscr_ret__", scope: !1664, file: !3, line: 82, type: !110)
!1664 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 82, column: 25)
!1665 = !DILocalVariable(name: "__vpp_verify", scope: !1666, file: !3, line: 82, type: !724)
!1666 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 82, column: 25)
!1667 = !DILocalVariable(name: "pfo_val__", scope: !1668, file: !3, line: 82, type: !110)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 82, column: 25)
!1669 = !DILocalVariable(name: "pscr_ret__", scope: !1670, file: !3, line: 84, type: !7)
!1670 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 84, column: 11)
!1671 = !DILocalVariable(name: "__vpp_verify", scope: !1672, file: !3, line: 84, type: !724)
!1672 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 84, column: 11)
!1673 = !DILocalVariable(name: "pfo_val__", scope: !1674, file: !3, line: 84, type: !110)
!1674 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 84, column: 11)
!1675 = !DILocation(line: 72, column: 56, scope: !1636)
!1676 = !DILocation(line: 74, column: 2, scope: !1636)
!1677 = !DILocation(line: 74, column: 6, scope: !1636)
!1678 = !DILocation(line: 74, column: 11, scope: !1636)
!1679 = !DILocation(line: 76, column: 2, scope: !1636)
!1680 = !DILocation(line: 77, column: 9, scope: !1645)
!1681 = !DILocation(line: 77, column: 9, scope: !1648)
!1682 = !DILocation(line: 77, column: 9, scope: !1650)
!1683 = !{i64 2154685112}
!1684 = !DILocation(line: 77, column: 9, scope: !1646)
!1685 = !DILocation(line: 77, column: 7, scope: !1646)
!1686 = !DILocation(line: 78, column: 9, scope: !1646)
!1687 = !DILocation(line: 78, column: 13, scope: !1646)
!1688 = !DILocation(line: 78, column: 7, scope: !1646)
!1689 = !DILocation(line: 80, column: 25, scope: !1652)
!1690 = !DILocation(line: 80, column: 25, scope: !1654)
!1691 = !DILocation(line: 80, column: 25, scope: !1656)
!1692 = !{i64 2154689311}
!1693 = !DILocation(line: 80, column: 25, scope: !1646)
!1694 = !DILocation(line: 80, column: 3, scope: !1646)
!1695 = !DILocation(line: 80, column: 9, scope: !1646)
!1696 = !DILocation(line: 80, column: 23, scope: !1646)
!1697 = !DILocation(line: 81, column: 25, scope: !1658)
!1698 = !DILocation(line: 81, column: 25, scope: !1660)
!1699 = !DILocation(line: 81, column: 25, scope: !1662)
!1700 = !{i64 2154692168}
!1701 = !DILocation(line: 81, column: 25, scope: !1646)
!1702 = !DILocation(line: 81, column: 3, scope: !1646)
!1703 = !DILocation(line: 81, column: 9, scope: !1646)
!1704 = !DILocation(line: 81, column: 23, scope: !1646)
!1705 = !DILocation(line: 82, column: 25, scope: !1664)
!1706 = !DILocation(line: 82, column: 25, scope: !1666)
!1707 = !DILocation(line: 82, column: 25, scope: !1668)
!1708 = !{i64 2154695699}
!1709 = !DILocation(line: 82, column: 25, scope: !1646)
!1710 = !DILocation(line: 82, column: 3, scope: !1646)
!1711 = !DILocation(line: 82, column: 9, scope: !1646)
!1712 = !DILocation(line: 82, column: 23, scope: !1646)
!1713 = !DILocation(line: 84, column: 2, scope: !1646)
!1714 = !DILocation(line: 84, column: 11, scope: !1636)
!1715 = !DILocation(line: 84, column: 11, scope: !1670)
!1716 = !DILocation(line: 84, column: 11, scope: !1672)
!1717 = !DILocation(line: 84, column: 11, scope: !1674)
!1718 = !{i64 2154700996}
!1719 = distinct !{!1719, !1679, !1720, !1721, !1722}
!1720 = !DILocation(line: 84, column: 71, scope: !1636)
!1721 = !{!"llvm.loop.mustprogress"}
!1722 = !{!"llvm.loop.unroll.disable"}
!1723 = !DILocation(line: 85, column: 1, scope: !1636)
!1724 = distinct !DISubprogram(name: "cyc2ns_read_begin", scope: !3, file: !3, line: 87, type: !1637, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1725)
!1725 = !{!1726}
!1726 = !DILocalVariable(name: "data", arg: 1, scope: !1724, file: !3, line: 87, type: !1639)
!1727 = !DILocation(line: 87, column: 60, scope: !1724)
!1728 = !DILocation(line: 89, column: 2, scope: !1724)
!1729 = !DILocation(line: 89, column: 2, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 89, column: 2)
!1731 = !{i64 2154701912}
!1732 = !DILocation(line: 90, column: 16, scope: !1724)
!1733 = !DILocation(line: 90, column: 2, scope: !1724)
!1734 = !DILocation(line: 91, column: 1, scope: !1724)
!1735 = distinct !DISubprogram(name: "__preempt_count_add", scope: !1736, file: !1736, line: 78, type: !1737, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1739)
!1736 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !125}
!1739 = !{!1740, !1741, !1743}
!1740 = !DILocalVariable(name: "val", arg: 1, scope: !1735, file: !1736, line: 78, type: !125)
!1741 = !DILocalVariable(name: "pao_ID__", scope: !1742, file: !1736, line: 80, type: !1230)
!1742 = distinct !DILexicalBlock(scope: !1735, file: !1736, line: 80, column: 2)
!1743 = !DILocalVariable(name: "pto_val__", scope: !1744, file: !1736, line: 80, type: !110)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !1736, line: 80, column: 2)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !1736, line: 80, column: 2)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !1736, line: 80, column: 2)
!1747 = !DILocation(line: 78, column: 53, scope: !1735)
!1748 = !DILocation(line: 80, column: 2, scope: !1735)
!1749 = !DILocation(line: 80, column: 2, scope: !1742)
!1750 = !DILocation(line: 80, column: 2, scope: !1746)
!1751 = !DILocation(line: 80, column: 2, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1746, file: !1736, line: 80, column: 2)
!1753 = !{i64 2149629219}
!1754 = !DILocation(line: 80, column: 2, scope: !1745)
!1755 = !DILocation(line: 80, column: 2, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1745, file: !1736, line: 80, column: 2)
!1757 = !{i64 2149629514}
!1758 = !DILocation(line: 80, column: 2, scope: !1744)
!1759 = !{i64 2149630219}
!1760 = !DILocation(line: 81, column: 1, scope: !1735)
!1761 = !DILocation(line: 95, column: 2, scope: !264)
!1762 = !DILocation(line: 95, column: 2, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !264, file: !3, line: 95, column: 2)
!1764 = !{i64 2154702275}
!1765 = !DILocation(line: 95, column: 2, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 95, column: 2)
!1767 = !DILocation(line: 95, column: 2, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 95, column: 2)
!1769 = !{i64 2154702434}
!1770 = !DILocation(line: 96, column: 1, scope: !264)
!1771 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !1736, file: !1736, line: 93, type: !846, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1772)
!1772 = !{!1773}
!1773 = !DILocalVariable(name: "c", scope: !1774, file: !1736, line: 95, type: !198)
!1774 = distinct !DILexicalBlock(scope: !1771, file: !1736, line: 95, column: 9)
!1775 = !DILocation(line: 95, column: 9, scope: !1774)
!1776 = !{i64 2149633575, i64 2149633668}
!1777 = !{i8 0, i8 2}
!1778 = !DILocation(line: 95, column: 9, scope: !1771)
!1779 = !DILocation(line: 95, column: 2, scope: !1771)
!1780 = distinct !DISubprogram(name: "native_sched_clock", scope: !3, file: !3, line: 231, type: !1781, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1783)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!108}
!1783 = !{!1784, !1787}
!1784 = !DILocalVariable(name: "branch", scope: !1785, file: !3, line: 233, type: !198)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 233, column: 6)
!1786 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 233, column: 6)
!1787 = !DILocalVariable(name: "tsc_now", scope: !1788, file: !3, line: 234, type: !104)
!1788 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 233, column: 40)
!1789 = !DILocation(line: 233, column: 6, scope: !1785)
!1790 = !DILocation(line: 233, column: 6, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 233, column: 6)
!1792 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 233, column: 6)
!1793 = !DILocation(line: 233, column: 6, scope: !1792)
!1794 = !DILocation(line: 233, column: 6, scope: !1786)
!1795 = !DILocation(line: 233, column: 6, scope: !1780)
!1796 = !DILocation(line: 234, column: 3, scope: !1788)
!1797 = !DILocation(line: 234, column: 7, scope: !1788)
!1798 = !DILocation(line: 234, column: 17, scope: !1788)
!1799 = !DILocation(line: 237, column: 24, scope: !1788)
!1800 = !DILocation(line: 237, column: 10, scope: !1788)
!1801 = !DILocation(line: 237, column: 3, scope: !1788)
!1802 = !DILocation(line: 238, column: 2, scope: !1786)
!1803 = !DILocation(line: 250, column: 10, scope: !1780)
!1804 = !DILocation(line: 250, column: 21, scope: !1780)
!1805 = !DILocation(line: 250, column: 40, scope: !1780)
!1806 = !DILocation(line: 250, column: 2, scope: !1780)
!1807 = !DILocation(line: 251, column: 1, scope: !1780)
!1808 = distinct !DISubprogram(name: "arch_static_branch_jump", scope: !1809, file: !1809, line: 53, type: !1810, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1815)
!1809 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!198, !1812, !1814}
!1812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1813)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!1815 = !{!1816, !1817, !1818}
!1816 = !DILocalVariable(name: "key", arg: 1, scope: !1808, file: !1809, line: 53, type: !1812)
!1817 = !DILocalVariable(name: "branch", arg: 2, scope: !1808, file: !1809, line: 53, type: !1814)
!1818 = !DILabel(scope: !1808, name: "l_yes", file: !1809, line: 61)
!1819 = !DILocation(line: 53, column: 79, scope: !1808)
!1820 = !DILocation(line: 53, column: 95, scope: !1808)
!1821 = !DILocation(line: 58, column: 13, scope: !1808)
!1822 = !DILocation(line: 58, column: 24, scope: !1808)
!1823 = !DILocation(line: 55, column: 2, scope: !1808)
!1824 = !{i64 1521926, i64 1521949, i64 2149006696, i64 2149006717, i64 2149006743, i64 2149006776, i64 2149006810, i64 2149006834}
!1825 = !DILocation(line: 60, column: 2, scope: !1808)
!1826 = !DILocation(line: 61, column: 1, scope: !1808)
!1827 = !DILocation(line: 62, column: 2, scope: !1808)
!1828 = !DILocation(line: 63, column: 1, scope: !1808)
!1829 = distinct !DISubprogram(name: "rdtsc", scope: !1830, file: !1830, line: 180, type: !1781, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1831)
!1830 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!1831 = !{!1832, !1833}
!1832 = !DILocalVariable(name: "low", scope: !1829, file: !1830, line: 182, type: !102)
!1833 = !DILocalVariable(name: "high", scope: !1829, file: !1830, line: 182, type: !102)
!1834 = !DILocation(line: 182, column: 2, scope: !1829)
!1835 = !DILocation(line: 184, column: 2, scope: !1829)
!1836 = !{i64 1859741}
!1837 = !DILocation(line: 186, column: 9, scope: !1829)
!1838 = !DILocation(line: 187, column: 1, scope: !1829)
!1839 = !DILocation(line: 186, column: 2, scope: !1829)
!1840 = distinct !DISubprogram(name: "__cycles_2_ns", scope: !3, file: !3, line: 122, type: !1413, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1841)
!1841 = !{!1842, !1843, !1844}
!1842 = !DILocalVariable(name: "cyc", arg: 1, scope: !1840, file: !3, line: 122, type: !108)
!1843 = !DILocalVariable(name: "data", scope: !1840, file: !3, line: 124, type: !221)
!1844 = !DILocalVariable(name: "ns", scope: !1840, file: !3, line: 125, type: !108)
!1845 = !DILocation(line: 122, column: 76, scope: !1840)
!1846 = !DILocation(line: 124, column: 2, scope: !1840)
!1847 = !DILocation(line: 124, column: 21, scope: !1840)
!1848 = !DILocation(line: 125, column: 2, scope: !1840)
!1849 = !DILocation(line: 125, column: 21, scope: !1840)
!1850 = !DILocation(line: 127, column: 2, scope: !1840)
!1851 = !DILocation(line: 129, column: 12, scope: !1840)
!1852 = !DILocation(line: 129, column: 5, scope: !1840)
!1853 = !DILocation(line: 130, column: 24, scope: !1840)
!1854 = !DILocation(line: 130, column: 34, scope: !1840)
!1855 = !DILocation(line: 130, column: 51, scope: !1840)
!1856 = !DILocation(line: 130, column: 8, scope: !1840)
!1857 = !DILocation(line: 130, column: 5, scope: !1840)
!1858 = !DILocation(line: 132, column: 9, scope: !1840)
!1859 = !DILocation(line: 133, column: 1, scope: !1840)
!1860 = !DILocation(line: 132, column: 2, scope: !1840)
!1861 = distinct !DISubprogram(name: "native_sched_clock_from_tsc", scope: !3, file: !3, line: 256, type: !1862, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1864)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!108, !104}
!1864 = !{!1865}
!1865 = !DILocalVariable(name: "tsc", arg: 1, scope: !1861, file: !3, line: 256, type: !104)
!1866 = !DILocation(line: 256, column: 37, scope: !1861)
!1867 = !DILocation(line: 258, column: 21, scope: !1861)
!1868 = !DILocation(line: 258, column: 9, scope: !1861)
!1869 = !DILocation(line: 258, column: 2, scope: !1861)
!1870 = !DILocation(line: 135, column: 74, scope: !1412)
!1871 = !DILocation(line: 137, column: 2, scope: !1412)
!1872 = !DILocation(line: 137, column: 21, scope: !1412)
!1873 = !DILocation(line: 138, column: 2, scope: !1412)
!1874 = !DILocation(line: 138, column: 2, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 138, column: 2)
!1876 = !{i64 2154704769}
!1877 = !DILocation(line: 139, column: 21, scope: !1412)
!1878 = !DILocation(line: 139, column: 7, scope: !1412)
!1879 = !DILocation(line: 139, column: 5, scope: !1412)
!1880 = !DILocation(line: 140, column: 2, scope: !1412)
!1881 = !DILocation(line: 140, column: 2, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 140, column: 2)
!1883 = !{i64 2154704925}
!1884 = !DILocation(line: 140, column: 2, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 140, column: 2)
!1886 = !DILocation(line: 140, column: 2, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 140, column: 2)
!1888 = !{i64 2154705084}
!1889 = !DILocation(line: 141, column: 9, scope: !1412)
!1890 = !DILocation(line: 142, column: 1, scope: !1412)
!1891 = !DILocation(line: 141, column: 2, scope: !1412)
!1892 = distinct !DISubprogram(name: "sched_clock_noinstr", scope: !3, file: !3, line: 264, type: !270, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1893 = !DILocation(line: 266, column: 9, scope: !1892)
!1894 = !DILocation(line: 266, column: 2, scope: !1892)
!1895 = !DILocation(line: 31, column: 9, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1420, file: !1421, line: 31, column: 9)
!1897 = !DILocation(line: 31, column: 9, scope: !1420)
!1898 = !DILocation(line: 31, column: 2, scope: !1420)
!1899 = distinct !DISubprogram(name: "using_native_sched_clock", scope: !3, file: !3, line: 269, type: !846, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1900 = !DILocation(line: 271, column: 9, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 271, column: 9)
!1902 = !DILocation(line: 271, column: 9, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 271, column: 9)
!1904 = !DILocation(line: 271, column: 43, scope: !1899)
!1905 = !DILocation(line: 271, column: 2, scope: !1899)
!1906 = !DILocation(line: 281, column: 2, scope: !269)
!1907 = !DILocation(line: 281, column: 6, scope: !269)
!1908 = !DILocation(line: 282, column: 2, scope: !269)
!1909 = !DILocation(line: 282, column: 2, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !269, file: !3, line: 282, column: 2)
!1911 = !{i64 2154726832}
!1912 = !DILocation(line: 283, column: 8, scope: !269)
!1913 = !DILocation(line: 283, column: 6, scope: !269)
!1914 = !DILocation(line: 284, column: 2, scope: !269)
!1915 = !DILocation(line: 284, column: 2, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !269, file: !3, line: 284, column: 2)
!1917 = !{i64 2154726988}
!1918 = !DILocation(line: 284, column: 2, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 284, column: 2)
!1920 = !DILocation(line: 284, column: 2, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 284, column: 2)
!1922 = !{i64 2154727147}
!1923 = !DILocation(line: 285, column: 9, scope: !269)
!1924 = !DILocation(line: 286, column: 1, scope: !269)
!1925 = !DILocation(line: 285, column: 2, scope: !269)
!1926 = distinct !DISubprogram(name: "check_tsc_unstable", scope: !3, file: !3, line: 288, type: !1141, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1927 = !DILocation(line: 290, column: 9, scope: !1926)
!1928 = !DILocation(line: 290, column: 2, scope: !1926)
!1929 = distinct !DISubprogram(name: "notsc_setup", scope: !3, file: !3, line: 295, type: !258, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1930)
!1930 = !{!1931}
!1931 = !DILocalVariable(name: "str", arg: 1, scope: !1929, file: !3, line: 295, type: !260)
!1932 = !DILocation(line: 295, column: 30, scope: !1929)
!1933 = !DILocation(line: 297, column: 2, scope: !1929)
!1934 = !DILocation(line: 298, column: 2, scope: !1929)
!1935 = distinct !DISubprogram(name: "mark_tsc_unstable", scope: !3, file: !3, line: 1201, type: !1936, scopeLine: 1202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1938)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !260}
!1938 = !{!1939}
!1939 = !DILocalVariable(name: "reason", arg: 1, scope: !1935, file: !3, line: 1201, type: !260)
!1940 = !DILocation(line: 1201, column: 30, scope: !1935)
!1941 = !DILocation(line: 1203, column: 6, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 1203, column: 6)
!1943 = !DILocation(line: 1203, column: 6, scope: !1935)
!1944 = !DILocation(line: 1204, column: 3, scope: !1942)
!1945 = !DILocation(line: 1206, column: 15, scope: !1935)
!1946 = !DILocation(line: 1207, column: 6, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 1207, column: 6)
!1948 = !DILocation(line: 1207, column: 6, scope: !1935)
!1949 = !DILocation(line: 1208, column: 3, scope: !1947)
!1950 = !DILocation(line: 1209, column: 2, scope: !1935)
!1951 = !DILocation(line: 1210, column: 2, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 1210, column: 2)
!1953 = !DILocation(line: 1210, column: 2, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 1210, column: 2)
!1955 = !DILocation(line: 1212, column: 2, scope: !1935)
!1956 = !DILocation(line: 1213, column: 2, scope: !1935)
!1957 = !DILocation(line: 1214, column: 1, scope: !1935)
!1958 = distinct !DISubprogram(name: "tsc_setup", scope: !3, file: !3, line: 318, type: !258, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1959)
!1959 = !{!1960}
!1960 = !DILocalVariable(name: "str", arg: 1, scope: !1958, file: !3, line: 318, type: !260)
!1961 = !DILocation(line: 318, column: 35, scope: !1958)
!1962 = !DILocation(line: 320, column: 14, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 320, column: 6)
!1964 = !DILocation(line: 320, column: 7, scope: !1963)
!1965 = !DILocation(line: 320, column: 6, scope: !1958)
!1966 = !DILocation(line: 321, column: 28, scope: !1963)
!1967 = !DILocation(line: 321, column: 3, scope: !1963)
!1968 = !DILocation(line: 322, column: 15, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 322, column: 6)
!1970 = !DILocation(line: 322, column: 7, scope: !1969)
!1971 = !DILocation(line: 322, column: 6, scope: !1958)
!1972 = !DILocation(line: 323, column: 21, scope: !1969)
!1973 = !DILocation(line: 323, column: 3, scope: !1969)
!1974 = !DILocation(line: 324, column: 14, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 324, column: 6)
!1976 = !DILocation(line: 324, column: 7, scope: !1975)
!1977 = !DILocation(line: 324, column: 6, scope: !1958)
!1978 = !DILocation(line: 325, column: 3, scope: !1975)
!1979 = !DILocation(line: 326, column: 14, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 326, column: 6)
!1981 = !DILocation(line: 326, column: 7, scope: !1980)
!1982 = !DILocation(line: 326, column: 6, scope: !1958)
!1983 = !DILocation(line: 327, column: 19, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 326, column: 34)
!1985 = !DILocation(line: 328, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 328, column: 7)
!1987 = !DILocation(line: 328, column: 7, scope: !1984)
!1988 = !DILocation(line: 329, column: 4, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 329, column: 4)
!1990 = !DILocation(line: 329, column: 4, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 329, column: 4)
!1992 = !DILocation(line: 329, column: 4, scope: !1986)
!1993 = !DILocation(line: 331, column: 19, scope: !1984)
!1994 = !DILocation(line: 332, column: 2, scope: !1984)
!1995 = !DILocation(line: 333, column: 14, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 333, column: 6)
!1997 = !DILocation(line: 333, column: 7, scope: !1996)
!1998 = !DILocation(line: 333, column: 6, scope: !1958)
!1999 = !DILocation(line: 334, column: 25, scope: !1996)
!2000 = !DILocation(line: 334, column: 3, scope: !1996)
!2001 = !DILocation(line: 335, column: 14, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 335, column: 6)
!2003 = !DILocation(line: 335, column: 7, scope: !2002)
!2004 = !DILocation(line: 335, column: 6, scope: !1958)
!2005 = !DILocation(line: 336, column: 7, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 336, column: 7)
!2007 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 335, column: 32)
!2008 = !DILocation(line: 336, column: 7, scope: !2007)
!2009 = !DILocation(line: 337, column: 4, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 337, column: 4)
!2011 = !DILocation(line: 337, column: 4, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 337, column: 4)
!2013 = !DILocation(line: 337, column: 4, scope: !2006)
!2014 = !DILocation(line: 340, column: 20, scope: !2006)
!2015 = !DILocation(line: 341, column: 2, scope: !2007)
!2016 = !DILocation(line: 342, column: 2, scope: !1958)
!2017 = distinct !DISubprogram(name: "native_calibrate_tsc", scope: !3, file: !3, line: 658, type: !2018, scopeLine: 659, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!102}
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026, !2029, !2030, !2031}
!2021 = !DILocalVariable(name: "eax_denominator", scope: !2017, file: !3, line: 660, type: !7)
!2022 = !DILocalVariable(name: "ebx_numerator", scope: !2017, file: !3, line: 660, type: !7)
!2023 = !DILocalVariable(name: "ecx_hz", scope: !2017, file: !3, line: 660, type: !7)
!2024 = !DILocalVariable(name: "edx", scope: !2017, file: !3, line: 660, type: !7)
!2025 = !DILocalVariable(name: "crystal_khz", scope: !2017, file: !3, line: 661, type: !7)
!2026 = !DILocalVariable(name: "eax_base_mhz", scope: !2027, file: !3, line: 702, type: !7)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 701, column: 61)
!2028 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 701, column: 6)
!2029 = !DILocalVariable(name: "ebx", scope: !2027, file: !3, line: 702, type: !7)
!2030 = !DILocalVariable(name: "ecx", scope: !2027, file: !3, line: 702, type: !7)
!2031 = !DILocalVariable(name: "edx", scope: !2027, file: !3, line: 702, type: !7)
!2032 = !DILocation(line: 660, column: 2, scope: !2017)
!2033 = !DILocation(line: 660, column: 15, scope: !2017)
!2034 = !DILocation(line: 660, column: 32, scope: !2017)
!2035 = !DILocation(line: 660, column: 47, scope: !2017)
!2036 = !DILocation(line: 660, column: 55, scope: !2017)
!2037 = !DILocation(line: 661, column: 2, scope: !2017)
!2038 = !DILocation(line: 661, column: 15, scope: !2017)
!2039 = !DILocation(line: 663, column: 20, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 663, column: 6)
!2041 = !DILocation(line: 663, column: 6, scope: !2040)
!2042 = !DILocation(line: 663, column: 31, scope: !2040)
!2043 = !DILocation(line: 663, column: 6, scope: !2017)
!2044 = !DILocation(line: 664, column: 3, scope: !2040)
!2045 = !DILocation(line: 666, column: 20, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 666, column: 6)
!2047 = !DILocation(line: 666, column: 32, scope: !2046)
!2048 = !DILocation(line: 666, column: 6, scope: !2017)
!2049 = !DILocation(line: 667, column: 3, scope: !2046)
!2050 = !DILocation(line: 669, column: 49, scope: !2017)
!2051 = !DILocation(line: 669, column: 43, scope: !2017)
!2052 = !DILocation(line: 669, column: 34, scope: !2017)
!2053 = !DILocation(line: 669, column: 18, scope: !2017)
!2054 = !DILocation(line: 672, column: 2, scope: !2017)
!2055 = !DILocation(line: 674, column: 6, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 674, column: 6)
!2057 = !DILocation(line: 674, column: 20, scope: !2056)
!2058 = !DILocation(line: 674, column: 25, scope: !2056)
!2059 = !DILocation(line: 674, column: 28, scope: !2056)
!2060 = !DILocation(line: 674, column: 44, scope: !2056)
!2061 = !DILocation(line: 674, column: 6, scope: !2017)
!2062 = !DILocation(line: 675, column: 3, scope: !2056)
!2063 = !DILocation(line: 677, column: 16, scope: !2017)
!2064 = !DILocation(line: 677, column: 23, scope: !2017)
!2065 = !DILocation(line: 677, column: 14, scope: !2017)
!2066 = !DILocation(line: 684, column: 6, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 684, column: 6)
!2068 = !DILocation(line: 684, column: 18, scope: !2067)
!2069 = !DILocation(line: 684, column: 23, scope: !2067)
!2070 = !DILocation(line: 685, column: 18, scope: !2067)
!2071 = !DILocation(line: 685, column: 4, scope: !2067)
!2072 = !DILocation(line: 685, column: 28, scope: !2067)
!2073 = !DILocation(line: 684, column: 6, scope: !2017)
!2074 = !DILocation(line: 686, column: 15, scope: !2067)
!2075 = !DILocation(line: 686, column: 3, scope: !2067)
!2076 = !DILocation(line: 693, column: 6, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 693, column: 6)
!2078 = !DILocation(line: 693, column: 18, scope: !2077)
!2079 = !DILocation(line: 693, column: 6, scope: !2017)
!2080 = !DILocation(line: 694, column: 3, scope: !2077)
!2081 = !DILocation(line: 694, column: 3, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 694, column: 3)
!2083 = !DILocation(line: 701, column: 6, scope: !2028)
!2084 = !DILocation(line: 701, column: 18, scope: !2028)
!2085 = !DILocation(line: 701, column: 23, scope: !2028)
!2086 = !DILocation(line: 701, column: 40, scope: !2028)
!2087 = !DILocation(line: 701, column: 52, scope: !2028)
!2088 = !DILocation(line: 701, column: 6, scope: !2017)
!2089 = !DILocation(line: 702, column: 3, scope: !2027)
!2090 = !DILocation(line: 702, column: 16, scope: !2027)
!2091 = !DILocation(line: 702, column: 30, scope: !2027)
!2092 = !DILocation(line: 702, column: 35, scope: !2027)
!2093 = !DILocation(line: 702, column: 40, scope: !2027)
!2094 = !DILocation(line: 704, column: 3, scope: !2027)
!2095 = !DILocation(line: 705, column: 17, scope: !2027)
!2096 = !DILocation(line: 705, column: 30, scope: !2027)
!2097 = !DILocation(line: 706, column: 4, scope: !2027)
!2098 = !DILocation(line: 705, column: 37, scope: !2027)
!2099 = !DILocation(line: 706, column: 22, scope: !2027)
!2100 = !DILocation(line: 706, column: 20, scope: !2027)
!2101 = !DILocation(line: 705, column: 15, scope: !2027)
!2102 = !DILocation(line: 707, column: 2, scope: !2028)
!2103 = !DILocation(line: 707, column: 2, scope: !2027)
!2104 = !DILocation(line: 709, column: 6, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 709, column: 6)
!2106 = !DILocation(line: 709, column: 18, scope: !2105)
!2107 = !DILocation(line: 709, column: 6, scope: !2017)
!2108 = !DILocation(line: 710, column: 3, scope: !2105)
!2109 = !DILocation(line: 716, column: 20, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 716, column: 6)
!2111 = !DILocation(line: 716, column: 6, scope: !2110)
!2112 = !DILocation(line: 716, column: 30, scope: !2110)
!2113 = !DILocation(line: 716, column: 6, scope: !2017)
!2114 = !DILocation(line: 717, column: 3, scope: !2110)
!2115 = !DILocation(line: 717, column: 3, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 717, column: 3)
!2117 = !DILocation(line: 726, column: 23, scope: !2017)
!2118 = !DILocation(line: 726, column: 35, scope: !2017)
!2119 = !DILocation(line: 726, column: 42, scope: !2017)
!2120 = !DILocation(line: 726, column: 21, scope: !2017)
!2121 = !DILocation(line: 729, column: 9, scope: !2017)
!2122 = !DILocation(line: 729, column: 23, scope: !2017)
!2123 = !DILocation(line: 729, column: 21, scope: !2017)
!2124 = !DILocation(line: 729, column: 39, scope: !2017)
!2125 = !DILocation(line: 729, column: 37, scope: !2017)
!2126 = !DILocation(line: 729, column: 2, scope: !2017)
!2127 = !DILocation(line: 730, column: 1, scope: !2017)
!2128 = distinct !DISubprogram(name: "cpuid", scope: !2129, file: !2129, line: 72, type: !2130, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2132)
!2129 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!2130 = !DISubroutineType(types: !2131)
!2131 = !{null, !7, !101, !101, !101, !101}
!2132 = !{!2133, !2134, !2135, !2136, !2137}
!2133 = !DILocalVariable(name: "op", arg: 1, scope: !2128, file: !2129, line: 72, type: !7)
!2134 = !DILocalVariable(name: "eax", arg: 2, scope: !2128, file: !2129, line: 73, type: !101)
!2135 = !DILocalVariable(name: "ebx", arg: 3, scope: !2128, file: !2129, line: 73, type: !101)
!2136 = !DILocalVariable(name: "ecx", arg: 4, scope: !2128, file: !2129, line: 74, type: !101)
!2137 = !DILocalVariable(name: "edx", arg: 5, scope: !2128, file: !2129, line: 74, type: !101)
!2138 = !DILocation(line: 72, column: 39, scope: !2128)
!2139 = !DILocation(line: 73, column: 19, scope: !2128)
!2140 = !DILocation(line: 73, column: 38, scope: !2128)
!2141 = !DILocation(line: 74, column: 19, scope: !2128)
!2142 = !DILocation(line: 74, column: 38, scope: !2128)
!2143 = !DILocation(line: 76, column: 9, scope: !2128)
!2144 = !DILocation(line: 76, column: 3, scope: !2128)
!2145 = !DILocation(line: 76, column: 7, scope: !2128)
!2146 = !DILocation(line: 77, column: 3, scope: !2128)
!2147 = !DILocation(line: 77, column: 7, scope: !2128)
!2148 = !DILocation(line: 78, column: 10, scope: !2128)
!2149 = !DILocation(line: 78, column: 15, scope: !2128)
!2150 = !DILocation(line: 78, column: 20, scope: !2128)
!2151 = !DILocation(line: 78, column: 25, scope: !2128)
!2152 = !DILocation(line: 78, column: 2, scope: !2128)
!2153 = !DILocation(line: 79, column: 1, scope: !2128)
!2154 = distinct !DISubprogram(name: "set_bit", scope: !2155, file: !2155, line: 26, type: !2156, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2160)
!2155 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!2156 = !DISubroutineType(types: !2157)
!2157 = !{null, !212, !2158}
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !102)
!2160 = !{!2161, !2162}
!2161 = !DILocalVariable(name: "nr", arg: 1, scope: !2154, file: !2155, line: 26, type: !212)
!2162 = !DILocalVariable(name: "addr", arg: 2, scope: !2154, file: !2155, line: 26, type: !2158)
!2163 = !DILocation(line: 26, column: 42, scope: !2154)
!2164 = !DILocation(line: 26, column: 70, scope: !2154)
!2165 = !DILocation(line: 28, column: 26, scope: !2154)
!2166 = !DILocation(line: 28, column: 33, scope: !2154)
!2167 = !DILocation(line: 28, column: 31, scope: !2154)
!2168 = !DILocation(line: 28, column: 2, scope: !2154)
!2169 = !DILocation(line: 29, column: 15, scope: !2154)
!2170 = !DILocation(line: 29, column: 19, scope: !2154)
!2171 = !DILocation(line: 29, column: 2, scope: !2154)
!2172 = !DILocation(line: 30, column: 1, scope: !2154)
!2173 = distinct !DISubprogram(name: "native_calibrate_cpu_early", scope: !3, file: !3, line: 905, type: !2018, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2174)
!2174 = !{!2175, !2176, !2177, !2183, !2184, !2188}
!2175 = !DILocalVariable(name: "flags", scope: !2173, file: !3, line: 907, type: !102)
!2176 = !DILocalVariable(name: "fast_calibrate", scope: !2173, file: !3, line: 907, type: !102)
!2177 = !DILocalVariable(name: "__dummy", scope: !2178, file: !3, line: 912, type: !102)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 912, column: 3)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 912, column: 3)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 912, column: 3)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 911, column: 23)
!2182 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 911, column: 6)
!2183 = !DILocalVariable(name: "__dummy2", scope: !2178, file: !3, line: 912, type: !102)
!2184 = !DILocalVariable(name: "__dummy", scope: !2185, file: !3, line: 914, type: !102)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 914, column: 3)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 914, column: 3)
!2187 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 914, column: 3)
!2188 = !DILocalVariable(name: "__dummy2", scope: !2185, file: !3, line: 914, type: !102)
!2189 = !DILocation(line: 907, column: 2, scope: !2173)
!2190 = !DILocation(line: 907, column: 16, scope: !2173)
!2191 = !DILocation(line: 907, column: 23, scope: !2173)
!2192 = !DILocation(line: 907, column: 40, scope: !2173)
!2193 = !DILocation(line: 909, column: 7, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 909, column: 6)
!2195 = !DILocation(line: 909, column: 6, scope: !2173)
!2196 = !DILocation(line: 910, column: 20, scope: !2194)
!2197 = !DILocation(line: 910, column: 18, scope: !2194)
!2198 = !DILocation(line: 910, column: 3, scope: !2194)
!2199 = !DILocation(line: 911, column: 7, scope: !2182)
!2200 = !DILocation(line: 911, column: 6, scope: !2173)
!2201 = !DILocation(line: 912, column: 3, scope: !2181)
!2202 = !DILocation(line: 912, column: 3, scope: !2180)
!2203 = !DILocation(line: 912, column: 3, scope: !2178)
!2204 = !DILocation(line: 912, column: 3, scope: !2179)
!2205 = !DILocation(line: 913, column: 20, scope: !2181)
!2206 = !DILocation(line: 913, column: 18, scope: !2181)
!2207 = !DILocation(line: 914, column: 3, scope: !2181)
!2208 = !DILocation(line: 914, column: 3, scope: !2187)
!2209 = !DILocation(line: 914, column: 3, scope: !2185)
!2210 = !DILocation(line: 914, column: 3, scope: !2186)
!2211 = !DILocation(line: 914, column: 3, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 914, column: 3)
!2213 = !DILocation(line: 915, column: 2, scope: !2181)
!2214 = !DILocation(line: 916, column: 9, scope: !2173)
!2215 = !DILocation(line: 917, column: 1, scope: !2173)
!2216 = !DILocation(line: 916, column: 2, scope: !2173)
!2217 = distinct !DISubprogram(name: "cpu_khz_from_cpuid", scope: !3, file: !3, line: 732, type: !2018, scopeLine: 733, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2218)
!2218 = !{!2219, !2220, !2221, !2222}
!2219 = !DILocalVariable(name: "eax_base_mhz", scope: !2217, file: !3, line: 734, type: !7)
!2220 = !DILocalVariable(name: "ebx_max_mhz", scope: !2217, file: !3, line: 734, type: !7)
!2221 = !DILocalVariable(name: "ecx_bus_mhz", scope: !2217, file: !3, line: 734, type: !7)
!2222 = !DILocalVariable(name: "edx", scope: !2217, file: !3, line: 734, type: !7)
!2223 = !DILocation(line: 734, column: 2, scope: !2217)
!2224 = !DILocation(line: 734, column: 15, scope: !2217)
!2225 = !DILocation(line: 734, column: 29, scope: !2217)
!2226 = !DILocation(line: 734, column: 42, scope: !2217)
!2227 = !DILocation(line: 734, column: 55, scope: !2217)
!2228 = !DILocation(line: 736, column: 20, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 736, column: 6)
!2230 = !DILocation(line: 736, column: 6, scope: !2229)
!2231 = !DILocation(line: 736, column: 31, scope: !2229)
!2232 = !DILocation(line: 736, column: 6, scope: !2217)
!2233 = !DILocation(line: 737, column: 3, scope: !2229)
!2234 = !DILocation(line: 739, column: 20, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 739, column: 6)
!2236 = !DILocation(line: 739, column: 32, scope: !2235)
!2237 = !DILocation(line: 739, column: 6, scope: !2217)
!2238 = !DILocation(line: 740, column: 3, scope: !2235)
!2239 = !DILocation(line: 742, column: 49, scope: !2217)
!2240 = !DILocation(line: 742, column: 43, scope: !2217)
!2241 = !DILocation(line: 742, column: 29, scope: !2217)
!2242 = !DILocation(line: 742, column: 15, scope: !2217)
!2243 = !DILocation(line: 744, column: 2, scope: !2217)
!2244 = !DILocation(line: 746, column: 9, scope: !2217)
!2245 = !DILocation(line: 746, column: 22, scope: !2217)
!2246 = !DILocation(line: 746, column: 2, scope: !2217)
!2247 = !DILocation(line: 747, column: 1, scope: !2217)
!2248 = !DISubprogram(name: "cpu_khz_from_msr", scope: !2249, file: !2249, line: 68, type: !2018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2249 = !DIFile(filename: "./arch/x86/include/asm/tsc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c263a7d672afe42de3ea9a5e4b53aa46")
!2250 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !2251, file: !2251, line: 101, type: !2018, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2252)
!2251 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!2252 = !{!2253}
!2253 = !DILocalVariable(name: "flags", scope: !2250, file: !2251, line: 103, type: !102)
!2254 = !DILocation(line: 103, column: 2, scope: !2250)
!2255 = !DILocation(line: 103, column: 16, scope: !2250)
!2256 = !DILocation(line: 103, column: 24, scope: !2250)
!2257 = !DILocation(line: 104, column: 2, scope: !2250)
!2258 = !DILocation(line: 105, column: 9, scope: !2250)
!2259 = !DILocation(line: 106, column: 1, scope: !2250)
!2260 = !DILocation(line: 105, column: 2, scope: !2250)
!2261 = distinct !DISubprogram(name: "quick_pit_calibrate", scope: !3, file: !3, line: 563, type: !2018, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2262)
!2262 = !{!2263, !2264, !2265, !2266, !2267, !2268, !2269, !2272}
!2263 = !DILocalVariable(name: "i", scope: !2261, file: !3, line: 565, type: !125)
!2264 = !DILocalVariable(name: "tsc", scope: !2261, file: !3, line: 566, type: !104)
!2265 = !DILocalVariable(name: "delta", scope: !2261, file: !3, line: 566, type: !104)
!2266 = !DILocalVariable(name: "d1", scope: !2261, file: !3, line: 567, type: !102)
!2267 = !DILocalVariable(name: "d2", scope: !2261, file: !3, line: 567, type: !102)
!2268 = !DILabel(scope: !2261, name: "success", file: !3, line: 634)
!2269 = !DILocalVariable(name: "__base", scope: !2270, file: !3, line: 649, type: !2271)
!2270 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 649, column: 2)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !127, line: 110, baseType: !110)
!2272 = !DILocalVariable(name: "__rem", scope: !2270, file: !3, line: 649, type: !2271)
!2273 = !DILocation(line: 565, column: 2, scope: !2261)
!2274 = !DILocation(line: 565, column: 6, scope: !2261)
!2275 = !DILocation(line: 566, column: 2, scope: !2261)
!2276 = !DILocation(line: 566, column: 6, scope: !2261)
!2277 = !DILocation(line: 566, column: 11, scope: !2261)
!2278 = !DILocation(line: 567, column: 2, scope: !2261)
!2279 = !DILocation(line: 567, column: 16, scope: !2261)
!2280 = !DILocation(line: 567, column: 20, scope: !2261)
!2281 = !DILocation(line: 569, column: 7, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 569, column: 6)
!2283 = !DILocation(line: 569, column: 6, scope: !2261)
!2284 = !DILocation(line: 570, column: 3, scope: !2282)
!2285 = !DILocation(line: 573, column: 8, scope: !2261)
!2286 = !DILocation(line: 573, column: 18, scope: !2261)
!2287 = !DILocation(line: 573, column: 27, scope: !2261)
!2288 = !DILocation(line: 573, column: 7, scope: !2261)
!2289 = !DILocation(line: 573, column: 2, scope: !2261)
!2290 = !DILocation(line: 584, column: 2, scope: !2261)
!2291 = !DILocation(line: 587, column: 2, scope: !2261)
!2292 = !DILocation(line: 588, column: 2, scope: !2261)
!2293 = !DILocation(line: 596, column: 2, scope: !2261)
!2294 = !DILocation(line: 598, column: 6, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 598, column: 6)
!2296 = !DILocation(line: 598, column: 6, scope: !2261)
!2297 = !DILocation(line: 599, column: 10, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 599, column: 3)
!2299 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 598, column: 39)
!2300 = !DILocation(line: 599, column: 8, scope: !2298)
!2301 = !DILocation(line: 599, column: 15, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 599, column: 3)
!2303 = !DILocation(line: 599, column: 17, scope: !2302)
!2304 = !DILocation(line: 599, column: 3, scope: !2298)
!2305 = !DILocation(line: 600, column: 29, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 600, column: 8)
!2307 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 599, column: 51)
!2308 = !DILocation(line: 600, column: 28, scope: !2306)
!2309 = !DILocation(line: 600, column: 24, scope: !2306)
!2310 = !DILocation(line: 600, column: 9, scope: !2306)
!2311 = !DILocation(line: 600, column: 8, scope: !2307)
!2312 = !DILocation(line: 601, column: 5, scope: !2306)
!2313 = !DILocation(line: 603, column: 13, scope: !2307)
!2314 = !DILocation(line: 603, column: 10, scope: !2307)
!2315 = !DILocation(line: 609, column: 8, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 609, column: 8)
!2317 = !DILocation(line: 609, column: 10, scope: !2316)
!2318 = !DILocation(line: 609, column: 15, scope: !2316)
!2319 = !DILocation(line: 610, column: 8, scope: !2316)
!2320 = !DILocation(line: 610, column: 13, scope: !2316)
!2321 = !DILocation(line: 610, column: 11, scope: !2316)
!2322 = !DILocation(line: 610, column: 20, scope: !2316)
!2323 = !DILocation(line: 610, column: 26, scope: !2316)
!2324 = !DILocation(line: 610, column: 54, scope: !2316)
!2325 = !DILocation(line: 610, column: 16, scope: !2316)
!2326 = !DILocation(line: 609, column: 8, scope: !2307)
!2327 = !DILocation(line: 611, column: 5, scope: !2316)
!2328 = !DILocation(line: 616, column: 8, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 616, column: 8)
!2330 = !DILocation(line: 616, column: 11, scope: !2329)
!2331 = !DILocation(line: 616, column: 10, scope: !2329)
!2332 = !DILocation(line: 616, column: 17, scope: !2329)
!2333 = !DILocation(line: 616, column: 23, scope: !2329)
!2334 = !DILocation(line: 616, column: 14, scope: !2329)
!2335 = !DILocation(line: 616, column: 8, scope: !2307)
!2336 = !DILocation(line: 617, column: 5, scope: !2329)
!2337 = !DILocation(line: 626, column: 31, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 626, column: 8)
!2339 = !DILocation(line: 626, column: 29, scope: !2338)
!2340 = !DILocation(line: 626, column: 24, scope: !2338)
!2341 = !DILocation(line: 626, column: 9, scope: !2338)
!2342 = !DILocation(line: 626, column: 8, scope: !2307)
!2343 = !DILocation(line: 627, column: 5, scope: !2338)
!2344 = !DILocation(line: 628, column: 4, scope: !2307)
!2345 = !DILocation(line: 599, column: 47, scope: !2302)
!2346 = !DILocation(line: 599, column: 3, scope: !2302)
!2347 = distinct !{!2347, !2304, !2348, !1721, !1722}
!2348 = !DILocation(line: 629, column: 3, scope: !2298)
!2349 = !DILocation(line: 630, column: 2, scope: !2299)
!2350 = !DILocation(line: 631, column: 2, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 631, column: 2)
!2352 = !DILocation(line: 631, column: 2, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 631, column: 2)
!2354 = !DILocation(line: 632, column: 2, scope: !2261)
!2355 = !DILocation(line: 634, column: 1, scope: !2261)
!2356 = !DILocation(line: 648, column: 8, scope: !2261)
!2357 = !DILocation(line: 649, column: 2, scope: !2270)
!2358 = !DILocation(line: 649, column: 2, scope: !2261)
!2359 = !DILocation(line: 650, column: 2, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 650, column: 2)
!2361 = !DILocation(line: 650, column: 2, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 650, column: 2)
!2363 = !DILocation(line: 651, column: 9, scope: !2261)
!2364 = !DILocation(line: 651, column: 2, scope: !2261)
!2365 = !DILocation(line: 652, column: 1, scope: !2261)
!2366 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !2251, file: !2251, line: 132, type: !2367, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2369)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{null, !102}
!2369 = !{!2370}
!2370 = !DILocalVariable(name: "flags", arg: 1, scope: !2366, file: !2251, line: 132, type: !102)
!2371 = !DILocation(line: 132, column: 66, scope: !2366)
!2372 = !DILocation(line: 134, column: 32, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2366, file: !2251, line: 134, column: 6)
!2374 = !DILocation(line: 134, column: 7, scope: !2373)
!2375 = !DILocation(line: 134, column: 6, scope: !2366)
!2376 = !DILocation(line: 135, column: 3, scope: !2373)
!2377 = !DILocation(line: 136, column: 1, scope: !2366)
!2378 = distinct !DISubprogram(name: "recalibrate_cpu_khz", scope: !3, file: !3, line: 933, type: !265, scopeLine: 934, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2379 = !DILocation(line: 950, column: 1, scope: !2378)
!2380 = distinct !DISubprogram(name: "tsc_save_sched_clock_state", scope: !3, file: !3, line: 956, type: !265, scopeLine: 957, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2381 = !DILocation(line: 958, column: 7, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 958, column: 6)
!2383 = !DILocation(line: 958, column: 6, scope: !2380)
!2384 = !DILocation(line: 959, column: 3, scope: !2382)
!2385 = !DILocation(line: 961, column: 19, scope: !2380)
!2386 = !DILocation(line: 961, column: 17, scope: !2380)
!2387 = !DILocation(line: 962, column: 1, scope: !2380)
!2388 = !DISubprogram(name: "sched_clock_stable", scope: !2389, file: !2389, line: 67, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2389 = !DIFile(filename: "./include/linux/sched/clock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "820797187d326b72c061635bf384b4aa")
!2390 = distinct !DISubprogram(name: "tsc_restore_sched_clock_state", scope: !3, file: !3, line: 972, type: !265, scopeLine: 973, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2391)
!2391 = !{!2392, !2393, !2394, !2395, !2399, !2400, !2403, !2405, !2408, !2410, !2416, !2418, !2421, !2423, !2427}
!2392 = !DILocalVariable(name: "offset", scope: !2390, file: !3, line: 974, type: !108)
!2393 = !DILocalVariable(name: "flags", scope: !2390, file: !3, line: 975, type: !102)
!2394 = !DILocalVariable(name: "cpu", scope: !2390, file: !3, line: 976, type: !125)
!2395 = !DILocalVariable(name: "__dummy", scope: !2396, file: !3, line: 981, type: !102)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 981, column: 2)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 981, column: 2)
!2398 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 981, column: 2)
!2399 = !DILocalVariable(name: "__dummy2", scope: !2396, file: !3, line: 981, type: !102)
!2400 = !DILocalVariable(name: "__vpp_verify", scope: !2401, file: !3, line: 989, type: !724)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 989, column: 2)
!2402 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 989, column: 2)
!2403 = !DILocalVariable(name: "pto_val__", scope: !2404, file: !3, line: 989, type: !104)
!2404 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 989, column: 2)
!2405 = !DILocalVariable(name: "__vpp_verify", scope: !2406, file: !3, line: 990, type: !724)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 990, column: 2)
!2407 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 990, column: 2)
!2408 = !DILocalVariable(name: "pto_val__", scope: !2409, file: !3, line: 990, type: !104)
!2409 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 990, column: 2)
!2410 = !DILocalVariable(name: "__vpp_verify", scope: !2411, file: !3, line: 995, type: !724)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 995, column: 3)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 995, column: 3)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 994, column: 29)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 994, column: 2)
!2415 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 994, column: 2)
!2416 = !DILocalVariable(name: "__ptr", scope: !2417, file: !3, line: 995, type: !102)
!2417 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 995, column: 3)
!2418 = !DILocalVariable(name: "__vpp_verify", scope: !2419, file: !3, line: 996, type: !724)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 996, column: 3)
!2420 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 996, column: 3)
!2421 = !DILocalVariable(name: "__ptr", scope: !2422, file: !3, line: 996, type: !102)
!2422 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 996, column: 3)
!2423 = !DILocalVariable(name: "__dummy", scope: !2424, file: !3, line: 999, type: !102)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 999, column: 2)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 999, column: 2)
!2426 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 999, column: 2)
!2427 = !DILocalVariable(name: "__dummy2", scope: !2424, file: !3, line: 999, type: !102)
!2428 = !DILocation(line: 974, column: 2, scope: !2390)
!2429 = !DILocation(line: 974, column: 21, scope: !2390)
!2430 = !DILocation(line: 975, column: 2, scope: !2390)
!2431 = !DILocation(line: 975, column: 16, scope: !2390)
!2432 = !DILocation(line: 976, column: 2, scope: !2390)
!2433 = !DILocation(line: 976, column: 6, scope: !2390)
!2434 = !DILocation(line: 978, column: 7, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 978, column: 6)
!2436 = !DILocation(line: 978, column: 6, scope: !2390)
!2437 = !DILocation(line: 979, column: 3, scope: !2435)
!2438 = !DILocation(line: 981, column: 2, scope: !2390)
!2439 = !DILocation(line: 981, column: 2, scope: !2398)
!2440 = !DILocation(line: 981, column: 2, scope: !2396)
!2441 = !DILocation(line: 981, column: 2, scope: !2397)
!2442 = !DILocation(line: 989, column: 2, scope: !2390)
!2443 = !DILocation(line: 989, column: 2, scope: !2402)
!2444 = !DILocation(line: 989, column: 2, scope: !2401)
!2445 = !DILocation(line: 989, column: 2, scope: !2404)
!2446 = !{i64 2154768540}
!2447 = !DILocation(line: 990, column: 2, scope: !2390)
!2448 = !DILocation(line: 990, column: 2, scope: !2407)
!2449 = !DILocation(line: 990, column: 2, scope: !2406)
!2450 = !DILocation(line: 990, column: 2, scope: !2409)
!2451 = !{i64 2154772816}
!2452 = !DILocation(line: 992, column: 11, scope: !2390)
!2453 = !DILocation(line: 992, column: 28, scope: !2390)
!2454 = !DILocation(line: 992, column: 26, scope: !2390)
!2455 = !DILocation(line: 992, column: 9, scope: !2390)
!2456 = !DILocation(line: 994, column: 2, scope: !2415)
!2457 = !DILocation(line: 994, column: 2, scope: !2414)
!2458 = !DILocation(line: 995, column: 48, scope: !2413)
!2459 = !DILocation(line: 995, column: 3, scope: !2412)
!2460 = !DILocation(line: 995, column: 3, scope: !2411)
!2461 = !DILocation(line: 995, column: 3, scope: !2417)
!2462 = !DILocation(line: 995, column: 46, scope: !2413)
!2463 = !DILocation(line: 996, column: 48, scope: !2413)
!2464 = !DILocation(line: 996, column: 3, scope: !2420)
!2465 = !DILocation(line: 996, column: 3, scope: !2419)
!2466 = !DILocation(line: 996, column: 3, scope: !2422)
!2467 = !DILocation(line: 996, column: 46, scope: !2413)
!2468 = !DILocation(line: 997, column: 2, scope: !2413)
!2469 = distinct !{!2469, !2456, !2470, !1721, !1722}
!2470 = !DILocation(line: 997, column: 2, scope: !2415)
!2471 = !DILocation(line: 999, column: 2, scope: !2390)
!2472 = !DILocation(line: 999, column: 2, scope: !2426)
!2473 = !DILocation(line: 999, column: 2, scope: !2424)
!2474 = !DILocation(line: 999, column: 2, scope: !2425)
!2475 = !DILocation(line: 999, column: 2, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 999, column: 2)
!2477 = !DILocation(line: 1000, column: 1, scope: !2390)
!2478 = distinct !DISubprogram(name: "find_next_bit", scope: !2479, file: !2479, line: 54, type: !2480, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2484)
!2479 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!102, !2482, !102, !102}
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!2484 = !{!2485, !2486, !2487, !2488}
!2485 = !DILocalVariable(name: "addr", arg: 1, scope: !2478, file: !2479, line: 54, type: !2482)
!2486 = !DILocalVariable(name: "size", arg: 2, scope: !2478, file: !2479, line: 54, type: !102)
!2487 = !DILocalVariable(name: "offset", arg: 3, scope: !2478, file: !2479, line: 55, type: !102)
!2488 = !DILocalVariable(name: "val", scope: !2489, file: !2479, line: 58, type: !102)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !2479, line: 57, column: 31)
!2490 = distinct !DILexicalBlock(scope: !2478, file: !2479, line: 57, column: 6)
!2491 = !DILocation(line: 54, column: 50, scope: !2478)
!2492 = !DILocation(line: 54, column: 70, scope: !2478)
!2493 = !DILocation(line: 55, column: 22, scope: !2478)
!2494 = !DILocation(line: 57, column: 6, scope: !2490)
!2495 = !DILocation(line: 57, column: 6, scope: !2478)
!2496 = !DILocation(line: 58, column: 3, scope: !2489)
!2497 = !DILocation(line: 58, column: 17, scope: !2489)
!2498 = !DILocation(line: 60, column: 7, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2489, file: !2479, line: 60, column: 7)
!2500 = !DILocation(line: 60, column: 7, scope: !2489)
!2501 = !DILocation(line: 61, column: 11, scope: !2499)
!2502 = !DILocation(line: 61, column: 4, scope: !2499)
!2503 = !DILocation(line: 63, column: 10, scope: !2489)
!2504 = !DILocation(line: 63, column: 9, scope: !2489)
!2505 = !DILocation(line: 63, column: 17, scope: !2489)
!2506 = !DILocation(line: 63, column: 15, scope: !2489)
!2507 = !DILocation(line: 63, column: 7, scope: !2489)
!2508 = !DILocation(line: 64, column: 10, scope: !2489)
!2509 = !DILocation(line: 64, column: 16, scope: !2489)
!2510 = !DILocation(line: 64, column: 29, scope: !2489)
!2511 = !DILocation(line: 64, column: 3, scope: !2489)
!2512 = !DILocation(line: 65, column: 2, scope: !2490)
!2513 = !DILocation(line: 67, column: 24, scope: !2478)
!2514 = !DILocation(line: 67, column: 30, scope: !2478)
!2515 = !DILocation(line: 67, column: 36, scope: !2478)
!2516 = !DILocation(line: 67, column: 9, scope: !2478)
!2517 = !DILocation(line: 67, column: 2, scope: !2478)
!2518 = !DILocation(line: 68, column: 1, scope: !2478)
!2519 = distinct !DISubprogram(name: "__initstub__kmod_tsc__297_1064_cpufreq_register_tsc_scaling1", scope: !3, file: !3, line: 1064, type: !1141, scopeLine: 1064, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2520 = !DILocation(line: 1064, column: 1, scope: !2519)
!2521 = distinct !DISubprogram(name: "cpufreq_register_tsc_scaling", scope: !3, file: !3, line: 1053, type: !1141, scopeLine: 1054, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2522 = !DILocation(line: 1055, column: 6, scope: !2521)
!2523 = !DILocation(line: 1055, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 1055, column: 6)
!2525 = !DILocation(line: 1056, column: 3, scope: !2524)
!2526 = !DILocation(line: 1057, column: 6, scope: !2521)
!2527 = !DILocation(line: 1057, column: 6, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 1057, column: 6)
!2529 = !DILocation(line: 1058, column: 3, scope: !2528)
!2530 = !DILocation(line: 1059, column: 2, scope: !2521)
!2531 = !DILocation(line: 1061, column: 2, scope: !2521)
!2532 = !DILocation(line: 1062, column: 1, scope: !2521)
!2533 = !DISubprogram(name: "clear_sched_clock_stable", scope: !2389, file: !2389, line: 68, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2534 = distinct !DISubprogram(name: "disable_sched_clock_irqtime", scope: !2389, file: !2389, line: 111, type: !265, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2535 = !DILocation(line: 111, column: 55, scope: !2534)
!2536 = !DISubprogram(name: "_printk", scope: !2537, file: !2537, line: 153, type: !2538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2537 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!125, !243, null}
!2540 = !DISubprogram(name: "clocksource_mark_unstable", scope: !331, file: !331, line: 216, type: !361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2541 = distinct !DISubprogram(name: "tsc_clocksource_watchdog_disabled", scope: !3, file: !3, line: 1224, type: !846, scopeLine: 1225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2542 = !DILocation(line: 1226, column: 27, scope: !2541)
!2543 = !DILocation(line: 1226, column: 33, scope: !2541)
!2544 = !DILocation(line: 1226, column: 61, scope: !2541)
!2545 = !DILocation(line: 1227, column: 9, scope: !2541)
!2546 = !DILocation(line: 1227, column: 25, scope: !2541)
!2547 = !DILocation(line: 1227, column: 29, scope: !2541)
!2548 = !DILocation(line: 1227, column: 28, scope: !2541)
!2549 = !DILocation(line: 0, scope: !2541)
!2550 = !DILocation(line: 1226, column: 2, scope: !2541)
!2551 = distinct !DISubprogram(name: "unsynchronized_tsc", scope: !3, file: !3, line: 1269, type: !1141, scopeLine: 1270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2552 = !DILocation(line: 1271, column: 37, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 1271, column: 6)
!2554 = !DILocation(line: 1271, column: 7, scope: !2553)
!2555 = !DILocation(line: 1271, column: 40, scope: !2553)
!2556 = !DILocation(line: 1271, column: 6, scope: !2551)
!2557 = !DILocation(line: 1272, column: 3, scope: !2553)
!2558 = !DILocation(line: 1275, column: 6, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 1275, column: 6)
!2560 = !DILocation(line: 1275, column: 6, scope: !2551)
!2561 = !DILocation(line: 1276, column: 3, scope: !2559)
!2562 = !DILocation(line: 1279, column: 6, scope: !2551)
!2563 = !DILocation(line: 1279, column: 6, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 1279, column: 6)
!2565 = !DILocation(line: 1280, column: 3, scope: !2564)
!2566 = !DILocation(line: 1282, column: 6, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 1282, column: 6)
!2568 = !DILocation(line: 1282, column: 6, scope: !2551)
!2569 = !DILocation(line: 1283, column: 3, scope: !2567)
!2570 = !DILocation(line: 1288, column: 20, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 1288, column: 6)
!2572 = !DILocation(line: 1288, column: 6, scope: !2571)
!2573 = !DILocation(line: 1288, column: 31, scope: !2571)
!2574 = !DILocation(line: 1288, column: 6, scope: !2551)
!2575 = !DILocation(line: 1290, column: 7, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 1290, column: 7)
!2577 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 1288, column: 52)
!2578 = !DILocation(line: 1290, column: 27, scope: !2576)
!2579 = !DILocation(line: 1290, column: 7, scope: !2577)
!2580 = !DILocation(line: 1291, column: 4, scope: !2576)
!2581 = !DILocation(line: 1292, column: 2, scope: !2577)
!2582 = !DILocation(line: 1294, column: 2, scope: !2551)
!2583 = !DILocation(line: 1295, column: 1, scope: !2551)
!2584 = distinct !DISubprogram(name: "arch_test_bit", scope: !2585, file: !2585, line: 237, type: !2586, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2590)
!2585 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!198, !102, !2588}
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2159)
!2590 = !{!2591, !2592}
!2591 = !DILocalVariable(name: "nr", arg: 1, scope: !2584, file: !2585, line: 237, type: !102)
!2592 = !DILocalVariable(name: "addr", arg: 2, scope: !2584, file: !2585, line: 237, type: !2588)
!2593 = !DILocation(line: 237, column: 29, scope: !2584)
!2594 = !DILocation(line: 237, column: 63, scope: !2584)
!2595 = !DILocation(line: 239, column: 30, scope: !2584)
!2596 = !DILocation(line: 239, column: 9, scope: !2584)
!2597 = !DILocation(line: 239, column: 54, scope: !2584)
!2598 = !DILocation(line: 239, column: 58, scope: !2584)
!2599 = !DILocation(line: 239, column: 36, scope: !2584)
!2600 = !DILocation(line: 240, column: 26, scope: !2584)
!2601 = !DILocation(line: 240, column: 30, scope: !2584)
!2602 = !DILocation(line: 240, column: 8, scope: !2584)
!2603 = !DILocation(line: 239, column: 2, scope: !2584)
!2604 = !DISubprogram(name: "apic_is_clustered_box", scope: !2605, file: !2605, line: 155, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2605 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!2606 = distinct !DISubprogram(name: "cpumask_weight", scope: !119, file: !119, line: 690, type: !2607, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!7, !116}
!2609 = !{!2610}
!2610 = !DILocalVariable(name: "srcp", arg: 1, scope: !2606, file: !119, line: 690, type: !116)
!2611 = !DILocation(line: 690, column: 65, scope: !2606)
!2612 = !DILocation(line: 692, column: 23, scope: !2606)
!2613 = !DILocation(line: 692, column: 9, scope: !2606)
!2614 = !DILocation(line: 692, column: 2, scope: !2606)
!2615 = distinct !DISubprogram(name: "convert_art_to_tsc", scope: !3, file: !3, line: 1300, type: !2616, scopeLine: 1301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2623)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!2618, !104}
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "system_counterval_t", file: !2619, line: 276, size: 128, elements: !2620)
!2619 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!2620 = !{!2621, !2622}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !2618, file: !2619, line: 277, baseType: !104, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2618, file: !2619, line: 278, baseType: !329, size: 64, offset: 64)
!2623 = !{!2624, !2625, !2626, !2627, !2628, !2630, !2631, !2633}
!2624 = !DILocalVariable(name: "art", arg: 1, scope: !2615, file: !3, line: 1300, type: !104)
!2625 = !DILocalVariable(name: "tmp", scope: !2615, file: !3, line: 1302, type: !104)
!2626 = !DILocalVariable(name: "res", scope: !2615, file: !3, line: 1302, type: !104)
!2627 = !DILocalVariable(name: "rem", scope: !2615, file: !3, line: 1302, type: !104)
!2628 = !DILocalVariable(name: "__base", scope: !2629, file: !3, line: 1304, type: !2271)
!2629 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 1304, column: 8)
!2630 = !DILocalVariable(name: "__rem", scope: !2629, file: !3, line: 1304, type: !2271)
!2631 = !DILocalVariable(name: "__base", scope: !2632, file: !3, line: 1309, type: !2271)
!2632 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 1309, column: 2)
!2633 = !DILocalVariable(name: "__rem", scope: !2632, file: !3, line: 1309, type: !2271)
!2634 = !DILocation(line: 1300, column: 51, scope: !2615)
!2635 = !DILocation(line: 1302, column: 2, scope: !2615)
!2636 = !DILocation(line: 1302, column: 6, scope: !2615)
!2637 = !DILocation(line: 1302, column: 11, scope: !2615)
!2638 = !DILocation(line: 1302, column: 16, scope: !2615)
!2639 = !DILocation(line: 1304, column: 8, scope: !2629)
!2640 = !DILocation(line: 1304, column: 8, scope: !2615)
!2641 = !DILocation(line: 1304, column: 6, scope: !2615)
!2642 = !DILocation(line: 1306, column: 8, scope: !2615)
!2643 = !DILocation(line: 1306, column: 14, scope: !2615)
!2644 = !DILocation(line: 1306, column: 12, scope: !2615)
!2645 = !DILocation(line: 1306, column: 6, scope: !2615)
!2646 = !DILocation(line: 1307, column: 8, scope: !2615)
!2647 = !DILocation(line: 1307, column: 14, scope: !2615)
!2648 = !DILocation(line: 1307, column: 12, scope: !2615)
!2649 = !DILocation(line: 1307, column: 6, scope: !2615)
!2650 = !DILocation(line: 1309, column: 2, scope: !2632)
!2651 = !DILocation(line: 1309, column: 2, scope: !2615)
!2652 = !DILocation(line: 1310, column: 9, scope: !2615)
!2653 = !DILocation(line: 1310, column: 15, scope: !2615)
!2654 = !DILocation(line: 1310, column: 13, scope: !2615)
!2655 = !DILocation(line: 1310, column: 6, scope: !2615)
!2656 = !DILocation(line: 1312, column: 38, scope: !2615)
!2657 = !DILocation(line: 1313, column: 14, scope: !2615)
!2658 = !DILocation(line: 1312, column: 45, scope: !2615)
!2659 = !DILocation(line: 1314, column: 1, scope: !2615)
!2660 = distinct !DISubprogram(name: "convert_art_ns_to_tsc", scope: !3, file: !3, line: 1338, type: !2616, scopeLine: 1339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2661)
!2661 = !{!2662, !2663, !2664, !2665, !2666, !2668, !2669, !2671}
!2662 = !DILocalVariable(name: "art_ns", arg: 1, scope: !2660, file: !3, line: 1338, type: !104)
!2663 = !DILocalVariable(name: "tmp", scope: !2660, file: !3, line: 1340, type: !104)
!2664 = !DILocalVariable(name: "res", scope: !2660, file: !3, line: 1340, type: !104)
!2665 = !DILocalVariable(name: "rem", scope: !2660, file: !3, line: 1340, type: !104)
!2666 = !DILocalVariable(name: "__base", scope: !2667, file: !3, line: 1342, type: !2271)
!2667 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1342, column: 8)
!2668 = !DILocalVariable(name: "__rem", scope: !2667, file: !3, line: 1342, type: !2271)
!2669 = !DILocalVariable(name: "__base", scope: !2670, file: !3, line: 1347, type: !2271)
!2670 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1347, column: 2)
!2671 = !DILocalVariable(name: "__rem", scope: !2670, file: !3, line: 1347, type: !2271)
!2672 = !DILocation(line: 1338, column: 54, scope: !2660)
!2673 = !DILocation(line: 1340, column: 2, scope: !2660)
!2674 = !DILocation(line: 1340, column: 6, scope: !2660)
!2675 = !DILocation(line: 1340, column: 11, scope: !2660)
!2676 = !DILocation(line: 1340, column: 16, scope: !2660)
!2677 = !DILocation(line: 1342, column: 8, scope: !2667)
!2678 = !DILocation(line: 1342, column: 8, scope: !2660)
!2679 = !DILocation(line: 1342, column: 6, scope: !2660)
!2680 = !DILocation(line: 1344, column: 8, scope: !2660)
!2681 = !DILocation(line: 1344, column: 17, scope: !2660)
!2682 = !DILocation(line: 1344, column: 15, scope: !2660)
!2683 = !DILocation(line: 1344, column: 6, scope: !2660)
!2684 = !DILocation(line: 1345, column: 8, scope: !2660)
!2685 = !DILocation(line: 1345, column: 14, scope: !2660)
!2686 = !DILocation(line: 1345, column: 12, scope: !2660)
!2687 = !DILocation(line: 1345, column: 6, scope: !2660)
!2688 = !DILocation(line: 1347, column: 2, scope: !2670)
!2689 = !DILocation(line: 1347, column: 2, scope: !2660)
!2690 = !DILocation(line: 1348, column: 9, scope: !2660)
!2691 = !DILocation(line: 1348, column: 6, scope: !2660)
!2692 = !DILocation(line: 1350, column: 38, scope: !2660)
!2693 = !DILocation(line: 1351, column: 22, scope: !2660)
!2694 = !DILocation(line: 1350, column: 46, scope: !2660)
!2695 = !DILocation(line: 1352, column: 1, scope: !2660)
!2696 = distinct !DISubprogram(name: "__initstub__kmod_tsc__302_1499_init_tsc_clocksource6", scope: !3, file: !3, line: 1499, type: !1141, scopeLine: 1499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2697 = !DILocation(line: 1499, column: 1, scope: !2696)
!2698 = distinct !DISubprogram(name: "init_tsc_clocksource", scope: !3, file: !3, line: 1465, type: !1141, scopeLine: 1466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2699 = !DILocation(line: 1467, column: 37, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 1467, column: 6)
!2701 = !DILocation(line: 1467, column: 7, scope: !2700)
!2702 = !DILocation(line: 1467, column: 41, scope: !2700)
!2703 = !DILocation(line: 1467, column: 6, scope: !2698)
!2704 = !DILocation(line: 1468, column: 3, scope: !2700)
!2705 = !DILocation(line: 1470, column: 6, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 1470, column: 6)
!2707 = !DILocation(line: 1470, column: 6, scope: !2698)
!2708 = !DILocation(line: 1471, column: 3, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 1470, column: 20)
!2710 = !DILocation(line: 1472, column: 3, scope: !2709)
!2711 = !DILocation(line: 1475, column: 6, scope: !2698)
!2712 = !DILocation(line: 1475, column: 6, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 1475, column: 6)
!2714 = !DILocation(line: 1476, column: 25, scope: !2713)
!2715 = !DILocation(line: 1476, column: 3, scope: !2713)
!2716 = !DILocation(line: 1482, column: 6, scope: !2698)
!2717 = !DILocation(line: 1482, column: 6, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 1482, column: 6)
!2719 = !DILocation(line: 1483, column: 7, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 1482, column: 48)
!2721 = !DILocation(line: 1483, column: 7, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 1483, column: 7)
!2723 = !DILocation(line: 1484, column: 28, scope: !2722)
!2724 = !DILocation(line: 1484, column: 4, scope: !2722)
!2725 = !DILocation(line: 1485, column: 46, scope: !2720)
!2726 = !DILocation(line: 1485, column: 3, scope: !2720)
!2727 = !DILocation(line: 1486, column: 3, scope: !2720)
!2728 = !DILocation(line: 1488, column: 8, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 1488, column: 7)
!2730 = !DILocation(line: 1488, column: 7, scope: !2720)
!2731 = !DILocation(line: 1489, column: 4, scope: !2729)
!2732 = !DILocation(line: 1490, column: 2, scope: !2720)
!2733 = !DILocation(line: 1492, column: 2, scope: !2698)
!2734 = !DILocation(line: 1493, column: 2, scope: !2698)
!2735 = !DILocation(line: 1494, column: 1, scope: !2698)
!2736 = distinct !DISubprogram(name: "tsc_early_init", scope: !3, file: !3, line: 1562, type: !265, scopeLine: 1563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2737 = !DILocation(line: 1564, column: 6, scope: !2736)
!2738 = !DILocation(line: 1564, column: 7, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1564, column: 6)
!2740 = !DILocation(line: 1565, column: 3, scope: !2739)
!2741 = !DILocation(line: 1567, column: 6, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1567, column: 6)
!2743 = !DILocation(line: 1567, column: 6, scope: !2736)
!2744 = !DILocation(line: 1568, column: 3, scope: !2742)
!2745 = !DILocation(line: 1569, column: 7, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1569, column: 6)
!2747 = !DILocation(line: 1569, column: 6, scope: !2736)
!2748 = !DILocation(line: 1570, column: 3, scope: !2746)
!2749 = !DILocation(line: 1571, column: 2, scope: !2736)
!2750 = !DILocation(line: 1572, column: 1, scope: !2736)
!2751 = distinct !DISubprogram(name: "is_early_uv_system", scope: !2752, file: !2752, line: 36, type: !846, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2752 = !DIFile(filename: "./arch/x86/include/asm/uv/uv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5e58d40ef5631aa3d35cdd3bfd24fd0")
!2753 = !DILocation(line: 36, column: 47, scope: !2751)
!2754 = distinct !DISubprogram(name: "determine_cpu_tsc_frequencies", scope: !3, file: !3, line: 1501, type: !2755, scopeLine: 1502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!198, !198}
!2757 = !{!2758, !2759, !2761, !2764, !2768, !2771}
!2758 = !DILocalVariable(name: "early", arg: 1, scope: !2754, file: !3, line: 1501, type: !198)
!2759 = !DILocalVariable(name: "__ret_warn_on", scope: !2760, file: !3, line: 1504, type: !125)
!2760 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 1504, column: 2)
!2761 = !DILocalVariable(name: "__flags", scope: !2762, file: !3, line: 1504, type: !125)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 1504, column: 2)
!2763 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 1504, column: 2)
!2764 = !DILocalVariable(name: "__ret_warn_on", scope: !2765, file: !3, line: 1514, type: !125)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 1514, column: 3)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 1512, column: 9)
!2767 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 1506, column: 6)
!2768 = !DILocalVariable(name: "__flags", scope: !2769, file: !3, line: 1514, type: !125)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 1514, column: 3)
!2770 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 1514, column: 3)
!2771 = !DILocalVariable(name: "__x", scope: !2772, file: !3, line: 1525, type: !125)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 1525, column: 11)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 1525, column: 11)
!2774 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 1523, column: 6)
!2775 = !DILocation(line: 1501, column: 55, scope: !2754)
!2776 = !DILocation(line: 1504, column: 2, scope: !2760)
!2777 = !DILocation(line: 1504, column: 2, scope: !2763)
!2778 = !DILocation(line: 1504, column: 2, scope: !2762)
!2779 = !DILocation(line: 1504, column: 2, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 1504, column: 2)
!2781 = !DILocation(line: 1504, column: 2, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 1504, column: 2)
!2783 = !{i64 2154915042, i64 2154915071, i64 2154915117, i64 2154915175, i64 2154915229, i64 2154915283, i64 2154915338, i64 2154915369, i64 2154915677, i64 2154915683, i64 2154915730, i64 2154915753, i64 2154915779}
!2784 = !DILocation(line: 1504, column: 2, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 1504, column: 2)
!2786 = !DILocation(line: 1504, column: 2, scope: !2754)
!2787 = !DILocation(line: 1506, column: 6, scope: !2767)
!2788 = !DILocation(line: 1506, column: 6, scope: !2754)
!2789 = !DILocation(line: 1507, column: 26, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 1506, column: 13)
!2791 = !DILocation(line: 1507, column: 13, scope: !2790)
!2792 = !DILocation(line: 1507, column: 11, scope: !2790)
!2793 = !DILocation(line: 1508, column: 7, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 1508, column: 7)
!2795 = !DILocation(line: 1508, column: 7, scope: !2790)
!2796 = !DILocation(line: 1509, column: 14, scope: !2794)
!2797 = !DILocation(line: 1509, column: 12, scope: !2794)
!2798 = !DILocation(line: 1509, column: 4, scope: !2794)
!2799 = !DILocation(line: 1511, column: 27, scope: !2794)
!2800 = !DILocation(line: 1511, column: 14, scope: !2794)
!2801 = !DILocation(line: 1511, column: 12, scope: !2794)
!2802 = !DILocation(line: 1512, column: 2, scope: !2790)
!2803 = !DILocation(line: 1514, column: 3, scope: !2765)
!2804 = !DILocation(line: 1514, column: 3, scope: !2770)
!2805 = !DILocation(line: 1514, column: 3, scope: !2769)
!2806 = !DILocation(line: 1514, column: 3, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1514, column: 3)
!2808 = !DILocation(line: 1514, column: 3, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1514, column: 3)
!2810 = !{i64 2154916578, i64 2154916607, i64 2154916653, i64 2154916711, i64 2154916765, i64 2154916819, i64 2154916874, i64 2154916905, i64 2154917213, i64 2154917219, i64 2154917266, i64 2154917289, i64 2154917315}
!2811 = !DILocation(line: 1514, column: 3, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1514, column: 3)
!2813 = !DILocation(line: 1514, column: 3, scope: !2766)
!2814 = !DILocation(line: 1515, column: 13, scope: !2766)
!2815 = !DILocation(line: 1515, column: 11, scope: !2766)
!2816 = !DILocation(line: 1523, column: 6, scope: !2774)
!2817 = !DILocation(line: 1523, column: 14, scope: !2774)
!2818 = !DILocation(line: 1523, column: 6, scope: !2754)
!2819 = !DILocation(line: 1524, column: 13, scope: !2774)
!2820 = !DILocation(line: 1524, column: 11, scope: !2774)
!2821 = !DILocation(line: 1524, column: 3, scope: !2774)
!2822 = !DILocation(line: 1525, column: 11, scope: !2772)
!2823 = !DILocation(line: 1525, column: 11, scope: !2773)
!2824 = !DILocation(line: 1525, column: 34, scope: !2773)
!2825 = !DILocation(line: 1525, column: 41, scope: !2773)
!2826 = !DILocation(line: 1525, column: 39, scope: !2773)
!2827 = !DILocation(line: 1525, column: 11, scope: !2774)
!2828 = !DILocation(line: 1526, column: 13, scope: !2773)
!2829 = !DILocation(line: 1526, column: 11, scope: !2773)
!2830 = !DILocation(line: 1526, column: 3, scope: !2773)
!2831 = !DILocation(line: 1528, column: 6, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 1528, column: 6)
!2833 = !DILocation(line: 1528, column: 14, scope: !2832)
!2834 = !DILocation(line: 1528, column: 6, scope: !2754)
!2835 = !DILocation(line: 1529, column: 3, scope: !2832)
!2836 = !DILocation(line: 1531, column: 2, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 1531, column: 2)
!2838 = !DILocation(line: 1531, column: 2, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 1531, column: 2)
!2840 = !DILocation(line: 1535, column: 6, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 1535, column: 6)
!2842 = !DILocation(line: 1535, column: 17, scope: !2841)
!2843 = !DILocation(line: 1535, column: 14, scope: !2841)
!2844 = !DILocation(line: 1535, column: 6, scope: !2754)
!2845 = !DILocation(line: 1536, column: 3, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 1536, column: 3)
!2847 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 1535, column: 26)
!2848 = !DILocation(line: 1536, column: 3, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 1536, column: 3)
!2850 = !DILocation(line: 1539, column: 2, scope: !2847)
!2851 = !DILocation(line: 1540, column: 2, scope: !2754)
!2852 = !DILocation(line: 1541, column: 1, scope: !2754)
!2853 = distinct !DISubprogram(name: "tsc_enable_sched_clock", scope: !3, file: !3, line: 1551, type: !265, scopeLine: 1552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2854 = !DILocation(line: 1553, column: 20, scope: !2853)
!2855 = !DILocation(line: 1553, column: 18, scope: !2853)
!2856 = !DILocation(line: 1554, column: 2, scope: !2853)
!2857 = !DILocation(line: 1557, column: 2, scope: !2853)
!2858 = !DILocation(line: 1558, column: 2, scope: !2853)
!2859 = !DILocation(line: 1559, column: 2, scope: !2853)
!2860 = !DILocation(line: 1560, column: 1, scope: !2853)
!2861 = distinct !DISubprogram(name: "tsc_init", scope: !3, file: !3, line: 1574, type: !265, scopeLine: 1575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2862 = !DILocation(line: 1576, column: 6, scope: !2861)
!2863 = !DILocation(line: 1576, column: 7, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 1576, column: 6)
!2865 = !DILocation(line: 1577, column: 3, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 1576, column: 45)
!2867 = !DILocation(line: 1578, column: 3, scope: !2866)
!2868 = !DILocation(line: 1585, column: 19, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 1585, column: 6)
!2870 = !DILocation(line: 1585, column: 33, scope: !2869)
!2871 = !DILocation(line: 1585, column: 6, scope: !2861)
!2872 = !DILocation(line: 1586, column: 30, scope: !2869)
!2873 = !DILocation(line: 1586, column: 3, scope: !2869)
!2874 = !DILocation(line: 1588, column: 7, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 1588, column: 6)
!2876 = !DILocation(line: 1588, column: 6, scope: !2861)
!2877 = !DILocation(line: 1590, column: 8, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !3, line: 1590, column: 7)
!2879 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 1588, column: 16)
!2880 = !DILocation(line: 1590, column: 7, scope: !2879)
!2881 = !DILocation(line: 1591, column: 4, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 1590, column: 46)
!2883 = !DILocation(line: 1592, column: 4, scope: !2882)
!2884 = !DILocation(line: 1593, column: 4, scope: !2882)
!2885 = !DILocation(line: 1595, column: 3, scope: !2879)
!2886 = !DILocation(line: 1596, column: 2, scope: !2879)
!2887 = !DILocation(line: 1598, column: 2, scope: !2861)
!2888 = !DILocation(line: 1600, column: 7, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 1600, column: 6)
!2890 = !DILocation(line: 1600, column: 6, scope: !2861)
!2891 = !DILocation(line: 1601, column: 3, scope: !2889)
!2892 = !DILocation(line: 1603, column: 13, scope: !2861)
!2893 = !DILocation(line: 1603, column: 11, scope: !2861)
!2894 = !DILocation(line: 1605, column: 2, scope: !2861)
!2895 = !DILocation(line: 1607, column: 6, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 1607, column: 6)
!2897 = !DILocation(line: 1607, column: 6, scope: !2861)
!2898 = !DILocation(line: 1608, column: 3, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 1607, column: 28)
!2900 = !DILocation(line: 1609, column: 3, scope: !2899)
!2901 = !DILocation(line: 1612, column: 6, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 1612, column: 6)
!2903 = !DILocation(line: 1612, column: 31, scope: !2902)
!2904 = !DILocation(line: 1612, column: 34, scope: !2902)
!2905 = !DILocation(line: 1612, column: 6, scope: !2861)
!2906 = !DILocation(line: 1613, column: 3, scope: !2902)
!2907 = !DILocation(line: 1615, column: 51, scope: !2861)
!2908 = !DILocation(line: 1615, column: 2, scope: !2861)
!2909 = !DILocation(line: 1616, column: 2, scope: !2861)
!2910 = !DILocation(line: 1617, column: 1, scope: !2861)
!2911 = distinct !DISubprogram(name: "_static_cpu_has", scope: !2912, file: !2912, line: 173, type: !2913, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2915)
!2912 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!198, !184}
!2915 = !{!2916, !2917, !2918}
!2916 = !DILocalVariable(name: "bit", arg: 1, scope: !2911, file: !2912, line: 173, type: !184)
!2917 = !DILabel(scope: !2911, name: "t_yes", file: !2912, line: 187)
!2918 = !DILabel(scope: !2911, name: "t_no", file: !2912, line: 189)
!2919 = !DILocation(line: 173, column: 49, scope: !2911)
!2920 = !DILocation(line: 183, column: 24, scope: !2911)
!2921 = !DILocation(line: 184, column: 30, scope: !2911)
!2922 = !DILocation(line: 184, column: 34, scope: !2911)
!2923 = !DILocation(line: 184, column: 26, scope: !2911)
!2924 = !DILocation(line: 185, column: 70, scope: !2911)
!2925 = !DILocation(line: 185, column: 74, scope: !2911)
!2926 = !DILocation(line: 185, column: 25, scope: !2911)
!2927 = !DILocation(line: 175, column: 2, scope: !2911)
!2928 = !{i64 2149608130, i64 2149608163, i64 2149608169, i64 2149608185, i64 2149608204, i64 2149608235, i64 2149609188, i64 2149607777, i64 2149609194, i64 2149609242, i64 2149609306, i64 2149609370, i64 2149609427, i64 2149609634, i64 2149609682, i64 2149609746, i64 2149609810, i64 2149609867, i64 2149607895, i64 2149607920, i64 2149610077, i64 2149610205, i64 2149610138, i64 2149610219, i64 2149610233, i64 2149610349, i64 2149610294, i64 2149610363, i64 2149608054, i64 1734875, i64 1734915, i64 1734924, i64 1734974, i64 1734995, i64 1735015}
!2929 = !DILocation(line: 187, column: 1, scope: !2911)
!2930 = !DILocation(line: 188, column: 2, scope: !2911)
!2931 = !DILocation(line: 189, column: 1, scope: !2911)
!2932 = !DILocation(line: 190, column: 2, scope: !2911)
!2933 = !DILocation(line: 191, column: 1, scope: !2911)
!2934 = !DISubprogram(name: "setup_clear_cpu_cap", scope: !2912, file: !2912, line: 150, type: !2935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{null, !7}
!2937 = distinct !DISubprogram(name: "native_calibrate_cpu", scope: !3, file: !3, line: 923, type: !2018, scopeLine: 924, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2938)
!2938 = !{!2939}
!2939 = !DILocalVariable(name: "tsc_freq", scope: !2937, file: !3, line: 925, type: !102)
!2940 = !DILocation(line: 925, column: 2, scope: !2937)
!2941 = !DILocation(line: 925, column: 16, scope: !2937)
!2942 = !DILocation(line: 925, column: 27, scope: !2937)
!2943 = !DILocation(line: 927, column: 7, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 927, column: 6)
!2945 = !DILocation(line: 927, column: 6, scope: !2937)
!2946 = !DILocation(line: 928, column: 14, scope: !2944)
!2947 = !DILocation(line: 928, column: 12, scope: !2944)
!2948 = !DILocation(line: 928, column: 3, scope: !2944)
!2949 = !DILocation(line: 930, column: 9, scope: !2937)
!2950 = !DILocation(line: 931, column: 1, scope: !2937)
!2951 = !DILocation(line: 930, column: 2, scope: !2937)
!2952 = distinct !DISubprogram(name: "cyc2ns_init_secondary_cpus", scope: !3, file: !3, line: 212, type: !265, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2953)
!2953 = !{!2954, !2955, !2956, !2959, !2961, !2963, !2964, !2967, !2969, !2970, !2978}
!2954 = !DILocalVariable(name: "cpu", scope: !2952, file: !3, line: 214, type: !7)
!2955 = !DILocalVariable(name: "this_cpu", scope: !2952, file: !3, line: 214, type: !7)
!2956 = !DILocalVariable(name: "pscr_ret__", scope: !2957, file: !3, line: 214, type: !125)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 214, column: 31)
!2958 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 214, column: 31)
!2959 = !DILocalVariable(name: "__vpp_verify", scope: !2960, file: !3, line: 214, type: !724)
!2960 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 214, column: 31)
!2961 = !DILocalVariable(name: "pfo_val__", scope: !2962, file: !3, line: 214, type: !110)
!2962 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 214, column: 31)
!2963 = !DILocalVariable(name: "c2n", scope: !2952, file: !3, line: 215, type: !216)
!2964 = !DILocalVariable(name: "__vpp_verify", scope: !2965, file: !3, line: 215, type: !724)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 215, column: 23)
!2966 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 215, column: 23)
!2967 = !DILocalVariable(name: "tcp_ptr__", scope: !2968, file: !3, line: 215, type: !102)
!2968 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 215, column: 23)
!2969 = !DILocalVariable(name: "data", scope: !2952, file: !3, line: 216, type: !1639)
!2970 = !DILocalVariable(name: "__vpp_verify", scope: !2971, file: !3, line: 221, type: !724)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 221, column: 10)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 221, column: 10)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 219, column: 24)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 219, column: 7)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 218, column: 29)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 218, column: 2)
!2977 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 218, column: 2)
!2978 = !DILocalVariable(name: "__ptr", scope: !2979, file: !3, line: 221, type: !102)
!2979 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 221, column: 10)
!2980 = !DILocation(line: 214, column: 2, scope: !2952)
!2981 = !DILocation(line: 214, column: 15, scope: !2952)
!2982 = !DILocation(line: 214, column: 20, scope: !2952)
!2983 = !DILocation(line: 214, column: 31, scope: !2958)
!2984 = !DILocation(line: 214, column: 31, scope: !2957)
!2985 = !DILocation(line: 214, column: 31, scope: !2960)
!2986 = !DILocation(line: 214, column: 31, scope: !2962)
!2987 = !{i64 2154715259}
!2988 = !DILocation(line: 215, column: 2, scope: !2952)
!2989 = !DILocation(line: 215, column: 17, scope: !2952)
!2990 = !DILocation(line: 215, column: 23, scope: !2966)
!2991 = !DILocation(line: 215, column: 23, scope: !2965)
!2992 = !DILocation(line: 215, column: 23, scope: !2968)
!2993 = !{i64 2154716363}
!2994 = !DILocation(line: 216, column: 2, scope: !2952)
!2995 = !DILocation(line: 216, column: 22, scope: !2952)
!2996 = !DILocation(line: 216, column: 29, scope: !2952)
!2997 = !DILocation(line: 216, column: 34, scope: !2952)
!2998 = !DILocation(line: 218, column: 2, scope: !2977)
!2999 = !DILocation(line: 218, column: 2, scope: !2976)
!3000 = !DILocation(line: 219, column: 7, scope: !2974)
!3001 = !DILocation(line: 219, column: 14, scope: !2974)
!3002 = !DILocation(line: 219, column: 11, scope: !2974)
!3003 = !DILocation(line: 219, column: 7, scope: !2975)
!3004 = !DILocation(line: 220, column: 4, scope: !2973)
!3005 = !DILocation(line: 221, column: 10, scope: !2972)
!3006 = !DILocation(line: 221, column: 10, scope: !2971)
!3007 = !DILocation(line: 221, column: 10, scope: !2979)
!3008 = !DILocation(line: 221, column: 8, scope: !2973)
!3009 = !DILocation(line: 222, column: 4, scope: !2973)
!3010 = !DILocation(line: 222, column: 9, scope: !2973)
!3011 = !DILocation(line: 222, column: 19, scope: !2973)
!3012 = !DILocation(line: 223, column: 4, scope: !2973)
!3013 = !DILocation(line: 223, column: 9, scope: !2973)
!3014 = !DILocation(line: 223, column: 19, scope: !2973)
!3015 = !DILocation(line: 224, column: 3, scope: !2973)
!3016 = !DILocation(line: 225, column: 2, scope: !2975)
!3017 = distinct !{!3017, !2998, !3018, !1721, !1722}
!3018 = !DILocation(line: 225, column: 2, scope: !2977)
!3019 = !DILocation(line: 226, column: 1, scope: !2952)
!3020 = distinct !DISubprogram(name: "enable_sched_clock_irqtime", scope: !2389, file: !2389, line: 110, type: !265, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3021 = !DILocation(line: 110, column: 54, scope: !3020)
!3022 = distinct !DISubprogram(name: "get_loops_per_jiffy", scope: !3, file: !3, line: 1543, type: !2018, scopeLine: 1544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3023)
!3023 = !{!3024, !3025, !3027}
!3024 = !DILocalVariable(name: "lpj", scope: !3022, file: !3, line: 1545, type: !104)
!3025 = !DILocalVariable(name: "__base", scope: !3026, file: !3, line: 1547, type: !2271)
!3026 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 1547, column: 2)
!3027 = !DILocalVariable(name: "__rem", scope: !3026, file: !3, line: 1547, type: !2271)
!3028 = !DILocation(line: 1545, column: 2, scope: !3022)
!3029 = !DILocation(line: 1545, column: 6, scope: !3022)
!3030 = !DILocation(line: 1545, column: 17, scope: !3022)
!3031 = !DILocation(line: 1545, column: 12, scope: !3022)
!3032 = !DILocation(line: 1545, column: 25, scope: !3022)
!3033 = !DILocation(line: 1547, column: 2, scope: !3026)
!3034 = !DILocation(line: 1547, column: 2, scope: !3022)
!3035 = !DILocation(line: 1548, column: 9, scope: !3022)
!3036 = !DILocation(line: 1549, column: 1, scope: !3022)
!3037 = !DILocation(line: 1548, column: 2, scope: !3022)
!3038 = distinct !DISubprogram(name: "check_system_tsc_reliable", scope: !3, file: !3, line: 1230, type: !265, scopeLine: 1231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3039 = !DILocation(line: 1244, column: 6, scope: !3038)
!3040 = !DILocation(line: 1244, column: 6, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1244, column: 6)
!3042 = !DILocation(line: 1245, column: 28, scope: !3041)
!3043 = !DILocation(line: 1245, column: 3, scope: !3041)
!3044 = !DILocation(line: 1258, column: 45, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1258, column: 6)
!3046 = !DILocation(line: 1258, column: 6, scope: !3045)
!3047 = !DILocation(line: 1259, column: 44, scope: !3045)
!3048 = !DILocation(line: 1259, column: 6, scope: !3045)
!3049 = !DILocation(line: 1260, column: 43, scope: !3045)
!3050 = !DILocation(line: 1260, column: 6, scope: !3045)
!3051 = !DILocation(line: 1261, column: 6, scope: !3045)
!3052 = !DILocation(line: 1261, column: 22, scope: !3045)
!3053 = !DILocation(line: 1258, column: 6, scope: !3038)
!3054 = !DILocation(line: 1262, column: 3, scope: !3045)
!3055 = !DILocation(line: 1263, column: 1, scope: !3038)
!3056 = distinct !DISubprogram(name: "tsc_disable_clocksource_watchdog", scope: !3, file: !3, line: 1218, type: !265, scopeLine: 1219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3057 = !DILocation(line: 1220, column: 30, scope: !3056)
!3058 = !DILocation(line: 1221, column: 24, scope: !3056)
!3059 = !DILocation(line: 1222, column: 1, scope: !3056)
!3060 = distinct !DISubprogram(name: "clocksource_register_khz", scope: !331, file: !331, line: 249, type: !3061, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3063)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!125, !329, !110}
!3063 = !{!3064, !3065}
!3064 = !DILocalVariable(name: "cs", arg: 1, scope: !3060, file: !331, line: 249, type: !329)
!3065 = !DILocalVariable(name: "khz", arg: 2, scope: !3060, file: !331, line: 249, type: !110)
!3066 = !DILocation(line: 249, column: 64, scope: !3060)
!3067 = !DILocation(line: 249, column: 72, scope: !3060)
!3068 = !DILocation(line: 251, column: 38, scope: !3060)
!3069 = !DILocation(line: 251, column: 48, scope: !3060)
!3070 = !DILocation(line: 251, column: 9, scope: !3060)
!3071 = !DILocation(line: 251, column: 2, scope: !3060)
!3072 = distinct !DISubprogram(name: "detect_art", scope: !3, file: !3, line: 1075, type: !265, scopeLine: 1076, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3073)
!3073 = !{!3074}
!3074 = !DILocalVariable(name: "unused", scope: !3072, file: !3, line: 1077, type: !3075)
!3075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !227)
!3076 = !DILocation(line: 1077, column: 2, scope: !3072)
!3077 = !DILocation(line: 1077, column: 15, scope: !3072)
!3078 = !DILocation(line: 1079, column: 20, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 1079, column: 6)
!3080 = !DILocation(line: 1079, column: 32, scope: !3079)
!3081 = !DILocation(line: 1079, column: 6, scope: !3072)
!3082 = !DILocation(line: 1080, column: 3, scope: !3079)
!3083 = !DILocation(line: 1086, column: 43, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 1086, column: 6)
!3085 = !DILocation(line: 1086, column: 6, scope: !3084)
!3086 = !DILocation(line: 1087, column: 45, scope: !3084)
!3087 = !DILocation(line: 1087, column: 7, scope: !3084)
!3088 = !DILocation(line: 1088, column: 44, scope: !3084)
!3089 = !DILocation(line: 1088, column: 7, scope: !3084)
!3090 = !DILocation(line: 1089, column: 6, scope: !3084)
!3091 = !DILocation(line: 1086, column: 6, scope: !3072)
!3092 = !DILocation(line: 1090, column: 3, scope: !3084)
!3093 = !DILocation(line: 1093, column: 31, scope: !3072)
!3094 = !DILocation(line: 1093, column: 39, scope: !3072)
!3095 = !DILocation(line: 1093, column: 45, scope: !3072)
!3096 = !DILocation(line: 1092, column: 2, scope: !3072)
!3097 = !DILocation(line: 1095, column: 6, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 1095, column: 6)
!3099 = !DILocation(line: 1095, column: 29, scope: !3098)
!3100 = !DILocation(line: 1095, column: 6, scope: !3072)
!3101 = !DILocation(line: 1096, column: 3, scope: !3098)
!3102 = !DILocation(line: 1098, column: 2, scope: !3072)
!3103 = !DILocation(line: 1101, column: 2, scope: !3072)
!3104 = !DILocation(line: 1101, column: 2, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 1101, column: 2)
!3106 = !DILocation(line: 1102, column: 1, scope: !3072)
!3107 = distinct !DISubprogram(name: "calibrate_delay_is_known", scope: !3, file: !3, line: 1623, type: !2018, scopeLine: 1624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3108)
!3108 = !{!3109, !3110, !3111, !3114, !3116, !3118, !3119, !3122, !3124, !3125, !3128, !3130, !3134, !3136, !3140}
!3109 = !DILocalVariable(name: "sibling", scope: !3107, file: !3, line: 1625, type: !125)
!3110 = !DILocalVariable(name: "cpu", scope: !3107, file: !3, line: 1625, type: !125)
!3111 = !DILocalVariable(name: "pscr_ret__", scope: !3112, file: !3, line: 1625, type: !125)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 1625, column: 21)
!3113 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1625, column: 21)
!3114 = !DILocalVariable(name: "__vpp_verify", scope: !3115, file: !3, line: 1625, type: !724)
!3115 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 1625, column: 21)
!3116 = !DILocalVariable(name: "pfo_val__", scope: !3117, file: !3, line: 1625, type: !110)
!3117 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 1625, column: 21)
!3118 = !DILocalVariable(name: "constant_tsc", scope: !3107, file: !3, line: 1626, type: !125)
!3119 = !DILocalVariable(name: "__vpp_verify", scope: !3120, file: !3, line: 1626, type: !724)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !3, line: 1626, column: 21)
!3121 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1626, column: 21)
!3122 = !DILocalVariable(name: "__ptr", scope: !3123, file: !3, line: 1626, type: !102)
!3123 = distinct !DILexicalBlock(scope: !3121, file: !3, line: 1626, column: 21)
!3124 = !DILocalVariable(name: "mask", scope: !3107, file: !3, line: 1627, type: !116)
!3125 = !DILocalVariable(name: "__vpp_verify", scope: !3126, file: !3, line: 1627, type: !724)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 1627, column: 31)
!3127 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1627, column: 31)
!3128 = !DILocalVariable(name: "__ptr", scope: !3129, file: !3, line: 1627, type: !102)
!3129 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 1627, column: 31)
!3130 = !DILocalVariable(name: "__vpp_verify", scope: !3131, file: !3, line: 1634, type: !724)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 1634, column: 10)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 1634, column: 10)
!3133 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1633, column: 6)
!3134 = !DILocalVariable(name: "__ptr", scope: !3135, file: !3, line: 1634, type: !102)
!3135 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 1634, column: 10)
!3136 = !DILocalVariable(name: "__vpp_verify", scope: !3137, file: !3, line: 1649, type: !724)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 1649, column: 10)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 1649, column: 10)
!3139 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1648, column: 6)
!3140 = !DILocalVariable(name: "__ptr", scope: !3141, file: !3, line: 1649, type: !102)
!3141 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 1649, column: 10)
!3142 = !DILocation(line: 1625, column: 2, scope: !3107)
!3143 = !DILocation(line: 1625, column: 6, scope: !3107)
!3144 = !DILocation(line: 1625, column: 15, scope: !3107)
!3145 = !DILocation(line: 1625, column: 21, scope: !3113)
!3146 = !DILocation(line: 1625, column: 21, scope: !3112)
!3147 = !DILocation(line: 1625, column: 21, scope: !3115)
!3148 = !DILocation(line: 1625, column: 21, scope: !3117)
!3149 = !{i64 2154953462}
!3150 = !DILocation(line: 1626, column: 2, scope: !3107)
!3151 = !DILocation(line: 1626, column: 6, scope: !3107)
!3152 = !DILocation(line: 1626, column: 21, scope: !3121)
!3153 = !DILocation(line: 1626, column: 21, scope: !3120)
!3154 = !DILocation(line: 1626, column: 21, scope: !3123)
!3155 = !DILocation(line: 1626, column: 21, scope: !3107)
!3156 = !DILocation(line: 1627, column: 2, scope: !3107)
!3157 = !DILocation(line: 1627, column: 24, scope: !3107)
!3158 = !DILocation(line: 1627, column: 31, scope: !3127)
!3159 = !DILocation(line: 1627, column: 31, scope: !3126)
!3160 = !DILocation(line: 1627, column: 31, scope: !3129)
!3161 = !DILocation(line: 1627, column: 31, scope: !3107)
!3162 = !DILocation(line: 1633, column: 6, scope: !3133)
!3163 = !DILocation(line: 1633, column: 19, scope: !3133)
!3164 = !DILocation(line: 1633, column: 23, scope: !3133)
!3165 = !DILocation(line: 1633, column: 6, scope: !3107)
!3166 = !DILocation(line: 1634, column: 10, scope: !3132)
!3167 = !DILocation(line: 1634, column: 10, scope: !3131)
!3168 = !DILocation(line: 1634, column: 10, scope: !3135)
!3169 = !DILocation(line: 1634, column: 22, scope: !3133)
!3170 = !DILocation(line: 1634, column: 3, scope: !3133)
!3171 = !DILocation(line: 1644, column: 7, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1644, column: 6)
!3173 = !DILocation(line: 1644, column: 20, scope: !3172)
!3174 = !DILocation(line: 1644, column: 24, scope: !3172)
!3175 = !DILocation(line: 1644, column: 6, scope: !3107)
!3176 = !DILocation(line: 1645, column: 3, scope: !3172)
!3177 = !DILocation(line: 1647, column: 28, scope: !3107)
!3178 = !DILocation(line: 1647, column: 34, scope: !3107)
!3179 = !DILocation(line: 1647, column: 12, scope: !3107)
!3180 = !DILocation(line: 1647, column: 10, scope: !3107)
!3181 = !DILocation(line: 1648, column: 6, scope: !3139)
!3182 = !DILocation(line: 1648, column: 16, scope: !3139)
!3183 = !DILocation(line: 1648, column: 14, scope: !3139)
!3184 = !DILocation(line: 1648, column: 6, scope: !3107)
!3185 = !DILocation(line: 1649, column: 10, scope: !3138)
!3186 = !DILocation(line: 1649, column: 10, scope: !3137)
!3187 = !DILocation(line: 1649, column: 10, scope: !3141)
!3188 = !DILocation(line: 1649, column: 28, scope: !3139)
!3189 = !DILocation(line: 1649, column: 3, scope: !3139)
!3190 = !DILocation(line: 1650, column: 2, scope: !3107)
!3191 = !DILocation(line: 1651, column: 1, scope: !3107)
!3192 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !3193, file: !3193, line: 313, type: !3194, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3196)
!3193 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!3194 = !DISubroutineType(types: !3195)
!3195 = !{null, !243}
!3196 = !{!3197}
!3197 = !DILocalVariable(name: "op", arg: 1, scope: !3192, file: !3193, line: 313, type: !243)
!3198 = !DILocation(line: 313, column: 66, scope: !3192)
!3199 = !DILocation(line: 313, column: 72, scope: !3192)
!3200 = distinct !DISubprogram(name: "cpumask_any_but", scope: !119, file: !119, line: 379, type: !3201, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3203)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!7, !116, !7}
!3203 = !{!3204, !3205, !3206}
!3204 = !DILocalVariable(name: "mask", arg: 1, scope: !3200, file: !119, line: 379, type: !116)
!3205 = !DILocalVariable(name: "cpu", arg: 2, scope: !3200, file: !119, line: 379, type: !7)
!3206 = !DILocalVariable(name: "i", scope: !3200, file: !119, line: 381, type: !7)
!3207 = !DILocation(line: 379, column: 52, scope: !3200)
!3208 = !DILocation(line: 379, column: 71, scope: !3200)
!3209 = !DILocation(line: 381, column: 2, scope: !3200)
!3210 = !DILocation(line: 381, column: 15, scope: !3200)
!3211 = !DILocation(line: 383, column: 16, scope: !3200)
!3212 = !DILocation(line: 383, column: 2, scope: !3200)
!3213 = !DILocation(line: 384, column: 2, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3200, file: !119, line: 384, column: 2)
!3215 = !DILocation(line: 384, column: 2, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3214, file: !119, line: 384, column: 2)
!3217 = !DILocation(line: 385, column: 7, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3216, file: !119, line: 385, column: 7)
!3219 = !DILocation(line: 385, column: 12, scope: !3218)
!3220 = !DILocation(line: 385, column: 9, scope: !3218)
!3221 = !DILocation(line: 385, column: 7, scope: !3216)
!3222 = !DILocation(line: 386, column: 4, scope: !3218)
!3223 = distinct !{!3223, !3213, !3224, !1721, !1722}
!3224 = !DILocation(line: 386, column: 4, scope: !3214)
!3225 = !DILocation(line: 387, column: 9, scope: !3200)
!3226 = !DILocation(line: 388, column: 1, scope: !3200)
!3227 = !DILocation(line: 387, column: 2, scope: !3200)
!3228 = !DISubprogram(name: "kstrtouint", scope: !3229, file: !3229, line: 71, type: !3230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3229 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!125, !243, !7, !101}
!3232 = distinct !DISubprogram(name: "mul_u64_u32_shr", scope: !3233, file: !3233, line: 164, type: !3234, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3236)
!3233 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!104, !104, !110, !7}
!3236 = !{!3237, !3238, !3239}
!3237 = !DILocalVariable(name: "a", arg: 1, scope: !3232, file: !3233, line: 164, type: !104)
!3238 = !DILocalVariable(name: "mul", arg: 2, scope: !3232, file: !3233, line: 164, type: !110)
!3239 = !DILocalVariable(name: "shift", arg: 3, scope: !3232, file: !3233, line: 164, type: !7)
!3240 = !DILocation(line: 164, column: 48, scope: !3232)
!3241 = !DILocation(line: 164, column: 55, scope: !3232)
!3242 = !DILocation(line: 164, column: 73, scope: !3232)
!3243 = !DILocation(line: 166, column: 35, scope: !3232)
!3244 = !DILocation(line: 166, column: 16, scope: !3232)
!3245 = !DILocation(line: 166, column: 39, scope: !3232)
!3246 = !DILocation(line: 166, column: 37, scope: !3232)
!3247 = !DILocation(line: 166, column: 47, scope: !3232)
!3248 = !DILocation(line: 166, column: 44, scope: !3232)
!3249 = !DILocation(line: 166, column: 9, scope: !3232)
!3250 = !DILocation(line: 166, column: 2, scope: !3232)
!3251 = !DISubprogram(name: "strcmp", scope: !3252, file: !3252, line: 88, type: !3253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3252 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!125, !243, !243}
!3255 = !DISubprogram(name: "strncmp", scope: !3252, file: !3252, line: 91, type: !3256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!125, !243, !243, !503}
!3258 = distinct !DISubprogram(name: "native_cpuid", scope: !2129, file: !2129, line: 30, type: !3259, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{null, !101, !101, !101, !101}
!3261 = !{!3262, !3263, !3264, !3265}
!3262 = !DILocalVariable(name: "eax", arg: 1, scope: !3258, file: !2129, line: 30, type: !101)
!3263 = !DILocalVariable(name: "ebx", arg: 2, scope: !3258, file: !2129, line: 30, type: !101)
!3264 = !DILocalVariable(name: "ecx", arg: 3, scope: !3258, file: !2129, line: 31, type: !101)
!3265 = !DILocalVariable(name: "edx", arg: 4, scope: !3258, file: !2129, line: 31, type: !101)
!3266 = !DILocation(line: 30, column: 47, scope: !3258)
!3267 = !DILocation(line: 30, column: 66, scope: !3258)
!3268 = !DILocation(line: 31, column: 19, scope: !3258)
!3269 = !DILocation(line: 31, column: 38, scope: !3258)
!3270 = !DILocation(line: 35, column: 15, scope: !3258)
!3271 = !DILocation(line: 36, column: 15, scope: !3258)
!3272 = !DILocation(line: 37, column: 15, scope: !3258)
!3273 = !DILocation(line: 38, column: 15, scope: !3258)
!3274 = !DILocation(line: 39, column: 14, scope: !3258)
!3275 = !DILocation(line: 39, column: 13, scope: !3258)
!3276 = !DILocation(line: 39, column: 26, scope: !3258)
!3277 = !DILocation(line: 39, column: 25, scope: !3258)
!3278 = !DILocation(line: 34, column: 2, scope: !3258)
!3279 = !{i64 1845007}
!3280 = !DILocation(line: 41, column: 1, scope: !3258)
!3281 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3282, file: !3282, line: 80, type: !3283, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3288)
!3282 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3283 = !DISubroutineType(types: !3284)
!3284 = !{null, !3285, !502}
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3287)
!3287 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3288 = !{!3289, !3290}
!3289 = !DILocalVariable(name: "v", arg: 1, scope: !3281, file: !3282, line: 80, type: !3285)
!3290 = !DILocalVariable(name: "size", arg: 2, scope: !3281, file: !3282, line: 80, type: !502)
!3291 = !DILocation(line: 80, column: 74, scope: !3281)
!3292 = !DILocation(line: 80, column: 84, scope: !3281)
!3293 = !DILocation(line: 82, column: 20, scope: !3281)
!3294 = !DILocation(line: 82, column: 23, scope: !3281)
!3295 = !DILocation(line: 82, column: 2, scope: !3281)
!3296 = !DILocation(line: 83, column: 2, scope: !3281)
!3297 = !DILocation(line: 84, column: 1, scope: !3281)
!3298 = distinct !DISubprogram(name: "arch_set_bit", scope: !2585, file: !2585, line: 52, type: !2156, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3299)
!3299 = !{!3300, !3301}
!3300 = !DILocalVariable(name: "nr", arg: 1, scope: !3298, file: !2585, line: 52, type: !212)
!3301 = !DILocalVariable(name: "addr", arg: 2, scope: !3298, file: !2585, line: 52, type: !2158)
!3302 = !DILocation(line: 52, column: 19, scope: !3298)
!3303 = !DILocation(line: 52, column: 47, scope: !3298)
!3304 = !DILocation(line: 54, column: 27, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3298, file: !2585, line: 54, column: 6)
!3306 = !DILocation(line: 54, column: 6, scope: !3305)
!3307 = !DILocation(line: 54, column: 6, scope: !3298)
!3308 = !DILocation(line: 56, column: 6, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3305, file: !2585, line: 54, column: 32)
!3310 = !DILocation(line: 57, column: 12, scope: !3309)
!3311 = !DILocation(line: 55, column: 3, scope: !3309)
!3312 = !{i64 2147827467, i64 2147827506, i64 2147827527, i64 2147827564, i64 2147827587, i64 2147827457}
!3313 = !DILocation(line: 59, column: 2, scope: !3309)
!3314 = !DILocation(line: 61, column: 8, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3305, file: !2585, line: 59, column: 9)
!3316 = !DILocation(line: 61, column: 32, scope: !3315)
!3317 = !DILocation(line: 60, column: 3, scope: !3315)
!3318 = !{i64 2147827752, i64 2147827791, i64 2147827812, i64 2147827849, i64 2147827872, i64 2147827742}
!3319 = !DILocation(line: 63, column: 1, scope: !3298)
!3320 = distinct !DISubprogram(name: "kasan_check_write", scope: !3321, file: !3321, line: 44, type: !3322, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3324)
!3321 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!198, !3285, !7}
!3324 = !{!3325, !3326}
!3325 = !DILocalVariable(name: "p", arg: 1, scope: !3320, file: !3321, line: 44, type: !3285)
!3326 = !DILocalVariable(name: "size", arg: 2, scope: !3320, file: !3321, line: 44, type: !7)
!3327 = !DILocation(line: 44, column: 59, scope: !3320)
!3328 = !DILocation(line: 44, column: 75, scope: !3320)
!3329 = !DILocation(line: 46, column: 2, scope: !3320)
!3330 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3331, file: !3331, line: 229, type: !3332, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3334)
!3331 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3332 = !DISubroutineType(types: !3333)
!3333 = !{null, !3285, !502, !125}
!3334 = !{!3335, !3336, !3337}
!3335 = !DILocalVariable(name: "ptr", arg: 1, scope: !3330, file: !3331, line: 229, type: !3285)
!3336 = !DILocalVariable(name: "size", arg: 2, scope: !3330, file: !3331, line: 229, type: !502)
!3337 = !DILocalVariable(name: "type", arg: 3, scope: !3330, file: !3331, line: 230, type: !125)
!3338 = !DILocation(line: 229, column: 60, scope: !3330)
!3339 = !DILocation(line: 229, column: 72, scope: !3330)
!3340 = !DILocation(line: 230, column: 15, scope: !3330)
!3341 = !DILocation(line: 230, column: 23, scope: !3330)
!3342 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2251, file: !2251, line: 65, type: !2018, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3343 = !DILocation(line: 67, column: 9, scope: !3342)
!3344 = !DILocation(line: 67, column: 2, scope: !3342)
!3345 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2251, file: !2251, line: 70, type: !265, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3346 = !DILocation(line: 72, column: 2, scope: !3345)
!3347 = !DILocation(line: 73, column: 1, scope: !3345)
!3348 = distinct !DISubprogram(name: "native_save_fl", scope: !2251, file: !2251, line: 17, type: !2018, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3349)
!3349 = !{!3350}
!3350 = !DILocalVariable(name: "flags", scope: !3348, file: !2251, line: 19, type: !102)
!3351 = !DILocation(line: 19, column: 2, scope: !3348)
!3352 = !DILocation(line: 19, column: 16, scope: !3348)
!3353 = !DILocation(line: 26, column: 2, scope: !3348)
!3354 = !{i64 1463869, i64 1463890}
!3355 = !DILocation(line: 32, column: 9, scope: !3348)
!3356 = !DILocation(line: 33, column: 1, scope: !3348)
!3357 = !DILocation(line: 32, column: 2, scope: !3348)
!3358 = distinct !DISubprogram(name: "native_irq_disable", scope: !2251, file: !2251, line: 35, type: !265, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3359 = !DILocation(line: 37, column: 2, scope: !3358)
!3360 = !{i64 1464073}
!3361 = !DILocation(line: 38, column: 1, scope: !3358)
!3362 = distinct !DISubprogram(name: "has_legacy_pic", scope: !3363, file: !3363, line: 77, type: !846, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3363 = !DIFile(filename: "./arch/x86/include/asm/i8259.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ea2431e45e85ef1d701234a5172ab8b1")
!3364 = !DILocation(line: 79, column: 9, scope: !3362)
!3365 = !DILocation(line: 79, column: 20, scope: !3362)
!3366 = !DILocation(line: 79, column: 2, scope: !3362)
!3367 = distinct !DISubprogram(name: "__outb", scope: !3368, file: !3368, line: 22, type: !3369, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3371)
!3368 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!3369 = !DISubroutineType(types: !3370)
!3370 = !{null, !202, !184}
!3371 = !{!3372, !3373}
!3372 = !DILocalVariable(name: "value", arg: 1, scope: !3367, file: !3368, line: 22, type: !202)
!3373 = !DILocalVariable(name: "port", arg: 2, scope: !3367, file: !3368, line: 22, type: !184)
!3374 = !DILocation(line: 22, column: 1, scope: !3367)
!3375 = !{i64 2152264666}
!3376 = distinct !DISubprogram(name: "__inb", scope: !3368, file: !3368, line: 22, type: !3377, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!202, !184}
!3379 = !{!3380, !3381}
!3380 = !DILocalVariable(name: "port", arg: 1, scope: !3376, file: !3368, line: 22, type: !184)
!3381 = !DILocalVariable(name: "value", scope: !3376, file: !3368, line: 22, type: !202)
!3382 = !DILocation(line: 22, column: 1, scope: !3376)
!3383 = !{i64 2152264862}
!3384 = distinct !DISubprogram(name: "pit_verify_msb", scope: !3, file: !3, line: 526, type: !3385, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3387)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!125, !141}
!3387 = !{!3388}
!3388 = !DILocalVariable(name: "val", arg: 1, scope: !3384, file: !3, line: 526, type: !141)
!3389 = !DILocation(line: 526, column: 48, scope: !3384)
!3390 = !DILocation(line: 529, column: 2, scope: !3384)
!3391 = !DILocation(line: 530, column: 9, scope: !3384)
!3392 = !DILocation(line: 530, column: 22, scope: !3384)
!3393 = !DILocation(line: 530, column: 19, scope: !3384)
!3394 = !DILocation(line: 530, column: 2, scope: !3384)
!3395 = distinct !DISubprogram(name: "pit_expect_msb", scope: !3, file: !3, line: 533, type: !3396, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!125, !141, !103, !115}
!3398 = !{!3399, !3400, !3401, !3402, !3403, !3404}
!3399 = !DILocalVariable(name: "val", arg: 1, scope: !3395, file: !3, line: 533, type: !141)
!3400 = !DILocalVariable(name: "tscp", arg: 2, scope: !3395, file: !3, line: 533, type: !103)
!3401 = !DILocalVariable(name: "deltap", arg: 3, scope: !3395, file: !3, line: 533, type: !115)
!3402 = !DILocalVariable(name: "count", scope: !3395, file: !3, line: 535, type: !125)
!3403 = !DILocalVariable(name: "tsc", scope: !3395, file: !3, line: 536, type: !104)
!3404 = !DILocalVariable(name: "prev_tsc", scope: !3395, file: !3, line: 536, type: !104)
!3405 = !DILocation(line: 533, column: 48, scope: !3395)
!3406 = !DILocation(line: 533, column: 58, scope: !3395)
!3407 = !DILocation(line: 533, column: 79, scope: !3395)
!3408 = !DILocation(line: 535, column: 2, scope: !3395)
!3409 = !DILocation(line: 535, column: 6, scope: !3395)
!3410 = !DILocation(line: 536, column: 2, scope: !3395)
!3411 = !DILocation(line: 536, column: 6, scope: !3395)
!3412 = !DILocation(line: 536, column: 15, scope: !3395)
!3413 = !DILocation(line: 538, column: 13, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 538, column: 2)
!3415 = !DILocation(line: 538, column: 7, scope: !3414)
!3416 = !DILocation(line: 538, column: 18, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 538, column: 2)
!3418 = !DILocation(line: 538, column: 24, scope: !3417)
!3419 = !DILocation(line: 538, column: 2, scope: !3414)
!3420 = !DILocation(line: 539, column: 23, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 539, column: 7)
!3422 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 538, column: 42)
!3423 = !DILocation(line: 539, column: 8, scope: !3421)
!3424 = !DILocation(line: 539, column: 7, scope: !3422)
!3425 = !DILocation(line: 540, column: 4, scope: !3421)
!3426 = !DILocation(line: 541, column: 14, scope: !3422)
!3427 = !DILocation(line: 541, column: 12, scope: !3422)
!3428 = !DILocation(line: 542, column: 9, scope: !3422)
!3429 = !DILocation(line: 542, column: 7, scope: !3422)
!3430 = !DILocation(line: 543, column: 2, scope: !3422)
!3431 = !DILocation(line: 538, column: 38, scope: !3417)
!3432 = !DILocation(line: 538, column: 2, scope: !3417)
!3433 = distinct !{!3433, !3419, !3434, !1721, !1722}
!3434 = !DILocation(line: 543, column: 2, scope: !3414)
!3435 = !DILocation(line: 544, column: 12, scope: !3395)
!3436 = !DILocation(line: 544, column: 27, scope: !3395)
!3437 = !DILocation(line: 544, column: 25, scope: !3395)
!3438 = !DILocation(line: 544, column: 3, scope: !3395)
!3439 = !DILocation(line: 544, column: 10, scope: !3395)
!3440 = !DILocation(line: 545, column: 10, scope: !3395)
!3441 = !DILocation(line: 545, column: 3, scope: !3395)
!3442 = !DILocation(line: 545, column: 8, scope: !3395)
!3443 = !DILocation(line: 551, column: 9, scope: !3395)
!3444 = !DILocation(line: 551, column: 15, scope: !3395)
!3445 = !DILocation(line: 552, column: 1, scope: !3395)
!3446 = !DILocation(line: 551, column: 2, scope: !3395)
!3447 = distinct !DISubprogram(name: "get_cycles", scope: !2249, file: !2249, line: 21, type: !3448, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!3450}
!3450 = !DIDerivedType(tag: DW_TAG_typedef, name: "cycles_t", file: !2249, line: 14, baseType: !108)
!3451 = !DILocation(line: 26, column: 9, scope: !3447)
!3452 = !DILocation(line: 26, column: 2, scope: !3447)
!3453 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !2251, file: !2251, line: 120, type: !3454, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!125, !102}
!3456 = !{!3457}
!3457 = !DILocalVariable(name: "flags", arg: 1, scope: !3453, file: !2251, line: 120, type: !102)
!3458 = !DILocation(line: 120, column: 67, scope: !3453)
!3459 = !DILocation(line: 122, column: 11, scope: !3453)
!3460 = !DILocation(line: 122, column: 17, scope: !3453)
!3461 = !DILocation(line: 122, column: 9, scope: !3453)
!3462 = !DILocation(line: 122, column: 2, scope: !3453)
!3463 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !2251, file: !2251, line: 75, type: !265, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3464 = !DILocation(line: 77, column: 2, scope: !3463)
!3465 = !DILocation(line: 78, column: 1, scope: !3463)
!3466 = distinct !DISubprogram(name: "native_irq_enable", scope: !2251, file: !2251, line: 40, type: !265, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3467 = !DILocation(line: 42, column: 2, scope: !3466)
!3468 = !{i64 1464165}
!3469 = !DILocation(line: 43, column: 1, scope: !3466)
!3470 = distinct !DISubprogram(name: "variable__ffs", scope: !2585, file: !2585, line: 250, type: !3471, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3473)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!102, !102}
!3473 = !{!3474}
!3474 = !DILocalVariable(name: "word", arg: 1, scope: !3470, file: !2585, line: 250, type: !102)
!3475 = !DILocation(line: 250, column: 66, scope: !3470)
!3476 = !DILocation(line: 254, column: 11, scope: !3470)
!3477 = !DILocation(line: 252, column: 2, scope: !3470)
!3478 = !{i64 336154}
!3479 = !DILocation(line: 255, column: 9, scope: !3470)
!3480 = !DILocation(line: 255, column: 2, scope: !3470)
!3481 = !DISubprogram(name: "_find_next_bit", scope: !2479, file: !2479, line: 11, type: !2480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3482 = !DISubprogram(name: "cpufreq_register_notifier", scope: !50, file: !50, line: 510, type: !3483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!125, !1488, !7}
!3485 = distinct !DISubprogram(name: "time_cpufreq_notifier", scope: !3, file: !3, line: 1018, type: !1486, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3486)
!3486 = !{!3487, !3488, !3489, !3490}
!3487 = !DILocalVariable(name: "nb", arg: 1, scope: !3485, file: !3, line: 1018, type: !1488)
!3488 = !DILocalVariable(name: "val", arg: 2, scope: !3485, file: !3, line: 1018, type: !102)
!3489 = !DILocalVariable(name: "data", arg: 3, scope: !3485, file: !3, line: 1019, type: !100)
!3490 = !DILocalVariable(name: "freq", scope: !3485, file: !3, line: 1021, type: !3491)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_freqs", file: !50, line: 184, size: 192, elements: !3493)
!3493 = !{!3494, !5058, !5059, !5060}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3492, file: !50, line: 185, baseType: !3495, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_policy", file: !50, line: 55, size: 5120, elements: !3497)
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3503, !3507, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3546, !3547, !3548, !3549, !3573, !3586, !3587, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3617, !5049, !5052, !5053, !5056, !5057}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !3496, file: !50, line: 57, baseType: !205, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "related_cpus", scope: !3496, file: !50, line: 58, baseType: !205, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "real_cpus", scope: !3496, file: !50, line: 59, baseType: !205, size: 64, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !3496, file: !50, line: 61, baseType: !7, size: 32, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3496, file: !50, line: 63, baseType: !7, size: 32, offset: 224)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !3496, file: !50, line: 65, baseType: !3504, size: 64, offset: 256)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !3506, line: 17, flags: DIFlagFwdDecl)
!3506 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1429a43eaf99e9312dde348d6bc82f22")
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "cpuinfo", scope: !3496, file: !50, line: 66, baseType: !3508, size: 96, offset: 320)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_cpuinfo", file: !50, line: 47, size: 96, elements: !3509)
!3509 = !{!3510, !3511, !3512}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !3508, file: !50, line: 48, baseType: !7, size: 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !3508, file: !50, line: 49, baseType: !7, size: 32, offset: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !3508, file: !50, line: 52, baseType: !7, size: 32, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3496, file: !50, line: 68, baseType: !7, size: 32, offset: 416)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3496, file: !50, line: 69, baseType: !7, size: 32, offset: 448)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !3496, file: !50, line: 70, baseType: !7, size: 32, offset: 480)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_freq", scope: !3496, file: !50, line: 72, baseType: !7, size: 32, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3496, file: !50, line: 74, baseType: !7, size: 32, offset: 544)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "last_policy", scope: !3496, file: !50, line: 75, baseType: !7, size: 32, offset: 576)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !3496, file: !50, line: 76, baseType: !3520, size: 64, offset: 640)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_governor", file: !50, line: 577, size: 832, elements: !3522)
!3522 = !{!3523, !3524, !3528, !3532, !3533, !3534, !3535, !3539, !3543, !3544, !3545}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3521, file: !50, line: 578, baseType: !167, size: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !3521, file: !50, line: 579, baseType: !3525, size: 64, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!125, !3495}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3521, file: !50, line: 580, baseType: !3529, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{null, !3495}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3521, file: !50, line: 581, baseType: !3525, size: 64, offset: 256)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3521, file: !50, line: 582, baseType: !3529, size: 64, offset: 320)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !3521, file: !50, line: 583, baseType: !3529, size: 64, offset: 384)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "show_setspeed", scope: !3521, file: !50, line: 584, baseType: !3536, size: 64, offset: 448)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!488, !3495, !260}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "store_setspeed", scope: !3521, file: !50, line: 586, baseType: !3540, size: 64, offset: 512)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!125, !3495, !7}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !3521, file: !50, line: 588, baseType: !346, size: 128, offset: 576)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3521, file: !50, line: 589, baseType: !371, size: 64, offset: 704)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3521, file: !50, line: 590, baseType: !202, size: 8, offset: 768)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !3496, file: !50, line: 77, baseType: !100, size: 64, offset: 704)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "last_governor", scope: !3496, file: !50, line: 78, baseType: !167, size: 128, offset: 768)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !3496, file: !50, line: 80, baseType: !767, size: 256, offset: 896)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "constraints", scope: !3496, file: !50, line: 83, baseType: !3550, size: 1408, offset: 1152)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !40, line: 85, size: 1408, elements: !3551)
!3551 = !{!3552, !3570, !3571, !3572}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !3550, file: !40, line: 86, baseType: !3553, size: 320)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !40, line: 52, size: 320, elements: !3554)
!3554 = !{!3555, !3560, !3561, !3562, !3563, !3564}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3553, file: !40, line: 53, baseType: !3556, size: 128)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !3557, line: 82, size: 128, elements: !3558)
!3557 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3558 = !{!3559}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3556, file: !3557, line: 83, baseType: !346, size: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !3553, file: !40, line: 54, baseType: !682, size: 32, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !3553, file: !40, line: 55, baseType: !682, size: 32, offset: 160)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !3553, file: !40, line: 56, baseType: !682, size: 32, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3553, file: !40, line: 57, baseType: !39, size: 32, offset: 224)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !3553, file: !40, line: 58, baseType: !3565, size: 64, offset: 256)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1481, line: 65, size: 384, elements: !3567)
!3567 = !{!3568, !3569}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !3566, file: !1481, line: 66, baseType: !631, size: 320)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3566, file: !1481, line: 67, baseType: !1488, size: 64, offset: 320)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !3550, file: !40, line: 87, baseType: !3566, size: 384, offset: 320)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !3550, file: !40, line: 88, baseType: !3553, size: 320, offset: 704)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !3550, file: !40, line: 89, baseType: !3566, size: 384, offset: 1024)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_req", scope: !3496, file: !50, line: 84, baseType: !3574, size: 64, offset: 2560)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !40, line: 92, size: 448, elements: !3576)
!3576 = !{!3577, !3578, !3584}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3575, file: !40, line: 93, baseType: !45, size: 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !3575, file: !40, line: 94, baseType: !3579, size: 320, offset: 64)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3557, line: 86, size: 320, elements: !3580)
!3580 = !{!3581, !3582, !3583}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3579, file: !3557, line: 87, baseType: !125, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3579, file: !3557, line: 88, baseType: !346, size: 128, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3579, file: !3557, line: 89, baseType: !346, size: 128, offset: 192)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3575, file: !40, line: 95, baseType: !3585, size: 64, offset: 384)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_req", scope: !3496, file: !50, line: 85, baseType: !3574, size: 64, offset: 2624)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table", scope: !3496, file: !50, line: 87, baseType: !3588, size: 64, offset: 2688)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_frequency_table", file: !50, line: 690, size: 96, elements: !3590)
!3590 = !{!3591, !3592, !3593}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3589, file: !50, line: 691, baseType: !7, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3589, file: !50, line: 692, baseType: !7, size: 32, offset: 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !3589, file: !50, line: 693, baseType: !7, size: 32, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table_sorted", scope: !3496, file: !50, line: 88, baseType: !49, size: 32, offset: 2752)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "policy_list", scope: !3496, file: !50, line: 90, baseType: !346, size: 128, offset: 2816)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3496, file: !50, line: 91, baseType: !384, size: 512, offset: 2944)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_unregister", scope: !3496, file: !50, line: 92, baseType: !1024, size: 256, offset: 3456)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !3496, file: !50, line: 102, baseType: !631, size: 320, offset: 3712)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_possible", scope: !3496, file: !50, line: 112, baseType: !198, size: 8, offset: 4032)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_enabled", scope: !3496, file: !50, line: 113, baseType: !198, size: 8, offset: 4040)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "strict_target", scope: !3496, file: !50, line: 119, baseType: !198, size: 8, offset: 4048)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "efficiencies_available", scope: !3496, file: !50, line: 126, baseType: !198, size: 8, offset: 4056)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "transition_delay_us", scope: !3496, file: !50, line: 133, baseType: !7, size: 32, offset: 4064)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dvfs_possible_from_any_cpu", scope: !3496, file: !50, line: 142, baseType: !198, size: 8, offset: 4096)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "boost_enabled", scope: !3496, file: !50, line: 145, baseType: !198, size: 8, offset: 4104)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "cached_target_freq", scope: !3496, file: !50, line: 148, baseType: !7, size: 32, offset: 4128)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "cached_resolved_idx", scope: !3496, file: !50, line: 149, baseType: !7, size: 32, offset: 4160)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "transition_ongoing", scope: !3496, file: !50, line: 152, baseType: !198, size: 8, offset: 4192)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "transition_lock", scope: !3496, file: !50, line: 153, baseType: !397, size: 32, offset: 4224)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "transition_wait", scope: !3496, file: !50, line: 154, baseType: !3611, size: 192, offset: 4288)
!3611 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !3612, line: 41, baseType: !3613)
!3612 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !3612, line: 37, size: 192, elements: !3614)
!3614 = !{!3615, !3616}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3613, file: !3612, line: 38, baseType: !397, size: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3613, file: !3612, line: 39, baseType: !346, size: 128, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "transition_task", scope: !3496, file: !50, line: 155, baseType: !3618, size: 64, offset: 4480)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !828, line: 746, size: 58368, elements: !3620)
!3620 = !{!3621, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3706, !3717, !3807, !3811, !3814, !3845, !3846, !3847, !3848, !3852, !3854, !3855, !3856, !3857, !3858, !3859, !3870, !3871, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3970, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !4006, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4041, !4047, !4226, !4227, !4228, !4229, !4230, !4233, !4240, !4245, !4248, !4251, !4254, !4257, !4399, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4435, !4436, !4437, !4446, !4454, !4455, !4456, !4457, !4458, !4463, !4464, !4465, !4468, !4469, !4472, !4475, !4478, !4481, !4484, !4485, !4570, !4571, !4572, !4573, !4574, !4580, !4581, !4582, !4583, !4586, !4587, !4590, !4593, !4594, !4597, !4598, !4599, !4602, !4603, !4604, !4605, !4606, !4607, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4639, !4642, !4708, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4720, !4792, !4794, !4795, !4796, !4797, !4798, !4799, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4829, !4830, !4831}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3619, file: !828, line: 752, baseType: !3622, size: 192)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3623, line: 56, size: 192, elements: !3624)
!3623 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3624 = !{!3625, !3626, !3627, !3628}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3622, file: !3623, line: 57, baseType: !102, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3622, file: !3623, line: 58, baseType: !102, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3622, file: !3623, line: 59, baseType: !110, size: 32, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3622, file: !3623, line: 61, baseType: !110, size: 32, offset: 160)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3619, file: !828, line: 754, baseType: !7, size: 32, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3619, file: !828, line: 767, baseType: !100, size: 64, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3619, file: !828, line: 768, baseType: !1007, size: 32, offset: 320)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3619, file: !828, line: 770, baseType: !7, size: 32, offset: 352)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3619, file: !828, line: 771, baseType: !7, size: 32, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3619, file: !828, line: 774, baseType: !125, size: 32, offset: 416)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3619, file: !828, line: 775, baseType: !3636, size: 128, offset: 448)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3637, line: 58, size: 128, elements: !3638)
!3637 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3638 = !{!3639, !3645, !3650, !3651}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3636, file: !3637, line: 59, baseType: !3640, size: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !3641, line: 60, size: 64, elements: !3642)
!3641 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!3642 = !{!3643}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3640, file: !3641, line: 61, baseType: !3644, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, scope: !3636, file: !3637, line: 60, baseType: !3646, size: 32, offset: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3636, file: !3637, line: 60, size: 32, elements: !3647)
!3647 = !{!3648, !3649}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3646, file: !3637, line: 61, baseType: !7, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3646, file: !3637, line: 62, baseType: !417, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3636, file: !3637, line: 65, baseType: !184, size: 16, offset: 96)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3636, file: !3637, line: 65, baseType: !184, size: 16, offset: 112)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3619, file: !828, line: 776, baseType: !7, size: 32, offset: 576)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3619, file: !828, line: 777, baseType: !102, size: 64, offset: 640)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3619, file: !828, line: 778, baseType: !3618, size: 64, offset: 704)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3619, file: !828, line: 787, baseType: !125, size: 32, offset: 768)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3619, file: !828, line: 788, baseType: !125, size: 32, offset: 800)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3619, file: !828, line: 790, baseType: !125, size: 32, offset: 832)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3619, file: !828, line: 792, baseType: !125, size: 32, offset: 864)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3619, file: !828, line: 793, baseType: !125, size: 32, offset: 896)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3619, file: !828, line: 794, baseType: !125, size: 32, offset: 928)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3619, file: !828, line: 795, baseType: !7, size: 32, offset: 960)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3619, file: !828, line: 797, baseType: !3663, size: 2048, offset: 1024)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !828, line: 551, size: 2048, elements: !3664)
!3664 = !{!3665, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3685, !3688, !3689, !3690}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3663, file: !828, line: 553, baseType: !3666, size: 128)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !828, line: 411, size: 128, elements: !3667)
!3667 = !{!3668, !3669}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3666, file: !828, line: 412, baseType: !102, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3666, file: !828, line: 413, baseType: !110, size: 32, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3663, file: !828, line: 554, baseType: !805, size: 192, align: 64, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3663, file: !828, line: 555, baseType: !104, size: 64, offset: 320)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3663, file: !828, line: 556, baseType: !104, size: 64, offset: 384)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3663, file: !828, line: 558, baseType: !346, size: 128, offset: 448)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3663, file: !828, line: 559, baseType: !7, size: 32, offset: 576)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3663, file: !828, line: 561, baseType: !104, size: 64, offset: 640)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3663, file: !828, line: 562, baseType: !104, size: 64, offset: 704)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3663, file: !828, line: 563, baseType: !104, size: 64, offset: 768)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3663, file: !828, line: 564, baseType: !104, size: 64, offset: 832)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3663, file: !828, line: 565, baseType: !626, size: 64, offset: 896)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3663, file: !828, line: 566, baseType: !104, size: 64, offset: 960)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3663, file: !828, line: 568, baseType: !104, size: 64, offset: 1024)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3663, file: !828, line: 571, baseType: !125, size: 32, offset: 1088)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3663, file: !828, line: 572, baseType: !3684, size: 64, offset: 1152)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3663, file: !828, line: 574, baseType: !3686, size: 64, offset: 1216)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !828, line: 49, flags: DIFlagFwdDecl)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3663, file: !828, line: 576, baseType: !3686, size: 64, offset: 1280)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3663, file: !828, line: 578, baseType: !102, size: 64, offset: 1344)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3663, file: !828, line: 588, baseType: !3691, size: 512, align: 512, offset: 1536)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !828, line: 497, size: 512, align: 512, elements: !3692)
!3692 = !{!3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3691, file: !828, line: 498, baseType: !104, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3691, file: !828, line: 499, baseType: !104, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3691, file: !828, line: 500, baseType: !104, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3691, file: !828, line: 501, baseType: !110, size: 32, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3691, file: !828, line: 502, baseType: !110, size: 32, offset: 224)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3691, file: !828, line: 503, baseType: !102, size: 64, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3691, file: !828, line: 504, baseType: !102, size: 64, offset: 320)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3691, file: !828, line: 505, baseType: !102, size: 64, offset: 384)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3691, file: !828, line: 506, baseType: !3702, size: 64, align: 64, offset: 448)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !828, line: 445, size: 64, align: 64, elements: !3703)
!3703 = !{!3704, !3705}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3702, file: !828, line: 446, baseType: !7, size: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3702, file: !828, line: 447, baseType: !7, size: 32, offset: 32)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3619, file: !828, line: 798, baseType: !3707, size: 384, offset: 3072)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !828, line: 592, size: 384, elements: !3708)
!3708 = !{!3709, !3710, !3711, !3712, !3713, !3714, !3715}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3707, file: !828, line: 593, baseType: !346, size: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3707, file: !828, line: 594, baseType: !102, size: 64, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3707, file: !828, line: 595, baseType: !102, size: 64, offset: 192)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3707, file: !828, line: 596, baseType: !7, size: 32, offset: 256)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3707, file: !828, line: 597, baseType: !186, size: 16, offset: 288)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3707, file: !828, line: 598, baseType: !186, size: 16, offset: 304)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3707, file: !828, line: 600, baseType: !3716, size: 64, offset: 320)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3619, file: !828, line: 799, baseType: !3718, size: 1792, offset: 3456)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !828, line: 610, size: 1792, elements: !3719)
!3719 = !{!3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3804, !3805}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3718, file: !828, line: 611, baseType: !805, size: 192, align: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3718, file: !828, line: 618, baseType: !104, size: 64, offset: 192)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3718, file: !828, line: 619, baseType: !104, size: 64, offset: 256)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3718, file: !828, line: 620, baseType: !104, size: 64, offset: 320)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3718, file: !828, line: 621, baseType: !104, size: 64, offset: 384)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3718, file: !828, line: 622, baseType: !104, size: 64, offset: 448)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3718, file: !828, line: 629, baseType: !626, size: 64, offset: 512)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3718, file: !828, line: 630, baseType: !104, size: 64, offset: 576)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3718, file: !828, line: 631, baseType: !7, size: 32, offset: 640)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3718, file: !828, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3718, file: !828, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3718, file: !828, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3718, file: !828, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3718, file: !828, line: 662, baseType: !3734, size: 512, offset: 704)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !56, line: 118, size: 512, elements: !3735)
!3735 = !{!3736, !3744, !3745, !3750, !3800, !3801, !3802, !3803}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3734, file: !56, line: 119, baseType: !3737, size: 256)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3738, line: 9, size: 256, elements: !3739)
!3738 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3739 = !{!3740, !3741}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3737, file: !3738, line: 10, baseType: !805, size: 192, align: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3737, file: !3738, line: 11, baseType: !3742, size: 64, offset: 192)
!3742 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3743, line: 29, baseType: !626)
!3743 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3734, file: !56, line: 120, baseType: !3742, size: 64, offset: 256)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3734, file: !56, line: 121, baseType: !3746, size: 64, offset: 320)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!55, !3749}
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3734, file: !56, line: 122, baseType: !3751, size: 64, offset: 384)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !56, line: 159, size: 512, align: 512, elements: !3753)
!3753 = !{!3754, !3777, !3778, !3781, !3786, !3787, !3795, !3799}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3752, file: !56, line: 160, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !56, line: 215, size: 4608, align: 512, elements: !3757)
!3757 = !{!3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3756, file: !56, line: 216, baseType: !642, size: 32)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3756, file: !56, line: 217, baseType: !7, size: 32, offset: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3756, file: !56, line: 218, baseType: !7, size: 32, offset: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3756, file: !56, line: 219, baseType: !7, size: 32, offset: 96)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3756, file: !56, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3756, file: !56, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3756, file: !56, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3756, file: !56, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3756, file: !56, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3756, file: !56, line: 226, baseType: !7, size: 32, offset: 160)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3756, file: !56, line: 227, baseType: !186, size: 16, offset: 192)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3756, file: !56, line: 228, baseType: !186, size: 16, offset: 208)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3756, file: !56, line: 229, baseType: !7, size: 32, offset: 224)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3756, file: !56, line: 235, baseType: !3742, size: 64, offset: 256)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3756, file: !56, line: 236, baseType: !3749, size: 64, offset: 320)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3756, file: !56, line: 237, baseType: !3742, size: 64, offset: 384)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3756, file: !56, line: 238, baseType: !3749, size: 64, offset: 448)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3756, file: !56, line: 239, baseType: !3776, size: 4096, align: 512, offset: 512)
!3776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3752, size: 4096, align: 512, elements: !1594)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3752, file: !56, line: 161, baseType: !7, size: 32, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3752, file: !56, line: 162, baseType: !3779, size: 32, offset: 96)
!3779 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !127, line: 32, baseType: !3780)
!3780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !490, line: 96, baseType: !125)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3752, file: !56, line: 163, baseType: !3782, size: 32, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !231, line: 274, baseType: !3783)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !231, line: 274, size: 32, elements: !3784)
!3784 = !{!3785}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3783, file: !231, line: 274, baseType: !235, size: 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3752, file: !56, line: 164, baseType: !3749, size: 64, offset: 192)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3752, file: !56, line: 165, baseType: !3788, size: 128, offset: 256)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3738, line: 14, size: 128, elements: !3789)
!3789 = !{!3790}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3788, file: !3738, line: 15, baseType: !3791, size: 128)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !806, line: 26, size: 128, elements: !3792)
!3792 = !{!3793, !3794}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3791, file: !806, line: 27, baseType: !908, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !3791, file: !806, line: 28, baseType: !810, size: 64, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3752, file: !56, line: 166, baseType: !3796, size: 64, offset: 384)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!3742}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3752, file: !56, line: 167, baseType: !3742, size: 64, offset: 448)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3734, file: !56, line: 123, baseType: !202, size: 8, offset: 448)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3734, file: !56, line: 124, baseType: !202, size: 8, offset: 456)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3734, file: !56, line: 125, baseType: !202, size: 8, offset: 464)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3734, file: !56, line: 126, baseType: !202, size: 8, offset: 472)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3718, file: !828, line: 671, baseType: !3734, size: 512, offset: 1216)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3718, file: !828, line: 679, baseType: !3806, size: 64, offset: 1728)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3619, file: !828, line: 800, baseType: !3808, size: 64, offset: 5248)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3810)
!3810 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !828, line: 800, flags: DIFlagFwdDecl)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3619, file: !828, line: 809, baseType: !3812, size: 64, offset: 5312)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !828, line: 70, flags: DIFlagFwdDecl)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3619, file: !828, line: 825, baseType: !3815, size: 2048, align: 512, offset: 5632)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !828, line: 509, size: 2048, align: 512, elements: !3816)
!3816 = !{!3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3815, file: !828, line: 511, baseType: !104, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3815, file: !828, line: 512, baseType: !104, size: 64, offset: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3815, file: !828, line: 513, baseType: !104, size: 64, offset: 128)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3815, file: !828, line: 514, baseType: !104, size: 64, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3815, file: !828, line: 515, baseType: !104, size: 64, offset: 256)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3815, file: !828, line: 516, baseType: !104, size: 64, offset: 320)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3815, file: !828, line: 518, baseType: !104, size: 64, offset: 384)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3815, file: !828, line: 519, baseType: !104, size: 64, offset: 448)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3815, file: !828, line: 520, baseType: !626, size: 64, offset: 512)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3815, file: !828, line: 522, baseType: !104, size: 64, offset: 576)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3815, file: !828, line: 523, baseType: !104, size: 64, offset: 640)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3815, file: !828, line: 524, baseType: !626, size: 64, offset: 704)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3815, file: !828, line: 526, baseType: !626, size: 64, offset: 768)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3815, file: !828, line: 527, baseType: !104, size: 64, offset: 832)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3815, file: !828, line: 529, baseType: !104, size: 64, offset: 896)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3815, file: !828, line: 530, baseType: !104, size: 64, offset: 960)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3815, file: !828, line: 531, baseType: !104, size: 64, offset: 1024)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3815, file: !828, line: 532, baseType: !104, size: 64, offset: 1088)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3815, file: !828, line: 533, baseType: !104, size: 64, offset: 1152)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3815, file: !828, line: 535, baseType: !104, size: 64, offset: 1216)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3815, file: !828, line: 536, baseType: !104, size: 64, offset: 1280)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3815, file: !828, line: 537, baseType: !104, size: 64, offset: 1344)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3815, file: !828, line: 538, baseType: !104, size: 64, offset: 1408)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3815, file: !828, line: 539, baseType: !104, size: 64, offset: 1472)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3815, file: !828, line: 540, baseType: !104, size: 64, offset: 1536)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3815, file: !828, line: 541, baseType: !104, size: 64, offset: 1600)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3815, file: !828, line: 542, baseType: !104, size: 64, offset: 1664)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3815, file: !828, line: 543, baseType: !104, size: 64, offset: 1728)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3619, file: !828, line: 833, baseType: !7, size: 32, offset: 7680)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3619, file: !828, line: 836, baseType: !7, size: 32, offset: 7712)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3619, file: !828, line: 837, baseType: !125, size: 32, offset: 7744)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3619, file: !828, line: 838, baseType: !3849, size: 64, offset: 7808)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3851)
!3851 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !119, line: 19, baseType: !118)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3619, file: !828, line: 839, baseType: !3853, size: 64, offset: 7872)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3619, file: !828, line: 840, baseType: !3851, size: 64, offset: 7936)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3619, file: !828, line: 841, baseType: !100, size: 64, offset: 8000)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3619, file: !828, line: 843, baseType: !186, size: 16, offset: 8064)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3619, file: !828, line: 845, baseType: !186, size: 16, offset: 8080)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3619, file: !828, line: 848, baseType: !125, size: 32, offset: 8096)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3619, file: !828, line: 849, baseType: !3860, size: 32, offset: 8128)
!3860 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !828, line: 718, size: 32, elements: !3861)
!3861 = !{!3862, !3869}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3860, file: !828, line: 724, baseType: !3863, size: 32)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3860, file: !828, line: 719, size: 32, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3863, file: !828, line: 720, baseType: !202, size: 8)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3863, file: !828, line: 721, baseType: !202, size: 8, offset: 8)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3863, file: !828, line: 722, baseType: !202, size: 8, offset: 16)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3863, file: !828, line: 723, baseType: !202, size: 8, offset: 24)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3860, file: !828, line: 725, baseType: !110, size: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3619, file: !828, line: 850, baseType: !346, size: 128, offset: 8192)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3619, file: !828, line: 851, baseType: !3872, size: 64, offset: 8320)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !828, line: 60, flags: DIFlagFwdDecl)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3619, file: !828, line: 855, baseType: !102, size: 64, offset: 8384)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3619, file: !828, line: 856, baseType: !202, size: 8, offset: 8448)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3619, file: !828, line: 857, baseType: !202, size: 8, offset: 8456)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3619, file: !828, line: 858, baseType: !125, size: 32, offset: 8480)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3619, file: !828, line: 859, baseType: !346, size: 128, offset: 8512)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3619, file: !828, line: 860, baseType: !125, size: 32, offset: 8640)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3619, file: !828, line: 861, baseType: !346, size: 128, offset: 8704)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3619, file: !828, line: 873, baseType: !3882, size: 256, offset: 8832)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !828, line: 376, size: 256, elements: !3883)
!3883 = !{!3884, !3885, !3886, !3887}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3882, file: !828, line: 381, baseType: !102, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3882, file: !828, line: 384, baseType: !108, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3882, file: !828, line: 389, baseType: !108, size: 64, offset: 128)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3882, file: !828, line: 392, baseType: !108, size: 64, offset: 192)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3619, file: !828, line: 875, baseType: !346, size: 128, offset: 9088)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3619, file: !828, line: 877, baseType: !3579, size: 320, offset: 9216)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3619, file: !828, line: 878, baseType: !805, size: 192, align: 64, offset: 9536)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3619, file: !828, line: 881, baseType: !569, size: 64, offset: 9728)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3619, file: !828, line: 882, baseType: !569, size: 64, offset: 9792)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3619, file: !828, line: 884, baseType: !125, size: 32, offset: 9856)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3619, file: !828, line: 885, baseType: !125, size: 32, offset: 9888)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3619, file: !828, line: 886, baseType: !125, size: 32, offset: 9920)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3619, file: !828, line: 888, baseType: !125, size: 32, offset: 9952)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3619, file: !828, line: 890, baseType: !102, size: 64, offset: 9984)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3619, file: !828, line: 893, baseType: !7, size: 32, offset: 10048)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3619, file: !828, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3619, file: !828, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3619, file: !828, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3619, file: !828, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3619, file: !828, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3619, file: !828, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3619, file: !828, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3619, file: !828, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3619, file: !828, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3619, file: !828, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3619, file: !828, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3619, file: !828, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3619, file: !828, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3619, file: !828, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3619, file: !828, line: 969, baseType: !102, size: 64, offset: 10176)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3619, file: !828, line: 971, baseType: !3915, size: 448, offset: 10240)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !61, line: 25, size: 448, elements: !3916)
!3916 = !{!3917, !3918, !3923}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3915, file: !61, line: 26, baseType: !102, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3915, file: !61, line: 27, baseType: !3919, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!212, !3922}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, scope: !3915, file: !61, line: 28, baseType: !3924, size: 320, offset: 128)
!3924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3915, file: !61, line: 28, size: 320, elements: !3925)
!3925 = !{!3926, !3935, !3960}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3924, file: !61, line: 37, baseType: !3927, size: 320)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3924, file: !61, line: 30, size: 320, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3932, !3933, !3934}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3927, file: !61, line: 31, baseType: !109, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3927, file: !61, line: 32, baseType: !110, size: 32, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3927, file: !61, line: 33, baseType: !110, size: 32, offset: 96)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3927, file: !61, line: 34, baseType: !110, size: 32, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3927, file: !61, line: 35, baseType: !104, size: 64, offset: 192)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3927, file: !61, line: 36, baseType: !109, size: 64, offset: 256)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3924, file: !61, line: 47, baseType: !3936, size: 192)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3924, file: !61, line: 39, size: 192, elements: !3937)
!3937 = !{!3938, !3939, !3940, !3959}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3936, file: !61, line: 40, baseType: !3779, size: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3936, file: !61, line: 41, baseType: !60, size: 32, offset: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, scope: !3936, file: !61, line: 42, baseType: !3941, size: 64, offset: 64)
!3941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3936, file: !61, line: 42, size: 64, elements: !3942)
!3942 = !{!3943, !3951}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3941, file: !61, line: 43, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3946, line: 7, size: 128, elements: !3947)
!3946 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3947 = !{!3948, !3950}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3945, file: !3946, line: 8, baseType: !3949, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !490, line: 93, baseType: !542)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3945, file: !3946, line: 9, baseType: !542, size: 64, offset: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3941, file: !61, line: 44, baseType: !3952, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3954, line: 7, size: 64, elements: !3955)
!3954 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3955 = !{!3956, !3958}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3953, file: !3954, line: 8, baseType: !3957, size: 32)
!3957 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3954, line: 5, baseType: !682)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3953, file: !3954, line: 9, baseType: !682, size: 32, offset: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3936, file: !61, line: 46, baseType: !104, size: 64, offset: 128)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3924, file: !61, line: 55, baseType: !3961, size: 256)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3924, file: !61, line: 49, size: 256, elements: !3962)
!3962 = !{!3963, !3966, !3967, !3968, !3969}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3961, file: !61, line: 50, baseType: !3964, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !61, line: 14, flags: DIFlagFwdDecl)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3961, file: !61, line: 51, baseType: !125, size: 32, offset: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3961, file: !61, line: 52, baseType: !125, size: 32, offset: 96)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3961, file: !61, line: 53, baseType: !102, size: 64, offset: 128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3961, file: !61, line: 54, baseType: !102, size: 64, offset: 192)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3619, file: !828, line: 973, baseType: !3971, size: 32, offset: 10688)
!3971 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !127, line: 27, baseType: !3972)
!3972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !490, line: 28, baseType: !125)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3619, file: !828, line: 974, baseType: !3971, size: 32, offset: 10720)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3619, file: !828, line: 978, baseType: !102, size: 64, offset: 10752)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3619, file: !828, line: 987, baseType: !3618, size: 64, offset: 10816)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3619, file: !828, line: 990, baseType: !3618, size: 64, offset: 10880)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3619, file: !828, line: 995, baseType: !346, size: 128, offset: 10944)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3619, file: !828, line: 996, baseType: !346, size: 128, offset: 11072)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3619, file: !828, line: 997, baseType: !3618, size: 64, offset: 11200)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3619, file: !828, line: 1005, baseType: !346, size: 128, offset: 11264)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3619, file: !828, line: 1006, baseType: !346, size: 128, offset: 11392)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3619, file: !828, line: 1009, baseType: !3983, size: 64, offset: 11520)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !3985, line: 59, size: 768, elements: !3986)
!3985 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!3986 = !{!3987, !3988, !3989, !3990, !3995, !3996, !3997, !3998}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3984, file: !3985, line: 61, baseType: !1007, size: 32)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3984, file: !3985, line: 62, baseType: !7, size: 32, offset: 32)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3984, file: !3985, line: 63, baseType: !397, size: 32, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3984, file: !3985, line: 65, baseType: !3991, size: 256, offset: 128)
!3991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3992, size: 256, elements: !684)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !127, line: 194, size: 64, elements: !3993)
!3993 = !{!3994}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3992, file: !127, line: 195, baseType: !1273, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !3984, file: !3985, line: 66, baseType: !3992, size: 64, offset: 384)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !3984, file: !3985, line: 68, baseType: !3611, size: 192, offset: 448)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3984, file: !3985, line: 69, baseType: !560, size: 128, align: 64, offset: 640)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !3984, file: !3985, line: 70, baseType: !3999, offset: 768)
!3999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4000, elements: !779)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !3985, line: 54, size: 128, elements: !4001)
!4001 = !{!4002, !4003}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4000, file: !3985, line: 55, baseType: !125, size: 32)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4000, file: !3985, line: 56, baseType: !4004, size: 64, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !3985, line: 56, flags: DIFlagFwdDecl)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3619, file: !828, line: 1010, baseType: !4007, size: 512, offset: 11584)
!4007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1270, size: 512, elements: !684)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3619, file: !828, line: 1011, baseType: !346, size: 128, offset: 12096)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3619, file: !828, line: 1012, baseType: !346, size: 128, offset: 12224)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3619, file: !828, line: 1014, baseType: !1023, size: 64, offset: 12352)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3619, file: !828, line: 1017, baseType: !128, size: 64, offset: 12416)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3619, file: !828, line: 1020, baseType: !128, size: 64, offset: 12480)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3619, file: !828, line: 1023, baseType: !100, size: 64, offset: 12544)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3619, file: !828, line: 1025, baseType: !104, size: 64, offset: 12608)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3619, file: !828, line: 1026, baseType: !104, size: 64, offset: 12672)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3619, file: !828, line: 1031, baseType: !104, size: 64, offset: 12736)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3619, file: !828, line: 1032, baseType: !4018, size: 192, offset: 12800)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !828, line: 324, size: 192, elements: !4019)
!4019 = !{!4020, !4021, !4022}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4018, file: !828, line: 326, baseType: !104, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4018, file: !828, line: 327, baseType: !104, size: 64, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4018, file: !828, line: 328, baseType: !642, size: 32, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3619, file: !828, line: 1041, baseType: !102, size: 64, offset: 12992)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3619, file: !828, line: 1042, baseType: !102, size: 64, offset: 13056)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3619, file: !828, line: 1045, baseType: !104, size: 64, offset: 13120)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3619, file: !828, line: 1048, baseType: !104, size: 64, offset: 13184)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3619, file: !828, line: 1051, baseType: !102, size: 64, offset: 13248)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3619, file: !828, line: 1052, baseType: !102, size: 64, offset: 13312)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3619, file: !828, line: 1055, baseType: !4030, size: 640, offset: 13376)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4031, line: 132, size: 640, elements: !4032)
!4031 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4032 = !{!4033, !4039, !4040}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4030, file: !4031, line: 133, baseType: !4034, size: 576)
!4034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4035, size: 576, elements: !459)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4031, line: 117, size: 192, elements: !4036)
!4036 = !{!4037, !4038}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4035, file: !4031, line: 118, baseType: !104, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4035, file: !4031, line: 119, baseType: !3788, size: 128, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4030, file: !4031, line: 134, baseType: !7, size: 32, offset: 576)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4030, file: !4031, line: 135, baseType: !7, size: 32, offset: 608)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3619, file: !828, line: 1058, baseType: !4042, size: 448, offset: 14016)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4031, line: 144, size: 448, elements: !4043)
!4043 = !{!4044, !4045, !4046}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4042, file: !4031, line: 145, baseType: !560, size: 128, align: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4042, file: !4031, line: 146, baseType: !703, size: 256, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4042, file: !4031, line: 147, baseType: !7, size: 32, offset: 384)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3619, file: !828, line: 1064, baseType: !4048, size: 64, offset: 14464)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4050)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !4051, line: 110, size: 1472, elements: !4052)
!4051 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!4052 = !{!4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4069, !4070, !4071, !4072, !4073, !4074, !4181, !4182, !4183, !4184, !4185, !4208, !4209, !4213, !4221}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4050, file: !4051, line: 111, baseType: !620, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4050, file: !4051, line: 112, baseType: !875, size: 32, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4050, file: !4051, line: 113, baseType: !882, size: 32, offset: 96)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !4050, file: !4051, line: 114, baseType: !875, size: 32, offset: 128)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !4050, file: !4051, line: 115, baseType: !882, size: 32, offset: 160)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !4050, file: !4051, line: 116, baseType: !875, size: 32, offset: 192)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !4050, file: !4051, line: 117, baseType: !882, size: 32, offset: 224)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !4050, file: !4051, line: 118, baseType: !875, size: 32, offset: 256)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !4050, file: !4051, line: 119, baseType: !882, size: 32, offset: 288)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !4050, file: !4051, line: 120, baseType: !7, size: 32, offset: 320)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !4050, file: !4051, line: 121, baseType: !4064, size: 64, offset: 384)
!4064 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !4065, line: 24, baseType: !4066)
!4065 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4065, line: 24, size: 64, elements: !4067)
!4067 = !{!4068}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4066, file: !4065, line: 24, baseType: !104, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !4050, file: !4051, line: 122, baseType: !4064, size: 64, offset: 448)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !4050, file: !4051, line: 123, baseType: !4064, size: 64, offset: 512)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !4050, file: !4051, line: 124, baseType: !4064, size: 64, offset: 576)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !4050, file: !4051, line: 125, baseType: !4064, size: 64, offset: 640)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !4050, file: !4051, line: 127, baseType: !141, size: 8, offset: 704)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !4050, file: !4051, line: 129, baseType: !4075, size: 64, offset: 768)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !4077, line: 195, size: 1728, elements: !4078)
!4077 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!4078 = !{!4079, !4080, !4083, !4088, !4089, !4092, !4093, !4100, !4101, !4102, !4103, !4105, !4106, !4107, !4108, !4109, !4145, !4166}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4076, file: !4077, line: 196, baseType: !1007, size: 32)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4076, file: !4077, line: 197, baseType: !4081, size: 32, offset: 32)
!4081 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !4077, line: 28, baseType: !4082)
!4082 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !127, line: 104, baseType: !682)
!4083 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !4077, line: 198, baseType: !4084, size: 192, offset: 64)
!4084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !4077, line: 198, size: 192, elements: !4085)
!4085 = !{!4086, !4087}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !4084, file: !4077, line: 199, baseType: !346, size: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !4084, file: !4077, line: 200, baseType: !805, size: 192, align: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !4076, file: !4077, line: 205, baseType: !631, size: 320, offset: 256)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !4076, file: !4077, line: 206, baseType: !4090, size: 64, offset: 576)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !4077, line: 206, flags: DIFlagFwdDecl)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !4076, file: !4077, line: 207, baseType: !100, size: 64, offset: 640)
!4093 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !4077, line: 208, baseType: !4094, size: 64, offset: 704)
!4094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !4077, line: 208, size: 64, elements: !4095)
!4095 = !{!4096, !4099}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !4094, file: !4077, line: 209, baseType: !4097, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !4098, line: 8, baseType: !627)
!4098 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !4094, file: !4077, line: 210, baseType: !4097, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !4076, file: !4077, line: 212, baseType: !4097, size: 64, offset: 768)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4076, file: !4077, line: 213, baseType: !875, size: 32, offset: 832)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4076, file: !4077, line: 214, baseType: !882, size: 32, offset: 864)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4076, file: !4077, line: 215, baseType: !4104, size: 32, offset: 896)
!4104 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !4077, line: 31, baseType: !2271)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !4076, file: !4077, line: 216, baseType: !186, size: 16, offset: 928)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !4076, file: !4077, line: 217, baseType: !186, size: 16, offset: 944)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4076, file: !4077, line: 221, baseType: !743, size: 16, offset: 960)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4076, file: !4077, line: 228, baseType: !102, size: 64, offset: 1024)
!4109 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !4077, line: 245, baseType: !4110, size: 320, offset: 1088)
!4110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !4077, line: 245, size: 320, elements: !4111)
!4111 = !{!4112, !4137}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !4110, file: !4077, line: 246, baseType: !4113, size: 320)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !4077, line: 114, size: 320, elements: !4114)
!4114 = !{!4115, !4116, !4126, !4129, !4136}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4113, file: !4077, line: 116, baseType: !102, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, scope: !4113, file: !4077, line: 117, baseType: !4117, size: 64, offset: 64)
!4117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4113, file: !4077, line: 117, size: 64, elements: !4118)
!4118 = !{!4119, !4125}
!4119 = !DIDerivedType(tag: DW_TAG_member, scope: !4117, file: !4077, line: 118, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4117, file: !4077, line: 118, size: 64, elements: !4121)
!4121 = !{!4122, !4123}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !4120, file: !4077, line: 120, baseType: !184, size: 16)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4120, file: !4077, line: 121, baseType: !4124, size: 48, offset: 16)
!4124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 48, elements: !1425)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4117, file: !4077, line: 127, baseType: !102, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4113, file: !4077, line: 129, baseType: !4127, size: 64, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !4077, line: 102, flags: DIFlagFwdDecl)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !4113, file: !4077, line: 130, baseType: !4130, size: 64, offset: 192)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !4077, line: 108, size: 192, elements: !4132)
!4132 = !{!4133, !4134, !4135}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4131, file: !4077, line: 109, baseType: !560, size: 128, align: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4131, file: !4077, line: 110, baseType: !1007, size: 32, offset: 128)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !4131, file: !4077, line: 111, baseType: !198, size: 8, offset: 160)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4113, file: !4077, line: 131, baseType: !243, size: 64, offset: 256)
!4137 = !DIDerivedType(tag: DW_TAG_member, scope: !4110, file: !4077, line: 247, baseType: !4138, size: 320)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4110, file: !4077, line: 247, size: 320, elements: !4139)
!4139 = !{!4140, !4141, !4142, !4143, !4144}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4138, file: !4077, line: 248, baseType: !102, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !4138, file: !4077, line: 249, baseType: !102, size: 64, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4138, file: !4077, line: 250, baseType: !4127, size: 64, offset: 128)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !4138, file: !4077, line: 251, baseType: !4130, size: 64, offset: 192)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4138, file: !4077, line: 252, baseType: !260, size: 64, offset: 256)
!4145 = !DIDerivedType(tag: DW_TAG_member, scope: !4076, file: !4077, line: 260, baseType: !4146, size: 256, offset: 1408)
!4146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4076, file: !4077, line: 260, size: 256, elements: !4147)
!4147 = !{!4148, !4154}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !4146, file: !4077, line: 261, baseType: !4149, size: 256)
!4149 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !4077, line: 134, size: 256, elements: !4150)
!4150 = !{!4151, !4152}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !4149, file: !4077, line: 135, baseType: !100, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4149, file: !4077, line: 136, baseType: !4153, size: 256)
!4153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 256, elements: !684)
!4154 = !DIDerivedType(tag: DW_TAG_member, scope: !4146, file: !4077, line: 262, baseType: !4155, size: 256)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4146, file: !4077, line: 262, size: 256, elements: !4156)
!4156 = !{!4157, !4158}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !4155, file: !4077, line: 264, baseType: !346, size: 128)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !4155, file: !4077, line: 265, baseType: !4159, size: 128, offset: 128)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !4160, line: 22, size: 128, elements: !4161)
!4160 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!4161 = !{!4162, !4165}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4159, file: !4160, line: 23, baseType: !4163, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !4160, line: 23, flags: DIFlagFwdDecl)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !4159, file: !4160, line: 24, baseType: !102, size: 64, offset: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !4076, file: !4077, line: 280, baseType: !4167, size: 64, offset: 1664)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !4077, line: 176, size: 192, elements: !4169)
!4169 = !{!4170, !4179, !4180}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !4168, file: !4077, line: 177, baseType: !4171, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !4077, line: 171, baseType: !4172)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!125, !4075, !4175, !4177, !4075}
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4128)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4149)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4168, file: !4077, line: 178, baseType: !4075, size: 64, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !4168, file: !4077, line: 179, baseType: !4127, size: 64, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !4050, file: !4051, line: 130, baseType: !4075, size: 64, offset: 832)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !4050, file: !4051, line: 131, baseType: !4075, size: 64, offset: 896)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !4050, file: !4051, line: 132, baseType: !4075, size: 64, offset: 960)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !4050, file: !4051, line: 135, baseType: !100, size: 64, offset: 1024)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !4050, file: !4051, line: 137, baseType: !4186, size: 64, offset: 1088)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !4188, line: 14, size: 1088, elements: !4189)
!4188 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!4189 = !{!4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4187, file: !4188, line: 15, baseType: !1007, size: 32)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !4187, file: !4188, line: 17, baseType: !674, size: 320, offset: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !4187, file: !4188, line: 19, baseType: !102, size: 64, offset: 384)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !4187, file: !4188, line: 20, baseType: !620, size: 64, offset: 448)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !4187, file: !4188, line: 23, baseType: !1270, size: 128, offset: 512)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4187, file: !4188, line: 24, baseType: !875, size: 32, offset: 640)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !4187, file: !4188, line: 29, baseType: !620, size: 64, offset: 704)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !4187, file: !4188, line: 36, baseType: !4198, size: 320, offset: 768)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !4199, line: 15, size: 320, elements: !4200)
!4199 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!4200 = !{!4201, !4202, !4203, !4204, !4205, !4206, !4207}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4198, file: !4199, line: 16, baseType: !642, size: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4198, file: !4199, line: 18, baseType: !125, size: 32, offset: 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !4198, file: !4199, line: 19, baseType: !125, size: 32, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !4198, file: !4199, line: 20, baseType: !125, size: 32, offset: 96)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !4198, file: !4199, line: 21, baseType: !125, size: 32, offset: 128)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !4198, file: !4199, line: 22, baseType: !102, size: 64, offset: 192)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4198, file: !4199, line: 23, baseType: !102, size: 64, offset: 256)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4050, file: !4051, line: 138, baseType: !750, size: 64, offset: 1152)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4050, file: !4051, line: 139, baseType: !4210, size: 64, offset: 1216)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !4212, line: 16, flags: DIFlagFwdDecl)
!4212 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !4050, file: !4051, line: 140, baseType: !4214, size: 64, offset: 1280)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !4051, line: 25, size: 64, elements: !4216)
!4216 = !{!4217, !4218, !4219}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !4215, file: !4051, line: 26, baseType: !417, size: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !4215, file: !4051, line: 27, baseType: !125, size: 32, offset: 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4215, file: !4051, line: 28, baseType: !4220, offset: 64)
!4220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !882, elements: !779)
!4221 = !DIDerivedType(tag: DW_TAG_member, scope: !4050, file: !4051, line: 142, baseType: !4222, size: 128, offset: 1344)
!4222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4050, file: !4051, line: 142, size: 128, elements: !4223)
!4223 = !{!4224, !4225}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !4222, file: !4051, line: 143, baseType: !125, size: 32)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4222, file: !4051, line: 144, baseType: !560, size: 128, align: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3619, file: !828, line: 1067, baseType: !4048, size: 64, offset: 14528)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3619, file: !828, line: 1070, baseType: !4048, size: 64, offset: 14592)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3619, file: !828, line: 1074, baseType: !4075, size: 64, offset: 14656)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3619, file: !828, line: 1084, baseType: !167, size: 128, offset: 14720)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3619, file: !828, line: 1086, baseType: !4231, size: 64, offset: 14848)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !828, line: 55, flags: DIFlagFwdDecl)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3619, file: !828, line: 1089, baseType: !4234, size: 64, offset: 14912)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4235, line: 12, size: 64, elements: !4236)
!4235 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4236 = !{!4237}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4234, file: !4235, line: 13, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4235, line: 8, flags: DIFlagFwdDecl)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3619, file: !828, line: 1090, baseType: !4241, size: 128, offset: 14976)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4242, line: 13, size: 128, elements: !4243)
!4242 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4243 = !{!4244}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4241, file: !4242, line: 14, baseType: !346, size: 128)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3619, file: !828, line: 1097, baseType: !4246, size: 64, offset: 15104)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !828, line: 50, flags: DIFlagFwdDecl)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3619, file: !828, line: 1100, baseType: !4249, size: 64, offset: 15168)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !828, line: 1100, flags: DIFlagFwdDecl)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3619, file: !828, line: 1103, baseType: !4252, size: 64, offset: 15232)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !828, line: 53, flags: DIFlagFwdDecl)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3619, file: !828, line: 1107, baseType: !4255, size: 64, offset: 15296)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !828, line: 56, flags: DIFlagFwdDecl)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3619, file: !828, line: 1110, baseType: !4258, size: 64, offset: 15360)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4260, line: 93, size: 8768, elements: !4261)
!4260 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4261 = !{!4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4309, !4318, !4319, !4321, !4322, !4323, !4326, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4368, !4369, !4376, !4386, !4389, !4390, !4393, !4394, !4395, !4396, !4397, !4398}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4259, file: !4260, line: 94, baseType: !1007, size: 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4259, file: !4260, line: 95, baseType: !417, size: 32, offset: 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4259, file: !4260, line: 96, baseType: !125, size: 32, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4259, file: !4260, line: 97, baseType: !125, size: 32, offset: 96)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4259, file: !4260, line: 98, baseType: !346, size: 128, offset: 128)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4259, file: !4260, line: 100, baseType: !3611, size: 192, offset: 256)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4259, file: !4260, line: 103, baseType: !3618, size: 64, offset: 448)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4259, file: !4260, line: 106, baseType: !4270, size: 192, offset: 512)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4212, line: 32, size: 192, elements: !4271)
!4271 = !{!4272, !4273}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4270, file: !4212, line: 33, baseType: !346, size: 128)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4270, file: !4212, line: 34, baseType: !4274, size: 64, offset: 128)
!4274 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4275, line: 25, baseType: !4276)
!4275 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4275, line: 23, size: 64, elements: !4277)
!4277 = !{!4278}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4276, file: !4275, line: 24, baseType: !122, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4259, file: !4260, line: 109, baseType: !3992, size: 64, offset: 704)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4259, file: !4260, line: 112, baseType: !125, size: 32, offset: 768)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4259, file: !4260, line: 114, baseType: !125, size: 32, offset: 800)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4259, file: !4260, line: 115, baseType: !3618, size: 64, offset: 832)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4259, file: !4260, line: 118, baseType: !125, size: 32, offset: 896)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4259, file: !4260, line: 119, baseType: !7, size: 32, offset: 928)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4259, file: !4260, line: 121, baseType: !4286, size: 64, offset: 960)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4260, line: 80, size: 448, elements: !4288)
!4288 = !{!4289, !4290, !4296}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4287, file: !4260, line: 81, baseType: !417, size: 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4287, file: !4260, line: 82, baseType: !4291, size: 128, offset: 64)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4260, line: 75, size: 128, elements: !4292)
!4292 = !{!4293, !4294}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4291, file: !4260, line: 76, baseType: !3618, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4291, file: !4260, line: 77, baseType: !4295, size: 64, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4287, file: !4260, line: 83, baseType: !1024, size: 256, offset: 192)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4259, file: !4260, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4259, file: !4260, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4259, file: !4260, line: 138, baseType: !7, size: 32, offset: 1056)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4259, file: !4260, line: 139, baseType: !346, size: 128, offset: 1088)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4259, file: !4260, line: 142, baseType: !3734, size: 512, offset: 1216)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4259, file: !4260, line: 143, baseType: !3742, size: 64, offset: 1728)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4259, file: !4260, line: 150, baseType: !4304, size: 256, offset: 1792)
!4304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4305, size: 256, elements: !227)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4260, line: 38, size: 128, elements: !4306)
!4306 = !{!4307, !4308}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4305, file: !4260, line: 39, baseType: !104, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4305, file: !4260, line: 40, baseType: !104, size: 64, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4259, file: !4260, line: 156, baseType: !4310, size: 192, offset: 2048)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4260, line: 66, size: 192, elements: !4311)
!4311 = !{!4312}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4310, file: !4260, line: 67, baseType: !4313, size: 192)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4260, line: 47, size: 192, elements: !4314)
!4314 = !{!4315, !4316, !4317}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4313, file: !4260, line: 48, baseType: !622, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4313, file: !4260, line: 49, baseType: !622, size: 64, offset: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4313, file: !4260, line: 50, baseType: !622, size: 64, offset: 128)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4259, file: !4260, line: 160, baseType: !4030, size: 640, offset: 2240)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4259, file: !4260, line: 163, baseType: !4320, size: 256, offset: 2880)
!4320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3983, size: 256, elements: !684)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4259, file: !4260, line: 169, baseType: !3983, size: 64, offset: 3136)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4259, file: !4260, line: 172, baseType: !125, size: 32, offset: 3200)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4259, file: !4260, line: 174, baseType: !4324, size: 64, offset: 3264)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4260, line: 174, flags: DIFlagFwdDecl)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4259, file: !4260, line: 185, baseType: !4327, size: 64, offset: 3328)
!4327 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !231, line: 860, baseType: !4328)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !231, line: 853, size: 64, elements: !4329)
!4329 = !{!4330, !4335}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4328, file: !231, line: 858, baseType: !4331, size: 32)
!4331 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !231, line: 275, baseType: !4332)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !231, line: 275, size: 32, elements: !4333)
!4333 = !{!4334}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4332, file: !231, line: 275, baseType: !235, size: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4328, file: !231, line: 859, baseType: !397, size: 32, offset: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4259, file: !4260, line: 186, baseType: !104, size: 64, offset: 3392)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4259, file: !4260, line: 186, baseType: !104, size: 64, offset: 3456)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4259, file: !4260, line: 186, baseType: !104, size: 64, offset: 3520)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4259, file: !4260, line: 186, baseType: !104, size: 64, offset: 3584)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4259, file: !4260, line: 187, baseType: !104, size: 64, offset: 3648)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4259, file: !4260, line: 188, baseType: !104, size: 64, offset: 3712)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4259, file: !4260, line: 189, baseType: !4018, size: 192, offset: 3776)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4259, file: !4260, line: 190, baseType: !102, size: 64, offset: 3968)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4259, file: !4260, line: 190, baseType: !102, size: 64, offset: 4032)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4259, file: !4260, line: 190, baseType: !102, size: 64, offset: 4096)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4259, file: !4260, line: 190, baseType: !102, size: 64, offset: 4160)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4259, file: !4260, line: 191, baseType: !102, size: 64, offset: 4224)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4259, file: !4260, line: 191, baseType: !102, size: 64, offset: 4288)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4259, file: !4260, line: 191, baseType: !102, size: 64, offset: 4352)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4259, file: !4260, line: 191, baseType: !102, size: 64, offset: 4416)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4259, file: !4260, line: 192, baseType: !102, size: 64, offset: 4480)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4259, file: !4260, line: 192, baseType: !102, size: 64, offset: 4544)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4259, file: !4260, line: 192, baseType: !102, size: 64, offset: 4608)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4259, file: !4260, line: 192, baseType: !102, size: 64, offset: 4672)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4259, file: !4260, line: 193, baseType: !102, size: 64, offset: 4736)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4259, file: !4260, line: 193, baseType: !102, size: 64, offset: 4800)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4259, file: !4260, line: 194, baseType: !4358, size: 448, offset: 4864)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4359, line: 12, size: 448, elements: !4360)
!4359 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4360 = !{!4361, !4362, !4363, !4364, !4365, !4366, !4367}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4358, file: !4359, line: 15, baseType: !104, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4358, file: !4359, line: 17, baseType: !104, size: 64, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4358, file: !4359, line: 19, baseType: !104, size: 64, offset: 128)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4358, file: !4359, line: 21, baseType: !104, size: 64, offset: 192)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4358, file: !4359, line: 29, baseType: !104, size: 64, offset: 256)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4358, file: !4359, line: 35, baseType: !104, size: 64, offset: 320)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4358, file: !4359, line: 44, baseType: !104, size: 64, offset: 384)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4259, file: !4260, line: 202, baseType: !108, size: 64, offset: 5312)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4259, file: !4260, line: 213, baseType: !4370, size: 2048, offset: 5376)
!4370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4371, size: 2048, elements: !169)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4372, line: 43, size: 128, elements: !4373)
!4372 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4373 = !{!4374, !4375}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4371, file: !4372, line: 44, baseType: !504, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4371, file: !4372, line: 45, baseType: !504, size: 64, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4259, file: !4260, line: 216, baseType: !4377, size: 448, offset: 7424)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4260, line: 30, size: 448, elements: !4378)
!4378 = !{!4379, !4380, !4381, !4382, !4383, !4384, !4385}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4377, file: !4260, line: 31, baseType: !125, size: 32)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4377, file: !4260, line: 32, baseType: !212, size: 64, offset: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4377, file: !4260, line: 33, baseType: !102, size: 64, offset: 128)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4377, file: !4260, line: 34, baseType: !104, size: 64, offset: 192)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4377, file: !4260, line: 34, baseType: !104, size: 64, offset: 256)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4377, file: !4260, line: 35, baseType: !102, size: 64, offset: 320)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4377, file: !4260, line: 35, baseType: !102, size: 64, offset: 384)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4259, file: !4260, line: 219, baseType: !4387, size: 64, offset: 7872)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4260, line: 219, flags: DIFlagFwdDecl)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4259, file: !4260, line: 222, baseType: !7, size: 32, offset: 7936)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4259, file: !4260, line: 223, baseType: !4391, size: 64, offset: 8000)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4260, line: 223, flags: DIFlagFwdDecl)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4259, file: !4260, line: 230, baseType: !198, size: 8, offset: 8064)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4259, file: !4260, line: 231, baseType: !743, size: 16, offset: 8080)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4259, file: !4260, line: 232, baseType: !743, size: 16, offset: 8096)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4259, file: !4260, line: 234, baseType: !569, size: 64, offset: 8128)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4259, file: !4260, line: 237, baseType: !703, size: 256, offset: 8192)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4259, file: !4260, line: 243, baseType: !631, size: 320, offset: 8448)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3619, file: !828, line: 1111, baseType: !4400, size: 64, offset: 15424)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4260, line: 20, size: 16640, elements: !4402)
!4402 = !{!4403, !4404, !4405, !4406}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4401, file: !4260, line: 21, baseType: !397, size: 32)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4401, file: !4260, line: 22, baseType: !1007, size: 32, offset: 32)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4401, file: !4260, line: 23, baseType: !3611, size: 192, offset: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4401, file: !4260, line: 24, baseType: !4407, size: 16384, offset: 256)
!4407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4408, size: 16384, elements: !173)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4212, line: 51, size: 256, elements: !4409)
!4409 = !{!4410}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4408, file: !4212, line: 52, baseType: !4411, size: 256)
!4411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4212, line: 37, size: 256, elements: !4412)
!4412 = !{!4413, !4418, !4419, !4423}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4411, file: !4212, line: 39, baseType: !4414, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4415, line: 83, baseType: !4416)
!4415 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4415, line: 82, baseType: !1737)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4411, file: !4212, line: 40, baseType: !102, size: 64, offset: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4411, file: !4212, line: 46, baseType: !4420, size: 64, offset: 128)
!4420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4415, line: 86, baseType: !4421)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4415, line: 85, baseType: !265)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4411, file: !4212, line: 48, baseType: !4274, size: 64, offset: 192)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3619, file: !828, line: 1112, baseType: !4274, size: 64, offset: 15488)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3619, file: !828, line: 1113, baseType: !4274, size: 64, offset: 15552)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3619, file: !828, line: 1115, baseType: !4274, size: 64, offset: 15616)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3619, file: !828, line: 1116, baseType: !4270, size: 192, offset: 15680)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3619, file: !828, line: 1117, baseType: !102, size: 64, offset: 15872)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3619, file: !828, line: 1118, baseType: !502, size: 64, offset: 15936)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3619, file: !828, line: 1119, baseType: !7, size: 32, offset: 16000)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3619, file: !828, line: 1121, baseType: !563, size: 64, offset: 16064)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3619, file: !828, line: 1125, baseType: !4433, size: 64, offset: 16128)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !828, line: 43, flags: DIFlagFwdDecl)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3619, file: !828, line: 1127, baseType: !875, size: 32, offset: 16192)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3619, file: !828, line: 1128, baseType: !7, size: 32, offset: 16224)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3619, file: !828, line: 1130, baseType: !4438, size: 128, offset: 16256)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4439, line: 37, size: 128, elements: !4440)
!4439 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4440 = !{!4441, !4442, !4443}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4438, file: !4439, line: 38, baseType: !125, size: 32)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4438, file: !4439, line: 39, baseType: !417, size: 32, offset: 32)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4438, file: !4439, line: 40, baseType: !4444, size: 64, offset: 64)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4439, line: 24, flags: DIFlagFwdDecl)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3619, file: !828, line: 1131, baseType: !4447, size: 256, offset: 16384)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4448, line: 12, size: 256, elements: !4449)
!4448 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4449 = !{!4450, !4451, !4452, !4453}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4447, file: !4448, line: 13, baseType: !260, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4447, file: !4448, line: 14, baseType: !102, size: 64, offset: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4447, file: !4448, line: 15, baseType: !102, size: 64, offset: 128)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4447, file: !4448, line: 16, baseType: !198, size: 8, offset: 192)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3619, file: !828, line: 1134, baseType: !104, size: 64, offset: 16640)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3619, file: !828, line: 1135, baseType: !104, size: 64, offset: 16704)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3619, file: !828, line: 1138, baseType: !397, size: 32, offset: 16768)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3619, file: !828, line: 1141, baseType: !642, size: 32, offset: 16800)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3619, file: !828, line: 1143, baseType: !4459, size: 64, offset: 16832)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !828, line: 735, size: 64, elements: !4460)
!4460 = !{!4461}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4459, file: !828, line: 736, baseType: !4462, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3619, file: !828, line: 1147, baseType: !3791, size: 128, offset: 16896)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3619, file: !828, line: 1149, baseType: !3618, size: 64, offset: 17024)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3619, file: !828, line: 1151, baseType: !4466, size: 64, offset: 17088)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !828, line: 1151, flags: DIFlagFwdDecl)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3619, file: !828, line: 1188, baseType: !100, size: 64, offset: 17152)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3619, file: !828, line: 1191, baseType: !4470, size: 64, offset: 17216)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !828, line: 44, flags: DIFlagFwdDecl)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3619, file: !828, line: 1194, baseType: !4473, size: 64, offset: 17280)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !828, line: 45, flags: DIFlagFwdDecl)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3619, file: !828, line: 1197, baseType: !4476, size: 64, offset: 17344)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !828, line: 61, flags: DIFlagFwdDecl)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3619, file: !828, line: 1199, baseType: !4479, size: 64, offset: 17408)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !828, line: 52, flags: DIFlagFwdDecl)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3619, file: !828, line: 1202, baseType: !4482, size: 64, offset: 17472)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !828, line: 48, flags: DIFlagFwdDecl)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3619, file: !828, line: 1205, baseType: !102, size: 64, offset: 17536)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3619, file: !828, line: 1206, baseType: !4486, size: 64, offset: 17600)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4212, line: 14, baseType: !4488)
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4212, line: 12, size: 384, elements: !4489)
!4489 = !{!4490}
!4490 = !DIDerivedType(tag: DW_TAG_member, scope: !4488, file: !4212, line: 13, baseType: !4491, size: 384)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4488, file: !4212, line: 13, size: 384, elements: !4492)
!4492 = !{!4493, !4494, !4495, !4496}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4491, file: !4212, line: 13, baseType: !125, size: 32)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4491, file: !4212, line: 13, baseType: !125, size: 32, offset: 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4491, file: !4212, line: 13, baseType: !125, size: 32, offset: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4491, file: !4212, line: 13, baseType: !4497, size: 256, offset: 128)
!4497 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4498, line: 37, size: 256, elements: !4499)
!4498 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4499 = !{!4500, !4505, !4518, !4524, !4533, !4559, !4564}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4497, file: !4498, line: 42, baseType: !4501, size: 64)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4497, file: !4498, line: 39, size: 64, elements: !4502)
!4502 = !{!4503, !4504}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4501, file: !4498, line: 40, baseType: !3972, size: 32)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4501, file: !4498, line: 41, baseType: !880, size: 32, offset: 32)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4497, file: !4498, line: 50, baseType: !4506, size: 192)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4497, file: !4498, line: 45, size: 192, elements: !4507)
!4507 = !{!4508, !4510, !4511, !4517}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4506, file: !4498, line: 46, baseType: !4509, size: 32)
!4509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !490, line: 95, baseType: !125)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4506, file: !4498, line: 47, baseType: !125, size: 32, offset: 32)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4506, file: !4498, line: 48, baseType: !4512, size: 64, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4498, line: 11, baseType: !4513)
!4513 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4498, line: 8, size: 64, elements: !4514)
!4514 = !{!4515, !4516}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4513, file: !4498, line: 9, baseType: !125, size: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4513, file: !4498, line: 10, baseType: !100, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4506, file: !4498, line: 49, baseType: !125, size: 32, offset: 128)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4497, file: !4498, line: 57, baseType: !4519, size: 128)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4497, file: !4498, line: 53, size: 128, elements: !4520)
!4520 = !{!4521, !4522, !4523}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4519, file: !4498, line: 54, baseType: !3972, size: 32)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4519, file: !4498, line: 55, baseType: !880, size: 32, offset: 32)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4519, file: !4498, line: 56, baseType: !4512, size: 64, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4497, file: !4498, line: 66, baseType: !4525, size: 256)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4497, file: !4498, line: 60, size: 256, elements: !4526)
!4526 = !{!4527, !4528, !4529, !4530, !4532}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4525, file: !4498, line: 61, baseType: !3972, size: 32)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4525, file: !4498, line: 62, baseType: !880, size: 32, offset: 32)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4525, file: !4498, line: 63, baseType: !125, size: 32, offset: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4525, file: !4498, line: 64, baseType: !4531, size: 64, offset: 128)
!4531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !490, line: 94, baseType: !491)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4525, file: !4498, line: 65, baseType: !4531, size: 64, offset: 192)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4497, file: !4498, line: 105, baseType: !4534, size: 256)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4497, file: !4498, line: 69, size: 256, elements: !4535)
!4535 = !{!4536, !4537}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4534, file: !4498, line: 70, baseType: !100, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, scope: !4534, file: !4498, line: 79, baseType: !4538, size: 192, offset: 64)
!4538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4534, file: !4498, line: 79, size: 192, elements: !4539)
!4539 = !{!4540, !4541, !4542, !4548, !4553}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4538, file: !4498, line: 81, baseType: !125, size: 32)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4538, file: !4498, line: 86, baseType: !743, size: 16)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4538, file: !4498, line: 92, baseType: !4543, size: 192)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4538, file: !4498, line: 88, size: 192, elements: !4544)
!4544 = !{!4545, !4546, !4547}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4543, file: !4498, line: 89, baseType: !1593, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4543, file: !4498, line: 90, baseType: !100, size: 64, offset: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4543, file: !4498, line: 91, baseType: !100, size: 64, offset: 128)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4538, file: !4498, line: 97, baseType: !4549, size: 96)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4538, file: !4498, line: 94, size: 96, elements: !4550)
!4550 = !{!4551, !4552}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4549, file: !4498, line: 95, baseType: !1593, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4549, file: !4498, line: 96, baseType: !111, size: 32, offset: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4538, file: !4498, line: 103, baseType: !4554, size: 128)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4538, file: !4498, line: 99, size: 128, elements: !4555)
!4555 = !{!4556, !4557, !4558}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4554, file: !4498, line: 100, baseType: !102, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4554, file: !4498, line: 101, baseType: !111, size: 32, offset: 64)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4554, file: !4498, line: 102, baseType: !111, size: 32, offset: 96)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4497, file: !4498, line: 111, baseType: !4560, size: 128)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4497, file: !4498, line: 108, size: 128, elements: !4561)
!4561 = !{!4562, !4563}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4560, file: !4498, line: 109, baseType: !212, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4560, file: !4498, line: 110, baseType: !125, size: 32, offset: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4497, file: !4498, line: 118, baseType: !4565, size: 128)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4497, file: !4498, line: 114, size: 128, elements: !4566)
!4566 = !{!4567, !4568, !4569}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4565, file: !4498, line: 115, baseType: !100, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4565, file: !4498, line: 116, baseType: !125, size: 32, offset: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4565, file: !4498, line: 117, baseType: !7, size: 32, offset: 96)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3619, file: !828, line: 1208, baseType: !4358, size: 448, offset: 17664)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3619, file: !828, line: 1215, baseType: !104, size: 64, offset: 18112)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3619, file: !828, line: 1217, baseType: !104, size: 64, offset: 18176)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3619, file: !828, line: 1219, baseType: !104, size: 64, offset: 18240)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3619, file: !828, line: 1223, baseType: !4575, size: 64, offset: 18304)
!4575 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4576, line: 99, baseType: !4577)
!4576 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4576, line: 99, size: 64, elements: !4578)
!4578 = !{!4579}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4577, file: !4576, line: 99, baseType: !122, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3619, file: !828, line: 1225, baseType: !4331, size: 32, offset: 18368)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3619, file: !828, line: 1226, baseType: !125, size: 32, offset: 18400)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3619, file: !828, line: 1227, baseType: !125, size: 32, offset: 18432)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3619, file: !828, line: 1231, baseType: !4584, size: 64, offset: 18496)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !828, line: 1231, flags: DIFlagFwdDecl)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3619, file: !828, line: 1233, baseType: !346, size: 128, offset: 18560)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3619, file: !828, line: 1240, baseType: !4588, size: 64, offset: 18688)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !828, line: 62, flags: DIFlagFwdDecl)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3619, file: !828, line: 1242, baseType: !4591, size: 64, offset: 18752)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !828, line: 1242, flags: DIFlagFwdDecl)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3619, file: !828, line: 1244, baseType: !346, size: 128, offset: 18816)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3619, file: !828, line: 1245, baseType: !4595, size: 64, offset: 18944)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !828, line: 51, flags: DIFlagFwdDecl)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3619, file: !828, line: 1246, baseType: !703, size: 256, offset: 19008)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3619, file: !828, line: 1247, baseType: !7, size: 32, offset: 19264)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3619, file: !828, line: 1250, baseType: !4600, size: 64, offset: 19328)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !828, line: 57, flags: DIFlagFwdDecl)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3619, file: !828, line: 1251, baseType: !703, size: 256, offset: 19392)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3619, file: !828, line: 1252, baseType: !346, size: 128, offset: 19648)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3619, file: !828, line: 1259, baseType: !826, size: 64, offset: 19776)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3619, file: !828, line: 1260, baseType: !743, size: 16, offset: 19840)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3619, file: !828, line: 1261, baseType: !743, size: 16, offset: 19856)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3619, file: !828, line: 1314, baseType: !4608, size: 64, offset: 19904)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4610, line: 62, size: 256, align: 256, elements: !4611)
!4610 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4611 = !{!4612, !4613, !4614, !4615, !4616, !4617, !4618}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4609, file: !4610, line: 75, baseType: !111, size: 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4609, file: !4610, line: 90, baseType: !111, size: 32, offset: 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4609, file: !4610, line: 112, baseType: !106, size: 64, offset: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4609, file: !4610, line: 132, baseType: !111, size: 32, offset: 128)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4609, file: !4610, line: 140, baseType: !111, size: 32, offset: 160)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4609, file: !4610, line: 149, baseType: !111, size: 32, offset: 192)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4609, file: !4610, line: 154, baseType: !4619, offset: 224)
!4619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, elements: !779)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3619, file: !828, line: 1315, baseType: !110, size: 32, offset: 19968)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3619, file: !828, line: 1316, baseType: !110, size: 32, offset: 20000)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3619, file: !828, line: 1321, baseType: !102, size: 64, offset: 20032)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3619, file: !828, line: 1325, baseType: !125, size: 32, offset: 20096)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3619, file: !828, line: 1326, baseType: !125, size: 32, offset: 20128)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3619, file: !828, line: 1327, baseType: !125, size: 32, offset: 20160)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3619, file: !828, line: 1328, baseType: !125, size: 32, offset: 20192)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3619, file: !828, line: 1329, baseType: !560, size: 128, align: 64, offset: 20224)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3619, file: !828, line: 1332, baseType: !4629, size: 128, offset: 20352)
!4629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4630, line: 51, size: 128, elements: !4631)
!4630 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4631 = !{!4632, !4637, !4638}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4629, file: !4630, line: 60, baseType: !4633, size: 64)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4634, line: 7, size: 64, elements: !4635)
!4634 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4635 = !{!4636}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4633, file: !4634, line: 12, baseType: !118, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4629, file: !4630, line: 63, baseType: !198, size: 8, offset: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4629, file: !4630, line: 70, baseType: !198, size: 8, offset: 72)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3619, file: !828, line: 1335, baseType: !4640, size: 64, offset: 20480)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !828, line: 59, flags: DIFlagFwdDecl)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3619, file: !828, line: 1337, baseType: !4643, size: 128, offset: 20544)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4630, line: 39, size: 128, elements: !4644)
!4644 = !{!4645, !4706, !4707}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4643, file: !4630, line: 40, baseType: !4646, size: 64)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !532, line: 74, size: 512, align: 128, elements: !4648)
!4648 = !{!4649, !4650, !4700, !4705}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4647, file: !532, line: 75, baseType: !102, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, scope: !4647, file: !532, line: 83, baseType: !4651, size: 320, offset: 64)
!4651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4647, file: !532, line: 83, size: 320, elements: !4652)
!4652 = !{!4653, !4674, !4688, !4692, !4699}
!4653 = !DIDerivedType(tag: DW_TAG_member, scope: !4651, file: !532, line: 84, baseType: !4654, size: 320)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4651, file: !532, line: 84, size: 320, elements: !4655)
!4655 = !{!4656, !4667, !4668, !4673}
!4656 = !DIDerivedType(tag: DW_TAG_member, scope: !4654, file: !532, line: 90, baseType: !4657, size: 128)
!4657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4654, file: !532, line: 90, size: 128, elements: !4658)
!4658 = !{!4659, !4660, !4665, !4666}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4657, file: !532, line: 91, baseType: !346, size: 128)
!4660 = !DIDerivedType(tag: DW_TAG_member, scope: !4657, file: !532, line: 94, baseType: !4661, size: 128)
!4661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4657, file: !532, line: 94, size: 128, elements: !4662)
!4662 = !{!4663, !4664}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4661, file: !532, line: 96, baseType: !100, size: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4661, file: !532, line: 98, baseType: !7, size: 32, offset: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !4657, file: !532, line: 102, baseType: !346, size: 128)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !4657, file: !532, line: 103, baseType: !346, size: 128)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4654, file: !532, line: 106, baseType: !530, size: 64, offset: 128)
!4668 = !DIDerivedType(tag: DW_TAG_member, scope: !4654, file: !532, line: 107, baseType: !4669, size: 64, offset: 192)
!4669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4654, file: !532, line: 107, size: 64, elements: !4670)
!4670 = !{!4671, !4672}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4669, file: !532, line: 108, baseType: !102, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4669, file: !532, line: 109, baseType: !102, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4654, file: !532, line: 117, baseType: !102, size: 64, offset: 256)
!4674 = !DIDerivedType(tag: DW_TAG_member, scope: !4651, file: !532, line: 119, baseType: !4675, size: 320)
!4675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4651, file: !532, line: 119, size: 320, elements: !4676)
!4676 = !{!4677, !4678, !4681, !4682, !4683}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4675, file: !532, line: 124, baseType: !102, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4675, file: !532, line: 125, baseType: !4679, size: 64, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !532, line: 125, flags: DIFlagFwdDecl)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4675, file: !532, line: 126, baseType: !102, size: 64, offset: 128)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4675, file: !532, line: 127, baseType: !102, size: 64, offset: 192)
!4683 = !DIDerivedType(tag: DW_TAG_member, scope: !4675, file: !532, line: 128, baseType: !4684, size: 64, offset: 256)
!4684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4675, file: !532, line: 128, size: 64, elements: !4685)
!4685 = !{!4686, !4687}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4684, file: !532, line: 133, baseType: !102, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4684, file: !532, line: 138, baseType: !620, size: 64)
!4688 = !DIDerivedType(tag: DW_TAG_member, scope: !4651, file: !532, line: 141, baseType: !4689, size: 64)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4651, file: !532, line: 141, size: 64, elements: !4690)
!4690 = !{!4691}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4689, file: !532, line: 142, baseType: !102, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, scope: !4651, file: !532, line: 144, baseType: !4693, size: 128)
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4651, file: !532, line: 144, size: 128, elements: !4694)
!4694 = !{!4695, !4698}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4693, file: !532, line: 146, baseType: !4696, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !532, line: 146, flags: DIFlagFwdDecl)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4693, file: !532, line: 147, baseType: !100, size: 64, offset: 64)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4651, file: !532, line: 161, baseType: !560, size: 128, align: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, scope: !4647, file: !532, line: 164, baseType: !4701, size: 32, offset: 384)
!4701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4647, file: !532, line: 164, size: 32, elements: !4702)
!4702 = !{!4703, !4704}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4701, file: !532, line: 169, baseType: !417, size: 32)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4701, file: !532, line: 177, baseType: !7, size: 32)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4647, file: !532, line: 181, baseType: !417, size: 32, offset: 416)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4643, file: !4630, line: 42, baseType: !111, size: 32, offset: 64)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4643, file: !4630, line: 43, baseType: !111, size: 32, offset: 96)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3619, file: !828, line: 1340, baseType: !4709, size: 64, offset: 20672)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !828, line: 69, flags: DIFlagFwdDecl)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3619, file: !828, line: 1351, baseType: !125, size: 32, offset: 20736)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3619, file: !828, line: 1352, baseType: !125, size: 32, offset: 20768)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3619, file: !828, line: 1354, baseType: !102, size: 64, offset: 20800)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3619, file: !828, line: 1364, baseType: !104, size: 64, offset: 20864)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3619, file: !828, line: 1365, baseType: !104, size: 64, offset: 20928)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3619, file: !828, line: 1412, baseType: !102, size: 64, offset: 20992)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3619, file: !828, line: 1453, baseType: !4718, size: 64, offset: 21056)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !828, line: 1453, flags: DIFlagFwdDecl)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3619, file: !828, line: 1457, baseType: !4721, size: 64, offset: 21120)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !67, line: 61, size: 576, elements: !4723)
!4723 = !{!4724, !4725, !4744, !4747, !4748, !4781, !4791}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4722, file: !67, line: 62, baseType: !66, size: 32)
!4725 = !DIDerivedType(tag: DW_TAG_member, scope: !4722, file: !67, line: 64, baseType: !4726, size: 192, offset: 64)
!4726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4722, file: !67, line: 64, size: 192, elements: !4727)
!4727 = !{!4728, !4739}
!4728 = !DIDerivedType(tag: DW_TAG_member, scope: !4726, file: !67, line: 65, baseType: !4729, size: 192)
!4729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4726, file: !67, line: 65, size: 192, elements: !4730)
!4730 = !{!4731, !4738}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4729, file: !67, line: 66, baseType: !4732, size: 128)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4733, line: 50, size: 128, elements: !4734)
!4733 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4734 = !{!4735, !4736, !4737}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4732, file: !4733, line: 52, baseType: !102, size: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4732, file: !4733, line: 54, baseType: !7, size: 32, offset: 64)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4732, file: !4733, line: 55, baseType: !7, size: 32, offset: 96)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4729, file: !67, line: 67, baseType: !102, size: 64, offset: 128)
!4739 = !DIDerivedType(tag: DW_TAG_member, scope: !4726, file: !67, line: 70, baseType: !4740, size: 192)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4726, file: !67, line: 70, size: 192, elements: !4741)
!4741 = !{!4742, !4743}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4740, file: !67, line: 71, baseType: !560, size: 128, align: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4740, file: !67, line: 72, baseType: !102, size: 64, offset: 128)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4722, file: !67, line: 76, baseType: !4745, size: 64, offset: 256)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !67, line: 76, flags: DIFlagFwdDecl)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4722, file: !67, line: 77, baseType: !102, size: 64, offset: 320)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4722, file: !67, line: 79, baseType: !4749, size: 64, offset: 384)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4733, line: 25, size: 256, elements: !4751)
!4751 = !{!4752, !4758, !4762}
!4752 = !DIDerivedType(tag: DW_TAG_member, scope: !4750, file: !4733, line: 26, baseType: !4753, size: 128)
!4753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4750, file: !4733, line: 26, size: 128, elements: !4754)
!4754 = !{!4755, !4757}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4753, file: !4733, line: 27, baseType: !4756, size: 128)
!4756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 128, elements: !169)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4753, file: !4733, line: 28, baseType: !4756, size: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4750, file: !4733, line: 31, baseType: !4759, size: 64, offset: 128)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4761)
!4761 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4733, line: 23, flags: DIFlagFwdDecl)
!4762 = !DIDerivedType(tag: DW_TAG_member, scope: !4750, file: !4733, line: 33, baseType: !4763, size: 64, offset: 192)
!4763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4750, file: !4733, line: 33, size: 64, elements: !4764)
!4764 = !{!4765, !4771, !4776}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4763, file: !4733, line: 38, baseType: !4766, size: 64)
!4766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4763, file: !4733, line: 34, size: 64, elements: !4767)
!4767 = !{!4768, !4769, !4770}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4766, file: !4733, line: 35, baseType: !682, size: 32)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4766, file: !4733, line: 36, baseType: !202, size: 8, offset: 32)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4766, file: !4733, line: 37, baseType: !202, size: 8, offset: 40)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4763, file: !4733, line: 42, baseType: !4772, size: 16)
!4772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4763, file: !4733, line: 39, size: 16, elements: !4773)
!4773 = !{!4774, !4775}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4772, file: !4733, line: 40, baseType: !202, size: 8)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4772, file: !4733, line: 41, baseType: !202, size: 8, offset: 8)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4763, file: !4733, line: 46, baseType: !4777, size: 16)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4763, file: !4733, line: 43, size: 16, elements: !4778)
!4778 = !{!4779, !4780}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4777, file: !4733, line: 44, baseType: !202, size: 8)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4777, file: !4733, line: 45, baseType: !202, size: 8, offset: 8)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4722, file: !67, line: 81, baseType: !4782, size: 64, offset: 448)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !67, line: 85, size: 384, elements: !4784)
!4784 = !{!4785, !4786, !4787, !4788, !4789, !4790}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4783, file: !67, line: 86, baseType: !4745, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4783, file: !67, line: 87, baseType: !102, size: 64, offset: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4783, file: !67, line: 88, baseType: !102, size: 64, offset: 128)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4783, file: !67, line: 89, baseType: !102, size: 64, offset: 192)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4783, file: !67, line: 90, baseType: !198, size: 8, offset: 256)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4783, file: !67, line: 92, baseType: !4782, size: 64, offset: 320)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4722, file: !67, line: 82, baseType: !7, size: 32, offset: 512)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3619, file: !828, line: 1463, baseType: !4793, offset: 21184)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !828, line: 739, elements: !590)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3619, file: !828, line: 1470, baseType: !560, size: 128, align: 64, offset: 21184)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3619, file: !828, line: 1471, baseType: !1007, size: 32, offset: 21312)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3619, file: !828, line: 1472, baseType: !125, size: 32, offset: 21344)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3619, file: !828, line: 1474, baseType: !3618, size: 64, offset: 21376)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3619, file: !828, line: 1475, baseType: !1266, size: 320, offset: 21440)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3619, file: !828, line: 1478, baseType: !4800, size: 64, offset: 21760)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4802, line: 49, size: 512, elements: !4803)
!4802 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4803 = !{!4804, !4805, !4806, !4807, !4808, !4810, !4811, !4812, !4814}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4801, file: !4802, line: 50, baseType: !4800, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4801, file: !4802, line: 51, baseType: !100, size: 64, offset: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4801, file: !4802, line: 52, baseType: !102, size: 64, offset: 128)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4801, file: !4802, line: 53, baseType: !102, size: 64, offset: 192)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4801, file: !4802, line: 54, baseType: !4809, size: 64, offset: 256)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4801, file: !4802, line: 56, baseType: !7, size: 32, offset: 320)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4801, file: !4802, line: 58, baseType: !7, size: 32, offset: 352)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4801, file: !4802, line: 59, baseType: !4813, size: 64, offset: 384)
!4813 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !127, line: 159, baseType: !104)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4801, file: !4802, line: 60, baseType: !724, size: 64, offset: 448)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3619, file: !828, line: 1482, baseType: !1007, size: 32, offset: 21824)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3619, file: !828, line: 1489, baseType: !100, size: 64, offset: 21888)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3619, file: !828, line: 1504, baseType: !100, size: 64, offset: 21952)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3619, file: !828, line: 1505, baseType: !106, size: 64, offset: 22016)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3619, file: !828, line: 1506, baseType: !104, size: 64, offset: 22080)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3619, file: !828, line: 1507, baseType: !106, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3619, file: !828, line: 1508, baseType: !106, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3619, file: !828, line: 1509, baseType: !106, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3619, file: !828, line: 1510, baseType: !560, size: 128, align: 64, offset: 22208)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3619, file: !828, line: 1511, baseType: !125, size: 32, offset: 22336)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3619, file: !828, line: 1515, baseType: !4826, size: 64, offset: 22400)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !3641, line: 56, size: 64, elements: !4827)
!4827 = !{!4828}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4826, file: !3641, line: 57, baseType: !3644, size: 64)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3619, file: !828, line: 1518, baseType: !4826, size: 64, offset: 22464)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3619, file: !828, line: 1528, baseType: !560, size: 128, align: 64, offset: 22528)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3619, file: !828, line: 1552, baseType: !4832, size: 35328, offset: 23040)
!4832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !131, line: 430, size: 35328, elements: !4833)
!4833 = !{!4834, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4863, !4864, !4865, !4866, !4867, !4868, !4871, !4872, !4873, !4874}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4832, file: !131, line: 432, baseType: !4835, size: 192)
!4835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4836, size: 192, elements: !459)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4837, line: 16, size: 64, elements: !4838)
!4837 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4838 = !{!4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4836, file: !4837, line: 17, baseType: !184, size: 16)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4836, file: !4837, line: 18, baseType: !184, size: 16, offset: 16)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4836, file: !4837, line: 19, baseType: !184, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4836, file: !4837, line: 19, baseType: !184, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4836, file: !4837, line: 19, baseType: !184, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4836, file: !4837, line: 19, baseType: !184, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4836, file: !4837, line: 19, baseType: !184, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4836, file: !4837, line: 20, baseType: !184, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4836, file: !4837, line: 20, baseType: !184, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4836, file: !4837, line: 20, baseType: !184, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4836, file: !4837, line: 20, baseType: !184, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4836, file: !4837, line: 20, baseType: !184, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4836, file: !4837, line: 20, baseType: !184, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4832, file: !131, line: 436, baseType: !102, size: 64, offset: 192)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4832, file: !131, line: 440, baseType: !186, size: 16, offset: 256)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4832, file: !131, line: 441, baseType: !186, size: 16, offset: 272)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4832, file: !131, line: 442, baseType: !186, size: 16, offset: 288)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4832, file: !131, line: 443, baseType: !186, size: 16, offset: 304)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4832, file: !131, line: 447, baseType: !102, size: 64, offset: 320)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4832, file: !131, line: 448, baseType: !102, size: 64, offset: 384)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4832, file: !131, line: 459, baseType: !4860, size: 256, offset: 448)
!4860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4861, size: 256, elements: !684)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !131, line: 428, flags: DIFlagFwdDecl)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4832, file: !131, line: 461, baseType: !102, size: 64, offset: 704)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4832, file: !131, line: 463, baseType: !102, size: 64, offset: 768)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4832, file: !131, line: 465, baseType: !102, size: 64, offset: 832)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4832, file: !131, line: 466, baseType: !102, size: 64, offset: 896)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4832, file: !131, line: 467, baseType: !102, size: 64, offset: 960)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4832, file: !131, line: 473, baseType: !4869, size: 64, offset: 1024)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !131, line: 10, flags: DIFlagFwdDecl)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4832, file: !131, line: 480, baseType: !102, size: 64, offset: 1088)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4832, file: !131, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4832, file: !131, line: 491, baseType: !110, size: 32, offset: 1184)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4832, file: !131, line: 501, baseType: !4875, size: 33792, offset: 1536)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4876, line: 448, size: 33792, elements: !4877)
!4876 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4877 = !{!4878, !4879, !4880, !5040, !5041, !5047, !5048}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4875, file: !4876, line: 461, baseType: !7, size: 32)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4875, file: !4876, line: 468, baseType: !102, size: 64, offset: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4875, file: !4876, line: 476, baseType: !4881, size: 64, offset: 128)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4876, line: 356, size: 33280, align: 512, elements: !4883)
!4883 = !{!4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4882, file: !4876, line: 358, baseType: !7, size: 32)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4882, file: !4876, line: 361, baseType: !7, size: 32, offset: 32)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4882, file: !4876, line: 364, baseType: !104, size: 64, offset: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4882, file: !4876, line: 367, baseType: !104, size: 64, offset: 128)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4882, file: !4876, line: 370, baseType: !104, size: 64, offset: 192)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4882, file: !4876, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4882, file: !4876, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4882, file: !4876, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4882, file: !4876, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4882, file: !4876, line: 397, baseType: !4894, size: 32768, offset: 512)
!4894 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4876, line: 348, size: 32768, elements: !4895)
!4895 = !{!4896, !4909, !4946, !5023, !5036}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4894, file: !4876, line: 349, baseType: !4897, size: 896)
!4897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4876, line: 12, size: 896, elements: !4898)
!4898 = !{!4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4908}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4897, file: !4876, line: 13, baseType: !110, size: 32)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4897, file: !4876, line: 14, baseType: !110, size: 32, offset: 32)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4897, file: !4876, line: 15, baseType: !110, size: 32, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4897, file: !4876, line: 16, baseType: !110, size: 32, offset: 96)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4897, file: !4876, line: 17, baseType: !110, size: 32, offset: 128)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4897, file: !4876, line: 18, baseType: !110, size: 32, offset: 160)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4897, file: !4876, line: 19, baseType: !110, size: 32, offset: 192)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4897, file: !4876, line: 22, baseType: !4907, size: 640, offset: 224)
!4907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 640, elements: !310)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4897, file: !4876, line: 25, baseType: !110, size: 32, offset: 864)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4894, file: !4876, line: 350, baseType: !4910, size: 4096, align: 128)
!4910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4876, line: 34, size: 4096, align: 128, elements: !4911)
!4911 = !{!4912, !4913, !4914, !4915, !4916, !4931, !4932, !4933, !4937, !4939, !4941}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4910, file: !4876, line: 35, baseType: !184, size: 16)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4910, file: !4876, line: 36, baseType: !184, size: 16, offset: 16)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4910, file: !4876, line: 37, baseType: !184, size: 16, offset: 32)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4910, file: !4876, line: 38, baseType: !184, size: 16, offset: 48)
!4916 = !DIDerivedType(tag: DW_TAG_member, scope: !4910, file: !4876, line: 39, baseType: !4917, size: 128, offset: 64)
!4917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4910, file: !4876, line: 39, size: 128, elements: !4918)
!4918 = !{!4919, !4924}
!4919 = !DIDerivedType(tag: DW_TAG_member, scope: !4917, file: !4876, line: 40, baseType: !4920, size: 128)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4917, file: !4876, line: 40, size: 128, elements: !4921)
!4921 = !{!4922, !4923}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4920, file: !4876, line: 41, baseType: !104, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4920, file: !4876, line: 42, baseType: !104, size: 64, offset: 64)
!4924 = !DIDerivedType(tag: DW_TAG_member, scope: !4917, file: !4876, line: 44, baseType: !4925, size: 128)
!4925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4917, file: !4876, line: 44, size: 128, elements: !4926)
!4926 = !{!4927, !4928, !4929, !4930}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4925, file: !4876, line: 45, baseType: !110, size: 32)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4925, file: !4876, line: 46, baseType: !110, size: 32, offset: 32)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4925, file: !4876, line: 47, baseType: !110, size: 32, offset: 64)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4925, file: !4876, line: 48, baseType: !110, size: 32, offset: 96)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4910, file: !4876, line: 51, baseType: !110, size: 32, offset: 192)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4910, file: !4876, line: 52, baseType: !110, size: 32, offset: 224)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4910, file: !4876, line: 55, baseType: !4934, size: 1024, offset: 256)
!4934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 1024, elements: !4935)
!4935 = !{!4936}
!4936 = !DISubrange(count: 32)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4910, file: !4876, line: 58, baseType: !4938, size: 2048, offset: 1280)
!4938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 2048, elements: !173)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4910, file: !4876, line: 60, baseType: !4940, size: 384, offset: 3328)
!4940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 384, elements: !1460)
!4941 = !DIDerivedType(tag: DW_TAG_member, scope: !4910, file: !4876, line: 62, baseType: !4942, size: 384, offset: 3712)
!4942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4910, file: !4876, line: 62, size: 384, elements: !4943)
!4943 = !{!4944, !4945}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4942, file: !4876, line: 63, baseType: !4940, size: 384)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4942, file: !4876, line: 64, baseType: !4940, size: 384)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4894, file: !4876, line: 351, baseType: !4947, size: 1088)
!4947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4876, line: 79, size: 1088, elements: !4948)
!4948 = !{!4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !5022}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4947, file: !4876, line: 80, baseType: !110, size: 32)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4947, file: !4876, line: 81, baseType: !110, size: 32, offset: 32)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4947, file: !4876, line: 82, baseType: !110, size: 32, offset: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4947, file: !4876, line: 83, baseType: !110, size: 32, offset: 96)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4947, file: !4876, line: 84, baseType: !110, size: 32, offset: 128)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4947, file: !4876, line: 85, baseType: !110, size: 32, offset: 160)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4947, file: !4876, line: 86, baseType: !110, size: 32, offset: 192)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4947, file: !4876, line: 88, baseType: !4907, size: 640, offset: 224)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4947, file: !4876, line: 89, baseType: !202, size: 8, offset: 864)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4947, file: !4876, line: 90, baseType: !202, size: 8, offset: 872)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4947, file: !4876, line: 91, baseType: !202, size: 8, offset: 880)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4947, file: !4876, line: 92, baseType: !202, size: 8, offset: 888)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4947, file: !4876, line: 93, baseType: !202, size: 8, offset: 896)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4947, file: !4876, line: 94, baseType: !202, size: 8, offset: 904)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4947, file: !4876, line: 95, baseType: !4964, size: 64, offset: 960)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4966, line: 11, size: 128, elements: !4967)
!4966 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4967 = !{!4968, !4969}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4965, file: !4966, line: 12, baseType: !212, size: 64)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4965, file: !4966, line: 13, baseType: !4970, size: 64, offset: 64)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4972, line: 103, size: 1344, elements: !4973)
!4972 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4973 = !{!4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !5002, !5003, !5004}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4971, file: !4972, line: 109, baseType: !102, size: 64)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4971, file: !4972, line: 110, baseType: !102, size: 64, offset: 64)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4971, file: !4972, line: 111, baseType: !102, size: 64, offset: 128)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4971, file: !4972, line: 112, baseType: !102, size: 64, offset: 192)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4971, file: !4972, line: 113, baseType: !102, size: 64, offset: 256)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4971, file: !4972, line: 114, baseType: !102, size: 64, offset: 320)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4971, file: !4972, line: 117, baseType: !102, size: 64, offset: 384)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4971, file: !4972, line: 118, baseType: !102, size: 64, offset: 448)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4971, file: !4972, line: 119, baseType: !102, size: 64, offset: 512)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4971, file: !4972, line: 120, baseType: !102, size: 64, offset: 576)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4971, file: !4972, line: 121, baseType: !102, size: 64, offset: 640)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4971, file: !4972, line: 122, baseType: !102, size: 64, offset: 704)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4971, file: !4972, line: 123, baseType: !102, size: 64, offset: 768)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4971, file: !4972, line: 124, baseType: !102, size: 64, offset: 832)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4971, file: !4972, line: 125, baseType: !102, size: 64, offset: 896)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4971, file: !4972, line: 139, baseType: !102, size: 64, offset: 960)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4971, file: !4972, line: 142, baseType: !102, size: 64, offset: 1024)
!4991 = !DIDerivedType(tag: DW_TAG_member, scope: !4971, file: !4972, line: 144, baseType: !4992, size: 64, offset: 1088)
!4992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4971, file: !4972, line: 144, size: 64, elements: !4993)
!4993 = !{!4994, !4995, !4996}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4992, file: !4972, line: 146, baseType: !184, size: 16)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4992, file: !4972, line: 148, baseType: !104, size: 64)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4992, file: !4972, line: 150, baseType: !4997, size: 64)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4972, line: 59, size: 64, elements: !4998)
!4998 = !{!4999, !5000, !5001}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4997, file: !4972, line: 61, baseType: !104, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4997, file: !4972, line: 63, baseType: !104, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4997, file: !4972, line: 65, baseType: !104, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4971, file: !4972, line: 153, baseType: !102, size: 64, offset: 1152)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4971, file: !4972, line: 154, baseType: !102, size: 64, offset: 1216)
!5004 = !DIDerivedType(tag: DW_TAG_member, scope: !4971, file: !4972, line: 156, baseType: !5005, size: 64, offset: 1280)
!5005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4971, file: !4972, line: 156, size: 64, elements: !5006)
!5006 = !{!5007, !5008, !5009}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5005, file: !4972, line: 158, baseType: !184, size: 16)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5005, file: !4972, line: 160, baseType: !104, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5005, file: !4972, line: 162, baseType: !5010, size: 64)
!5010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4972, line: 69, size: 64, elements: !5011)
!5011 = !{!5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5010, file: !4972, line: 71, baseType: !104, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5010, file: !4972, line: 73, baseType: !104, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5010, file: !4972, line: 75, baseType: !104, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5010, file: !4972, line: 77, baseType: !104, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5010, file: !4972, line: 80, baseType: !104, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5010, file: !4972, line: 83, baseType: !104, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5010, file: !4972, line: 86, baseType: !104, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5010, file: !4972, line: 88, baseType: !104, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5010, file: !4972, line: 93, baseType: !104, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5010, file: !4972, line: 100, baseType: !104, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4947, file: !4876, line: 96, baseType: !110, size: 32, offset: 1024)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4894, file: !4876, line: 352, baseType: !5024, size: 4608, align: 512)
!5024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4876, line: 333, size: 4608, align: 512, elements: !5025)
!5025 = !{!5026, !5027, !5034}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5024, file: !4876, line: 334, baseType: !4910, size: 4096, align: 128)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5024, file: !4876, line: 335, baseType: !5028, size: 512, offset: 4096)
!5028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4876, line: 312, size: 512, elements: !5029)
!5029 = !{!5030, !5031, !5032}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5028, file: !4876, line: 313, baseType: !104, size: 64)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5028, file: !4876, line: 314, baseType: !104, size: 64, offset: 64)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5028, file: !4876, line: 315, baseType: !5033, size: 384, offset: 128)
!5033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 384, elements: !1425)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5024, file: !4876, line: 336, baseType: !5035, offset: 4608)
!5035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, elements: !779)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4894, file: !4876, line: 353, baseType: !5037, size: 32768)
!5037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 32768, elements: !5038)
!5038 = !{!5039}
!5039 = !DISubrange(count: 4096)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4875, file: !4876, line: 484, baseType: !4881, size: 64, offset: 192)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4875, file: !4876, line: 491, baseType: !5042, size: 128, offset: 256)
!5042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4876, line: 404, size: 128, elements: !5043)
!5043 = !{!5044, !5045, !5046}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5042, file: !4876, line: 424, baseType: !104, size: 64)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5042, file: !4876, line: 432, baseType: !7, size: 32, offset: 64)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5042, file: !4876, line: 440, baseType: !7, size: 32, offset: 96)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4875, file: !4876, line: 498, baseType: !5042, size: 128, offset: 384)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4875, file: !4876, line: 508, baseType: !4882, size: 33280, align: 512, offset: 512)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3496, file: !50, line: 158, baseType: !5050, size: 64, offset: 4544)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_stats", file: !50, line: 158, flags: DIFlagFwdDecl)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3496, file: !50, line: 161, baseType: !100, size: 64, offset: 4608)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !3496, file: !50, line: 164, baseType: !5054, size: 64, offset: 4672)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !50, line: 164, flags: DIFlagFwdDecl)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "nb_min", scope: !3496, file: !50, line: 166, baseType: !1480, size: 192, offset: 4736)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "nb_max", scope: !3496, file: !50, line: 167, baseType: !1480, size: 192, offset: 4928)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "old", scope: !3492, file: !50, line: 186, baseType: !7, size: 32, offset: 64)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "new", scope: !3492, file: !50, line: 187, baseType: !7, size: 32, offset: 96)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3492, file: !50, line: 188, baseType: !202, size: 8, offset: 128)
!5061 = !DILocation(line: 1018, column: 57, scope: !3485)
!5062 = !DILocation(line: 1018, column: 75, scope: !3485)
!5063 = !DILocation(line: 1019, column: 11, scope: !3485)
!5064 = !DILocation(line: 1021, column: 2, scope: !3485)
!5065 = !DILocation(line: 1021, column: 24, scope: !3485)
!5066 = !DILocation(line: 1021, column: 31, scope: !3485)
!5067 = !DILocation(line: 1023, column: 6, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 1023, column: 6)
!5069 = !DILocation(line: 1023, column: 24, scope: !5068)
!5070 = !DILocation(line: 1023, column: 6, scope: !3485)
!5071 = !DILocation(line: 1024, column: 3, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 1023, column: 29)
!5073 = !DILocation(line: 1025, column: 3, scope: !5072)
!5074 = !DILocation(line: 1028, column: 7, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 1028, column: 6)
!5076 = !DILocation(line: 1028, column: 6, scope: !3485)
!5077 = !DILocation(line: 1029, column: 14, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 1028, column: 17)
!5079 = !DILocation(line: 1029, column: 20, scope: !5078)
!5080 = !DILocation(line: 1029, column: 12, scope: !5078)
!5081 = !DILocation(line: 1030, column: 39, scope: !5078)
!5082 = !DILocation(line: 1030, column: 23, scope: !5078)
!5083 = !DILocation(line: 1031, column: 17, scope: !5078)
!5084 = !DILocation(line: 1031, column: 15, scope: !5078)
!5085 = !DILocation(line: 1032, column: 2, scope: !5078)
!5086 = !DILocation(line: 1034, column: 7, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 1034, column: 6)
!5088 = !DILocation(line: 1034, column: 11, scope: !5087)
!5089 = !DILocation(line: 1034, column: 33, scope: !5087)
!5090 = !DILocation(line: 1034, column: 36, scope: !5087)
!5091 = !DILocation(line: 1034, column: 42, scope: !5087)
!5092 = !DILocation(line: 1034, column: 48, scope: !5087)
!5093 = !DILocation(line: 1034, column: 54, scope: !5087)
!5094 = !DILocation(line: 1034, column: 46, scope: !5087)
!5095 = !DILocation(line: 1034, column: 59, scope: !5087)
!5096 = !DILocation(line: 1035, column: 7, scope: !5087)
!5097 = !DILocation(line: 1035, column: 11, scope: !5087)
!5098 = !DILocation(line: 1035, column: 33, scope: !5087)
!5099 = !DILocation(line: 1035, column: 36, scope: !5087)
!5100 = !DILocation(line: 1035, column: 42, scope: !5087)
!5101 = !DILocation(line: 1035, column: 48, scope: !5087)
!5102 = !DILocation(line: 1035, column: 54, scope: !5087)
!5103 = !DILocation(line: 1035, column: 46, scope: !5087)
!5104 = !DILocation(line: 1034, column: 6, scope: !3485)
!5105 = !DILocation(line: 1037, column: 18, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 1035, column: 60)
!5107 = !DILocation(line: 1037, column: 39, scope: !5106)
!5108 = !DILocation(line: 1037, column: 49, scope: !5106)
!5109 = !DILocation(line: 1037, column: 55, scope: !5106)
!5110 = !DILocation(line: 1037, column: 4, scope: !5106)
!5111 = !DILocation(line: 1036, column: 33, scope: !5106)
!5112 = !DILocation(line: 1039, column: 27, scope: !5106)
!5113 = !DILocation(line: 1039, column: 40, scope: !5106)
!5114 = !DILocation(line: 1039, column: 50, scope: !5106)
!5115 = !DILocation(line: 1039, column: 56, scope: !5106)
!5116 = !DILocation(line: 1039, column: 13, scope: !5106)
!5117 = !DILocation(line: 1039, column: 11, scope: !5106)
!5118 = !DILocation(line: 1040, column: 9, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 1040, column: 7)
!5120 = !DILocation(line: 1040, column: 15, scope: !5119)
!5121 = !DILocation(line: 1040, column: 21, scope: !5119)
!5122 = !DILocation(line: 1040, column: 7, scope: !5106)
!5123 = !DILocation(line: 1041, column: 4, scope: !5119)
!5124 = !DILocation(line: 1043, column: 20, scope: !5106)
!5125 = !DILocation(line: 1043, column: 29, scope: !5106)
!5126 = !DILocation(line: 1043, column: 35, scope: !5106)
!5127 = !DILocation(line: 1043, column: 43, scope: !5106)
!5128 = !DILocation(line: 1043, column: 48, scope: !5106)
!5129 = !DILocation(line: 1043, column: 3, scope: !5106)
!5130 = !DILocation(line: 1044, column: 2, scope: !5106)
!5131 = !DILocation(line: 1046, column: 2, scope: !3485)
!5132 = !DILocation(line: 1047, column: 1, scope: !3485)
!5133 = distinct !DISubprogram(name: "num_online_cpus", scope: !119, file: !119, line: 1072, type: !5134, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{!7}
!5136 = !DILocation(line: 1074, column: 9, scope: !5133)
!5137 = !DILocation(line: 1074, column: 2, scope: !5133)
!5138 = distinct !DISubprogram(name: "cpufreq_scale", scope: !50, file: !50, line: 541, type: !5139, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5142)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!102, !102, !5141, !5141}
!5141 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !127, line: 87, baseType: !7)
!5142 = !{!5143, !5144, !5145, !5146}
!5143 = !DILocalVariable(name: "old", arg: 1, scope: !5138, file: !50, line: 541, type: !102)
!5144 = !DILocalVariable(name: "div", arg: 2, scope: !5138, file: !50, line: 541, type: !5141)
!5145 = !DILocalVariable(name: "mult", arg: 3, scope: !5138, file: !50, line: 542, type: !5141)
!5146 = !DILocalVariable(name: "result", scope: !5138, file: !50, line: 550, type: !102)
!5147 = !DILocation(line: 541, column: 57, scope: !5138)
!5148 = !DILocation(line: 541, column: 68, scope: !5138)
!5149 = !DILocation(line: 542, column: 9, scope: !5138)
!5150 = !DILocation(line: 550, column: 2, scope: !5138)
!5151 = !DILocation(line: 550, column: 16, scope: !5138)
!5152 = !DILocation(line: 550, column: 25, scope: !5138)
!5153 = !DILocation(line: 550, column: 38, scope: !5138)
!5154 = !DILocation(line: 550, column: 32, scope: !5138)
!5155 = !DILocation(line: 550, column: 29, scope: !5138)
!5156 = !DILocation(line: 551, column: 12, scope: !5138)
!5157 = !DILocation(line: 551, column: 9, scope: !5138)
!5158 = !DILocation(line: 552, column: 9, scope: !5138)
!5159 = !DILocation(line: 554, column: 1, scope: !5138)
!5160 = !DILocation(line: 552, column: 2, scope: !5138)
!5161 = distinct !DISubprogram(name: "set_cyc2ns_scale", scope: !3, file: !3, line: 182, type: !5162, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5164)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{null, !102, !125, !108}
!5164 = !{!5165, !5166, !5167, !5168, !5169, !5173, !5174, !5178}
!5165 = !DILocalVariable(name: "khz", arg: 1, scope: !5161, file: !3, line: 182, type: !102)
!5166 = !DILocalVariable(name: "cpu", arg: 2, scope: !5161, file: !3, line: 182, type: !125)
!5167 = !DILocalVariable(name: "tsc_now", arg: 3, scope: !5161, file: !3, line: 182, type: !108)
!5168 = !DILocalVariable(name: "flags", scope: !5161, file: !3, line: 184, type: !102)
!5169 = !DILocalVariable(name: "__dummy", scope: !5170, file: !3, line: 186, type: !102)
!5170 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 186, column: 2)
!5171 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 186, column: 2)
!5172 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 186, column: 2)
!5173 = !DILocalVariable(name: "__dummy2", scope: !5170, file: !3, line: 186, type: !102)
!5174 = !DILocalVariable(name: "__dummy", scope: !5175, file: !3, line: 193, type: !102)
!5175 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 193, column: 2)
!5176 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 193, column: 2)
!5177 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 193, column: 2)
!5178 = !DILocalVariable(name: "__dummy2", scope: !5175, file: !3, line: 193, type: !102)
!5179 = !DILocation(line: 182, column: 44, scope: !5161)
!5180 = !DILocation(line: 182, column: 53, scope: !5161)
!5181 = !DILocation(line: 182, column: 77, scope: !5161)
!5182 = !DILocation(line: 184, column: 2, scope: !5161)
!5183 = !DILocation(line: 184, column: 16, scope: !5161)
!5184 = !DILocation(line: 186, column: 2, scope: !5161)
!5185 = !DILocation(line: 186, column: 2, scope: !5172)
!5186 = !DILocation(line: 186, column: 2, scope: !5170)
!5187 = !DILocation(line: 186, column: 2, scope: !5171)
!5188 = !DILocation(line: 187, column: 2, scope: !5161)
!5189 = !DILocation(line: 189, column: 6, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 189, column: 6)
!5191 = !DILocation(line: 189, column: 6, scope: !5161)
!5192 = !DILocation(line: 190, column: 22, scope: !5190)
!5193 = !DILocation(line: 190, column: 27, scope: !5190)
!5194 = !DILocation(line: 190, column: 32, scope: !5190)
!5195 = !DILocation(line: 190, column: 3, scope: !5190)
!5196 = !DILocation(line: 192, column: 2, scope: !5161)
!5197 = !DILocation(line: 193, column: 2, scope: !5161)
!5198 = !DILocation(line: 193, column: 2, scope: !5177)
!5199 = !DILocation(line: 193, column: 2, scope: !5175)
!5200 = !DILocation(line: 193, column: 2, scope: !5176)
!5201 = !DILocation(line: 193, column: 2, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 193, column: 2)
!5203 = !DILocation(line: 194, column: 1, scope: !5161)
!5204 = distinct !DISubprogram(name: "raw_atomic_read", scope: !5205, file: !5205, line: 442, type: !5206, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5210)
!5205 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5206 = !DISubroutineType(types: !5207)
!5207 = !{!125, !5208}
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!5210 = !{!5211}
!5211 = !DILocalVariable(name: "v", arg: 1, scope: !5204, file: !5205, line: 442, type: !5208)
!5212 = !DILocation(line: 442, column: 33, scope: !5204)
!5213 = !DILocation(line: 444, column: 26, scope: !5204)
!5214 = !DILocation(line: 444, column: 9, scope: !5204)
!5215 = !DILocation(line: 444, column: 2, scope: !5204)
!5216 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5217, file: !5217, line: 17, type: !5206, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5218)
!5217 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5218 = !{!5219}
!5219 = !DILocalVariable(name: "v", arg: 1, scope: !5216, file: !5217, line: 17, type: !5208)
!5220 = !DILocation(line: 17, column: 61, scope: !5216)
!5221 = !DILocation(line: 23, column: 9, scope: !5216)
!5222 = !DILocation(line: 23, column: 2, scope: !5216)
!5223 = !DISubprogram(name: "sched_clock_idle_sleep_event", scope: !2389, file: !2389, line: 78, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5224 = distinct !DISubprogram(name: "__set_cyc2ns_scale", scope: !3, file: !3, line: 144, type: !5162, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5225)
!5225 = !{!5226, !5227, !5228, !5229, !5230, !5231, !5232, !5235}
!5226 = !DILocalVariable(name: "khz", arg: 1, scope: !5224, file: !3, line: 144, type: !102)
!5227 = !DILocalVariable(name: "cpu", arg: 2, scope: !5224, file: !3, line: 144, type: !125)
!5228 = !DILocalVariable(name: "tsc_now", arg: 3, scope: !5224, file: !3, line: 144, type: !108)
!5229 = !DILocalVariable(name: "ns_now", scope: !5224, file: !3, line: 146, type: !108)
!5230 = !DILocalVariable(name: "data", scope: !5224, file: !3, line: 147, type: !221)
!5231 = !DILocalVariable(name: "c2n", scope: !5224, file: !3, line: 148, type: !216)
!5232 = !DILocalVariable(name: "__vpp_verify", scope: !5233, file: !3, line: 174, type: !724)
!5233 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 174, column: 8)
!5234 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 174, column: 8)
!5235 = !DILocalVariable(name: "__ptr", scope: !5236, file: !3, line: 174, type: !102)
!5236 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 174, column: 8)
!5237 = !DILocation(line: 144, column: 46, scope: !5224)
!5238 = !DILocation(line: 144, column: 55, scope: !5224)
!5239 = !DILocation(line: 144, column: 79, scope: !5224)
!5240 = !DILocation(line: 146, column: 2, scope: !5224)
!5241 = !DILocation(line: 146, column: 21, scope: !5224)
!5242 = !DILocation(line: 147, column: 2, scope: !5224)
!5243 = !DILocation(line: 147, column: 21, scope: !5224)
!5244 = !DILocation(line: 148, column: 2, scope: !5224)
!5245 = !DILocation(line: 148, column: 17, scope: !5224)
!5246 = !DILocation(line: 150, column: 23, scope: !5224)
!5247 = !DILocation(line: 150, column: 11, scope: !5224)
!5248 = !DILocation(line: 150, column: 9, scope: !5224)
!5249 = !DILocation(line: 157, column: 31, scope: !5224)
!5250 = !DILocation(line: 157, column: 49, scope: !5224)
!5251 = !DILocation(line: 157, column: 63, scope: !5224)
!5252 = !DILocation(line: 157, column: 2, scope: !5224)
!5253 = !DILocation(line: 166, column: 11, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 166, column: 6)
!5255 = !DILocation(line: 166, column: 24, scope: !5254)
!5256 = !DILocation(line: 166, column: 6, scope: !5224)
!5257 = !DILocation(line: 167, column: 8, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5254, file: !3, line: 166, column: 31)
!5259 = !DILocation(line: 167, column: 21, scope: !5258)
!5260 = !DILocation(line: 168, column: 8, scope: !5258)
!5261 = !DILocation(line: 168, column: 19, scope: !5258)
!5262 = !DILocation(line: 169, column: 2, scope: !5258)
!5263 = !DILocation(line: 171, column: 23, scope: !5224)
!5264 = !DILocation(line: 172, column: 19, scope: !5224)
!5265 = !DILocation(line: 172, column: 33, scope: !5224)
!5266 = !DILocation(line: 172, column: 50, scope: !5224)
!5267 = !DILocation(line: 172, column: 3, scope: !5224)
!5268 = !DILocation(line: 171, column: 30, scope: !5224)
!5269 = !DILocation(line: 171, column: 7, scope: !5224)
!5270 = !DILocation(line: 171, column: 21, scope: !5224)
!5271 = !DILocation(line: 174, column: 8, scope: !5234)
!5272 = !DILocation(line: 174, column: 8, scope: !5233)
!5273 = !DILocation(line: 174, column: 8, scope: !5236)
!5274 = !DILocation(line: 174, column: 6, scope: !5224)
!5275 = !DILocation(line: 176, column: 28, scope: !5224)
!5276 = !DILocation(line: 176, column: 33, scope: !5224)
!5277 = !DILocation(line: 176, column: 2, scope: !5224)
!5278 = !DILocation(line: 177, column: 2, scope: !5224)
!5279 = !DILocation(line: 177, column: 7, scope: !5224)
!5280 = !DILocation(line: 177, column: 17, scope: !5224)
!5281 = !DILocation(line: 178, column: 28, scope: !5224)
!5282 = !DILocation(line: 178, column: 33, scope: !5224)
!5283 = !DILocation(line: 178, column: 2, scope: !5224)
!5284 = !DILocation(line: 179, column: 2, scope: !5224)
!5285 = !DILocation(line: 179, column: 7, scope: !5224)
!5286 = !DILocation(line: 179, column: 17, scope: !5224)
!5287 = !DILocation(line: 180, column: 1, scope: !5224)
!5288 = !DISubprogram(name: "sched_clock_idle_wakeup_event", scope: !2389, file: !2389, line: 79, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5289 = !DISubprogram(name: "clocks_calc_mult_shift", scope: !331, file: !331, line: 224, type: !5290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{null, !109, !109, !110, !110, !110}
!5292 = distinct !DISubprogram(name: "raw_write_seqcount_latch", scope: !231, file: !231, line: 734, type: !5293, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5296)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{null, !5295}
!5295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!5296 = !{!5297}
!5297 = !DILocalVariable(name: "s", arg: 1, scope: !5292, file: !231, line: 734, type: !5295)
!5298 = !DILocation(line: 734, column: 72, scope: !5292)
!5299 = !DILocation(line: 736, column: 2, scope: !5292)
!5300 = !DILocation(line: 736, column: 2, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5292, file: !231, line: 736, column: 2)
!5302 = !DILocation(line: 736, column: 2, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5301, file: !231, line: 736, column: 2)
!5304 = !{i64 2150547672}
!5305 = !DILocation(line: 737, column: 2, scope: !5292)
!5306 = !DILocation(line: 737, column: 5, scope: !5292)
!5307 = !DILocation(line: 737, column: 14, scope: !5292)
!5308 = !DILocation(line: 737, column: 22, scope: !5292)
!5309 = !DILocation(line: 738, column: 2, scope: !5292)
!5310 = !DILocation(line: 738, column: 2, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5292, file: !231, line: 738, column: 2)
!5312 = !DILocation(line: 738, column: 2, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5311, file: !231, line: 738, column: 2)
!5314 = !{i64 2150547780}
!5315 = !DILocation(line: 739, column: 1, scope: !5292)
!5316 = distinct !DISubprogram(name: "read_tsc", scope: !3, file: !3, line: 1128, type: !335, scopeLine: 1129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5317)
!5317 = !{!5318}
!5318 = !DILocalVariable(name: "cs", arg: 1, scope: !5316, file: !3, line: 1128, type: !329)
!5319 = !DILocation(line: 1128, column: 41, scope: !5316)
!5320 = !DILocation(line: 1130, column: 14, scope: !5316)
!5321 = !DILocation(line: 1130, column: 2, scope: !5316)
!5322 = distinct !DISubprogram(name: "tsc_cs_enable", scope: !3, file: !3, line: 1154, type: !357, scopeLine: 1155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5323)
!5323 = !{!5324}
!5324 = !DILocalVariable(name: "cs", arg: 1, scope: !5322, file: !3, line: 1154, type: !329)
!5325 = !DILocation(line: 1154, column: 46, scope: !5322)
!5326 = !DILocation(line: 1156, column: 2, scope: !5322)
!5327 = !DILocation(line: 1157, column: 2, scope: !5322)
!5328 = distinct !DISubprogram(name: "tsc_resume", scope: !3, file: !3, line: 1107, type: !361, scopeLine: 1108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5329)
!5329 = !{!5330}
!5330 = !DILocalVariable(name: "cs", arg: 1, scope: !5328, file: !3, line: 1107, type: !329)
!5331 = !DILocation(line: 1107, column: 44, scope: !5328)
!5332 = !DILocation(line: 1109, column: 2, scope: !5328)
!5333 = !DILocation(line: 1110, column: 1, scope: !5328)
!5334 = distinct !DISubprogram(name: "tsc_cs_mark_unstable", scope: !3, file: !3, line: 1133, type: !361, scopeLine: 1134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5335)
!5335 = !{!5336}
!5336 = !DILocalVariable(name: "cs", arg: 1, scope: !5334, file: !3, line: 1133, type: !329)
!5337 = !DILocation(line: 1133, column: 54, scope: !5334)
!5338 = !DILocation(line: 1135, column: 6, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5334, file: !3, line: 1135, column: 6)
!5340 = !DILocation(line: 1135, column: 6, scope: !5334)
!5341 = !DILocation(line: 1136, column: 3, scope: !5339)
!5342 = !DILocation(line: 1138, column: 15, scope: !5334)
!5343 = !DILocation(line: 1139, column: 6, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5334, file: !3, line: 1139, column: 6)
!5345 = !DILocation(line: 1139, column: 6, scope: !5334)
!5346 = !DILocation(line: 1140, column: 3, scope: !5344)
!5347 = !DILocation(line: 1141, column: 2, scope: !5334)
!5348 = !DILocation(line: 1142, column: 2, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5334, file: !3, line: 1142, column: 2)
!5350 = !DILocation(line: 1142, column: 2, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 1142, column: 2)
!5352 = !DILocation(line: 1143, column: 1, scope: !5334)
!5353 = distinct !DISubprogram(name: "tsc_cs_tick_stable", scope: !3, file: !3, line: 1145, type: !361, scopeLine: 1146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5354)
!5354 = !{!5355}
!5355 = !DILocalVariable(name: "cs", arg: 1, scope: !5353, file: !3, line: 1145, type: !329)
!5356 = !DILocation(line: 1145, column: 52, scope: !5353)
!5357 = !DILocation(line: 1147, column: 6, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 1147, column: 6)
!5359 = !DILocation(line: 1147, column: 6, scope: !5353)
!5360 = !DILocation(line: 1148, column: 3, scope: !5358)
!5361 = !DILocation(line: 1150, column: 6, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 1150, column: 6)
!5363 = !DILocation(line: 1150, column: 6, scope: !5353)
!5364 = !DILocation(line: 1151, column: 3, scope: !5362)
!5365 = !DILocation(line: 1152, column: 1, scope: !5353)
!5366 = distinct !DISubprogram(name: "rdtsc_ordered", scope: !1830, file: !1830, line: 197, type: !1781, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5367)
!5367 = !{!5368, !5369}
!5368 = !DILocalVariable(name: "low", scope: !5366, file: !1830, line: 199, type: !102)
!5369 = !DILocalVariable(name: "high", scope: !5366, file: !1830, line: 199, type: !102)
!5370 = !DILocation(line: 199, column: 2, scope: !5366)
!5371 = !DILocation(line: 215, column: 2, scope: !5366)
!5372 = !{i64 2149539961, i64 2149539994, i64 2149540000, i64 2149540016, i64 2149540035, i64 2149540066, i64 2149541018, i64 2149539592, i64 2149541024, i64 2149541072, i64 2149541136, i64 2149541200, i64 2149541257, i64 2149541464, i64 2149541512, i64 2149541576, i64 2149541640, i64 2149541697, i64 2149539710, i64 2149539735, i64 2149541904, i64 2149542033, i64 2149541965, i64 2149542047, i64 2149542061, i64 2149542183, i64 2149542122, i64 2149542197, i64 2149539869}
!5373 = !DILocation(line: 222, column: 9, scope: !5366)
!5374 = !DILocation(line: 223, column: 1, scope: !5366)
!5375 = !DILocation(line: 222, column: 2, scope: !5366)
!5376 = distinct !DISubprogram(name: "vclocks_set_used", scope: !5377, file: !5377, line: 16, type: !2935, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5378)
!5377 = !DIFile(filename: "./arch/x86/include/asm/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6361f957ffa0e49ae33c4db6e2a6729d")
!5378 = !{!5379}
!5379 = !DILocalVariable(name: "which", arg: 1, scope: !5376, file: !5377, line: 16, type: !7)
!5380 = !DILocation(line: 16, column: 50, scope: !5376)
!5381 = !DILocation(line: 18, column: 2, scope: !5376)
!5382 = !DILocation(line: 18, column: 2, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5376, file: !5377, line: 18, column: 2)
!5384 = !DILocation(line: 18, column: 2, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5383, file: !5377, line: 18, column: 2)
!5386 = !DILocation(line: 18, column: 2, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5388, file: !5377, line: 18, column: 2)
!5388 = distinct !DILexicalBlock(scope: !5383, file: !5377, line: 18, column: 2)
!5389 = !DILocation(line: 18, column: 2, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5387, file: !5377, line: 18, column: 2)
!5391 = !DILocation(line: 18, column: 2, scope: !5388)
!5392 = !DILocation(line: 19, column: 1, scope: !5376)
!5393 = !DISubprogram(name: "tsc_verify_tsc_adjust", scope: !2249, file: !2249, line: 56, type: !5394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5394 = !DISubroutineType(types: !5395)
!5395 = !{null, !198}
!5396 = !DISubprogram(name: "sched_clock_tick_stable", scope: !2389, file: !2389, line: 77, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5397 = distinct !DISubprogram(name: "constant_test_bit", scope: !2585, file: !2585, line: 204, type: !5398, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5400)
!5398 = !DISubroutineType(types: !5399)
!5399 = !{!198, !212, !2588}
!5400 = !{!5401, !5402}
!5401 = !DILocalVariable(name: "nr", arg: 1, scope: !5397, file: !2585, line: 204, type: !212)
!5402 = !DILocalVariable(name: "addr", arg: 2, scope: !5397, file: !2585, line: 204, type: !2588)
!5403 = !DILocation(line: 204, column: 52, scope: !5397)
!5404 = !DILocation(line: 204, column: 86, scope: !5397)
!5405 = !DILocation(line: 206, column: 19, scope: !5397)
!5406 = !DILocation(line: 206, column: 22, scope: !5397)
!5407 = !DILocation(line: 206, column: 15, scope: !5397)
!5408 = !DILocation(line: 207, column: 4, scope: !5397)
!5409 = !DILocation(line: 207, column: 9, scope: !5397)
!5410 = !DILocation(line: 207, column: 12, scope: !5397)
!5411 = !DILocation(line: 206, column: 44, scope: !5397)
!5412 = !DILocation(line: 207, column: 37, scope: !5397)
!5413 = !DILocation(line: 206, column: 2, scope: !5397)
!5414 = distinct !DISubprogram(name: "variable_test_bit", scope: !2585, file: !2585, line: 224, type: !5398, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5415)
!5415 = !{!5416, !5417, !5418}
!5416 = !DILocalVariable(name: "nr", arg: 1, scope: !5414, file: !2585, line: 224, type: !212)
!5417 = !DILocalVariable(name: "addr", arg: 2, scope: !5414, file: !2585, line: 224, type: !2588)
!5418 = !DILocalVariable(name: "oldbit", scope: !5414, file: !2585, line: 226, type: !198)
!5419 = !DILocation(line: 224, column: 52, scope: !5414)
!5420 = !DILocation(line: 224, column: 86, scope: !5414)
!5421 = !DILocation(line: 226, column: 2, scope: !5414)
!5422 = !DILocation(line: 226, column: 7, scope: !5414)
!5423 = !DILocation(line: 231, column: 33, scope: !5414)
!5424 = !DILocation(line: 231, column: 46, scope: !5414)
!5425 = !DILocation(line: 228, column: 2, scope: !5414)
!5426 = !{i64 2147841079, i64 2147841153}
!5427 = !DILocation(line: 233, column: 9, scope: !5414)
!5428 = !DILocation(line: 234, column: 1, scope: !5414)
!5429 = !DILocation(line: 233, column: 2, scope: !5414)
!5430 = distinct !DISubprogram(name: "bitmap_weight", scope: !5431, file: !5431, line: 453, type: !5432, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5434)
!5431 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!5432 = !DISubroutineType(types: !5433)
!5433 = !{!7, !2482, !7}
!5434 = !{!5435, !5436}
!5435 = !DILocalVariable(name: "src", arg: 1, scope: !5430, file: !5431, line: 453, type: !2482)
!5436 = !DILocalVariable(name: "nbits", arg: 2, scope: !5430, file: !5431, line: 453, type: !7)
!5437 = !DILocation(line: 453, column: 49, scope: !5430)
!5438 = !DILocation(line: 453, column: 67, scope: !5430)
!5439 = !DILocation(line: 455, column: 6, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5430, file: !5431, line: 455, column: 6)
!5441 = !DILocation(line: 455, column: 6, scope: !5430)
!5442 = !DILocation(line: 456, column: 24, scope: !5440)
!5443 = !DILocation(line: 456, column: 23, scope: !5440)
!5444 = !DILocation(line: 456, column: 30, scope: !5440)
!5445 = !DILocation(line: 456, column: 28, scope: !5440)
!5446 = !DILocation(line: 456, column: 10, scope: !5440)
!5447 = !DILocation(line: 456, column: 3, scope: !5440)
!5448 = !DILocation(line: 457, column: 25, scope: !5430)
!5449 = !DILocation(line: 457, column: 30, scope: !5430)
!5450 = !DILocation(line: 457, column: 9, scope: !5430)
!5451 = !DILocation(line: 457, column: 2, scope: !5430)
!5452 = !DILocation(line: 458, column: 1, scope: !5430)
!5453 = distinct !DISubprogram(name: "hweight_long", scope: !5454, file: !5454, line: 95, type: !3471, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5455)
!5454 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!5455 = !{!5456}
!5456 = !DILocalVariable(name: "w", arg: 1, scope: !5453, file: !5454, line: 95, type: !102)
!5457 = !DILocation(line: 95, column: 65, scope: !5453)
!5458 = !DILocation(line: 97, column: 41, scope: !5453)
!5459 = !DILocation(line: 97, column: 2, scope: !5453)
!5460 = !DISubprogram(name: "__bitmap_weight", scope: !5431, file: !5431, line: 171, type: !5432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5461 = distinct !DISubprogram(name: "__arch_hweight64", scope: !5462, file: !5462, line: 43, type: !5463, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5465)
!5462 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!5463 = !DISubroutineType(types: !5464)
!5464 = !{!102, !106}
!5465 = !{!5466, !5467}
!5466 = !DILocalVariable(name: "w", arg: 1, scope: !5461, file: !5462, line: 43, type: !106)
!5467 = !DILocalVariable(name: "res", scope: !5461, file: !5462, line: 45, type: !102)
!5468 = !DILocation(line: 43, column: 61, scope: !5461)
!5469 = !DILocation(line: 45, column: 2, scope: !5461)
!5470 = !DILocation(line: 45, column: 16, scope: !5461)
!5471 = !DILocation(line: 49, column: 15, scope: !5461)
!5472 = !DILocation(line: 47, column: 2, scope: !5461)
!5473 = !{i64 2147888871, i64 2147888899, i64 2147888905, i64 2147888921, i64 2147888937, i64 2147888964, i64 2147889297, i64 2147888597, i64 2147889303, i64 2147889351, i64 2147889415, i64 2147889479, i64 2147889536, i64 2147888678, i64 2147888703, i64 2147889743, i64 2147889873, i64 2147889804, i64 2147889887, i64 2147888795}
!5474 = !DILocation(line: 51, column: 9, scope: !5461)
!5475 = !DILocation(line: 52, column: 1, scope: !5461)
!5476 = !DILocation(line: 51, column: 2, scope: !5461)
!5477 = !DISubprogram(name: "clocksource_unregister", scope: !331, file: !331, line: 210, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5478 = distinct !DISubprogram(name: "schedule_delayed_work", scope: !74, file: !74, line: 688, type: !5479, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5482)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{!198, !5481, !102}
!5481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!5482 = !{!5483, !5484}
!5483 = !DILocalVariable(name: "dwork", arg: 1, scope: !5478, file: !74, line: 688, type: !5481)
!5484 = !DILocalVariable(name: "delay", arg: 2, scope: !5478, file: !74, line: 689, type: !102)
!5485 = !DILocation(line: 688, column: 63, scope: !5478)
!5486 = !DILocation(line: 689, column: 21, scope: !5478)
!5487 = !DILocation(line: 691, column: 28, scope: !5478)
!5488 = !DILocation(line: 691, column: 39, scope: !5478)
!5489 = !DILocation(line: 691, column: 46, scope: !5478)
!5490 = !DILocation(line: 691, column: 9, scope: !5478)
!5491 = !DILocation(line: 691, column: 2, scope: !5478)
!5492 = distinct !DISubprogram(name: "queue_delayed_work", scope: !74, file: !74, line: 573, type: !5493, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5495)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{!198, !1334, !5481, !102}
!5495 = !{!5496, !5497, !5498}
!5496 = !DILocalVariable(name: "wq", arg: 1, scope: !5492, file: !74, line: 573, type: !1334)
!5497 = !DILocalVariable(name: "dwork", arg: 2, scope: !5492, file: !74, line: 574, type: !5481)
!5498 = !DILocalVariable(name: "delay", arg: 3, scope: !5492, file: !74, line: 575, type: !102)
!5499 = !DILocation(line: 573, column: 64, scope: !5492)
!5500 = !DILocation(line: 574, column: 32, scope: !5492)
!5501 = !DILocation(line: 575, column: 25, scope: !5492)
!5502 = !DILocation(line: 577, column: 49, scope: !5492)
!5503 = !DILocation(line: 577, column: 53, scope: !5492)
!5504 = !DILocation(line: 577, column: 60, scope: !5492)
!5505 = !DILocation(line: 577, column: 9, scope: !5492)
!5506 = !DILocation(line: 577, column: 2, scope: !5492)
!5507 = !DISubprogram(name: "queue_delayed_work_on", scope: !74, file: !74, line: 500, type: !5508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5508 = !DISubroutineType(types: !5509)
!5509 = !{!198, !125, !1334, !5481, !102}
!5510 = !DILocation(line: 1372, column: 61, scope: !1522)
!5511 = !DILocation(line: 1376, column: 2, scope: !1522)
!5512 = !DILocation(line: 1376, column: 6, scope: !1522)
!5513 = !DILocation(line: 1376, column: 16, scope: !1522)
!5514 = !DILocation(line: 1376, column: 26, scope: !1522)
!5515 = !DILocation(line: 1377, column: 2, scope: !1522)
!5516 = !DILocation(line: 1377, column: 16, scope: !1522)
!5517 = !DILocation(line: 1378, column: 2, scope: !1522)
!5518 = !DILocation(line: 1378, column: 6, scope: !1522)
!5519 = !DILocation(line: 1381, column: 6, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 1381, column: 6)
!5521 = !DILocation(line: 1381, column: 6, scope: !1522)
!5522 = !DILocation(line: 1382, column: 3, scope: !5520)
!5523 = !DILocation(line: 1389, column: 6, scope: !1532)
!5524 = !DILocation(line: 1389, column: 16, scope: !1532)
!5525 = !DILocation(line: 1389, column: 6, scope: !1522)
!5526 = !DILocation(line: 1389, column: 31, scope: !1532)
!5527 = !DILocation(line: 1390, column: 1, scope: !1531)
!5528 = !DILocation(line: 1395, column: 10, scope: !1531)
!5529 = !DILocation(line: 1395, column: 8, scope: !1531)
!5530 = !DILocation(line: 1396, column: 41, scope: !1531)
!5531 = !DILocation(line: 1396, column: 15, scope: !1531)
!5532 = !DILocation(line: 1396, column: 13, scope: !1531)
!5533 = !DILocation(line: 1397, column: 3, scope: !1531)
!5534 = !DILocation(line: 1398, column: 3, scope: !1531)
!5535 = !DILocation(line: 1401, column: 38, scope: !1522)
!5536 = !DILocation(line: 1401, column: 13, scope: !1522)
!5537 = !DILocation(line: 1401, column: 11, scope: !1522)
!5538 = !DILocation(line: 1404, column: 6, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 1404, column: 6)
!5540 = !DILocation(line: 1404, column: 19, scope: !5539)
!5541 = !DILocation(line: 1404, column: 16, scope: !5539)
!5542 = !DILocation(line: 1404, column: 6, scope: !1522)
!5543 = !DILocation(line: 1405, column: 3, scope: !5539)
!5544 = !DILocation(line: 1408, column: 6, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 1408, column: 6)
!5546 = !DILocation(line: 1408, column: 15, scope: !5545)
!5547 = !DILocation(line: 1408, column: 6, scope: !1522)
!5548 = !DILocation(line: 1409, column: 3, scope: !5545)
!5549 = !DILocation(line: 1411, column: 10, scope: !1522)
!5550 = !DILocation(line: 1411, column: 21, scope: !1522)
!5551 = !DILocation(line: 1411, column: 19, scope: !1522)
!5552 = !DILocation(line: 1411, column: 8, scope: !1522)
!5553 = !DILocation(line: 1412, column: 8, scope: !1522)
!5554 = !DILocation(line: 1413, column: 6, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 1413, column: 6)
!5556 = !DILocation(line: 1413, column: 6, scope: !1522)
!5557 = !DILocation(line: 1414, column: 24, scope: !5555)
!5558 = !DILocation(line: 1414, column: 31, scope: !5555)
!5559 = !DILocation(line: 1414, column: 42, scope: !5555)
!5560 = !DILocation(line: 1414, column: 10, scope: !5555)
!5561 = !DILocation(line: 1414, column: 8, scope: !5555)
!5562 = !DILocation(line: 1414, column: 3, scope: !5555)
!5563 = !DILocation(line: 1416, column: 27, scope: !5555)
!5564 = !DILocation(line: 1416, column: 34, scope: !5555)
!5565 = !DILocation(line: 1416, column: 45, scope: !5555)
!5566 = !DILocation(line: 1416, column: 10, scope: !5555)
!5567 = !DILocation(line: 1416, column: 8, scope: !5555)
!5568 = !DILocation(line: 1419, column: 6, scope: !1522)
!5569 = !DILocation(line: 1419, column: 6, scope: !1537)
!5570 = !DILocation(line: 1422, column: 7, scope: !1534)
!5571 = !DILocation(line: 1422, column: 7, scope: !1535)
!5572 = !DILocation(line: 1422, column: 30, scope: !1535)
!5573 = !DILocation(line: 1422, column: 38, scope: !1535)
!5574 = !DILocation(line: 1422, column: 29, scope: !1535)
!5575 = !DILocation(line: 1422, column: 27, scope: !1535)
!5576 = !DILocation(line: 1422, column: 7, scope: !1536)
!5577 = !DILocation(line: 1423, column: 4, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 1423, column: 4)
!5579 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 1422, column: 46)
!5580 = !DILocation(line: 1423, column: 4, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5578, file: !3, line: 1423, column: 4)
!5582 = !DILocation(line: 1424, column: 4, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 1424, column: 4)
!5584 = !DILocation(line: 1424, column: 4, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 1424, column: 4)
!5586 = !DILocation(line: 1427, column: 3, scope: !5579)
!5587 = !DILocation(line: 1429, column: 3, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 1429, column: 3)
!5589 = !DILocation(line: 1429, column: 3, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 1429, column: 3)
!5591 = !DILocation(line: 1434, column: 3, scope: !1536)
!5592 = !DILocation(line: 1438, column: 6, scope: !1539)
!5593 = !DILocation(line: 1438, column: 6, scope: !1540)
!5594 = !DILocation(line: 1438, column: 28, scope: !1540)
!5595 = !DILocation(line: 1438, column: 35, scope: !1540)
!5596 = !DILocation(line: 1438, column: 26, scope: !1540)
!5597 = !DILocation(line: 1438, column: 6, scope: !1522)
!5598 = !DILocation(line: 1439, column: 3, scope: !1540)
!5599 = !DILocation(line: 1441, column: 12, scope: !1522)
!5600 = !DILocation(line: 1441, column: 10, scope: !1522)
!5601 = !DILocation(line: 1442, column: 2, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 1442, column: 2)
!5603 = !DILocation(line: 1442, column: 2, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 1442, column: 2)
!5605 = !DILocation(line: 1447, column: 2, scope: !1522)
!5606 = !DILocation(line: 1450, column: 2, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 1450, column: 2)
!5608 = !DILocation(line: 1450, column: 2, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5607, file: !3, line: 1450, column: 2)
!5610 = !DILocation(line: 1451, column: 20, scope: !5609)
!5611 = !DILocation(line: 1451, column: 29, scope: !5609)
!5612 = !DILocation(line: 1451, column: 34, scope: !5609)
!5613 = !DILocation(line: 1451, column: 3, scope: !5609)
!5614 = distinct !{!5614, !5606, !5615, !1721, !1722}
!5615 = !DILocation(line: 1451, column: 42, scope: !5607)
!5616 = !DILocation(line: 1453, column: 1, scope: !1522)
!5617 = !DILocation(line: 1454, column: 6, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 1454, column: 6)
!5619 = !DILocation(line: 1454, column: 6, scope: !1522)
!5620 = !DILocation(line: 1455, column: 3, scope: !5618)
!5621 = !DILocation(line: 1457, column: 6, scope: !1522)
!5622 = !DILocation(line: 1457, column: 6, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 1457, column: 6)
!5624 = !DILocation(line: 1458, column: 27, scope: !5623)
!5625 = !DILocation(line: 1458, column: 3, scope: !5623)
!5626 = !DILocation(line: 1459, column: 45, scope: !1522)
!5627 = !DILocation(line: 1459, column: 2, scope: !1522)
!5628 = !DILocation(line: 1460, column: 1, scope: !1522)
!5629 = !DILocation(line: 1461, column: 2, scope: !1522)
!5630 = !DILocation(line: 1462, column: 1, scope: !1522)
!5631 = !DISubprogram(name: "is_hpet_enabled", scope: !5632, file: !5632, line: 71, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5632 = !DIFile(filename: "./arch/x86/include/asm/hpet.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bf2ddcd811b6804706aefc6f053a8835")
!5633 = distinct !DISubprogram(name: "tsc_read_refs", scope: !3, file: !3, line: 353, type: !5634, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5636)
!5634 = !DISubroutineType(types: !5635)
!5635 = !{!104, !103, !125}
!5636 = !{!5637, !5638, !5639, !5640, !5641, !5642}
!5637 = !DILocalVariable(name: "p", arg: 1, scope: !5633, file: !3, line: 353, type: !103)
!5638 = !DILocalVariable(name: "hpet", arg: 2, scope: !5633, file: !3, line: 353, type: !125)
!5639 = !DILocalVariable(name: "t1", scope: !5633, file: !3, line: 355, type: !104)
!5640 = !DILocalVariable(name: "t2", scope: !5633, file: !3, line: 355, type: !104)
!5641 = !DILocalVariable(name: "thresh", scope: !5633, file: !3, line: 356, type: !104)
!5642 = !DILocalVariable(name: "i", scope: !5633, file: !3, line: 357, type: !125)
!5643 = !DILocation(line: 353, column: 31, scope: !5633)
!5644 = !DILocation(line: 353, column: 38, scope: !5633)
!5645 = !DILocation(line: 355, column: 2, scope: !5633)
!5646 = !DILocation(line: 355, column: 6, scope: !5633)
!5647 = !DILocation(line: 355, column: 10, scope: !5633)
!5648 = !DILocation(line: 356, column: 2, scope: !5633)
!5649 = !DILocation(line: 356, column: 6, scope: !5633)
!5650 = !DILocation(line: 356, column: 15, scope: !5633)
!5651 = !DILocation(line: 356, column: 25, scope: !5633)
!5652 = !DILocation(line: 356, column: 33, scope: !5633)
!5653 = !DILocation(line: 357, column: 2, scope: !5633)
!5654 = !DILocation(line: 357, column: 6, scope: !5633)
!5655 = !DILocation(line: 359, column: 9, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 359, column: 2)
!5657 = !DILocation(line: 359, column: 7, scope: !5656)
!5658 = !DILocation(line: 359, column: 14, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 359, column: 2)
!5660 = !DILocation(line: 359, column: 16, scope: !5659)
!5661 = !DILocation(line: 359, column: 2, scope: !5656)
!5662 = !DILocation(line: 360, column: 8, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 359, column: 36)
!5664 = !DILocation(line: 360, column: 6, scope: !5663)
!5665 = !DILocation(line: 361, column: 7, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 361, column: 7)
!5667 = !DILocation(line: 361, column: 7, scope: !5663)
!5668 = !DILocation(line: 362, column: 9, scope: !5666)
!5669 = !DILocation(line: 362, column: 34, scope: !5666)
!5670 = !DILocation(line: 362, column: 5, scope: !5666)
!5671 = !DILocation(line: 362, column: 7, scope: !5666)
!5672 = !DILocation(line: 362, column: 4, scope: !5666)
!5673 = !DILocation(line: 364, column: 9, scope: !5666)
!5674 = !DILocation(line: 364, column: 5, scope: !5666)
!5675 = !DILocation(line: 364, column: 7, scope: !5666)
!5676 = !DILocation(line: 365, column: 8, scope: !5663)
!5677 = !DILocation(line: 365, column: 6, scope: !5663)
!5678 = !DILocation(line: 366, column: 8, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 366, column: 7)
!5680 = !DILocation(line: 366, column: 13, scope: !5679)
!5681 = !DILocation(line: 366, column: 11, scope: !5679)
!5682 = !DILocation(line: 366, column: 19, scope: !5679)
!5683 = !DILocation(line: 366, column: 17, scope: !5679)
!5684 = !DILocation(line: 366, column: 7, scope: !5663)
!5685 = !DILocation(line: 367, column: 11, scope: !5679)
!5686 = !DILocation(line: 367, column: 4, scope: !5679)
!5687 = !DILocation(line: 368, column: 2, scope: !5663)
!5688 = !DILocation(line: 359, column: 32, scope: !5659)
!5689 = !DILocation(line: 359, column: 2, scope: !5659)
!5690 = distinct !{!5690, !5661, !5691, !1721, !1722}
!5691 = !DILocation(line: 368, column: 2, scope: !5656)
!5692 = !DILocation(line: 369, column: 2, scope: !5633)
!5693 = !DILocation(line: 370, column: 1, scope: !5633)
!5694 = distinct !DISubprogram(name: "calc_hpet_ref", scope: !3, file: !3, line: 375, type: !5695, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5697)
!5695 = !DISubroutineType(types: !5696)
!5696 = !{!102, !104, !104, !104}
!5697 = !{!5698, !5699, !5700, !5701, !5702, !5704}
!5698 = !DILocalVariable(name: "deltatsc", arg: 1, scope: !5694, file: !3, line: 375, type: !104)
!5699 = !DILocalVariable(name: "hpet1", arg: 2, scope: !5694, file: !3, line: 375, type: !104)
!5700 = !DILocalVariable(name: "hpet2", arg: 3, scope: !5694, file: !3, line: 375, type: !104)
!5701 = !DILocalVariable(name: "tmp", scope: !5694, file: !3, line: 377, type: !104)
!5702 = !DILocalVariable(name: "__base", scope: !5703, file: !3, line: 383, type: !2271)
!5703 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 383, column: 2)
!5704 = !DILocalVariable(name: "__rem", scope: !5703, file: !3, line: 383, type: !2271)
!5705 = !DILocation(line: 375, column: 40, scope: !5694)
!5706 = !DILocation(line: 375, column: 54, scope: !5694)
!5707 = !DILocation(line: 375, column: 65, scope: !5694)
!5708 = !DILocation(line: 377, column: 2, scope: !5694)
!5709 = !DILocation(line: 377, column: 6, scope: !5694)
!5710 = !DILocation(line: 379, column: 6, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 379, column: 6)
!5712 = !DILocation(line: 379, column: 14, scope: !5711)
!5713 = !DILocation(line: 379, column: 12, scope: !5711)
!5714 = !DILocation(line: 379, column: 6, scope: !5694)
!5715 = !DILocation(line: 380, column: 9, scope: !5711)
!5716 = !DILocation(line: 380, column: 3, scope: !5711)
!5717 = !DILocation(line: 381, column: 11, scope: !5694)
!5718 = !DILocation(line: 381, column: 8, scope: !5694)
!5719 = !DILocation(line: 382, column: 14, scope: !5694)
!5720 = !DILocation(line: 382, column: 22, scope: !5694)
!5721 = !DILocation(line: 382, column: 20, scope: !5694)
!5722 = !DILocation(line: 382, column: 6, scope: !5694)
!5723 = !DILocation(line: 383, column: 2, scope: !5703)
!5724 = !DILocation(line: 383, column: 2, scope: !5694)
!5725 = !DILocation(line: 384, column: 23, scope: !5694)
!5726 = !DILocation(line: 384, column: 33, scope: !5694)
!5727 = !DILocation(line: 384, column: 13, scope: !5694)
!5728 = !DILocation(line: 384, column: 11, scope: !5694)
!5729 = !DILocation(line: 386, column: 25, scope: !5694)
!5730 = !DILocation(line: 387, column: 1, scope: !5694)
!5731 = !DILocation(line: 386, column: 2, scope: !5694)
!5732 = distinct !DISubprogram(name: "calc_pmtimer_ref", scope: !3, file: !3, line: 392, type: !5695, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5733)
!5733 = !{!5734, !5735, !5736, !5737, !5738, !5740, !5741, !5743}
!5734 = !DILocalVariable(name: "deltatsc", arg: 1, scope: !5732, file: !3, line: 392, type: !104)
!5735 = !DILocalVariable(name: "pm1", arg: 2, scope: !5732, file: !3, line: 392, type: !104)
!5736 = !DILocalVariable(name: "pm2", arg: 3, scope: !5732, file: !3, line: 392, type: !104)
!5737 = !DILocalVariable(name: "tmp", scope: !5732, file: !3, line: 394, type: !104)
!5738 = !DILocalVariable(name: "__base", scope: !5739, file: !3, line: 403, type: !2271)
!5739 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 403, column: 2)
!5740 = !DILocalVariable(name: "__rem", scope: !5739, file: !3, line: 403, type: !2271)
!5741 = !DILocalVariable(name: "__base", scope: !5742, file: !3, line: 404, type: !2271)
!5742 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 404, column: 2)
!5743 = !DILocalVariable(name: "__rem", scope: !5742, file: !3, line: 404, type: !2271)
!5744 = !DILocation(line: 392, column: 43, scope: !5732)
!5745 = !DILocation(line: 392, column: 57, scope: !5732)
!5746 = !DILocation(line: 392, column: 66, scope: !5732)
!5747 = !DILocation(line: 394, column: 2, scope: !5732)
!5748 = !DILocation(line: 394, column: 6, scope: !5732)
!5749 = !DILocation(line: 396, column: 7, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 396, column: 6)
!5751 = !DILocation(line: 396, column: 11, scope: !5750)
!5752 = !DILocation(line: 396, column: 15, scope: !5750)
!5753 = !DILocation(line: 396, column: 6, scope: !5732)
!5754 = !DILocation(line: 397, column: 3, scope: !5750)
!5755 = !DILocation(line: 399, column: 6, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 399, column: 6)
!5757 = !DILocation(line: 399, column: 12, scope: !5756)
!5758 = !DILocation(line: 399, column: 10, scope: !5756)
!5759 = !DILocation(line: 399, column: 6, scope: !5732)
!5760 = !DILocation(line: 400, column: 7, scope: !5756)
!5761 = !DILocation(line: 400, column: 3, scope: !5756)
!5762 = !DILocation(line: 401, column: 9, scope: !5732)
!5763 = !DILocation(line: 401, column: 6, scope: !5732)
!5764 = !DILocation(line: 402, column: 8, scope: !5732)
!5765 = !DILocation(line: 402, column: 12, scope: !5732)
!5766 = !DILocation(line: 402, column: 6, scope: !5732)
!5767 = !DILocation(line: 403, column: 2, scope: !5739)
!5768 = !DILocation(line: 403, column: 2, scope: !5732)
!5769 = !DILocation(line: 404, column: 2, scope: !5742)
!5770 = !DILocation(line: 404, column: 2, scope: !5732)
!5771 = !DILocation(line: 406, column: 25, scope: !5732)
!5772 = !DILocation(line: 406, column: 2, scope: !5732)
!5773 = !DILocation(line: 407, column: 1, scope: !5732)
!5774 = !DISubprogram(name: "lapic_update_tsc_freq", scope: !2605, file: !2605, line: 138, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5775 = !DISubprogram(name: "hpet_readl", scope: !5632, file: !5632, line: 74, type: !5776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5776 = !DISubroutineType(types: !5777)
!5777 = !{!7, !7}
!5778 = distinct !DISubprogram(name: "acpi_pm_read_early", scope: !5779, file: !5779, line: 21, type: !5780, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5779 = !DIFile(filename: "./include/linux/acpi_pmtmr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb593109baf02e888c386cfb4d8e1fd")
!5780 = !DISubroutineType(types: !5781)
!5781 = !{!110}
!5782 = !DILocation(line: 23, column: 7, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5778, file: !5779, line: 23, column: 6)
!5784 = !DILocation(line: 23, column: 6, scope: !5778)
!5785 = !DILocation(line: 24, column: 3, scope: !5783)
!5786 = !DILocation(line: 26, column: 9, scope: !5778)
!5787 = !DILocation(line: 26, column: 33, scope: !5778)
!5788 = !DILocation(line: 26, column: 2, scope: !5778)
!5789 = !DILocation(line: 27, column: 1, scope: !5778)
!5790 = !DISubprogram(name: "acpi_pm_read_verified", scope: !5779, file: !5779, line: 18, type: !5780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5791 = distinct !DISubprogram(name: "div64_u64", scope: !3233, file: !3233, line: 67, type: !5792, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5794)
!5792 = !DISubroutineType(types: !5793)
!5793 = !{!104, !104, !104}
!5794 = !{!5795, !5796}
!5795 = !DILocalVariable(name: "dividend", arg: 1, scope: !5791, file: !3233, line: 67, type: !104)
!5796 = !DILocalVariable(name: "divisor", arg: 2, scope: !5791, file: !3233, line: 67, type: !104)
!5797 = !DILocation(line: 67, column: 33, scope: !5791)
!5798 = !DILocation(line: 67, column: 47, scope: !5791)
!5799 = !DILocation(line: 69, column: 9, scope: !5791)
!5800 = !DILocation(line: 69, column: 20, scope: !5791)
!5801 = !DILocation(line: 69, column: 18, scope: !5791)
!5802 = !DILocation(line: 69, column: 2, scope: !5791)
!5803 = distinct !DISubprogram(name: "pit_hpet_ptimer_calibrate_cpu", scope: !3, file: !3, line: 753, type: !2018, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5804)
!5804 = !{!5805, !5806, !5807, !5808, !5809, !5810, !5811, !5812, !5813, !5814, !5815, !5816, !5817, !5818, !5822, !5826, !5827, !5831, !5832, !5834, !5835, !5837, !5838, !5840}
!5805 = !DILocalVariable(name: "tsc1", scope: !5803, file: !3, line: 755, type: !104)
!5806 = !DILocalVariable(name: "tsc2", scope: !5803, file: !3, line: 755, type: !104)
!5807 = !DILocalVariable(name: "delta", scope: !5803, file: !3, line: 755, type: !104)
!5808 = !DILocalVariable(name: "ref1", scope: !5803, file: !3, line: 755, type: !104)
!5809 = !DILocalVariable(name: "ref2", scope: !5803, file: !3, line: 755, type: !104)
!5810 = !DILocalVariable(name: "tsc_pit_min", scope: !5803, file: !3, line: 756, type: !102)
!5811 = !DILocalVariable(name: "tsc_ref_min", scope: !5803, file: !3, line: 756, type: !102)
!5812 = !DILocalVariable(name: "flags", scope: !5803, file: !3, line: 757, type: !102)
!5813 = !DILocalVariable(name: "latch", scope: !5803, file: !3, line: 757, type: !102)
!5814 = !DILocalVariable(name: "ms", scope: !5803, file: !3, line: 757, type: !102)
!5815 = !DILocalVariable(name: "hpet", scope: !5803, file: !3, line: 758, type: !125)
!5816 = !DILocalVariable(name: "i", scope: !5803, file: !3, line: 758, type: !125)
!5817 = !DILocalVariable(name: "loopmin", scope: !5803, file: !3, line: 758, type: !125)
!5818 = !DILocalVariable(name: "tsc_pit_khz", scope: !5819, file: !3, line: 791, type: !102)
!5819 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 790, column: 26)
!5820 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 790, column: 2)
!5821 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 790, column: 2)
!5822 = !DILocalVariable(name: "__dummy", scope: !5823, file: !3, line: 799, type: !102)
!5823 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 799, column: 3)
!5824 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 799, column: 3)
!5825 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 799, column: 3)
!5826 = !DILocalVariable(name: "__dummy2", scope: !5823, file: !3, line: 799, type: !102)
!5827 = !DILocalVariable(name: "__dummy", scope: !5828, file: !3, line: 803, type: !102)
!5828 = distinct !DILexicalBlock(scope: !5829, file: !3, line: 803, column: 3)
!5829 = distinct !DILexicalBlock(scope: !5830, file: !3, line: 803, column: 3)
!5830 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 803, column: 3)
!5831 = !DILocalVariable(name: "__dummy2", scope: !5828, file: !3, line: 803, type: !102)
!5832 = !DILocalVariable(name: "__UNIQUE_ID___x292", scope: !5833, file: !3, line: 806, type: !102)
!5833 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 806, column: 17)
!5834 = !DILocalVariable(name: "__UNIQUE_ID___y293", scope: !5833, file: !3, line: 806, type: !102)
!5835 = !DILocalVariable(name: "__UNIQUE_ID___x294", scope: !5836, file: !3, line: 822, type: !102)
!5836 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 822, column: 17)
!5837 = !DILocalVariable(name: "__UNIQUE_ID___y295", scope: !5836, file: !3, line: 822, type: !102)
!5838 = !DILocalVariable(name: "__base", scope: !5839, file: !3, line: 826, type: !2271)
!5839 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 826, column: 3)
!5840 = !DILocalVariable(name: "__rem", scope: !5839, file: !3, line: 826, type: !2271)
!5841 = !DILocation(line: 755, column: 2, scope: !5803)
!5842 = !DILocation(line: 755, column: 6, scope: !5803)
!5843 = !DILocation(line: 755, column: 12, scope: !5803)
!5844 = !DILocation(line: 755, column: 18, scope: !5803)
!5845 = !DILocation(line: 755, column: 25, scope: !5803)
!5846 = !DILocation(line: 755, column: 31, scope: !5803)
!5847 = !DILocation(line: 756, column: 2, scope: !5803)
!5848 = !DILocation(line: 756, column: 16, scope: !5803)
!5849 = !DILocation(line: 756, column: 41, scope: !5803)
!5850 = !DILocation(line: 757, column: 2, scope: !5803)
!5851 = !DILocation(line: 757, column: 16, scope: !5803)
!5852 = !DILocation(line: 757, column: 23, scope: !5803)
!5853 = !DILocation(line: 757, column: 30, scope: !5803)
!5854 = !DILocation(line: 758, column: 2, scope: !5803)
!5855 = !DILocation(line: 758, column: 6, scope: !5803)
!5856 = !DILocation(line: 758, column: 13, scope: !5803)
!5857 = !DILocation(line: 758, column: 32, scope: !5803)
!5858 = !DILocation(line: 758, column: 35, scope: !5803)
!5859 = !DILocation(line: 786, column: 8, scope: !5803)
!5860 = !DILocation(line: 787, column: 5, scope: !5803)
!5861 = !DILocation(line: 788, column: 10, scope: !5803)
!5862 = !DILocation(line: 790, column: 9, scope: !5821)
!5863 = !DILocation(line: 790, column: 7, scope: !5821)
!5864 = !DILocation(line: 790, column: 14, scope: !5820)
!5865 = !DILocation(line: 790, column: 16, scope: !5820)
!5866 = !DILocation(line: 790, column: 2, scope: !5821)
!5867 = !DILocation(line: 791, column: 3, scope: !5819)
!5868 = !DILocation(line: 791, column: 17, scope: !5819)
!5869 = !DILocation(line: 799, column: 3, scope: !5819)
!5870 = !DILocation(line: 799, column: 3, scope: !5825)
!5871 = !DILocation(line: 799, column: 3, scope: !5823)
!5872 = !DILocation(line: 799, column: 3, scope: !5824)
!5873 = !DILocation(line: 800, column: 31, scope: !5819)
!5874 = !DILocation(line: 800, column: 10, scope: !5819)
!5875 = !DILocation(line: 800, column: 8, scope: !5819)
!5876 = !DILocation(line: 801, column: 35, scope: !5819)
!5877 = !DILocation(line: 801, column: 42, scope: !5819)
!5878 = !DILocation(line: 801, column: 46, scope: !5819)
!5879 = !DILocation(line: 801, column: 17, scope: !5819)
!5880 = !DILocation(line: 801, column: 15, scope: !5819)
!5881 = !DILocation(line: 802, column: 31, scope: !5819)
!5882 = !DILocation(line: 802, column: 10, scope: !5819)
!5883 = !DILocation(line: 802, column: 8, scope: !5819)
!5884 = !DILocation(line: 803, column: 3, scope: !5819)
!5885 = !DILocation(line: 803, column: 3, scope: !5830)
!5886 = !DILocation(line: 803, column: 3, scope: !5828)
!5887 = !DILocation(line: 803, column: 3, scope: !5829)
!5888 = !DILocation(line: 803, column: 3, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5829, file: !3, line: 803, column: 3)
!5890 = !DILocation(line: 806, column: 17, scope: !5833)
!5891 = !DILocation(line: 806, column: 17, scope: !5819)
!5892 = !DILocation(line: 806, column: 15, scope: !5819)
!5893 = !DILocation(line: 809, column: 7, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 809, column: 7)
!5895 = !DILocation(line: 809, column: 15, scope: !5894)
!5896 = !DILocation(line: 809, column: 12, scope: !5894)
!5897 = !DILocation(line: 809, column: 7, scope: !5819)
!5898 = !DILocation(line: 810, column: 4, scope: !5894)
!5899 = !DILocation(line: 813, column: 7, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 813, column: 7)
!5901 = !DILocation(line: 813, column: 12, scope: !5900)
!5902 = !DILocation(line: 813, column: 26, scope: !5900)
!5903 = !DILocation(line: 813, column: 29, scope: !5900)
!5904 = !DILocation(line: 813, column: 34, scope: !5900)
!5905 = !DILocation(line: 813, column: 7, scope: !5819)
!5906 = !DILocation(line: 814, column: 4, scope: !5900)
!5907 = !DILocation(line: 816, column: 11, scope: !5819)
!5908 = !DILocation(line: 816, column: 18, scope: !5819)
!5909 = !DILocation(line: 816, column: 16, scope: !5819)
!5910 = !DILocation(line: 816, column: 24, scope: !5819)
!5911 = !DILocation(line: 816, column: 8, scope: !5819)
!5912 = !DILocation(line: 817, column: 7, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 817, column: 7)
!5914 = !DILocation(line: 817, column: 7, scope: !5819)
!5915 = !DILocation(line: 818, column: 25, scope: !5913)
!5916 = !DILocation(line: 818, column: 31, scope: !5913)
!5917 = !DILocation(line: 818, column: 37, scope: !5913)
!5918 = !DILocation(line: 818, column: 11, scope: !5913)
!5919 = !DILocation(line: 818, column: 9, scope: !5913)
!5920 = !DILocation(line: 818, column: 4, scope: !5913)
!5921 = !DILocation(line: 820, column: 28, scope: !5913)
!5922 = !DILocation(line: 820, column: 34, scope: !5913)
!5923 = !DILocation(line: 820, column: 40, scope: !5913)
!5924 = !DILocation(line: 820, column: 11, scope: !5913)
!5925 = !DILocation(line: 820, column: 9, scope: !5913)
!5926 = !DILocation(line: 822, column: 17, scope: !5836)
!5927 = !DILocation(line: 822, column: 17, scope: !5819)
!5928 = !DILocation(line: 822, column: 15, scope: !5819)
!5929 = !DILocation(line: 825, column: 18, scope: !5819)
!5930 = !DILocation(line: 825, column: 31, scope: !5819)
!5931 = !DILocation(line: 825, column: 9, scope: !5819)
!5932 = !DILocation(line: 826, column: 3, scope: !5839)
!5933 = !DILocation(line: 826, column: 3, scope: !5819)
!5934 = !DILocation(line: 834, column: 7, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 834, column: 7)
!5936 = !DILocation(line: 834, column: 13, scope: !5935)
!5937 = !DILocation(line: 834, column: 19, scope: !5935)
!5938 = !DILocation(line: 834, column: 22, scope: !5935)
!5939 = !DILocation(line: 834, column: 28, scope: !5935)
!5940 = !DILocation(line: 834, column: 7, scope: !5819)
!5941 = !DILocation(line: 835, column: 4, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 835, column: 4)
!5943 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 834, column: 36)
!5944 = !DILocation(line: 835, column: 4, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5942, file: !3, line: 835, column: 4)
!5946 = !DILocation(line: 837, column: 11, scope: !5943)
!5947 = !DILocation(line: 837, column: 4, scope: !5943)
!5948 = !DILocation(line: 846, column: 7, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 846, column: 7)
!5950 = !DILocation(line: 846, column: 9, scope: !5949)
!5951 = !DILocation(line: 846, column: 14, scope: !5949)
!5952 = !DILocation(line: 846, column: 17, scope: !5949)
!5953 = !DILocation(line: 846, column: 29, scope: !5949)
!5954 = !DILocation(line: 846, column: 7, scope: !5819)
!5955 = !DILocation(line: 847, column: 10, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 846, column: 43)
!5957 = !DILocation(line: 848, column: 7, scope: !5956)
!5958 = !DILocation(line: 849, column: 12, scope: !5956)
!5959 = !DILocation(line: 850, column: 3, scope: !5956)
!5960 = !DILocation(line: 851, column: 2, scope: !5820)
!5961 = !DILocation(line: 851, column: 2, scope: !5819)
!5962 = !DILocation(line: 790, column: 22, scope: !5820)
!5963 = !DILocation(line: 790, column: 2, scope: !5820)
!5964 = distinct !{!5964, !5866, !5965, !1721, !1722}
!5965 = !DILocation(line: 851, column: 2, scope: !5821)
!5966 = !DILocation(line: 856, column: 6, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 856, column: 6)
!5968 = !DILocation(line: 856, column: 18, scope: !5967)
!5969 = !DILocation(line: 856, column: 6, scope: !5803)
!5970 = !DILocation(line: 858, column: 3, scope: !5971)
!5971 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 858, column: 3)
!5972 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 856, column: 32)
!5973 = !DILocation(line: 858, column: 3, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5971, file: !3, line: 858, column: 3)
!5975 = !DILocation(line: 861, column: 8, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 861, column: 7)
!5977 = !DILocation(line: 861, column: 13, scope: !5976)
!5978 = !DILocation(line: 861, column: 17, scope: !5976)
!5979 = !DILocation(line: 861, column: 22, scope: !5976)
!5980 = !DILocation(line: 861, column: 26, scope: !5976)
!5981 = !DILocation(line: 861, column: 7, scope: !5972)
!5982 = !DILocation(line: 862, column: 4, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5984, file: !3, line: 862, column: 4)
!5984 = distinct !DILexicalBlock(scope: !5976, file: !3, line: 861, column: 32)
!5985 = !DILocation(line: 862, column: 4, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5983, file: !3, line: 862, column: 4)
!5987 = !DILocation(line: 863, column: 4, scope: !5984)
!5988 = !DILocation(line: 867, column: 7, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 867, column: 7)
!5990 = !DILocation(line: 867, column: 19, scope: !5989)
!5991 = !DILocation(line: 867, column: 7, scope: !5972)
!5992 = !DILocation(line: 868, column: 4, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 868, column: 4)
!5994 = distinct !DILexicalBlock(scope: !5989, file: !3, line: 867, column: 33)
!5995 = !DILocation(line: 868, column: 4, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 868, column: 4)
!5997 = !DILocation(line: 869, column: 4, scope: !5994)
!5998 = !DILocation(line: 873, column: 3, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 873, column: 3)
!6000 = !DILocation(line: 873, column: 3, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5999, file: !3, line: 873, column: 3)
!6002 = !DILocation(line: 876, column: 10, scope: !5972)
!6003 = !DILocation(line: 876, column: 3, scope: !5972)
!6004 = !DILocation(line: 880, column: 7, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 880, column: 6)
!6006 = !DILocation(line: 880, column: 12, scope: !6005)
!6007 = !DILocation(line: 880, column: 16, scope: !6005)
!6008 = !DILocation(line: 880, column: 21, scope: !6005)
!6009 = !DILocation(line: 880, column: 25, scope: !6005)
!6010 = !DILocation(line: 880, column: 6, scope: !5803)
!6011 = !DILocation(line: 881, column: 3, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !6013, file: !3, line: 881, column: 3)
!6013 = distinct !DILexicalBlock(scope: !6005, file: !3, line: 880, column: 31)
!6014 = !DILocation(line: 881, column: 3, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !6012, file: !3, line: 881, column: 3)
!6016 = !DILocation(line: 882, column: 10, scope: !6013)
!6017 = !DILocation(line: 882, column: 3, scope: !6013)
!6018 = !DILocation(line: 886, column: 6, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 886, column: 6)
!6020 = !DILocation(line: 886, column: 18, scope: !6019)
!6021 = !DILocation(line: 886, column: 6, scope: !5803)
!6022 = !DILocation(line: 887, column: 3, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 887, column: 3)
!6024 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 886, column: 32)
!6025 = !DILocation(line: 887, column: 3, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !6023, file: !3, line: 887, column: 3)
!6027 = !DILocation(line: 888, column: 10, scope: !6024)
!6028 = !DILocation(line: 888, column: 3, scope: !6024)
!6029 = !DILocation(line: 896, column: 2, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 896, column: 2)
!6031 = !DILocation(line: 896, column: 2, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6030, file: !3, line: 896, column: 2)
!6033 = !DILocation(line: 898, column: 2, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 898, column: 2)
!6035 = !DILocation(line: 898, column: 2, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !6034, file: !3, line: 898, column: 2)
!6037 = !DILocation(line: 899, column: 9, scope: !5803)
!6038 = !DILocation(line: 899, column: 2, scope: !5803)
!6039 = !DILocation(line: 900, column: 1, scope: !5803)
!6040 = distinct !DISubprogram(name: "pit_calibrate_tsc", scope: !3, file: !3, line: 425, type: !6041, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6043)
!6041 = !DISubroutineType(types: !6042)
!6042 = !{!102, !110, !102, !125}
!6043 = !{!6044, !6045, !6046, !6047, !6048, !6049, !6050, !6051, !6052, !6053, !6054, !6056}
!6044 = !DILocalVariable(name: "latch", arg: 1, scope: !6040, file: !3, line: 425, type: !110)
!6045 = !DILocalVariable(name: "ms", arg: 2, scope: !6040, file: !3, line: 425, type: !102)
!6046 = !DILocalVariable(name: "loopmin", arg: 3, scope: !6040, file: !3, line: 425, type: !125)
!6047 = !DILocalVariable(name: "tsc", scope: !6040, file: !3, line: 427, type: !104)
!6048 = !DILocalVariable(name: "t1", scope: !6040, file: !3, line: 427, type: !104)
!6049 = !DILocalVariable(name: "t2", scope: !6040, file: !3, line: 427, type: !104)
!6050 = !DILocalVariable(name: "delta", scope: !6040, file: !3, line: 427, type: !104)
!6051 = !DILocalVariable(name: "tscmin", scope: !6040, file: !3, line: 428, type: !102)
!6052 = !DILocalVariable(name: "tscmax", scope: !6040, file: !3, line: 428, type: !102)
!6053 = !DILocalVariable(name: "pitcnt", scope: !6040, file: !3, line: 429, type: !125)
!6054 = !DILocalVariable(name: "__base", scope: !6055, file: !3, line: 487, type: !2271)
!6055 = distinct !DILexicalBlock(scope: !6040, file: !3, line: 487, column: 2)
!6056 = !DILocalVariable(name: "__rem", scope: !6055, file: !3, line: 487, type: !2271)
!6057 = !DILocation(line: 425, column: 44, scope: !6040)
!6058 = !DILocation(line: 425, column: 65, scope: !6040)
!6059 = !DILocation(line: 425, column: 73, scope: !6040)
!6060 = !DILocation(line: 427, column: 2, scope: !6040)
!6061 = !DILocation(line: 427, column: 6, scope: !6040)
!6062 = !DILocation(line: 427, column: 11, scope: !6040)
!6063 = !DILocation(line: 427, column: 15, scope: !6040)
!6064 = !DILocation(line: 427, column: 19, scope: !6040)
!6065 = !DILocation(line: 428, column: 2, scope: !6040)
!6066 = !DILocation(line: 428, column: 16, scope: !6040)
!6067 = !DILocation(line: 428, column: 24, scope: !6040)
!6068 = !DILocation(line: 429, column: 2, scope: !6040)
!6069 = !DILocation(line: 429, column: 6, scope: !6040)
!6070 = !DILocation(line: 431, column: 7, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6040, file: !3, line: 431, column: 6)
!6072 = !DILocation(line: 431, column: 6, scope: !6040)
!6073 = !DILocation(line: 437, column: 3, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 437, column: 3)
!6075 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 437, column: 3)
!6076 = distinct !DILexicalBlock(scope: !6077, file: !3, line: 437, column: 3)
!6077 = distinct !DILexicalBlock(scope: !6078, file: !3, line: 437, column: 3)
!6078 = distinct !DILexicalBlock(scope: !6071, file: !3, line: 431, column: 25)
!6079 = !DILocation(line: 438, column: 3, scope: !6080)
!6080 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 438, column: 3)
!6081 = distinct !DILexicalBlock(scope: !6082, file: !3, line: 438, column: 3)
!6082 = distinct !DILexicalBlock(scope: !6083, file: !3, line: 438, column: 3)
!6083 = distinct !DILexicalBlock(scope: !6078, file: !3, line: 438, column: 3)
!6084 = !DILocation(line: 439, column: 3, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6086, file: !3, line: 439, column: 3)
!6086 = distinct !DILexicalBlock(scope: !6087, file: !3, line: 439, column: 3)
!6087 = distinct !DILexicalBlock(scope: !6088, file: !3, line: 439, column: 3)
!6088 = distinct !DILexicalBlock(scope: !6078, file: !3, line: 439, column: 3)
!6089 = !DILocation(line: 440, column: 3, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6091, file: !3, line: 440, column: 3)
!6091 = distinct !DILexicalBlock(scope: !6092, file: !3, line: 440, column: 3)
!6092 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 440, column: 3)
!6093 = distinct !DILexicalBlock(scope: !6078, file: !3, line: 440, column: 3)
!6094 = !DILocation(line: 441, column: 3, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 441, column: 3)
!6096 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 441, column: 3)
!6097 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 441, column: 3)
!6098 = distinct !DILexicalBlock(scope: !6078, file: !3, line: 441, column: 3)
!6099 = !DILocation(line: 442, column: 3, scope: !6078)
!6100 = !DILocation(line: 446, column: 8, scope: !6040)
!6101 = !DILocation(line: 446, column: 18, scope: !6040)
!6102 = !DILocation(line: 446, column: 27, scope: !6040)
!6103 = !DILocation(line: 446, column: 7, scope: !6040)
!6104 = !DILocation(line: 446, column: 2, scope: !6040)
!6105 = !DILocation(line: 453, column: 2, scope: !6040)
!6106 = !DILocation(line: 454, column: 7, scope: !6040)
!6107 = !DILocation(line: 454, column: 13, scope: !6040)
!6108 = !DILocation(line: 454, column: 2, scope: !6040)
!6109 = !DILocation(line: 455, column: 7, scope: !6040)
!6110 = !DILocation(line: 455, column: 13, scope: !6040)
!6111 = !DILocation(line: 455, column: 2, scope: !6040)
!6112 = !DILocation(line: 457, column: 18, scope: !6040)
!6113 = !DILocation(line: 457, column: 16, scope: !6040)
!6114 = !DILocation(line: 457, column: 11, scope: !6040)
!6115 = !DILocation(line: 457, column: 6, scope: !6040)
!6116 = !DILocation(line: 459, column: 9, scope: !6040)
!6117 = !DILocation(line: 460, column: 9, scope: !6040)
!6118 = !DILocation(line: 461, column: 9, scope: !6040)
!6119 = !DILocation(line: 462, column: 2, scope: !6040)
!6120 = !DILocation(line: 462, column: 10, scope: !6040)
!6121 = !DILocation(line: 462, column: 20, scope: !6040)
!6122 = !DILocation(line: 462, column: 28, scope: !6040)
!6123 = !DILocation(line: 463, column: 8, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6040, file: !3, line: 462, column: 34)
!6125 = !DILocation(line: 463, column: 6, scope: !6124)
!6126 = !DILocation(line: 464, column: 11, scope: !6124)
!6127 = !DILocation(line: 464, column: 16, scope: !6124)
!6128 = !DILocation(line: 464, column: 14, scope: !6124)
!6129 = !DILocation(line: 464, column: 9, scope: !6124)
!6130 = !DILocation(line: 465, column: 9, scope: !6124)
!6131 = !DILocation(line: 465, column: 7, scope: !6124)
!6132 = !DILocation(line: 466, column: 23, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 466, column: 7)
!6134 = !DILocation(line: 466, column: 31, scope: !6133)
!6135 = !DILocation(line: 466, column: 29, scope: !6133)
!6136 = !DILocation(line: 466, column: 7, scope: !6124)
!6137 = !DILocation(line: 467, column: 28, scope: !6133)
!6138 = !DILocation(line: 467, column: 13, scope: !6133)
!6139 = !DILocation(line: 467, column: 11, scope: !6133)
!6140 = !DILocation(line: 467, column: 4, scope: !6133)
!6141 = !DILocation(line: 468, column: 23, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 468, column: 7)
!6143 = !DILocation(line: 468, column: 31, scope: !6142)
!6144 = !DILocation(line: 468, column: 29, scope: !6142)
!6145 = !DILocation(line: 468, column: 7, scope: !6124)
!6146 = !DILocation(line: 469, column: 28, scope: !6142)
!6147 = !DILocation(line: 469, column: 13, scope: !6142)
!6148 = !DILocation(line: 469, column: 11, scope: !6142)
!6149 = !DILocation(line: 469, column: 4, scope: !6142)
!6150 = !DILocation(line: 470, column: 9, scope: !6124)
!6151 = distinct !{!6151, !6119, !6152, !1721, !1722}
!6152 = !DILocation(line: 471, column: 2, scope: !6040)
!6153 = !DILocation(line: 482, column: 6, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6040, file: !3, line: 482, column: 6)
!6155 = !DILocation(line: 482, column: 15, scope: !6154)
!6156 = !DILocation(line: 482, column: 13, scope: !6154)
!6157 = !DILocation(line: 482, column: 23, scope: !6154)
!6158 = !DILocation(line: 482, column: 26, scope: !6154)
!6159 = !DILocation(line: 482, column: 40, scope: !6154)
!6160 = !DILocation(line: 482, column: 38, scope: !6154)
!6161 = !DILocation(line: 482, column: 33, scope: !6154)
!6162 = !DILocation(line: 482, column: 6, scope: !6040)
!6163 = !DILocation(line: 483, column: 3, scope: !6154)
!6164 = !DILocation(line: 486, column: 10, scope: !6040)
!6165 = !DILocation(line: 486, column: 15, scope: !6040)
!6166 = !DILocation(line: 486, column: 13, scope: !6040)
!6167 = !DILocation(line: 486, column: 8, scope: !6040)
!6168 = !DILocation(line: 487, column: 2, scope: !6055)
!6169 = !DILocation(line: 487, column: 2, scope: !6040)
!6170 = !DILocation(line: 488, column: 9, scope: !6040)
!6171 = !DILocation(line: 488, column: 2, scope: !6040)
!6172 = !DILocation(line: 489, column: 1, scope: !6040)
!6173 = !DISubprogram(name: "__const_udelay", scope: !6174, file: !6174, line: 11, type: !2367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6174 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!6175 = !DISubprogram(name: "use_tsc_delay", scope: !6176, file: !6176, line: 8, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6176 = !DIFile(filename: "./arch/x86/include/asm/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1669c2cc60c632f0c76a6da415ad94bc")
!6177 = !DISubprogram(name: "tsc_store_and_check_tsc_adjust", scope: !2249, file: !2249, line: 55, type: !2755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6178 = distinct !DISubprogram(name: "cyc2ns_init_boot_cpu", scope: !3, file: !3, line: 199, type: !265, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6179)
!6179 = !{!6180, !6181, !6184, !6186, !6189, !6191}
!6180 = !DILocalVariable(name: "c2n", scope: !6178, file: !3, line: 201, type: !216)
!6181 = !DILocalVariable(name: "__vpp_verify", scope: !6182, file: !3, line: 201, type: !724)
!6182 = distinct !DILexicalBlock(scope: !6183, file: !3, line: 201, column: 23)
!6183 = distinct !DILexicalBlock(scope: !6178, file: !3, line: 201, column: 23)
!6184 = !DILocalVariable(name: "tcp_ptr__", scope: !6185, file: !3, line: 201, type: !102)
!6185 = distinct !DILexicalBlock(scope: !6183, file: !3, line: 201, column: 23)
!6186 = !DILocalVariable(name: "pscr_ret__", scope: !6187, file: !3, line: 204, type: !125)
!6187 = distinct !DILexicalBlock(scope: !6188, file: !3, line: 204, column: 30)
!6188 = distinct !DILexicalBlock(scope: !6178, file: !3, line: 204, column: 30)
!6189 = !DILocalVariable(name: "__vpp_verify", scope: !6190, file: !3, line: 204, type: !724)
!6190 = distinct !DILexicalBlock(scope: !6187, file: !3, line: 204, column: 30)
!6191 = !DILocalVariable(name: "pfo_val__", scope: !6192, file: !3, line: 204, type: !110)
!6192 = distinct !DILexicalBlock(scope: !6187, file: !3, line: 204, column: 30)
!6193 = !DILocation(line: 201, column: 2, scope: !6178)
!6194 = !DILocation(line: 201, column: 17, scope: !6178)
!6195 = !DILocation(line: 201, column: 23, scope: !6183)
!6196 = !DILocation(line: 201, column: 23, scope: !6182)
!6197 = !DILocation(line: 201, column: 23, scope: !6185)
!6198 = !{i64 2154708675}
!6199 = !DILocation(line: 203, column: 2, scope: !6178)
!6200 = !DILocation(line: 204, column: 21, scope: !6178)
!6201 = !DILocation(line: 204, column: 30, scope: !6188)
!6202 = !DILocation(line: 204, column: 30, scope: !6187)
!6203 = !DILocation(line: 204, column: 30, scope: !6190)
!6204 = !DILocation(line: 204, column: 30, scope: !6192)
!6205 = !{i64 2154711702}
!6206 = !DILocation(line: 204, column: 50, scope: !6178)
!6207 = !DILocation(line: 204, column: 2, scope: !6178)
!6208 = !DILocation(line: 205, column: 1, scope: !6178)
!6209 = !DISubprogram(name: "static_key_enable", scope: !1341, file: !1341, line: 233, type: !6210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6210 = !DISubroutineType(types: !6211)
!6211 = !{null, !1813}
!6212 = distinct !DISubprogram(name: "__seqcount_init", scope: !231, file: !231, line: 71, type: !6213, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6218)
!6213 = !DISubroutineType(types: !6214)
!6214 = !{null, !6215, !243, !6216}
!6215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!6216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6217, size: 64)
!6217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1301, line: 206, elements: !590)
!6218 = !{!6219, !6220, !6221}
!6219 = !DILocalVariable(name: "s", arg: 1, scope: !6212, file: !231, line: 71, type: !6215)
!6220 = !DILocalVariable(name: "name", arg: 2, scope: !6212, file: !231, line: 71, type: !243)
!6221 = !DILocalVariable(name: "key", arg: 3, scope: !6212, file: !231, line: 72, type: !6216)
!6222 = !DILocation(line: 71, column: 48, scope: !6212)
!6223 = !DILocation(line: 71, column: 63, scope: !6212)
!6224 = !DILocation(line: 72, column: 31, scope: !6212)
!6225 = !DILocation(line: 77, column: 2, scope: !6212)
!6226 = !DILocation(line: 77, column: 2, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !6212, file: !231, line: 77, column: 2)
!6228 = !DILocation(line: 78, column: 2, scope: !6212)
!6229 = !DILocation(line: 78, column: 5, scope: !6212)
!6230 = !DILocation(line: 78, column: 14, scope: !6212)
!6231 = !DILocation(line: 79, column: 1, scope: !6212)
!6232 = !DISubprogram(name: "__clocksource_register_scale", scope: !331, file: !331, line: 231, type: !6233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6233 = !DISubroutineType(types: !6234)
!6234 = !{!125, !329, !110, !110}
!6235 = distinct !DISubprogram(name: "native_read_msr", scope: !1830, file: !1830, line: 114, type: !6236, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6238)
!6236 = !DISubroutineType(types: !6237)
!6237 = !{!108, !7}
!6238 = !{!6239, !6240}
!6239 = !DILocalVariable(name: "msr", arg: 1, scope: !6235, file: !1830, line: 114, type: !7)
!6240 = !DILocalVariable(name: "val", scope: !6235, file: !1830, line: 116, type: !108)
!6241 = !DILocation(line: 114, column: 63, scope: !6235)
!6242 = !DILocation(line: 116, column: 2, scope: !6235)
!6243 = !DILocation(line: 116, column: 21, scope: !6235)
!6244 = !DILocation(line: 118, column: 16, scope: !6235)
!6245 = !DILocation(line: 118, column: 8, scope: !6235)
!6246 = !DILocation(line: 118, column: 6, scope: !6235)
!6247 = !DILocation(line: 120, column: 6, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6235, file: !1830, line: 120, column: 6)
!6249 = !DILocation(line: 120, column: 6, scope: !6235)
!6250 = !DILocation(line: 121, column: 21, scope: !6248)
!6251 = !DILocation(line: 121, column: 26, scope: !6248)
!6252 = !DILocation(line: 121, column: 3, scope: !6248)
!6253 = !DILocation(line: 123, column: 9, scope: !6235)
!6254 = !DILocation(line: 124, column: 1, scope: !6235)
!6255 = !DILocation(line: 123, column: 2, scope: !6235)
!6256 = distinct !DISubprogram(name: "__rdmsr", scope: !1830, file: !1830, line: 80, type: !6236, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6257)
!6257 = !{!6258, !6259, !6260}
!6258 = !DILocalVariable(name: "msr", arg: 1, scope: !6256, file: !1830, line: 80, type: !7)
!6259 = !DILocalVariable(name: "low", scope: !6256, file: !1830, line: 82, type: !102)
!6260 = !DILocalVariable(name: "high", scope: !6256, file: !1830, line: 82, type: !102)
!6261 = !DILocation(line: 80, column: 64, scope: !6256)
!6262 = !DILocation(line: 82, column: 2, scope: !6256)
!6263 = !DILocation(line: 87, column: 45, scope: !6256)
!6264 = !DILocation(line: 84, column: 2, scope: !6256)
!6265 = !{i64 1856994, i64 1857015, i64 2149534617, i64 2149534661, i64 2149534684, i64 2149534717, i64 2149534748, i64 2149534787}
!6266 = !DILocation(line: 89, column: 9, scope: !6256)
!6267 = !DILocation(line: 90, column: 1, scope: !6256)
!6268 = !DILocation(line: 89, column: 2, scope: !6256)
!6269 = distinct !DISubprogram(name: "static_key_false", scope: !1341, file: !1341, line: 205, type: !6270, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6272)
!6270 = !DISubroutineType(types: !6271)
!6271 = !{!198, !1813}
!6272 = !{!6273}
!6273 = !DILocalVariable(name: "key", arg: 1, scope: !6269, file: !1341, line: 205, type: !1813)
!6274 = !DILocation(line: 205, column: 65, scope: !6269)
!6275 = !DILocation(line: 207, column: 28, scope: !6269)
!6276 = !DILocation(line: 207, column: 9, scope: !6269)
!6277 = !DILocation(line: 207, column: 2, scope: !6269)
!6278 = !DISubprogram(name: "do_trace_read_msr", scope: !1830, file: !1830, line: 65, type: !6279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6279 = !DISubroutineType(types: !6280)
!6280 = !{null, !7, !104, !125}
!6281 = distinct !DISubprogram(name: "arch_static_branch", scope: !1809, file: !1809, line: 25, type: !6282, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6284)
!6282 = !DISubroutineType(types: !6283)
!6283 = !{!198, !1813, !198}
!6284 = !{!6285, !6286, !6287}
!6285 = !DILocalVariable(name: "key", arg: 1, scope: !6281, file: !1809, line: 25, type: !1813)
!6286 = !DILocalVariable(name: "branch", arg: 2, scope: !6281, file: !1809, line: 25, type: !198)
!6287 = !DILabel(scope: !6281, name: "l_yes", file: !1809, line: 33)
!6288 = !DILocation(line: 25, column: 67, scope: !6281)
!6289 = !DILocation(line: 25, column: 77, scope: !6281)
!6290 = !DILocation(line: 30, column: 13, scope: !6281)
!6291 = !DILocation(line: 30, column: 28, scope: !6281)
!6292 = !DILocation(line: 30, column: 26, scope: !6281)
!6293 = !DILocation(line: 27, column: 2, scope: !6281)
!6294 = !{i64 1521316, i64 1521360, i64 2149006043, i64 2149006064, i64 2149006090, i64 2149006123, i64 2149006157, i64 2149006181}
!6295 = !DILocation(line: 32, column: 2, scope: !6281)
!6296 = !DILocation(line: 33, column: 1, scope: !6281)
!6297 = !DILocation(line: 34, column: 2, scope: !6281)
!6298 = !DILocation(line: 35, column: 1, scope: !6281)
!6299 = distinct !DISubprogram(name: "cpumask_check", scope: !119, file: !119, line: 148, type: !5776, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6300)
!6300 = !{!6301}
!6301 = !DILocalVariable(name: "cpu", arg: 1, scope: !6299, file: !119, line: 148, type: !7)
!6302 = !DILocation(line: 148, column: 64, scope: !6299)
!6303 = !DILocation(line: 150, column: 20, scope: !6299)
!6304 = !DILocation(line: 150, column: 2, scope: !6299)
!6305 = !DILocation(line: 151, column: 9, scope: !6299)
!6306 = !DILocation(line: 151, column: 2, scope: !6299)
!6307 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !119, file: !119, line: 140, type: !6308, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6310)
!6308 = !DISubroutineType(types: !6309)
!6309 = !{null, !7, !7}
!6310 = !{!6311, !6312}
!6311 = !DILocalVariable(name: "cpu", arg: 1, scope: !6307, file: !119, line: 140, type: !7)
!6312 = !DILocalVariable(name: "bits", arg: 2, scope: !6307, file: !119, line: 140, type: !7)
!6313 = !DILocation(line: 140, column: 60, scope: !6307)
!6314 = !DILocation(line: 140, column: 78, scope: !6307)
!6315 = !DILocation(line: 145, column: 1, scope: !6307)
