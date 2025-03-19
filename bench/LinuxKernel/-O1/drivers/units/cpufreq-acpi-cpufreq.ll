; ModuleID = 'drivers/cpufreq/acpi-cpufreq.c'
source_filename = "drivers/cpufreq/acpi-cpufreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init..kmod_acpi_cpufreq__254_1065_acpi_cpufreq_init\22, \22a\22\09\09"
module asm "__initcall__kmod_acpi_cpufreq__254_1065_acpi_cpufreq_init7:\09\09\09"
module asm ".long\09__initstub__kmod_acpi_cpufreq__254_1065_acpi_cpufreq_init7 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.cpuinfo_x86 = type { %union.anon.14, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.16, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.14 = type { i32 }
%union.anon.16 = type { i64, [88 x i8] }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.cpumask = type { [1 x i64] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.17 }
%struct.atomic_t = type { i32 }
%union.anon.17 = type { i64 }
%struct.pcpu_hot = type { %union.anon.19 }
%union.anon.19 = type { %struct.anon.20, [16 x i8] }
%struct.anon.20 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.21 }
%union.anon.21 = type { i64 }
%struct.freq_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.acpi_processor_performance = type { i32, i32, %struct.acpi_pct_register, %struct.acpi_pct_register, i32, ptr, %struct.acpi_psd_package, [1 x %struct.cpumask], i32 }
%struct.acpi_pct_register = type <{ i8, i16, i8, i8, i8, i8, i64 }>
%struct.acpi_psd_package = type { i64, i64, i64, i64, i64 }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.acpi_cpufreq_data = type { i32, i32, i32, [1 x %struct.cpumask], ptr, ptr }
%struct.anon.15 = type { i8, i8, i8, i8 }
%struct.acpi_processor_px = type { i64, i64, i64, i64, i64, i64 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.cppc_perf_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drv_cmd = type { ptr, i32, %union.anon.18 }
%union.anon.18 = type { ptr }

@__UNIQUE_ID_author247 = internal constant [56 x i8] c"acpi_cpufreq.author=Paul Diefenbaugh, Dominik Brodowski\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description248 = internal constant [56 x i8] c"acpi_cpufreq.description=ACPI Processor P-States Driver\00", section ".modinfo", align 1, !dbg !1314
@__UNIQUE_ID_file249 = internal constant [47 x i8] c"acpi_cpufreq.file=drivers/cpufreq/acpi-cpufreq\00", section ".modinfo", align 1, !dbg !1317
@__UNIQUE_ID_license250 = internal constant [25 x i8] c"acpi_cpufreq.license=GPL\00", section ".modinfo", align 1, !dbg !1322
@acpi_cpufreq_platdrv = internal global %struct.platform_driver { ptr null, ptr null, ptr @acpi_cpufreq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0, i8 0 }, align 8, !dbg !1357
@__param_str_acpi_pstate_strict = internal constant [32 x i8] c"acpi_cpufreq.acpi_pstate_strict\00", align 16, !dbg !3500
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 8
@acpi_pstate_strict = internal global i32 0, align 4, !dbg !1350
@__param_acpi_pstate_strict = internal constant %struct.kernel_param { ptr @__param_str_acpi_pstate_strict, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.2 { ptr @acpi_pstate_strict } }, section "__param", align 8, !dbg !1327
@__UNIQUE_ID_acpi_pstate_stricttype252 = internal constant [46 x i8] c"acpi_cpufreq.parmtype=acpi_pstate_strict:uint\00", section ".modinfo", align 1, !dbg !1329
@__UNIQUE_ID_acpi_pstate_strict253 = internal constant [129 x i8] c"acpi_cpufreq.parm=acpi_pstate_strict:value 0 or non-zero. non-zero -> strict ACPI checks are performed during frequency changes.\00", section ".modinfo", align 1, !dbg !1334
@__UNIQUE_ID___addressable___initstub__kmod_acpi_cpufreq__254_1065_acpi_cpufreq_init7255 = internal global ptr @__initstub__kmod_acpi_cpufreq__254_1065_acpi_cpufreq_init7, section ".discard.addressable", align 8, !dbg !1339
@__exitcall_acpi_cpufreq_exit = internal global ptr @acpi_cpufreq_exit, section ".exitcall.exit", align 8, !dbg !1341
@__UNIQUE_ID_alias256 = internal constant [41 x i8] c"acpi_cpufreq.alias=platform:acpi-cpufreq\00", section ".modinfo", align 1, !dbg !1345
@.str = private unnamed_addr constant [13 x i8] c"acpi-cpufreq\00", align 1, !dbg !1352
@acpi_cpufreq_driver = internal global %struct.cpufreq_driver { [16 x i8] c"acpi-cpufreq\00\00\00\00", i16 0, ptr null, ptr @acpi_cpufreq_cpu_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @acpi_cpufreq_target, ptr @acpi_cpufreq_fast_switch, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @acpi_processor_get_bios_limit, ptr null, ptr null, ptr @acpi_cpufreq_cpu_exit, ptr null, ptr @acpi_cpufreq_resume, ptr null, ptr @acpi_cpufreq_attr, i8 0, ptr null, ptr null }, align 8, !dbg !2062
@acpi_cpufreq_attr = internal global [4 x ptr] [ptr @cpufreq_freq_attr_scaling_available_freqs, ptr @freqdomain_cpus, ptr @cpb, ptr null], align 16, !dbg !3486
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@acpi_cpufreq_cpu_init.blacklisted = internal global i32 0, align 4, !dbg !3320
@acpi_perf_data = internal global ptr null, align 8, !dbg !3419
@sw_any_bug_dmi_table = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @sw_any_bug_found, ptr @.str.7, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Supermicro\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"080010\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"X6DLP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !3424
@bios_with_sw_any_bug = internal global i32 0, align 4, !dbg !3447
@cpu_core_map = external dso_local global [1 x %struct.cpumask], section ".data..percpu..read_mostly", align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@cpu_sibling_map = external dso_local global [1 x %struct.cpumask], section ".data..percpu..read_mostly", align 8
@acpi_cpufreq_cpu_init.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !3395
@.str.1 = private unnamed_addr constant [52 x i8] c"\016acpi_cpufreq: overriding BIOS provided _PSD data\0A\00", align 1, !dbg !3397
@acpi_cpufreq_cpu_init.__already_done.2 = internal global i8 0, section ".data..once", align 1, !dbg !3400
@.str.3 = private unnamed_addr constant [60 x i8] c"\016acpi_cpufreq: P-state transition latency capped at 20 uS\0A\00", align 1, !dbg !3402
@.str.4 = private unnamed_addr constant [60 x i8] c"\014acpi_cpufreq: [Firmware Warn]: P-state 0 is not max freq\0A\00", align 1, !dbg !3407
@.str.5 = private unnamed_addr constant [120 x i8] c"\016acpi_cpufreq: Intel(R) Xeon(R) 7100 Errata AL30, processors may lock up on frequency changes: disabling acpi-cpufreq\0A\00", align 1, !dbg !3409
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3414
@.str.7 = private unnamed_addr constant [24 x i8] c"Supermicro Server X6DLP\00", align 1, !dbg !3421
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@cpu_khz = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"drivers/cpufreq/acpi-cpufreq.c\00", align 1, !dbg !3449
@cpu_bit_bitmap = external dso_local constant [65 x [1 x i64]], align 16
@.str.9 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !3454
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@drv_write.__UNIQUE_ID___addressable___SCK__preempt_schedule251 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !3457
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@cpufreq_freq_attr_scaling_available_freqs = external dso_local global %struct.freq_attr, align 8
@freqdomain_cpus = internal global %struct.freq_attr { %struct.attribute { ptr @.str.10, i16 292 }, ptr @show_freqdomain_cpus, ptr null }, align 8, !dbg !3491
@cpb = internal global %struct.freq_attr { %struct.attribute { ptr @.str.11, i16 420 }, ptr @show_cpb, ptr @store_cpb }, align 8, !dbg !3496
@.str.10 = private unnamed_addr constant [16 x i8] c"freqdomain_cpus\00", align 1, !dbg !3489
@.str.11 = private unnamed_addr constant [4 x i8] c"cpb\00", align 1, !dbg !3493
@.str.12 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !3498
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@acpi_disabled = external dso_local global i32, align 4
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @acpi_cpufreq_exit, ptr @__param_acpi_pstate_strict, ptr @__UNIQUE_ID_acpi_pstate_stricttype252, ptr @__UNIQUE_ID_acpi_pstate_strict253, ptr @__UNIQUE_ID___addressable___initstub__kmod_acpi_cpufreq__254_1065_acpi_cpufreq_init7255, ptr @__exitcall_acpi_cpufreq_exit, ptr @__UNIQUE_ID_alias256, ptr @drv_write.__UNIQUE_ID___addressable___SCK__preempt_schedule251], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @acpi_cpufreq_exit() #0 section ".exit.text" align 16 !dbg !3513 {
entry:
  call void @platform_driver_unregister(ptr noundef @acpi_cpufreq_platdrv) #21, !dbg !3514
  ret void, !dbg !3515
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3516 dso_local void @platform_driver_unregister(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_acpi_cpufreq__254_1065_acpi_cpufreq_init7() #0 section ".init.text" align 16 !dbg !3520 {
entry:
  %call = call i32 @acpi_cpufreq_init() #22, !dbg !3521
  ret i32 %call, !dbg !3521
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_cpufreq_init() #0 section ".init.text" align 16 !dbg !3522 {
entry:
  %call = call i32 @__platform_driver_probe(ptr noundef @acpi_cpufreq_platdrv, ptr noundef @acpi_cpufreq_probe, ptr noundef null) #21, !dbg !3523
  ret i32 %call, !dbg !3524
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_cpufreq_remove(ptr noundef %pdev) #2 align 16 !dbg !3525 {
entry:
  %pdev.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !3527, metadata !DIExpression()), !dbg !3528
  store i32 0, ptr %tmp, align 4, !dbg !3529
  %0 = load i32, ptr %tmp, align 4, !dbg !3532
  call void @cpufreq_unregister_driver(ptr noundef @acpi_cpufreq_driver) #21, !dbg !3533
  call void @free_acpi_perf_data() #21, !dbg !3534
  ret void, !dbg !3535
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3536 dso_local void @cpufreq_unregister_driver(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_acpi_perf_data() #2 align 16 !dbg !3540 {
entry:
  %i = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #23, !dbg !3550
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3542, metadata !DIExpression()), !dbg !3551
  store i32 0, ptr %i, align 4, !dbg !3552
  br label %for.cond, !dbg !3552

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !3553
  %conv = zext i32 %0 to i64, !dbg !3553
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #21, !dbg !3553
  %conv1 = trunc i64 %call to i32, !dbg !3553
  store i32 %conv1, ptr %i, align 4, !dbg !3553
  %1 = load i32, ptr %i, align 4, !dbg !3553
  %cmp = icmp ult i32 %1, 64, !dbg !3553
  br i1 %cmp, label %for.body, label %for.end, !dbg !3552

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !3554

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !3555
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3543, metadata !DIExpression()), !dbg !3555
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3555
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !3555
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !3554
  br label %do.cond, !dbg !3555

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3555

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #23, !dbg !3556
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3548, metadata !DIExpression()), !dbg !3556
  %3 = load ptr, ptr @acpi_perf_data, align 8, !dbg !3556
  %4 = ptrtoint ptr %3 to i64, !dbg !3556
  store i64 %4, ptr %__ptr, align 8, !dbg !3556
  %5 = load i64, ptr %__ptr, align 8, !dbg !3556
  %6 = load i32, ptr %i, align 4, !dbg !3556
  %idxprom = zext i32 %6 to i64, !dbg !3556
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3556
  %7 = load i64, ptr %arrayidx, align 8, !dbg !3556
  %add = add i64 %5, %7, !dbg !3556
  %8 = inttoptr i64 %add to ptr, !dbg !3556
  store ptr %8, ptr %tmp3, align 8, !dbg !3556
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #23, !dbg !3554
  %9 = load ptr, ptr %tmp3, align 8, !dbg !3556
  store ptr %9, ptr %tmp, align 8, !dbg !3555
  %10 = load ptr, ptr %tmp, align 8, !dbg !3554
  %shared_cpu_map = getelementptr inbounds %struct.acpi_processor_performance, ptr %10, i32 0, i32 7, !dbg !3557
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map, i64 0, i64 0, !dbg !3558
  call void @free_cpumask_var(ptr noundef %arraydecay) #21, !dbg !3559
  br label %for.inc, !dbg !3559

for.inc:                                          ; preds = %do.end
  %11 = load i32, ptr %i, align 4, !dbg !3553
  %inc = add i32 %11, 1, !dbg !3553
  store i32 %inc, ptr %i, align 4, !dbg !3553
  br label %for.cond, !dbg !3553, !llvm.loop !3560

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr @acpi_perf_data, align 8, !dbg !3564
  call void @free_percpu(ptr noundef %12) #21, !dbg !3565
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #23, !dbg !3566
  ret void, !dbg !3566
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_cpufreq_cpu_init(ptr noundef %policy) #2 align 16 !dbg !3322 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %freq_table = alloca ptr, align 8
  %perf = alloca ptr, align 8
  %data = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %c = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  %max_boost_ratio = alloca i64, align 8
  %nominal_freq = alloca i64, align 8
  %valid_states = alloca i32, align 4
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify15 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  %__ptr19 = alloca i64, align 8
  %tmp20 = alloca ptr, align 8
  %__vpp_verify54 = alloca ptr, align 8
  %tmp57 = alloca ptr, align 8
  %__ptr58 = alloca i64, align 8
  %tmp59 = alloca ptr, align 8
  %__vpp_verify81 = alloca ptr, align 8
  %tmp84 = alloca ptr, align 8
  %__ptr85 = alloca i64, align 8
  %tmp86 = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp104 = alloca i64, align 8
  %tmp117 = alloca i32, align 4
  %tmp120 = alloca i64, align 8
  %tmp132 = alloca i32, align 4
  %tmp152 = alloca i32, align 4
  %tmp154 = alloca i32, align 4
  %tmp156 = alloca i32, align 4
  %tmp171 = alloca i32, align 4
  %__ret_do_once213 = alloca i8, align 1
  %__ret_cond214 = alloca i8, align 1
  %__ret_once221 = alloca i8, align 1
  %tmp238 = alloca i64, align 8
  %tmp251 = alloca i32, align 4
  %tmp254 = alloca i64, align 8
  %freq = alloca i32, align 4
  %tmp326 = alloca i32, align 4
  %tmp332 = alloca i32, align 4
  %tmp362 = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3324, metadata !DIExpression()), !dbg !3567
  call void @llvm.lifetime.start.p0(i64 8, ptr %freq_table) #23, !dbg !3568
  call void @llvm.dbg.declare(metadata ptr %freq_table, metadata !3325, metadata !DIExpression()), !dbg !3569
  call void @llvm.lifetime.start.p0(i64 8, ptr %perf) #23, !dbg !3570
  call void @llvm.dbg.declare(metadata ptr %perf, metadata !3326, metadata !DIExpression()), !dbg !3571
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #23, !dbg !3572
  call void @llvm.dbg.declare(metadata ptr %data, metadata !3327, metadata !DIExpression()), !dbg !3573
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #23, !dbg !3574
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !3344, metadata !DIExpression()), !dbg !3575
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3576
  %cpu1 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4, !dbg !3577
  %1 = load i32, ptr %cpu1, align 4, !dbg !3577
  store i32 %1, ptr %cpu, align 4, !dbg !3575
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #23, !dbg !3578
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3345, metadata !DIExpression()), !dbg !3579
  br label %do.body, !dbg !3580

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !3581
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3346, metadata !DIExpression()), !dbg !3581
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3581
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !3581
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !3580
  br label %do.cond, !dbg !3581

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3581

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #23, !dbg !3582
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3349, metadata !DIExpression()), !dbg !3582
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !3582
  %3 = load i64, ptr %__ptr, align 8, !dbg !3582
  %4 = load i32, ptr %cpu, align 4, !dbg !3582
  %idxprom = zext i32 %4 to i64, !dbg !3582
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !3582
  %5 = load i64, ptr %arrayidx, align 8, !dbg !3582
  %add = add i64 %3, %5, !dbg !3582
  %6 = inttoptr i64 %add to ptr, !dbg !3582
  store ptr %6, ptr %tmp2, align 8, !dbg !3582
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #23, !dbg !3580
  %7 = load ptr, ptr %tmp2, align 8, !dbg !3582
  store ptr %7, ptr %tmp, align 8, !dbg !3581
  %8 = load ptr, ptr %tmp, align 8, !dbg !3580
  store ptr %8, ptr %c, align 8, !dbg !3579
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_boost_ratio) #23, !dbg !3583
  call void @llvm.dbg.declare(metadata ptr %max_boost_ratio, metadata !3351, metadata !DIExpression()), !dbg !3584
  call void @llvm.lifetime.start.p0(i64 8, ptr %nominal_freq) #23, !dbg !3583
  call void @llvm.dbg.declare(metadata ptr %nominal_freq, metadata !3352, metadata !DIExpression()), !dbg !3585
  store i64 0, ptr %nominal_freq, align 8, !dbg !3585
  call void @llvm.lifetime.start.p0(i64 4, ptr %valid_states) #23, !dbg !3586
  call void @llvm.dbg.declare(metadata ptr %valid_states, metadata !3353, metadata !DIExpression()), !dbg !3587
  store i32 0, ptr %valid_states, align 4, !dbg !3587
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #23, !dbg !3588
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3354, metadata !DIExpression()), !dbg !3589
  store i32 0, ptr %result, align 4, !dbg !3589
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #23, !dbg !3590
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3355, metadata !DIExpression()), !dbg !3591
  store i32 0, ptr %tmp3, align 4, !dbg !3592
  %9 = load i32, ptr %tmp3, align 4, !dbg !3595
  %10 = load i32, ptr @acpi_cpufreq_cpu_init.blacklisted, align 4, !dbg !3596
  %tobool = icmp ne i32 %10, 0, !dbg !3596
  br i1 %tobool, label %if.then, label %if.end, !dbg !3598

if.then:                                          ; preds = %do.end
  %11 = load i32, ptr @acpi_cpufreq_cpu_init.blacklisted, align 4, !dbg !3599
  store i32 %11, ptr %retval, align 4, !dbg !3600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3600

if.end:                                           ; preds = %do.end
  %12 = load ptr, ptr %c, align 8, !dbg !3601
  %call = call i32 @acpi_cpufreq_blacklist(ptr noundef %12) #21, !dbg !3602
  store i32 %call, ptr @acpi_cpufreq_cpu_init.blacklisted, align 4, !dbg !3603
  %13 = load i32, ptr @acpi_cpufreq_cpu_init.blacklisted, align 4, !dbg !3604
  %tobool4 = icmp ne i32 %13, 0, !dbg !3604
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3606

if.then5:                                         ; preds = %if.end
  %14 = load i32, ptr @acpi_cpufreq_cpu_init.blacklisted, align 4, !dbg !3607
  store i32 %14, ptr %retval, align 4, !dbg !3608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3608

if.end6:                                          ; preds = %if.end
  %call7 = call noalias ptr @kzalloc(i64 noundef 40, i32 noundef 3264) #24, !dbg !3609
  store ptr %call7, ptr %data, align 8, !dbg !3610
  %15 = load ptr, ptr %data, align 8, !dbg !3611
  %tobool8 = icmp ne ptr %15, null, !dbg !3611
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !3613

if.then9:                                         ; preds = %if.end6
  store i32 -12, ptr %retval, align 4, !dbg !3614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3614

if.end10:                                         ; preds = %if.end6
  %16 = load ptr, ptr %data, align 8, !dbg !3615
  %freqdomain_cpus = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %16, i32 0, i32 3, !dbg !3617
  %call11 = call zeroext i1 @zalloc_cpumask_var(ptr noundef %freqdomain_cpus, i32 noundef 3264) #21, !dbg !3618
  br i1 %call11, label %if.end13, label %if.then12, !dbg !3619

if.then12:                                        ; preds = %if.end10
  store i32 -12, ptr %result, align 4, !dbg !3620
  br label %err_free, !dbg !3622

if.end13:                                         ; preds = %if.end10
  br label %do.body14, !dbg !3623

do.body14:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify15) #23, !dbg !3624
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify15, metadata !3356, metadata !DIExpression()), !dbg !3624
  store ptr null, ptr %__vpp_verify15, align 8, !dbg !3624
  %17 = load ptr, ptr %__vpp_verify15, align 8, !dbg !3624
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify15) #23, !dbg !3623
  br label %do.cond16, !dbg !3624

do.cond16:                                        ; preds = %do.body14
  br label %do.end17, !dbg !3624

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr19) #23, !dbg !3625
  call void @llvm.dbg.declare(metadata ptr %__ptr19, metadata !3359, metadata !DIExpression()), !dbg !3625
  %18 = load ptr, ptr @acpi_perf_data, align 8, !dbg !3625
  %19 = ptrtoint ptr %18 to i64, !dbg !3625
  store i64 %19, ptr %__ptr19, align 8, !dbg !3625
  %20 = load i64, ptr %__ptr19, align 8, !dbg !3625
  %21 = load i32, ptr %cpu, align 4, !dbg !3625
  %idxprom21 = zext i32 %21 to i64, !dbg !3625
  %arrayidx22 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom21, !dbg !3625
  %22 = load i64, ptr %arrayidx22, align 8, !dbg !3625
  %add23 = add i64 %20, %22, !dbg !3625
  %23 = inttoptr i64 %add23 to ptr, !dbg !3625
  store ptr %23, ptr %tmp20, align 8, !dbg !3625
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr19) #23, !dbg !3623
  %24 = load ptr, ptr %tmp20, align 8, !dbg !3625
  store ptr %24, ptr %tmp18, align 8, !dbg !3624
  %25 = load ptr, ptr %tmp18, align 8, !dbg !3623
  store ptr %25, ptr %perf, align 8, !dbg !3626
  %26 = load i32, ptr %cpu, align 4, !dbg !3627
  %27 = load ptr, ptr %data, align 8, !dbg !3628
  %acpi_perf_cpu = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %27, i32 0, i32 2, !dbg !3629
  store i32 %26, ptr %acpi_perf_cpu, align 8, !dbg !3630
  %28 = load ptr, ptr %data, align 8, !dbg !3631
  %29 = load ptr, ptr %policy.addr, align 8, !dbg !3632
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %29, i32 0, i32 40, !dbg !3633
  store ptr %28, ptr %driver_data, align 8, !dbg !3634
  br i1 false, label %cond.true, label %cond.false, !dbg !3635

cond.true:                                        ; preds = %do.end17
  br i1 true, label %if.then25, label %if.end27, !dbg !3636

cond.false:                                       ; preds = %do.end17
  %30 = load ptr, ptr %c, align 8, !dbg !3636
  %31 = getelementptr inbounds %struct.cpuinfo_x86, ptr %30, i32 0, i32 10, !dbg !3636
  %arraydecay = getelementptr inbounds [24 x i32], ptr %31, i64 0, i64 0, !dbg !3636
  %call24 = call zeroext i1 @arch_test_bit(i64 noundef 104, ptr noundef %arraydecay) #21, !dbg !3636
  br i1 %call24, label %if.then25, label %if.end27, !dbg !3635

if.then25:                                        ; preds = %cond.false, %cond.true
  %32 = load i16, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @acpi_cpufreq_driver, i32 0, i32 1), align 8, !dbg !3638
  %conv = zext i16 %32 to i64, !dbg !3638
  %or = or i64 %conv, 2, !dbg !3638
  %conv26 = trunc i64 %or to i16, !dbg !3638
  store i16 %conv26, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @acpi_cpufreq_driver, i32 0, i32 1), align 8, !dbg !3638
  br label %if.end27, !dbg !3639

if.end27:                                         ; preds = %if.then25, %cond.false, %cond.true
  %33 = load ptr, ptr %perf, align 8, !dbg !3640
  %34 = load i32, ptr %cpu, align 4, !dbg !3641
  %call28 = call i32 @acpi_processor_register_performance(ptr noundef %33, i32 noundef %34) #21, !dbg !3642
  store i32 %call28, ptr %result, align 4, !dbg !3643
  %35 = load i32, ptr %result, align 4, !dbg !3644
  %tobool29 = icmp ne i32 %35, 0, !dbg !3644
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !3646

if.then30:                                        ; preds = %if.end27
  br label %err_free_mask, !dbg !3647

if.end31:                                         ; preds = %if.end27
  %36 = load ptr, ptr %perf, align 8, !dbg !3648
  %shared_type = getelementptr inbounds %struct.acpi_processor_performance, ptr %36, i32 0, i32 8, !dbg !3649
  %37 = load i32, ptr %shared_type, align 8, !dbg !3649
  %38 = load ptr, ptr %policy.addr, align 8, !dbg !3650
  %shared_type32 = getelementptr inbounds %struct.cpufreq_policy, ptr %38, i32 0, i32 3, !dbg !3651
  store i32 %37, ptr %shared_type32, align 8, !dbg !3652
  %39 = load ptr, ptr %policy.addr, align 8, !dbg !3653
  %shared_type33 = getelementptr inbounds %struct.cpufreq_policy, ptr %39, i32 0, i32 3, !dbg !3655
  %40 = load i32, ptr %shared_type33, align 8, !dbg !3655
  %cmp = icmp eq i32 %40, 2, !dbg !3656
  br i1 %cmp, label %if.then38, label %lor.lhs.false, !dbg !3657

lor.lhs.false:                                    ; preds = %if.end31
  %41 = load ptr, ptr %policy.addr, align 8, !dbg !3658
  %shared_type35 = getelementptr inbounds %struct.cpufreq_policy, ptr %41, i32 0, i32 3, !dbg !3659
  %42 = load i32, ptr %shared_type35, align 8, !dbg !3659
  %cmp36 = icmp eq i32 %42, 3, !dbg !3660
  br i1 %cmp36, label %if.then38, label %if.end41, !dbg !3661

if.then38:                                        ; preds = %lor.lhs.false, %if.end31
  %43 = load ptr, ptr %policy.addr, align 8, !dbg !3662
  %cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %43, i32 0, i32 0, !dbg !3664
  %arraydecay39 = getelementptr inbounds [1 x %struct.cpumask], ptr %cpus, i64 0, i64 0, !dbg !3662
  %44 = load ptr, ptr %perf, align 8, !dbg !3665
  %shared_cpu_map = getelementptr inbounds %struct.acpi_processor_performance, ptr %44, i32 0, i32 7, !dbg !3666
  %arraydecay40 = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map, i64 0, i64 0, !dbg !3665
  call void @cpumask_copy(ptr noundef %arraydecay39, ptr noundef %arraydecay40) #21, !dbg !3667
  br label %if.end41, !dbg !3668

if.end41:                                         ; preds = %if.then38, %lor.lhs.false
  %45 = load ptr, ptr %data, align 8, !dbg !3669
  %freqdomain_cpus42 = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %45, i32 0, i32 3, !dbg !3670
  %arraydecay43 = getelementptr inbounds [1 x %struct.cpumask], ptr %freqdomain_cpus42, i64 0, i64 0, !dbg !3669
  %46 = load ptr, ptr %perf, align 8, !dbg !3671
  %shared_cpu_map44 = getelementptr inbounds %struct.acpi_processor_performance, ptr %46, i32 0, i32 7, !dbg !3672
  %arraydecay45 = getelementptr inbounds [1 x %struct.cpumask], ptr %shared_cpu_map44, i64 0, i64 0, !dbg !3671
  call void @cpumask_copy(ptr noundef %arraydecay43, ptr noundef %arraydecay45) #21, !dbg !3673
  %call46 = call i32 @dmi_check_system(ptr noundef @sw_any_bug_dmi_table) #21, !dbg !3674
  %47 = load i32, ptr @bios_with_sw_any_bug, align 4, !dbg !3675
  %tobool47 = icmp ne i32 %47, 0, !dbg !3675
  br i1 %tobool47, label %land.lhs.true, label %if.end64, !dbg !3676

land.lhs.true:                                    ; preds = %if.end41
  %48 = load ptr, ptr %policy.addr, align 8, !dbg !3677
  %call48 = call zeroext i1 @policy_is_shared(ptr noundef %48) #21, !dbg !3678
  br i1 %call48, label %if.end64, label %if.then49, !dbg !3679

if.then49:                                        ; preds = %land.lhs.true
  %49 = load ptr, ptr %policy.addr, align 8, !dbg !3680
  %shared_type50 = getelementptr inbounds %struct.cpufreq_policy, ptr %49, i32 0, i32 3, !dbg !3681
  store i32 2, ptr %shared_type50, align 8, !dbg !3682
  %50 = load ptr, ptr %policy.addr, align 8, !dbg !3683
  %cpus51 = getelementptr inbounds %struct.cpufreq_policy, ptr %50, i32 0, i32 0, !dbg !3684
  %arraydecay52 = getelementptr inbounds [1 x %struct.cpumask], ptr %cpus51, i64 0, i64 0, !dbg !3683
  br label %do.body53, !dbg !3685

do.body53:                                        ; preds = %if.then49
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify54) #23, !dbg !3686
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify54, metadata !3361, metadata !DIExpression()), !dbg !3686
  store ptr null, ptr %__vpp_verify54, align 8, !dbg !3686
  %51 = load ptr, ptr %__vpp_verify54, align 8, !dbg !3686
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify54) #23, !dbg !3685
  br label %do.cond55, !dbg !3686

do.cond55:                                        ; preds = %do.body53
  br label %do.end56, !dbg !3686

do.end56:                                         ; preds = %do.cond55
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr58) #23, !dbg !3687
  call void @llvm.dbg.declare(metadata ptr %__ptr58, metadata !3366, metadata !DIExpression()), !dbg !3687
  store i64 ptrtoint (ptr @cpu_core_map to i64), ptr %__ptr58, align 8, !dbg !3687
  %52 = load i64, ptr %__ptr58, align 8, !dbg !3687
  %53 = load i32, ptr %cpu, align 4, !dbg !3687
  %idxprom60 = zext i32 %53 to i64, !dbg !3687
  %arrayidx61 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom60, !dbg !3687
  %54 = load i64, ptr %arrayidx61, align 8, !dbg !3687
  %add62 = add i64 %52, %54, !dbg !3687
  %55 = inttoptr i64 %add62 to ptr, !dbg !3687
  store ptr %55, ptr %tmp59, align 8, !dbg !3687
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr58) #23, !dbg !3685
  %56 = load ptr, ptr %tmp59, align 8, !dbg !3687
  store ptr %56, ptr %tmp57, align 8, !dbg !3686
  %57 = load ptr, ptr %tmp57, align 8, !dbg !3685
  %arraydecay63 = getelementptr inbounds [1 x %struct.cpumask], ptr %57, i64 0, i64 0, !dbg !3688
  call void @cpumask_copy(ptr noundef %arraydecay52, ptr noundef %arraydecay63) #21, !dbg !3689
  br label %if.end64, !dbg !3690

if.end64:                                         ; preds = %do.end56, %land.lhs.true, %if.end41
  %58 = load i32, ptr %cpu, align 4, !dbg !3691
  %call65 = call i32 @check_amd_hwpstate_cpu(i32 noundef %58) #21, !dbg !3692
  %tobool66 = icmp ne i32 %call65, 0, !dbg !3692
  br i1 %tobool66, label %land.lhs.true67, label %if.end128, !dbg !3693

land.lhs.true67:                                  ; preds = %if.end64
  %59 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !3694
  %conv68 = zext i8 %59 to i32, !dbg !3695
  %cmp69 = icmp slt i32 %conv68, 25, !dbg !3696
  br i1 %cmp69, label %land.lhs.true71, label %if.end128, !dbg !3697

land.lhs.true71:                                  ; preds = %land.lhs.true67
  %60 = load i32, ptr @acpi_pstate_strict, align 4, !dbg !3698
  %tobool72 = icmp ne i32 %60, 0, !dbg !3698
  br i1 %tobool72, label %if.end128, label %if.then73, !dbg !3699

if.then73:                                        ; preds = %land.lhs.true71
  %61 = load ptr, ptr %policy.addr, align 8, !dbg !3700
  %cpus74 = getelementptr inbounds %struct.cpufreq_policy, ptr %61, i32 0, i32 0, !dbg !3701
  %arraydecay75 = getelementptr inbounds [1 x %struct.cpumask], ptr %cpus74, i64 0, i64 0, !dbg !3700
  call void @cpumask_clear(ptr noundef %arraydecay75) #21, !dbg !3702
  %62 = load i32, ptr %cpu, align 4, !dbg !3703
  %63 = load ptr, ptr %policy.addr, align 8, !dbg !3704
  %cpus76 = getelementptr inbounds %struct.cpufreq_policy, ptr %63, i32 0, i32 0, !dbg !3705
  %arraydecay77 = getelementptr inbounds [1 x %struct.cpumask], ptr %cpus76, i64 0, i64 0, !dbg !3704
  call void @cpumask_set_cpu(i32 noundef %62, ptr noundef %arraydecay77) #21, !dbg !3706
  %64 = load ptr, ptr %data, align 8, !dbg !3707
  %freqdomain_cpus78 = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %64, i32 0, i32 3, !dbg !3708
  %arraydecay79 = getelementptr inbounds [1 x %struct.cpumask], ptr %freqdomain_cpus78, i64 0, i64 0, !dbg !3707
  br label %do.body80, !dbg !3709

do.body80:                                        ; preds = %if.then73
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify81) #23, !dbg !3710
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify81, metadata !3368, metadata !DIExpression()), !dbg !3710
  store ptr null, ptr %__vpp_verify81, align 8, !dbg !3710
  %65 = load ptr, ptr %__vpp_verify81, align 8, !dbg !3710
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify81) #23, !dbg !3709
  br label %do.cond82, !dbg !3710

do.cond82:                                        ; preds = %do.body80
  br label %do.end83, !dbg !3710

do.end83:                                         ; preds = %do.cond82
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr85) #23, !dbg !3711
  call void @llvm.dbg.declare(metadata ptr %__ptr85, metadata !3373, metadata !DIExpression()), !dbg !3711
  store i64 ptrtoint (ptr @cpu_sibling_map to i64), ptr %__ptr85, align 8, !dbg !3711
  %66 = load i64, ptr %__ptr85, align 8, !dbg !3711
  %67 = load i32, ptr %cpu, align 4, !dbg !3711
  %idxprom87 = zext i32 %67 to i64, !dbg !3711
  %arrayidx88 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom87, !dbg !3711
  %68 = load i64, ptr %arrayidx88, align 8, !dbg !3711
  %add89 = add i64 %66, %68, !dbg !3711
  %69 = inttoptr i64 %add89 to ptr, !dbg !3711
  store ptr %69, ptr %tmp86, align 8, !dbg !3711
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr85) #23, !dbg !3709
  %70 = load ptr, ptr %tmp86, align 8, !dbg !3711
  store ptr %70, ptr %tmp84, align 8, !dbg !3710
  %71 = load ptr, ptr %tmp84, align 8, !dbg !3709
  %arraydecay90 = getelementptr inbounds [1 x %struct.cpumask], ptr %71, i64 0, i64 0, !dbg !3712
  call void @cpumask_copy(ptr noundef %arraydecay79, ptr noundef %arraydecay90) #21, !dbg !3713
  %72 = load ptr, ptr %policy.addr, align 8, !dbg !3714
  %shared_type91 = getelementptr inbounds %struct.cpufreq_policy, ptr %72, i32 0, i32 3, !dbg !3715
  store i32 1, ptr %shared_type91, align 8, !dbg !3716
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #23, !dbg !3717
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !3375, metadata !DIExpression()), !dbg !3717
  store i8 1, ptr %__ret_do_once, align 1, !dbg !3717
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #23, !dbg !3718
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !3377, metadata !DIExpression()), !dbg !3718
  %73 = load i8, ptr %__ret_do_once, align 1, !dbg !3718, !range !3719, !noundef !384
  %tobool92 = trunc i8 %73 to i1, !dbg !3718
  %lnot = xor i1 %tobool92, true, !dbg !3718
  %lnot93 = xor i1 %lnot, true, !dbg !3718
  %frombool = zext i1 %lnot93 to i8, !dbg !3718
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !3718
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #23, !dbg !3718
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !3380, metadata !DIExpression()), !dbg !3718
  store i8 0, ptr %__ret_once, align 1, !dbg !3718
  %74 = load i8, ptr %__ret_cond, align 1, !dbg !3720, !range !3719, !noundef !384
  %tobool94 = trunc i8 %74 to i1, !dbg !3720
  br i1 %tobool94, label %land.rhs, label %land.end, !dbg !3720

land.rhs:                                         ; preds = %do.end83
  %75 = load i8, ptr @acpi_cpufreq_cpu_init.__already_done, align 1, !dbg !3720, !range !3719, !noundef !384
  %tobool96 = trunc i8 %75 to i1, !dbg !3720
  %lnot97 = xor i1 %tobool96, true, !dbg !3720
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end83
  %76 = phi i1 [ false, %do.end83 ], [ %lnot97, %land.rhs ], !dbg !3722
  %lnot98 = xor i1 %76, true, !dbg !3720
  %lnot99 = xor i1 %lnot98, true, !dbg !3720
  %lnot.ext = zext i1 %lnot99 to i32, !dbg !3720
  %conv100 = sext i32 %lnot.ext to i64, !dbg !3720
  %expval = call i64 @llvm.expect.i64(i64 %conv100, i64 0), !dbg !3720
  %tobool101 = icmp ne i64 %expval, 0, !dbg !3720
  br i1 %tobool101, label %if.then102, label %if.end103, !dbg !3718

if.then102:                                       ; preds = %land.end
  store i8 1, ptr @acpi_cpufreq_cpu_init.__already_done, align 1, !dbg !3723
  store i8 1, ptr %__ret_once, align 1, !dbg !3723
  br label %if.end103, !dbg !3723

if.end103:                                        ; preds = %if.then102, %land.end
  %77 = load i8, ptr %__ret_once, align 1, !dbg !3718, !range !3719, !noundef !384
  %tobool105 = trunc i8 %77 to i1, !dbg !3718
  %lnot106 = xor i1 %tobool105, true, !dbg !3718
  %lnot108 = xor i1 %lnot106, true, !dbg !3718
  %lnot.ext109 = zext i1 %lnot108 to i32, !dbg !3718
  %conv110 = sext i32 %lnot.ext109 to i64, !dbg !3718
  %expval111 = call i64 @llvm.expect.i64(i64 %conv110, i64 0), !dbg !3718
  store i64 %expval111, ptr %tmp104, align 8, !dbg !3720
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #23, !dbg !3725
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #23, !dbg !3725
  %78 = load i64, ptr %tmp104, align 8, !dbg !3718
  %tobool112 = icmp ne i64 %78, 0, !dbg !3725
  br i1 %tobool112, label %if.then113, label %if.end119, !dbg !3717

if.then113:                                       ; preds = %if.end103
  br label %do.body114, !dbg !3726

do.body114:                                       ; preds = %if.then113
  br label %do.cond115, !dbg !3728

do.cond115:                                       ; preds = %do.body114
  br label %do.end116, !dbg !3728

do.end116:                                        ; preds = %do.cond115
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #22, !dbg !3726
  store i32 %call118, ptr %tmp117, align 4, !dbg !3728
  %79 = load i32, ptr %tmp117, align 4, !dbg !3726
  br label %if.end119, !dbg !3725

if.end119:                                        ; preds = %do.end116, %if.end103
  %80 = load i8, ptr %__ret_do_once, align 1, !dbg !3717, !range !3719, !noundef !384
  %tobool121 = trunc i8 %80 to i1, !dbg !3717
  %lnot122 = xor i1 %tobool121, true, !dbg !3717
  %lnot124 = xor i1 %lnot122, true, !dbg !3717
  %lnot.ext125 = zext i1 %lnot124 to i32, !dbg !3717
  %conv126 = sext i32 %lnot.ext125 to i64, !dbg !3717
  %expval127 = call i64 @llvm.expect.i64(i64 %conv126, i64 0), !dbg !3717
  store i64 %expval127, ptr %tmp120, align 8, !dbg !3725
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #23, !dbg !3730
  %81 = load i64, ptr %tmp120, align 8, !dbg !3717
  br label %if.end128, !dbg !3731

if.end128:                                        ; preds = %if.end119, %land.lhs.true71, %land.lhs.true67, %if.end64
  %82 = load ptr, ptr %perf, align 8, !dbg !3732
  %state_count = getelementptr inbounds %struct.acpi_processor_performance, ptr %82, i32 0, i32 4, !dbg !3734
  %83 = load i32, ptr %state_count, align 8, !dbg !3734
  %cmp129 = icmp ule i32 %83, 1, !dbg !3735
  br i1 %cmp129, label %if.then131, label %if.end133, !dbg !3736

if.then131:                                       ; preds = %if.end128
  store i32 0, ptr %tmp132, align 4, !dbg !3737
  %84 = load i32, ptr %tmp132, align 4, !dbg !3741
  store i32 -19, ptr %result, align 4, !dbg !3742
  br label %err_unreg, !dbg !3743

if.end133:                                        ; preds = %if.end128
  %85 = load ptr, ptr %perf, align 8, !dbg !3744
  %control_register = getelementptr inbounds %struct.acpi_processor_performance, ptr %85, i32 0, i32 2, !dbg !3746
  %space_id = getelementptr inbounds %struct.acpi_pct_register, ptr %control_register, i32 0, i32 2, !dbg !3747
  %86 = load i8, ptr %space_id, align 1, !dbg !3747
  %conv134 = zext i8 %86 to i32, !dbg !3744
  %87 = load ptr, ptr %perf, align 8, !dbg !3748
  %status_register = getelementptr inbounds %struct.acpi_processor_performance, ptr %87, i32 0, i32 3, !dbg !3749
  %space_id135 = getelementptr inbounds %struct.acpi_pct_register, ptr %status_register, i32 0, i32 2, !dbg !3750
  %88 = load i8, ptr %space_id135, align 1, !dbg !3750
  %conv136 = zext i8 %88 to i32, !dbg !3748
  %cmp137 = icmp ne i32 %conv134, %conv136, !dbg !3751
  br i1 %cmp137, label %if.then139, label %if.end140, !dbg !3752

if.then139:                                       ; preds = %if.end133
  store i32 -19, ptr %result, align 4, !dbg !3753
  br label %err_unreg, !dbg !3755

if.end140:                                        ; preds = %if.end133
  %89 = load ptr, ptr %perf, align 8, !dbg !3756
  %control_register141 = getelementptr inbounds %struct.acpi_processor_performance, ptr %89, i32 0, i32 2, !dbg !3757
  %space_id142 = getelementptr inbounds %struct.acpi_pct_register, ptr %control_register141, i32 0, i32 2, !dbg !3758
  %90 = load i8, ptr %space_id142, align 1, !dbg !3758
  %conv143 = zext i8 %90 to i32, !dbg !3756
  switch i32 %conv143, label %sw.default [
    i32 1, label %sw.bb
    i32 127, label %sw.bb155
  ], !dbg !3759

sw.bb:                                            ; preds = %if.end140
  %91 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !3760
  %conv144 = zext i8 %91 to i32, !dbg !3763
  %cmp145 = icmp eq i32 %conv144, 2, !dbg !3764
  br i1 %cmp145, label %land.lhs.true147, label %if.end153, !dbg !3765

land.lhs.true147:                                 ; preds = %sw.bb
  %92 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !3766
  %conv148 = zext i8 %92 to i32, !dbg !3767
  %cmp149 = icmp eq i32 %conv148, 15, !dbg !3768
  br i1 %cmp149, label %if.then151, label %if.end153, !dbg !3769

if.then151:                                       ; preds = %land.lhs.true147
  store i32 0, ptr %tmp152, align 4, !dbg !3770
  %93 = load i32, ptr %tmp152, align 4, !dbg !3774
  store i32 -19, ptr %result, align 4, !dbg !3775
  br label %err_unreg, !dbg !3776

if.end153:                                        ; preds = %land.lhs.true147, %sw.bb
  store i32 0, ptr %tmp154, align 4, !dbg !3777
  %94 = load i32, ptr %tmp154, align 4, !dbg !3780
  %95 = load ptr, ptr %data, align 8, !dbg !3781
  %cpu_feature = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %95, i32 0, i32 1, !dbg !3782
  store i32 3, ptr %cpu_feature, align 4, !dbg !3783
  %96 = load ptr, ptr %data, align 8, !dbg !3784
  %cpu_freq_read = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %96, i32 0, i32 5, !dbg !3785
  store ptr @cpu_freq_read_io, ptr %cpu_freq_read, align 8, !dbg !3786
  %97 = load ptr, ptr %data, align 8, !dbg !3787
  %cpu_freq_write = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %97, i32 0, i32 4, !dbg !3788
  store ptr @cpu_freq_write_io, ptr %cpu_freq_write, align 8, !dbg !3789
  br label %sw.epilog, !dbg !3790

sw.bb155:                                         ; preds = %if.end140
  store i32 0, ptr %tmp156, align 4, !dbg !3791
  %98 = load i32, ptr %tmp156, align 4, !dbg !3794
  %99 = load i32, ptr %cpu, align 4, !dbg !3795
  %call157 = call i32 @check_est_cpu(i32 noundef %99) #21, !dbg !3797
  %tobool158 = icmp ne i32 %call157, 0, !dbg !3797
  br i1 %tobool158, label %if.then159, label %if.end163, !dbg !3798

if.then159:                                       ; preds = %sw.bb155
  %100 = load ptr, ptr %data, align 8, !dbg !3799
  %cpu_feature160 = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %100, i32 0, i32 1, !dbg !3801
  store i32 1, ptr %cpu_feature160, align 4, !dbg !3802
  %101 = load ptr, ptr %data, align 8, !dbg !3803
  %cpu_freq_read161 = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %101, i32 0, i32 5, !dbg !3804
  store ptr @cpu_freq_read_intel, ptr %cpu_freq_read161, align 8, !dbg !3805
  %102 = load ptr, ptr %data, align 8, !dbg !3806
  %cpu_freq_write162 = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %102, i32 0, i32 4, !dbg !3807
  store ptr @cpu_freq_write_intel, ptr %cpu_freq_write162, align 8, !dbg !3808
  br label %sw.epilog, !dbg !3809

if.end163:                                        ; preds = %sw.bb155
  %103 = load i32, ptr %cpu, align 4, !dbg !3810
  %call164 = call i32 @check_amd_hwpstate_cpu(i32 noundef %103) #21, !dbg !3812
  %tobool165 = icmp ne i32 %call164, 0, !dbg !3812
  br i1 %tobool165, label %if.then166, label %if.end170, !dbg !3813

if.then166:                                       ; preds = %if.end163
  %104 = load ptr, ptr %data, align 8, !dbg !3814
  %cpu_feature167 = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %104, i32 0, i32 1, !dbg !3816
  store i32 2, ptr %cpu_feature167, align 4, !dbg !3817
  %105 = load ptr, ptr %data, align 8, !dbg !3818
  %cpu_freq_read168 = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %105, i32 0, i32 5, !dbg !3819
  store ptr @cpu_freq_read_amd, ptr %cpu_freq_read168, align 8, !dbg !3820
  %106 = load ptr, ptr %data, align 8, !dbg !3821
  %cpu_freq_write169 = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %106, i32 0, i32 4, !dbg !3822
  store ptr @cpu_freq_write_amd, ptr %cpu_freq_write169, align 8, !dbg !3823
  br label %sw.epilog, !dbg !3824

if.end170:                                        ; preds = %if.end163
  store i32 -19, ptr %result, align 4, !dbg !3825
  br label %err_unreg, !dbg !3826

sw.default:                                       ; preds = %if.end140
  store i32 0, ptr %tmp171, align 4, !dbg !3827
  %107 = load i32, ptr %tmp171, align 4, !dbg !3830
  store i32 -19, ptr %result, align 4, !dbg !3831
  br label %err_unreg, !dbg !3832

sw.epilog:                                        ; preds = %if.then166, %if.then159, %if.end153
  %108 = load ptr, ptr %perf, align 8, !dbg !3833
  %state_count172 = getelementptr inbounds %struct.acpi_processor_performance, ptr %108, i32 0, i32 4, !dbg !3834
  %109 = load i32, ptr %state_count172, align 8, !dbg !3834
  %add173 = add i32 %109, 1, !dbg !3835
  %conv174 = zext i32 %add173 to i64, !dbg !3833
  %call175 = call noalias ptr @kcalloc(i64 noundef %conv174, i64 noundef 12, i32 noundef 3264) #25, !dbg !3836
  store ptr %call175, ptr %freq_table, align 8, !dbg !3837
  %110 = load ptr, ptr %freq_table, align 8, !dbg !3838
  %tobool176 = icmp ne ptr %110, null, !dbg !3838
  br i1 %tobool176, label %if.end178, label %if.then177, !dbg !3840

if.then177:                                       ; preds = %sw.epilog
  store i32 -12, ptr %result, align 4, !dbg !3841
  br label %err_unreg, !dbg !3843

if.end178:                                        ; preds = %sw.epilog
  %111 = load ptr, ptr %policy.addr, align 8, !dbg !3844
  %cpuinfo = getelementptr inbounds %struct.cpufreq_policy, ptr %111, i32 0, i32 6, !dbg !3845
  %transition_latency = getelementptr inbounds %struct.cpufreq_cpuinfo, ptr %cpuinfo, i32 0, i32 2, !dbg !3846
  store i32 0, ptr %transition_latency, align 8, !dbg !3847
  store i32 0, ptr %i, align 4, !dbg !3848
  br label %for.cond, !dbg !3850

for.cond:                                         ; preds = %for.inc, %if.end178
  %112 = load i32, ptr %i, align 4, !dbg !3851
  %113 = load ptr, ptr %perf, align 8, !dbg !3853
  %state_count179 = getelementptr inbounds %struct.acpi_processor_performance, ptr %113, i32 0, i32 4, !dbg !3854
  %114 = load i32, ptr %state_count179, align 8, !dbg !3854
  %cmp180 = icmp ult i32 %112, %114, !dbg !3855
  br i1 %cmp180, label %for.body, label %for.end, !dbg !3856

for.body:                                         ; preds = %for.cond
  %115 = load ptr, ptr %perf, align 8, !dbg !3857
  %states = getelementptr inbounds %struct.acpi_processor_performance, ptr %115, i32 0, i32 5, !dbg !3860
  %116 = load ptr, ptr %states, align 8, !dbg !3860
  %117 = load i32, ptr %i, align 4, !dbg !3861
  %idxprom182 = zext i32 %117 to i64, !dbg !3857
  %arrayidx183 = getelementptr %struct.acpi_processor_px, ptr %116, i64 %idxprom182, !dbg !3857
  %transition_latency184 = getelementptr inbounds %struct.acpi_processor_px, ptr %arrayidx183, i32 0, i32 2, !dbg !3862
  %118 = load i64, ptr %transition_latency184, align 8, !dbg !3862
  %mul = mul i64 %118, 1000, !dbg !3863
  %119 = load ptr, ptr %policy.addr, align 8, !dbg !3864
  %cpuinfo185 = getelementptr inbounds %struct.cpufreq_policy, ptr %119, i32 0, i32 6, !dbg !3865
  %transition_latency186 = getelementptr inbounds %struct.cpufreq_cpuinfo, ptr %cpuinfo185, i32 0, i32 2, !dbg !3866
  %120 = load i32, ptr %transition_latency186, align 8, !dbg !3866
  %conv187 = zext i32 %120 to i64, !dbg !3864
  %cmp188 = icmp ugt i64 %mul, %conv187, !dbg !3867
  br i1 %cmp188, label %if.then190, label %if.end199, !dbg !3868

if.then190:                                       ; preds = %for.body
  %121 = load ptr, ptr %perf, align 8, !dbg !3869
  %states191 = getelementptr inbounds %struct.acpi_processor_performance, ptr %121, i32 0, i32 5, !dbg !3870
  %122 = load ptr, ptr %states191, align 8, !dbg !3870
  %123 = load i32, ptr %i, align 4, !dbg !3871
  %idxprom192 = zext i32 %123 to i64, !dbg !3869
  %arrayidx193 = getelementptr %struct.acpi_processor_px, ptr %122, i64 %idxprom192, !dbg !3869
  %transition_latency194 = getelementptr inbounds %struct.acpi_processor_px, ptr %arrayidx193, i32 0, i32 2, !dbg !3872
  %124 = load i64, ptr %transition_latency194, align 8, !dbg !3872
  %mul195 = mul i64 %124, 1000, !dbg !3873
  %conv196 = trunc i64 %mul195 to i32, !dbg !3869
  %125 = load ptr, ptr %policy.addr, align 8, !dbg !3874
  %cpuinfo197 = getelementptr inbounds %struct.cpufreq_policy, ptr %125, i32 0, i32 6, !dbg !3875
  %transition_latency198 = getelementptr inbounds %struct.cpufreq_cpuinfo, ptr %cpuinfo197, i32 0, i32 2, !dbg !3876
  store i32 %conv196, ptr %transition_latency198, align 8, !dbg !3877
  br label %if.end199, !dbg !3874

if.end199:                                        ; preds = %if.then190, %for.body
  br label %for.inc, !dbg !3878

for.inc:                                          ; preds = %if.end199
  %126 = load i32, ptr %i, align 4, !dbg !3879
  %inc = add i32 %126, 1, !dbg !3879
  store i32 %inc, ptr %i, align 4, !dbg !3879
  br label %for.cond, !dbg !3880, !llvm.loop !3881

for.end:                                          ; preds = %for.cond
  %127 = load ptr, ptr %perf, align 8, !dbg !3883
  %control_register200 = getelementptr inbounds %struct.acpi_processor_performance, ptr %127, i32 0, i32 2, !dbg !3884
  %space_id201 = getelementptr inbounds %struct.acpi_pct_register, ptr %control_register200, i32 0, i32 2, !dbg !3885
  %128 = load i8, ptr %space_id201, align 1, !dbg !3885
  %conv202 = zext i8 %128 to i32, !dbg !3883
  %cmp203 = icmp eq i32 %conv202, 127, !dbg !3886
  br i1 %cmp203, label %land.lhs.true205, label %if.end262, !dbg !3887

land.lhs.true205:                                 ; preds = %for.end
  %129 = load ptr, ptr %policy.addr, align 8, !dbg !3888
  %cpuinfo206 = getelementptr inbounds %struct.cpufreq_policy, ptr %129, i32 0, i32 6, !dbg !3889
  %transition_latency207 = getelementptr inbounds %struct.cpufreq_cpuinfo, ptr %cpuinfo206, i32 0, i32 2, !dbg !3890
  %130 = load i32, ptr %transition_latency207, align 8, !dbg !3890
  %cmp208 = icmp ugt i32 %130, 20000, !dbg !3891
  br i1 %cmp208, label %if.then210, label %if.end262, !dbg !3892

if.then210:                                       ; preds = %land.lhs.true205
  %131 = load ptr, ptr %policy.addr, align 8, !dbg !3893
  %cpuinfo211 = getelementptr inbounds %struct.cpufreq_policy, ptr %131, i32 0, i32 6, !dbg !3894
  %transition_latency212 = getelementptr inbounds %struct.cpufreq_cpuinfo, ptr %cpuinfo211, i32 0, i32 2, !dbg !3895
  store i32 20000, ptr %transition_latency212, align 8, !dbg !3896
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once213) #23, !dbg !3897
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once213, metadata !3381, metadata !DIExpression()), !dbg !3897
  store i8 1, ptr %__ret_do_once213, align 1, !dbg !3897
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond214) #23, !dbg !3898
  call void @llvm.dbg.declare(metadata ptr %__ret_cond214, metadata !3385, metadata !DIExpression()), !dbg !3898
  %132 = load i8, ptr %__ret_do_once213, align 1, !dbg !3898, !range !3719, !noundef !384
  %tobool215 = trunc i8 %132 to i1, !dbg !3898
  %lnot216 = xor i1 %tobool215, true, !dbg !3898
  %lnot218 = xor i1 %lnot216, true, !dbg !3898
  %frombool220 = zext i1 %lnot218 to i8, !dbg !3898
  store i8 %frombool220, ptr %__ret_cond214, align 1, !dbg !3898
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once221) #23, !dbg !3898
  call void @llvm.dbg.declare(metadata ptr %__ret_once221, metadata !3388, metadata !DIExpression()), !dbg !3898
  store i8 0, ptr %__ret_once221, align 1, !dbg !3898
  %133 = load i8, ptr %__ret_cond214, align 1, !dbg !3899, !range !3719, !noundef !384
  %tobool222 = trunc i8 %133 to i1, !dbg !3899
  br i1 %tobool222, label %land.rhs224, label %land.end228, !dbg !3899

land.rhs224:                                      ; preds = %if.then210
  %134 = load i8, ptr @acpi_cpufreq_cpu_init.__already_done.2, align 1, !dbg !3899, !range !3719, !noundef !384
  %tobool225 = trunc i8 %134 to i1, !dbg !3899
  %lnot226 = xor i1 %tobool225, true, !dbg !3899
  br label %land.end228

land.end228:                                      ; preds = %land.rhs224, %if.then210
  %135 = phi i1 [ false, %if.then210 ], [ %lnot226, %land.rhs224 ], !dbg !3901
  %lnot229 = xor i1 %135, true, !dbg !3899
  %lnot231 = xor i1 %lnot229, true, !dbg !3899
  %lnot.ext232 = zext i1 %lnot231 to i32, !dbg !3899
  %conv233 = sext i32 %lnot.ext232 to i64, !dbg !3899
  %expval234 = call i64 @llvm.expect.i64(i64 %conv233, i64 0), !dbg !3899
  %tobool235 = icmp ne i64 %expval234, 0, !dbg !3899
  br i1 %tobool235, label %if.then236, label %if.end237, !dbg !3898

if.then236:                                       ; preds = %land.end228
  store i8 1, ptr @acpi_cpufreq_cpu_init.__already_done.2, align 1, !dbg !3902
  store i8 1, ptr %__ret_once221, align 1, !dbg !3902
  br label %if.end237, !dbg !3902

if.end237:                                        ; preds = %if.then236, %land.end228
  %136 = load i8, ptr %__ret_once221, align 1, !dbg !3898, !range !3719, !noundef !384
  %tobool239 = trunc i8 %136 to i1, !dbg !3898
  %lnot240 = xor i1 %tobool239, true, !dbg !3898
  %lnot242 = xor i1 %lnot240, true, !dbg !3898
  %lnot.ext243 = zext i1 %lnot242 to i32, !dbg !3898
  %conv244 = sext i32 %lnot.ext243 to i64, !dbg !3898
  %expval245 = call i64 @llvm.expect.i64(i64 %conv244, i64 0), !dbg !3898
  store i64 %expval245, ptr %tmp238, align 8, !dbg !3899
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once221) #23, !dbg !3904
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond214) #23, !dbg !3904
  %137 = load i64, ptr %tmp238, align 8, !dbg !3898
  %tobool246 = icmp ne i64 %137, 0, !dbg !3904
  br i1 %tobool246, label %if.then247, label %if.end253, !dbg !3897

if.then247:                                       ; preds = %if.end237
  br label %do.body248, !dbg !3905

do.body248:                                       ; preds = %if.then247
  br label %do.cond249, !dbg !3907

do.cond249:                                       ; preds = %do.body248
  br label %do.end250, !dbg !3907

do.end250:                                        ; preds = %do.cond249
  %call252 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #22, !dbg !3905
  store i32 %call252, ptr %tmp251, align 4, !dbg !3907
  %138 = load i32, ptr %tmp251, align 4, !dbg !3905
  br label %if.end253, !dbg !3904

if.end253:                                        ; preds = %do.end250, %if.end237
  %139 = load i8, ptr %__ret_do_once213, align 1, !dbg !3897, !range !3719, !noundef !384
  %tobool255 = trunc i8 %139 to i1, !dbg !3897
  %lnot256 = xor i1 %tobool255, true, !dbg !3897
  %lnot258 = xor i1 %lnot256, true, !dbg !3897
  %lnot.ext259 = zext i1 %lnot258 to i32, !dbg !3897
  %conv260 = sext i32 %lnot.ext259 to i64, !dbg !3897
  %expval261 = call i64 @llvm.expect.i64(i64 %conv260, i64 0), !dbg !3897
  store i64 %expval261, ptr %tmp254, align 8, !dbg !3904
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once213) #23, !dbg !3909
  %140 = load i64, ptr %tmp254, align 8, !dbg !3897
  br label %if.end262, !dbg !3910

if.end262:                                        ; preds = %if.end253, %land.lhs.true205, %for.end
  store i32 0, ptr %i, align 4, !dbg !3911
  br label %for.cond263, !dbg !3913

for.cond263:                                      ; preds = %for.inc294, %if.end262
  %141 = load i32, ptr %i, align 4, !dbg !3914
  %142 = load ptr, ptr %perf, align 8, !dbg !3916
  %state_count264 = getelementptr inbounds %struct.acpi_processor_performance, ptr %142, i32 0, i32 4, !dbg !3917
  %143 = load i32, ptr %state_count264, align 8, !dbg !3917
  %cmp265 = icmp ult i32 %141, %143, !dbg !3918
  br i1 %cmp265, label %for.body267, label %for.end296, !dbg !3919

for.body267:                                      ; preds = %for.cond263
  %144 = load i32, ptr %i, align 4, !dbg !3920
  %cmp268 = icmp ugt i32 %144, 0, !dbg !3923
  br i1 %cmp268, label %land.lhs.true270, label %if.end280, !dbg !3924

land.lhs.true270:                                 ; preds = %for.body267
  %145 = load ptr, ptr %perf, align 8, !dbg !3925
  %states271 = getelementptr inbounds %struct.acpi_processor_performance, ptr %145, i32 0, i32 5, !dbg !3926
  %146 = load ptr, ptr %states271, align 8, !dbg !3926
  %147 = load i32, ptr %i, align 4, !dbg !3927
  %idxprom272 = zext i32 %147 to i64, !dbg !3925
  %arrayidx273 = getelementptr %struct.acpi_processor_px, ptr %146, i64 %idxprom272, !dbg !3925
  %core_frequency = getelementptr inbounds %struct.acpi_processor_px, ptr %arrayidx273, i32 0, i32 0, !dbg !3928
  %148 = load i64, ptr %core_frequency, align 8, !dbg !3928
  %149 = load ptr, ptr %freq_table, align 8, !dbg !3929
  %150 = load i32, ptr %valid_states, align 4, !dbg !3930
  %sub = sub i32 %150, 1, !dbg !3931
  %idxprom274 = zext i32 %sub to i64, !dbg !3929
  %arrayidx275 = getelementptr %struct.cpufreq_frequency_table, ptr %149, i64 %idxprom274, !dbg !3929
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx275, i32 0, i32 2, !dbg !3932
  %151 = load i32, ptr %frequency, align 4, !dbg !3932
  %div = udiv i32 %151, 1000, !dbg !3933
  %conv276 = zext i32 %div to i64, !dbg !3929
  %cmp277 = icmp uge i64 %148, %conv276, !dbg !3934
  br i1 %cmp277, label %if.then279, label %if.end280, !dbg !3935

if.then279:                                       ; preds = %land.lhs.true270
  br label %for.inc294, !dbg !3936

if.end280:                                        ; preds = %land.lhs.true270, %for.body267
  %152 = load i32, ptr %i, align 4, !dbg !3937
  %153 = load ptr, ptr %freq_table, align 8, !dbg !3938
  %154 = load i32, ptr %valid_states, align 4, !dbg !3939
  %idxprom281 = zext i32 %154 to i64, !dbg !3938
  %arrayidx282 = getelementptr %struct.cpufreq_frequency_table, ptr %153, i64 %idxprom281, !dbg !3938
  %driver_data283 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx282, i32 0, i32 1, !dbg !3940
  store i32 %152, ptr %driver_data283, align 4, !dbg !3941
  %155 = load ptr, ptr %perf, align 8, !dbg !3942
  %states284 = getelementptr inbounds %struct.acpi_processor_performance, ptr %155, i32 0, i32 5, !dbg !3943
  %156 = load ptr, ptr %states284, align 8, !dbg !3943
  %157 = load i32, ptr %i, align 4, !dbg !3944
  %idxprom285 = zext i32 %157 to i64, !dbg !3942
  %arrayidx286 = getelementptr %struct.acpi_processor_px, ptr %156, i64 %idxprom285, !dbg !3942
  %core_frequency287 = getelementptr inbounds %struct.acpi_processor_px, ptr %arrayidx286, i32 0, i32 0, !dbg !3945
  %158 = load i64, ptr %core_frequency287, align 8, !dbg !3945
  %mul288 = mul i64 %158, 1000, !dbg !3946
  %conv289 = trunc i64 %mul288 to i32, !dbg !3942
  %159 = load ptr, ptr %freq_table, align 8, !dbg !3947
  %160 = load i32, ptr %valid_states, align 4, !dbg !3948
  %idxprom290 = zext i32 %160 to i64, !dbg !3947
  %arrayidx291 = getelementptr %struct.cpufreq_frequency_table, ptr %159, i64 %idxprom290, !dbg !3947
  %frequency292 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx291, i32 0, i32 2, !dbg !3949
  store i32 %conv289, ptr %frequency292, align 4, !dbg !3950
  %161 = load i32, ptr %valid_states, align 4, !dbg !3951
  %inc293 = add i32 %161, 1, !dbg !3951
  store i32 %inc293, ptr %valid_states, align 4, !dbg !3951
  br label %for.inc294, !dbg !3952

for.inc294:                                       ; preds = %if.end280, %if.then279
  %162 = load i32, ptr %i, align 4, !dbg !3953
  %inc295 = add i32 %162, 1, !dbg !3953
  store i32 %inc295, ptr %i, align 4, !dbg !3953
  br label %for.cond263, !dbg !3954, !llvm.loop !3955

for.end296:                                       ; preds = %for.cond263
  %163 = load ptr, ptr %freq_table, align 8, !dbg !3957
  %164 = load i32, ptr %valid_states, align 4, !dbg !3958
  %idxprom297 = zext i32 %164 to i64, !dbg !3957
  %arrayidx298 = getelementptr %struct.cpufreq_frequency_table, ptr %163, i64 %idxprom297, !dbg !3957
  %frequency299 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx298, i32 0, i32 2, !dbg !3959
  store i32 -2, ptr %frequency299, align 4, !dbg !3960
  %165 = load i32, ptr %cpu, align 4, !dbg !3961
  %call300 = call i64 @get_max_boost_ratio(i32 noundef %165, ptr noundef %nominal_freq) #21, !dbg !3962
  store i64 %call300, ptr %max_boost_ratio, align 8, !dbg !3963
  %166 = load i64, ptr %max_boost_ratio, align 8, !dbg !3964
  %tobool301 = icmp ne i64 %166, 0, !dbg !3964
  br i1 %tobool301, label %if.then302, label %if.else, !dbg !3965

if.then302:                                       ; preds = %for.end296
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #23, !dbg !3966
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !3389, metadata !DIExpression()), !dbg !3967
  %167 = load i64, ptr %nominal_freq, align 8, !dbg !3968
  %conv303 = trunc i64 %167 to i32, !dbg !3968
  store i32 %conv303, ptr %freq, align 4, !dbg !3967
  %168 = load i32, ptr %freq, align 4, !dbg !3969
  %tobool304 = icmp ne i32 %168, 0, !dbg !3969
  br i1 %tobool304, label %if.end308, label %if.then305, !dbg !3971

if.then305:                                       ; preds = %if.then302
  %169 = load ptr, ptr %freq_table, align 8, !dbg !3972
  %arrayidx306 = getelementptr %struct.cpufreq_frequency_table, ptr %169, i64 0, !dbg !3972
  %frequency307 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx306, i32 0, i32 2, !dbg !3973
  %170 = load i32, ptr %frequency307, align 4, !dbg !3973
  store i32 %170, ptr %freq, align 4, !dbg !3974
  br label %if.end308, !dbg !3975

if.end308:                                        ; preds = %if.then305, %if.then302
  %171 = load i32, ptr %freq, align 4, !dbg !3976
  %conv309 = zext i32 %171 to i64, !dbg !3976
  %172 = load i64, ptr %max_boost_ratio, align 8, !dbg !3977
  %mul310 = mul i64 %conv309, %172, !dbg !3978
  %shr = lshr i64 %mul310, 10, !dbg !3979
  %conv311 = trunc i64 %shr to i32, !dbg !3976
  %173 = load ptr, ptr %policy.addr, align 8, !dbg !3980
  %cpuinfo312 = getelementptr inbounds %struct.cpufreq_policy, ptr %173, i32 0, i32 6, !dbg !3981
  %max_freq = getelementptr inbounds %struct.cpufreq_cpuinfo, ptr %cpuinfo312, i32 0, i32 0, !dbg !3982
  store i32 %conv311, ptr %max_freq, align 8, !dbg !3983
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #23, !dbg !3984
  br label %if.end313, !dbg !3985

if.else:                                          ; preds = %for.end296
  call void @arch_set_max_freq_ratio(i1 noundef zeroext true) #21, !dbg !3986
  br label %if.end313

if.end313:                                        ; preds = %if.else, %if.end308
  %174 = load ptr, ptr %freq_table, align 8, !dbg !3988
  %175 = load ptr, ptr %policy.addr, align 8, !dbg !3989
  %freq_table314 = getelementptr inbounds %struct.cpufreq_policy, ptr %175, i32 0, i32 20, !dbg !3990
  store ptr %174, ptr %freq_table314, align 8, !dbg !3991
  %176 = load ptr, ptr %perf, align 8, !dbg !3992
  %state = getelementptr inbounds %struct.acpi_processor_performance, ptr %176, i32 0, i32 0, !dbg !3993
  store i32 0, ptr %state, align 8, !dbg !3994
  %177 = load ptr, ptr %perf, align 8, !dbg !3995
  %control_register315 = getelementptr inbounds %struct.acpi_processor_performance, ptr %177, i32 0, i32 2, !dbg !3996
  %space_id316 = getelementptr inbounds %struct.acpi_pct_register, ptr %control_register315, i32 0, i32 2, !dbg !3997
  %178 = load i8, ptr %space_id316, align 1, !dbg !3997
  %conv317 = zext i8 %178 to i32, !dbg !3995
  switch i32 %conv317, label %sw.default323 [
    i32 1, label %sw.bb318
    i32 127, label %sw.bb322
  ], !dbg !3998

sw.bb318:                                         ; preds = %if.end313
  %179 = load ptr, ptr %data, align 8, !dbg !3999
  %180 = load ptr, ptr %policy.addr, align 8, !dbg !4001
  %cpu319 = getelementptr inbounds %struct.cpufreq_policy, ptr %180, i32 0, i32 4, !dbg !4002
  %181 = load i32, ptr %cpu319, align 4, !dbg !4002
  %call320 = call i64 @acpi_cpufreq_guess_freq(ptr noundef %179, i32 noundef %181) #21, !dbg !4003
  %conv321 = trunc i64 %call320 to i32, !dbg !4003
  %182 = load ptr, ptr %policy.addr, align 8, !dbg !4004
  %cur = getelementptr inbounds %struct.cpufreq_policy, ptr %182, i32 0, i32 9, !dbg !4005
  store i32 %conv321, ptr %cur, align 4, !dbg !4006
  br label %sw.epilog324, !dbg !4007

sw.bb322:                                         ; preds = %if.end313
  store ptr @get_cur_freq_on_cpu, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @acpi_cpufreq_driver, i32 0, i32 12), align 8, !dbg !4008
  br label %sw.epilog324, !dbg !4009

sw.default323:                                    ; preds = %if.end313
  br label %sw.epilog324, !dbg !4010

sw.epilog324:                                     ; preds = %sw.default323, %sw.bb322, %sw.bb318
  %call325 = call i32 @acpi_processor_notify_smm(ptr noundef null) #21, !dbg !4011
  store i32 0, ptr %tmp326, align 4, !dbg !4012
  %183 = load i32, ptr %tmp326, align 4, !dbg !4015
  store i32 0, ptr %i, align 4, !dbg !4016
  br label %for.cond327, !dbg !4018

for.cond327:                                      ; preds = %for.inc333, %sw.epilog324
  %184 = load i32, ptr %i, align 4, !dbg !4019
  %185 = load ptr, ptr %perf, align 8, !dbg !4021
  %state_count328 = getelementptr inbounds %struct.acpi_processor_performance, ptr %185, i32 0, i32 4, !dbg !4022
  %186 = load i32, ptr %state_count328, align 8, !dbg !4022
  %cmp329 = icmp ult i32 %184, %186, !dbg !4023
  br i1 %cmp329, label %for.body331, label %for.end335, !dbg !4024

for.body331:                                      ; preds = %for.cond327
  store i32 0, ptr %tmp332, align 4, !dbg !4025
  %187 = load i32, ptr %tmp332, align 4, !dbg !4028
  br label %for.inc333, !dbg !4029

for.inc333:                                       ; preds = %for.body331
  %188 = load i32, ptr %i, align 4, !dbg !4030
  %inc334 = add i32 %188, 1, !dbg !4030
  store i32 %inc334, ptr %i, align 4, !dbg !4030
  br label %for.cond327, !dbg !4031, !llvm.loop !4032

for.end335:                                       ; preds = %for.cond327
  %189 = load ptr, ptr %data, align 8, !dbg !4034
  %resume = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %189, i32 0, i32 0, !dbg !4035
  store i32 1, ptr %resume, align 8, !dbg !4036
  %190 = load i32, ptr @acpi_pstate_strict, align 4, !dbg !4037
  %tobool336 = icmp ne i32 %190, 0, !dbg !4037
  br i1 %tobool336, label %land.end347, label %land.rhs337, !dbg !4038

land.rhs337:                                      ; preds = %for.end335
  %191 = load ptr, ptr %policy.addr, align 8, !dbg !4039
  %call338 = call zeroext i1 @policy_is_shared(ptr noundef %191) #21, !dbg !4040
  br i1 %call338, label %land.rhs340, label %land.end344, !dbg !4041

land.rhs340:                                      ; preds = %land.rhs337
  %192 = load ptr, ptr %policy.addr, align 8, !dbg !4042
  %shared_type341 = getelementptr inbounds %struct.cpufreq_policy, ptr %192, i32 0, i32 3, !dbg !4043
  %193 = load i32, ptr %shared_type341, align 8, !dbg !4043
  %cmp342 = icmp ne i32 %193, 3, !dbg !4044
  br label %land.end344

land.end344:                                      ; preds = %land.rhs340, %land.rhs337
  %194 = phi i1 [ false, %land.rhs337 ], [ %cmp342, %land.rhs340 ], !dbg !4045
  %lnot345 = xor i1 %194, true, !dbg !4046
  br label %land.end347

land.end347:                                      ; preds = %land.end344, %for.end335
  %195 = phi i1 [ false, %for.end335 ], [ %lnot345, %land.end344 ], !dbg !4045
  %196 = load ptr, ptr %policy.addr, align 8, !dbg !4047
  %fast_switch_possible = getelementptr inbounds %struct.cpufreq_policy, ptr %196, i32 0, i32 26, !dbg !4048
  %frombool348 = zext i1 %195 to i8, !dbg !4049
  store i8 %frombool348, ptr %fast_switch_possible, align 8, !dbg !4049
  %197 = load ptr, ptr %perf, align 8, !dbg !4050
  %states349 = getelementptr inbounds %struct.acpi_processor_performance, ptr %197, i32 0, i32 5, !dbg !4052
  %198 = load ptr, ptr %states349, align 8, !dbg !4052
  %arrayidx350 = getelementptr %struct.acpi_processor_px, ptr %198, i64 0, !dbg !4050
  %core_frequency351 = getelementptr inbounds %struct.acpi_processor_px, ptr %arrayidx350, i32 0, i32 0, !dbg !4053
  %199 = load i64, ptr %core_frequency351, align 8, !dbg !4053
  %mul352 = mul i64 %199, 1000, !dbg !4054
  %200 = load ptr, ptr %freq_table, align 8, !dbg !4055
  %arrayidx353 = getelementptr %struct.cpufreq_frequency_table, ptr %200, i64 0, !dbg !4055
  %frequency354 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx353, i32 0, i32 2, !dbg !4056
  %201 = load i32, ptr %frequency354, align 4, !dbg !4056
  %conv355 = zext i32 %201 to i64, !dbg !4055
  %cmp356 = icmp ne i64 %mul352, %conv355, !dbg !4057
  br i1 %cmp356, label %if.then358, label %if.end364, !dbg !4058

if.then358:                                       ; preds = %land.end347
  br label %do.body359, !dbg !4059

do.body359:                                       ; preds = %if.then358
  br label %do.cond360, !dbg !4061

do.cond360:                                       ; preds = %do.body359
  br label %do.end361, !dbg !4061

do.end361:                                        ; preds = %do.cond360
  %call363 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #22, !dbg !4059
  store i32 %call363, ptr %tmp362, align 4, !dbg !4061
  %202 = load i32, ptr %tmp362, align 4, !dbg !4059
  br label %if.end364, !dbg !4063

if.end364:                                        ; preds = %do.end361, %land.end347
  %203 = load ptr, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @acpi_cpufreq_driver, i32 0, i32 23), align 8, !dbg !4064
  %tobool365 = icmp ne ptr %203, null, !dbg !4066
  br i1 %tobool365, label %if.then366, label %if.end372, !dbg !4067

if.then366:                                       ; preds = %if.end364
  %204 = load ptr, ptr %policy.addr, align 8, !dbg !4068
  %205 = load i8, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @acpi_cpufreq_driver, i32 0, i32 22), align 8, !dbg !4070, !range !3719, !noundef !384
  %tobool367 = trunc i8 %205 to i1, !dbg !4070
  %conv368 = zext i1 %tobool367 to i32, !dbg !4071
  %call369 = call i32 @set_boost(ptr noundef %204, i32 noundef %conv368) #21, !dbg !4072
  %206 = load i8, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @acpi_cpufreq_driver, i32 0, i32 22), align 8, !dbg !4073, !range !3719, !noundef !384
  %tobool370 = trunc i8 %206 to i1, !dbg !4073
  %207 = load ptr, ptr %policy.addr, align 8, !dbg !4074
  %boost_enabled = getelementptr inbounds %struct.cpufreq_policy, ptr %207, i32 0, i32 32, !dbg !4075
  %frombool371 = zext i1 %tobool370 to i8, !dbg !4076
  store i8 %frombool371, ptr %boost_enabled, align 1, !dbg !4076
  br label %if.end372, !dbg !4077

if.end372:                                        ; preds = %if.then366, %if.end364
  %208 = load i32, ptr %result, align 4, !dbg !4078
  store i32 %208, ptr %retval, align 4, !dbg !4079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4079

err_unreg:                                        ; preds = %if.then177, %sw.default, %if.end170, %if.then151, %if.then139, %if.then131
  call void @llvm.dbg.label(metadata !3392), !dbg !4080
  %209 = load i32, ptr %cpu, align 4, !dbg !4081
  call void @acpi_processor_unregister_performance(i32 noundef %209) #21, !dbg !4082
  br label %err_free_mask, !dbg !4082

err_free_mask:                                    ; preds = %err_unreg, %if.then30
  call void @llvm.dbg.label(metadata !3393), !dbg !4083
  %210 = load ptr, ptr %data, align 8, !dbg !4084
  %freqdomain_cpus373 = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %210, i32 0, i32 3, !dbg !4085
  %arraydecay374 = getelementptr inbounds [1 x %struct.cpumask], ptr %freqdomain_cpus373, i64 0, i64 0, !dbg !4084
  call void @free_cpumask_var(ptr noundef %arraydecay374) #21, !dbg !4086
  br label %err_free, !dbg !4086

err_free:                                         ; preds = %err_free_mask, %if.then12
  call void @llvm.dbg.label(metadata !3394), !dbg !4087
  %211 = load ptr, ptr %data, align 8, !dbg !4088
  call void @kfree(ptr noundef %211) #21, !dbg !4089
  %212 = load ptr, ptr %policy.addr, align 8, !dbg !4090
  %driver_data375 = getelementptr inbounds %struct.cpufreq_policy, ptr %212, i32 0, i32 40, !dbg !4091
  store ptr null, ptr %driver_data375, align 8, !dbg !4092
  %213 = load i32, ptr %result, align 4, !dbg !4093
  store i32 %213, ptr %retval, align 4, !dbg !4094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4094

cleanup:                                          ; preds = %err_free, %if.end372, %if.then9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #23, !dbg !4095
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #23, !dbg !4095
  call void @llvm.lifetime.end.p0(i64 4, ptr %valid_states) #23, !dbg !4095
  call void @llvm.lifetime.end.p0(i64 8, ptr %nominal_freq) #23, !dbg !4095
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_boost_ratio) #23, !dbg !4095
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #23, !dbg !4095
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #23, !dbg !4095
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #23, !dbg !4095
  call void @llvm.lifetime.end.p0(i64 8, ptr %perf) #23, !dbg !4095
  call void @llvm.lifetime.end.p0(i64 8, ptr %freq_table) #23, !dbg !4095
  %214 = load i32, ptr %retval, align 4, !dbg !4095
  ret i32 %214, !dbg !4095
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_cpufreq_target(ptr noundef %policy, i32 noundef %index) #2 align 16 !dbg !4096 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  %perf = alloca ptr, align 8
  %mask = alloca ptr, align 8
  %next_perf_state = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4098, metadata !DIExpression()), !dbg !4105
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !4099, metadata !DIExpression()), !dbg !4106
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #23, !dbg !4107
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4100, metadata !DIExpression()), !dbg !4108
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !4109
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 40, !dbg !4110
  %1 = load ptr, ptr %driver_data, align 8, !dbg !4110
  store ptr %1, ptr %data, align 8, !dbg !4108
  call void @llvm.lifetime.start.p0(i64 8, ptr %perf) #23, !dbg !4111
  call void @llvm.dbg.declare(metadata ptr %perf, metadata !4101, metadata !DIExpression()), !dbg !4112
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #23, !dbg !4113
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4102, metadata !DIExpression()), !dbg !4114
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_perf_state) #23, !dbg !4115
  call void @llvm.dbg.declare(metadata ptr %next_perf_state, metadata !4103, metadata !DIExpression()), !dbg !4116
  store i32 0, ptr %next_perf_state, align 4, !dbg !4116
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #23, !dbg !4117
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4104, metadata !DIExpression()), !dbg !4118
  store i32 0, ptr %result, align 4, !dbg !4118
  %2 = load ptr, ptr %data, align 8, !dbg !4119
  %tobool = icmp ne ptr %2, null, !dbg !4119
  %lnot = xor i1 %tobool, true, !dbg !4119
  %lnot1 = xor i1 %lnot, true, !dbg !4119
  %lnot2 = xor i1 %lnot1, true, !dbg !4119
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4119
  %conv = sext i32 %lnot.ext to i64, !dbg !4119
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4119
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4119
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4121

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !4122
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4122

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %data, align 8, !dbg !4124
  %call = call ptr @to_perf_data(ptr noundef %3) #21, !dbg !4125
  store ptr %call, ptr %perf, align 8, !dbg !4126
  %4 = load ptr, ptr %policy.addr, align 8, !dbg !4127
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %4, i32 0, i32 20, !dbg !4128
  %5 = load ptr, ptr %freq_table, align 8, !dbg !4128
  %6 = load i32, ptr %index.addr, align 4, !dbg !4129
  %idxprom = zext i32 %6 to i64, !dbg !4127
  %arrayidx = getelementptr %struct.cpufreq_frequency_table, ptr %5, i64 %idxprom, !dbg !4127
  %driver_data4 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx, i32 0, i32 1, !dbg !4130
  %7 = load i32, ptr %driver_data4, align 4, !dbg !4130
  store i32 %7, ptr %next_perf_state, align 4, !dbg !4131
  %8 = load ptr, ptr %perf, align 8, !dbg !4132
  %state = getelementptr inbounds %struct.acpi_processor_performance, ptr %8, i32 0, i32 0, !dbg !4134
  %9 = load i32, ptr %state, align 8, !dbg !4134
  %10 = load i32, ptr %next_perf_state, align 4, !dbg !4135
  %cmp = icmp eq i32 %9, %10, !dbg !4136
  br i1 %cmp, label %if.then6, label %if.end19, !dbg !4137

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %data, align 8, !dbg !4138
  %resume = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %11, i32 0, i32 0, !dbg !4138
  %12 = load i32, ptr %resume, align 8, !dbg !4138
  %tobool7 = icmp ne i32 %12, 0, !dbg !4138
  %lnot8 = xor i1 %tobool7, true, !dbg !4138
  %lnot10 = xor i1 %lnot8, true, !dbg !4138
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !4138
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !4138
  %expval13 = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !4138
  %tobool14 = icmp ne i64 %expval13, 0, !dbg !4138
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !4141

if.then15:                                        ; preds = %if.then6
  store i32 0, ptr %tmp, align 4, !dbg !4142
  %13 = load i32, ptr %tmp, align 4, !dbg !4146
  %14 = load ptr, ptr %data, align 8, !dbg !4147
  %resume16 = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %14, i32 0, i32 0, !dbg !4148
  store i32 0, ptr %resume16, align 8, !dbg !4149
  br label %if.end18, !dbg !4150

if.else:                                          ; preds = %if.then6
  store i32 0, ptr %tmp17, align 4, !dbg !4151
  %15 = load i32, ptr %tmp17, align 4, !dbg !4155
  store i32 0, ptr %retval, align 4, !dbg !4156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4156

if.end18:                                         ; preds = %if.then15
  br label %if.end19, !dbg !4157

if.end19:                                         ; preds = %if.end18, %if.end
  %16 = load ptr, ptr %policy.addr, align 8, !dbg !4158
  %shared_type = getelementptr inbounds %struct.cpufreq_policy, ptr %16, i32 0, i32 3, !dbg !4159
  %17 = load i32, ptr %shared_type, align 8, !dbg !4159
  %cmp20 = icmp eq i32 %17, 3, !dbg !4160
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !4158

cond.true:                                        ; preds = %if.end19
  %18 = load ptr, ptr %policy.addr, align 8, !dbg !4161
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %18, i32 0, i32 4, !dbg !4161
  %19 = load i32, ptr %cpu, align 4, !dbg !4161
  %call22 = call ptr @get_cpu_mask(i32 noundef %19) #21, !dbg !4161
  br label %cond.end, !dbg !4158

cond.false:                                       ; preds = %if.end19
  %20 = load ptr, ptr %policy.addr, align 8, !dbg !4162
  %cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %20, i32 0, i32 0, !dbg !4163
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %cpus, i64 0, i64 0, !dbg !4162
  br label %cond.end, !dbg !4158

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call22, %cond.true ], [ %arraydecay, %cond.false ], !dbg !4158
  store ptr %cond, ptr %mask, align 8, !dbg !4164
  %21 = load ptr, ptr %data, align 8, !dbg !4165
  %22 = load ptr, ptr %mask, align 8, !dbg !4166
  %23 = load ptr, ptr %perf, align 8, !dbg !4167
  %states = getelementptr inbounds %struct.acpi_processor_performance, ptr %23, i32 0, i32 5, !dbg !4168
  %24 = load ptr, ptr %states, align 8, !dbg !4168
  %25 = load i32, ptr %next_perf_state, align 4, !dbg !4169
  %idxprom23 = zext i32 %25 to i64, !dbg !4167
  %arrayidx24 = getelementptr %struct.acpi_processor_px, ptr %24, i64 %idxprom23, !dbg !4167
  %control = getelementptr inbounds %struct.acpi_processor_px, ptr %arrayidx24, i32 0, i32 4, !dbg !4170
  %26 = load i64, ptr %control, align 8, !dbg !4170
  %conv25 = trunc i64 %26 to i32, !dbg !4167
  call void @drv_write(ptr noundef %21, ptr noundef %22, i32 noundef %conv25) #21, !dbg !4171
  %27 = load i32, ptr @acpi_pstate_strict, align 4, !dbg !4172
  %tobool26 = icmp ne i32 %27, 0, !dbg !4172
  br i1 %tobool26, label %if.then27, label %if.end36, !dbg !4174

if.then27:                                        ; preds = %cond.end
  %28 = load ptr, ptr %policy.addr, align 8, !dbg !4175
  %29 = load ptr, ptr %mask, align 8, !dbg !4178
  %30 = load ptr, ptr %policy.addr, align 8, !dbg !4179
  %freq_table28 = getelementptr inbounds %struct.cpufreq_policy, ptr %30, i32 0, i32 20, !dbg !4180
  %31 = load ptr, ptr %freq_table28, align 8, !dbg !4180
  %32 = load i32, ptr %index.addr, align 4, !dbg !4181
  %idxprom29 = zext i32 %32 to i64, !dbg !4179
  %arrayidx30 = getelementptr %struct.cpufreq_frequency_table, ptr %31, i64 %idxprom29, !dbg !4179
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx30, i32 0, i32 2, !dbg !4182
  %33 = load i32, ptr %frequency, align 4, !dbg !4182
  %call31 = call i32 @check_freqs(ptr noundef %28, ptr noundef %29, i32 noundef %33) #21, !dbg !4183
  %tobool32 = icmp ne i32 %call31, 0, !dbg !4183
  br i1 %tobool32, label %if.end35, label %if.then33, !dbg !4184

if.then33:                                        ; preds = %if.then27
  store i32 0, ptr %tmp34, align 4, !dbg !4185
  %34 = load i32, ptr %tmp34, align 4, !dbg !4189
  store i32 -11, ptr %result, align 4, !dbg !4190
  br label %if.end35, !dbg !4191

if.end35:                                         ; preds = %if.then33, %if.then27
  br label %if.end36, !dbg !4192

if.end36:                                         ; preds = %if.end35, %cond.end
  %35 = load i32, ptr %result, align 4, !dbg !4193
  %tobool37 = icmp ne i32 %35, 0, !dbg !4193
  br i1 %tobool37, label %if.end40, label %if.then38, !dbg !4195

if.then38:                                        ; preds = %if.end36
  %36 = load i32, ptr %next_perf_state, align 4, !dbg !4196
  %37 = load ptr, ptr %perf, align 8, !dbg !4197
  %state39 = getelementptr inbounds %struct.acpi_processor_performance, ptr %37, i32 0, i32 0, !dbg !4198
  store i32 %36, ptr %state39, align 8, !dbg !4199
  br label %if.end40, !dbg !4197

if.end40:                                         ; preds = %if.then38, %if.end36
  %38 = load i32, ptr %result, align 4, !dbg !4200
  store i32 %38, ptr %retval, align 4, !dbg !4201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4201

cleanup:                                          ; preds = %if.end40, %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #23, !dbg !4202
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_perf_state) #23, !dbg !4202
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #23, !dbg !4202
  call void @llvm.lifetime.end.p0(i64 8, ptr %perf) #23, !dbg !4202
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #23, !dbg !4202
  %39 = load i32, ptr %retval, align 4, !dbg !4202
  ret i32 %39, !dbg !4202
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_cpufreq_fast_switch(ptr noundef %policy, i32 noundef %target_freq) #2 align 16 !dbg !4203 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %target_freq.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  %perf = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %next_perf_state = alloca i32, align 4
  %next_freq = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4205, metadata !DIExpression()), !dbg !4213
  store i32 %target_freq, ptr %target_freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_freq.addr, metadata !4206, metadata !DIExpression()), !dbg !4214
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #23, !dbg !4215
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4207, metadata !DIExpression()), !dbg !4216
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !4217
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 40, !dbg !4218
  %1 = load ptr, ptr %driver_data, align 8, !dbg !4218
  store ptr %1, ptr %data, align 8, !dbg !4216
  call void @llvm.lifetime.start.p0(i64 8, ptr %perf) #23, !dbg !4219
  call void @llvm.dbg.declare(metadata ptr %perf, metadata !4208, metadata !DIExpression()), !dbg !4220
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #23, !dbg !4221
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4209, metadata !DIExpression()), !dbg !4222
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_perf_state) #23, !dbg !4223
  call void @llvm.dbg.declare(metadata ptr %next_perf_state, metadata !4210, metadata !DIExpression()), !dbg !4224
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_freq) #23, !dbg !4223
  call void @llvm.dbg.declare(metadata ptr %next_freq, metadata !4211, metadata !DIExpression()), !dbg !4225
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #23, !dbg !4223
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4212, metadata !DIExpression()), !dbg !4226
  %2 = load ptr, ptr %policy.addr, align 8, !dbg !4227
  %cached_target_freq = getelementptr inbounds %struct.cpufreq_policy, ptr %2, i32 0, i32 33, !dbg !4229
  %3 = load i32, ptr %cached_target_freq, align 4, !dbg !4229
  %4 = load i32, ptr %target_freq.addr, align 4, !dbg !4230
  %cmp = icmp eq i32 %3, %4, !dbg !4231
  br i1 %cmp, label %if.then, label %if.else, !dbg !4232

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %policy.addr, align 8, !dbg !4233
  %cached_resolved_idx = getelementptr inbounds %struct.cpufreq_policy, ptr %5, i32 0, i32 34, !dbg !4234
  %6 = load i32, ptr %cached_resolved_idx, align 8, !dbg !4234
  store i32 %6, ptr %index, align 4, !dbg !4235
  br label %if.end, !dbg !4236

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %policy.addr, align 8, !dbg !4237
  %8 = load i32, ptr %target_freq.addr, align 4, !dbg !4238
  %call = call i32 @cpufreq_table_find_index_dl(ptr noundef %7, i32 noundef %8, i1 noundef zeroext false) #21, !dbg !4239
  store i32 %call, ptr %index, align 4, !dbg !4240
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr %policy.addr, align 8, !dbg !4241
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %9, i32 0, i32 20, !dbg !4242
  %10 = load ptr, ptr %freq_table, align 8, !dbg !4242
  %11 = load i32, ptr %index, align 4, !dbg !4243
  %idxprom = zext i32 %11 to i64, !dbg !4241
  %arrayidx = getelementptr %struct.cpufreq_frequency_table, ptr %10, i64 %idxprom, !dbg !4241
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !4244
  %12 = load ptr, ptr %entry1, align 8, !dbg !4245
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %12, i32 0, i32 2, !dbg !4246
  %13 = load i32, ptr %frequency, align 4, !dbg !4246
  store i32 %13, ptr %next_freq, align 4, !dbg !4247
  %14 = load ptr, ptr %entry1, align 8, !dbg !4248
  %driver_data2 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %14, i32 0, i32 1, !dbg !4249
  %15 = load i32, ptr %driver_data2, align 4, !dbg !4249
  store i32 %15, ptr %next_perf_state, align 4, !dbg !4250
  %16 = load ptr, ptr %data, align 8, !dbg !4251
  %call3 = call ptr @to_perf_data(ptr noundef %16) #21, !dbg !4252
  store ptr %call3, ptr %perf, align 8, !dbg !4253
  %17 = load ptr, ptr %perf, align 8, !dbg !4254
  %state = getelementptr inbounds %struct.acpi_processor_performance, ptr %17, i32 0, i32 0, !dbg !4256
  %18 = load i32, ptr %state, align 8, !dbg !4256
  %19 = load i32, ptr %next_perf_state, align 4, !dbg !4257
  %cmp4 = icmp eq i32 %18, %19, !dbg !4258
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !4259

if.then5:                                         ; preds = %if.end
  %20 = load ptr, ptr %data, align 8, !dbg !4260
  %resume = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %20, i32 0, i32 0, !dbg !4260
  %21 = load i32, ptr %resume, align 8, !dbg !4260
  %tobool = icmp ne i32 %21, 0, !dbg !4260
  %lnot = xor i1 %tobool, true, !dbg !4260
  %lnot6 = xor i1 %lnot, true, !dbg !4260
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4260
  %conv = sext i32 %lnot.ext to i64, !dbg !4260
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4260
  %tobool7 = icmp ne i64 %expval, 0, !dbg !4260
  br i1 %tobool7, label %if.then8, label %if.else10, !dbg !4263

if.then8:                                         ; preds = %if.then5
  %22 = load ptr, ptr %data, align 8, !dbg !4264
  %resume9 = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %22, i32 0, i32 0, !dbg !4265
  store i32 0, ptr %resume9, align 8, !dbg !4266
  br label %if.end11, !dbg !4264

if.else10:                                        ; preds = %if.then5
  %23 = load i32, ptr %next_freq, align 4, !dbg !4267
  store i32 %23, ptr %retval, align 4, !dbg !4268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4268

if.end11:                                         ; preds = %if.then8
  br label %if.end12, !dbg !4269

if.end12:                                         ; preds = %if.end11, %if.end
  %24 = load ptr, ptr %data, align 8, !dbg !4270
  %cpu_freq_write = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %24, i32 0, i32 4, !dbg !4271
  %25 = load ptr, ptr %cpu_freq_write, align 8, !dbg !4271
  %26 = load ptr, ptr %perf, align 8, !dbg !4272
  %control_register = getelementptr inbounds %struct.acpi_processor_performance, ptr %26, i32 0, i32 2, !dbg !4273
  %27 = load ptr, ptr %perf, align 8, !dbg !4274
  %states = getelementptr inbounds %struct.acpi_processor_performance, ptr %27, i32 0, i32 5, !dbg !4275
  %28 = load ptr, ptr %states, align 8, !dbg !4275
  %29 = load i32, ptr %next_perf_state, align 4, !dbg !4276
  %idxprom13 = zext i32 %29 to i64, !dbg !4274
  %arrayidx14 = getelementptr %struct.acpi_processor_px, ptr %28, i64 %idxprom13, !dbg !4274
  %control = getelementptr inbounds %struct.acpi_processor_px, ptr %arrayidx14, i32 0, i32 4, !dbg !4277
  %30 = load i64, ptr %control, align 8, !dbg !4277
  %conv15 = trunc i64 %30 to i32, !dbg !4274
  call void %25(ptr noundef %control_register, i32 noundef %conv15) #21, !dbg !4270
  %31 = load i32, ptr %next_perf_state, align 4, !dbg !4278
  %32 = load ptr, ptr %perf, align 8, !dbg !4279
  %state16 = getelementptr inbounds %struct.acpi_processor_performance, ptr %32, i32 0, i32 0, !dbg !4280
  store i32 %31, ptr %state16, align 8, !dbg !4281
  %33 = load i32, ptr %next_freq, align 4, !dbg !4282
  store i32 %33, ptr %retval, align 4, !dbg !4283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4283

cleanup:                                          ; preds = %if.end12, %if.else10
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #23, !dbg !4284
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_freq) #23, !dbg !4284
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_perf_state) #23, !dbg !4284
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #23, !dbg !4284
  call void @llvm.lifetime.end.p0(i64 8, ptr %perf) #23, !dbg !4284
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #23, !dbg !4284
  %34 = load i32, ptr %retval, align 4, !dbg !4284
  ret i32 %34, !dbg !4284
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_processor_get_bios_limit(i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_cpufreq_cpu_exit(ptr noundef %policy) #2 align 16 !dbg !4285 {
entry:
  %policy.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4287, metadata !DIExpression()), !dbg !4289
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #23, !dbg !4290
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4288, metadata !DIExpression()), !dbg !4291
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !4292
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 40, !dbg !4293
  %1 = load ptr, ptr %driver_data, align 8, !dbg !4293
  store ptr %1, ptr %data, align 8, !dbg !4291
  store i32 0, ptr %tmp, align 4, !dbg !4294
  %2 = load i32, ptr %tmp, align 4, !dbg !4297
  %3 = load ptr, ptr %policy.addr, align 8, !dbg !4298
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %3, i32 0, i32 4, !dbg !4299
  %4 = load i32, ptr %cpu, align 4, !dbg !4299
  %call = call i32 @cpufreq_boost_down_prep(i32 noundef %4) #21, !dbg !4300
  %5 = load ptr, ptr %policy.addr, align 8, !dbg !4301
  %fast_switch_possible = getelementptr inbounds %struct.cpufreq_policy, ptr %5, i32 0, i32 26, !dbg !4302
  store i8 0, ptr %fast_switch_possible, align 8, !dbg !4303
  %6 = load ptr, ptr %policy.addr, align 8, !dbg !4304
  %driver_data1 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 40, !dbg !4305
  store ptr null, ptr %driver_data1, align 8, !dbg !4306
  %7 = load ptr, ptr %data, align 8, !dbg !4307
  %acpi_perf_cpu = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %7, i32 0, i32 2, !dbg !4308
  %8 = load i32, ptr %acpi_perf_cpu, align 8, !dbg !4308
  call void @acpi_processor_unregister_performance(i32 noundef %8) #21, !dbg !4309
  %9 = load ptr, ptr %data, align 8, !dbg !4310
  %freqdomain_cpus = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %9, i32 0, i32 3, !dbg !4311
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %freqdomain_cpus, i64 0, i64 0, !dbg !4310
  call void @free_cpumask_var(ptr noundef %arraydecay) #21, !dbg !4312
  %10 = load ptr, ptr %policy.addr, align 8, !dbg !4313
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %10, i32 0, i32 20, !dbg !4314
  %11 = load ptr, ptr %freq_table, align 8, !dbg !4314
  call void @kfree(ptr noundef %11) #21, !dbg !4315
  %12 = load ptr, ptr %data, align 8, !dbg !4316
  call void @kfree(ptr noundef %12) #21, !dbg !4317
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #23, !dbg !4318
  ret i32 0, !dbg !4319
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_cpufreq_resume(ptr noundef %policy) #2 align 16 !dbg !4320 {
entry:
  %policy.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4322, metadata !DIExpression()), !dbg !4324
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #23, !dbg !4325
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4323, metadata !DIExpression()), !dbg !4326
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !4327
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 40, !dbg !4328
  %1 = load ptr, ptr %driver_data, align 8, !dbg !4328
  store ptr %1, ptr %data, align 8, !dbg !4326
  store i32 0, ptr %tmp, align 4, !dbg !4329
  %2 = load i32, ptr %tmp, align 4, !dbg !4332
  %3 = load ptr, ptr %data, align 8, !dbg !4333
  %resume = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %3, i32 0, i32 0, !dbg !4334
  store i32 1, ptr %resume, align 8, !dbg !4335
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #23, !dbg !4336
  ret i32 0, !dbg !4337
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_cpufreq_blacklist(ptr noundef %c) #2 align 16 !dbg !4338 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !4342, metadata !DIExpression()), !dbg !4343
  %0 = load ptr, ptr %c.addr, align 8, !dbg !4344
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 0, !dbg !4346
  %x86_vendor = getelementptr inbounds %struct.anon.15, ptr %1, i32 0, i32 2, !dbg !4346
  %2 = load i8, ptr %x86_vendor, align 2, !dbg !4346
  %conv = zext i8 %2 to i32, !dbg !4344
  %cmp = icmp eq i32 %conv, 0, !dbg !4347
  br i1 %cmp, label %if.then, label %if.end13, !dbg !4348

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %c.addr, align 8, !dbg !4349
  %4 = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 0, !dbg !4352
  %x86 = getelementptr inbounds %struct.anon.15, ptr %4, i32 0, i32 1, !dbg !4352
  %5 = load i8, ptr %x86, align 1, !dbg !4352
  %conv2 = zext i8 %5 to i32, !dbg !4349
  %cmp3 = icmp eq i32 %conv2, 15, !dbg !4353
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !4354

land.lhs.true:                                    ; preds = %if.then
  %6 = load ptr, ptr %c.addr, align 8, !dbg !4355
  %7 = getelementptr inbounds %struct.cpuinfo_x86, ptr %6, i32 0, i32 0, !dbg !4356
  %x86_model = getelementptr inbounds %struct.anon.15, ptr %7, i32 0, i32 0, !dbg !4356
  %8 = load i8, ptr %x86_model, align 8, !dbg !4356
  %conv5 = zext i8 %8 to i32, !dbg !4355
  %cmp6 = icmp eq i32 %conv5, 6, !dbg !4357
  br i1 %cmp6, label %land.lhs.true8, label %if.end, !dbg !4358

land.lhs.true8:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %c.addr, align 8, !dbg !4359
  %x86_stepping = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 1, !dbg !4360
  %10 = load i8, ptr %x86_stepping, align 4, !dbg !4360
  %conv9 = zext i8 %10 to i32, !dbg !4359
  %cmp10 = icmp eq i32 %conv9, 8, !dbg !4361
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !4362

if.then12:                                        ; preds = %land.lhs.true8
  br label %do.body, !dbg !4363

do.body:                                          ; preds = %if.then12
  br label %do.end, !dbg !4366

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #22, !dbg !4363
  store i32 %call, ptr %tmp, align 4, !dbg !4366
  %11 = load i32, ptr %tmp, align 4, !dbg !4363
  store i32 -19, ptr %retval, align 4, !dbg !4368
  br label %return, !dbg !4368

if.end:                                           ; preds = %land.lhs.true8, %land.lhs.true, %if.then
  br label %if.end13, !dbg !4369

if.end13:                                         ; preds = %if.end, %entry
  store i32 0, ptr %retval, align 4, !dbg !4370
  br label %return, !dbg !4370

return:                                           ; preds = %if.end13, %do.end
  %12 = load i32, ptr %retval, align 4, !dbg !4371
  ret i32 %12, !dbg !4371
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !4372 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4376, metadata !DIExpression()), !dbg !4378
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4377, metadata !DIExpression()), !dbg !4379
  %0 = load i64, ptr %size.addr, align 8, !dbg !4380
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4381
  %or = or i32 %1, 256, !dbg !4382
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #24, !dbg !4383
  ret ptr %call, !dbg !4384
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @zalloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #6 align 16 !dbg !4385 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4389, metadata !DIExpression()), !dbg !4391
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4390, metadata !DIExpression()), !dbg !4392
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !4393
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %0, i64 0, i64 0, !dbg !4394
  call void @cpumask_clear(ptr noundef %arraydecay) #21, !dbg !4395
  ret i1 true, !dbg !4396
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !4397 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4405, metadata !DIExpression()), !dbg !4407
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4406, metadata !DIExpression()), !dbg !4408
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4409
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4410
  br i1 %1, label %cond.true, label %cond.false, !dbg !4410

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4411
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4412
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #21, !dbg !4413
  %conv = zext i1 %call to i32, !dbg !4413
  br label %cond.end, !dbg !4410

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4414
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4415
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #21, !dbg !4416
  %conv2 = zext i1 %call1 to i32, !dbg !4416
  br label %cond.end, !dbg !4410

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4410
  %tobool = icmp ne i32 %cond, 0, !dbg !4410
  ret i1 %tobool, !dbg !4417
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4418 dso_local i32 @acpi_processor_register_performance(ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_copy(ptr noundef %dstp, ptr noundef %srcp) #6 align 16 !dbg !4421 {
entry:
  %dstp.addr = alloca ptr, align 8
  %srcp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !4425, metadata !DIExpression()), !dbg !4427
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !4426, metadata !DIExpression()), !dbg !4428
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !4429
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !4429
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4429
  %1 = load ptr, ptr %srcp.addr, align 8, !dbg !4430
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !4430
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !4430
  call void @bitmap_copy(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #21, !dbg !4431
  ret void, !dbg !4432
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4433 dso_local i32 @dmi_check_system(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @policy_is_shared(ptr noundef %policy) #6 align 16 !dbg !4435 {
entry:
  %policy.addr = alloca ptr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4439, metadata !DIExpression()), !dbg !4440
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !4441
  %cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 0, !dbg !4442
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %cpus, i64 0, i64 0, !dbg !4441
  %call = call i32 @cpumask_weight(ptr noundef %arraydecay) #21, !dbg !4443
  %cmp = icmp ugt i32 %call, 1, !dbg !4444
  ret i1 %cmp, !dbg !4445
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @check_amd_hwpstate_cpu(i32 noundef %cpuid) #2 align 16 !dbg !4446 {
entry:
  %cpuid.addr = alloca i32, align 4
  %cpu = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpuid, ptr %cpuid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpuid.addr, metadata !4450, metadata !DIExpression()), !dbg !4457
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu) #23, !dbg !4458
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4451, metadata !DIExpression()), !dbg !4459
  br label %do.body, !dbg !4460

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !4461
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4452, metadata !DIExpression()), !dbg !4461
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4461
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4461
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !4460
  br label %do.cond, !dbg !4461

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4461

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #23, !dbg !4462
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4455, metadata !DIExpression()), !dbg !4462
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !4462
  %1 = load i64, ptr %__ptr, align 8, !dbg !4462
  %2 = load i32, ptr %cpuid.addr, align 4, !dbg !4462
  %idxprom = zext i32 %2 to i64, !dbg !4462
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4462
  %3 = load i64, ptr %arrayidx, align 8, !dbg !4462
  %add = add i64 %1, %3, !dbg !4462
  %4 = inttoptr i64 %add to ptr, !dbg !4462
  store ptr %4, ptr %tmp1, align 8, !dbg !4462
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #23, !dbg !4460
  %5 = load ptr, ptr %tmp1, align 8, !dbg !4462
  store ptr %5, ptr %tmp, align 8, !dbg !4461
  %6 = load ptr, ptr %tmp, align 8, !dbg !4460
  store ptr %6, ptr %cpu, align 8, !dbg !4459
  %7 = load ptr, ptr %cpu, align 8, !dbg !4463
  %8 = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 10, !dbg !4463
  %arraydecay = getelementptr inbounds [24 x i32], ptr %8, i64 0, i64 0, !dbg !4463
  %call = call zeroext i1 @arch_test_bit(i64 noundef 232, ptr noundef %arraydecay) #21, !dbg !4463
  %conv = zext i1 %call to i32, !dbg !4463
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu) #23, !dbg !4464
  ret i32 %conv, !dbg !4465
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear(ptr noundef %dstp) #6 align 16 !dbg !4466 {
entry:
  %dstp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !4470, metadata !DIExpression()), !dbg !4471
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !4472
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !4472
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4472
  call void @bitmap_zero(ptr noundef %arraydecay, i32 noundef 64) #21, !dbg !4473
  ret void, !dbg !4474
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_set_cpu(i32 noundef %cpu, ptr noundef %dstp) #7 align 16 !dbg !4475 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4479, metadata !DIExpression()), !dbg !4481
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !4480, metadata !DIExpression()), !dbg !4482
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4483
  %call = call i32 @cpumask_check(i32 noundef %0) #21, !dbg !4484
  %conv = zext i32 %call to i64, !dbg !4484
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !4485
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !4485
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4485
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #21, !dbg !4486
  ret void, !dbg !4487
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4488 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_freq_read_io(ptr noundef %reg) #2 align 16 !dbg !4492 {
entry:
  %reg.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !4494, metadata !DIExpression()), !dbg !4496
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #23, !dbg !4497
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4495, metadata !DIExpression()), !dbg !4498
  %0 = load ptr, ptr %reg.addr, align 8, !dbg !4499
  %address = getelementptr inbounds %struct.acpi_pct_register, ptr %0, i32 0, i32 6, !dbg !4500
  %1 = load i64, ptr %address, align 1, !dbg !4500
  %2 = load ptr, ptr %reg.addr, align 8, !dbg !4501
  %bit_width = getelementptr inbounds %struct.acpi_pct_register, ptr %2, i32 0, i32 3, !dbg !4502
  %3 = load i8, ptr %bit_width, align 1, !dbg !4502
  %conv = zext i8 %3 to i32, !dbg !4501
  %call = call i32 @acpi_os_read_port(i64 noundef %1, ptr noundef %val, i32 noundef %conv) #21, !dbg !4503
  %4 = load i32, ptr %val, align 4, !dbg !4504
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #23, !dbg !4505
  ret i32 %4, !dbg !4506
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_freq_write_io(ptr noundef %reg, i32 noundef %val) #2 align 16 !dbg !4507 {
entry:
  %reg.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !4509, metadata !DIExpression()), !dbg !4511
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4510, metadata !DIExpression()), !dbg !4512
  %0 = load ptr, ptr %reg.addr, align 8, !dbg !4513
  %address = getelementptr inbounds %struct.acpi_pct_register, ptr %0, i32 0, i32 6, !dbg !4514
  %1 = load i64, ptr %address, align 1, !dbg !4514
  %2 = load i32, ptr %val.addr, align 4, !dbg !4515
  %3 = load ptr, ptr %reg.addr, align 8, !dbg !4516
  %bit_width = getelementptr inbounds %struct.acpi_pct_register, ptr %3, i32 0, i32 3, !dbg !4517
  %4 = load i8, ptr %bit_width, align 1, !dbg !4517
  %conv = zext i8 %4 to i32, !dbg !4516
  %call = call i32 @acpi_os_write_port(i64 noundef %1, i32 noundef %2, i32 noundef %conv) #21, !dbg !4518
  ret void, !dbg !4519
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @check_est_cpu(i32 noundef %cpuid) #2 align 16 !dbg !4520 {
entry:
  %cpuid.addr = alloca i32, align 4
  %cpu = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpuid, ptr %cpuid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpuid.addr, metadata !4522, metadata !DIExpression()), !dbg !4529
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu) #23, !dbg !4530
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4523, metadata !DIExpression()), !dbg !4531
  br label %do.body, !dbg !4532

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !4533
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4524, metadata !DIExpression()), !dbg !4533
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4533
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4533
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !4532
  br label %do.cond, !dbg !4533

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4533

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #23, !dbg !4534
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4527, metadata !DIExpression()), !dbg !4534
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !4534
  %1 = load i64, ptr %__ptr, align 8, !dbg !4534
  %2 = load i32, ptr %cpuid.addr, align 4, !dbg !4534
  %idxprom = zext i32 %2 to i64, !dbg !4534
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4534
  %3 = load i64, ptr %arrayidx, align 8, !dbg !4534
  %add = add i64 %1, %3, !dbg !4534
  %4 = inttoptr i64 %add to ptr, !dbg !4534
  store ptr %4, ptr %tmp1, align 8, !dbg !4534
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #23, !dbg !4532
  %5 = load ptr, ptr %tmp1, align 8, !dbg !4534
  store ptr %5, ptr %tmp, align 8, !dbg !4533
  %6 = load ptr, ptr %tmp, align 8, !dbg !4532
  store ptr %6, ptr %cpu, align 8, !dbg !4531
  %7 = load ptr, ptr %cpu, align 8, !dbg !4535
  %8 = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 10, !dbg !4535
  %arraydecay = getelementptr inbounds [24 x i32], ptr %8, i64 0, i64 0, !dbg !4535
  %call = call zeroext i1 @arch_test_bit(i64 noundef 135, ptr noundef %arraydecay) #21, !dbg !4535
  %conv = zext i1 %call to i32, !dbg !4535
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu) #23, !dbg !4536
  ret i32 %conv, !dbg !4537
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_freq_read_intel(ptr noundef %not_used) #2 align 16 !dbg !4538 {
entry:
  %not_used.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %dummy = alloca i32, align 4
  %__val = alloca i64, align 8
  store ptr %not_used, ptr %not_used.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %not_used.addr, metadata !4540, metadata !DIExpression()), !dbg !4545
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #23, !dbg !4546
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4541, metadata !DIExpression()), !dbg !4547
  call void @llvm.lifetime.start.p0(i64 4, ptr %dummy) #23, !dbg !4546
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !4542, metadata !DIExpression()), !dbg !4548
  br label %do.body, !dbg !4549

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #23, !dbg !4550
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !4543, metadata !DIExpression()), !dbg !4550
  %call = call i64 @native_read_msr(i32 noundef 409) #21, !dbg !4550
  store i64 %call, ptr %__val, align 8, !dbg !4550
  %0 = load i64, ptr %__val, align 8, !dbg !4550
  %conv = trunc i64 %0 to i32, !dbg !4550
  store i32 %conv, ptr %val, align 4, !dbg !4550
  %1 = load i64, ptr %__val, align 8, !dbg !4550
  %shr = lshr i64 %1, 32, !dbg !4550
  %conv1 = trunc i64 %shr to i32, !dbg !4550
  store i32 %conv1, ptr %dummy, align 4, !dbg !4550
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #23, !dbg !4549
  br label %do.cond, !dbg !4550

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4550

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %val, align 4, !dbg !4551
  call void @llvm.lifetime.end.p0(i64 4, ptr %dummy) #23, !dbg !4552
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #23, !dbg !4552
  ret i32 %2, !dbg !4553
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_freq_write_intel(ptr noundef %not_used, i32 noundef %val) #2 align 16 !dbg !4554 {
entry:
  %not_used.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %__val = alloca i64, align 8
  store ptr %not_used, ptr %not_used.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %not_used.addr, metadata !4556, metadata !DIExpression()), !dbg !4562
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4557, metadata !DIExpression()), !dbg !4563
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #23, !dbg !4564
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !4558, metadata !DIExpression()), !dbg !4565
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #23, !dbg !4564
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !4559, metadata !DIExpression()), !dbg !4566
  br label %do.body, !dbg !4567

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #23, !dbg !4568
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !4560, metadata !DIExpression()), !dbg !4568
  %call = call i64 @native_read_msr(i32 noundef 409) #21, !dbg !4568
  store i64 %call, ptr %__val, align 8, !dbg !4568
  %0 = load i64, ptr %__val, align 8, !dbg !4568
  %conv = trunc i64 %0 to i32, !dbg !4568
  store i32 %conv, ptr %lo, align 4, !dbg !4568
  %1 = load i64, ptr %__val, align 8, !dbg !4568
  %shr = lshr i64 %1, 32, !dbg !4568
  %conv1 = trunc i64 %shr to i32, !dbg !4568
  store i32 %conv1, ptr %hi, align 4, !dbg !4568
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #23, !dbg !4567
  br label %do.cond, !dbg !4568

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4568

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %lo, align 4, !dbg !4569
  %and = and i32 %2, -65536, !dbg !4570
  %3 = load i32, ptr %val.addr, align 4, !dbg !4571
  %and2 = and i32 %3, 65535, !dbg !4572
  %or = or i32 %and, %and2, !dbg !4573
  store i32 %or, ptr %lo, align 4, !dbg !4574
  %4 = load i32, ptr %lo, align 4, !dbg !4575
  %5 = load i32, ptr %hi, align 4, !dbg !4576
  call void @wrmsr(i32 noundef 409, i32 noundef %4, i32 noundef %5) #21, !dbg !4577
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #23, !dbg !4578
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #23, !dbg !4578
  ret void, !dbg !4578
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_freq_read_amd(ptr noundef %not_used) #2 align 16 !dbg !4579 {
entry:
  %not_used.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %dummy = alloca i32, align 4
  %__val = alloca i64, align 8
  store ptr %not_used, ptr %not_used.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %not_used.addr, metadata !4581, metadata !DIExpression()), !dbg !4586
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #23, !dbg !4587
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4582, metadata !DIExpression()), !dbg !4588
  call void @llvm.lifetime.start.p0(i64 4, ptr %dummy) #23, !dbg !4587
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !4583, metadata !DIExpression()), !dbg !4589
  br label %do.body, !dbg !4590

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #23, !dbg !4591
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !4584, metadata !DIExpression()), !dbg !4591
  %call = call i64 @native_read_msr(i32 noundef -1073676190) #21, !dbg !4591
  store i64 %call, ptr %__val, align 8, !dbg !4591
  %0 = load i64, ptr %__val, align 8, !dbg !4591
  %conv = trunc i64 %0 to i32, !dbg !4591
  store i32 %conv, ptr %val, align 4, !dbg !4591
  %1 = load i64, ptr %__val, align 8, !dbg !4591
  %shr = lshr i64 %1, 32, !dbg !4591
  %conv1 = trunc i64 %shr to i32, !dbg !4591
  store i32 %conv1, ptr %dummy, align 4, !dbg !4591
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #23, !dbg !4590
  br label %do.cond, !dbg !4591

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4591

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %val, align 4, !dbg !4592
  call void @llvm.lifetime.end.p0(i64 4, ptr %dummy) #23, !dbg !4593
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #23, !dbg !4593
  ret i32 %2, !dbg !4594
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_freq_write_amd(ptr noundef %not_used, i32 noundef %val) #2 align 16 !dbg !4595 {
entry:
  %not_used.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %not_used, ptr %not_used.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %not_used.addr, metadata !4597, metadata !DIExpression()), !dbg !4599
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4598, metadata !DIExpression()), !dbg !4600
  %0 = load i32, ptr %val.addr, align 4, !dbg !4601
  call void @wrmsr(i32 noundef -1073676190, i32 noundef %0, i32 noundef 0) #21, !dbg !4602
  ret void, !dbg !4603
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !4604 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4608, metadata !DIExpression()), !dbg !4611
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4609, metadata !DIExpression()), !dbg !4612
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4610, metadata !DIExpression()), !dbg !4613
  %0 = load i64, ptr %n.addr, align 8, !dbg !4614
  %1 = load i64, ptr %size.addr, align 8, !dbg !4615
  %2 = load i32, ptr %flags.addr, align 4, !dbg !4616
  %or = or i32 %2, 256, !dbg !4617
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #25, !dbg !4618
  ret ptr %call, !dbg !4619
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_max_boost_ratio(i32 noundef %cpu, ptr noundef %nominal_freq) #2 align 16 !dbg !4620 {
entry:
  %retval = alloca i64, align 8
  %cpu.addr = alloca i32, align 4
  %nominal_freq.addr = alloca ptr, align 8
  %perf_caps = alloca %struct.cppc_perf_caps, align 4
  %highest_perf = alloca i64, align 8
  %nominal_perf = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp21 = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4624, metadata !DIExpression()), !dbg !4642
  store ptr %nominal_freq, ptr %nominal_freq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nominal_freq.addr, metadata !4625, metadata !DIExpression()), !dbg !4643
  call void @llvm.lifetime.start.p0(i64 36, ptr %perf_caps) #23, !dbg !4644
  call void @llvm.dbg.declare(metadata ptr %perf_caps, metadata !4626, metadata !DIExpression()), !dbg !4645
  call void @llvm.lifetime.start.p0(i64 8, ptr %highest_perf) #23, !dbg !4646
  call void @llvm.dbg.declare(metadata ptr %highest_perf, metadata !4639, metadata !DIExpression()), !dbg !4647
  call void @llvm.lifetime.start.p0(i64 8, ptr %nominal_perf) #23, !dbg !4646
  call void @llvm.dbg.declare(metadata ptr %nominal_perf, metadata !4640, metadata !DIExpression()), !dbg !4648
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #23, !dbg !4649
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4641, metadata !DIExpression()), !dbg !4650
  %0 = load i32, ptr @acpi_pstate_strict, align 4, !dbg !4651
  %tobool = icmp ne i32 %0, 0, !dbg !4651
  br i1 %tobool, label %if.then, label %if.end, !dbg !4653

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !4654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4654

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !4655
  %call = call i32 @cppc_get_perf_caps(i32 noundef %1, ptr noundef %perf_caps) #21, !dbg !4656
  store i32 %call, ptr %ret, align 4, !dbg !4657
  %2 = load i32, ptr %ret, align 4, !dbg !4658
  %tobool1 = icmp ne i32 %2, 0, !dbg !4658
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !4660

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %tmp, align 4, !dbg !4661
  %3 = load i32, ptr %tmp, align 4, !dbg !4665
  store i64 0, ptr %retval, align 8, !dbg !4666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4666

if.end3:                                          ; preds = %if.end
  %4 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !4667
  %conv = zext i8 %4 to i32, !dbg !4669
  %cmp = icmp eq i32 %conv, 2, !dbg !4670
  br i1 %cmp, label %if.then5, label %if.else, !dbg !4671

if.then5:                                         ; preds = %if.end3
  %call6 = call i32 @amd_get_highest_perf() #21, !dbg !4672
  %conv7 = zext i32 %call6 to i64, !dbg !4672
  store i64 %conv7, ptr %highest_perf, align 8, !dbg !4673
  br label %if.end10, !dbg !4674

if.else:                                          ; preds = %if.end3
  %highest_perf8 = getelementptr inbounds %struct.cppc_perf_caps, ptr %perf_caps, i32 0, i32 1, !dbg !4675
  %5 = load i32, ptr %highest_perf8, align 4, !dbg !4675
  %conv9 = zext i32 %5 to i64, !dbg !4676
  store i64 %conv9, ptr %highest_perf, align 8, !dbg !4677
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %nominal_perf11 = getelementptr inbounds %struct.cppc_perf_caps, ptr %perf_caps, i32 0, i32 2, !dbg !4678
  %6 = load i32, ptr %nominal_perf11, align 4, !dbg !4678
  %conv12 = zext i32 %6 to i64, !dbg !4679
  store i64 %conv12, ptr %nominal_perf, align 8, !dbg !4680
  %7 = load ptr, ptr %nominal_freq.addr, align 8, !dbg !4681
  %tobool13 = icmp ne ptr %7, null, !dbg !4681
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !4683

if.then14:                                        ; preds = %if.end10
  %nominal_freq15 = getelementptr inbounds %struct.cppc_perf_caps, ptr %perf_caps, i32 0, i32 6, !dbg !4684
  %8 = load i32, ptr %nominal_freq15, align 4, !dbg !4684
  %conv16 = zext i32 %8 to i64, !dbg !4685
  %9 = load ptr, ptr %nominal_freq.addr, align 8, !dbg !4686
  store i64 %conv16, ptr %9, align 8, !dbg !4687
  br label %if.end17, !dbg !4688

if.end17:                                         ; preds = %if.then14, %if.end10
  %10 = load i64, ptr %highest_perf, align 8, !dbg !4689
  %tobool18 = icmp ne i64 %10, 0, !dbg !4689
  br i1 %tobool18, label %lor.lhs.false, label %if.then20, !dbg !4691

lor.lhs.false:                                    ; preds = %if.end17
  %11 = load i64, ptr %nominal_perf, align 8, !dbg !4692
  %tobool19 = icmp ne i64 %11, 0, !dbg !4692
  br i1 %tobool19, label %if.end22, label %if.then20, !dbg !4693

if.then20:                                        ; preds = %lor.lhs.false, %if.end17
  store i32 0, ptr %tmp21, align 4, !dbg !4694
  %12 = load i32, ptr %tmp21, align 4, !dbg !4698
  store i64 0, ptr %retval, align 8, !dbg !4699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4699

if.end22:                                         ; preds = %lor.lhs.false
  %13 = load i64, ptr %highest_perf, align 8, !dbg !4700
  %14 = load i64, ptr %nominal_perf, align 8, !dbg !4702
  %cmp23 = icmp ult i64 %13, %14, !dbg !4703
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !4704

if.then25:                                        ; preds = %if.end22
  store i32 0, ptr %tmp26, align 4, !dbg !4705
  %15 = load i32, ptr %tmp26, align 4, !dbg !4709
  store i64 0, ptr %retval, align 8, !dbg !4710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4710

if.end27:                                         ; preds = %if.end22
  %16 = load i64, ptr %highest_perf, align 8, !dbg !4711
  %shl = shl i64 %16, 10, !dbg !4712
  %17 = load i64, ptr %nominal_perf, align 8, !dbg !4713
  %conv28 = trunc i64 %17 to i32, !dbg !4713
  %call29 = call i64 @div_u64(i64 noundef %shl, i32 noundef %conv28) #21, !dbg !4714
  store i64 %call29, ptr %retval, align 8, !dbg !4715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4715

cleanup:                                          ; preds = %if.end27, %if.then25, %if.then20, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #23, !dbg !4716
  call void @llvm.lifetime.end.p0(i64 8, ptr %nominal_perf) #23, !dbg !4716
  call void @llvm.lifetime.end.p0(i64 8, ptr %highest_perf) #23, !dbg !4716
  call void @llvm.lifetime.end.p0(i64 36, ptr %perf_caps) #23, !dbg !4716
  %18 = load i64, ptr %retval, align 8, !dbg !4716
  ret i64 %18, !dbg !4716
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4717 dso_local void @arch_set_max_freq_ratio(i1 noundef zeroext) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @acpi_cpufreq_guess_freq(ptr noundef %data, i32 noundef %cpu) #2 align 16 !dbg !4721 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %perf = alloca ptr, align 8
  %i = alloca i32, align 4
  %freq = alloca i64, align 8
  %freqn = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4725, metadata !DIExpression()), !dbg !4733
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4726, metadata !DIExpression()), !dbg !4734
  call void @llvm.lifetime.start.p0(i64 8, ptr %perf) #23, !dbg !4735
  call void @llvm.dbg.declare(metadata ptr %perf, metadata !4727, metadata !DIExpression()), !dbg !4736
  %0 = load ptr, ptr %data.addr, align 8, !dbg !4737
  %call = call ptr @to_perf_data(ptr noundef %0) #21, !dbg !4738
  store ptr %call, ptr %perf, align 8, !dbg !4739
  %1 = load i32, ptr @cpu_khz, align 4, !dbg !4740
  %tobool = icmp ne i32 %1, 0, !dbg !4740
  br i1 %tobool, label %if.then, label %if.else, !dbg !4741

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #23, !dbg !4742
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4728, metadata !DIExpression()), !dbg !4743
  call void @llvm.lifetime.start.p0(i64 8, ptr %freq) #23, !dbg !4744
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !4731, metadata !DIExpression()), !dbg !4745
  call void @llvm.lifetime.start.p0(i64 8, ptr %freqn) #23, !dbg !4746
  call void @llvm.dbg.declare(metadata ptr %freqn, metadata !4732, metadata !DIExpression()), !dbg !4747
  %2 = load ptr, ptr %perf, align 8, !dbg !4748
  %states = getelementptr inbounds %struct.acpi_processor_performance, ptr %2, i32 0, i32 5, !dbg !4749
  %3 = load ptr, ptr %states, align 8, !dbg !4749
  %arrayidx = getelementptr %struct.acpi_processor_px, ptr %3, i64 0, !dbg !4748
  %core_frequency = getelementptr inbounds %struct.acpi_processor_px, ptr %arrayidx, i32 0, i32 0, !dbg !4750
  %4 = load i64, ptr %core_frequency, align 8, !dbg !4750
  %mul = mul i64 %4, 1000, !dbg !4751
  store i64 %mul, ptr %freqn, align 8, !dbg !4747
  store i32 0, ptr %i, align 4, !dbg !4752
  br label %for.cond, !dbg !4754

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, ptr %i, align 4, !dbg !4755
  %6 = load ptr, ptr %perf, align 8, !dbg !4757
  %state_count = getelementptr inbounds %struct.acpi_processor_performance, ptr %6, i32 0, i32 4, !dbg !4758
  %7 = load i32, ptr %state_count, align 8, !dbg !4758
  %sub = sub i32 %7, 1, !dbg !4759
  %cmp = icmp ult i32 %5, %sub, !dbg !4760
  br i1 %cmp, label %for.body, label %for.end, !dbg !4761

for.body:                                         ; preds = %for.cond
  %8 = load i64, ptr %freqn, align 8, !dbg !4762
  store i64 %8, ptr %freq, align 8, !dbg !4764
  %9 = load ptr, ptr %perf, align 8, !dbg !4765
  %states1 = getelementptr inbounds %struct.acpi_processor_performance, ptr %9, i32 0, i32 5, !dbg !4766
  %10 = load ptr, ptr %states1, align 8, !dbg !4766
  %11 = load i32, ptr %i, align 4, !dbg !4767
  %add = add i32 %11, 1, !dbg !4768
  %idxprom = zext i32 %add to i64, !dbg !4765
  %arrayidx2 = getelementptr %struct.acpi_processor_px, ptr %10, i64 %idxprom, !dbg !4765
  %core_frequency3 = getelementptr inbounds %struct.acpi_processor_px, ptr %arrayidx2, i32 0, i32 0, !dbg !4769
  %12 = load i64, ptr %core_frequency3, align 8, !dbg !4769
  %mul4 = mul i64 %12, 1000, !dbg !4770
  store i64 %mul4, ptr %freqn, align 8, !dbg !4771
  %13 = load i32, ptr @cpu_khz, align 4, !dbg !4772
  %mul5 = mul i32 2, %13, !dbg !4774
  %conv = zext i32 %mul5 to i64, !dbg !4775
  %14 = load i64, ptr %freqn, align 8, !dbg !4776
  %15 = load i64, ptr %freq, align 8, !dbg !4777
  %add6 = add i64 %14, %15, !dbg !4778
  %cmp7 = icmp ugt i64 %conv, %add6, !dbg !4779
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !4780

if.then9:                                         ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !dbg !4781
  %17 = load ptr, ptr %perf, align 8, !dbg !4783
  %state = getelementptr inbounds %struct.acpi_processor_performance, ptr %17, i32 0, i32 0, !dbg !4784
  store i32 %16, ptr %state, align 8, !dbg !4785
  %18 = load i64, ptr %freq, align 8, !dbg !4786
  store i64 %18, ptr %retval, align 8, !dbg !4787
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4787

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4788

for.inc:                                          ; preds = %if.end
  %19 = load i32, ptr %i, align 4, !dbg !4789
  %inc = add i32 %19, 1, !dbg !4789
  store i32 %inc, ptr %i, align 4, !dbg !4789
  br label %for.cond, !dbg !4790, !llvm.loop !4791

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %perf, align 8, !dbg !4793
  %state_count10 = getelementptr inbounds %struct.acpi_processor_performance, ptr %20, i32 0, i32 4, !dbg !4794
  %21 = load i32, ptr %state_count10, align 8, !dbg !4794
  %sub11 = sub i32 %21, 1, !dbg !4795
  %22 = load ptr, ptr %perf, align 8, !dbg !4796
  %state12 = getelementptr inbounds %struct.acpi_processor_performance, ptr %22, i32 0, i32 0, !dbg !4797
  store i32 %sub11, ptr %state12, align 8, !dbg !4798
  %23 = load i64, ptr %freqn, align 8, !dbg !4799
  store i64 %23, ptr %retval, align 8, !dbg !4800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4800

cleanup:                                          ; preds = %for.end, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %freqn) #23, !dbg !4801
  call void @llvm.lifetime.end.p0(i64 8, ptr %freq) #23, !dbg !4801
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #23, !dbg !4801
  br label %cleanup20

if.else:                                          ; preds = %entry
  %24 = load ptr, ptr %perf, align 8, !dbg !4802
  %state15 = getelementptr inbounds %struct.acpi_processor_performance, ptr %24, i32 0, i32 0, !dbg !4804
  store i32 0, ptr %state15, align 8, !dbg !4805
  %25 = load ptr, ptr %perf, align 8, !dbg !4806
  %states16 = getelementptr inbounds %struct.acpi_processor_performance, ptr %25, i32 0, i32 5, !dbg !4807
  %26 = load ptr, ptr %states16, align 8, !dbg !4807
  %arrayidx17 = getelementptr %struct.acpi_processor_px, ptr %26, i64 0, !dbg !4806
  %core_frequency18 = getelementptr inbounds %struct.acpi_processor_px, ptr %arrayidx17, i32 0, i32 0, !dbg !4808
  %27 = load i64, ptr %core_frequency18, align 8, !dbg !4808
  %mul19 = mul i64 %27, 1000, !dbg !4809
  store i64 %mul19, ptr %retval, align 8, !dbg !4810
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !4810

cleanup20:                                        ; preds = %if.else, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %perf) #23, !dbg !4811
  %28 = load i64, ptr %retval, align 8, !dbg !4811
  ret i64 %28, !dbg !4811
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_cur_freq_on_cpu(i32 noundef %cpu) #2 align 16 !dbg !4812 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  %policy = alloca ptr, align 8
  %freq = alloca i32, align 4
  %cached_freq = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4814, metadata !DIExpression()), !dbg !4819
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #23, !dbg !4820
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4815, metadata !DIExpression()), !dbg !4821
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy) #23, !dbg !4822
  call void @llvm.dbg.declare(metadata ptr %policy, metadata !4816, metadata !DIExpression()), !dbg !4823
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #23, !dbg !4824
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !4817, metadata !DIExpression()), !dbg !4825
  call void @llvm.lifetime.start.p0(i64 4, ptr %cached_freq) #23, !dbg !4826
  call void @llvm.dbg.declare(metadata ptr %cached_freq, metadata !4818, metadata !DIExpression()), !dbg !4827
  store i32 0, ptr %tmp, align 4, !dbg !4828
  %0 = load i32, ptr %tmp, align 4, !dbg !4831
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !4832
  %call = call ptr @cpufreq_cpu_get_raw(i32 noundef %1) #21, !dbg !4833
  store ptr %call, ptr %policy, align 8, !dbg !4834
  %2 = load ptr, ptr %policy, align 8, !dbg !4835
  %tobool = icmp ne ptr %2, null, !dbg !4835
  %lnot = xor i1 %tobool, true, !dbg !4835
  %lnot1 = xor i1 %lnot, true, !dbg !4835
  %lnot2 = xor i1 %lnot1, true, !dbg !4835
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4835
  %conv = sext i32 %lnot.ext to i64, !dbg !4835
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4835
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4835
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4837

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4838

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %policy, align 8, !dbg !4839
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %3, i32 0, i32 40, !dbg !4840
  %4 = load ptr, ptr %driver_data, align 8, !dbg !4840
  store ptr %4, ptr %data, align 8, !dbg !4841
  %5 = load ptr, ptr %data, align 8, !dbg !4842
  %tobool4 = icmp ne ptr %5, null, !dbg !4842
  br i1 %tobool4, label %lor.rhs, label %lor.end, !dbg !4842

lor.rhs:                                          ; preds = %if.end
  %6 = load ptr, ptr %policy, align 8, !dbg !4842
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 20, !dbg !4842
  %7 = load ptr, ptr %freq_table, align 8, !dbg !4842
  %tobool5 = icmp ne ptr %7, null, !dbg !4842
  %lnot6 = xor i1 %tobool5, true, !dbg !4842
  br label %lor.end, !dbg !4842

lor.end:                                          ; preds = %lor.rhs, %if.end
  %8 = phi i1 [ true, %if.end ], [ %lnot6, %lor.rhs ]
  %lnot8 = xor i1 %8, true, !dbg !4842
  %lnot10 = xor i1 %lnot8, true, !dbg !4842
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !4842
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !4842
  %expval13 = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !4842
  %tobool14 = icmp ne i64 %expval13, 0, !dbg !4842
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4844

if.then15:                                        ; preds = %lor.end
  store i32 0, ptr %retval, align 4, !dbg !4845
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4845

if.end16:                                         ; preds = %lor.end
  %9 = load ptr, ptr %policy, align 8, !dbg !4846
  %freq_table17 = getelementptr inbounds %struct.cpufreq_policy, ptr %9, i32 0, i32 20, !dbg !4847
  %10 = load ptr, ptr %freq_table17, align 8, !dbg !4847
  %11 = load ptr, ptr %data, align 8, !dbg !4848
  %call18 = call ptr @to_perf_data(ptr noundef %11) #21, !dbg !4849
  %state = getelementptr inbounds %struct.acpi_processor_performance, ptr %call18, i32 0, i32 0, !dbg !4850
  %12 = load i32, ptr %state, align 8, !dbg !4850
  %idxprom = zext i32 %12 to i64, !dbg !4846
  %arrayidx = getelementptr %struct.cpufreq_frequency_table, ptr %10, i64 %idxprom, !dbg !4846
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx, i32 0, i32 2, !dbg !4851
  %13 = load i32, ptr %frequency, align 4, !dbg !4851
  store i32 %13, ptr %cached_freq, align 4, !dbg !4852
  %14 = load ptr, ptr %policy, align 8, !dbg !4853
  %15 = load i32, ptr %cpu.addr, align 4, !dbg !4854
  %call19 = call ptr @get_cpu_mask(i32 noundef %15) #21, !dbg !4854
  %16 = load ptr, ptr %data, align 8, !dbg !4855
  %call20 = call i32 @get_cur_val(ptr noundef %call19, ptr noundef %16) #21, !dbg !4856
  %call21 = call i32 @extract_freq(ptr noundef %14, i32 noundef %call20) #21, !dbg !4857
  store i32 %call21, ptr %freq, align 4, !dbg !4858
  %17 = load i32, ptr %freq, align 4, !dbg !4859
  %18 = load i32, ptr %cached_freq, align 4, !dbg !4861
  %cmp = icmp ne i32 %17, %18, !dbg !4862
  br i1 %cmp, label %if.then23, label %if.end24, !dbg !4863

if.then23:                                        ; preds = %if.end16
  %19 = load ptr, ptr %data, align 8, !dbg !4864
  %resume = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %19, i32 0, i32 0, !dbg !4866
  store i32 1, ptr %resume, align 8, !dbg !4867
  br label %if.end24, !dbg !4868

if.end24:                                         ; preds = %if.then23, %if.end16
  store i32 0, ptr %tmp25, align 4, !dbg !4869
  %20 = load i32, ptr %tmp25, align 4, !dbg !4872
  %21 = load i32, ptr %freq, align 4, !dbg !4873
  store i32 %21, ptr %retval, align 4, !dbg !4874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4874

cleanup:                                          ; preds = %if.end24, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cached_freq) #23, !dbg !4875
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #23, !dbg !4875
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy) #23, !dbg !4875
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #23, !dbg !4875
  %22 = load i32, ptr %retval, align 4, !dbg !4875
  ret i32 %22, !dbg !4875
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4876 dso_local i32 @acpi_processor_notify_smm(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @set_boost(ptr noundef %policy, i32 noundef %val) #2 align 16 !dbg !4877 {
entry:
  %policy.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !4879, metadata !DIExpression()), !dbg !4881
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4880, metadata !DIExpression()), !dbg !4882
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !4883
  %cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 0, !dbg !4884
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %cpus, i64 0, i64 0, !dbg !4883
  %1 = load i32, ptr %val.addr, align 4, !dbg !4885
  %conv = sext i32 %1 to i64, !dbg !4886
  %2 = inttoptr i64 %conv to ptr, !dbg !4887
  call void @on_each_cpu_mask(ptr noundef %arraydecay, ptr noundef @boost_set_msr_each, ptr noundef %2, i1 noundef zeroext true) #21, !dbg !4888
  store i32 0, ptr %tmp, align 4, !dbg !4889
  %3 = load i32, ptr %tmp, align 4, !dbg !4892
  ret i32 0, !dbg !4893
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4894 dso_local void @acpi_processor_unregister_performance(i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cpumask_var(ptr noundef %mask) #6 align 16 !dbg !4895 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4897, metadata !DIExpression()), !dbg !4898
  ret void, !dbg !4899
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4900 dso_local void @kfree(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !4903 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4905, metadata !DIExpression()), !dbg !4910
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4906, metadata !DIExpression()), !dbg !4911
  %0 = load i64, ptr %size.addr, align 8, !dbg !4912
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4913
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4914

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4915
  %tobool = icmp ne i64 %2, 0, !dbg !4915
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4916

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #23, !dbg !4917
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4907, metadata !DIExpression()), !dbg !4918
  %3 = load i64, ptr %size.addr, align 8, !dbg !4919
  %cmp = icmp ugt i64 %3, 8192, !dbg !4921
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4922

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4923
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4924
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #24, !dbg !4925
  store ptr %call, ptr %retval, align 8, !dbg !4926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4926

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4927
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #21, !dbg !4927
  store i32 %call2, ptr %index, align 4, !dbg !4928
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4929
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4930
  %9 = ptrtoint ptr %8 to i64, !dbg !4930
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #21, !dbg !4931
  %idxprom = zext i32 %call3 to i64, !dbg !4932
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4932
  %10 = load i32, ptr %index, align 4, !dbg !4933
  %idxprom4 = zext i32 %10 to i64, !dbg !4932
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4932
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4932
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4934
  %13 = load i64, ptr %size.addr, align 8, !dbg !4935
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #26, !dbg !4936
  store ptr %call6, ptr %retval, align 8, !dbg !4937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4937

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #23, !dbg !4938
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4939
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4940
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #24, !dbg !4941
  store ptr %call8, ptr %retval, align 8, !dbg !4942
  br label %return, !dbg !4942

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4943
  ret ptr %16, !dbg !4943
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4944 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !4945 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4949, metadata !DIExpression()), !dbg !4951
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4950, metadata !DIExpression()), !dbg !4952
  %0 = load i64, ptr %size.addr, align 8, !dbg !4953
  %tobool = icmp ne i64 %0, 0, !dbg !4953
  br i1 %tobool, label %if.end, label %if.then, !dbg !4955

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4956
  br label %return, !dbg !4956

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4957
  %cmp = icmp ule i64 %1, 8, !dbg !4959
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4960

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4961
  br label %return, !dbg !4961

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4962
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4964
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4965

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4966
  %cmp4 = icmp ule i64 %3, 96, !dbg !4967
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4968

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4969
  br label %return, !dbg !4969

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4970
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4972
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4973

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4974
  %cmp9 = icmp ule i64 %5, 192, !dbg !4975
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4976

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4977
  br label %return, !dbg !4977

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4978
  %cmp12 = icmp ule i64 %6, 8, !dbg !4980
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4981

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4982
  br label %return, !dbg !4982

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4983
  %cmp15 = icmp ule i64 %7, 16, !dbg !4985
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4986

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4987
  br label %return, !dbg !4987

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4988
  %cmp18 = icmp ule i64 %8, 32, !dbg !4990
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4991

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4992
  br label %return, !dbg !4992

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4993
  %cmp21 = icmp ule i64 %9, 64, !dbg !4995
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4996

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4997
  br label %return, !dbg !4997

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4998
  %cmp24 = icmp ule i64 %10, 128, !dbg !5000
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5001

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5002
  br label %return, !dbg !5002

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5003
  %cmp27 = icmp ule i64 %11, 256, !dbg !5005
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5006

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5007
  br label %return, !dbg !5007

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5008
  %cmp30 = icmp ule i64 %12, 512, !dbg !5010
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5011

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5012
  br label %return, !dbg !5012

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5013
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5015
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5016

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5017
  br label %return, !dbg !5017

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5018
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5020
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5021

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5022
  br label %return, !dbg !5022

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5023
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5025
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5026

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5027
  br label %return, !dbg !5027

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5028
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5030
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5031

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5032
  br label %return, !dbg !5032

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5033
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5035
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5036

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5037
  br label %return, !dbg !5037

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5038
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5040
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5041

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5042
  br label %return, !dbg !5042

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5043
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5045
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5046

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5047
  br label %return, !dbg !5047

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5048
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5050
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5051

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5052
  br label %return, !dbg !5052

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5053
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5055
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5056

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5057
  br label %return, !dbg !5057

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5058
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5060
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5061

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5062
  br label %return, !dbg !5062

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5063
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5065
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5066

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5067
  br label %return, !dbg !5067

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5068
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5070
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5071

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5072
  br label %return, !dbg !5072

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5073, !range !3719, !noundef !384
  %tobool69 = trunc i8 %25 to i1, !dbg !5073
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5075

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5076

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_222() #27, !dbg !5077, !srcloc !5080
  unreachable, !dbg !5077

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5081

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5082

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5083

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5085

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5083

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 480, i32 0, i64 12) #23, !dbg !5087, !srcloc !5089
  br label %do.end75, !dbg !5087

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5083

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5090
  br label %return, !dbg !5090

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5091
  ret i32 %26, !dbg !5091
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5092 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !5098 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5102, metadata !DIExpression()), !dbg !5104
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5103, metadata !DIExpression()), !dbg !5105
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5106
  %and = and i32 %0, 17, !dbg !5106
  %cmp = icmp eq i32 %and, 0, !dbg !5106
  %lnot = xor i1 %cmp, true, !dbg !5106
  %lnot1 = xor i1 %lnot, true, !dbg !5106
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5106
  %conv = sext i32 %lnot.ext to i64, !dbg !5106
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5106
  %tobool = icmp ne i64 %expval, 0, !dbg !5106
  br i1 %tobool, label %if.then, label %if.end, !dbg !5108

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5109
  br label %return, !dbg !5109

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5110
  %and2 = and i32 %1, 1, !dbg !5112
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5112
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5113

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5114
  br label %return, !dbg !5114

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5115
  br label %return, !dbg !5115

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5117
  ret i32 %2, !dbg !5117
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5118 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5119 dso_local void @__compiletime_assert_222() #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5120 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5124, metadata !DIExpression()), !dbg !5126
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5125, metadata !DIExpression()), !dbg !5127
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5128
  %and = and i64 %0, 63, !dbg !5129
  %shl = shl i64 1, %and, !dbg !5130
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5131
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5132
  %shr = ashr i64 %2, 6, !dbg !5133
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5131
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5131
  %and1 = and i64 %shl, %3, !dbg !5134
  %cmp = icmp ne i64 %and1, 0, !dbg !5135
  ret i1 %cmp, !dbg !5136
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5137 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5139, metadata !DIExpression()), !dbg !5142
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5140, metadata !DIExpression()), !dbg !5143
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #23, !dbg !5144
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5141, metadata !DIExpression()), !dbg !5145
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5146
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5147
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #23, !dbg !5148, !srcloc !5149
  %3 = icmp ult i8 %2, 2, !dbg !5148
  call void @llvm.assume(i1 %3), !dbg !5148
  store i8 %2, ptr %oldbit, align 1, !dbg !5148
  %4 = load i8, ptr %oldbit, align 1, !dbg !5150, !range !3719, !noundef !384
  %tobool = trunc i8 %4 to i1, !dbg !5150
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #23, !dbg !5151
  ret i1 %tobool, !dbg !5152
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_copy(ptr noundef %dst, ptr noundef %src, i32 noundef %nbits) #6 align 16 !dbg !5153 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5160, metadata !DIExpression()), !dbg !5164
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5161, metadata !DIExpression()), !dbg !5165
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5162, metadata !DIExpression()), !dbg !5166
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #23, !dbg !5167
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5163, metadata !DIExpression()), !dbg !5168
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5169
  %add = add i32 %0, 63, !dbg !5169
  %and = and i32 %add, -64, !dbg !5169
  %div = udiv i32 %and, 8, !dbg !5169
  store i32 %div, ptr %len, align 4, !dbg !5168
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !5170
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !5170
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !5170

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5170
  %cmp = icmp ule i32 %3, 64, !dbg !5170
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !5170

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !5170
  %cmp2 = icmp ugt i32 %4, 0, !dbg !5170
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5172

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %src.addr, align 8, !dbg !5173
  %6 = load i64, ptr %5, align 8, !dbg !5174
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !5175
  store i64 %6, ptr %7, align 8, !dbg !5176
  br label %if.end, !dbg !5177

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !5178
  %9 = load ptr, ptr %src.addr, align 8, !dbg !5179
  %10 = load i32, ptr %len, align 4, !dbg !5180
  %conv = zext i32 %10 to i64, !dbg !5180
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 %conv, i1 false), !dbg !5181
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #23, !dbg !5182
  ret void, !dbg !5182
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sw_any_bug_found(ptr noundef %d) #2 align 16 !dbg !5183 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !5185, metadata !DIExpression()), !dbg !5186
  store i32 1, ptr @bios_with_sw_any_bug, align 4, !dbg !5187
  ret i32 0, !dbg !5188
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_weight(ptr noundef %srcp) #6 align 16 !dbg !5189 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !5193, metadata !DIExpression()), !dbg !5194
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !5195
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5195
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5195
  %call = call i32 @bitmap_weight(ptr noundef %arraydecay, i32 noundef 64) #21, !dbg !5196
  ret i32 %call, !dbg !5197
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #7 align 16 !dbg !5198 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5202, metadata !DIExpression()), !dbg !5204
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5203, metadata !DIExpression()), !dbg !5205
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5206
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5206
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !5206

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !5206
  %cmp = icmp ule i32 %2, 64, !dbg !5206
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !5206

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5206
  %cmp2 = icmp ugt i32 %3, 0, !dbg !5206
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5208

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !5209
  %5 = load i64, ptr %4, align 8, !dbg !5210
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !5211
  %sub = sub i32 0, %6, !dbg !5211
  %and = and i32 %sub, 63, !dbg !5211
  %sh_prom = zext i32 %and to i64, !dbg !5211
  %shr = lshr i64 -1, %sh_prom, !dbg !5211
  %and3 = and i64 %5, %shr, !dbg !5212
  %call = call i64 @hweight_long(i64 noundef %and3) #21, !dbg !5213
  %conv = trunc i64 %call to i32, !dbg !5213
  store i32 %conv, ptr %retval, align 4, !dbg !5214
  br label %return, !dbg !5214

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !5215
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !5216
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #21, !dbg !5217
  store i32 %call4, ptr %retval, align 4, !dbg !5218
  br label %return, !dbg !5218

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !5219
  ret i32 %9, !dbg !5219
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #7 align 16 !dbg !5220 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !5225, metadata !DIExpression()), !dbg !5226
  %0 = load i64, ptr %w.addr, align 8, !dbg !5227
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5227
  br i1 %1, label %cond.true, label %cond.false, !dbg !5227

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !5227
  %and = and i64 %2, 1, !dbg !5227
  %tobool = icmp ne i64 %and, 0, !dbg !5227
  %lnot = xor i1 %tobool, true, !dbg !5227
  %lnot1 = xor i1 %lnot, true, !dbg !5227
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5227
  %3 = load i64, ptr %w.addr, align 8, !dbg !5227
  %and2 = and i64 %3, 2, !dbg !5227
  %tobool3 = icmp ne i64 %and2, 0, !dbg !5227
  %lnot4 = xor i1 %tobool3, true, !dbg !5227
  %lnot6 = xor i1 %lnot4, true, !dbg !5227
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5227
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !5227
  %4 = load i64, ptr %w.addr, align 8, !dbg !5227
  %and8 = and i64 %4, 4, !dbg !5227
  %tobool9 = icmp ne i64 %and8, 0, !dbg !5227
  %lnot10 = xor i1 %tobool9, true, !dbg !5227
  %lnot12 = xor i1 %lnot10, true, !dbg !5227
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !5227
  %add14 = add i32 %add, %lnot.ext13, !dbg !5227
  %5 = load i64, ptr %w.addr, align 8, !dbg !5227
  %and15 = and i64 %5, 8, !dbg !5227
  %tobool16 = icmp ne i64 %and15, 0, !dbg !5227
  %lnot17 = xor i1 %tobool16, true, !dbg !5227
  %lnot19 = xor i1 %lnot17, true, !dbg !5227
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5227
  %add21 = add i32 %add14, %lnot.ext20, !dbg !5227
  %6 = load i64, ptr %w.addr, align 8, !dbg !5227
  %and22 = and i64 %6, 16, !dbg !5227
  %tobool23 = icmp ne i64 %and22, 0, !dbg !5227
  %lnot24 = xor i1 %tobool23, true, !dbg !5227
  %lnot26 = xor i1 %lnot24, true, !dbg !5227
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !5227
  %add28 = add i32 %add21, %lnot.ext27, !dbg !5227
  %7 = load i64, ptr %w.addr, align 8, !dbg !5227
  %and29 = and i64 %7, 32, !dbg !5227
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5227
  %lnot31 = xor i1 %tobool30, true, !dbg !5227
  %lnot33 = xor i1 %lnot31, true, !dbg !5227
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !5227
  %add35 = add i32 %add28, %lnot.ext34, !dbg !5227
  %8 = load i64, ptr %w.addr, align 8, !dbg !5227
  %and36 = and i64 %8, 64, !dbg !5227
  %tobool37 = icmp ne i64 %and36, 0, !dbg !5227
  %lnot38 = xor i1 %tobool37, true, !dbg !5227
  %lnot40 = xor i1 %lnot38, true, !dbg !5227
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !5227
  %add42 = add i32 %add35, %lnot.ext41, !dbg !5227
  %9 = load i64, ptr %w.addr, align 8, !dbg !5227
  %and43 = and i64 %9, 128, !dbg !5227
  %tobool44 = icmp ne i64 %and43, 0, !dbg !5227
  %lnot45 = xor i1 %tobool44, true, !dbg !5227
  %lnot47 = xor i1 %lnot45, true, !dbg !5227
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !5227
  %add49 = add i32 %add42, %lnot.ext48, !dbg !5227
  %10 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr = lshr i64 %10, 8, !dbg !5227
  %and50 = and i64 %shr, 1, !dbg !5227
  %tobool51 = icmp ne i64 %and50, 0, !dbg !5227
  %lnot52 = xor i1 %tobool51, true, !dbg !5227
  %lnot54 = xor i1 %lnot52, true, !dbg !5227
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5227
  %11 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr56 = lshr i64 %11, 8, !dbg !5227
  %and57 = and i64 %shr56, 2, !dbg !5227
  %tobool58 = icmp ne i64 %and57, 0, !dbg !5227
  %lnot59 = xor i1 %tobool58, true, !dbg !5227
  %lnot61 = xor i1 %lnot59, true, !dbg !5227
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !5227
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !5227
  %12 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr64 = lshr i64 %12, 8, !dbg !5227
  %and65 = and i64 %shr64, 4, !dbg !5227
  %tobool66 = icmp ne i64 %and65, 0, !dbg !5227
  %lnot67 = xor i1 %tobool66, true, !dbg !5227
  %lnot69 = xor i1 %lnot67, true, !dbg !5227
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !5227
  %add71 = add i32 %add63, %lnot.ext70, !dbg !5227
  %13 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr72 = lshr i64 %13, 8, !dbg !5227
  %and73 = and i64 %shr72, 8, !dbg !5227
  %tobool74 = icmp ne i64 %and73, 0, !dbg !5227
  %lnot75 = xor i1 %tobool74, true, !dbg !5227
  %lnot77 = xor i1 %lnot75, true, !dbg !5227
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !5227
  %add79 = add i32 %add71, %lnot.ext78, !dbg !5227
  %14 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr80 = lshr i64 %14, 8, !dbg !5227
  %and81 = and i64 %shr80, 16, !dbg !5227
  %tobool82 = icmp ne i64 %and81, 0, !dbg !5227
  %lnot83 = xor i1 %tobool82, true, !dbg !5227
  %lnot85 = xor i1 %lnot83, true, !dbg !5227
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !5227
  %add87 = add i32 %add79, %lnot.ext86, !dbg !5227
  %15 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr88 = lshr i64 %15, 8, !dbg !5227
  %and89 = and i64 %shr88, 32, !dbg !5227
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5227
  %lnot91 = xor i1 %tobool90, true, !dbg !5227
  %lnot93 = xor i1 %lnot91, true, !dbg !5227
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !5227
  %add95 = add i32 %add87, %lnot.ext94, !dbg !5227
  %16 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr96 = lshr i64 %16, 8, !dbg !5227
  %and97 = and i64 %shr96, 64, !dbg !5227
  %tobool98 = icmp ne i64 %and97, 0, !dbg !5227
  %lnot99 = xor i1 %tobool98, true, !dbg !5227
  %lnot101 = xor i1 %lnot99, true, !dbg !5227
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !5227
  %add103 = add i32 %add95, %lnot.ext102, !dbg !5227
  %17 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr104 = lshr i64 %17, 8, !dbg !5227
  %and105 = and i64 %shr104, 128, !dbg !5227
  %tobool106 = icmp ne i64 %and105, 0, !dbg !5227
  %lnot107 = xor i1 %tobool106, true, !dbg !5227
  %lnot109 = xor i1 %lnot107, true, !dbg !5227
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !5227
  %add111 = add i32 %add103, %lnot.ext110, !dbg !5227
  %add112 = add i32 %add49, %add111, !dbg !5227
  %18 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr113 = lshr i64 %18, 16, !dbg !5227
  %and114 = and i64 %shr113, 1, !dbg !5227
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5227
  %lnot116 = xor i1 %tobool115, true, !dbg !5227
  %lnot118 = xor i1 %lnot116, true, !dbg !5227
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !5227
  %19 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr120 = lshr i64 %19, 16, !dbg !5227
  %and121 = and i64 %shr120, 2, !dbg !5227
  %tobool122 = icmp ne i64 %and121, 0, !dbg !5227
  %lnot123 = xor i1 %tobool122, true, !dbg !5227
  %lnot125 = xor i1 %lnot123, true, !dbg !5227
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !5227
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !5227
  %20 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr128 = lshr i64 %20, 16, !dbg !5227
  %and129 = and i64 %shr128, 4, !dbg !5227
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5227
  %lnot131 = xor i1 %tobool130, true, !dbg !5227
  %lnot133 = xor i1 %lnot131, true, !dbg !5227
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !5227
  %add135 = add i32 %add127, %lnot.ext134, !dbg !5227
  %21 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr136 = lshr i64 %21, 16, !dbg !5227
  %and137 = and i64 %shr136, 8, !dbg !5227
  %tobool138 = icmp ne i64 %and137, 0, !dbg !5227
  %lnot139 = xor i1 %tobool138, true, !dbg !5227
  %lnot141 = xor i1 %lnot139, true, !dbg !5227
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !5227
  %add143 = add i32 %add135, %lnot.ext142, !dbg !5227
  %22 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr144 = lshr i64 %22, 16, !dbg !5227
  %and145 = and i64 %shr144, 16, !dbg !5227
  %tobool146 = icmp ne i64 %and145, 0, !dbg !5227
  %lnot147 = xor i1 %tobool146, true, !dbg !5227
  %lnot149 = xor i1 %lnot147, true, !dbg !5227
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !5227
  %add151 = add i32 %add143, %lnot.ext150, !dbg !5227
  %23 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr152 = lshr i64 %23, 16, !dbg !5227
  %and153 = and i64 %shr152, 32, !dbg !5227
  %tobool154 = icmp ne i64 %and153, 0, !dbg !5227
  %lnot155 = xor i1 %tobool154, true, !dbg !5227
  %lnot157 = xor i1 %lnot155, true, !dbg !5227
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !5227
  %add159 = add i32 %add151, %lnot.ext158, !dbg !5227
  %24 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr160 = lshr i64 %24, 16, !dbg !5227
  %and161 = and i64 %shr160, 64, !dbg !5227
  %tobool162 = icmp ne i64 %and161, 0, !dbg !5227
  %lnot163 = xor i1 %tobool162, true, !dbg !5227
  %lnot165 = xor i1 %lnot163, true, !dbg !5227
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !5227
  %add167 = add i32 %add159, %lnot.ext166, !dbg !5227
  %25 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr168 = lshr i64 %25, 16, !dbg !5227
  %and169 = and i64 %shr168, 128, !dbg !5227
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5227
  %lnot171 = xor i1 %tobool170, true, !dbg !5227
  %lnot173 = xor i1 %lnot171, true, !dbg !5227
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !5227
  %add175 = add i32 %add167, %lnot.ext174, !dbg !5227
  %26 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr176 = lshr i64 %26, 16, !dbg !5227
  %shr177 = lshr i64 %shr176, 8, !dbg !5227
  %and178 = and i64 %shr177, 1, !dbg !5227
  %tobool179 = icmp ne i64 %and178, 0, !dbg !5227
  %lnot180 = xor i1 %tobool179, true, !dbg !5227
  %lnot182 = xor i1 %lnot180, true, !dbg !5227
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !5227
  %27 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr184 = lshr i64 %27, 16, !dbg !5227
  %shr185 = lshr i64 %shr184, 8, !dbg !5227
  %and186 = and i64 %shr185, 2, !dbg !5227
  %tobool187 = icmp ne i64 %and186, 0, !dbg !5227
  %lnot188 = xor i1 %tobool187, true, !dbg !5227
  %lnot190 = xor i1 %lnot188, true, !dbg !5227
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !5227
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !5227
  %28 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr193 = lshr i64 %28, 16, !dbg !5227
  %shr194 = lshr i64 %shr193, 8, !dbg !5227
  %and195 = and i64 %shr194, 4, !dbg !5227
  %tobool196 = icmp ne i64 %and195, 0, !dbg !5227
  %lnot197 = xor i1 %tobool196, true, !dbg !5227
  %lnot199 = xor i1 %lnot197, true, !dbg !5227
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !5227
  %add201 = add i32 %add192, %lnot.ext200, !dbg !5227
  %29 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr202 = lshr i64 %29, 16, !dbg !5227
  %shr203 = lshr i64 %shr202, 8, !dbg !5227
  %and204 = and i64 %shr203, 8, !dbg !5227
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5227
  %lnot206 = xor i1 %tobool205, true, !dbg !5227
  %lnot208 = xor i1 %lnot206, true, !dbg !5227
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !5227
  %add210 = add i32 %add201, %lnot.ext209, !dbg !5227
  %30 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr211 = lshr i64 %30, 16, !dbg !5227
  %shr212 = lshr i64 %shr211, 8, !dbg !5227
  %and213 = and i64 %shr212, 16, !dbg !5227
  %tobool214 = icmp ne i64 %and213, 0, !dbg !5227
  %lnot215 = xor i1 %tobool214, true, !dbg !5227
  %lnot217 = xor i1 %lnot215, true, !dbg !5227
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !5227
  %add219 = add i32 %add210, %lnot.ext218, !dbg !5227
  %31 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr220 = lshr i64 %31, 16, !dbg !5227
  %shr221 = lshr i64 %shr220, 8, !dbg !5227
  %and222 = and i64 %shr221, 32, !dbg !5227
  %tobool223 = icmp ne i64 %and222, 0, !dbg !5227
  %lnot224 = xor i1 %tobool223, true, !dbg !5227
  %lnot226 = xor i1 %lnot224, true, !dbg !5227
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !5227
  %add228 = add i32 %add219, %lnot.ext227, !dbg !5227
  %32 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr229 = lshr i64 %32, 16, !dbg !5227
  %shr230 = lshr i64 %shr229, 8, !dbg !5227
  %and231 = and i64 %shr230, 64, !dbg !5227
  %tobool232 = icmp ne i64 %and231, 0, !dbg !5227
  %lnot233 = xor i1 %tobool232, true, !dbg !5227
  %lnot235 = xor i1 %lnot233, true, !dbg !5227
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !5227
  %add237 = add i32 %add228, %lnot.ext236, !dbg !5227
  %33 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr238 = lshr i64 %33, 16, !dbg !5227
  %shr239 = lshr i64 %shr238, 8, !dbg !5227
  %and240 = and i64 %shr239, 128, !dbg !5227
  %tobool241 = icmp ne i64 %and240, 0, !dbg !5227
  %lnot242 = xor i1 %tobool241, true, !dbg !5227
  %lnot244 = xor i1 %lnot242, true, !dbg !5227
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !5227
  %add246 = add i32 %add237, %lnot.ext245, !dbg !5227
  %add247 = add i32 %add175, %add246, !dbg !5227
  %add248 = add i32 %add112, %add247, !dbg !5227
  %34 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr249 = lshr i64 %34, 32, !dbg !5227
  %and250 = and i64 %shr249, 1, !dbg !5227
  %tobool251 = icmp ne i64 %and250, 0, !dbg !5227
  %lnot252 = xor i1 %tobool251, true, !dbg !5227
  %lnot254 = xor i1 %lnot252, true, !dbg !5227
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !5227
  %35 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr256 = lshr i64 %35, 32, !dbg !5227
  %and257 = and i64 %shr256, 2, !dbg !5227
  %tobool258 = icmp ne i64 %and257, 0, !dbg !5227
  %lnot259 = xor i1 %tobool258, true, !dbg !5227
  %lnot261 = xor i1 %lnot259, true, !dbg !5227
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !5227
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !5227
  %36 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr264 = lshr i64 %36, 32, !dbg !5227
  %and265 = and i64 %shr264, 4, !dbg !5227
  %tobool266 = icmp ne i64 %and265, 0, !dbg !5227
  %lnot267 = xor i1 %tobool266, true, !dbg !5227
  %lnot269 = xor i1 %lnot267, true, !dbg !5227
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !5227
  %add271 = add i32 %add263, %lnot.ext270, !dbg !5227
  %37 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr272 = lshr i64 %37, 32, !dbg !5227
  %and273 = and i64 %shr272, 8, !dbg !5227
  %tobool274 = icmp ne i64 %and273, 0, !dbg !5227
  %lnot275 = xor i1 %tobool274, true, !dbg !5227
  %lnot277 = xor i1 %lnot275, true, !dbg !5227
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !5227
  %add279 = add i32 %add271, %lnot.ext278, !dbg !5227
  %38 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr280 = lshr i64 %38, 32, !dbg !5227
  %and281 = and i64 %shr280, 16, !dbg !5227
  %tobool282 = icmp ne i64 %and281, 0, !dbg !5227
  %lnot283 = xor i1 %tobool282, true, !dbg !5227
  %lnot285 = xor i1 %lnot283, true, !dbg !5227
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !5227
  %add287 = add i32 %add279, %lnot.ext286, !dbg !5227
  %39 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr288 = lshr i64 %39, 32, !dbg !5227
  %and289 = and i64 %shr288, 32, !dbg !5227
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5227
  %lnot291 = xor i1 %tobool290, true, !dbg !5227
  %lnot293 = xor i1 %lnot291, true, !dbg !5227
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !5227
  %add295 = add i32 %add287, %lnot.ext294, !dbg !5227
  %40 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr296 = lshr i64 %40, 32, !dbg !5227
  %and297 = and i64 %shr296, 64, !dbg !5227
  %tobool298 = icmp ne i64 %and297, 0, !dbg !5227
  %lnot299 = xor i1 %tobool298, true, !dbg !5227
  %lnot301 = xor i1 %lnot299, true, !dbg !5227
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !5227
  %add303 = add i32 %add295, %lnot.ext302, !dbg !5227
  %41 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr304 = lshr i64 %41, 32, !dbg !5227
  %and305 = and i64 %shr304, 128, !dbg !5227
  %tobool306 = icmp ne i64 %and305, 0, !dbg !5227
  %lnot307 = xor i1 %tobool306, true, !dbg !5227
  %lnot309 = xor i1 %lnot307, true, !dbg !5227
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !5227
  %add311 = add i32 %add303, %lnot.ext310, !dbg !5227
  %42 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr312 = lshr i64 %42, 32, !dbg !5227
  %shr313 = lshr i64 %shr312, 8, !dbg !5227
  %and314 = and i64 %shr313, 1, !dbg !5227
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5227
  %lnot316 = xor i1 %tobool315, true, !dbg !5227
  %lnot318 = xor i1 %lnot316, true, !dbg !5227
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !5227
  %43 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr320 = lshr i64 %43, 32, !dbg !5227
  %shr321 = lshr i64 %shr320, 8, !dbg !5227
  %and322 = and i64 %shr321, 2, !dbg !5227
  %tobool323 = icmp ne i64 %and322, 0, !dbg !5227
  %lnot324 = xor i1 %tobool323, true, !dbg !5227
  %lnot326 = xor i1 %lnot324, true, !dbg !5227
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !5227
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !5227
  %44 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr329 = lshr i64 %44, 32, !dbg !5227
  %shr330 = lshr i64 %shr329, 8, !dbg !5227
  %and331 = and i64 %shr330, 4, !dbg !5227
  %tobool332 = icmp ne i64 %and331, 0, !dbg !5227
  %lnot333 = xor i1 %tobool332, true, !dbg !5227
  %lnot335 = xor i1 %lnot333, true, !dbg !5227
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !5227
  %add337 = add i32 %add328, %lnot.ext336, !dbg !5227
  %45 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr338 = lshr i64 %45, 32, !dbg !5227
  %shr339 = lshr i64 %shr338, 8, !dbg !5227
  %and340 = and i64 %shr339, 8, !dbg !5227
  %tobool341 = icmp ne i64 %and340, 0, !dbg !5227
  %lnot342 = xor i1 %tobool341, true, !dbg !5227
  %lnot344 = xor i1 %lnot342, true, !dbg !5227
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !5227
  %add346 = add i32 %add337, %lnot.ext345, !dbg !5227
  %46 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr347 = lshr i64 %46, 32, !dbg !5227
  %shr348 = lshr i64 %shr347, 8, !dbg !5227
  %and349 = and i64 %shr348, 16, !dbg !5227
  %tobool350 = icmp ne i64 %and349, 0, !dbg !5227
  %lnot351 = xor i1 %tobool350, true, !dbg !5227
  %lnot353 = xor i1 %lnot351, true, !dbg !5227
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !5227
  %add355 = add i32 %add346, %lnot.ext354, !dbg !5227
  %47 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr356 = lshr i64 %47, 32, !dbg !5227
  %shr357 = lshr i64 %shr356, 8, !dbg !5227
  %and358 = and i64 %shr357, 32, !dbg !5227
  %tobool359 = icmp ne i64 %and358, 0, !dbg !5227
  %lnot360 = xor i1 %tobool359, true, !dbg !5227
  %lnot362 = xor i1 %lnot360, true, !dbg !5227
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !5227
  %add364 = add i32 %add355, %lnot.ext363, !dbg !5227
  %48 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr365 = lshr i64 %48, 32, !dbg !5227
  %shr366 = lshr i64 %shr365, 8, !dbg !5227
  %and367 = and i64 %shr366, 64, !dbg !5227
  %tobool368 = icmp ne i64 %and367, 0, !dbg !5227
  %lnot369 = xor i1 %tobool368, true, !dbg !5227
  %lnot371 = xor i1 %lnot369, true, !dbg !5227
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !5227
  %add373 = add i32 %add364, %lnot.ext372, !dbg !5227
  %49 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr374 = lshr i64 %49, 32, !dbg !5227
  %shr375 = lshr i64 %shr374, 8, !dbg !5227
  %and376 = and i64 %shr375, 128, !dbg !5227
  %tobool377 = icmp ne i64 %and376, 0, !dbg !5227
  %lnot378 = xor i1 %tobool377, true, !dbg !5227
  %lnot380 = xor i1 %lnot378, true, !dbg !5227
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !5227
  %add382 = add i32 %add373, %lnot.ext381, !dbg !5227
  %add383 = add i32 %add311, %add382, !dbg !5227
  %50 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr384 = lshr i64 %50, 32, !dbg !5227
  %shr385 = lshr i64 %shr384, 16, !dbg !5227
  %and386 = and i64 %shr385, 1, !dbg !5227
  %tobool387 = icmp ne i64 %and386, 0, !dbg !5227
  %lnot388 = xor i1 %tobool387, true, !dbg !5227
  %lnot390 = xor i1 %lnot388, true, !dbg !5227
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !5227
  %51 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr392 = lshr i64 %51, 32, !dbg !5227
  %shr393 = lshr i64 %shr392, 16, !dbg !5227
  %and394 = and i64 %shr393, 2, !dbg !5227
  %tobool395 = icmp ne i64 %and394, 0, !dbg !5227
  %lnot396 = xor i1 %tobool395, true, !dbg !5227
  %lnot398 = xor i1 %lnot396, true, !dbg !5227
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !5227
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !5227
  %52 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr401 = lshr i64 %52, 32, !dbg !5227
  %shr402 = lshr i64 %shr401, 16, !dbg !5227
  %and403 = and i64 %shr402, 4, !dbg !5227
  %tobool404 = icmp ne i64 %and403, 0, !dbg !5227
  %lnot405 = xor i1 %tobool404, true, !dbg !5227
  %lnot407 = xor i1 %lnot405, true, !dbg !5227
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !5227
  %add409 = add i32 %add400, %lnot.ext408, !dbg !5227
  %53 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr410 = lshr i64 %53, 32, !dbg !5227
  %shr411 = lshr i64 %shr410, 16, !dbg !5227
  %and412 = and i64 %shr411, 8, !dbg !5227
  %tobool413 = icmp ne i64 %and412, 0, !dbg !5227
  %lnot414 = xor i1 %tobool413, true, !dbg !5227
  %lnot416 = xor i1 %lnot414, true, !dbg !5227
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !5227
  %add418 = add i32 %add409, %lnot.ext417, !dbg !5227
  %54 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr419 = lshr i64 %54, 32, !dbg !5227
  %shr420 = lshr i64 %shr419, 16, !dbg !5227
  %and421 = and i64 %shr420, 16, !dbg !5227
  %tobool422 = icmp ne i64 %and421, 0, !dbg !5227
  %lnot423 = xor i1 %tobool422, true, !dbg !5227
  %lnot425 = xor i1 %lnot423, true, !dbg !5227
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !5227
  %add427 = add i32 %add418, %lnot.ext426, !dbg !5227
  %55 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr428 = lshr i64 %55, 32, !dbg !5227
  %shr429 = lshr i64 %shr428, 16, !dbg !5227
  %and430 = and i64 %shr429, 32, !dbg !5227
  %tobool431 = icmp ne i64 %and430, 0, !dbg !5227
  %lnot432 = xor i1 %tobool431, true, !dbg !5227
  %lnot434 = xor i1 %lnot432, true, !dbg !5227
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !5227
  %add436 = add i32 %add427, %lnot.ext435, !dbg !5227
  %56 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr437 = lshr i64 %56, 32, !dbg !5227
  %shr438 = lshr i64 %shr437, 16, !dbg !5227
  %and439 = and i64 %shr438, 64, !dbg !5227
  %tobool440 = icmp ne i64 %and439, 0, !dbg !5227
  %lnot441 = xor i1 %tobool440, true, !dbg !5227
  %lnot443 = xor i1 %lnot441, true, !dbg !5227
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !5227
  %add445 = add i32 %add436, %lnot.ext444, !dbg !5227
  %57 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr446 = lshr i64 %57, 32, !dbg !5227
  %shr447 = lshr i64 %shr446, 16, !dbg !5227
  %and448 = and i64 %shr447, 128, !dbg !5227
  %tobool449 = icmp ne i64 %and448, 0, !dbg !5227
  %lnot450 = xor i1 %tobool449, true, !dbg !5227
  %lnot452 = xor i1 %lnot450, true, !dbg !5227
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !5227
  %add454 = add i32 %add445, %lnot.ext453, !dbg !5227
  %58 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr455 = lshr i64 %58, 32, !dbg !5227
  %shr456 = lshr i64 %shr455, 16, !dbg !5227
  %shr457 = lshr i64 %shr456, 8, !dbg !5227
  %and458 = and i64 %shr457, 1, !dbg !5227
  %tobool459 = icmp ne i64 %and458, 0, !dbg !5227
  %lnot460 = xor i1 %tobool459, true, !dbg !5227
  %lnot462 = xor i1 %lnot460, true, !dbg !5227
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !5227
  %59 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr464 = lshr i64 %59, 32, !dbg !5227
  %shr465 = lshr i64 %shr464, 16, !dbg !5227
  %shr466 = lshr i64 %shr465, 8, !dbg !5227
  %and467 = and i64 %shr466, 2, !dbg !5227
  %tobool468 = icmp ne i64 %and467, 0, !dbg !5227
  %lnot469 = xor i1 %tobool468, true, !dbg !5227
  %lnot471 = xor i1 %lnot469, true, !dbg !5227
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !5227
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !5227
  %60 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr474 = lshr i64 %60, 32, !dbg !5227
  %shr475 = lshr i64 %shr474, 16, !dbg !5227
  %shr476 = lshr i64 %shr475, 8, !dbg !5227
  %and477 = and i64 %shr476, 4, !dbg !5227
  %tobool478 = icmp ne i64 %and477, 0, !dbg !5227
  %lnot479 = xor i1 %tobool478, true, !dbg !5227
  %lnot481 = xor i1 %lnot479, true, !dbg !5227
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !5227
  %add483 = add i32 %add473, %lnot.ext482, !dbg !5227
  %61 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr484 = lshr i64 %61, 32, !dbg !5227
  %shr485 = lshr i64 %shr484, 16, !dbg !5227
  %shr486 = lshr i64 %shr485, 8, !dbg !5227
  %and487 = and i64 %shr486, 8, !dbg !5227
  %tobool488 = icmp ne i64 %and487, 0, !dbg !5227
  %lnot489 = xor i1 %tobool488, true, !dbg !5227
  %lnot491 = xor i1 %lnot489, true, !dbg !5227
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !5227
  %add493 = add i32 %add483, %lnot.ext492, !dbg !5227
  %62 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr494 = lshr i64 %62, 32, !dbg !5227
  %shr495 = lshr i64 %shr494, 16, !dbg !5227
  %shr496 = lshr i64 %shr495, 8, !dbg !5227
  %and497 = and i64 %shr496, 16, !dbg !5227
  %tobool498 = icmp ne i64 %and497, 0, !dbg !5227
  %lnot499 = xor i1 %tobool498, true, !dbg !5227
  %lnot501 = xor i1 %lnot499, true, !dbg !5227
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !5227
  %add503 = add i32 %add493, %lnot.ext502, !dbg !5227
  %63 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr504 = lshr i64 %63, 32, !dbg !5227
  %shr505 = lshr i64 %shr504, 16, !dbg !5227
  %shr506 = lshr i64 %shr505, 8, !dbg !5227
  %and507 = and i64 %shr506, 32, !dbg !5227
  %tobool508 = icmp ne i64 %and507, 0, !dbg !5227
  %lnot509 = xor i1 %tobool508, true, !dbg !5227
  %lnot511 = xor i1 %lnot509, true, !dbg !5227
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !5227
  %add513 = add i32 %add503, %lnot.ext512, !dbg !5227
  %64 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr514 = lshr i64 %64, 32, !dbg !5227
  %shr515 = lshr i64 %shr514, 16, !dbg !5227
  %shr516 = lshr i64 %shr515, 8, !dbg !5227
  %and517 = and i64 %shr516, 64, !dbg !5227
  %tobool518 = icmp ne i64 %and517, 0, !dbg !5227
  %lnot519 = xor i1 %tobool518, true, !dbg !5227
  %lnot521 = xor i1 %lnot519, true, !dbg !5227
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !5227
  %add523 = add i32 %add513, %lnot.ext522, !dbg !5227
  %65 = load i64, ptr %w.addr, align 8, !dbg !5227
  %shr524 = lshr i64 %65, 32, !dbg !5227
  %shr525 = lshr i64 %shr524, 16, !dbg !5227
  %shr526 = lshr i64 %shr525, 8, !dbg !5227
  %and527 = and i64 %shr526, 128, !dbg !5227
  %tobool528 = icmp ne i64 %and527, 0, !dbg !5227
  %lnot529 = xor i1 %tobool528, true, !dbg !5227
  %lnot531 = xor i1 %lnot529, true, !dbg !5227
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !5227
  %add533 = add i32 %add523, %lnot.ext532, !dbg !5227
  %add534 = add i32 %add454, %add533, !dbg !5227
  %add535 = add i32 %add383, %add534, !dbg !5227
  %add536 = add i32 %add248, %add535, !dbg !5227
  %conv = zext i32 %add536 to i64, !dbg !5227
  br label %cond.end, !dbg !5227

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !5227
  %call = call i64 @__arch_hweight64(i64 noundef %66) #21, !dbg !5227
  br label %cond.end, !dbg !5227

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !5227
  ret i64 %cond, !dbg !5228
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5229 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #7 align 16 !dbg !5230 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !5235, metadata !DIExpression()), !dbg !5237
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #23, !dbg !5238
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5236, metadata !DIExpression()), !dbg !5239
  %0 = load i64, ptr %w.addr, align 8, !dbg !5240
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #28, !dbg !5241, !srcloc !5242
  store i64 %1, ptr %res, align 8, !dbg !5241
  %2 = load i64, ptr %res, align 8, !dbg !5243
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #23, !dbg !5244
  ret i64 %2, !dbg !5245
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_zero(ptr noundef %dst, i32 noundef %nbits) #6 align 16 !dbg !5246 {
entry:
  %dst.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5250, metadata !DIExpression()), !dbg !5253
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5251, metadata !DIExpression()), !dbg !5254
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #23, !dbg !5255
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5252, metadata !DIExpression()), !dbg !5256
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5257
  %add = add i32 %0, 63, !dbg !5257
  %and = and i32 %add, -64, !dbg !5257
  %div = udiv i32 %and, 8, !dbg !5257
  store i32 %div, ptr %len, align 4, !dbg !5256
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !5258
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !5258
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !5258

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5258
  %cmp = icmp ule i32 %3, 64, !dbg !5258
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !5258

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !5258
  %cmp2 = icmp ugt i32 %4, 0, !dbg !5258
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5260

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !5261
  store i64 0, ptr %5, align 8, !dbg !5262
  br label %if.end, !dbg !5263

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !5264
  %7 = load i32, ptr %len, align 4, !dbg !5265
  %conv = zext i32 %7 to i64, !dbg !5265
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %conv, i1 false), !dbg !5266
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #23, !dbg !5267
  ret void, !dbg !5267
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5268 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5274, metadata !DIExpression()), !dbg !5276
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5275, metadata !DIExpression()), !dbg !5277
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5278
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5279
  %div = sdiv i64 %1, 64, !dbg !5279
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5280
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #21, !dbg !5281
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5282
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5283
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #21, !dbg !5284
  ret void, !dbg !5285
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #7 align 16 !dbg !5286 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5288, metadata !DIExpression()), !dbg !5289
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5290
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #21, !dbg !5291
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5292
  ret i32 %1, !dbg !5293
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5294 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5302, metadata !DIExpression()), !dbg !5304
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5303, metadata !DIExpression()), !dbg !5305
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5306
  %1 = load i64, ptr %size.addr, align 8, !dbg !5307
  %conv = trunc i64 %1 to i32, !dbg !5307
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #21, !dbg !5308
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5309
  %3 = load i64, ptr %size.addr, align 8, !dbg !5309
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #21, !dbg !5309
  ret void, !dbg !5310
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5311 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5313, metadata !DIExpression()), !dbg !5315
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5314, metadata !DIExpression()), !dbg !5316
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5317
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5319
  br i1 %1, label %if.then, label %if.else, !dbg !5320

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5321
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5321
  %shr = ashr i64 %3, 3, !dbg !5321
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5321
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5323
  %and = and i64 %4, 7, !dbg !5323
  %sh_prom = trunc i64 %and to i32, !dbg !5323
  %shl = shl i32 1, %sh_prom, !dbg !5323
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #23, !dbg !5324, !srcloc !5325
  br label %if.end, !dbg !5326

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5327
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5329
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #23, !dbg !5330, !srcloc !5331
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5332
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5333 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5338, metadata !DIExpression()), !dbg !5340
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5339, metadata !DIExpression()), !dbg !5341
  ret i1 true, !dbg !5342
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !5343 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5348, metadata !DIExpression()), !dbg !5351
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5349, metadata !DIExpression()), !dbg !5352
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5350, metadata !DIExpression()), !dbg !5353
  ret void, !dbg !5354
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #7 align 16 !dbg !5355 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5359, metadata !DIExpression()), !dbg !5361
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !5360, metadata !DIExpression()), !dbg !5362
  ret void, !dbg !5363
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5364 dso_local i32 @acpi_os_read_port(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5370 dso_local i32 @acpi_os_write_port(i64 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #6 align 16 !dbg !5373 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5378, metadata !DIExpression()), !dbg !5380
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #23, !dbg !5381
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5379, metadata !DIExpression()), !dbg !5382
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5383
  %call = call i64 @__rdmsr(i32 noundef %0) #21, !dbg !5384
  store i64 %call, ptr %val, align 8, !dbg !5385
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #21, !dbg !5386
  br i1 %call1, label %if.then, label %if.end, !dbg !5388

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !5389
  %2 = load i64, ptr %val, align 8, !dbg !5390
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #21, !dbg !5391
  br label %if.end, !dbg !5391

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !5392
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #23, !dbg !5393
  ret i64 %3, !dbg !5394
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #7 align 16 !dbg !5395 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5397, metadata !DIExpression()), !dbg !5400
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #23, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %low, metadata !5398, metadata !DIExpression()), !dbg !5401
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #23, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %high, metadata !5399, metadata !DIExpression()), !dbg !5401
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5402
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #23, !dbg !5403, !srcloc !5404
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !5403
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !5403
  store i64 %asmresult, ptr %low, align 8, !dbg !5403
  store i64 %asmresult1, ptr %high, align 8, !dbg !5403
  %2 = load i64, ptr %low, align 8, !dbg !5405
  %3 = load i64, ptr %high, align 8, !dbg !5405
  %shl = shl i64 %3, 32, !dbg !5405
  %or = or i64 %2, %shl, !dbg !5405
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #23, !dbg !5406
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #23, !dbg !5406
  ret i64 %or, !dbg !5407
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #7 align 16 !dbg !5408 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5424, metadata !DIExpression()), !dbg !5425
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5426
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #21, !dbg !5427
  ret i1 %call, !dbg !5428
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5429 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #7 align 16 !dbg !5432 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5437, metadata !DIExpression()), !dbg !5440
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !5438, metadata !DIExpression()), !dbg !5441
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5442
  %1 = load i8, ptr %branch.addr, align 1, !dbg !5443, !range !3719, !noundef !384
  %tobool = trunc i8 %1 to i1, !dbg !5443
  %conv = zext i1 %tobool to i32, !dbg !5443
  %or = or i32 2, %conv, !dbg !5444
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #23
          to label %asm.fallthrough [label %l_yes], !dbg !5445, !srcloc !5446

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5447
  br label %return, !dbg !5447

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !5439), !dbg !5448
  store i1 true, ptr %retval, align 1, !dbg !5449
  br label %return, !dbg !5449

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !5450
  ret i1 %2, !dbg !5450
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #6 align 16 !dbg !5451 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5455, metadata !DIExpression()), !dbg !5458
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !5456, metadata !DIExpression()), !dbg !5459
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !5457, metadata !DIExpression()), !dbg !5460
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5461
  %1 = load i32, ptr %low.addr, align 4, !dbg !5462
  %2 = load i32, ptr %high.addr, align 4, !dbg !5463
  call void @native_write_msr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #21, !dbg !5464
  ret void, !dbg !5465
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #6 align 16 !dbg !5466 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5468, metadata !DIExpression()), !dbg !5471
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !5469, metadata !DIExpression()), !dbg !5472
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !5470, metadata !DIExpression()), !dbg !5473
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5474
  %1 = load i32, ptr %low.addr, align 4, !dbg !5475
  %2 = load i32, ptr %high.addr, align 4, !dbg !5476
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #21, !dbg !5477
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #21, !dbg !5478
  br i1 %call, label %if.then, label %if.end, !dbg !5480

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !5481
  %4 = load i32, ptr %high.addr, align 4, !dbg !5482
  %conv = zext i32 %4 to i64, !dbg !5483
  %shl = shl i64 %conv, 32, !dbg !5484
  %5 = load i32, ptr %low.addr, align 4, !dbg !5485
  %conv1 = zext i32 %5 to i64, !dbg !5485
  %or = or i64 %shl, %conv1, !dbg !5486
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #21, !dbg !5487
  br label %if.end, !dbg !5487

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5488
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #7 align 16 !dbg !5489 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5491, metadata !DIExpression()), !dbg !5494
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !5492, metadata !DIExpression()), !dbg !5495
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !5493, metadata !DIExpression()), !dbg !5496
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5497
  %1 = load i32, ptr %low.addr, align 4, !dbg !5498
  %2 = load i32, ptr %high.addr, align 4, !dbg !5499
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #23, !dbg !5500, !srcloc !5501
  ret void, !dbg !5502
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5503 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !5504 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5506, metadata !DIExpression()), !dbg !5510
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5507, metadata !DIExpression()), !dbg !5511
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5508, metadata !DIExpression()), !dbg !5512
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #23, !dbg !5513
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5509, metadata !DIExpression()), !dbg !5514
  %0 = load i64, ptr %n.addr, align 8, !dbg !5515
  %1 = load i64, ptr %size.addr, align 8, !dbg !5515
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5515
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5515
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5515
  store i64 %4, ptr %bytes, align 8, !dbg !5515
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #21, !dbg !5515
  %lnot = xor i1 %call, true, !dbg !5515
  %lnot1 = xor i1 %lnot, true, !dbg !5515
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5515
  %conv = sext i32 %lnot.ext to i64, !dbg !5515
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5515
  %tobool = icmp ne i64 %expval, 0, !dbg !5515
  br i1 %tobool, label %if.then, label %if.end, !dbg !5517

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5518

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5519
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !5521
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !5522

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !5523
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5524
  br i1 %8, label %if.then2, label %if.end4, !dbg !5525

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !5526
  %10 = load i32, ptr %flags.addr, align 4, !dbg !5527
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #24, !dbg !5528
  store ptr %call3, ptr %retval, align 8, !dbg !5529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5529

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !5530
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5531
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #24, !dbg !5532
  store ptr %call5, ptr %retval, align 8, !dbg !5533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5533

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #23, !dbg !5534
  %13 = load ptr, ptr %retval, align 8, !dbg !5534
  ret ptr %13, !dbg !5534
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #6 align 16 !dbg !5535 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !5540, metadata !DIExpression()), !dbg !5541
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !5542, !range !3719, !noundef !384
  %tobool = trunc i8 %0 to i1, !dbg !5542
  %lnot = xor i1 %tobool, true, !dbg !5542
  %lnot1 = xor i1 %lnot, true, !dbg !5542
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5542
  %conv = sext i32 %lnot.ext to i64, !dbg !5542
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5542
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5542
  ret i1 %tobool2, !dbg !5543
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5544 dso_local i32 @cppc_get_perf_caps(i32 noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5548 dso_local i32 @amd_get_highest_perf() #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) #6 align 16 !dbg !5551 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !5556, metadata !DIExpression()), !dbg !5559
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !5557, metadata !DIExpression()), !dbg !5560
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #23, !dbg !5561
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !5558, metadata !DIExpression()), !dbg !5562
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !5563
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !5564
  %call = call i64 @div_u64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #21, !dbg !5565
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #23, !dbg !5566
  ret i64 %call, !dbg !5567
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #6 align 16 !dbg !5568 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !5572, metadata !DIExpression()), !dbg !5575
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !5573, metadata !DIExpression()), !dbg !5576
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !5574, metadata !DIExpression()), !dbg !5577
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !5578
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !5579
  %conv = zext i32 %1 to i64, !dbg !5579
  %rem = urem i64 %0, %conv, !dbg !5580
  %conv1 = trunc i64 %rem to i32, !dbg !5578
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !5581
  store i32 %conv1, ptr %2, align 4, !dbg !5582
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !5583
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !5584
  %conv2 = zext i32 %4 to i64, !dbg !5584
  %div = udiv i64 %3, %conv2, !dbg !5585
  ret i64 %div, !dbg !5586
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_perf_data(ptr noundef %data) #6 align 16 !dbg !5587 {
entry:
  %data.addr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5591, metadata !DIExpression()), !dbg !5597
  br label %do.body, !dbg !5598

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !5599
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5592, metadata !DIExpression()), !dbg !5599
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5599
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5599
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !5598
  br label %do.end, !dbg !5599

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #23, !dbg !5600
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5595, metadata !DIExpression()), !dbg !5600
  %1 = load ptr, ptr @acpi_perf_data, align 8, !dbg !5600
  %2 = ptrtoint ptr %1 to i64, !dbg !5600
  store i64 %2, ptr %__ptr, align 8, !dbg !5600
  %3 = load i64, ptr %__ptr, align 8, !dbg !5600
  %4 = load ptr, ptr %data.addr, align 8, !dbg !5600
  %acpi_perf_cpu = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %4, i32 0, i32 2, !dbg !5600
  %5 = load i32, ptr %acpi_perf_cpu, align 8, !dbg !5600
  %idxprom = zext i32 %5 to i64, !dbg !5600
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5600
  %6 = load i64, ptr %arrayidx, align 8, !dbg !5600
  %add = add i64 %3, %6, !dbg !5600
  %7 = inttoptr i64 %add to ptr, !dbg !5600
  store ptr %7, ptr %tmp1, align 8, !dbg !5600
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #23, !dbg !5598
  %8 = load ptr, ptr %tmp1, align 8, !dbg !5600
  store ptr %8, ptr %tmp, align 8, !dbg !5599
  %9 = load ptr, ptr %tmp, align 8, !dbg !5598
  ret ptr %9, !dbg !5601
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5602 dso_local ptr @cpufreq_cpu_get_raw(i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @extract_freq(ptr noundef %policy, i32 noundef %val) #2 align 16 !dbg !5605 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !5609, metadata !DIExpression()), !dbg !5612
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5610, metadata !DIExpression()), !dbg !5613
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #23, !dbg !5614
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5611, metadata !DIExpression()), !dbg !5615
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !5616
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 40, !dbg !5617
  %1 = load ptr, ptr %driver_data, align 8, !dbg !5617
  store ptr %1, ptr %data, align 8, !dbg !5615
  %2 = load ptr, ptr %data, align 8, !dbg !5618
  %cpu_feature = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %2, i32 0, i32 1, !dbg !5619
  %3 = load i32, ptr %cpu_feature, align 4, !dbg !5619
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
  ], !dbg !5620

sw.bb:                                            ; preds = %entry, %entry
  %4 = load ptr, ptr %policy.addr, align 8, !dbg !5621
  %5 = load i32, ptr %val.addr, align 4, !dbg !5623
  %call = call i32 @extract_msr(ptr noundef %4, i32 noundef %5) #21, !dbg !5624
  store i32 %call, ptr %retval, align 4, !dbg !5625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5625

sw.bb1:                                           ; preds = %entry
  %6 = load ptr, ptr %policy.addr, align 8, !dbg !5626
  %7 = load i32, ptr %val.addr, align 4, !dbg !5627
  %call2 = call i32 @extract_io(ptr noundef %6, i32 noundef %7) #21, !dbg !5628
  store i32 %call2, ptr %retval, align 4, !dbg !5629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5629

sw.default:                                       ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5630

cleanup:                                          ; preds = %sw.default, %sw.bb1, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #23, !dbg !5631
  %8 = load i32, ptr %retval, align 4, !dbg !5631
  ret i32 %8, !dbg !5631
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_cur_val(ptr noundef %mask, ptr noundef %data) #2 align 16 !dbg !5632 {
entry:
  %retval = alloca i32, align 4
  %mask.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5636, metadata !DIExpression()), !dbg !5639
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5637, metadata !DIExpression()), !dbg !5640
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #23, !dbg !5641
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5638, metadata !DIExpression()), !dbg !5642
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !5643
  %call = call zeroext i1 @cpumask_empty(ptr noundef %0) #21, !dbg !5643
  %lnot = xor i1 %call, true, !dbg !5643
  %lnot1 = xor i1 %lnot, true, !dbg !5643
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5643
  %conv = sext i32 %lnot.ext to i64, !dbg !5643
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5643
  %tobool = icmp ne i64 %expval, 0, !dbg !5643
  br i1 %tobool, label %if.then, label %if.end, !dbg !5645

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5646

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %data.addr, align 8, !dbg !5647
  %2 = load ptr, ptr %mask.addr, align 8, !dbg !5648
  %call2 = call i32 @drv_read(ptr noundef %1, ptr noundef %2) #21, !dbg !5649
  store i32 %call2, ptr %val, align 4, !dbg !5650
  store i32 0, ptr %tmp, align 4, !dbg !5651
  %3 = load i32, ptr %tmp, align 4, !dbg !5654
  %4 = load i32, ptr %val, align 4, !dbg !5655
  store i32 %4, ptr %retval, align 4, !dbg !5656
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5656

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #23, !dbg !5657
  %5 = load i32, ptr %retval, align 4, !dbg !5657
  ret i32 %5, !dbg !5657
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_cpu_mask(i32 noundef %cpu) #6 align 16 !dbg !5658 {
entry:
  %cpu.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5662, metadata !DIExpression()), !dbg !5664
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #23, !dbg !5665
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5663, metadata !DIExpression()), !dbg !5666
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5667
  %rem = urem i32 %0, 64, !dbg !5668
  %add = add i32 1, %rem, !dbg !5669
  %idxprom = zext i32 %add to i64, !dbg !5670
  %arrayidx = getelementptr [65 x [1 x i64]], ptr @cpu_bit_bitmap, i64 0, i64 %idxprom, !dbg !5670
  %arraydecay = getelementptr inbounds [1 x i64], ptr %arrayidx, i64 0, i64 0, !dbg !5670
  store ptr %arraydecay, ptr %p, align 8, !dbg !5666
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5671
  %div = udiv i32 %1, 64, !dbg !5672
  %2 = load ptr, ptr %p, align 8, !dbg !5673
  %idx.ext = zext i32 %div to i64, !dbg !5673
  %idx.neg = sub i64 0, %idx.ext, !dbg !5673
  %add.ptr = getelementptr i64, ptr %2, i64 %idx.neg, !dbg !5673
  store ptr %add.ptr, ptr %p, align 8, !dbg !5673
  %3 = load ptr, ptr %p, align 8, !dbg !5674
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #23, !dbg !5675
  ret ptr %3, !dbg !5676
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @extract_msr(ptr noundef %policy, i32 noundef %msr) #2 align 16 !dbg !5677 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %msr.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %perf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !5679, metadata !DIExpression()), !dbg !5684
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5680, metadata !DIExpression()), !dbg !5685
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #23, !dbg !5686
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5681, metadata !DIExpression()), !dbg !5687
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !5688
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 40, !dbg !5689
  %1 = load ptr, ptr %driver_data, align 8, !dbg !5689
  store ptr %1, ptr %data, align 8, !dbg !5687
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #23, !dbg !5690
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5682, metadata !DIExpression()), !dbg !5691
  call void @llvm.lifetime.start.p0(i64 8, ptr %perf) #23, !dbg !5692
  call void @llvm.dbg.declare(metadata ptr %perf, metadata !5683, metadata !DIExpression()), !dbg !5693
  %2 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5694
  %conv = zext i8 %2 to i32, !dbg !5696
  %cmp = icmp eq i32 %conv, 2, !dbg !5697
  br i1 %cmp, label %if.then, label %if.else, !dbg !5698

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !5699
  %and = and i32 %3, 7, !dbg !5699
  store i32 %and, ptr %msr.addr, align 4, !dbg !5699
  br label %if.end9, !dbg !5700

if.else:                                          ; preds = %entry
  %4 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5701
  %conv2 = zext i8 %4 to i32, !dbg !5703
  %cmp3 = icmp eq i32 %conv2, 9, !dbg !5704
  br i1 %cmp3, label %if.then5, label %if.else7, !dbg !5705

if.then5:                                         ; preds = %if.else
  %5 = load i32, ptr %msr.addr, align 4, !dbg !5706
  %and6 = and i32 %5, 7, !dbg !5706
  store i32 %and6, ptr %msr.addr, align 4, !dbg !5706
  br label %if.end, !dbg !5707

if.else7:                                         ; preds = %if.else
  %6 = load i32, ptr %msr.addr, align 4, !dbg !5708
  %and8 = and i32 %6, 65535, !dbg !5708
  store i32 %and8, ptr %msr.addr, align 4, !dbg !5708
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then5
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %7 = load ptr, ptr %data, align 8, !dbg !5709
  %call = call ptr @to_perf_data(ptr noundef %7) #21, !dbg !5710
  store ptr %call, ptr %perf, align 8, !dbg !5711
  %8 = load ptr, ptr %policy.addr, align 8, !dbg !5712
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %8, i32 0, i32 20, !dbg !5712
  %9 = load ptr, ptr %freq_table, align 8, !dbg !5712
  store ptr %9, ptr %pos, align 8, !dbg !5712
  br label %for.cond, !dbg !5712

for.cond:                                         ; preds = %for.inc, %if.end9
  %10 = load ptr, ptr %pos, align 8, !dbg !5714
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %10, i32 0, i32 2, !dbg !5714
  %11 = load i32, ptr %frequency, align 4, !dbg !5714
  %cmp10 = icmp ne i32 %11, -2, !dbg !5714
  br i1 %cmp10, label %for.body, label %for.end, !dbg !5712

for.body:                                         ; preds = %for.cond
  %12 = load i32, ptr %msr.addr, align 4, !dbg !5716
  %conv12 = zext i32 %12 to i64, !dbg !5716
  %13 = load ptr, ptr %perf, align 8, !dbg !5718
  %states = getelementptr inbounds %struct.acpi_processor_performance, ptr %13, i32 0, i32 5, !dbg !5719
  %14 = load ptr, ptr %states, align 8, !dbg !5719
  %15 = load ptr, ptr %pos, align 8, !dbg !5720
  %driver_data13 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %15, i32 0, i32 1, !dbg !5721
  %16 = load i32, ptr %driver_data13, align 4, !dbg !5721
  %idxprom = zext i32 %16 to i64, !dbg !5718
  %arrayidx = getelementptr %struct.acpi_processor_px, ptr %14, i64 %idxprom, !dbg !5718
  %status = getelementptr inbounds %struct.acpi_processor_px, ptr %arrayidx, i32 0, i32 5, !dbg !5722
  %17 = load i64, ptr %status, align 8, !dbg !5722
  %cmp14 = icmp eq i64 %conv12, %17, !dbg !5723
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !5724

if.then16:                                        ; preds = %for.body
  %18 = load ptr, ptr %pos, align 8, !dbg !5725
  %frequency17 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %18, i32 0, i32 2, !dbg !5726
  %19 = load i32, ptr %frequency17, align 4, !dbg !5726
  store i32 %19, ptr %retval, align 4, !dbg !5727
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5727

if.end18:                                         ; preds = %for.body
  br label %for.inc, !dbg !5722

for.inc:                                          ; preds = %if.end18
  %20 = load ptr, ptr %pos, align 8, !dbg !5714
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %20, i32 1, !dbg !5714
  store ptr %incdec.ptr, ptr %pos, align 8, !dbg !5714
  br label %for.cond, !dbg !5714, !llvm.loop !5728

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %policy.addr, align 8, !dbg !5730
  %freq_table19 = getelementptr inbounds %struct.cpufreq_policy, ptr %21, i32 0, i32 20, !dbg !5731
  %22 = load ptr, ptr %freq_table19, align 8, !dbg !5731
  %arrayidx20 = getelementptr %struct.cpufreq_frequency_table, ptr %22, i64 0, !dbg !5730
  %frequency21 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx20, i32 0, i32 2, !dbg !5732
  %23 = load i32, ptr %frequency21, align 4, !dbg !5732
  store i32 %23, ptr %retval, align 4, !dbg !5733
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5733

cleanup:                                          ; preds = %for.end, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %perf) #23, !dbg !5734
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #23, !dbg !5734
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #23, !dbg !5734
  %24 = load i32, ptr %retval, align 4, !dbg !5734
  ret i32 %24, !dbg !5734
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @extract_io(ptr noundef %policy, i32 noundef %value) #2 align 16 !dbg !5735 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  %perf = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !5737, metadata !DIExpression()), !dbg !5742
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5738, metadata !DIExpression()), !dbg !5743
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #23, !dbg !5744
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5739, metadata !DIExpression()), !dbg !5745
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !5746
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 40, !dbg !5747
  %1 = load ptr, ptr %driver_data, align 8, !dbg !5747
  store ptr %1, ptr %data, align 8, !dbg !5745
  call void @llvm.lifetime.start.p0(i64 8, ptr %perf) #23, !dbg !5748
  call void @llvm.dbg.declare(metadata ptr %perf, metadata !5740, metadata !DIExpression()), !dbg !5749
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #23, !dbg !5750
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5741, metadata !DIExpression()), !dbg !5751
  %2 = load ptr, ptr %data, align 8, !dbg !5752
  %call = call ptr @to_perf_data(ptr noundef %2) #21, !dbg !5753
  store ptr %call, ptr %perf, align 8, !dbg !5754
  store i32 0, ptr %i, align 4, !dbg !5755
  br label %for.cond, !dbg !5757

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !dbg !5758
  %4 = load ptr, ptr %perf, align 8, !dbg !5760
  %state_count = getelementptr inbounds %struct.acpi_processor_performance, ptr %4, i32 0, i32 4, !dbg !5761
  %5 = load i32, ptr %state_count, align 8, !dbg !5761
  %cmp = icmp ult i32 %3, %5, !dbg !5762
  br i1 %cmp, label %for.body, label %for.end, !dbg !5763

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %value.addr, align 4, !dbg !5764
  %conv = zext i32 %6 to i64, !dbg !5764
  %7 = load ptr, ptr %perf, align 8, !dbg !5767
  %states = getelementptr inbounds %struct.acpi_processor_performance, ptr %7, i32 0, i32 5, !dbg !5768
  %8 = load ptr, ptr %states, align 8, !dbg !5768
  %9 = load i32, ptr %i, align 4, !dbg !5769
  %idxprom = sext i32 %9 to i64, !dbg !5767
  %arrayidx = getelementptr %struct.acpi_processor_px, ptr %8, i64 %idxprom, !dbg !5767
  %status = getelementptr inbounds %struct.acpi_processor_px, ptr %arrayidx, i32 0, i32 5, !dbg !5770
  %10 = load i64, ptr %status, align 8, !dbg !5770
  %cmp1 = icmp eq i64 %conv, %10, !dbg !5771
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5772

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %policy.addr, align 8, !dbg !5773
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %11, i32 0, i32 20, !dbg !5774
  %12 = load ptr, ptr %freq_table, align 8, !dbg !5774
  %13 = load i32, ptr %i, align 4, !dbg !5775
  %idxprom3 = sext i32 %13 to i64, !dbg !5773
  %arrayidx4 = getelementptr %struct.cpufreq_frequency_table, ptr %12, i64 %idxprom3, !dbg !5773
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx4, i32 0, i32 2, !dbg !5776
  %14 = load i32, ptr %frequency, align 4, !dbg !5776
  store i32 %14, ptr %retval, align 4, !dbg !5777
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5777

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5778

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %i, align 4, !dbg !5779
  %inc = add i32 %15, 1, !dbg !5779
  store i32 %inc, ptr %i, align 4, !dbg !5779
  br label %for.cond, !dbg !5780, !llvm.loop !5781

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5783
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5783

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #23, !dbg !5784
  call void @llvm.lifetime.end.p0(i64 8, ptr %perf) #23, !dbg !5784
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #23, !dbg !5784
  %16 = load i32, ptr %retval, align 4, !dbg !5784
  ret i32 %16, !dbg !5784
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_empty(ptr noundef %srcp) #6 align 16 !dbg !5785 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !5789, metadata !DIExpression()), !dbg !5790
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !5791
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !5791
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5791
  %call = call zeroext i1 @bitmap_empty(ptr noundef %arraydecay, i32 noundef 64) #21, !dbg !5792
  ret i1 %call, !dbg !5793
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drv_read(ptr noundef %data, ptr noundef %mask) #2 align 16 !dbg !5794 {
entry:
  %data.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %perf = alloca ptr, align 8
  %cmd = alloca %struct.drv_cmd, align 8
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5798, metadata !DIExpression()), !dbg !5808
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5799, metadata !DIExpression()), !dbg !5809
  call void @llvm.lifetime.start.p0(i64 8, ptr %perf) #23, !dbg !5810
  call void @llvm.dbg.declare(metadata ptr %perf, metadata !5800, metadata !DIExpression()), !dbg !5811
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5812
  %call = call ptr @to_perf_data(ptr noundef %0) #21, !dbg !5813
  store ptr %call, ptr %perf, align 8, !dbg !5811
  call void @llvm.lifetime.start.p0(i64 24, ptr %cmd) #23, !dbg !5814
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !5801, metadata !DIExpression()), !dbg !5815
  %reg = getelementptr inbounds %struct.drv_cmd, ptr %cmd, i32 0, i32 0, !dbg !5816
  %1 = load ptr, ptr %perf, align 8, !dbg !5817
  %control_register = getelementptr inbounds %struct.acpi_processor_performance, ptr %1, i32 0, i32 2, !dbg !5818
  store ptr %control_register, ptr %reg, align 8, !dbg !5816
  %val = getelementptr inbounds %struct.drv_cmd, ptr %cmd, i32 0, i32 1, !dbg !5816
  store i32 0, ptr %val, align 8, !dbg !5816
  %func = getelementptr inbounds %struct.drv_cmd, ptr %cmd, i32 0, i32 2, !dbg !5816
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5819
  %cpu_freq_read = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %2, i32 0, i32 5, !dbg !5820
  %3 = load ptr, ptr %cpu_freq_read, align 8, !dbg !5820
  store ptr %3, ptr %func, align 8, !dbg !5821
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #23, !dbg !5822
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5802, metadata !DIExpression()), !dbg !5823
  %4 = load ptr, ptr %mask.addr, align 8, !dbg !5824
  %call1 = call i32 @smp_call_function_any(ptr noundef %4, ptr noundef @do_drv_read, ptr noundef %cmd, i32 noundef 1) #21, !dbg !5825
  store i32 %call1, ptr %err, align 4, !dbg !5826
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #23, !dbg !5827
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5803, metadata !DIExpression()), !dbg !5827
  %5 = load i32, ptr %err, align 4, !dbg !5827
  %tobool = icmp ne i32 %5, 0, !dbg !5827
  %lnot = xor i1 %tobool, true, !dbg !5827
  %lnot2 = xor i1 %lnot, true, !dbg !5827
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5827
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5827
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5828
  %tobool3 = icmp ne i32 %6, 0, !dbg !5828
  %lnot4 = xor i1 %tobool3, true, !dbg !5828
  %lnot6 = xor i1 %lnot4, true, !dbg !5828
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5828
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5828
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5828
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5828
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5827

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5828

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #23, !dbg !5829
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5805, metadata !DIExpression()), !dbg !5829
  store i32 2307, ptr %__flags, align 4, !dbg !5829
  br label %do.body9, !dbg !5829

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5830

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5830

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5829

do.body10:                                        ; preds = %do.end
  %7 = load i32, ptr %__flags, align 4, !dbg !5832
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 322, i32 %7, i64 12) #23, !dbg !5832, !srcloc !5834
  br label %do.cond11, !dbg !5832

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5832

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5829

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5835

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5835

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #23, !dbg !5828
  br label %do.cond16, !dbg !5829

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5829

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5829

if.end:                                           ; preds = %do.end17, %entry
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !5827
  %tobool18 = icmp ne i32 %8, 0, !dbg !5827
  %lnot19 = xor i1 %tobool18, true, !dbg !5827
  %lnot21 = xor i1 %lnot19, true, !dbg !5827
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5827
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5827
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5827
  store i64 %expval24, ptr %tmp, align 8, !dbg !5828
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #23, !dbg !5837
  %9 = load i64, ptr %tmp, align 8, !dbg !5827
  %val25 = getelementptr inbounds %struct.drv_cmd, ptr %cmd, i32 0, i32 1, !dbg !5838
  %10 = load i32, ptr %val25, align 8, !dbg !5838
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #23, !dbg !5839
  call void @llvm.lifetime.end.p0(i64 24, ptr %cmd) #23, !dbg !5839
  call void @llvm.lifetime.end.p0(i64 8, ptr %perf) #23, !dbg !5839
  ret i32 %10, !dbg !5840
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_empty(ptr noundef %src, i32 noundef %nbits) #6 align 16 !dbg !5841 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5845, metadata !DIExpression()), !dbg !5847
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !5846, metadata !DIExpression()), !dbg !5848
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !5849
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5849
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !5849

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !5849
  %cmp = icmp ule i32 %2, 64, !dbg !5849
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !5849

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !5849
  %cmp2 = icmp ugt i32 %3, 0, !dbg !5849
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5851

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !5852
  %5 = load i64, ptr %4, align 8, !dbg !5853
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !5854
  %sub = sub i32 0, %6, !dbg !5854
  %and = and i32 %sub, 63, !dbg !5854
  %sh_prom = zext i32 %and to i64, !dbg !5854
  %shr = lshr i64 -1, %sh_prom, !dbg !5854
  %and3 = and i64 %5, %shr, !dbg !5855
  %tobool = icmp ne i64 %and3, 0, !dbg !5856
  %lnot = xor i1 %tobool, true, !dbg !5856
  store i1 %lnot, ptr %retval, align 1, !dbg !5857
  br label %return, !dbg !5857

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !5858
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !5859
  %conv = zext i32 %8 to i64, !dbg !5859
  %call = call i64 @find_first_bit(ptr noundef %7, i64 noundef %conv) #21, !dbg !5860
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !5861
  %conv4 = zext i32 %9 to i64, !dbg !5861
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !5862
  store i1 %cmp5, ptr %retval, align 1, !dbg !5863
  br label %return, !dbg !5863

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, ptr %retval, align 1, !dbg !5864
  ret i1 %10, !dbg !5864
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #6 align 16 !dbg !5865 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5870, metadata !DIExpression()), !dbg !5875
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5871, metadata !DIExpression()), !dbg !5876
  %0 = load i64, ptr %size.addr, align 8, !dbg !5877
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5877
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !5877

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5877
  %cmp = icmp ule i64 %2, 64, !dbg !5877
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !5877

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !5877
  %cmp2 = icmp ugt i64 %3, 0, !dbg !5877
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5878

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #23, !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5872, metadata !DIExpression()), !dbg !5880
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !5881
  %5 = load i64, ptr %4, align 8, !dbg !5882
  %6 = load i64, ptr %size.addr, align 8, !dbg !5883
  %sub = sub i64 %6, 1, !dbg !5883
  %sub3 = sub i64 63, %sub, !dbg !5883
  %shr = lshr i64 -1, %sub3, !dbg !5883
  %and = and i64 -1, %shr, !dbg !5883
  %add = add i64 0, %and, !dbg !5883
  %and4 = and i64 %5, %add, !dbg !5884
  store i64 %and4, ptr %val, align 8, !dbg !5880
  %7 = load i64, ptr %val, align 8, !dbg !5885
  %tobool = icmp ne i64 %7, 0, !dbg !5885
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !5885

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !5886
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5886
  br i1 %9, label %cond.true5, label %cond.false, !dbg !5886

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !5886
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !5886
  %cast = trunc i64 %11 to i32, !dbg !5886
  %conv = sext i32 %cast to i64, !dbg !5886
  br label %cond.end, !dbg !5886

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !5886
  %call = call i64 @variable__ffs(i64 noundef %12) #21, !dbg !5886
  br label %cond.end, !dbg !5886

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !5886
  br label %cond.end7, !dbg !5885

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !5887
  br label %cond.end7, !dbg !5885

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !5885
  store i64 %cond8, ptr %retval, align 8, !dbg !5888
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #23, !dbg !5889
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !5890
  %15 = load i64, ptr %size.addr, align 8, !dbg !5891
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #21, !dbg !5892
  store i64 %call9, ptr %retval, align 8, !dbg !5893
  br label %return, !dbg !5893

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !5894
  ret i64 %16, !dbg !5894
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #7 align 16 !dbg !5895 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !5897, metadata !DIExpression()), !dbg !5898
  %0 = load i64, ptr %word.addr, align 8, !dbg !5899
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #29, !dbg !5900, !srcloc !5901
  store i64 %1, ptr %word.addr, align 8, !dbg !5900
  %2 = load i64, ptr %word.addr, align 8, !dbg !5902
  ret i64 %2, !dbg !5903
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5904 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5905 dso_local i32 @smp_call_function_any(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_drv_read(ptr noundef %_cmd) #2 align 16 !dbg !5910 {
entry:
  %_cmd.addr = alloca ptr, align 8
  %cmd = alloca ptr, align 8
  store ptr %_cmd, ptr %_cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_cmd.addr, metadata !5912, metadata !DIExpression()), !dbg !5915
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd) #23, !dbg !5916
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !5913, metadata !DIExpression()), !dbg !5917
  %0 = load ptr, ptr %_cmd.addr, align 8, !dbg !5918
  store ptr %0, ptr %cmd, align 8, !dbg !5917
  %1 = load ptr, ptr %cmd, align 8, !dbg !5919
  %func = getelementptr inbounds %struct.drv_cmd, ptr %1, i32 0, i32 2, !dbg !5920
  %2 = load ptr, ptr %func, align 8, !dbg !5921
  %3 = load ptr, ptr %cmd, align 8, !dbg !5922
  %reg = getelementptr inbounds %struct.drv_cmd, ptr %3, i32 0, i32 0, !dbg !5923
  %4 = load ptr, ptr %reg, align 8, !dbg !5923
  %call = call i32 %2(ptr noundef %4) #21, !dbg !5919
  %5 = load ptr, ptr %cmd, align 8, !dbg !5924
  %val = getelementptr inbounds %struct.drv_cmd, ptr %5, i32 0, i32 1, !dbg !5925
  store i32 %call, ptr %val, align 8, !dbg !5926
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd) #23, !dbg !5927
  ret void, !dbg !5927
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @on_each_cpu_mask(ptr noundef %mask, ptr noundef %func, ptr noundef %info, i1 noundef zeroext %wait) #6 align 16 !dbg !5928 {
entry:
  %mask.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %wait.addr = alloca i8, align 1
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5932, metadata !DIExpression()), !dbg !5936
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !5933, metadata !DIExpression()), !dbg !5937
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5934, metadata !DIExpression()), !dbg !5938
  %frombool = zext i1 %wait to i8
  store i8 %frombool, ptr %wait.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !5935, metadata !DIExpression()), !dbg !5939
  %0 = load ptr, ptr %func.addr, align 8, !dbg !5940
  %1 = load ptr, ptr %info.addr, align 8, !dbg !5941
  %2 = load i8, ptr %wait.addr, align 1, !dbg !5942, !range !3719, !noundef !384
  %tobool = trunc i8 %2 to i1, !dbg !5942
  %3 = load ptr, ptr %mask.addr, align 8, !dbg !5943
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef %0, ptr noundef %1, i1 noundef zeroext %tobool, ptr noundef %3) #21, !dbg !5944
  ret void, !dbg !5945
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @boost_set_msr_each(ptr noundef %p_en) #2 align 16 !dbg !5946 {
entry:
  %p_en.addr = alloca ptr, align 8
  %enable = alloca i8, align 1
  store ptr %p_en, ptr %p_en.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p_en.addr, metadata !5948, metadata !DIExpression()), !dbg !5950
  call void @llvm.lifetime.start.p0(i64 1, ptr %enable) #23, !dbg !5951
  call void @llvm.dbg.declare(metadata ptr %enable, metadata !5949, metadata !DIExpression()), !dbg !5952
  %0 = load ptr, ptr %p_en.addr, align 8, !dbg !5953
  %tobool = icmp ne ptr %0, null, !dbg !5954
  %frombool = zext i1 %tobool to i8, !dbg !5952
  store i8 %frombool, ptr %enable, align 1, !dbg !5952
  %1 = load i8, ptr %enable, align 1, !dbg !5955, !range !3719, !noundef !384
  %tobool1 = trunc i8 %1 to i1, !dbg !5955
  %call = call i32 @boost_set_msr(i1 noundef zeroext %tobool1) #21, !dbg !5956
  call void @llvm.lifetime.end.p0(i64 1, ptr %enable) #23, !dbg !5957
  ret void, !dbg !5957
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5958 dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @boost_set_msr(i1 noundef zeroext %enable) #2 align 16 !dbg !5965 {
entry:
  %retval = alloca i32, align 4
  %enable.addr = alloca i8, align 1
  %msr_addr = alloca i32, align 4
  %msr_mask = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %frombool = zext i1 %enable to i8
  store i8 %frombool, ptr %enable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !5969, metadata !DIExpression()), !dbg !5973
  call void @llvm.lifetime.start.p0(i64 4, ptr %msr_addr) #23, !dbg !5974
  call void @llvm.dbg.declare(metadata ptr %msr_addr, metadata !5970, metadata !DIExpression()), !dbg !5975
  call void @llvm.lifetime.start.p0(i64 8, ptr %msr_mask) #23, !dbg !5976
  call void @llvm.dbg.declare(metadata ptr %msr_mask, metadata !5971, metadata !DIExpression()), !dbg !5977
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #23, !dbg !5976
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5972, metadata !DIExpression()), !dbg !5978
  %0 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5979
  %conv = zext i8 %0 to i32, !dbg !5980
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 5, label %sw.bb
    i32 10, label %sw.bb
    i32 9, label %sw.bb1
    i32 2, label %sw.bb1
  ], !dbg !5981

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i32 416, ptr %msr_addr, align 4, !dbg !5982
  store i64 274877906944, ptr %msr_mask, align 8, !dbg !5984
  br label %sw.epilog, !dbg !5985

sw.bb1:                                           ; preds = %entry, %entry
  store i32 -1073676267, ptr %msr_addr, align 4, !dbg !5986
  store i64 33554432, ptr %msr_mask, align 8, !dbg !5987
  br label %sw.epilog, !dbg !5988

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5989

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %1 = load i32, ptr %msr_addr, align 4, !dbg !5990
  %call = call i64 @native_read_msr(i32 noundef %1) #21, !dbg !5990
  store i64 %call, ptr %val, align 8, !dbg !5990
  %2 = load i8, ptr %enable.addr, align 1, !dbg !5991, !range !3719, !noundef !384
  %tobool = trunc i8 %2 to i1, !dbg !5991
  br i1 %tobool, label %if.then, label %if.else, !dbg !5993

if.then:                                          ; preds = %sw.epilog
  %3 = load i64, ptr %msr_mask, align 8, !dbg !5994
  %not = xor i64 %3, -1, !dbg !5995
  %4 = load i64, ptr %val, align 8, !dbg !5996
  %and = and i64 %4, %not, !dbg !5996
  store i64 %and, ptr %val, align 8, !dbg !5996
  br label %if.end, !dbg !5997

if.else:                                          ; preds = %sw.epilog
  %5 = load i64, ptr %msr_mask, align 8, !dbg !5998
  %6 = load i64, ptr %val, align 8, !dbg !5999
  %or = or i64 %6, %5, !dbg !5999
  store i64 %or, ptr %val, align 8, !dbg !5999
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, ptr %msr_addr, align 4, !dbg !6000
  %8 = load i64, ptr %val, align 8, !dbg !6001
  call void @wrmsrl(i32 noundef %7, i64 noundef %8) #21, !dbg !6002
  store i32 0, ptr %retval, align 4, !dbg !6003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6003

cleanup:                                          ; preds = %if.end, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #23, !dbg !6004
  call void @llvm.lifetime.end.p0(i64 8, ptr %msr_mask) #23, !dbg !6004
  call void @llvm.lifetime.end.p0(i64 4, ptr %msr_addr) #23, !dbg !6004
  %9 = load i32, ptr %retval, align 4, !dbg !6004
  ret i32 %9, !dbg !6004
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsrl(i32 noundef %msr, i64 noundef %val) #6 align 16 !dbg !6005 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6009, metadata !DIExpression()), !dbg !6011
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6010, metadata !DIExpression()), !dbg !6012
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6013
  %1 = load i64, ptr %val.addr, align 8, !dbg !6014
  %and = and i64 %1, 4294967295, !dbg !6015
  %conv = trunc i64 %and to i32, !dbg !6016
  %2 = load i64, ptr %val.addr, align 8, !dbg !6017
  %shr = lshr i64 %2, 32, !dbg !6018
  %conv1 = trunc i64 %shr to i32, !dbg !6019
  call void @native_write_msr(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #21, !dbg !6020
  ret void, !dbg !6021
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drv_write(ptr noundef %data, ptr noundef %mask, i32 noundef %val) #2 align 16 !dbg !3459 {
entry:
  %data.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %perf = alloca ptr, align 8
  %cmd = alloca %struct.drv_cmd, align 8
  %this_cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3463, metadata !DIExpression()), !dbg !6022
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !3464, metadata !DIExpression()), !dbg !6023
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3465, metadata !DIExpression()), !dbg !6024
  call void @llvm.lifetime.start.p0(i64 8, ptr %perf) #23, !dbg !6025
  call void @llvm.dbg.declare(metadata ptr %perf, metadata !3466, metadata !DIExpression()), !dbg !6026
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6027
  %call = call ptr @to_perf_data(ptr noundef %0) #21, !dbg !6028
  store ptr %call, ptr %perf, align 8, !dbg !6026
  call void @llvm.lifetime.start.p0(i64 24, ptr %cmd) #23, !dbg !6029
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !3467, metadata !DIExpression()), !dbg !6030
  %reg = getelementptr inbounds %struct.drv_cmd, ptr %cmd, i32 0, i32 0, !dbg !6031
  %1 = load ptr, ptr %perf, align 8, !dbg !6032
  %control_register = getelementptr inbounds %struct.acpi_processor_performance, ptr %1, i32 0, i32 2, !dbg !6033
  store ptr %control_register, ptr %reg, align 8, !dbg !6031
  %val1 = getelementptr inbounds %struct.drv_cmd, ptr %cmd, i32 0, i32 1, !dbg !6031
  %2 = load i32, ptr %val.addr, align 4, !dbg !6034
  store i32 %2, ptr %val1, align 8, !dbg !6031
  %func = getelementptr inbounds %struct.drv_cmd, ptr %cmd, i32 0, i32 2, !dbg !6031
  %3 = load ptr, ptr %data.addr, align 8, !dbg !6035
  %cpu_freq_write = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %3, i32 0, i32 4, !dbg !6036
  %4 = load ptr, ptr %cpu_freq_write, align 8, !dbg !6036
  store ptr %4, ptr %func, align 8, !dbg !6037
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_cpu) #23, !dbg !6038
  call void @llvm.dbg.declare(metadata ptr %this_cpu, metadata !3477, metadata !DIExpression()), !dbg !6039
  br label %do.body, !dbg !6040

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #21, !dbg !6041
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !dbg !6041, !srcloc !6043
  br label %do.cond, !dbg !6041

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6041

do.end:                                           ; preds = %do.cond
  call void @__this_cpu_preempt_check(ptr noundef @.str.9) #21, !dbg !6044
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #23, !dbg !6045
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3478, metadata !DIExpression()), !dbg !6045
  br label %do.body3, !dbg !6045

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !6046
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3482, metadata !DIExpression()), !dbg !6046
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6046
  %5 = load ptr, ptr %__vpp_verify, align 8, !dbg !6046
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !6045
  br label %do.cond4, !dbg !6046

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !6046

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #23, !dbg !6047
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3484, metadata !DIExpression()), !dbg !6047
  %6 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 2)) #29, !dbg !6047, !srcloc !6048
  store i32 %6, ptr %pfo_val__, align 4, !dbg !6047
  %7 = load i32, ptr %pfo_val__, align 4, !dbg !6047
  %conv = zext i32 %7 to i64, !dbg !6047
  %conv7 = trunc i64 %conv to i32, !dbg !6047
  store i32 %conv7, ptr %tmp6, align 4, !dbg !6047
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #23, !dbg !6045
  %8 = load i32, ptr %tmp6, align 4, !dbg !6047
  store i32 %8, ptr %pscr_ret__, align 4, !dbg !6045
  %9 = load i32, ptr %pscr_ret__, align 4, !dbg !6045
  store i32 %9, ptr %tmp8, align 4, !dbg !6045
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #23, !dbg !6044
  %10 = load i32, ptr %tmp8, align 4, !dbg !6045
  store i32 %10, ptr %tmp2, align 4, !dbg !6044
  %11 = load i32, ptr %tmp2, align 4, !dbg !6044
  store i32 %11, ptr %tmp, align 4, !dbg !6041
  %12 = load i32, ptr %tmp, align 4, !dbg !6040
  store i32 %12, ptr %this_cpu, align 4, !dbg !6049
  %13 = load i32, ptr %this_cpu, align 4, !dbg !6050
  %14 = load ptr, ptr %mask.addr, align 8, !dbg !6052
  %call9 = call zeroext i1 @cpumask_test_cpu(i32 noundef %13, ptr noundef %14) #21, !dbg !6053
  br i1 %call9, label %if.then, label %if.end, !dbg !6054

if.then:                                          ; preds = %do.end5
  call void @do_drv_write(ptr noundef %cmd) #21, !dbg !6055
  br label %if.end, !dbg !6055

if.end:                                           ; preds = %if.then, %do.end5
  %15 = load ptr, ptr %mask.addr, align 8, !dbg !6056
  call void @smp_call_function_many(ptr noundef %15, ptr noundef @do_drv_write, ptr noundef %cmd, i1 noundef zeroext true) #21, !dbg !6057
  br label %do.body10, !dbg !6058

do.body10:                                        ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !dbg !6059, !srcloc !6061
  %call11 = call zeroext i1 @__preempt_count_dec_and_test() #21, !dbg !6062
  %lnot = xor i1 %call11, true, !dbg !6062
  %lnot12 = xor i1 %lnot, true, !dbg !6062
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !6062
  %conv13 = sext i32 %lnot.ext to i64, !dbg !6062
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6062
  %tobool = icmp ne i64 %expval, 0, !dbg !6062
  br i1 %tobool, label %if.then14, label %if.end18, !dbg !6059

if.then14:                                        ; preds = %do.body10
  br label %do.body15, !dbg !6062

do.body15:                                        ; preds = %if.then14
  %16 = call i64 @llvm.read_register.i64(metadata !3503), !dbg !6064
  %17 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %16) #23, !dbg !6064, !srcloc !6066
  call void @llvm.write_register.i64(metadata !3503, i64 %17), !dbg !6064
  br label %do.cond16, !dbg !6064

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6064

do.end17:                                         ; preds = %do.cond16
  br label %if.end18, !dbg !6064

if.end18:                                         ; preds = %do.end17, %do.body10
  br label %do.cond19, !dbg !6059

do.cond19:                                        ; preds = %if.end18
  br label %do.end20, !dbg !6059

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_cpu) #23, !dbg !6067
  call void @llvm.lifetime.end.p0(i64 24, ptr %cmd) #23, !dbg !6067
  call void @llvm.lifetime.end.p0(i64 8, ptr %perf) #23, !dbg !6067
  ret void, !dbg !6067
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @check_freqs(ptr noundef %policy, ptr noundef %mask, i32 noundef %freq) #2 align 16 !dbg !6068 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %freq.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  %cur_freq = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !6072, metadata !DIExpression()), !dbg !6078
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6073, metadata !DIExpression()), !dbg !6079
  store i32 %freq, ptr %freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %freq.addr, metadata !6074, metadata !DIExpression()), !dbg !6080
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #23, !dbg !6081
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6075, metadata !DIExpression()), !dbg !6082
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !6083
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 40, !dbg !6084
  %1 = load ptr, ptr %driver_data, align 8, !dbg !6084
  store ptr %1, ptr %data, align 8, !dbg !6082
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_freq) #23, !dbg !6085
  call void @llvm.dbg.declare(metadata ptr %cur_freq, metadata !6076, metadata !DIExpression()), !dbg !6086
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #23, !dbg !6087
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6077, metadata !DIExpression()), !dbg !6088
  store i32 0, ptr %i, align 4, !dbg !6089
  br label %for.cond, !dbg !6091

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !6092
  %cmp = icmp ult i32 %2, 100, !dbg !6094
  br i1 %cmp, label %for.body, label %for.end, !dbg !6095

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %policy.addr, align 8, !dbg !6096
  %4 = load ptr, ptr %mask.addr, align 8, !dbg !6098
  %5 = load ptr, ptr %data, align 8, !dbg !6099
  %call = call i32 @get_cur_val(ptr noundef %4, ptr noundef %5) #21, !dbg !6100
  %call1 = call i32 @extract_freq(ptr noundef %3, i32 noundef %call) #21, !dbg !6101
  store i32 %call1, ptr %cur_freq, align 4, !dbg !6102
  %6 = load i32, ptr %cur_freq, align 4, !dbg !6103
  %7 = load i32, ptr %freq.addr, align 4, !dbg !6105
  %cmp2 = icmp eq i32 %6, %7, !dbg !6106
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6107

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !6108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6108

if.end:                                           ; preds = %for.body
  call void @__const_udelay(i64 noundef 42950) #21, !dbg !6109
  br label %for.inc, !dbg !6114

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !dbg !6115
  %inc = add i32 %8, 1, !dbg !6115
  store i32 %inc, ptr %i, align 4, !dbg !6115
  br label %for.cond, !dbg !6116, !llvm.loop !6117

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !6119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6119

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #23, !dbg !6120
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_freq) #23, !dbg !6120
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #23, !dbg !6120
  %9 = load i32, ptr %retval, align 4, !dbg !6120
  ret i32 %9, !dbg !6120
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #7 align 16 !dbg !6121 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6126, metadata !DIExpression()), !dbg !6133
  br label %do.body, !dbg !6134

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #23, !dbg !6135
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !6127, metadata !DIExpression()), !dbg !6135
  %0 = load i32, ptr %val.addr, align 4, !dbg !6135
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6135
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !6135

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !6135
  %cmp = icmp eq i32 %2, 1, !dbg !6135
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !6135

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !6135
  %cmp1 = icmp eq i32 %3, -1, !dbg !6135
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !6135

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !6135
  br label %cond.end, !dbg !6135

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !6135

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !6135
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !6135
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !6136
  %cmp2 = icmp eq i32 %5, 1, !dbg !6136
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6135

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 1)) #23, !dbg !6137, !srcloc !6139
  br label %if.end8, !dbg !6136

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !6140
  %cmp3 = icmp eq i32 %6, -1, !dbg !6140
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !6136

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 1)) #23, !dbg !6141, !srcloc !6143
  br label %if.end, !dbg !6140

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !6140

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #23, !dbg !6144
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !6129, metadata !DIExpression()), !dbg !6144
  %7 = load i32, ptr %val.addr, align 4, !dbg !6144
  %conv = sext i32 %7 to i64, !dbg !6144
  %and = and i64 %conv, 4294967295, !dbg !6144
  %conv7 = trunc i64 %and to i32, !dbg !6144
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !6144
  %8 = load i32, ptr %pto_val__, align 4, !dbg !6144
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 1)) #23, !dbg !6144, !srcloc !6145
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #23, !dbg !6140
  br label %do.cond, !dbg !6144

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6144

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #23, !dbg !6134
  br label %do.end10, !dbg !6135

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !6146
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #7 align 16 !dbg !6147 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6152, metadata !DIExpression()), !dbg !6153
  ret void, !dbg !6154
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #7 align 16 !dbg !6155 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6159, metadata !DIExpression()), !dbg !6161
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !6160, metadata !DIExpression()), !dbg !6162
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6163
  %call = call i32 @cpumask_check(i32 noundef %0) #21, !dbg !6163
  %conv = zext i32 %call to i64, !dbg !6163
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !6163
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !6163
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6163
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #21, !dbg !6163
  ret i1 %call1, !dbg !6164
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_drv_write(ptr noundef %_cmd) #2 align 16 !dbg !6165 {
entry:
  %_cmd.addr = alloca ptr, align 8
  %cmd = alloca ptr, align 8
  store ptr %_cmd, ptr %_cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_cmd.addr, metadata !6167, metadata !DIExpression()), !dbg !6169
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd) #23, !dbg !6170
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !6168, metadata !DIExpression()), !dbg !6171
  %0 = load ptr, ptr %_cmd.addr, align 8, !dbg !6172
  store ptr %0, ptr %cmd, align 8, !dbg !6171
  %1 = load ptr, ptr %cmd, align 8, !dbg !6173
  %func = getelementptr inbounds %struct.drv_cmd, ptr %1, i32 0, i32 2, !dbg !6174
  %2 = load ptr, ptr %func, align 8, !dbg !6175
  %3 = load ptr, ptr %cmd, align 8, !dbg !6176
  %reg = getelementptr inbounds %struct.drv_cmd, ptr %3, i32 0, i32 0, !dbg !6177
  %4 = load ptr, ptr %reg, align 8, !dbg !6177
  %5 = load ptr, ptr %cmd, align 8, !dbg !6178
  %val = getelementptr inbounds %struct.drv_cmd, ptr %5, i32 0, i32 1, !dbg !6179
  %6 = load i32, ptr %val, align 8, !dbg !6179
  call void %2(ptr noundef %4, i32 noundef %6) #21, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd) #23, !dbg !6180
  ret void, !dbg !6180
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6181 dso_local void @smp_call_function_many(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #7 align 16 !dbg !6182 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #23, !dbg !6186
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6184, metadata !DIExpression()), !dbg !6186
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 1)) #23, !dbg !6186, !srcloc !6187
  %1 = icmp ult i8 %0, 2, !dbg !6186
  call void @llvm.assume(i1 %1), !dbg !6186
  store i8 %0, ptr %c, align 1, !dbg !6186
  %2 = load i8, ptr %c, align 1, !dbg !6186, !range !3719, !noundef !384
  %tobool = trunc i8 %2 to i1, !dbg !6186
  %frombool = zext i1 %tobool to i8, !dbg !6186
  store i8 %frombool, ptr %tmp, align 1, !dbg !6186
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #23, !dbg !6188
  %3 = load i8, ptr %tmp, align 1, !dbg !6186, !range !3719, !noundef !384
  %tobool1 = trunc i8 %3 to i1, !dbg !6186
  ret i1 %tobool1, !dbg !6189
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #19

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #20

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6190 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6193, metadata !DIExpression()), !dbg !6195
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6194, metadata !DIExpression()), !dbg !6196
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6197
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6198
  %div = udiv i64 %1, 64, !dbg !6198
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6199
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #21, !dbg !6200
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6201
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6202
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #21, !dbg !6203
  ret i1 %call, !dbg !6204
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6205 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6207, metadata !DIExpression()), !dbg !6209
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6208, metadata !DIExpression()), !dbg !6210
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6211
  %1 = load i64, ptr %size.addr, align 8, !dbg !6212
  %conv = trunc i64 %1 to i32, !dbg !6212
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #21, !dbg !6213
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6214
  %3 = load i64, ptr %size.addr, align 8, !dbg !6214
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #21, !dbg !6214
  ret void, !dbg !6215
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !6216 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6218, metadata !DIExpression()), !dbg !6220
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6219, metadata !DIExpression()), !dbg !6221
  ret i1 true, !dbg !6222
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6223 dso_local void @__const_udelay(i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpufreq_table_find_index_dl(ptr noundef %policy, i32 noundef %target_freq, i1 noundef zeroext %efficiencies) #6 align 16 !dbg !6227 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %target_freq.addr = alloca i32, align 4
  %efficiencies.addr = alloca i8, align 1
  %table = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %freq = alloca i32, align 4
  %idx = alloca i32, align 4
  %best = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !6231, metadata !DIExpression()), !dbg !6239
  store i32 %target_freq, ptr %target_freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_freq.addr, metadata !6232, metadata !DIExpression()), !dbg !6240
  %frombool = zext i1 %efficiencies to i8
  store i8 %frombool, ptr %efficiencies.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %efficiencies.addr, metadata !6233, metadata !DIExpression()), !dbg !6241
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #23, !dbg !6242
  call void @llvm.dbg.declare(metadata ptr %table, metadata !6234, metadata !DIExpression()), !dbg !6243
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !6244
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20, !dbg !6245
  %1 = load ptr, ptr %freq_table, align 8, !dbg !6245
  store ptr %1, ptr %table, align 8, !dbg !6243
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #23, !dbg !6246
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6235, metadata !DIExpression()), !dbg !6247
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #23, !dbg !6248
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !6236, metadata !DIExpression()), !dbg !6249
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #23, !dbg !6250
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !6237, metadata !DIExpression()), !dbg !6251
  call void @llvm.lifetime.start.p0(i64 4, ptr %best) #23, !dbg !6250
  call void @llvm.dbg.declare(metadata ptr %best, metadata !6238, metadata !DIExpression()), !dbg !6252
  store i32 -1, ptr %best, align 4, !dbg !6252
  %2 = load ptr, ptr %table, align 8, !dbg !6253
  store ptr %2, ptr %pos, align 8, !dbg !6253
  store i32 0, ptr %idx, align 4, !dbg !6253
  br label %for.cond, !dbg !6253

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %pos, align 8, !dbg !6255
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %3, i32 0, i32 2, !dbg !6255
  %4 = load i32, ptr %frequency, align 4, !dbg !6255
  %cmp = icmp ne i32 %4, -2, !dbg !6255
  br i1 %cmp, label %for.body, label %for.end, !dbg !6253

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pos, align 8, !dbg !6257
  %frequency1 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %5, i32 0, i32 2, !dbg !6257
  %6 = load i32, ptr %frequency1, align 4, !dbg !6257
  %cmp2 = icmp eq i32 %6, -1, !dbg !6257
  br i1 %cmp2, label %if.then, label %if.else, !dbg !6255

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !6257

if.else:                                          ; preds = %for.body
  %7 = load i8, ptr %efficiencies.addr, align 1, !dbg !6259, !range !3719, !noundef !384
  %tobool = trunc i8 %7 to i1, !dbg !6259
  br i1 %tobool, label %land.lhs.true, label %if.else5, !dbg !6259

land.lhs.true:                                    ; preds = %if.else
  %8 = load ptr, ptr %pos, align 8, !dbg !6259
  %flags = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %8, i32 0, i32 0, !dbg !6259
  %9 = load i32, ptr %flags, align 4, !dbg !6259
  %and = and i32 %9, 2, !dbg !6259
  %tobool3 = icmp ne i32 %and, 0, !dbg !6259
  br i1 %tobool3, label %if.then4, label %if.else5, !dbg !6257

if.then4:                                         ; preds = %land.lhs.true
  br label %for.inc, !dbg !6259

if.else5:                                         ; preds = %land.lhs.true, %if.else
  %10 = load ptr, ptr %pos, align 8, !dbg !6261
  %frequency6 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %10, i32 0, i32 2, !dbg !6263
  %11 = load i32, ptr %frequency6, align 4, !dbg !6263
  store i32 %11, ptr %freq, align 4, !dbg !6264
  %12 = load i32, ptr %freq, align 4, !dbg !6265
  %13 = load i32, ptr %target_freq.addr, align 4, !dbg !6267
  %cmp7 = icmp eq i32 %12, %13, !dbg !6268
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !6269

if.then8:                                         ; preds = %if.else5
  %14 = load i32, ptr %idx, align 4, !dbg !6270
  store i32 %14, ptr %retval, align 4, !dbg !6271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6271

if.end:                                           ; preds = %if.else5
  %15 = load i32, ptr %freq, align 4, !dbg !6272
  %16 = load i32, ptr %target_freq.addr, align 4, !dbg !6274
  %cmp9 = icmp ugt i32 %15, %16, !dbg !6275
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6276

if.then10:                                        ; preds = %if.end
  %17 = load i32, ptr %idx, align 4, !dbg !6277
  store i32 %17, ptr %best, align 4, !dbg !6279
  br label %for.inc, !dbg !6280

if.end11:                                         ; preds = %if.end
  %18 = load i32, ptr %best, align 4, !dbg !6281
  %cmp12 = icmp eq i32 %18, -1, !dbg !6283
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6284

if.then13:                                        ; preds = %if.end11
  %19 = load i32, ptr %idx, align 4, !dbg !6285
  store i32 %19, ptr %retval, align 4, !dbg !6286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6286

if.end14:                                         ; preds = %if.end11
  %20 = load i32, ptr %best, align 4, !dbg !6287
  store i32 %20, ptr %retval, align 4, !dbg !6288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6288

for.inc:                                          ; preds = %if.then10, %if.then4, %if.then
  %21 = load ptr, ptr %pos, align 8, !dbg !6255
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %21, i32 1, !dbg !6255
  store ptr %incdec.ptr, ptr %pos, align 8, !dbg !6255
  %22 = load i32, ptr %idx, align 4, !dbg !6255
  %inc = add i32 %22, 1, !dbg !6255
  store i32 %inc, ptr %idx, align 4, !dbg !6255
  br label %for.cond, !dbg !6255, !llvm.loop !6289

for.end:                                          ; preds = %for.cond
  %23 = load i32, ptr %best, align 4, !dbg !6291
  store i32 %23, ptr %retval, align 4, !dbg !6292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6292

cleanup:                                          ; preds = %for.end, %if.end14, %if.then13, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %best) #23, !dbg !6293
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #23, !dbg !6293
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #23, !dbg !6293
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #23, !dbg !6293
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #23, !dbg !6293
  %24 = load i32, ptr %retval, align 4, !dbg !6293
  ret i32 %24, !dbg !6293
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpufreq_boost_down_prep(i32 noundef %cpu) #2 align 16 !dbg !6294 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6296, metadata !DIExpression()), !dbg !6297
  %call = call i32 @boost_set_msr(i1 noundef zeroext true) #21, !dbg !6298
  ret i32 %call, !dbg !6299
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_freqdomain_cpus(ptr noundef %policy, ptr noundef %buf) #2 align 16 !dbg !6300 {
entry:
  %retval = alloca i64, align 8
  %policy.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !6302, metadata !DIExpression()), !dbg !6305
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6303, metadata !DIExpression()), !dbg !6306
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #23, !dbg !6307
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6304, metadata !DIExpression()), !dbg !6308
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !6309
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 40, !dbg !6310
  %1 = load ptr, ptr %driver_data, align 8, !dbg !6310
  store ptr %1, ptr %data, align 8, !dbg !6308
  %2 = load ptr, ptr %data, align 8, !dbg !6311
  %tobool = icmp ne ptr %2, null, !dbg !6311
  %lnot = xor i1 %tobool, true, !dbg !6311
  %lnot1 = xor i1 %lnot, true, !dbg !6311
  %lnot2 = xor i1 %lnot1, true, !dbg !6311
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6311
  %conv = sext i32 %lnot.ext to i64, !dbg !6311
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6311
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6311
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6313

if.then:                                          ; preds = %entry
  store i64 -19, ptr %retval, align 8, !dbg !6314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6314

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %data, align 8, !dbg !6315
  %freqdomain_cpus = getelementptr inbounds %struct.acpi_cpufreq_data, ptr %3, i32 0, i32 3, !dbg !6316
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %freqdomain_cpus, i64 0, i64 0, !dbg !6315
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !6317
  %call = call i64 @cpufreq_show_cpus(ptr noundef %arraydecay, ptr noundef %4) #21, !dbg !6318
  store i64 %call, ptr %retval, align 8, !dbg !6319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6319

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #23, !dbg !6320
  %5 = load i64, ptr %retval, align 8, !dbg !6320
  ret i64 %5, !dbg !6320
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6321 dso_local i64 @cpufreq_show_cpus(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_cpb(ptr noundef %policy, ptr noundef %buf) #2 align 16 !dbg !6324 {
entry:
  %policy.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !6326, metadata !DIExpression()), !dbg !6328
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6327, metadata !DIExpression()), !dbg !6329
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6330
  %1 = load i8, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @acpi_cpufreq_driver, i32 0, i32 22), align 8, !dbg !6331, !range !3719, !noundef !384
  %tobool = trunc i8 %1 to i1, !dbg !6331
  %conv = zext i1 %tobool to i32, !dbg !6332
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.12, i32 noundef %conv) #21, !dbg !6333
  %conv1 = sext i32 %call to i64, !dbg !6333
  ret i64 %conv1, !dbg !6334
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @store_cpb(ptr noundef %policy, ptr noundef %buf, i64 noundef %count) #2 align 16 !dbg !6335 {
entry:
  %retval = alloca i64, align 8
  %policy.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !6337, metadata !DIExpression()), !dbg !6342
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6338, metadata !DIExpression()), !dbg !6343
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6339, metadata !DIExpression()), !dbg !6344
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #23, !dbg !6345
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6340, metadata !DIExpression()), !dbg !6346
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #23, !dbg !6347
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6341, metadata !DIExpression()), !dbg !6348
  store i32 0, ptr %val, align 4, !dbg !6348
  %0 = load ptr, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @acpi_cpufreq_driver, i32 0, i32 23), align 8, !dbg !6349
  %tobool = icmp ne ptr %0, null, !dbg !6351
  br i1 %tobool, label %if.end, label %if.then, !dbg !6352

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !6353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6353

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !6354
  %call = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef %val) #21, !dbg !6355
  store i32 %call, ptr %ret, align 4, !dbg !6356
  %2 = load i32, ptr %ret, align 4, !dbg !6357
  %tobool1 = icmp ne i32 %2, 0, !dbg !6357
  br i1 %tobool1, label %if.then2, label %lor.lhs.false, !dbg !6359

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, ptr %val, align 4, !dbg !6360
  %cmp = icmp ugt i32 %3, 1, !dbg !6361
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6362

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  store i64 -22, ptr %retval, align 8, !dbg !6363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6363

if.end3:                                          ; preds = %lor.lhs.false
  call void @cpus_read_lock() #21, !dbg !6364
  %4 = load ptr, ptr %policy.addr, align 8, !dbg !6365
  %5 = load i32, ptr %val, align 4, !dbg !6366
  %call4 = call i32 @set_boost(ptr noundef %4, i32 noundef %5) #21, !dbg !6367
  call void @cpus_read_unlock() #21, !dbg !6368
  %6 = load i64, ptr %count.addr, align 8, !dbg !6369
  store i64 %6, ptr %retval, align 8, !dbg !6370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6370

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #23, !dbg !6371
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #23, !dbg !6371
  %7 = load i64, ptr %retval, align 8, !dbg !6371
  ret i64 %7, !dbg !6371
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6372 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6376 dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6380 dso_local void @cpus_read_lock() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6382 dso_local void @cpus_read_unlock() #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #6 align 16 !dbg !6383 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6387, metadata !DIExpression()), !dbg !6393
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6388, metadata !DIExpression()), !dbg !6394
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6389, metadata !DIExpression()), !dbg !6395
  %0 = load i64, ptr %size.addr, align 8, !dbg !6396
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6396
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !6396

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6396
  %cmp = icmp ule i64 %2, 64, !dbg !6396
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !6396

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !6396
  %cmp2 = icmp ugt i64 %3, 0, !dbg !6396
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !6397

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #23, !dbg !6398
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6390, metadata !DIExpression()), !dbg !6399
  %4 = load i64, ptr %offset.addr, align 8, !dbg !6400
  %5 = load i64, ptr %size.addr, align 8, !dbg !6400
  %cmp3 = icmp uge i64 %4, %5, !dbg !6400
  %lnot = xor i1 %cmp3, true, !dbg !6400
  %lnot4 = xor i1 %lnot, true, !dbg !6400
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6400
  %conv = sext i32 %lnot.ext to i64, !dbg !6400
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6400
  %tobool = icmp ne i64 %expval, 0, !dbg !6400
  br i1 %tobool, label %if.then5, label %if.end, !dbg !6402

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6403
  store i64 %6, ptr %retval, align 8, !dbg !6404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6404

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !6405
  %8 = load i64, ptr %7, align 8, !dbg !6406
  %9 = load i64, ptr %offset.addr, align 8, !dbg !6407
  %shl = shl i64 1, %9, !dbg !6407
  %sub = sub i64 -1, %shl, !dbg !6407
  %add = add i64 %sub, 1, !dbg !6407
  %10 = load i64, ptr %size.addr, align 8, !dbg !6407
  %sub6 = sub i64 %10, 1, !dbg !6407
  %sub7 = sub i64 63, %sub6, !dbg !6407
  %shr = lshr i64 -1, %sub7, !dbg !6407
  %and = and i64 %add, %shr, !dbg !6407
  %add8 = add i64 0, %and, !dbg !6407
  %and9 = and i64 %8, %add8, !dbg !6408
  store i64 %and9, ptr %val, align 8, !dbg !6409
  %11 = load i64, ptr %val, align 8, !dbg !6410
  %tobool10 = icmp ne i64 %11, 0, !dbg !6410
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !6410

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !6411
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !6411
  br i1 %13, label %cond.true11, label %cond.false, !dbg !6411

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !6411
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !6411
  %cast = trunc i64 %15 to i32, !dbg !6411
  %conv12 = sext i32 %cast to i64, !dbg !6411
  br label %cond.end, !dbg !6411

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !6411
  %call = call i64 @variable__ffs(i64 noundef %16) #21, !dbg !6411
  br label %cond.end, !dbg !6411

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !6411
  br label %cond.end14, !dbg !6410

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !6412
  br label %cond.end14, !dbg !6410

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !6410
  store i64 %cond15, ptr %retval, align 8, !dbg !6413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6413

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #23, !dbg !6414
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !6415
  %19 = load i64, ptr %size.addr, align 8, !dbg !6416
  %20 = load i64, ptr %offset.addr, align 8, !dbg !6417
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #21, !dbg !6418
  store i64 %call17, ptr %retval, align 8, !dbg !6419
  br label %return, !dbg !6419

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !6420
  ret i64 %21, !dbg !6420
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6421 dso_local void @free_percpu(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6423 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6424 dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_cpufreq_probe(ptr noundef %pdev) #0 section ".init.text" align 16 !dbg !6427 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %attr = alloca ptr, align 8
  %tmp11 = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6429, metadata !DIExpression()), !dbg !6434
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #23, !dbg !6435
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6430, metadata !DIExpression()), !dbg !6436
  %0 = load i32, ptr @acpi_disabled, align 4, !dbg !6437
  %tobool = icmp ne i32 %0, 0, !dbg !6437
  br i1 %tobool, label %if.then, label %if.end, !dbg !6439

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !6440
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6440

if.end:                                           ; preds = %entry
  %call = call ptr @cpufreq_get_current_driver() #21, !dbg !6441
  %tobool1 = icmp ne ptr %call, null, !dbg !6441
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !6443

if.then2:                                         ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !6444
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6444

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %tmp, align 4, !dbg !6445
  %1 = load i32, ptr %tmp, align 4, !dbg !6448
  %call4 = call i32 @acpi_cpufreq_early_init() #22, !dbg !6449
  store i32 %call4, ptr %ret, align 4, !dbg !6450
  %2 = load i32, ptr %ret, align 4, !dbg !6451
  %tobool5 = icmp ne i32 %2, 0, !dbg !6451
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6453

if.then6:                                         ; preds = %if.end3
  %3 = load i32, ptr %ret, align 4, !dbg !6454
  store i32 %3, ptr %retval, align 4, !dbg !6455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6455

if.end7:                                          ; preds = %if.end3
  %call8 = call i32 @check_amd_hwpstate_cpu(i32 noundef 0) #21, !dbg !6456
  %tobool9 = icmp ne i32 %call8, 0, !dbg !6456
  br i1 %tobool9, label %if.end15, label %if.then10, !dbg !6457

if.then10:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #23, !dbg !6458
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !6431, metadata !DIExpression()), !dbg !6459
  store i32 0, ptr %tmp11, align 4, !dbg !6460
  %4 = load i32, ptr %tmp11, align 4, !dbg !6463
  store ptr @acpi_cpufreq_attr, ptr %attr, align 8, !dbg !6464
  br label %for.cond, !dbg !6466

for.cond:                                         ; preds = %for.inc, %if.then10
  %5 = load ptr, ptr %attr, align 8, !dbg !6467
  %6 = load ptr, ptr %5, align 8, !dbg !6469
  %tobool12 = icmp ne ptr %6, null, !dbg !6470
  br i1 %tobool12, label %for.body, label %for.end, !dbg !6470

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %attr, align 8, !dbg !6471
  %8 = load ptr, ptr %7, align 8, !dbg !6473
  %cmp = icmp eq ptr %8, @cpb, !dbg !6474
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !6475

if.then13:                                        ; preds = %for.body
  %9 = load ptr, ptr %attr, align 8, !dbg !6476
  store ptr null, ptr %9, align 8, !dbg !6478
  br label %for.end, !dbg !6479

if.end14:                                         ; preds = %for.body
  br label %for.inc, !dbg !6480

for.inc:                                          ; preds = %if.end14
  %10 = load ptr, ptr %attr, align 8, !dbg !6481
  %incdec.ptr = getelementptr ptr, ptr %10, i32 1, !dbg !6481
  store ptr %incdec.ptr, ptr %attr, align 8, !dbg !6481
  br label %for.cond, !dbg !6482, !llvm.loop !6483

for.end:                                          ; preds = %if.then13, %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #23, !dbg !6485
  br label %if.end15, !dbg !6486

if.end15:                                         ; preds = %for.end, %if.end7
  call void @acpi_cpufreq_boost_init() #22, !dbg !6487
  %call16 = call i32 @cpufreq_register_driver(ptr noundef @acpi_cpufreq_driver) #21, !dbg !6488
  store i32 %call16, ptr %ret, align 4, !dbg !6489
  %11 = load i32, ptr %ret, align 4, !dbg !6490
  %tobool17 = icmp ne i32 %11, 0, !dbg !6490
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6492

if.then18:                                        ; preds = %if.end15
  call void @free_acpi_perf_data() #21, !dbg !6493
  br label %if.end19, !dbg !6495

if.end19:                                         ; preds = %if.then18, %if.end15
  %12 = load i32, ptr %ret, align 4, !dbg !6496
  store i32 %12, ptr %retval, align 4, !dbg !6497
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6497

cleanup:                                          ; preds = %if.end19, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #23, !dbg !6498
  %13 = load i32, ptr %retval, align 4, !dbg !6498
  ret i32 %13, !dbg !6498
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6499 dso_local ptr @cpufreq_get_current_driver() #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_cpufreq_early_init() #0 section ".init.text" align 16 !dbg !6502 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #23, !dbg !6514
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6504, metadata !DIExpression()), !dbg !6515
  store i32 0, ptr %tmp, align 4, !dbg !6516
  %0 = load i32, ptr %tmp, align 4, !dbg !6519
  %call = call noalias ptr @__alloc_percpu(i64 noundef 112, i64 noundef 8) #24, !dbg !6520
  store ptr %call, ptr @acpi_perf_data, align 8, !dbg !6521
  %1 = load ptr, ptr @acpi_perf_data, align 8, !dbg !6522
  %tobool = icmp ne ptr %1, null, !dbg !6522
  br i1 %tobool, label %if.end, label %if.then, !dbg !6524

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp1, align 4, !dbg !6525
  %2 = load i32, ptr %tmp1, align 4, !dbg !6529
  store i32 -12, ptr %retval, align 4, !dbg !6530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6530

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !6531
  br label %for.cond, !dbg !6531

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !6532
  %conv = zext i32 %3 to i64, !dbg !6532
  %call2 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #21, !dbg !6532
  %conv3 = trunc i64 %call2 to i32, !dbg !6532
  store i32 %conv3, ptr %i, align 4, !dbg !6532
  %4 = load i32, ptr %i, align 4, !dbg !6532
  %cmp = icmp ult i32 %4, 64, !dbg !6532
  br i1 %cmp, label %for.body, label %for.end, !dbg !6531

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !6533

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !6534
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6505, metadata !DIExpression()), !dbg !6534
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6534
  %5 = load ptr, ptr %__vpp_verify, align 8, !dbg !6534
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !6533
  br label %do.cond, !dbg !6534

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6534

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #23, !dbg !6535
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6512, metadata !DIExpression()), !dbg !6535
  %6 = load ptr, ptr @acpi_perf_data, align 8, !dbg !6535
  %7 = ptrtoint ptr %6 to i64, !dbg !6535
  store i64 %7, ptr %__ptr, align 8, !dbg !6535
  %8 = load i64, ptr %__ptr, align 8, !dbg !6535
  %9 = load i32, ptr %i, align 4, !dbg !6535
  %idxprom = zext i32 %9 to i64, !dbg !6535
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6535
  %10 = load i64, ptr %arrayidx, align 8, !dbg !6535
  %add = add i64 %8, %10, !dbg !6535
  %11 = inttoptr i64 %add to ptr, !dbg !6535
  store ptr %11, ptr %tmp6, align 8, !dbg !6535
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #23, !dbg !6533
  %12 = load ptr, ptr %tmp6, align 8, !dbg !6535
  store ptr %12, ptr %tmp5, align 8, !dbg !6534
  %13 = load ptr, ptr %tmp5, align 8, !dbg !6533
  %shared_cpu_map = getelementptr inbounds %struct.acpi_processor_performance, ptr %13, i32 0, i32 7, !dbg !6536
  %14 = load i32, ptr %i, align 4, !dbg !6537
  %call7 = call i32 @cpu_to_node(i32 noundef %14) #21, !dbg !6538
  %call8 = call zeroext i1 @zalloc_cpumask_var_node(ptr noundef %shared_cpu_map, i32 noundef 3264, i32 noundef %call7) #21, !dbg !6539
  br i1 %call8, label %if.end10, label %if.then9, !dbg !6540

if.then9:                                         ; preds = %do.end
  call void @free_acpi_perf_data() #21, !dbg !6541
  store i32 -12, ptr %retval, align 4, !dbg !6543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6543

if.end10:                                         ; preds = %do.end
  br label %for.inc, !dbg !6544

for.inc:                                          ; preds = %if.end10
  %15 = load i32, ptr %i, align 4, !dbg !6532
  %inc = add i32 %15, 1, !dbg !6532
  store i32 %inc, ptr %i, align 4, !dbg !6532
  br label %for.cond, !dbg !6532, !llvm.loop !6545

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr @acpi_perf_data, align 8, !dbg !6547
  %call11 = call i32 @acpi_processor_preregister_performance(ptr noundef %16) #21, !dbg !6548
  store i32 0, ptr %retval, align 4, !dbg !6549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6549

cleanup:                                          ; preds = %for.end, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #23, !dbg !6550
  %17 = load i32, ptr %retval, align 4, !dbg !6550
  ret i32 %17, !dbg !6550
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @acpi_cpufreq_boost_init() #0 section ".init.text" align 16 !dbg !6551 {
entry:
  %tmp = alloca i32, align 4
  br i1 false, label %cond.true, label %cond.false, !dbg !6552

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end, label %lor.lhs.false, !dbg !6554

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 226, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #21, !dbg !6554
  br i1 %call, label %if.end, label %lor.lhs.false, !dbg !6552

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  br i1 false, label %cond.true1, label %cond.false2, !dbg !6555

cond.true1:                                       ; preds = %lor.lhs.false
  br i1 true, label %if.end, label %if.then, !dbg !6556

cond.false2:                                      ; preds = %lor.lhs.false
  %call3 = call zeroext i1 @arch_test_bit(i64 noundef 449, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #21, !dbg !6556
  br i1 %call3, label %if.end, label %if.then, !dbg !6555

if.then:                                          ; preds = %cond.false2, %cond.true1
  store i32 0, ptr %tmp, align 4, !dbg !6557
  %0 = load i32, ptr %tmp, align 4, !dbg !6561
  br label %return, !dbg !6562

if.end:                                           ; preds = %cond.false2, %cond.true1, %cond.false, %cond.true
  store ptr @set_boost, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @acpi_cpufreq_driver, i32 0, i32 23), align 8, !dbg !6563
  %call4 = call zeroext i1 @boost_state(i32 noundef 0) #21, !dbg !6564
  %frombool = zext i1 %call4 to i8, !dbg !6565
  store i8 %frombool, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @acpi_cpufreq_driver, i32 0, i32 22), align 8, !dbg !6565
  br label %return, !dbg !6566

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6566
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6567 dso_local i32 @cpufreq_register_driver(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6570 dso_local noalias ptr @__alloc_percpu(i64 noundef, i64 noundef) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @zalloc_cpumask_var_node(ptr noundef %mask, i32 noundef %flags, i32 noundef %node) #6 align 16 !dbg !6573 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6577, metadata !DIExpression()), !dbg !6580
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6578, metadata !DIExpression()), !dbg !6581
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6579, metadata !DIExpression()), !dbg !6582
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !6583
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %0, i64 0, i64 0, !dbg !6584
  call void @cpumask_clear(ptr noundef %arraydecay) #21, !dbg !6585
  ret i1 true, !dbg !6586
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_to_node(i32 noundef %cpu) #6 align 16 !dbg !6587 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6592, metadata !DIExpression()), !dbg !6598
  br label %do.body, !dbg !6599

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #23, !dbg !6600
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6593, metadata !DIExpression()), !dbg !6600
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6600
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6600
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #23, !dbg !6599
  br label %do.end, !dbg !6600

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #23, !dbg !6601
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6596, metadata !DIExpression()), !dbg !6601
  store i64 ptrtoint (ptr @numa_node to i64), ptr %__ptr, align 8, !dbg !6601
  %1 = load i64, ptr %__ptr, align 8, !dbg !6601
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !6601
  %idxprom = sext i32 %2 to i64, !dbg !6601
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6601
  %3 = load i64, ptr %arrayidx, align 8, !dbg !6601
  %add = add i64 %1, %3, !dbg !6601
  %4 = inttoptr i64 %add to ptr, !dbg !6601
  store ptr %4, ptr %tmp1, align 8, !dbg !6601
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #23, !dbg !6599
  %5 = load ptr, ptr %tmp1, align 8, !dbg !6601
  store ptr %5, ptr %tmp, align 8, !dbg !6600
  %6 = load ptr, ptr %tmp, align 8, !dbg !6599
  %7 = load i32, ptr %6, align 4, !dbg !6602
  ret i32 %7, !dbg !6603
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6604 dso_local i32 @acpi_processor_preregister_performance(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @boost_state(i32 noundef %cpu) #2 align 16 !dbg !6607 {
entry:
  %retval = alloca i1, align 1
  %cpu.addr = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %msr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6611, metadata !DIExpression()), !dbg !6615
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #23, !dbg !6616
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !6612, metadata !DIExpression()), !dbg !6617
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #23, !dbg !6616
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !6613, metadata !DIExpression()), !dbg !6618
  call void @llvm.lifetime.start.p0(i64 8, ptr %msr) #23, !dbg !6619
  call void @llvm.dbg.declare(metadata ptr %msr, metadata !6614, metadata !DIExpression()), !dbg !6620
  %0 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !6621
  %conv = zext i8 %0 to i32, !dbg !6622
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 5, label %sw.bb
    i32 10, label %sw.bb
    i32 9, label %sw.bb3
    i32 2, label %sw.bb3
  ], !dbg !6623

sw.bb:                                            ; preds = %entry, %entry, %entry
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !6624
  %call = call i32 @rdmsr_on_cpu(i32 noundef %1, i32 noundef 416, ptr noundef %lo, ptr noundef %hi) #21, !dbg !6626
  %2 = load i32, ptr %lo, align 4, !dbg !6627
  %conv1 = zext i32 %2 to i64, !dbg !6627
  %3 = load i32, ptr %hi, align 4, !dbg !6628
  %conv2 = zext i32 %3 to i64, !dbg !6629
  %shl = shl i64 %conv2, 32, !dbg !6630
  %or = or i64 %conv1, %shl, !dbg !6631
  store i64 %or, ptr %msr, align 8, !dbg !6632
  %4 = load i64, ptr %msr, align 8, !dbg !6633
  %and = and i64 %4, 274877906944, !dbg !6634
  %tobool = icmp ne i64 %and, 0, !dbg !6635
  %lnot = xor i1 %tobool, true, !dbg !6635
  store i1 %lnot, ptr %retval, align 1, !dbg !6636
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6636

sw.bb3:                                           ; preds = %entry, %entry
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !6637
  %call4 = call i32 @rdmsr_on_cpu(i32 noundef %5, i32 noundef -1073676267, ptr noundef %lo, ptr noundef %hi) #21, !dbg !6638
  %6 = load i32, ptr %lo, align 4, !dbg !6639
  %conv5 = zext i32 %6 to i64, !dbg !6639
  %7 = load i32, ptr %hi, align 4, !dbg !6640
  %conv6 = zext i32 %7 to i64, !dbg !6641
  %shl7 = shl i64 %conv6, 32, !dbg !6642
  %or8 = or i64 %conv5, %shl7, !dbg !6643
  store i64 %or8, ptr %msr, align 8, !dbg !6644
  %8 = load i64, ptr %msr, align 8, !dbg !6645
  %and9 = and i64 %8, 33554432, !dbg !6646
  %tobool10 = icmp ne i64 %and9, 0, !dbg !6647
  %lnot11 = xor i1 %tobool10, true, !dbg !6647
  store i1 %lnot11, ptr %retval, align 1, !dbg !6648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6648

sw.epilog:                                        ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6649
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6649

cleanup:                                          ; preds = %sw.epilog, %sw.bb3, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %msr) #23, !dbg !6650
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #23, !dbg !6650
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #23, !dbg !6650
  %9 = load i1, ptr %retval, align 1, !dbg !6650
  ret i1 %9, !dbg !6650
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6651 dso_local i32 @rdmsr_on_cpu(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #20 = { nocallback nounwind }
attributes #21 = { noredzone }
attributes #22 = { cold noredzone }
attributes #23 = { nounwind }
attributes #24 = { noredzone allocsize(0) }
attributes #25 = { noredzone allocsize(0,1) }
attributes #26 = { noredzone allocsize(2) }
attributes #27 = { noredzone noreturn }
attributes #28 = { nounwind memory(none) }
attributes #29 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3503}
!llvm.module.flags = !{!3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511}
!llvm.ident = !{!3512}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author247", scope: !2, file: !3, line: 38, type: !1316, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/cpufreq/.acpi-cpufreq.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/cpufreq/acpi-cpufreq\22 -D KBUILD_BASENAME=\22acpi_cpufreq\22 -D KBUILD_MODNAME=\22acpi_cpufreq\22 -D __KBUILD_MODNAME=kmod_acpi_cpufreq -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/cpufreq/acpi-cpufreq.ll drivers/cpufreq/acpi-cpufreq.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !141, globals: !1313, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/cpufreq/acpi-cpufreq.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2ee9736a1c03aac36bfb8bebabea7119")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !59, !66, !70, !76, !85, !90, !95, !101, !107, !113, !120, !125, !131}
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
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !54, line: 41, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!57 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!58 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !54, line: 99, baseType: !7, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!62 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!63 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!64 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!65 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !54, line: 80, baseType: !7, size: 32, elements: !67)
!67 = !{!68, !69}
!68 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!69 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !71, line: 30, baseType: !7, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!72 = !{!73, !74, !75}
!73 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!74 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!75 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84}
!78 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!79 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!80 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!81 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!82 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!83 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!84 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !86)
!86 = !{!87, !88, !89}
!87 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!88 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!89 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!93 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!94 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !96)
!96 = !{!97, !98, !99, !100}
!97 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!98 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!99 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!100 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpufreq_table_sorting", file: !102, line: 41, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/cpufreq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad5b2d8eef98749599a01da4cdfaed5a")
!103 = !{!104, !105, !106}
!104 = !DIEnumerator(name: "CPUFREQ_TABLE_UNSORTED", value: 0)
!105 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_ASCENDING", value: 1)
!106 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_DESCENDING", value: 2)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !108, line: 16, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "TT_NONE", value: 0)
!111 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!112 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !114, line: 51, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!115 = !{!116, !117, !118, !119}
!116 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!117 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!118 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!119 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !121, line: 10, baseType: !7, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!122 = !{!123, !124}
!123 = !DIEnumerator(name: "false", value: 0)
!124 = !DIEnumerator(name: "true", value: 1)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 42, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129, !130}
!127 = !DIEnumerator(name: "UNDEFINED_CAPABLE", value: 0)
!128 = !DIEnumerator(name: "SYSTEM_INTEL_MSR_CAPABLE", value: 1)
!129 = !DIEnumerator(name: "SYSTEM_AMD_MSR_CAPABLE", value: 2)
!130 = !DIEnumerator(name: "SYSTEM_IO_CAPABLE", value: 3)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !132, line: 364, baseType: !7, size: 32, elements: !133)
!132 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!133 = !{!134, !135, !136, !137, !138, !139, !140}
!134 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!135 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!136 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!137 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!138 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!139 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!140 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!141 = !{!142, !319, !1191, !297, !1255, !1256, !46, !1174, !1303, !1304, !7, !412, !1306, !1308, !1093, !411, !1310, !283, !604, !975, !1311}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !144)
!144 = !{!145, !146, !153, !158, !839, !865, !866, !867, !868, !872, !875, !876, !877, !930, !931, !932, !933, !934, !935, !936, !937, !945, !949, !969, !987, !988, !989, !990, !999, !1023, !1024, !1027, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1041, !1042, !1149, !1157, !1158, !1159, !1161, !1165, !1166, !1170, !1171, !1172, !1173, !1175, !1176, !1177, !1184, !1185, !1186, !1190}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !143, file: !13, line: 403, baseType: !12, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !143, file: !13, line: 406, baseType: !147, size: 128, offset: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !148, line: 190, size: 128, elements: !149)
!148 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!149 = !{!150, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !148, line: 191, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !147, file: !148, line: 191, baseType: !151, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !13, line: 409, baseType: !154, size: 448, offset: 192)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 448, elements: !156)
!155 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!156 = !{!157}
!157 = !DISubrange(count: 56)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !143, file: !13, line: 417, baseType: !159, size: 768, offset: 640)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !160)
!160 = !{!161, !822, !823, !824, !827}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !159, file: !13, line: 46, baseType: !162, size: 512)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !163, line: 64, size: 512, elements: !164)
!163 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!164 = !{!165, !168, !169, !171, !260, !692, !807, !817, !818, !819, !820, !821}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !163, line: 65, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !162, file: !163, line: 66, baseType: !147, size: 128, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !162, file: !163, line: 67, baseType: !170, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !162, file: !163, line: 68, baseType: !172, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !163, line: 168, size: 768, elements: !174)
!174 = !{!175, !176, !219, !220}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !173, file: !163, line: 169, baseType: !147, size: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !173, file: !163, line: 170, baseType: !177, size: 32, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !178, line: 29, baseType: !179)
!178 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !178, line: 17, size: 32, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !178, line: 18, baseType: !182, size: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !178, line: 18, size: 32, elements: !183)
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !182, file: !178, line: 19, baseType: !185, size: 32)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !186, line: 14, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !185, file: !186, line: 15, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !190, line: 44, baseType: !191)
!190 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !190, line: 14, size: 32, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !190, line: 15, baseType: !194, size: 32)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !190, line: 15, size: 32, elements: !195)
!195 = !{!196, !201, !211}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !194, file: !190, line: 16, baseType: !197, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !148, line: 174, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 172, size: 32, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !198, file: !148, line: 173, baseType: !46, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !190, line: 24, baseType: !202, size: 16)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !194, file: !190, line: 24, size: 16, elements: !203)
!203 = !{!204, !210}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !202, file: !190, line: 25, baseType: !205, size: 8)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !206, line: 17, baseType: !207)
!206 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !208, line: 21, baseType: !209)
!208 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!209 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !202, file: !190, line: 26, baseType: !205, size: 8, offset: 8)
!211 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !190, line: 28, baseType: !212, size: 32)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !194, file: !190, line: 28, size: 32, elements: !213)
!213 = !{!214, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !212, file: !190, line: 29, baseType: !215, size: 16)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !206, line: 19, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !208, line: 24, baseType: !217)
!217 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !212, file: !190, line: 30, baseType: !215, size: 16, offset: 16)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !173, file: !163, line: 171, baseType: !162, size: 512, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !173, file: !163, line: 172, baseType: !221, size: 64, offset: 704)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !163, line: 133, size: 192, elements: !224)
!224 = !{!225, !232, !237}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !223, file: !163, line: 134, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!46, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !223, file: !163, line: 135, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!166, !230}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !223, file: !163, line: 136, baseType: !238, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!46, !230, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !163, line: 125, size: 20736, elements: !244)
!244 = !{!245, !250, !254, !255, !259}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !243, file: !163, line: 126, baseType: !246, size: 192)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 192, elements: !248)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!248 = !{!249}
!249 = !DISubrange(count: 3)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !243, file: !163, line: 127, baseType: !251, size: 4096, offset: 192)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 4096, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !243, file: !163, line: 128, baseType: !46, size: 32, offset: 4288)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !163, line: 129, baseType: !256, size: 16384, offset: 4320)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 16384, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 2048)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !243, file: !163, line: 130, baseType: !46, size: 32, offset: 20704)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !162, file: !163, line: 69, baseType: !261, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !163, line: 116, size: 384, elements: !264)
!264 = !{!265, !269, !298, !639, !670, !674}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !263, file: !163, line: 117, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !170}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !263, file: !163, line: 118, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !273, line: 254, size: 128, elements: !274)
!273 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!274 = !{!275, !290}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !272, file: !273, line: 255, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!279, !170, !284, !247}
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !148, line: 66, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !281, line: 73, baseType: !282)
!281 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !281, line: 15, baseType: !283)
!283 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !273, line: 30, size: 128, elements: !286)
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !285, file: !273, line: 31, baseType: !166, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !285, file: !273, line: 32, baseType: !289, size: 16, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !148, line: 24, baseType: !217)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !272, file: !273, line: 256, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!279, !170, !284, !166, !294}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 61, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !281, line: 72, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !281, line: 16, baseType: !297)
!297 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !263, file: !163, line: 119, baseType: !299, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !273, line: 84, size: 320, elements: !303)
!303 = !{!304, !305, !309, !635, !637}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !273, line: 85, baseType: !166, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !302, file: !273, line: 86, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!289, !170, !284, !46}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !302, file: !273, line: 88, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!289, !170, !313, !46}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !273, line: 175, size: 512, elements: !315)
!315 = !{!316, !317, !318, !320, !327, !337, !338}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !314, file: !273, line: 176, baseType: !285, size: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !314, file: !273, line: 177, baseType: !294, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !314, file: !273, line: 178, baseType: !319, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !314, file: !273, line: 179, baseType: !321, size: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !326, line: 32, flags: DIFlagFwdDecl)
!326 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!327 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !314, file: !273, line: 180, baseType: !328, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!279, !331, !170, !313, !247, !334, !294}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !333, line: 537, flags: DIFlagFwdDecl)
!333 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !148, line: 52, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !281, line: 88, baseType: !336)
!336 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !314, file: !273, line: 182, baseType: !328, size: 64, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !314, file: !273, line: 184, baseType: !339, size: 64, offset: 448)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!46, !331, !170, !313, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !326, line: 625, size: 1344, elements: !344)
!344 = !{!345, !362, !584, !590, !597, !598, !603, !606, !618, !619, !622, !626, !627, !628, !629, !630, !633}
!345 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !326, line: 628, baseType: !346, size: 128)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !326, line: 628, size: 128, elements: !347)
!347 = !{!348, !353}
!348 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !326, line: 629, baseType: !349, size: 128)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !346, file: !326, line: 629, size: 128, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !349, file: !326, line: 631, baseType: !297, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !349, file: !326, line: 632, baseType: !297, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !346, file: !326, line: 635, baseType: !354, size: 128, align: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !148, line: 232, size: 128, align: 64, elements: !355)
!355 = !{!356, !358}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !148, line: 233, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !354, file: !148, line: 234, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !357}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !343, file: !326, line: 639, baseType: !363, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !326, line: 733, size: 10240, elements: !365)
!365 = !{!366, !580}
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !364, file: !326, line: 734, baseType: !367, size: 10240)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !364, file: !326, line: 734, size: 10240, elements: !368)
!368 = !{!369, !373, !387, !391, !392, !393, !394, !395, !396, !404, !405, !406, !415, !416, !425, !426, !427, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !474, !488, !491, !546, !547, !548, !551, !555, !556, !559, !560, !561, !567, !568}
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !326, line: 739, baseType: !370, size: 512, align: 512)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !367, file: !326, line: 739, size: 512, align: 512, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !370, file: !326, line: 747, baseType: !197, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !367, file: !326, line: 750, baseType: !374, size: 128, offset: 512)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !375, line: 218, size: 128, elements: !376)
!375 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!376 = !{!377, !385, !386}
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !375, line: 219, baseType: !378, size: 32)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !375, line: 219, size: 32, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !378, file: !375, line: 220, baseType: !177, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !378, file: !375, line: 221, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !375, line: 197, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 197, elements: !384)
!384 = !{}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !374, file: !375, line: 223, baseType: !7, size: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !374, file: !375, line: 224, baseType: !319, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !367, file: !326, line: 752, baseType: !388, size: 64, offset: 640)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!297, !331, !297, !297, !297, !297}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !367, file: !326, line: 756, baseType: !297, size: 64, offset: 704)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !367, file: !326, line: 757, baseType: !297, size: 64, offset: 768)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !367, file: !326, line: 760, baseType: !297, size: 64, offset: 832)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !367, file: !326, line: 761, baseType: !297, size: 64, offset: 896)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !367, file: !326, line: 763, baseType: !297, size: 64, offset: 960)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !367, file: !326, line: 764, baseType: !397, size: 64, offset: 1024)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !333, line: 299, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 299, size: 64, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !399, file: !333, line: 299, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !403, line: 18, baseType: !297)
!403 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!404 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !367, file: !326, line: 773, baseType: !197, size: 32, offset: 1088)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !367, file: !326, line: 785, baseType: !197, size: 32, offset: 1120)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !367, file: !326, line: 795, baseType: !407, size: 64, offset: 1152)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !326, line: 726, size: 128, elements: !409)
!409 = !{!410, !414}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !408, file: !326, line: 727, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !206, line: 23, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !208, line: 31, baseType: !413)
!413 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !408, file: !326, line: 728, baseType: !46, size: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !367, file: !326, line: 801, baseType: !297, size: 64, offset: 1216)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !367, file: !326, line: 804, baseType: !417, size: 64, offset: 1280)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !418, line: 13, baseType: !419)
!418 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !148, line: 181, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 179, size: 64, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !420, file: !148, line: 180, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !206, line: 22, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !208, line: 30, baseType: !336)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !367, file: !326, line: 806, baseType: !46, size: 32, offset: 1344)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !367, file: !326, line: 808, baseType: !177, size: 32, offset: 1376)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !367, file: !326, line: 823, baseType: !428, size: 320, offset: 1408)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !429, line: 48, size: 320, elements: !430)
!429 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!430 = !{!431, !432, !433, !438, !440}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !428, file: !429, line: 49, baseType: !417, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !428, file: !429, line: 55, baseType: !417, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !428, file: !429, line: 57, baseType: !434, size: 32, offset: 128)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !435, line: 15, size: 32, elements: !436)
!435 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !434, file: !435, line: 20, baseType: !197, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !428, file: !429, line: 59, baseType: !439, size: 32, offset: 160)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !186, line: 23, baseType: !185)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !428, file: !429, line: 60, baseType: !147, size: 128, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !367, file: !326, line: 825, baseType: !147, size: 128, offset: 1728)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !367, file: !326, line: 845, baseType: !46, size: 32, offset: 1856)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !367, file: !326, line: 849, baseType: !297, size: 64, offset: 1920)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !367, file: !326, line: 850, baseType: !297, size: 64, offset: 1984)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !367, file: !326, line: 852, baseType: !297, size: 64, offset: 2048)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !367, file: !326, line: 853, baseType: !297, size: 64, offset: 2112)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !367, file: !326, line: 854, baseType: !419, size: 64, offset: 2176)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !367, file: !326, line: 855, baseType: !297, size: 64, offset: 2240)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !367, file: !326, line: 856, baseType: !297, size: 64, offset: 2304)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !367, file: !326, line: 857, baseType: !297, size: 64, offset: 2368)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !367, file: !326, line: 858, baseType: !297, size: 64, offset: 2432)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !367, file: !326, line: 865, baseType: !453, size: 32, offset: 2496)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !454, line: 69, baseType: !455)
!454 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !454, line: 64, size: 32, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !455, file: !454, line: 65, baseType: !7, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !367, file: !326, line: 867, baseType: !177, size: 32, offset: 2528)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !367, file: !326, line: 869, baseType: !297, size: 64, offset: 2560)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !367, file: !326, line: 869, baseType: !297, size: 64, offset: 2624)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !367, file: !326, line: 869, baseType: !297, size: 64, offset: 2688)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !367, file: !326, line: 869, baseType: !297, size: 64, offset: 2752)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !367, file: !326, line: 870, baseType: !297, size: 64, offset: 2816)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !367, file: !326, line: 870, baseType: !297, size: 64, offset: 2880)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !367, file: !326, line: 870, baseType: !297, size: 64, offset: 2944)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !367, file: !326, line: 871, baseType: !297, size: 64, offset: 3008)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !367, file: !326, line: 871, baseType: !297, size: 64, offset: 3072)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !367, file: !326, line: 871, baseType: !297, size: 64, offset: 3136)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !367, file: !326, line: 871, baseType: !297, size: 64, offset: 3200)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !367, file: !326, line: 873, baseType: !471, size: 3328, offset: 3264)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 3328, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 52)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !367, file: !326, line: 875, baseType: !475, size: 1280, offset: 6592)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 1280, elements: !486)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !477, line: 22, size: 320, elements: !478)
!477 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!478 = !{!479, !480, !481, !482}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !476, file: !477, line: 23, baseType: !439, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !476, file: !477, line: 24, baseType: !423, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !476, file: !477, line: 26, baseType: !147, size: 128, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !476, file: !477, line: 28, baseType: !483, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !206, line: 20, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !208, line: 26, baseType: !46)
!486 = !{!487}
!487 = !DISubrange(count: 4)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !367, file: !326, line: 877, baseType: !489, size: 64, offset: 7872)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !326, line: 877, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !367, file: !326, line: 880, baseType: !492, size: 1088, offset: 7936)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !493, line: 72, baseType: !494)
!493 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 23, size: 1088, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !503, !504, !512, !513, !540, !541, !542}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !494, file: !493, line: 28, baseType: !411, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !494, file: !493, line: 38, baseType: !419, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !494, file: !493, line: 40, baseType: !297, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !494, file: !493, line: 43, baseType: !428, size: 320, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !494, file: !493, line: 44, baseType: !501, size: 64, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !493, line: 44, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !493, line: 48, baseType: !297, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !494, file: !493, line: 59, baseType: !505, size: 256, offset: 640)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !506, line: 66, size: 256, elements: !507)
!506 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!507 = !{!508, !509, !510, !511}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !505, file: !506, line: 67, baseType: !417, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !505, file: !506, line: 68, baseType: !439, size: 32, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !505, file: !506, line: 70, baseType: !434, size: 32, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !505, file: !506, line: 72, baseType: !147, size: 128, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !494, file: !493, line: 60, baseType: !319, size: 64, offset: 896)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !494, file: !493, line: 61, baseType: !514, size: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !517, line: 13, size: 1216, elements: !518)
!517 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!518 = !{!519, !520, !521, !522, !523, !524, !525, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !516, file: !517, line: 14, baseType: !319, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !516, file: !517, line: 15, baseType: !297, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !516, file: !517, line: 17, baseType: !297, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !516, file: !517, line: 17, baseType: !297, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !516, file: !517, line: 18, baseType: !297, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !516, file: !517, line: 18, baseType: !297, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !516, file: !517, line: 19, baseType: !526, size: 64, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !516, file: !517, line: 21, baseType: !283, size: 64, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !516, file: !517, line: 23, baseType: !283, size: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !516, file: !517, line: 24, baseType: !283, size: 64, offset: 576)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !516, file: !517, line: 25, baseType: !283, size: 64, offset: 640)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !516, file: !517, line: 26, baseType: !283, size: 64, offset: 704)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !516, file: !517, line: 27, baseType: !283, size: 64, offset: 768)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !516, file: !517, line: 28, baseType: !283, size: 64, offset: 832)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !516, file: !517, line: 29, baseType: !283, size: 64, offset: 896)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !516, file: !517, line: 30, baseType: !283, size: 64, offset: 960)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !516, file: !517, line: 31, baseType: !283, size: 64, offset: 1024)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !516, file: !517, line: 32, baseType: !283, size: 64, offset: 1088)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !516, file: !517, line: 33, baseType: !283, size: 64, offset: 1152)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !494, file: !493, line: 63, baseType: !197, size: 32, offset: 1024)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !494, file: !493, line: 69, baseType: !215, size: 16, offset: 1056)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !494, file: !493, line: 70, baseType: !543, size: 16, offset: 1072)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !206, line: 18, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !208, line: 23, baseType: !545)
!545 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !326, line: 882, baseType: !297, size: 64, offset: 9024)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !367, file: !326, line: 885, baseType: !177, size: 32, offset: 9088)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !367, file: !326, line: 886, baseType: !549, size: 64, offset: 9152)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !326, line: 732, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !367, file: !326, line: 901, baseType: !552, size: 64, offset: 9216)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !554, line: 18, flags: DIFlagFwdDecl)
!554 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!555 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !367, file: !326, line: 904, baseType: !331, size: 64, offset: 9280)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !367, file: !326, line: 906, baseType: !557, size: 64, offset: 9344)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !326, line: 906, flags: DIFlagFwdDecl)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !367, file: !326, line: 930, baseType: !197, size: 32, offset: 9408)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !367, file: !326, line: 933, baseType: !197, size: 32, offset: 9440)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !367, file: !326, line: 935, baseType: !562, size: 64, offset: 9472)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !114, line: 103, size: 64, elements: !563)
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !562, file: !114, line: 104, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !114, line: 101, flags: DIFlagFwdDecl)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !367, file: !326, line: 940, baseType: !417, size: 64, offset: 9536)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !367, file: !326, line: 942, baseType: !569, size: 256, offset: 9600)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !570, line: 98, size: 256, elements: !571)
!570 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!571 = !{!572, !573, !574}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !569, file: !570, line: 99, baseType: !417, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !569, file: !570, line: 100, baseType: !147, size: 128, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !569, file: !570, line: 101, baseType: !575, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !570, line: 21, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !364, file: !326, line: 986, baseType: !581, offset: 10240)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: -1)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !343, file: !326, line: 640, baseType: !585, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !333, line: 297, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !333, line: 297, size: 64, elements: !587)
!587 = !{!588}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !586, file: !333, line: 297, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !403, line: 19, baseType: !297)
!590 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !326, line: 646, baseType: !591, size: 64, offset: 256)
!591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !326, line: 646, size: 64, elements: !592)
!592 = !{!593, !596}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !591, file: !326, line: 647, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !326, line: 542, baseType: !297)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !591, file: !326, line: 648, baseType: !595, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !343, file: !326, line: 666, baseType: !46, size: 32, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !343, file: !326, line: 667, baseType: !599, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !326, line: 579, size: 320, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !600, file: !326, line: 580, baseType: !428, size: 320)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !343, file: !326, line: 670, baseType: !604, size: 8, offset: 448)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !148, line: 35, baseType: !605)
!605 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !343, file: !326, line: 681, baseType: !607, size: 256, offset: 512)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !343, file: !326, line: 678, size: 256, elements: !608)
!608 = !{!609, !617}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !607, file: !326, line: 679, baseType: !610, size: 192, align: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !611, line: 5, size: 192, align: 64, elements: !612)
!611 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!612 = !{!613, !614, !616}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !610, file: !611, line: 6, baseType: !297, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !610, file: !611, line: 7, baseType: !615, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !610, file: !611, line: 8, baseType: !615, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !607, file: !326, line: 680, baseType: !297, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !343, file: !326, line: 689, baseType: !147, size: 128, offset: 768)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !343, file: !326, line: 691, baseType: !620, size: 64, offset: 896)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !326, line: 691, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !343, file: !326, line: 694, baseType: !623, size: 64, offset: 960)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !326, line: 694, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !343, file: !326, line: 697, baseType: !297, size: 64, offset: 1024)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !343, file: !326, line: 699, baseType: !331, size: 64, offset: 1088)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !343, file: !326, line: 700, baseType: !319, size: 64, offset: 1152)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !343, file: !326, line: 711, baseType: !417, size: 64, offset: 1216)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !343, file: !326, line: 717, baseType: !631, size: 64, offset: 1280)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !326, line: 717, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !343, file: !326, line: 722, baseType: !634, offset: 1344)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !326, line: 570, elements: !384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !302, file: !273, line: 90, baseType: !636, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !302, file: !273, line: 91, baseType: !638, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !263, file: !163, line: 120, baseType: !640, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!643, !230}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !646)
!646 = !{!647, !648, !652, !656, !662, !666}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !645, file: !6, line: 40, baseType: !5, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !645, file: !6, line: 41, baseType: !649, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!604}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !645, file: !6, line: 42, baseType: !653, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!319}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !645, file: !6, line: 43, baseType: !657, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!526, !660}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !645, file: !6, line: 44, baseType: !663, size: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!526}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !645, file: !6, line: 45, baseType: !667, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !319}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !263, file: !163, line: 121, baseType: !671, size: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!526, !230}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !263, file: !163, line: 122, baseType: !675, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !230, !678, !685}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !554, line: 23, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !554, line: 21, size: 32, elements: !681)
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !680, file: !554, line: 22, baseType: !683, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !148, line: 37, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !281, line: 49, baseType: !7)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !554, line: 28, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !554, line: 26, size: 32, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !687, file: !554, line: 27, baseType: !690, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !148, line: 38, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !281, line: 50, baseType: !7)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !162, file: !163, line: 70, baseType: !693, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !695, line: 190, size: 1152, elements: !696)
!695 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !799, !800, !801, !802, !803, !806}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !694, file: !695, line: 191, baseType: !197, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !694, file: !695, line: 192, baseType: !197, size: 32, offset: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !694, file: !695, line: 202, baseType: !693, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !694, file: !695, line: 203, baseType: !166, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !694, file: !695, line: 205, baseType: !610, size: 192, align: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !694, file: !695, line: 207, baseType: !526, size: 64, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !694, file: !695, line: 208, baseType: !7, size: 32, offset: 448)
!704 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !695, line: 209, baseType: !705, size: 256, offset: 512)
!705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !694, file: !695, line: 209, size: 256, elements: !706)
!706 = !{!707, !719, !723}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !705, file: !695, line: 210, baseType: !708, size: 256)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !695, line: 153, size: 256, elements: !709)
!709 = !{!710, !711, !715, !718}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !708, file: !695, line: 154, baseType: !297, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !708, file: !695, line: 156, baseType: !712, size: 64, offset: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !611, line: 12, size: 64, elements: !713)
!713 = !{!714}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !712, file: !611, line: 13, baseType: !615, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !708, file: !695, line: 162, baseType: !716, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !695, line: 162, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !708, file: !695, line: 167, baseType: !297, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !705, file: !695, line: 211, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !695, line: 170, size: 64, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !720, file: !695, line: 171, baseType: !693, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !705, file: !695, line: 212, baseType: !724, size: 256)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !695, line: 174, size: 256, elements: !725)
!725 = !{!726, !794, !797, !798}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !724, file: !695, line: 175, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !695, line: 271, size: 768, elements: !730)
!730 = !{!731, !754, !758, !762, !767, !771, !775, !779, !780, !781, !782, !790}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !729, file: !695, line: 276, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!46, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !695, line: 251, size: 1216, elements: !737)
!737 = !{!738, !739, !740, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !736, file: !695, line: 253, baseType: !693, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !736, file: !695, line: 254, baseType: !331, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !736, file: !695, line: 255, baseType: !741, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !743, line: 66, flags: DIFlagFwdDecl)
!743 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!744 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !736, file: !695, line: 256, baseType: !319, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !736, file: !695, line: 259, baseType: !505, size: 256, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !736, file: !695, line: 260, baseType: !505, size: 256, offset: 512)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !736, file: !695, line: 261, baseType: !46, size: 32, offset: 768)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !736, file: !695, line: 262, baseType: !147, size: 128, offset: 832)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !736, file: !695, line: 263, baseType: !247, size: 64, offset: 960)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !736, file: !695, line: 265, baseType: !294, size: 64, offset: 1024)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !736, file: !695, line: 266, baseType: !604, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !736, file: !695, line: 267, baseType: !604, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !736, file: !695, line: 268, baseType: !623, size: 64, offset: 1152)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !729, file: !695, line: 277, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !735}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !729, file: !695, line: 290, baseType: !759, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!46, !741, !319}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !729, file: !695, line: 292, baseType: !763, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!319, !741, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !729, file: !695, line: 293, baseType: !768, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!319, !741, !319, !766}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !729, file: !695, line: 294, baseType: !772, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !741, !319}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !729, file: !695, line: 296, baseType: !776, size: 64, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!279, !735, !247, !294, !334}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !729, file: !695, line: 306, baseType: !294, size: 64, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !729, file: !695, line: 313, baseType: !604, size: 8, offset: 512)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !729, file: !695, line: 314, baseType: !776, size: 64, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !729, file: !695, line: 317, baseType: !783, size: 64, offset: 640)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!786, !735, !788}
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !787, line: 59, baseType: !7)
!787 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !695, line: 31, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !729, file: !695, line: 320, baseType: !791, size: 64, offset: 704)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!46, !735, !342}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !724, file: !695, line: 176, baseType: !795, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !695, line: 35, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !724, file: !695, line: 177, baseType: !334, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !724, file: !695, line: 178, baseType: !693, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !694, file: !695, line: 215, baseType: !319, size: 64, offset: 768)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !694, file: !695, line: 221, baseType: !411, size: 64, offset: 832)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !695, line: 223, baseType: !217, size: 16, offset: 896)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !694, file: !695, line: 224, baseType: !289, size: 16, offset: 912)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !694, file: !695, line: 225, baseType: !804, size: 64, offset: 960)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !695, line: 36, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !694, file: !695, line: 227, baseType: !354, size: 128, align: 64, offset: 1024)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !162, file: !163, line: 71, baseType: !808, size: 32, offset: 448)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !809, line: 19, size: 32, elements: !810)
!809 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!810 = !{!811}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !808, file: !809, line: 20, baseType: !812, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !813, line: 113, baseType: !814)
!813 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !813, line: 111, size: 32, elements: !815)
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !814, file: !813, line: 112, baseType: !197, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !162, file: !163, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !162, file: !163, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !162, file: !163, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !162, file: !163, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !162, file: !163, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !159, file: !13, line: 47, baseType: !142, size: 64, offset: 512)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !159, file: !13, line: 48, baseType: !170, size: 64, offset: 576)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !159, file: !13, line: 49, baseType: !825, size: 64, offset: 640)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !159, file: !13, line: 50, baseType: !828, size: 64, offset: 704)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !830, line: 26, size: 256, elements: !831)
!830 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !829, file: !830, line: 27, baseType: !7, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !829, file: !830, line: 28, baseType: !834, size: 192, offset: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !835, line: 43, size: 192, elements: !836)
!835 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!836 = !{!837, !838}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !834, file: !835, line: 44, baseType: !439, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !834, file: !835, line: 45, baseType: !147, size: 128, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !143, file: !13, line: 418, baseType: !840, size: 64, offset: 1408)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !842)
!842 = !{!843, !844, !849, !853, !857, !861}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !841, file: !13, line: 54, baseType: !285, size: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !841, file: !13, line: 55, baseType: !845, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!279, !840, !848, !247}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !841, file: !13, line: 57, baseType: !850, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!279, !840, !848, !166, !294}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !841, file: !13, line: 59, baseType: !854, size: 64, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !142, !166}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !841, file: !13, line: 60, baseType: !858, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!46, !142}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !841, file: !13, line: 61, baseType: !862, size: 64, offset: 384)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !142}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !143, file: !13, line: 419, baseType: !166, size: 64, offset: 1472)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !143, file: !13, line: 420, baseType: !166, size: 64, offset: 1536)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !143, file: !13, line: 421, baseType: !170, size: 64, offset: 1600)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !143, file: !13, line: 424, baseType: !869, size: 64, offset: 1664)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !143, file: !13, line: 425, baseType: !873, size: 64, offset: 1728)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !143, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !143, file: !13, line: 435, baseType: !505, size: 256, offset: 1856)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !143, file: !13, line: 437, baseType: !878, size: 64, offset: 2112)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !880, line: 69, size: 320, elements: !881)
!880 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!881 = !{!882, !883, !884, !901, !903, !907, !908}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !879, file: !880, line: 70, baseType: !166, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !879, file: !880, line: 71, baseType: !142, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !879, file: !880, line: 72, baseType: !885, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !880, line: 47, size: 256, elements: !888)
!888 = !{!889, !890, !896, !900}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !887, file: !880, line: 49, baseType: !7, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !887, file: !880, line: 51, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!46, !166, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !879)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !887, file: !880, line: 53, baseType: !897, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!46, !247, !894}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !887, file: !880, line: 55, baseType: !667, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !879, file: !880, line: 73, baseType: !902, size: 16, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !879, file: !880, line: 74, baseType: !904, size: 8, offset: 208)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !206, line: 16, baseType: !905)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !208, line: 20, baseType: !906)
!906 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !879, file: !880, line: 75, baseType: !205, size: 8, offset: 216)
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !880, line: 76, baseType: !909, size: 64, offset: 256)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !880, line: 76, size: 64, elements: !910)
!910 = !{!911, !912, !919}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !909, file: !880, line: 77, baseType: !319, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !909, file: !880, line: 78, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !915)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !880, line: 86, size: 128, elements: !916)
!916 = !{!917, !918}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !915, file: !880, line: 87, baseType: !7, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !915, file: !880, line: 88, baseType: !247, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !909, file: !880, line: 79, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !880, line: 92, size: 256, elements: !923)
!923 = !{!924, !925, !926, !928, !929}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !922, file: !880, line: 94, baseType: !7, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !922, file: !880, line: 95, baseType: !7, size: 32, offset: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !922, file: !880, line: 96, baseType: !927, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !922, file: !880, line: 97, baseType: !885, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !922, file: !880, line: 98, baseType: !319, size: 64, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !143, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !143, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !143, file: !13, line: 442, baseType: !869, size: 64, offset: 2240)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !143, file: !13, line: 443, baseType: !873, size: 64, offset: 2304)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !143, file: !13, line: 444, baseType: !604, size: 8, offset: 2368)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !143, file: !13, line: 451, baseType: !604, size: 8, offset: 2376)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !143, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !143, file: !13, line: 455, baseType: !938, size: 64, offset: 2432)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !940, line: 23, size: 96, elements: !941)
!940 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!941 = !{!942, !943, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !939, file: !940, line: 24, baseType: !46, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !939, file: !940, line: 24, baseType: !46, size: 32, offset: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !939, file: !940, line: 24, baseType: !46, size: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !143, file: !13, line: 458, baseType: !946, size: 64, offset: 2496)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!46}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !143, file: !13, line: 460, baseType: !950, size: 4032, align: 512, offset: 2560)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 4032, elements: !967)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !952)
!952 = !{!953, !954, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !951, file: !13, line: 363, baseType: !319, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !951, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !951, file: !13, line: 367, baseType: !956, size: 448, offset: 128)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !956, file: !13, line: 320, baseType: !142, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !956, file: !13, line: 321, baseType: !960, size: 384, offset: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !961, line: 40, size: 384, elements: !962)
!961 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!962 = !{!963}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !960, file: !961, line: 41, baseType: !964, size: 384, align: 64)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 384, align: 64, elements: !965)
!965 = !{!966}
!966 = !DISubrange(count: 2)
!967 = !{!968}
!968 = !DISubrange(count: 7)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !143, file: !13, line: 463, baseType: !970, size: 192, offset: 6592)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !971, line: 8, size: 192, elements: !972)
!971 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!972 = !{!973, !974, !976}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !970, file: !971, line: 10, baseType: !7, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !970, file: !971, line: 11, baseType: !975, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !970, file: !971, line: 12, baseType: !977, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !979, line: 59, size: 48, elements: !980)
!979 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!980 = !{!981, !982, !983, !984, !985, !986}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !978, file: !979, line: 60, baseType: !543, size: 16)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !978, file: !979, line: 61, baseType: !543, size: 16, offset: 16)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !978, file: !979, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !978, file: !979, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !978, file: !979, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !978, file: !979, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !143, file: !13, line: 465, baseType: !297, size: 64, offset: 6784)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !143, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !143, file: !13, line: 470, baseType: !147, size: 128, offset: 6912)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !143, file: !13, line: 471, baseType: !991, size: 64, offset: 7040)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !993, line: 33, size: 96, elements: !994)
!993 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!994 = !{!995, !996, !997, !998}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !992, file: !993, line: 37, baseType: !46, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !992, file: !993, line: 43, baseType: !46, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !992, file: !993, line: 45, baseType: !217, size: 16, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !992, file: !993, line: 47, baseType: !217, size: 16, offset: 80)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !143, file: !13, line: 476, baseType: !1000, size: 64, offset: 7104)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1002)
!1002 = !{!1003, !1020, !1021, !1022}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1001, file: !13, line: 379, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1006, line: 204, baseType: !1007)
!1006 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1006, line: 197, size: 192, elements: !1008)
!1008 = !{!1009, !1012, !1013, !1014, !1016, !1018}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1007, file: !1006, line: 198, baseType: !1010, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1006, line: 21, baseType: !1011)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !208, line: 27, baseType: !7)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1007, file: !1006, line: 199, baseType: !209, size: 8, offset: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1007, file: !1006, line: 200, baseType: !209, size: 8, offset: 40)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1007, file: !1006, line: 201, baseType: !1015, size: 16, offset: 48)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1006, line: 17, baseType: !216)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1007, file: !1006, line: 202, baseType: !1017, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1006, line: 16, baseType: !412)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1007, file: !1006, line: 203, baseType: !1019, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1006, line: 22, baseType: !412)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1001, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1001, file: !13, line: 381, baseType: !247, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1001, file: !13, line: 382, baseType: !247, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !143, file: !13, line: 477, baseType: !1001, size: 256, offset: 7168)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !143, file: !13, line: 480, baseType: !1025, size: 64, offset: 7424)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !143, file: !13, line: 483, baseType: !1028, size: 64, offset: 7488)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !143, file: !13, line: 488, baseType: !247, size: 64, offset: 7552)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !143, file: !13, line: 492, baseType: !319, size: 64, offset: 7616)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !143, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !143, file: !13, line: 495, baseType: !319, size: 64, offset: 7744)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !143, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !143, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !143, file: !13, line: 500, baseType: !1037, size: 64, offset: 7872)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1039, line: 45, baseType: !1040)
!1039 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !143, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !143, file: !13, line: 504, baseType: !1043, size: 64, offset: 8000)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1046, line: 96, size: 192, elements: !1047)
!1046 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1047 = !{!1048, !1049, !1110, !1113}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1045, file: !1046, line: 97, baseType: !7, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1045, file: !1046, line: 98, baseType: !1050, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1046, line: 24, size: 3072, elements: !1052)
!1052 = !{!1053, !1055, !1056, !1057, !1058, !1072, !1073, !1074, !1075, !1094, !1095, !1096, !1107, !1108, !1109}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1051, file: !1046, line: 26, baseType: !1054, size: 128)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 128, elements: !965)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1051, file: !1046, line: 27, baseType: !1054, size: 128, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1051, file: !1046, line: 28, baseType: !46, size: 32, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1051, file: !1046, line: 31, baseType: !177, size: 32, align: 512, offset: 512)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1051, file: !1046, line: 32, baseType: !1059, size: 960, offset: 576)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1060, line: 206, size: 960, elements: !1061)
!1060 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1061 = !{!1062, !1063, !1066, !1068, !1069, !1071}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1059, file: !1060, line: 207, baseType: !357, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1059, file: !1060, line: 208, baseType: !1064, size: 256, offset: 64)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1065, size: 256, elements: !486)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1059, file: !1060, line: 209, baseType: !1067, size: 256, offset: 320)
!1067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 256, elements: !486)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1059, file: !1060, line: 213, baseType: !283, size: 64, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1059, file: !1060, line: 215, baseType: !1070, size: 256, offset: 640)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 256, elements: !486)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1059, file: !1060, line: 216, baseType: !205, size: 8, offset: 896)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1051, file: !1046, line: 33, baseType: !297, size: 64, offset: 1536)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1051, file: !1046, line: 34, baseType: !297, size: 64, offset: 1600)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1051, file: !1046, line: 35, baseType: !604, size: 8, offset: 1664)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1051, file: !1046, line: 36, baseType: !1076, size: 320, offset: 1728)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1077, line: 11, size: 320, elements: !1078)
!1077 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1078 = !{!1079, !1086, !1087, !1092}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1076, file: !1077, line: 16, baseType: !1080, size: 128)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !148, line: 198, size: 128, elements: !1081)
!1081 = !{!1082, !1084}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1080, file: !148, line: 199, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1080, file: !148, line: 199, baseType: !1085, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1076, file: !1077, line: 17, baseType: !297, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1076, file: !1077, line: 18, baseType: !1088, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !1091}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1076, file: !1077, line: 19, baseType: !1093, size: 32, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !206, line: 21, baseType: !1011)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1051, file: !1046, line: 37, baseType: !569, size: 256, offset: 2048)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1051, file: !1046, line: 38, baseType: !354, size: 128, align: 64, offset: 2304)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1051, file: !1046, line: 39, baseType: !1097, size: 64, offset: 2432)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1046, line: 49, size: 768, elements: !1099)
!1099 = !{!1100, !1101, !1102, !1103, !1104, !1105, !1106}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1098, file: !1046, line: 50, baseType: !177, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1098, file: !1046, line: 51, baseType: !1067, size: 256, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1098, file: !1046, line: 53, baseType: !1067, size: 256, offset: 320)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1098, file: !1046, line: 54, baseType: !297, size: 64, offset: 576)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1098, file: !1046, line: 55, baseType: !1097, size: 64, offset: 640)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1098, file: !1046, line: 56, baseType: !46, size: 32, offset: 704)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1098, file: !1046, line: 57, baseType: !46, size: 32, offset: 736)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1051, file: !1046, line: 40, baseType: !297, size: 64, offset: 2496)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1051, file: !1046, line: 42, baseType: !46, size: 32, offset: 2560)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1051, file: !1046, line: 43, baseType: !1044, size: 64, offset: 2624)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1045, file: !1046, line: 99, baseType: !1111, offset: 128)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1112, line: 211, elements: !384)
!1112 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1045, file: !1046, line: 100, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1046, line: 63, size: 3008, elements: !1116)
!1116 = !{!1117, !1118, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1148}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1115, file: !1046, line: 64, baseType: !1097, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1115, file: !1046, line: 65, baseType: !1119, size: 192, offset: 64)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1097, size: 192, elements: !248)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1115, file: !1046, line: 67, baseType: !46, size: 32, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1115, file: !1046, line: 68, baseType: !505, size: 256, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1115, file: !1046, line: 69, baseType: !177, size: 32, offset: 576)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1115, file: !1046, line: 70, baseType: !505, size: 256, offset: 640)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1115, file: !1046, line: 71, baseType: !297, size: 64, offset: 896)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1115, file: !1046, line: 72, baseType: !297, size: 64, offset: 960)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1115, file: !1046, line: 73, baseType: !297, size: 64, offset: 1024)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1115, file: !1046, line: 74, baseType: !297, size: 64, offset: 1088)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1115, file: !1046, line: 75, baseType: !297, size: 64, offset: 1152)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1115, file: !1046, line: 76, baseType: !297, size: 64, offset: 1216)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1115, file: !1046, line: 77, baseType: !297, size: 64, offset: 1280)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1115, file: !1046, line: 78, baseType: !297, size: 64, offset: 1344)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1115, file: !1046, line: 79, baseType: !604, size: 8, offset: 1408)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1115, file: !1046, line: 80, baseType: !297, size: 64, offset: 1472)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1115, file: !1046, line: 81, baseType: !505, size: 256, offset: 1536)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1115, file: !1046, line: 82, baseType: !829, size: 256, offset: 1792)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1115, file: !1046, line: 84, baseType: !197, size: 32, offset: 2048)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1115, file: !1046, line: 87, baseType: !297, size: 64, offset: 2112)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1115, file: !1046, line: 88, baseType: !297, size: 64, offset: 2176)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1115, file: !1046, line: 89, baseType: !1140, size: 704, offset: 2240)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !570, line: 111, size: 704, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1147}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1140, file: !570, line: 112, baseType: !569, size: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1140, file: !570, line: 113, baseType: !1076, size: 320, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1140, file: !570, line: 116, baseType: !1145, size: 64, offset: 576)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !570, line: 18, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1140, file: !570, line: 117, baseType: !46, size: 32, offset: 640)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1115, file: !1046, line: 90, baseType: !1044, size: 64, offset: 2944)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !143, file: !13, line: 515, baseType: !1150, size: 64, offset: 8064)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1152, line: 117, size: 128, elements: !1153)
!1152 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1153 = !{!1154, !1155, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1151, file: !1152, line: 118, baseType: !484, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1151, file: !1152, line: 119, baseType: !484, size: 32, offset: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1151, file: !1152, line: 120, baseType: !283, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !143, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !143, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !143, file: !13, line: 520, baseType: !1160, size: 64, offset: 8192)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !143, file: !13, line: 523, baseType: !1162, size: 64, offset: 8256)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !143, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !143, file: !13, line: 525, baseType: !1167, size: 64, offset: 8384)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !143, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !143, file: !13, line: 533, baseType: !319, size: 64, offset: 8512)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !143, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !143, file: !13, line: 535, baseType: !1174, size: 64, offset: 8640)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !143, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !143, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !143, file: !13, line: 540, baseType: !1178, size: 64, offset: 8768)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1180, line: 32, size: 64, elements: !1181)
!1180 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1179, file: !1180, line: 33, baseType: !484, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1179, file: !1180, line: 34, baseType: !484, size: 32, offset: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !143, file: !13, line: 563, baseType: !147, size: 128, offset: 8832)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !143, file: !13, line: 565, baseType: !147, size: 128, offset: 8960)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !143, file: !13, line: 568, baseType: !1187, size: 64, offset: 9088)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !143, file: !13, line: 570, baseType: !197, size: 32, offset: 9152)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !1193, line: 83, size: 2368, elements: !1194)
!1193 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1194 = !{!1195, !1206, !1207, !1208, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1226, !1230, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254}
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !1193, line: 84, baseType: !1196, size: 32)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !1193, line: 84, size: 32, elements: !1197)
!1197 = !{!1198, !1205}
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !1193, line: 90, baseType: !1199, size: 32)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !1193, line: 90, size: 32, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !1199, file: !1193, line: 91, baseType: !207, size: 8)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !1199, file: !1193, line: 93, baseType: !207, size: 8, offset: 8)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !1199, file: !1193, line: 95, baseType: !207, size: 8, offset: 16)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !1199, file: !1193, line: 96, baseType: !207, size: 8, offset: 24)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !1196, file: !1193, line: 99, baseType: !1011, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !1192, file: !1193, line: 101, baseType: !207, size: 8, offset: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !1192, file: !1193, line: 104, baseType: !46, size: 32, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !1192, file: !1193, line: 107, baseType: !1209, size: 160, offset: 96)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1011, size: 160, elements: !1210)
!1210 = !{!1211}
!1211 = !DISubrange(count: 5)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !1192, file: !1193, line: 109, baseType: !207, size: 8, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !1192, file: !1193, line: 110, baseType: !207, size: 8, offset: 264)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !1192, file: !1193, line: 112, baseType: !207, size: 8, offset: 272)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !1192, file: !1193, line: 113, baseType: !207, size: 8, offset: 280)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !1192, file: !1193, line: 115, baseType: !1011, size: 32, offset: 288)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !1192, file: !1193, line: 117, baseType: !46, size: 32, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !1193, line: 123, baseType: !1219, size: 768, offset: 384)
!1219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !1193, line: 123, size: 768, elements: !1220)
!1220 = !{!1221, !1225}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !1219, file: !1193, line: 124, baseType: !1222, size: 768)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1011, size: 768, elements: !1223)
!1223 = !{!1224}
!1224 = !DISubrange(count: 24)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !1219, file: !1193, line: 125, baseType: !297, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !1192, file: !1193, line: 127, baseType: !1227, size: 128, offset: 1152)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 128, elements: !1228)
!1228 = !{!1229}
!1229 = !DISubrange(count: 16)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !1192, file: !1193, line: 128, baseType: !1231, size: 512, offset: 1280)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 512, elements: !252)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !1192, file: !1193, line: 130, baseType: !7, size: 32, offset: 1792)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !1192, file: !1193, line: 131, baseType: !46, size: 32, offset: 1824)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !1192, file: !1193, line: 133, baseType: !46, size: 32, offset: 1856)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !1192, file: !1193, line: 134, baseType: !46, size: 32, offset: 1888)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !1192, file: !1193, line: 135, baseType: !46, size: 32, offset: 1920)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !1192, file: !1193, line: 136, baseType: !46, size: 32, offset: 1952)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !1192, file: !1193, line: 137, baseType: !297, size: 64, offset: 1984)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !1192, file: !1193, line: 139, baseType: !411, size: 64, offset: 2048)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !1192, file: !1193, line: 141, baseType: !215, size: 16, offset: 2112)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !1192, file: !1193, line: 142, baseType: !215, size: 16, offset: 2128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !1192, file: !1193, line: 143, baseType: !215, size: 16, offset: 2144)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !1192, file: !1193, line: 144, baseType: !215, size: 16, offset: 2160)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !1192, file: !1193, line: 146, baseType: !215, size: 16, offset: 2176)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !1192, file: !1193, line: 148, baseType: !215, size: 16, offset: 2192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !1192, file: !1193, line: 150, baseType: !215, size: 16, offset: 2208)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !1192, file: !1193, line: 152, baseType: !215, size: 16, offset: 2224)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !1192, file: !1193, line: 153, baseType: !215, size: 16, offset: 2240)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !1192, file: !1193, line: 154, baseType: !215, size: 16, offset: 2256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !1192, file: !1193, line: 156, baseType: !215, size: 16, offset: 2272)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !1192, file: !1193, line: 158, baseType: !604, size: 8, offset: 2288)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !1192, file: !1193, line: 159, baseType: !1093, size: 32, offset: 2304)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !1192, file: !1193, line: 161, baseType: !205, size: 8, offset: 2336)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1192, file: !1193, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !148, line: 154, baseType: !7)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_performance", file: !1258, line: 130, size: 896, elements: !1259)
!1258 = !DIFile(filename: "./include/acpi/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5439c2680e180b2809cf646c46c358d2")
!1259 = !{!1260, !1261, !1262, !1272, !1273, !1274, !1284, !1292, !1302}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1257, file: !1258, line: 131, baseType: !7, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !1257, file: !1258, line: 132, baseType: !7, size: 32, offset: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !1257, file: !1258, line: 133, baseType: !1263, size: 120, offset: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pct_register", file: !1258, line: 111, size: 120, elements: !1264)
!1264 = !{!1265, !1266, !1267, !1268, !1269, !1270, !1271}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !1263, file: !1258, line: 112, baseType: !205, size: 8)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1263, file: !1258, line: 113, baseType: !215, size: 16, offset: 8)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1263, file: !1258, line: 114, baseType: !205, size: 8, offset: 24)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !1263, file: !1258, line: 115, baseType: !205, size: 8, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1263, file: !1258, line: 116, baseType: !205, size: 8, offset: 40)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1263, file: !1258, line: 117, baseType: !205, size: 8, offset: 48)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1263, file: !1258, line: 118, baseType: !411, size: 64, offset: 56)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !1257, file: !1258, line: 134, baseType: !1263, size: 120, offset: 184)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1257, file: !1258, line: 135, baseType: !7, size: 32, offset: 320)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1257, file: !1258, line: 136, baseType: !1275, size: 64, offset: 384)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_px", file: !1258, line: 121, size: 384, elements: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "core_frequency", scope: !1276, file: !1258, line: 122, baseType: !411, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1276, file: !1258, line: 123, baseType: !411, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !1276, file: !1258, line: 124, baseType: !411, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master_latency", scope: !1276, file: !1258, line: 125, baseType: !411, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1276, file: !1258, line: 126, baseType: !411, size: 64, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1276, file: !1258, line: 127, baseType: !411, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !1257, file: !1258, line: 137, baseType: !1285, size: 320, offset: 448)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_psd_package", file: !1258, line: 103, size: 320, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1290, !1291}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !1285, file: !1258, line: 104, baseType: !411, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !1285, file: !1258, line: 105, baseType: !411, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1285, file: !1258, line: 106, baseType: !411, size: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !1285, file: !1258, line: 107, baseType: !411, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !1285, file: !1258, line: 108, baseType: !411, size: 64, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !1257, file: !1258, line: 138, baseType: !1293, size: 64, offset: 768)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1294, line: 913, baseType: !1295)
!1294 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1296, size: 64, elements: !1300)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1294, line: 19, size: 64, elements: !1297)
!1297 = !{!1298}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1296, file: !1294, line: 19, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 64, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 1)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !1257, file: !1258, line: 139, baseType: !7, size: 32, offset: 832)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !1305, line: 814, baseType: !205)
!1305 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !155)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !283)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1296)
!1313 = !{!0, !1314, !1317, !1322, !1327, !1329, !1334, !1339, !1341, !1345, !1350, !1352, !1357, !2062, !3320, !3395, !3397, !3400, !3402, !3407, !3409, !3414, !3419, !3421, !3424, !3447, !3449, !3454, !3457, !3486, !3489, !3491, !3493, !3496, !3498, !3500}
!1314 = !DIGlobalVariableExpression(var: !1315, expr: !DIExpression())
!1315 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description248", scope: !2, file: !3, line: 39, type: !1316, isLocal: true, isDefinition: true, align: 8)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 448, elements: !156)
!1317 = !DIGlobalVariableExpression(var: !1318, expr: !DIExpression())
!1318 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file249", scope: !2, file: !3, line: 40, type: !1319, isLocal: true, isDefinition: true, align: 8)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 376, elements: !1320)
!1320 = !{!1321}
!1321 = !DISubrange(count: 47)
!1322 = !DIGlobalVariableExpression(var: !1323, expr: !DIExpression())
!1323 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license250", scope: !2, file: !3, line: 40, type: !1324, isLocal: true, isDefinition: true, align: 8)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 200, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 25)
!1327 = !DIGlobalVariableExpression(var: !1328, expr: !DIExpression())
!1328 = distinct !DIGlobalVariable(name: "__param_acpi_pstate_strict", scope: !2, file: !3, line: 1060, type: !895, isLocal: true, isDefinition: true, align: 64)
!1329 = !DIGlobalVariableExpression(var: !1330, expr: !DIExpression())
!1330 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_acpi_pstate_stricttype252", scope: !2, file: !3, line: 1060, type: !1331, isLocal: true, isDefinition: true, align: 8)
!1331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 368, elements: !1332)
!1332 = !{!1333}
!1333 = !DISubrange(count: 46)
!1334 = !DIGlobalVariableExpression(var: !1335, expr: !DIExpression())
!1335 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_acpi_pstate_strict253", scope: !2, file: !3, line: 1061, type: !1336, isLocal: true, isDefinition: true, align: 8)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 1032, elements: !1337)
!1337 = !{!1338}
!1338 = !DISubrange(count: 129)
!1339 = !DIGlobalVariableExpression(var: !1340, expr: !DIExpression())
!1340 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_acpi_cpufreq__254_1065_acpi_cpufreq_init7255", scope: !2, file: !3, line: 1065, type: !319, isLocal: true, isDefinition: true)
!1341 = !DIGlobalVariableExpression(var: !1342, expr: !DIExpression())
!1342 = distinct !DIGlobalVariable(name: "__exitcall_acpi_cpufreq_exit", scope: !2, file: !3, line: 1066, type: !1343, isLocal: true, isDefinition: true)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !1344, line: 120, baseType: !1187)
!1344 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!1345 = !DIGlobalVariableExpression(var: !1346, expr: !DIExpression())
!1346 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias256", scope: !2, file: !3, line: 1068, type: !1347, isLocal: true, isDefinition: true, align: 8)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 328, elements: !1348)
!1348 = !{!1349}
!1349 = !DISubrange(count: 41)
!1350 = !DIGlobalVariableExpression(var: !1351, expr: !DIExpression())
!1351 = distinct !DIGlobalVariable(name: "acpi_pstate_strict", scope: !2, file: !3, line: 74, type: !7, isLocal: true, isDefinition: true)
!1352 = !DIGlobalVariableExpression(var: !1353, expr: !DIExpression())
!1353 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1045, type: !1354, isLocal: true, isDefinition: true)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 104, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: 13)
!1357 = !DIGlobalVariableExpression(var: !1358, expr: !DIExpression())
!1358 = distinct !DIGlobalVariable(name: "acpi_cpufreq_platdrv", scope: !2, file: !3, line: 1043, type: !1359, isLocal: true, isDefinition: true)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !1360, line: 236, size: 1664, elements: !1361)
!1360 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1dac52bf003d860ac3c23951fd976693")
!1361 = !{!1362, !2047, !2048, !2052, !2053, !2057, !2058, !2059, !2060, !2061}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1359, file: !1360, line: 237, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!46, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !1360, line: 23, size: 6464, elements: !1368)
!1368 = !{!1369, !1370, !1371, !1372, !2013, !2014, !2015, !2016, !2031, !2041, !2042, !2045}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1367, file: !1360, line: 24, baseType: !166, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1367, file: !1360, line: 25, baseType: !46, size: 32, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !1367, file: !1360, line: 26, baseType: !604, size: 8, offset: 96)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1367, file: !1360, line: 27, baseType: !1373, size: 5824, offset: 128)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !1374)
!1374 = !{!1375, !1376, !1378, !1381, !1382, !1435, !1524, !1525, !1526, !1527, !1528, !1535, !1777, !1790, !1800, !1804, !1806, !1807, !1808, !1812, !1819, !1820, !1823, !1826, !1952, !1953, !1954, !1957, !1958, !1959, !1960, !1990, !1991, !1992, !1995, !1998, !2007, !2008, !2009, !2010, !2011, !2012}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1373, file: !26, line: 706, baseType: !162, size: 512)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1373, file: !26, line: 707, baseType: !1377, size: 64, offset: 512)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1373, file: !26, line: 709, baseType: !1379, size: 64, offset: 576)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1373, file: !26, line: 711, baseType: !166, size: 64, offset: 640)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1373, file: !26, line: 712, baseType: !1383, size: 64, offset: 704)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1385)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1395, !1400, !1404}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1385, file: !26, line: 90, baseType: !166, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1385, file: !26, line: 91, baseType: !299, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1385, file: !26, line: 92, baseType: !1390, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!46, !1393, !242}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1373)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1385, file: !26, line: 93, baseType: !1396, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!247, !1393, !1399, !678, !685}
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1385, file: !26, line: 95, baseType: !1401, size: 64, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{null, !1377}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1385, file: !26, line: 97, baseType: !1405, size: 64, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1407)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !1408)
!1408 = !{!1409, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1407, file: !38, line: 287, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!46, !1377}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1407, file: !38, line: 288, baseType: !1401, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1407, file: !38, line: 289, baseType: !1410, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1407, file: !38, line: 290, baseType: !1410, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1407, file: !38, line: 291, baseType: !1410, size: 64, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1407, file: !38, line: 292, baseType: !1410, size: 64, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1407, file: !38, line: 293, baseType: !1410, size: 64, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1407, file: !38, line: 294, baseType: !1410, size: 64, offset: 448)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1407, file: !38, line: 295, baseType: !1410, size: 64, offset: 512)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1407, file: !38, line: 296, baseType: !1410, size: 64, offset: 576)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1407, file: !38, line: 297, baseType: !1410, size: 64, offset: 640)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1407, file: !38, line: 298, baseType: !1410, size: 64, offset: 704)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1407, file: !38, line: 299, baseType: !1410, size: 64, offset: 768)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1407, file: !38, line: 300, baseType: !1410, size: 64, offset: 832)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1407, file: !38, line: 301, baseType: !1410, size: 64, offset: 896)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1407, file: !38, line: 302, baseType: !1410, size: 64, offset: 960)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1407, file: !38, line: 303, baseType: !1410, size: 64, offset: 1024)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1407, file: !38, line: 304, baseType: !1410, size: 64, offset: 1088)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1407, file: !38, line: 305, baseType: !1410, size: 64, offset: 1152)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1407, file: !38, line: 306, baseType: !1410, size: 64, offset: 1216)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1407, file: !38, line: 307, baseType: !1410, size: 64, offset: 1280)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1407, file: !38, line: 308, baseType: !1410, size: 64, offset: 1344)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1407, file: !38, line: 309, baseType: !1410, size: 64, offset: 1408)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1373, file: !26, line: 714, baseType: !1436, size: 64, offset: 768)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1438)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1439, line: 80, size: 1344, elements: !1440)
!1439 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1440 = !{!1441, !1442, !1443, !1444, !1445, !1446, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1523}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1438, file: !1439, line: 81, baseType: !166, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1438, file: !1439, line: 82, baseType: !166, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1438, file: !1439, line: 83, baseType: !299, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1438, file: !1439, line: 84, baseType: !299, size: 64, offset: 192)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1438, file: !1439, line: 85, baseType: !299, size: 64, offset: 256)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1438, file: !1439, line: 87, baseType: !1447, size: 64, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!46, !1377, !1450}
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1456, !1457, !1458, !1459, !1475, !1486, !1487, !1488, !1489, !1490, !1498, !1499, !1500, !1501, !1502, !1503}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1451, file: !20, line: 97, baseType: !166, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1451, file: !20, line: 98, baseType: !1436, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1451, file: !20, line: 100, baseType: !142, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1451, file: !20, line: 101, baseType: !166, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1451, file: !20, line: 103, baseType: !604, size: 8, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1451, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1451, file: !20, line: 106, baseType: !1460, size: 64, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1462)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1463, line: 282, size: 1600, elements: !1464)
!1463 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1464 = !{!1465, !1469, !1470, !1474}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1462, file: !1463, line: 283, baseType: !1466, size: 256)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 256, elements: !1467)
!1467 = !{!1468}
!1468 = !DISubrange(count: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1462, file: !1463, line: 284, baseType: !1466, size: 256, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1462, file: !1463, line: 285, baseType: !1471, size: 1024, offset: 512)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 1024, elements: !1472)
!1472 = !{!1473}
!1473 = !DISubrange(count: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1462, file: !1463, line: 286, baseType: !526, size: 64, offset: 1536)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1451, file: !20, line: 107, baseType: !1476, size: 64, offset: 384)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1463, line: 217, size: 256, elements: !1479)
!1479 = !{!1480, !1482, !1484, !1485}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1478, file: !1463, line: 218, baseType: !1481, size: 128)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 128, elements: !1228)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1478, file: !1463, line: 219, baseType: !1483, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1463, line: 15, baseType: !297)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1478, file: !1463, line: 220, baseType: !1011, size: 32, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1478, file: !1463, line: 221, baseType: !1011, size: 32, offset: 224)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1451, file: !20, line: 109, baseType: !1410, size: 64, offset: 448)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1451, file: !20, line: 110, baseType: !1401, size: 64, offset: 512)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1451, file: !20, line: 111, baseType: !1410, size: 64, offset: 576)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1451, file: !20, line: 112, baseType: !1401, size: 64, offset: 640)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1451, file: !20, line: 113, baseType: !1491, size: 64, offset: 704)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!46, !1377, !1494}
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1495)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1496)
!1496 = !{!1497}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1495, file: !38, line: 59, baseType: !46, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1451, file: !20, line: 114, baseType: !1410, size: 64, offset: 768)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1451, file: !20, line: 115, baseType: !299, size: 64, offset: 832)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1451, file: !20, line: 116, baseType: !299, size: 64, offset: 896)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1451, file: !20, line: 118, baseType: !1405, size: 64, offset: 960)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1451, file: !20, line: 119, baseType: !1401, size: 64, offset: 1024)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1451, file: !20, line: 121, baseType: !1504, size: 64, offset: 1088)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1438, file: !1439, line: 88, baseType: !1390, size: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1438, file: !1439, line: 89, baseType: !1410, size: 64, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1438, file: !1439, line: 90, baseType: !1401, size: 64, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1438, file: !1439, line: 91, baseType: !1401, size: 64, offset: 576)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1438, file: !1439, line: 92, baseType: !1401, size: 64, offset: 640)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1438, file: !1439, line: 94, baseType: !1410, size: 64, offset: 704)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1438, file: !1439, line: 95, baseType: !1410, size: 64, offset: 768)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1438, file: !1439, line: 97, baseType: !1491, size: 64, offset: 832)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1438, file: !1439, line: 98, baseType: !1410, size: 64, offset: 896)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1438, file: !1439, line: 100, baseType: !1410, size: 64, offset: 960)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1438, file: !1439, line: 102, baseType: !1410, size: 64, offset: 1024)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1438, file: !1439, line: 103, baseType: !1401, size: 64, offset: 1088)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1438, file: !1439, line: 105, baseType: !1405, size: 64, offset: 1152)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1438, file: !1439, line: 107, baseType: !1520, size: 64, offset: 1216)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1522)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1439, line: 107, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1438, file: !1439, line: 109, baseType: !604, size: 8, offset: 1280)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1373, file: !26, line: 715, baseType: !1450, size: 64, offset: 832)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1373, file: !26, line: 717, baseType: !319, size: 64, offset: 896)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1373, file: !26, line: 719, baseType: !319, size: 64, offset: 960)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1373, file: !26, line: 721, baseType: !505, size: 256, offset: 1024)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1373, file: !26, line: 725, baseType: !1529, size: 448, offset: 1280)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1534}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1529, file: !26, line: 518, baseType: !147, size: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1529, file: !26, line: 519, baseType: !147, size: 128, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1529, file: !26, line: 520, baseType: !147, size: 128, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1529, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1373, file: !26, line: 726, baseType: !1536, size: 2496, offset: 1728)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1537)
!1537 = !{!1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1582, !1583, !1584, !1585, !1586, !1587, !1658, !1659, !1660, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1698, !1702}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1536, file: !38, line: 664, baseType: !1494, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1536, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1536, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1536, file: !38, line: 667, baseType: !604, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1536, file: !38, line: 668, baseType: !604, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1536, file: !38, line: 669, baseType: !604, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1536, file: !38, line: 670, baseType: !604, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1536, file: !38, line: 671, baseType: !604, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1536, file: !38, line: 672, baseType: !604, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1536, file: !38, line: 673, baseType: !604, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1536, file: !38, line: 674, baseType: !604, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1536, file: !38, line: 675, baseType: !1093, size: 32, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1536, file: !38, line: 676, baseType: !177, size: 32, offset: 96)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1536, file: !38, line: 678, baseType: !147, size: 128, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1536, file: !38, line: 679, baseType: !829, size: 256, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1536, file: !38, line: 680, baseType: !1554, size: 64, offset: 512)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1556, line: 43, size: 1536, elements: !1557)
!1556 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1557 = !{!1558, !1559, !1560, !1561, !1562, !1565, !1566, !1567, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1555, file: !1556, line: 44, baseType: !166, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1555, file: !1556, line: 45, baseType: !46, size: 32, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1555, file: !1556, line: 46, baseType: !147, size: 128, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1555, file: !1556, line: 47, baseType: !177, size: 32, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1555, file: !1556, line: 48, baseType: !1563, size: 64, offset: 320)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1555, file: !1556, line: 49, baseType: !1076, size: 320, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1555, file: !1556, line: 50, baseType: !297, size: 64, offset: 704)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1555, file: !1556, line: 51, baseType: !1568, size: 64, offset: 768)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1569, line: 29, baseType: !423)
!1569 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1555, file: !1556, line: 52, baseType: !1568, size: 64, offset: 832)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1555, file: !1556, line: 53, baseType: !1568, size: 64, offset: 896)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1555, file: !1556, line: 54, baseType: !1568, size: 64, offset: 960)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1555, file: !1556, line: 55, baseType: !1568, size: 64, offset: 1024)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1555, file: !1556, line: 56, baseType: !297, size: 64, offset: 1088)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1555, file: !1556, line: 57, baseType: !297, size: 64, offset: 1152)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1555, file: !1556, line: 58, baseType: !297, size: 64, offset: 1216)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1555, file: !1556, line: 59, baseType: !297, size: 64, offset: 1280)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1555, file: !1556, line: 60, baseType: !297, size: 64, offset: 1344)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1555, file: !1556, line: 61, baseType: !1377, size: 64, offset: 1408)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1555, file: !1556, line: 62, baseType: !604, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1555, file: !1556, line: 63, baseType: !604, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1536, file: !38, line: 681, baseType: !604, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1536, file: !38, line: 682, baseType: !604, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1536, file: !38, line: 683, baseType: !604, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1536, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1536, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1536, file: !38, line: 690, baseType: !1588, size: 512, offset: 640)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1589)
!1589 = !{!1590, !1596, !1597, !1602, !1654, !1655, !1656, !1657}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1588, file: !33, line: 119, baseType: !1591, size: 256)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1592, line: 9, size: 256, elements: !1593)
!1592 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1591, file: !1592, line: 10, baseType: !610, size: 192, align: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1591, file: !1592, line: 11, baseType: !1568, size: 64, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1588, file: !33, line: 120, baseType: !1568, size: 64, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1588, file: !33, line: 121, baseType: !1598, size: 64, offset: 320)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!32, !1601}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1588, file: !33, line: 122, baseType: !1603, size: 64, offset: 384)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1605)
!1605 = !{!1606, !1631, !1632, !1635, !1640, !1641, !1649, !1653}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1604, file: !33, line: 160, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1608, file: !33, line: 216, baseType: !439, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1608, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1608, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1608, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1608, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1608, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1608, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1608, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1608, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1608, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1608, file: !33, line: 227, baseType: !217, size: 16, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1608, file: !33, line: 228, baseType: !217, size: 16, offset: 208)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1608, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1608, file: !33, line: 235, baseType: !1568, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1608, file: !33, line: 236, baseType: !1601, size: 64, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1608, file: !33, line: 237, baseType: !1568, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1608, file: !33, line: 238, baseType: !1601, size: 64, offset: 448)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1608, file: !33, line: 239, baseType: !1628, size: 4096, align: 512, offset: 512)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1604, size: 4096, align: 512, elements: !1629)
!1629 = !{!1630}
!1630 = !DISubrange(count: 8)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1604, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1604, file: !33, line: 162, baseType: !1633, size: 32, offset: 96)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !148, line: 32, baseType: !1634)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !281, line: 96, baseType: !46)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1604, file: !33, line: 163, baseType: !1636, size: 32, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !454, line: 274, baseType: !1637)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !454, line: 274, size: 32, elements: !1638)
!1638 = !{!1639}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1637, file: !454, line: 274, baseType: !453, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1604, file: !33, line: 164, baseType: !1601, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1604, file: !33, line: 165, baseType: !1642, size: 128, offset: 256)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1592, line: 14, size: 128, elements: !1643)
!1643 = !{!1644}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1642, file: !1592, line: 15, baseType: !1645, size: 128)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !611, line: 26, size: 128, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1645, file: !611, line: 27, baseType: !712, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1645, file: !611, line: 28, baseType: !615, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1604, file: !33, line: 166, baseType: !1650, size: 64, offset: 384)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!1568}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1604, file: !33, line: 167, baseType: !1568, size: 64, offset: 448)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1588, file: !33, line: 123, baseType: !205, size: 8, offset: 448)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1588, file: !33, line: 124, baseType: !205, size: 8, offset: 456)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1588, file: !33, line: 125, baseType: !205, size: 8, offset: 464)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1588, file: !33, line: 126, baseType: !205, size: 8, offset: 472)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1536, file: !38, line: 691, baseType: !411, size: 64, offset: 1152)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1536, file: !38, line: 692, baseType: !569, size: 256, offset: 1216)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1536, file: !38, line: 693, baseType: !1661, size: 192, offset: 1472)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1662, line: 41, baseType: !1663)
!1662 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1662, line: 37, size: 192, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1663, file: !1662, line: 38, baseType: !177, size: 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1663, file: !1662, line: 39, baseType: !147, size: 128, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1536, file: !38, line: 694, baseType: !1563, size: 64, offset: 1664)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1536, file: !38, line: 695, baseType: !197, size: 32, offset: 1728)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1536, file: !38, line: 696, baseType: !197, size: 32, offset: 1760)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1536, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1536, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1536, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1536, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1536, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1536, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1536, file: !38, line: 703, baseType: !604, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1536, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1536, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1536, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1536, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1536, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1536, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1536, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1536, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1536, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1536, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1536, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1536, file: !38, line: 715, baseType: !411, size: 64, offset: 2048)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1536, file: !38, line: 716, baseType: !411, size: 64, offset: 2112)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1536, file: !38, line: 717, baseType: !411, size: 64, offset: 2176)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1536, file: !38, line: 718, baseType: !411, size: 64, offset: 2240)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1536, file: !38, line: 720, baseType: !1693, size: 64, offset: 2304)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1694, file: !38, line: 633, baseType: !177, size: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1694, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1536, file: !38, line: 721, baseType: !1699, size: 64, offset: 2368)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !1377, !484}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1536, file: !38, line: 722, baseType: !1703, size: 64, offset: 2432)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !54, line: 117, size: 2432, elements: !1705)
!1705 = !{!1706, !1735, !1736, !1743, !1748, !1775, !1776}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1704, file: !54, line: 118, baseType: !1707, size: 320)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !54, line: 52, size: 320, elements: !1708)
!1708 = !{!1709, !1714, !1715, !1716, !1717, !1718}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1707, file: !54, line: 53, baseType: !1710, size: 128)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1711, line: 82, size: 128, elements: !1712)
!1711 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1712 = !{!1713}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1710, file: !1711, line: 83, baseType: !147, size: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1707, file: !54, line: 54, baseType: !484, size: 32, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1707, file: !54, line: 55, baseType: !484, size: 32, offset: 160)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1707, file: !54, line: 56, baseType: !484, size: 32, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1707, file: !54, line: 57, baseType: !53, size: 32, offset: 224)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1707, file: !54, line: 58, baseType: !1719, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1721, line: 65, size: 384, elements: !1722)
!1721 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1722 = !{!1723, !1724}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1720, file: !1721, line: 66, baseType: !428, size: 320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1720, file: !1721, line: 67, baseType: !1725, size: 64, offset: 320)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1721, line: 54, size: 192, elements: !1727)
!1727 = !{!1728, !1733, !1734}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1726, file: !1721, line: 55, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1721, line: 51, baseType: !1730)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!46, !1725, !297, !319}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1726, file: !1721, line: 56, baseType: !1725, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1726, file: !1721, line: 57, baseType: !46, size: 32, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1704, file: !54, line: 119, baseType: !1707, size: 320, offset: 320)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1704, file: !54, line: 120, baseType: !1737, size: 1408, offset: 640)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !54, line: 85, size: 1408, elements: !1738)
!1738 = !{!1739, !1740, !1741, !1742}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1737, file: !54, line: 86, baseType: !1707, size: 320)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1737, file: !54, line: 87, baseType: !1720, size: 384, offset: 320)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1737, file: !54, line: 88, baseType: !1707, size: 320, offset: 704)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1737, file: !54, line: 89, baseType: !1720, size: 384, offset: 1024)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1704, file: !54, line: 121, baseType: !1744, size: 192, offset: 2048)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !54, line: 71, size: 192, elements: !1745)
!1745 = !{!1746, !1747}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1744, file: !54, line: 72, baseType: !147, size: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1744, file: !54, line: 73, baseType: !484, size: 32, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1704, file: !54, line: 122, baseType: !1749, size: 64, offset: 2240)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !54, line: 107, size: 576, elements: !1751)
!1751 = !{!1752, !1753, !1774}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1750, file: !54, line: 108, baseType: !59, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1750, file: !54, line: 113, baseType: !1754, size: 448, offset: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1750, file: !54, line: 109, size: 448, elements: !1755)
!1755 = !{!1756, !1762, !1767}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1754, file: !54, line: 110, baseType: !1757, size: 320)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1711, line: 86, size: 320, elements: !1758)
!1758 = !{!1759, !1760, !1761}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1757, file: !1711, line: 87, baseType: !46, size: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1757, file: !1711, line: 88, baseType: !147, size: 128, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1757, file: !1711, line: 89, baseType: !147, size: 128, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1754, file: !54, line: 111, baseType: !1763, size: 192)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !54, line: 66, size: 192, elements: !1764)
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1763, file: !54, line: 67, baseType: !147, size: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1763, file: !54, line: 68, baseType: !484, size: 32, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1754, file: !54, line: 112, baseType: !1768, size: 448)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !54, line: 92, size: 448, elements: !1769)
!1769 = !{!1770, !1771, !1772}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1768, file: !54, line: 93, baseType: !66, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1768, file: !54, line: 94, baseType: !1757, size: 320, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1768, file: !54, line: 95, baseType: !1773, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1750, file: !54, line: 114, baseType: !1377, size: 64, offset: 512)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1704, file: !54, line: 123, baseType: !1749, size: 64, offset: 2304)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1704, file: !54, line: 124, baseType: !1749, size: 64, offset: 2368)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1373, file: !26, line: 727, baseType: !1778, size: 64, offset: 4224)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1780)
!1780 = !{!1781, !1782, !1783, !1787, !1788, !1789}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1779, file: !38, line: 743, baseType: !1407, size: 1472)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1779, file: !38, line: 744, baseType: !1410, size: 64, offset: 1472)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1779, file: !38, line: 745, baseType: !1784, size: 64, offset: 1536)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{null, !1377, !604}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1779, file: !38, line: 746, baseType: !1410, size: 64, offset: 1600)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1779, file: !38, line: 747, baseType: !1401, size: 64, offset: 1664)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1779, file: !38, line: 748, baseType: !1401, size: 64, offset: 1728)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1373, file: !26, line: 736, baseType: !1791, size: 128, offset: 4288)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1792)
!1792 = !{!1793, !1797}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1791, file: !26, line: 531, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1796, line: 13, flags: DIFlagFwdDecl)
!1796 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1791, file: !26, line: 532, baseType: !1798, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1373, file: !26, line: 738, baseType: !1801, size: 64, offset: 4416)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1803)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1373, file: !26, line: 740, baseType: !1805, size: 64, offset: 4480)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1373, file: !26, line: 741, baseType: !411, size: 64, offset: 4544)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1373, file: !26, line: 746, baseType: !411, size: 64, offset: 4608)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1373, file: !26, line: 747, baseType: !1809, size: 64, offset: 4672)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1811)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1373, file: !26, line: 749, baseType: !1813, size: 64, offset: 4736)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1815)
!1815 = !{!1816, !1817, !1818}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1814, file: !26, line: 433, baseType: !7, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1814, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1814, file: !26, line: 435, baseType: !297, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1373, file: !26, line: 751, baseType: !147, size: 128, offset: 4800)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1373, file: !26, line: 762, baseType: !1821, size: 64, offset: 4928)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1373, file: !26, line: 770, baseType: !1824, offset: 4992)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1825, line: 5, elements: !384)
!1825 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1373, file: !26, line: 772, baseType: !1827, size: 64, offset: 4992)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1829, line: 48, size: 1152, elements: !1830)
!1829 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1830 = !{!1831, !1832, !1834, !1835, !1938, !1946, !1947, !1948, !1949, !1950, !1951}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1828, file: !1829, line: 49, baseType: !166, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1828, file: !1829, line: 50, baseType: !1833, size: 32, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1829, line: 25, baseType: !1093)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1828, file: !1829, line: 51, baseType: !166, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1828, file: !1829, line: 52, baseType: !1836, size: 512, offset: 192)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1837, line: 41, size: 512, elements: !1838)
!1837 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1838 = !{!1839, !1841, !1934, !1935, !1936, !1937}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1836, file: !1837, line: 42, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1836, file: !1837, line: 43, baseType: !1842, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1844)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1837, line: 125, size: 1408, elements: !1845)
!1845 = !{!1846, !1850, !1854, !1860, !1864, !1865, !1869, !1873, !1877, !1881, !1885, !1886, !1890, !1894, !1898, !1909, !1910, !1911, !1912, !1922, !1926, !1930}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1844, file: !1837, line: 126, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!1840, !1840}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1844, file: !1837, line: 127, baseType: !1851, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{null, !1840}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1844, file: !1837, line: 128, baseType: !1855, size: 64, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!604, !1858}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1836)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1844, file: !1837, line: 129, baseType: !1861, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!526, !1858, !1393}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1844, file: !1837, line: 131, baseType: !1855, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1844, file: !1837, line: 133, baseType: !1866, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!70, !1858}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1844, file: !1837, line: 134, baseType: !1870, size: 64, offset: 384)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!604, !1858, !166}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1844, file: !1837, line: 136, baseType: !1874, size: 64, offset: 448)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!46, !1858, !166, !7, !319, !294}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1844, file: !1837, line: 141, baseType: !1878, size: 64, offset: 512)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!46, !1858, !166, !1160, !294}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1844, file: !1837, line: 144, baseType: !1882, size: 64, offset: 576)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!166, !1858}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1844, file: !1837, line: 145, baseType: !1882, size: 64, offset: 640)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1844, file: !1837, line: 146, baseType: !1887, size: 64, offset: 704)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!1840, !1858}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1844, file: !1837, line: 148, baseType: !1891, size: 64, offset: 768)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!1840, !1858, !1840}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1844, file: !1837, line: 151, baseType: !1895, size: 64, offset: 832)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!1840, !1858, !166}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1844, file: !1837, line: 153, baseType: !1899, size: 64, offset: 896)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!46, !1858, !166, !166, !7, !7, !1902}
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1837, line: 94, size: 640, elements: !1904)
!1904 = !{!1905, !1906, !1907}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1903, file: !1837, line: 95, baseType: !1840, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1903, file: !1837, line: 96, baseType: !7, size: 32, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1903, file: !1837, line: 97, baseType: !1908, size: 512, offset: 128)
!1908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 512, elements: !1629)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1844, file: !1837, line: 158, baseType: !1891, size: 64, offset: 960)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1844, file: !1837, line: 161, baseType: !1887, size: 64, offset: 1024)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1844, file: !1837, line: 163, baseType: !1847, size: 64, offset: 1088)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1844, file: !1837, line: 164, baseType: !1913, size: 64, offset: 1152)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!46, !1858, !1916}
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1837, line: 73, size: 128, elements: !1918)
!1918 = !{!1919, !1920, !1921}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1917, file: !1837, line: 74, baseType: !7, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1917, file: !1837, line: 75, baseType: !7, size: 32, offset: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1917, file: !1837, line: 76, baseType: !1858, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1844, file: !1837, line: 166, baseType: !1923, size: 64, offset: 1216)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!319, !1840, !46}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1844, file: !1837, line: 167, baseType: !1927, size: 64, offset: 1280)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!46, !1858, !7}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1844, file: !1837, line: 168, baseType: !1931, size: 64, offset: 1344)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!46, !1840}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1836, file: !1837, line: 44, baseType: !1377, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1836, file: !1837, line: 45, baseType: !147, size: 128, offset: 192)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1836, file: !1837, line: 46, baseType: !147, size: 128, offset: 320)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1836, file: !1837, line: 47, baseType: !205, size: 8, offset: 448)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1828, file: !1829, line: 54, baseType: !1939, size: 64, offset: 704)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1829, line: 28, size: 256, elements: !1941)
!1941 = !{!1942, !1943, !1944, !1945}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1940, file: !1829, line: 29, baseType: !247, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1940, file: !1829, line: 30, baseType: !46, size: 32, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1940, file: !1829, line: 31, baseType: !319, size: 64, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1940, file: !1829, line: 32, baseType: !1939, size: 64, offset: 192)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1828, file: !1829, line: 55, baseType: !1939, size: 64, offset: 768)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1828, file: !1829, line: 56, baseType: !1827, size: 64, offset: 832)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1828, file: !1829, line: 57, baseType: !1827, size: 64, offset: 896)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1828, file: !1829, line: 58, baseType: !1827, size: 64, offset: 960)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1828, file: !1829, line: 62, baseType: !297, size: 64, offset: 1024)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1828, file: !1829, line: 63, baseType: !319, size: 64, offset: 1088)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1373, file: !26, line: 773, baseType: !1840, size: 64, offset: 5056)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1373, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1373, file: !26, line: 778, baseType: !1955, size: 32, offset: 5152)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !148, line: 21, baseType: !1956)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !148, line: 18, baseType: !1093)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1373, file: !26, line: 779, baseType: !1093, size: 32, offset: 5184)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1373, file: !26, line: 781, baseType: !177, size: 32, offset: 5216)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1373, file: !26, line: 782, baseType: !147, size: 128, offset: 5248)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1373, file: !26, line: 784, baseType: !1961, size: 64, offset: 5376)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1963)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1964, line: 52, size: 768, elements: !1965)
!1964 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1965 = !{!1966, !1967, !1968, !1969, !1970, !1974, !1978, !1979, !1980, !1981, !1985, !1989}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1963, file: !1964, line: 53, baseType: !166, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1963, file: !1964, line: 55, baseType: !299, size: 64, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1963, file: !1964, line: 56, baseType: !299, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1963, file: !1964, line: 58, baseType: !1390, size: 64, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1963, file: !1964, line: 59, baseType: !1971, size: 64, offset: 256)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!247, !1393, !1399}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1963, file: !1964, line: 61, baseType: !1975, size: 64, offset: 320)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{null, !1961}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1963, file: !1964, line: 62, baseType: !1401, size: 64, offset: 384)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1963, file: !1964, line: 64, baseType: !1410, size: 64, offset: 448)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1963, file: !1964, line: 66, baseType: !643, size: 64, offset: 512)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1963, file: !1964, line: 67, baseType: !1982, size: 64, offset: 576)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!526, !1393}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1963, file: !1964, line: 69, baseType: !1986, size: 64, offset: 640)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !1393, !678, !685}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1963, file: !1964, line: 71, baseType: !1405, size: 64, offset: 704)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1373, file: !26, line: 785, baseType: !299, size: 64, offset: 5440)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1373, file: !26, line: 787, baseType: !1401, size: 64, offset: 5504)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1373, file: !26, line: 788, baseType: !1993, size: 64, offset: 5568)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1373, file: !26, line: 789, baseType: !1996, size: 64, offset: 5632)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1373, file: !26, line: 791, baseType: !1999, size: 64, offset: 5696)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !2001)
!2001 = !{!2002, !2003, !2004, !2005, !2006}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2000, file: !26, line: 598, baseType: !76, size: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2000, file: !26, line: 599, baseType: !85, size: 32, offset: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2000, file: !26, line: 600, baseType: !90, size: 32, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2000, file: !26, line: 601, baseType: !604, size: 8, offset: 96)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2000, file: !26, line: 602, baseType: !604, size: 8, offset: 104)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1373, file: !26, line: 793, baseType: !95, size: 32, offset: 5760)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1373, file: !26, line: 795, baseType: !604, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1373, file: !26, line: 796, baseType: !604, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1373, file: !26, line: 797, baseType: !604, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1373, file: !26, line: 798, baseType: !604, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1373, file: !26, line: 799, baseType: !604, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !1367, file: !1360, line: 28, baseType: !411, size: 64, offset: 5952)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1367, file: !1360, line: 29, baseType: !1814, size: 128, offset: 6016)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !1367, file: !1360, line: 30, baseType: !1093, size: 32, offset: 6144)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !1367, file: !1360, line: 31, baseType: !2017, size: 64, offset: 6208)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2019, line: 21, size: 512, elements: !2020)
!2019 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!2020 = !{!2021, !2024, !2025, !2026, !2027, !2028, !2029, !2030}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2018, file: !2019, line: 22, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !148, line: 164, baseType: !2023)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !148, line: 159, baseType: !411)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2018, file: !2019, line: 23, baseType: !2022, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2018, file: !2019, line: 24, baseType: !166, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2018, file: !2019, line: 25, baseType: !297, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2018, file: !2019, line: 26, baseType: !297, size: 64, offset: 256)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2018, file: !2019, line: 27, baseType: !2017, size: 64, offset: 320)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2018, file: !2019, line: 27, baseType: !2017, size: 64, offset: 384)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2018, file: !2019, line: 27, baseType: !2017, size: 64, offset: 448)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !1367, file: !1360, line: 33, baseType: !2032, size: 64, offset: 6272)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2034)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1463, line: 607, size: 256, elements: !2035)
!2035 = !{!2036, !2040}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2034, file: !1463, line: 608, baseType: !2037, size: 160)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 160, elements: !2038)
!2038 = !{!2039}
!2039 = !DISubrange(count: 20)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2034, file: !1463, line: 609, baseType: !1483, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !1367, file: !1360, line: 38, baseType: !166, size: 64, offset: 6336)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !1367, file: !1360, line: 41, baseType: !2043, size: 64, offset: 6400)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !1360, line: 19, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1367, file: !1360, line: 44, baseType: !2046, offset: 6464)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !1825, line: 8, elements: !384)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1359, file: !1360, line: 247, baseType: !1363, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "remove_new", scope: !1359, file: !1360, line: 248, baseType: !2049, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !1366}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1359, file: !1360, line: 250, baseType: !2049, size: 64, offset: 192)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1359, file: !1360, line: 251, baseType: !2054, size: 64, offset: 256)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!46, !1366, !1494}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1359, file: !1360, line: 252, baseType: !1363, size: 64, offset: 320)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1359, file: !1360, line: 253, baseType: !1451, size: 1152, offset: 384)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !1359, file: !1360, line: 254, baseType: !2032, size: 64, offset: 1536)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !1359, file: !1360, line: 255, baseType: !604, size: 8, offset: 1600)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !1359, file: !1360, line: 263, baseType: !604, size: 8, offset: 1608)
!2062 = !DIGlobalVariableExpression(var: !2063, expr: !DIExpression())
!2063 = distinct !DIGlobalVariable(name: "acpi_cpufreq_driver", scope: !2, file: !3, line: 966, type: !2064, isLocal: true, isDefinition: true)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_driver", file: !102, line: 325, size: 1664, elements: !2065)
!2065 = !{!2066, !2067, !2068, !2069, !3257, !3269, !3270, !3274, !3275, !3279, !3283, !3284, !3285, !3289, !3293, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3314, !3315, !3319}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2064, file: !102, line: 326, baseType: !1227, size: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2064, file: !102, line: 327, baseType: !215, size: 16, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2064, file: !102, line: 328, baseType: !319, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2064, file: !102, line: 331, baseType: !2070, size: 64, offset: 256)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!46, !2073}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_policy", file: !102, line: 55, size: 5120, elements: !2075)
!2075 = !{!2076, !2077, !2078, !2079, !2080, !2081, !2085, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2121, !2122, !2123, !2124, !2125, !2127, !2128, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !3209, !3212, !3213, !3255, !3256}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !2074, file: !102, line: 57, baseType: !1293, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "related_cpus", scope: !2074, file: !102, line: 58, baseType: !1293, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "real_cpus", scope: !2074, file: !102, line: 59, baseType: !1293, size: 64, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !2074, file: !102, line: 61, baseType: !7, size: 32, offset: 192)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2074, file: !102, line: 63, baseType: !7, size: 32, offset: 224)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !2074, file: !102, line: 65, baseType: !2082, size: 64, offset: 256)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !2084, line: 17, flags: DIFlagFwdDecl)
!2084 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1429a43eaf99e9312dde348d6bc82f22")
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "cpuinfo", scope: !2074, file: !102, line: 66, baseType: !2086, size: 96, offset: 320)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_cpuinfo", file: !102, line: 47, size: 96, elements: !2087)
!2087 = !{!2088, !2089, !2090}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !2086, file: !102, line: 48, baseType: !7, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !2086, file: !102, line: 49, baseType: !7, size: 32, offset: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !2086, file: !102, line: 52, baseType: !7, size: 32, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2074, file: !102, line: 68, baseType: !7, size: 32, offset: 416)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2074, file: !102, line: 69, baseType: !7, size: 32, offset: 448)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !2074, file: !102, line: 70, baseType: !7, size: 32, offset: 480)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_freq", scope: !2074, file: !102, line: 72, baseType: !7, size: 32, offset: 512)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2074, file: !102, line: 74, baseType: !7, size: 32, offset: 544)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "last_policy", scope: !2074, file: !102, line: 75, baseType: !7, size: 32, offset: 576)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !2074, file: !102, line: 76, baseType: !2098, size: 64, offset: 640)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_governor", file: !102, line: 577, size: 832, elements: !2100)
!2100 = !{!2101, !2102, !2103, !2107, !2108, !2109, !2110, !2114, !2118, !2119, !2120}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2099, file: !102, line: 578, baseType: !1227, size: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2099, file: !102, line: 579, baseType: !2070, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2099, file: !102, line: 580, baseType: !2104, size: 64, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{null, !2073}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2099, file: !102, line: 581, baseType: !2070, size: 64, offset: 256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2099, file: !102, line: 582, baseType: !2104, size: 64, offset: 320)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2099, file: !102, line: 583, baseType: !2104, size: 64, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "show_setspeed", scope: !2099, file: !102, line: 584, baseType: !2111, size: 64, offset: 448)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!279, !2073, !247}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "store_setspeed", scope: !2099, file: !102, line: 586, baseType: !2115, size: 64, offset: 512)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!46, !2073, !7}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !2099, file: !102, line: 588, baseType: !147, size: 128, offset: 576)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2099, file: !102, line: 589, baseType: !142, size: 64, offset: 704)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2099, file: !102, line: 590, baseType: !205, size: 8, offset: 768)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !2074, file: !102, line: 77, baseType: !319, size: 64, offset: 704)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "last_governor", scope: !2074, file: !102, line: 78, baseType: !1227, size: 128, offset: 768)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !2074, file: !102, line: 80, baseType: !569, size: 256, offset: 896)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "constraints", scope: !2074, file: !102, line: 83, baseType: !1737, size: 1408, offset: 1152)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_req", scope: !2074, file: !102, line: 84, baseType: !2126, size: 64, offset: 2560)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_req", scope: !2074, file: !102, line: 85, baseType: !2126, size: 64, offset: 2624)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table", scope: !2074, file: !102, line: 87, baseType: !2129, size: 64, offset: 2688)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_frequency_table", file: !102, line: 690, size: 96, elements: !2131)
!2131 = !{!2132, !2133, !2134}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2130, file: !102, line: 691, baseType: !7, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2130, file: !102, line: 692, baseType: !7, size: 32, offset: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2130, file: !102, line: 693, baseType: !7, size: 32, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table_sorted", scope: !2074, file: !102, line: 88, baseType: !101, size: 32, offset: 2752)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "policy_list", scope: !2074, file: !102, line: 90, baseType: !147, size: 128, offset: 2816)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2074, file: !102, line: 91, baseType: !162, size: 512, offset: 2944)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_unregister", scope: !2074, file: !102, line: 92, baseType: !829, size: 256, offset: 3456)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !2074, file: !102, line: 102, baseType: !428, size: 320, offset: 3712)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_possible", scope: !2074, file: !102, line: 112, baseType: !604, size: 8, offset: 4032)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_enabled", scope: !2074, file: !102, line: 113, baseType: !604, size: 8, offset: 4040)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "strict_target", scope: !2074, file: !102, line: 119, baseType: !604, size: 8, offset: 4048)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "efficiencies_available", scope: !2074, file: !102, line: 126, baseType: !604, size: 8, offset: 4056)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "transition_delay_us", scope: !2074, file: !102, line: 133, baseType: !7, size: 32, offset: 4064)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dvfs_possible_from_any_cpu", scope: !2074, file: !102, line: 142, baseType: !604, size: 8, offset: 4096)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "boost_enabled", scope: !2074, file: !102, line: 145, baseType: !604, size: 8, offset: 4104)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cached_target_freq", scope: !2074, file: !102, line: 148, baseType: !7, size: 32, offset: 4128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "cached_resolved_idx", scope: !2074, file: !102, line: 149, baseType: !7, size: 32, offset: 4160)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "transition_ongoing", scope: !2074, file: !102, line: 152, baseType: !604, size: 8, offset: 4192)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "transition_lock", scope: !2074, file: !102, line: 153, baseType: !177, size: 32, offset: 4224)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "transition_wait", scope: !2074, file: !102, line: 154, baseType: !1661, size: 192, offset: 4288)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "transition_task", scope: !2074, file: !102, line: 155, baseType: !2153, size: 64, offset: 4480)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !743, line: 746, size: 58368, elements: !2155)
!2155 = !{!2156, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2241, !2252, !2272, !2276, !2279, !2310, !2311, !2312, !2313, !2317, !2319, !2320, !2321, !2322, !2323, !2324, !2335, !2336, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2436, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2472, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2507, !2513, !2518, !2519, !2520, !2523, !2524, !2527, !2534, !2539, !2542, !2545, !2548, !2552, !2555, !2558, !2564, !2565, !2566, !2572, !2573, !2574, !2575, !2576, !2579, !2580, !2581, !2590, !2598, !2599, !2600, !2601, !2602, !2607, !2608, !2609, !2612, !2613, !2616, !2619, !2622, !2625, !2628, !2629, !2715, !2726, !2727, !2728, !2729, !2735, !2740, !2741, !2742, !2745, !2746, !2749, !2752, !2753, !2756, !2757, !2758, !2761, !2762, !2763, !2764, !2765, !2766, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2798, !2801, !2867, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2879, !2951, !2953, !2954, !2955, !2956, !2957, !2958, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2987, !2988, !2989}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2154, file: !743, line: 752, baseType: !2157, size: 192)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2158, line: 56, size: 192, elements: !2159)
!2158 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2159 = !{!2160, !2161, !2162, !2163}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2157, file: !2158, line: 57, baseType: !297, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2157, file: !2158, line: 58, baseType: !297, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2157, file: !2158, line: 59, baseType: !1093, size: 32, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2157, file: !2158, line: 61, baseType: !1093, size: 32, offset: 160)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2154, file: !743, line: 754, baseType: !7, size: 32, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2154, file: !743, line: 767, baseType: !319, size: 64, offset: 256)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2154, file: !743, line: 768, baseType: !812, size: 32, offset: 320)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2154, file: !743, line: 770, baseType: !7, size: 32, offset: 352)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2154, file: !743, line: 771, baseType: !7, size: 32, offset: 384)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2154, file: !743, line: 774, baseType: !46, size: 32, offset: 416)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2154, file: !743, line: 775, baseType: !2171, size: 128, offset: 448)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2172, line: 58, size: 128, elements: !2173)
!2172 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2173 = !{!2174, !2180, !2185, !2186}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2171, file: !2172, line: 59, baseType: !2175, size: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !2176, line: 60, size: 64, elements: !2177)
!2176 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!2177 = !{!2178}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2175, file: !2176, line: 61, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !2171, file: !2172, line: 60, baseType: !2181, size: 32, offset: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2171, file: !2172, line: 60, size: 32, elements: !2182)
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2181, file: !2172, line: 61, baseType: !7, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2181, file: !2172, line: 62, baseType: !197, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2171, file: !2172, line: 65, baseType: !215, size: 16, offset: 96)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2171, file: !2172, line: 65, baseType: !215, size: 16, offset: 112)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2154, file: !743, line: 776, baseType: !7, size: 32, offset: 576)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2154, file: !743, line: 777, baseType: !297, size: 64, offset: 640)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2154, file: !743, line: 778, baseType: !2153, size: 64, offset: 704)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2154, file: !743, line: 787, baseType: !46, size: 32, offset: 768)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2154, file: !743, line: 788, baseType: !46, size: 32, offset: 800)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2154, file: !743, line: 790, baseType: !46, size: 32, offset: 832)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2154, file: !743, line: 792, baseType: !46, size: 32, offset: 864)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2154, file: !743, line: 793, baseType: !46, size: 32, offset: 896)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2154, file: !743, line: 794, baseType: !46, size: 32, offset: 928)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2154, file: !743, line: 795, baseType: !7, size: 32, offset: 960)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2154, file: !743, line: 797, baseType: !2198, size: 2048, offset: 1024)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !743, line: 551, size: 2048, elements: !2199)
!2199 = !{!2200, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2220, !2223, !2224, !2225}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2198, file: !743, line: 553, baseType: !2201, size: 128)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !743, line: 411, size: 128, elements: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2201, file: !743, line: 412, baseType: !297, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2201, file: !743, line: 413, baseType: !1093, size: 32, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2198, file: !743, line: 554, baseType: !610, size: 192, align: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2198, file: !743, line: 555, baseType: !411, size: 64, offset: 320)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2198, file: !743, line: 556, baseType: !411, size: 64, offset: 384)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2198, file: !743, line: 558, baseType: !147, size: 128, offset: 448)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2198, file: !743, line: 559, baseType: !7, size: 32, offset: 576)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2198, file: !743, line: 561, baseType: !411, size: 64, offset: 640)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2198, file: !743, line: 562, baseType: !411, size: 64, offset: 704)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2198, file: !743, line: 563, baseType: !411, size: 64, offset: 768)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2198, file: !743, line: 564, baseType: !411, size: 64, offset: 832)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2198, file: !743, line: 565, baseType: !423, size: 64, offset: 896)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2198, file: !743, line: 566, baseType: !411, size: 64, offset: 960)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2198, file: !743, line: 568, baseType: !411, size: 64, offset: 1024)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2198, file: !743, line: 571, baseType: !46, size: 32, offset: 1088)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2198, file: !743, line: 572, baseType: !2219, size: 64, offset: 1152)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2198, file: !743, line: 574, baseType: !2221, size: 64, offset: 1216)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !743, line: 49, flags: DIFlagFwdDecl)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2198, file: !743, line: 576, baseType: !2221, size: 64, offset: 1280)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2198, file: !743, line: 578, baseType: !297, size: 64, offset: 1344)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2198, file: !743, line: 588, baseType: !2226, size: 512, align: 512, offset: 1536)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !743, line: 497, size: 512, align: 512, elements: !2227)
!2227 = !{!2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2226, file: !743, line: 498, baseType: !411, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2226, file: !743, line: 499, baseType: !411, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2226, file: !743, line: 500, baseType: !411, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2226, file: !743, line: 501, baseType: !1093, size: 32, offset: 192)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2226, file: !743, line: 502, baseType: !1093, size: 32, offset: 224)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2226, file: !743, line: 503, baseType: !297, size: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2226, file: !743, line: 504, baseType: !297, size: 64, offset: 320)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2226, file: !743, line: 505, baseType: !297, size: 64, offset: 384)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2226, file: !743, line: 506, baseType: !2237, size: 64, align: 64, offset: 448)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !743, line: 445, size: 64, align: 64, elements: !2238)
!2238 = !{!2239, !2240}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2237, file: !743, line: 446, baseType: !7, size: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2237, file: !743, line: 447, baseType: !7, size: 32, offset: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2154, file: !743, line: 798, baseType: !2242, size: 384, offset: 3072)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !743, line: 592, size: 384, elements: !2243)
!2243 = !{!2244, !2245, !2246, !2247, !2248, !2249, !2250}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2242, file: !743, line: 593, baseType: !147, size: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2242, file: !743, line: 594, baseType: !297, size: 64, offset: 128)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2242, file: !743, line: 595, baseType: !297, size: 64, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2242, file: !743, line: 596, baseType: !7, size: 32, offset: 256)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2242, file: !743, line: 597, baseType: !217, size: 16, offset: 288)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2242, file: !743, line: 598, baseType: !217, size: 16, offset: 304)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2242, file: !743, line: 600, baseType: !2251, size: 64, offset: 320)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2154, file: !743, line: 799, baseType: !2253, size: 1792, offset: 3456)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !743, line: 610, size: 1792, elements: !2254)
!2254 = !{!2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2253, file: !743, line: 611, baseType: !610, size: 192, align: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2253, file: !743, line: 618, baseType: !411, size: 64, offset: 192)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2253, file: !743, line: 619, baseType: !411, size: 64, offset: 256)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2253, file: !743, line: 620, baseType: !411, size: 64, offset: 320)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2253, file: !743, line: 621, baseType: !411, size: 64, offset: 384)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2253, file: !743, line: 622, baseType: !411, size: 64, offset: 448)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2253, file: !743, line: 629, baseType: !423, size: 64, offset: 512)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2253, file: !743, line: 630, baseType: !411, size: 64, offset: 576)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2253, file: !743, line: 631, baseType: !7, size: 32, offset: 640)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2253, file: !743, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2253, file: !743, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2253, file: !743, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2253, file: !743, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2253, file: !743, line: 662, baseType: !1588, size: 512, offset: 704)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2253, file: !743, line: 671, baseType: !1588, size: 512, offset: 1216)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2253, file: !743, line: 679, baseType: !2271, size: 64, offset: 1728)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2154, file: !743, line: 800, baseType: !2273, size: 64, offset: 5248)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2275)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !743, line: 800, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2154, file: !743, line: 809, baseType: !2277, size: 64, offset: 5312)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !743, line: 70, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2154, file: !743, line: 825, baseType: !2280, size: 2048, align: 512, offset: 5632)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !743, line: 509, size: 2048, align: 512, elements: !2281)
!2281 = !{!2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2280, file: !743, line: 511, baseType: !411, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2280, file: !743, line: 512, baseType: !411, size: 64, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2280, file: !743, line: 513, baseType: !411, size: 64, offset: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2280, file: !743, line: 514, baseType: !411, size: 64, offset: 192)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2280, file: !743, line: 515, baseType: !411, size: 64, offset: 256)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2280, file: !743, line: 516, baseType: !411, size: 64, offset: 320)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2280, file: !743, line: 518, baseType: !411, size: 64, offset: 384)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2280, file: !743, line: 519, baseType: !411, size: 64, offset: 448)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2280, file: !743, line: 520, baseType: !423, size: 64, offset: 512)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2280, file: !743, line: 522, baseType: !411, size: 64, offset: 576)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2280, file: !743, line: 523, baseType: !411, size: 64, offset: 640)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2280, file: !743, line: 524, baseType: !423, size: 64, offset: 704)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2280, file: !743, line: 526, baseType: !423, size: 64, offset: 768)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2280, file: !743, line: 527, baseType: !411, size: 64, offset: 832)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2280, file: !743, line: 529, baseType: !411, size: 64, offset: 896)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2280, file: !743, line: 530, baseType: !411, size: 64, offset: 960)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2280, file: !743, line: 531, baseType: !411, size: 64, offset: 1024)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2280, file: !743, line: 532, baseType: !411, size: 64, offset: 1088)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2280, file: !743, line: 533, baseType: !411, size: 64, offset: 1152)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2280, file: !743, line: 535, baseType: !411, size: 64, offset: 1216)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2280, file: !743, line: 536, baseType: !411, size: 64, offset: 1280)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2280, file: !743, line: 537, baseType: !411, size: 64, offset: 1344)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2280, file: !743, line: 538, baseType: !411, size: 64, offset: 1408)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2280, file: !743, line: 539, baseType: !411, size: 64, offset: 1472)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2280, file: !743, line: 540, baseType: !411, size: 64, offset: 1536)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2280, file: !743, line: 541, baseType: !411, size: 64, offset: 1600)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2280, file: !743, line: 542, baseType: !411, size: 64, offset: 1664)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2280, file: !743, line: 543, baseType: !411, size: 64, offset: 1728)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2154, file: !743, line: 833, baseType: !7, size: 32, offset: 7680)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2154, file: !743, line: 836, baseType: !7, size: 32, offset: 7712)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2154, file: !743, line: 837, baseType: !46, size: 32, offset: 7744)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2154, file: !743, line: 838, baseType: !2314, size: 64, offset: 7808)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2316)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1294, line: 19, baseType: !1296)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2154, file: !743, line: 839, baseType: !2318, size: 64, offset: 7872)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2154, file: !743, line: 840, baseType: !2316, size: 64, offset: 7936)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2154, file: !743, line: 841, baseType: !319, size: 64, offset: 8000)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2154, file: !743, line: 843, baseType: !217, size: 16, offset: 8064)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2154, file: !743, line: 845, baseType: !217, size: 16, offset: 8080)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2154, file: !743, line: 848, baseType: !46, size: 32, offset: 8096)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2154, file: !743, line: 849, baseType: !2325, size: 32, offset: 8128)
!2325 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !743, line: 718, size: 32, elements: !2326)
!2326 = !{!2327, !2334}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2325, file: !743, line: 724, baseType: !2328, size: 32)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2325, file: !743, line: 719, size: 32, elements: !2329)
!2329 = !{!2330, !2331, !2332, !2333}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2328, file: !743, line: 720, baseType: !205, size: 8)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2328, file: !743, line: 721, baseType: !205, size: 8, offset: 8)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2328, file: !743, line: 722, baseType: !205, size: 8, offset: 16)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2328, file: !743, line: 723, baseType: !205, size: 8, offset: 24)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2325, file: !743, line: 725, baseType: !1093, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2154, file: !743, line: 850, baseType: !147, size: 128, offset: 8192)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2154, file: !743, line: 851, baseType: !2337, size: 64, offset: 8320)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !743, line: 60, flags: DIFlagFwdDecl)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2154, file: !743, line: 855, baseType: !297, size: 64, offset: 8384)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2154, file: !743, line: 856, baseType: !205, size: 8, offset: 8448)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2154, file: !743, line: 857, baseType: !205, size: 8, offset: 8456)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2154, file: !743, line: 858, baseType: !46, size: 32, offset: 8480)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2154, file: !743, line: 859, baseType: !147, size: 128, offset: 8512)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2154, file: !743, line: 860, baseType: !46, size: 32, offset: 8640)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2154, file: !743, line: 861, baseType: !147, size: 128, offset: 8704)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2154, file: !743, line: 873, baseType: !2347, size: 256, offset: 8832)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !743, line: 376, size: 256, elements: !2348)
!2348 = !{!2349, !2350, !2351, !2352}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2347, file: !743, line: 381, baseType: !297, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2347, file: !743, line: 384, baseType: !413, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2347, file: !743, line: 389, baseType: !413, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2347, file: !743, line: 392, baseType: !413, size: 64, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2154, file: !743, line: 875, baseType: !147, size: 128, offset: 9088)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2154, file: !743, line: 877, baseType: !1757, size: 320, offset: 9216)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2154, file: !743, line: 878, baseType: !610, size: 192, align: 64, offset: 9536)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2154, file: !743, line: 881, baseType: !363, size: 64, offset: 9728)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2154, file: !743, line: 882, baseType: !363, size: 64, offset: 9792)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2154, file: !743, line: 884, baseType: !46, size: 32, offset: 9856)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2154, file: !743, line: 885, baseType: !46, size: 32, offset: 9888)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2154, file: !743, line: 886, baseType: !46, size: 32, offset: 9920)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2154, file: !743, line: 888, baseType: !46, size: 32, offset: 9952)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2154, file: !743, line: 890, baseType: !297, size: 64, offset: 9984)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2154, file: !743, line: 893, baseType: !7, size: 32, offset: 10048)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2154, file: !743, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2154, file: !743, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2154, file: !743, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2154, file: !743, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2154, file: !743, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2154, file: !743, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2154, file: !743, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2154, file: !743, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2154, file: !743, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2154, file: !743, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2154, file: !743, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2154, file: !743, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2154, file: !743, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2154, file: !743, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2154, file: !743, line: 969, baseType: !297, size: 64, offset: 10176)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2154, file: !743, line: 971, baseType: !2380, size: 448, offset: 10240)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !108, line: 25, size: 448, elements: !2381)
!2381 = !{!2382, !2383, !2388}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2380, file: !108, line: 26, baseType: !297, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2380, file: !108, line: 27, baseType: !2384, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!283, !2387}
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, scope: !2380, file: !108, line: 28, baseType: !2389, size: 320, offset: 128)
!2389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2380, file: !108, line: 28, size: 320, elements: !2390)
!2390 = !{!2391, !2401, !2426}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2389, file: !108, line: 37, baseType: !2392, size: 320)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2389, file: !108, line: 30, size: 320, elements: !2393)
!2393 = !{!2394, !2396, !2397, !2398, !2399, !2400}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2392, file: !108, line: 31, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2392, file: !108, line: 32, baseType: !1093, size: 32, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2392, file: !108, line: 33, baseType: !1093, size: 32, offset: 96)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2392, file: !108, line: 34, baseType: !1093, size: 32, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2392, file: !108, line: 35, baseType: !411, size: 64, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2392, file: !108, line: 36, baseType: !2395, size: 64, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2389, file: !108, line: 47, baseType: !2402, size: 192)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2389, file: !108, line: 39, size: 192, elements: !2403)
!2403 = !{!2404, !2405, !2406, !2425}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2402, file: !108, line: 40, baseType: !1633, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2402, file: !108, line: 41, baseType: !107, size: 32, offset: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, scope: !2402, file: !108, line: 42, baseType: !2407, size: 64, offset: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2402, file: !108, line: 42, size: 64, elements: !2408)
!2408 = !{!2409, !2417}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2407, file: !108, line: 43, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2412, line: 7, size: 128, elements: !2413)
!2412 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2413 = !{!2414, !2416}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2411, file: !2412, line: 8, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !281, line: 93, baseType: !336)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2411, file: !2412, line: 9, baseType: !336, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2407, file: !108, line: 44, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2420, line: 7, size: 64, elements: !2421)
!2420 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2421 = !{!2422, !2424}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2419, file: !2420, line: 8, baseType: !2423, size: 32)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2420, line: 5, baseType: !484)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2419, file: !2420, line: 9, baseType: !484, size: 32, offset: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2402, file: !108, line: 46, baseType: !411, size: 64, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2389, file: !108, line: 55, baseType: !2427, size: 256)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2389, file: !108, line: 49, size: 256, elements: !2428)
!2428 = !{!2429, !2432, !2433, !2434, !2435}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2427, file: !108, line: 50, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !108, line: 14, flags: DIFlagFwdDecl)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2427, file: !108, line: 51, baseType: !46, size: 32, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2427, file: !108, line: 52, baseType: !46, size: 32, offset: 96)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2427, file: !108, line: 53, baseType: !297, size: 64, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2427, file: !108, line: 54, baseType: !297, size: 64, offset: 192)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2154, file: !743, line: 973, baseType: !2437, size: 32, offset: 10688)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !148, line: 27, baseType: !2438)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !281, line: 28, baseType: !46)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2154, file: !743, line: 974, baseType: !2437, size: 32, offset: 10720)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2154, file: !743, line: 978, baseType: !297, size: 64, offset: 10752)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2154, file: !743, line: 987, baseType: !2153, size: 64, offset: 10816)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2154, file: !743, line: 990, baseType: !2153, size: 64, offset: 10880)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2154, file: !743, line: 995, baseType: !147, size: 128, offset: 10944)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2154, file: !743, line: 996, baseType: !147, size: 128, offset: 11072)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2154, file: !743, line: 997, baseType: !2153, size: 64, offset: 11200)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2154, file: !743, line: 1005, baseType: !147, size: 128, offset: 11264)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2154, file: !743, line: 1006, baseType: !147, size: 128, offset: 11392)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2154, file: !743, line: 1009, baseType: !2449, size: 64, offset: 11520)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !2451, line: 59, size: 768, elements: !2452)
!2451 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!2452 = !{!2453, !2454, !2455, !2456, !2461, !2462, !2463, !2464}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2450, file: !2451, line: 61, baseType: !812, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2450, file: !2451, line: 62, baseType: !7, size: 32, offset: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2450, file: !2451, line: 63, baseType: !177, size: 32, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2450, file: !2451, line: 65, baseType: !2457, size: 256, offset: 128)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2458, size: 256, elements: !486)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !148, line: 194, size: 64, elements: !2459)
!2459 = !{!2460}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2458, file: !148, line: 195, baseType: !1083, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2450, file: !2451, line: 66, baseType: !2458, size: 64, offset: 384)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2450, file: !2451, line: 68, baseType: !1661, size: 192, offset: 448)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2450, file: !2451, line: 69, baseType: !354, size: 128, align: 64, offset: 640)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2450, file: !2451, line: 70, baseType: !2465, offset: 768)
!2465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2466, elements: !582)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !2451, line: 54, size: 128, elements: !2467)
!2467 = !{!2468, !2469}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2466, file: !2451, line: 55, baseType: !46, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2466, file: !2451, line: 56, baseType: !2470, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !2451, line: 56, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2154, file: !743, line: 1010, baseType: !2473, size: 512, offset: 11584)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1080, size: 512, elements: !486)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2154, file: !743, line: 1011, baseType: !147, size: 128, offset: 12096)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2154, file: !743, line: 1012, baseType: !147, size: 128, offset: 12224)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2154, file: !743, line: 1014, baseType: !828, size: 64, offset: 12352)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2154, file: !743, line: 1017, baseType: !975, size: 64, offset: 12416)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2154, file: !743, line: 1020, baseType: !975, size: 64, offset: 12480)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2154, file: !743, line: 1023, baseType: !319, size: 64, offset: 12544)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2154, file: !743, line: 1025, baseType: !411, size: 64, offset: 12608)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2154, file: !743, line: 1026, baseType: !411, size: 64, offset: 12672)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2154, file: !743, line: 1031, baseType: !411, size: 64, offset: 12736)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2154, file: !743, line: 1032, baseType: !2484, size: 192, offset: 12800)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !743, line: 324, size: 192, elements: !2485)
!2485 = !{!2486, !2487, !2488}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2484, file: !743, line: 326, baseType: !411, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2484, file: !743, line: 327, baseType: !411, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2484, file: !743, line: 328, baseType: !439, size: 32, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2154, file: !743, line: 1041, baseType: !297, size: 64, offset: 12992)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2154, file: !743, line: 1042, baseType: !297, size: 64, offset: 13056)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2154, file: !743, line: 1045, baseType: !411, size: 64, offset: 13120)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2154, file: !743, line: 1048, baseType: !411, size: 64, offset: 13184)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2154, file: !743, line: 1051, baseType: !297, size: 64, offset: 13248)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2154, file: !743, line: 1052, baseType: !297, size: 64, offset: 13312)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2154, file: !743, line: 1055, baseType: !2496, size: 640, offset: 13376)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2497, line: 132, size: 640, elements: !2498)
!2497 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2498 = !{!2499, !2505, !2506}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2496, file: !2497, line: 133, baseType: !2500, size: 576)
!2500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2501, size: 576, elements: !248)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2497, line: 117, size: 192, elements: !2502)
!2502 = !{!2503, !2504}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2501, file: !2497, line: 118, baseType: !411, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2501, file: !2497, line: 119, baseType: !1642, size: 128, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2496, file: !2497, line: 134, baseType: !7, size: 32, offset: 576)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2496, file: !2497, line: 135, baseType: !7, size: 32, offset: 608)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2154, file: !743, line: 1058, baseType: !2508, size: 448, offset: 14016)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2497, line: 144, size: 448, elements: !2509)
!2509 = !{!2510, !2511, !2512}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2508, file: !2497, line: 145, baseType: !354, size: 128, align: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2508, file: !2497, line: 146, baseType: !505, size: 256, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2508, file: !2497, line: 147, baseType: !7, size: 32, offset: 384)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2154, file: !743, line: 1064, baseType: !2514, size: 64, offset: 14464)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2516)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2517, line: 11, flags: DIFlagFwdDecl)
!2517 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9ecec28201063d5e3b04c190bc92649")
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2154, file: !743, line: 1067, baseType: !2514, size: 64, offset: 14528)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2154, file: !743, line: 1070, baseType: !2514, size: 64, offset: 14592)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2154, file: !743, line: 1074, baseType: !2521, size: 64, offset: 14656)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !743, line: 1074, flags: DIFlagFwdDecl)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2154, file: !743, line: 1084, baseType: !1227, size: 128, offset: 14720)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2154, file: !743, line: 1086, baseType: !2525, size: 64, offset: 14848)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !743, line: 55, flags: DIFlagFwdDecl)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2154, file: !743, line: 1089, baseType: !2528, size: 64, offset: 14912)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2529, line: 12, size: 64, elements: !2530)
!2529 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2530 = !{!2531}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2528, file: !2529, line: 13, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2529, line: 8, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2154, file: !743, line: 1090, baseType: !2535, size: 128, offset: 14976)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2536, line: 13, size: 128, elements: !2537)
!2536 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2537 = !{!2538}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2535, file: !2536, line: 14, baseType: !147, size: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2154, file: !743, line: 1097, baseType: !2540, size: 64, offset: 15104)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !743, line: 50, flags: DIFlagFwdDecl)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2154, file: !743, line: 1100, baseType: !2543, size: 64, offset: 15168)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !743, line: 1100, flags: DIFlagFwdDecl)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2154, file: !743, line: 1103, baseType: !2546, size: 64, offset: 15232)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !743, line: 53, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2154, file: !743, line: 1107, baseType: !2549, size: 64, offset: 15296)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2551, line: 35, flags: DIFlagFwdDecl)
!2551 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2154, file: !743, line: 1110, baseType: !2553, size: 64, offset: 15360)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2497, line: 236, flags: DIFlagFwdDecl)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2154, file: !743, line: 1111, baseType: !2556, size: 64, offset: 15424)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !743, line: 67, flags: DIFlagFwdDecl)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2154, file: !743, line: 1112, baseType: !2559, size: 64, offset: 15488)
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2560, line: 25, baseType: !2561)
!2560 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2560, line: 23, size: 64, elements: !2562)
!2562 = !{!2563}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2561, file: !2560, line: 24, baseType: !1299, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2154, file: !743, line: 1113, baseType: !2559, size: 64, offset: 15552)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2154, file: !743, line: 1115, baseType: !2559, size: 64, offset: 15616)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2154, file: !743, line: 1116, baseType: !2567, size: 192, offset: 15680)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2568, line: 32, size: 192, elements: !2569)
!2568 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2569 = !{!2570, !2571}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2567, file: !2568, line: 33, baseType: !147, size: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2567, file: !2568, line: 34, baseType: !2559, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2154, file: !743, line: 1117, baseType: !297, size: 64, offset: 15872)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2154, file: !743, line: 1118, baseType: !294, size: 64, offset: 15936)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2154, file: !743, line: 1119, baseType: !7, size: 32, offset: 16000)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2154, file: !743, line: 1121, baseType: !357, size: 64, offset: 16064)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2154, file: !743, line: 1125, baseType: !2577, size: 64, offset: 16128)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !743, line: 43, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2154, file: !743, line: 1127, baseType: !679, size: 32, offset: 16192)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2154, file: !743, line: 1128, baseType: !7, size: 32, offset: 16224)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2154, file: !743, line: 1130, baseType: !2582, size: 128, offset: 16256)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2583, line: 37, size: 128, elements: !2584)
!2583 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2584 = !{!2585, !2586, !2587}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2582, file: !2583, line: 38, baseType: !46, size: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2582, file: !2583, line: 39, baseType: !197, size: 32, offset: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2582, file: !2583, line: 40, baseType: !2588, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2583, line: 24, flags: DIFlagFwdDecl)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2154, file: !743, line: 1131, baseType: !2591, size: 256, offset: 16384)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2592, line: 12, size: 256, elements: !2593)
!2592 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2593 = !{!2594, !2595, !2596, !2597}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2591, file: !2592, line: 13, baseType: !247, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2591, file: !2592, line: 14, baseType: !297, size: 64, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2591, file: !2592, line: 15, baseType: !297, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2591, file: !2592, line: 16, baseType: !604, size: 8, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2154, file: !743, line: 1134, baseType: !411, size: 64, offset: 16640)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2154, file: !743, line: 1135, baseType: !411, size: 64, offset: 16704)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2154, file: !743, line: 1138, baseType: !177, size: 32, offset: 16768)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2154, file: !743, line: 1141, baseType: !439, size: 32, offset: 16800)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2154, file: !743, line: 1143, baseType: !2603, size: 64, offset: 16832)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !743, line: 735, size: 64, elements: !2604)
!2604 = !{!2605}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2603, file: !743, line: 736, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2154, file: !743, line: 1147, baseType: !1645, size: 128, offset: 16896)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2154, file: !743, line: 1149, baseType: !2153, size: 64, offset: 17024)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2154, file: !743, line: 1151, baseType: !2610, size: 64, offset: 17088)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !743, line: 1151, flags: DIFlagFwdDecl)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2154, file: !743, line: 1188, baseType: !319, size: 64, offset: 17152)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2154, file: !743, line: 1191, baseType: !2614, size: 64, offset: 17216)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !743, line: 44, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2154, file: !743, line: 1194, baseType: !2617, size: 64, offset: 17280)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !743, line: 45, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2154, file: !743, line: 1197, baseType: !2620, size: 64, offset: 17344)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !743, line: 61, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2154, file: !743, line: 1199, baseType: !2623, size: 64, offset: 17408)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !743, line: 52, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2154, file: !743, line: 1202, baseType: !2626, size: 64, offset: 17472)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !743, line: 48, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2154, file: !743, line: 1205, baseType: !297, size: 64, offset: 17536)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2154, file: !743, line: 1206, baseType: !2630, size: 64, offset: 17600)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2568, line: 14, baseType: !2632)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2568, line: 12, size: 384, elements: !2633)
!2633 = !{!2634}
!2634 = !DIDerivedType(tag: DW_TAG_member, scope: !2632, file: !2568, line: 13, baseType: !2635, size: 384)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2632, file: !2568, line: 13, size: 384, elements: !2636)
!2636 = !{!2637, !2638, !2639, !2640}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2635, file: !2568, line: 13, baseType: !46, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2635, file: !2568, line: 13, baseType: !46, size: 32, offset: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2635, file: !2568, line: 13, baseType: !46, size: 32, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2635, file: !2568, line: 13, baseType: !2641, size: 256, offset: 128)
!2641 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2642, line: 37, size: 256, elements: !2643)
!2642 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2643 = !{!2644, !2649, !2662, !2668, !2677, !2704, !2709}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2641, file: !2642, line: 42, baseType: !2645, size: 64)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2641, file: !2642, line: 39, size: 64, elements: !2646)
!2646 = !{!2647, !2648}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2645, file: !2642, line: 40, baseType: !2438, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2645, file: !2642, line: 41, baseType: !684, size: 32, offset: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2641, file: !2642, line: 50, baseType: !2650, size: 192)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2641, file: !2642, line: 45, size: 192, elements: !2651)
!2651 = !{!2652, !2654, !2655, !2661}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2650, file: !2642, line: 46, baseType: !2653, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !281, line: 95, baseType: !46)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2650, file: !2642, line: 47, baseType: !46, size: 32, offset: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2650, file: !2642, line: 48, baseType: !2656, size: 64, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2642, line: 11, baseType: !2657)
!2657 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2642, line: 8, size: 64, elements: !2658)
!2658 = !{!2659, !2660}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2657, file: !2642, line: 9, baseType: !46, size: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2657, file: !2642, line: 10, baseType: !319, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2650, file: !2642, line: 49, baseType: !46, size: 32, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2641, file: !2642, line: 57, baseType: !2663, size: 128)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2641, file: !2642, line: 53, size: 128, elements: !2664)
!2664 = !{!2665, !2666, !2667}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2663, file: !2642, line: 54, baseType: !2438, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2663, file: !2642, line: 55, baseType: !684, size: 32, offset: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2663, file: !2642, line: 56, baseType: !2656, size: 64, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2641, file: !2642, line: 66, baseType: !2669, size: 256)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2641, file: !2642, line: 60, size: 256, elements: !2670)
!2670 = !{!2671, !2672, !2673, !2674, !2676}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2669, file: !2642, line: 61, baseType: !2438, size: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2669, file: !2642, line: 62, baseType: !684, size: 32, offset: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2669, file: !2642, line: 63, baseType: !46, size: 32, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2669, file: !2642, line: 64, baseType: !2675, size: 64, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !281, line: 94, baseType: !282)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2669, file: !2642, line: 65, baseType: !2675, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2641, file: !2642, line: 105, baseType: !2678, size: 256)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2641, file: !2642, line: 69, size: 256, elements: !2679)
!2679 = !{!2680, !2681}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2678, file: !2642, line: 70, baseType: !319, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, scope: !2678, file: !2642, line: 79, baseType: !2682, size: 192, offset: 64)
!2682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2678, file: !2642, line: 79, size: 192, elements: !2683)
!2683 = !{!2684, !2685, !2686, !2693, !2698}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2682, file: !2642, line: 81, baseType: !46, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2682, file: !2642, line: 86, baseType: !545, size: 16)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2682, file: !2642, line: 92, baseType: !2687, size: 192)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2682, file: !2642, line: 88, size: 192, elements: !2688)
!2688 = !{!2689, !2691, !2692}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2687, file: !2642, line: 89, baseType: !2690, size: 64)
!2690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 64, elements: !1629)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2687, file: !2642, line: 90, baseType: !319, size: 64, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2687, file: !2642, line: 91, baseType: !319, size: 64, offset: 128)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2682, file: !2642, line: 97, baseType: !2694, size: 96)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2682, file: !2642, line: 94, size: 96, elements: !2695)
!2695 = !{!2696, !2697}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2694, file: !2642, line: 95, baseType: !2690, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2694, file: !2642, line: 96, baseType: !1011, size: 32, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2682, file: !2642, line: 103, baseType: !2699, size: 128)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2682, file: !2642, line: 99, size: 128, elements: !2700)
!2700 = !{!2701, !2702, !2703}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2699, file: !2642, line: 100, baseType: !297, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2699, file: !2642, line: 101, baseType: !1011, size: 32, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2699, file: !2642, line: 102, baseType: !1011, size: 32, offset: 96)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2641, file: !2642, line: 111, baseType: !2705, size: 128)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2641, file: !2642, line: 108, size: 128, elements: !2706)
!2706 = !{!2707, !2708}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2705, file: !2642, line: 109, baseType: !283, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2705, file: !2642, line: 110, baseType: !46, size: 32, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2641, file: !2642, line: 118, baseType: !2710, size: 128)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2641, file: !2642, line: 114, size: 128, elements: !2711)
!2711 = !{!2712, !2713, !2714}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2710, file: !2642, line: 115, baseType: !319, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2710, file: !2642, line: 116, baseType: !46, size: 32, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2710, file: !2642, line: 117, baseType: !7, size: 32, offset: 96)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2154, file: !743, line: 1208, baseType: !2716, size: 448, offset: 17664)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2717, line: 12, size: 448, elements: !2718)
!2717 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724, !2725}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2716, file: !2717, line: 15, baseType: !411, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2716, file: !2717, line: 17, baseType: !411, size: 64, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2716, file: !2717, line: 19, baseType: !411, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2716, file: !2717, line: 21, baseType: !411, size: 64, offset: 192)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2716, file: !2717, line: 29, baseType: !411, size: 64, offset: 256)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2716, file: !2717, line: 35, baseType: !411, size: 64, offset: 320)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2716, file: !2717, line: 44, baseType: !411, size: 64, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2154, file: !743, line: 1215, baseType: !411, size: 64, offset: 18112)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2154, file: !743, line: 1217, baseType: !411, size: 64, offset: 18176)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2154, file: !743, line: 1219, baseType: !411, size: 64, offset: 18240)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2154, file: !743, line: 1223, baseType: !2730, size: 64, offset: 18304)
!2730 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2731, line: 99, baseType: !2732)
!2731 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2731, line: 99, size: 64, elements: !2733)
!2733 = !{!2734}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2732, file: !2731, line: 99, baseType: !1299, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2154, file: !743, line: 1225, baseType: !2736, size: 32, offset: 18368)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !454, line: 275, baseType: !2737)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !454, line: 275, size: 32, elements: !2738)
!2738 = !{!2739}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2737, file: !454, line: 275, baseType: !453, size: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2154, file: !743, line: 1226, baseType: !46, size: 32, offset: 18400)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2154, file: !743, line: 1227, baseType: !46, size: 32, offset: 18432)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2154, file: !743, line: 1231, baseType: !2743, size: 64, offset: 18496)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !743, line: 1231, flags: DIFlagFwdDecl)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2154, file: !743, line: 1233, baseType: !147, size: 128, offset: 18560)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2154, file: !743, line: 1240, baseType: !2747, size: 64, offset: 18688)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !743, line: 62, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2154, file: !743, line: 1242, baseType: !2750, size: 64, offset: 18752)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !743, line: 1242, flags: DIFlagFwdDecl)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2154, file: !743, line: 1244, baseType: !147, size: 128, offset: 18816)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2154, file: !743, line: 1245, baseType: !2754, size: 64, offset: 18944)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !743, line: 51, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2154, file: !743, line: 1246, baseType: !505, size: 256, offset: 19008)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2154, file: !743, line: 1247, baseType: !7, size: 32, offset: 19264)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2154, file: !743, line: 1250, baseType: !2759, size: 64, offset: 19328)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !743, line: 57, flags: DIFlagFwdDecl)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2154, file: !743, line: 1251, baseType: !505, size: 256, offset: 19392)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2154, file: !743, line: 1252, baseType: !147, size: 128, offset: 19648)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2154, file: !743, line: 1259, baseType: !631, size: 64, offset: 19776)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2154, file: !743, line: 1260, baseType: !545, size: 16, offset: 19840)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2154, file: !743, line: 1261, baseType: !545, size: 16, offset: 19856)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2154, file: !743, line: 1314, baseType: !2767, size: 64, offset: 19904)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2769, line: 62, size: 256, align: 256, elements: !2770)
!2769 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2770 = !{!2771, !2772, !2773, !2774, !2775, !2776, !2777}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2768, file: !2769, line: 75, baseType: !1011, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2768, file: !2769, line: 90, baseType: !1011, size: 32, offset: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2768, file: !2769, line: 112, baseType: !412, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2768, file: !2769, line: 132, baseType: !1011, size: 32, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2768, file: !2769, line: 140, baseType: !1011, size: 32, offset: 160)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2768, file: !2769, line: 149, baseType: !1011, size: 32, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2768, file: !2769, line: 154, baseType: !2778, offset: 224)
!2778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, elements: !582)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2154, file: !743, line: 1315, baseType: !1093, size: 32, offset: 19968)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2154, file: !743, line: 1316, baseType: !1093, size: 32, offset: 20000)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2154, file: !743, line: 1321, baseType: !297, size: 64, offset: 20032)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2154, file: !743, line: 1325, baseType: !46, size: 32, offset: 20096)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2154, file: !743, line: 1326, baseType: !46, size: 32, offset: 20128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2154, file: !743, line: 1327, baseType: !46, size: 32, offset: 20160)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2154, file: !743, line: 1328, baseType: !46, size: 32, offset: 20192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2154, file: !743, line: 1329, baseType: !354, size: 128, align: 64, offset: 20224)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2154, file: !743, line: 1332, baseType: !2788, size: 128, offset: 20352)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2789, line: 51, size: 128, elements: !2790)
!2789 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2790 = !{!2791, !2796, !2797}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2788, file: !2789, line: 60, baseType: !2792, size: 64)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2793, line: 7, size: 64, elements: !2794)
!2793 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2794 = !{!2795}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2792, file: !2793, line: 12, baseType: !1296, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2788, file: !2789, line: 63, baseType: !604, size: 8, offset: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2788, file: !2789, line: 70, baseType: !604, size: 8, offset: 72)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2154, file: !743, line: 1335, baseType: !2799, size: 64, offset: 20480)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !743, line: 59, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2154, file: !743, line: 1337, baseType: !2802, size: 128, offset: 20544)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2789, line: 39, size: 128, elements: !2803)
!2803 = !{!2804, !2865, !2866}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2802, file: !2789, line: 40, baseType: !2805, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !326, line: 74, size: 512, align: 128, elements: !2807)
!2807 = !{!2808, !2809, !2859, !2864}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2806, file: !326, line: 75, baseType: !297, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, scope: !2806, file: !326, line: 83, baseType: !2810, size: 320, offset: 64)
!2810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2806, file: !326, line: 83, size: 320, elements: !2811)
!2811 = !{!2812, !2833, !2847, !2851, !2858}
!2812 = !DIDerivedType(tag: DW_TAG_member, scope: !2810, file: !326, line: 84, baseType: !2813, size: 320)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2810, file: !326, line: 84, size: 320, elements: !2814)
!2814 = !{!2815, !2826, !2827, !2832}
!2815 = !DIDerivedType(tag: DW_TAG_member, scope: !2813, file: !326, line: 90, baseType: !2816, size: 128)
!2816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2813, file: !326, line: 90, size: 128, elements: !2817)
!2817 = !{!2818, !2819, !2824, !2825}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2816, file: !326, line: 91, baseType: !147, size: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, scope: !2816, file: !326, line: 94, baseType: !2820, size: 128)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !326, line: 94, size: 128, elements: !2821)
!2821 = !{!2822, !2823}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2820, file: !326, line: 96, baseType: !319, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2820, file: !326, line: 98, baseType: !7, size: 32, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2816, file: !326, line: 102, baseType: !147, size: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2816, file: !326, line: 103, baseType: !147, size: 128)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2813, file: !326, line: 106, baseType: !324, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, scope: !2813, file: !326, line: 107, baseType: !2828, size: 64, offset: 192)
!2828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2813, file: !326, line: 107, size: 64, elements: !2829)
!2829 = !{!2830, !2831}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2828, file: !326, line: 108, baseType: !297, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2828, file: !326, line: 109, baseType: !297, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2813, file: !326, line: 117, baseType: !297, size: 64, offset: 256)
!2833 = !DIDerivedType(tag: DW_TAG_member, scope: !2810, file: !326, line: 119, baseType: !2834, size: 320)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2810, file: !326, line: 119, size: 320, elements: !2835)
!2835 = !{!2836, !2837, !2840, !2841, !2842}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2834, file: !326, line: 124, baseType: !297, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2834, file: !326, line: 125, baseType: !2838, size: 64, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !326, line: 125, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2834, file: !326, line: 126, baseType: !297, size: 64, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2834, file: !326, line: 127, baseType: !297, size: 64, offset: 192)
!2842 = !DIDerivedType(tag: DW_TAG_member, scope: !2834, file: !326, line: 128, baseType: !2843, size: 64, offset: 256)
!2843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2834, file: !326, line: 128, size: 64, elements: !2844)
!2844 = !{!2845, !2846}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2843, file: !326, line: 133, baseType: !297, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2843, file: !326, line: 138, baseType: !417, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, scope: !2810, file: !326, line: 141, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2810, file: !326, line: 141, size: 64, elements: !2849)
!2849 = !{!2850}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2848, file: !326, line: 142, baseType: !297, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, scope: !2810, file: !326, line: 144, baseType: !2852, size: 128)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2810, file: !326, line: 144, size: 128, elements: !2853)
!2853 = !{!2854, !2857}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2852, file: !326, line: 146, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !326, line: 146, flags: DIFlagFwdDecl)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2852, file: !326, line: 147, baseType: !319, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2810, file: !326, line: 161, baseType: !354, size: 128, align: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, scope: !2806, file: !326, line: 164, baseType: !2860, size: 32, offset: 384)
!2860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2806, file: !326, line: 164, size: 32, elements: !2861)
!2861 = !{!2862, !2863}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2860, file: !326, line: 169, baseType: !197, size: 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2860, file: !326, line: 177, baseType: !7, size: 32)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2806, file: !326, line: 181, baseType: !197, size: 32, offset: 416)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2802, file: !2789, line: 42, baseType: !1011, size: 32, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2802, file: !2789, line: 43, baseType: !1011, size: 32, offset: 96)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2154, file: !743, line: 1340, baseType: !2868, size: 64, offset: 20672)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !743, line: 69, flags: DIFlagFwdDecl)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2154, file: !743, line: 1351, baseType: !46, size: 32, offset: 20736)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2154, file: !743, line: 1352, baseType: !46, size: 32, offset: 20768)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2154, file: !743, line: 1354, baseType: !297, size: 64, offset: 20800)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2154, file: !743, line: 1364, baseType: !411, size: 64, offset: 20864)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2154, file: !743, line: 1365, baseType: !411, size: 64, offset: 20928)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2154, file: !743, line: 1412, baseType: !297, size: 64, offset: 20992)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2154, file: !743, line: 1453, baseType: !2877, size: 64, offset: 21056)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !743, line: 1453, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2154, file: !743, line: 1457, baseType: !2880, size: 64, offset: 21120)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !114, line: 61, size: 576, elements: !2882)
!2882 = !{!2883, !2884, !2903, !2906, !2907, !2940, !2950}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2881, file: !114, line: 62, baseType: !113, size: 32)
!2884 = !DIDerivedType(tag: DW_TAG_member, scope: !2881, file: !114, line: 64, baseType: !2885, size: 192, offset: 64)
!2885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2881, file: !114, line: 64, size: 192, elements: !2886)
!2886 = !{!2887, !2898}
!2887 = !DIDerivedType(tag: DW_TAG_member, scope: !2885, file: !114, line: 65, baseType: !2888, size: 192)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2885, file: !114, line: 65, size: 192, elements: !2889)
!2889 = !{!2890, !2897}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2888, file: !114, line: 66, baseType: !2891, size: 128)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2892, line: 50, size: 128, elements: !2893)
!2892 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2893 = !{!2894, !2895, !2896}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2891, file: !2892, line: 52, baseType: !297, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2891, file: !2892, line: 54, baseType: !7, size: 32, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2891, file: !2892, line: 55, baseType: !7, size: 32, offset: 96)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2888, file: !114, line: 67, baseType: !297, size: 64, offset: 128)
!2898 = !DIDerivedType(tag: DW_TAG_member, scope: !2885, file: !114, line: 70, baseType: !2899, size: 192)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2885, file: !114, line: 70, size: 192, elements: !2900)
!2900 = !{!2901, !2902}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2899, file: !114, line: 71, baseType: !354, size: 128, align: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2899, file: !114, line: 72, baseType: !297, size: 64, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2881, file: !114, line: 76, baseType: !2904, size: 64, offset: 256)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !114, line: 76, flags: DIFlagFwdDecl)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2881, file: !114, line: 77, baseType: !297, size: 64, offset: 320)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2881, file: !114, line: 79, baseType: !2908, size: 64, offset: 384)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2892, line: 25, size: 256, elements: !2910)
!2910 = !{!2911, !2917, !2921}
!2911 = !DIDerivedType(tag: DW_TAG_member, scope: !2909, file: !2892, line: 26, baseType: !2912, size: 128)
!2912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2909, file: !2892, line: 26, size: 128, elements: !2913)
!2913 = !{!2914, !2916}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2912, file: !2892, line: 27, baseType: !2915, size: 128)
!2915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 128, elements: !1228)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2912, file: !2892, line: 28, baseType: !2915, size: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2909, file: !2892, line: 31, baseType: !2918, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2920)
!2920 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2892, line: 23, flags: DIFlagFwdDecl)
!2921 = !DIDerivedType(tag: DW_TAG_member, scope: !2909, file: !2892, line: 33, baseType: !2922, size: 64, offset: 192)
!2922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2909, file: !2892, line: 33, size: 64, elements: !2923)
!2923 = !{!2924, !2930, !2935}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2922, file: !2892, line: 38, baseType: !2925, size: 64)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2922, file: !2892, line: 34, size: 64, elements: !2926)
!2926 = !{!2927, !2928, !2929}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2925, file: !2892, line: 35, baseType: !484, size: 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2925, file: !2892, line: 36, baseType: !205, size: 8, offset: 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2925, file: !2892, line: 37, baseType: !205, size: 8, offset: 40)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2922, file: !2892, line: 42, baseType: !2931, size: 16)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2922, file: !2892, line: 39, size: 16, elements: !2932)
!2932 = !{!2933, !2934}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2931, file: !2892, line: 40, baseType: !205, size: 8)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2931, file: !2892, line: 41, baseType: !205, size: 8, offset: 8)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2922, file: !2892, line: 46, baseType: !2936, size: 16)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2922, file: !2892, line: 43, size: 16, elements: !2937)
!2937 = !{!2938, !2939}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2936, file: !2892, line: 44, baseType: !205, size: 8)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2936, file: !2892, line: 45, baseType: !205, size: 8, offset: 8)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2881, file: !114, line: 81, baseType: !2941, size: 64, offset: 448)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !114, line: 85, size: 384, elements: !2943)
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2949}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2942, file: !114, line: 86, baseType: !2904, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2942, file: !114, line: 87, baseType: !297, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2942, file: !114, line: 88, baseType: !297, size: 64, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2942, file: !114, line: 89, baseType: !297, size: 64, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2942, file: !114, line: 90, baseType: !604, size: 8, offset: 256)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2942, file: !114, line: 92, baseType: !2941, size: 64, offset: 320)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2881, file: !114, line: 82, baseType: !7, size: 32, offset: 512)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2154, file: !743, line: 1463, baseType: !2952, offset: 21184)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !743, line: 739, elements: !384)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2154, file: !743, line: 1470, baseType: !354, size: 128, align: 64, offset: 21184)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2154, file: !743, line: 1471, baseType: !812, size: 32, offset: 21312)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2154, file: !743, line: 1472, baseType: !46, size: 32, offset: 21344)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2154, file: !743, line: 1474, baseType: !2153, size: 64, offset: 21376)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2154, file: !743, line: 1475, baseType: !1076, size: 320, offset: 21440)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2154, file: !743, line: 1478, baseType: !2959, size: 64, offset: 21760)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2961, line: 49, size: 512, elements: !2962)
!2961 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2962 = !{!2963, !2964, !2965, !2966, !2967, !2969, !2970, !2971, !2972}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2960, file: !2961, line: 50, baseType: !2959, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2960, file: !2961, line: 51, baseType: !319, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2960, file: !2961, line: 52, baseType: !297, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2960, file: !2961, line: 53, baseType: !297, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2960, file: !2961, line: 54, baseType: !2968, size: 64, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2960, file: !2961, line: 56, baseType: !7, size: 32, offset: 320)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2960, file: !2961, line: 58, baseType: !7, size: 32, offset: 352)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2960, file: !2961, line: 59, baseType: !2023, size: 64, offset: 384)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2960, file: !2961, line: 60, baseType: !526, size: 64, offset: 448)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2154, file: !743, line: 1482, baseType: !812, size: 32, offset: 21824)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2154, file: !743, line: 1489, baseType: !319, size: 64, offset: 21888)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2154, file: !743, line: 1504, baseType: !319, size: 64, offset: 21952)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2154, file: !743, line: 1505, baseType: !412, size: 64, offset: 22016)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2154, file: !743, line: 1506, baseType: !411, size: 64, offset: 22080)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2154, file: !743, line: 1507, baseType: !412, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2154, file: !743, line: 1508, baseType: !412, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2154, file: !743, line: 1509, baseType: !412, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2154, file: !743, line: 1510, baseType: !354, size: 128, align: 64, offset: 22208)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2154, file: !743, line: 1511, baseType: !46, size: 32, offset: 22336)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2154, file: !743, line: 1515, baseType: !2984, size: 64, offset: 22400)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !2176, line: 56, size: 64, elements: !2985)
!2985 = !{!2986}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2984, file: !2176, line: 57, baseType: !2179, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2154, file: !743, line: 1518, baseType: !2984, size: 64, offset: 22464)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2154, file: !743, line: 1528, baseType: !354, size: 128, align: 64, offset: 22528)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2154, file: !743, line: 1552, baseType: !2990, size: 35328, offset: 23040)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1193, line: 430, size: 35328, elements: !2991)
!2991 = !{!2992, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3021, !3022, !3023, !3024, !3025, !3026, !3029, !3030, !3031, !3032}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2990, file: !1193, line: 432, baseType: !2993, size: 192)
!2993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2994, size: 192, elements: !248)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2995, line: 16, size: 64, elements: !2996)
!2995 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2996 = !{!2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2994, file: !2995, line: 17, baseType: !215, size: 16)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2994, file: !2995, line: 18, baseType: !215, size: 16, offset: 16)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2994, file: !2995, line: 19, baseType: !215, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2994, file: !2995, line: 19, baseType: !215, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2994, file: !2995, line: 19, baseType: !215, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2994, file: !2995, line: 19, baseType: !215, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2994, file: !2995, line: 19, baseType: !215, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2994, file: !2995, line: 20, baseType: !215, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2994, file: !2995, line: 20, baseType: !215, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2994, file: !2995, line: 20, baseType: !215, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2994, file: !2995, line: 20, baseType: !215, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2994, file: !2995, line: 20, baseType: !215, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2994, file: !2995, line: 20, baseType: !215, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2990, file: !1193, line: 436, baseType: !297, size: 64, offset: 192)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2990, file: !1193, line: 440, baseType: !217, size: 16, offset: 256)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2990, file: !1193, line: 441, baseType: !217, size: 16, offset: 272)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2990, file: !1193, line: 442, baseType: !217, size: 16, offset: 288)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2990, file: !1193, line: 443, baseType: !217, size: 16, offset: 304)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2990, file: !1193, line: 447, baseType: !297, size: 64, offset: 320)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2990, file: !1193, line: 448, baseType: !297, size: 64, offset: 384)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2990, file: !1193, line: 459, baseType: !3018, size: 256, offset: 448)
!3018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3019, size: 256, elements: !486)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1193, line: 428, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2990, file: !1193, line: 461, baseType: !297, size: 64, offset: 704)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2990, file: !1193, line: 463, baseType: !297, size: 64, offset: 768)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2990, file: !1193, line: 465, baseType: !297, size: 64, offset: 832)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2990, file: !1193, line: 466, baseType: !297, size: 64, offset: 896)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2990, file: !1193, line: 467, baseType: !297, size: 64, offset: 960)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2990, file: !1193, line: 473, baseType: !3027, size: 64, offset: 1024)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1193, line: 10, flags: DIFlagFwdDecl)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2990, file: !1193, line: 480, baseType: !297, size: 64, offset: 1088)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2990, file: !1193, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2990, file: !1193, line: 491, baseType: !1093, size: 32, offset: 1184)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2990, file: !1193, line: 501, baseType: !3033, size: 33792, offset: 1536)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3034, line: 448, size: 33792, elements: !3035)
!3034 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3035 = !{!3036, !3037, !3038, !3200, !3201, !3207, !3208}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3033, file: !3034, line: 461, baseType: !7, size: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3033, file: !3034, line: 468, baseType: !297, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3033, file: !3034, line: 476, baseType: !3039, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3034, line: 356, size: 33280, align: 512, elements: !3041)
!3041 = !{!3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3040, file: !3034, line: 358, baseType: !7, size: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3040, file: !3034, line: 361, baseType: !7, size: 32, offset: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3040, file: !3034, line: 364, baseType: !411, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3040, file: !3034, line: 367, baseType: !411, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3040, file: !3034, line: 370, baseType: !411, size: 64, offset: 192)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3040, file: !3034, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3040, file: !3034, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3040, file: !3034, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3040, file: !3034, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3040, file: !3034, line: 397, baseType: !3052, size: 32768, offset: 512)
!3052 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3034, line: 348, size: 32768, elements: !3053)
!3053 = !{!3054, !3067, !3104, !3181, !3196}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3052, file: !3034, line: 349, baseType: !3055, size: 896)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3034, line: 12, size: 896, elements: !3056)
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3066}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3055, file: !3034, line: 13, baseType: !1093, size: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3055, file: !3034, line: 14, baseType: !1093, size: 32, offset: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3055, file: !3034, line: 15, baseType: !1093, size: 32, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3055, file: !3034, line: 16, baseType: !1093, size: 32, offset: 96)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3055, file: !3034, line: 17, baseType: !1093, size: 32, offset: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3055, file: !3034, line: 18, baseType: !1093, size: 32, offset: 160)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3055, file: !3034, line: 19, baseType: !1093, size: 32, offset: 192)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3055, file: !3034, line: 22, baseType: !3065, size: 640, offset: 224)
!3065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1093, size: 640, elements: !2038)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3055, file: !3034, line: 25, baseType: !1093, size: 32, offset: 864)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3052, file: !3034, line: 350, baseType: !3068, size: 4096, align: 128)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3034, line: 34, size: 4096, align: 128, elements: !3069)
!3069 = !{!3070, !3071, !3072, !3073, !3074, !3089, !3090, !3091, !3093, !3095, !3099}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3068, file: !3034, line: 35, baseType: !215, size: 16)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3068, file: !3034, line: 36, baseType: !215, size: 16, offset: 16)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3068, file: !3034, line: 37, baseType: !215, size: 16, offset: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3068, file: !3034, line: 38, baseType: !215, size: 16, offset: 48)
!3074 = !DIDerivedType(tag: DW_TAG_member, scope: !3068, file: !3034, line: 39, baseType: !3075, size: 128, offset: 64)
!3075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3068, file: !3034, line: 39, size: 128, elements: !3076)
!3076 = !{!3077, !3082}
!3077 = !DIDerivedType(tag: DW_TAG_member, scope: !3075, file: !3034, line: 40, baseType: !3078, size: 128)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3034, line: 40, size: 128, elements: !3079)
!3079 = !{!3080, !3081}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3078, file: !3034, line: 41, baseType: !411, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3078, file: !3034, line: 42, baseType: !411, size: 64, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, scope: !3075, file: !3034, line: 44, baseType: !3083, size: 128)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !3034, line: 44, size: 128, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3083, file: !3034, line: 45, baseType: !1093, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3083, file: !3034, line: 46, baseType: !1093, size: 32, offset: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3083, file: !3034, line: 47, baseType: !1093, size: 32, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3083, file: !3034, line: 48, baseType: !1093, size: 32, offset: 96)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3068, file: !3034, line: 51, baseType: !1093, size: 32, offset: 192)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3068, file: !3034, line: 52, baseType: !1093, size: 32, offset: 224)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3068, file: !3034, line: 55, baseType: !3092, size: 1024, offset: 256)
!3092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1093, size: 1024, elements: !1467)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3068, file: !3034, line: 58, baseType: !3094, size: 2048, offset: 1280)
!3094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1093, size: 2048, elements: !252)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3068, file: !3034, line: 60, baseType: !3096, size: 384, offset: 3328)
!3096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1093, size: 384, elements: !3097)
!3097 = !{!3098}
!3098 = !DISubrange(count: 12)
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !3068, file: !3034, line: 62, baseType: !3100, size: 384, offset: 3712)
!3100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3068, file: !3034, line: 62, size: 384, elements: !3101)
!3101 = !{!3102, !3103}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3100, file: !3034, line: 63, baseType: !3096, size: 384)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3100, file: !3034, line: 64, baseType: !3096, size: 384)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3052, file: !3034, line: 351, baseType: !3105, size: 1088)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3034, line: 79, size: 1088, elements: !3106)
!3106 = !{!3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3180}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3105, file: !3034, line: 80, baseType: !1093, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3105, file: !3034, line: 81, baseType: !1093, size: 32, offset: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3105, file: !3034, line: 82, baseType: !1093, size: 32, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3105, file: !3034, line: 83, baseType: !1093, size: 32, offset: 96)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3105, file: !3034, line: 84, baseType: !1093, size: 32, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3105, file: !3034, line: 85, baseType: !1093, size: 32, offset: 160)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3105, file: !3034, line: 86, baseType: !1093, size: 32, offset: 192)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3105, file: !3034, line: 88, baseType: !3065, size: 640, offset: 224)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3105, file: !3034, line: 89, baseType: !205, size: 8, offset: 864)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3105, file: !3034, line: 90, baseType: !205, size: 8, offset: 872)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3105, file: !3034, line: 91, baseType: !205, size: 8, offset: 880)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3105, file: !3034, line: 92, baseType: !205, size: 8, offset: 888)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3105, file: !3034, line: 93, baseType: !205, size: 8, offset: 896)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3105, file: !3034, line: 94, baseType: !205, size: 8, offset: 904)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3105, file: !3034, line: 95, baseType: !3122, size: 64, offset: 960)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3124, line: 11, size: 128, elements: !3125)
!3124 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3125 = !{!3126, !3127}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3123, file: !3124, line: 12, baseType: !283, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3123, file: !3124, line: 13, baseType: !3128, size: 64, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3130, line: 103, size: 1344, elements: !3131)
!3130 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3160, !3161, !3162}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3129, file: !3130, line: 109, baseType: !297, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3129, file: !3130, line: 110, baseType: !297, size: 64, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3129, file: !3130, line: 111, baseType: !297, size: 64, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3129, file: !3130, line: 112, baseType: !297, size: 64, offset: 192)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3129, file: !3130, line: 113, baseType: !297, size: 64, offset: 256)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3129, file: !3130, line: 114, baseType: !297, size: 64, offset: 320)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3129, file: !3130, line: 117, baseType: !297, size: 64, offset: 384)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3129, file: !3130, line: 118, baseType: !297, size: 64, offset: 448)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3129, file: !3130, line: 119, baseType: !297, size: 64, offset: 512)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3129, file: !3130, line: 120, baseType: !297, size: 64, offset: 576)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3129, file: !3130, line: 121, baseType: !297, size: 64, offset: 640)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3129, file: !3130, line: 122, baseType: !297, size: 64, offset: 704)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3129, file: !3130, line: 123, baseType: !297, size: 64, offset: 768)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3129, file: !3130, line: 124, baseType: !297, size: 64, offset: 832)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3129, file: !3130, line: 125, baseType: !297, size: 64, offset: 896)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3129, file: !3130, line: 139, baseType: !297, size: 64, offset: 960)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3129, file: !3130, line: 142, baseType: !297, size: 64, offset: 1024)
!3149 = !DIDerivedType(tag: DW_TAG_member, scope: !3129, file: !3130, line: 144, baseType: !3150, size: 64, offset: 1088)
!3150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3129, file: !3130, line: 144, size: 64, elements: !3151)
!3151 = !{!3152, !3153, !3154}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3150, file: !3130, line: 146, baseType: !215, size: 16)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3150, file: !3130, line: 148, baseType: !411, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3150, file: !3130, line: 150, baseType: !3155, size: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3130, line: 59, size: 64, elements: !3156)
!3156 = !{!3157, !3158, !3159}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3155, file: !3130, line: 61, baseType: !411, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3155, file: !3130, line: 63, baseType: !411, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3155, file: !3130, line: 65, baseType: !411, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3129, file: !3130, line: 153, baseType: !297, size: 64, offset: 1152)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3129, file: !3130, line: 154, baseType: !297, size: 64, offset: 1216)
!3162 = !DIDerivedType(tag: DW_TAG_member, scope: !3129, file: !3130, line: 156, baseType: !3163, size: 64, offset: 1280)
!3163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3129, file: !3130, line: 156, size: 64, elements: !3164)
!3164 = !{!3165, !3166, !3167}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3163, file: !3130, line: 158, baseType: !215, size: 16)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3163, file: !3130, line: 160, baseType: !411, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3163, file: !3130, line: 162, baseType: !3168, size: 64)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3130, line: 69, size: 64, elements: !3169)
!3169 = !{!3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3168, file: !3130, line: 71, baseType: !411, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3168, file: !3130, line: 73, baseType: !411, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3168, file: !3130, line: 75, baseType: !411, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3168, file: !3130, line: 77, baseType: !411, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3168, file: !3130, line: 80, baseType: !411, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3168, file: !3130, line: 83, baseType: !411, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3168, file: !3130, line: 86, baseType: !411, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3168, file: !3130, line: 88, baseType: !411, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3168, file: !3130, line: 93, baseType: !411, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3168, file: !3130, line: 100, baseType: !411, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3105, file: !3034, line: 96, baseType: !1093, size: 32, offset: 1024)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3052, file: !3034, line: 352, baseType: !3182, size: 4608, align: 512)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3034, line: 333, size: 4608, align: 512, elements: !3183)
!3183 = !{!3184, !3185, !3194}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3182, file: !3034, line: 334, baseType: !3068, size: 4096, align: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3182, file: !3034, line: 335, baseType: !3186, size: 512, offset: 4096)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3034, line: 312, size: 512, elements: !3187)
!3187 = !{!3188, !3189, !3190}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3186, file: !3034, line: 313, baseType: !411, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3186, file: !3034, line: 314, baseType: !411, size: 64, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3186, file: !3034, line: 315, baseType: !3191, size: 384, offset: 128)
!3191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 384, elements: !3192)
!3192 = !{!3193}
!3193 = !DISubrange(count: 6)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3182, file: !3034, line: 336, baseType: !3195, offset: 4608)
!3195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, elements: !582)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3052, file: !3034, line: 353, baseType: !3197, size: 32768)
!3197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 32768, elements: !3198)
!3198 = !{!3199}
!3199 = !DISubrange(count: 4096)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3033, file: !3034, line: 484, baseType: !3039, size: 64, offset: 192)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3033, file: !3034, line: 491, baseType: !3202, size: 128, offset: 256)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3034, line: 404, size: 128, elements: !3203)
!3203 = !{!3204, !3205, !3206}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3202, file: !3034, line: 424, baseType: !411, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3202, file: !3034, line: 432, baseType: !7, size: 32, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3202, file: !3034, line: 440, baseType: !7, size: 32, offset: 96)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3033, file: !3034, line: 498, baseType: !3202, size: 128, offset: 384)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3033, file: !3034, line: 508, baseType: !3040, size: 33280, align: 512, offset: 512)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2074, file: !102, line: 158, baseType: !3210, size: 64, offset: 4544)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_stats", file: !102, line: 158, flags: DIFlagFwdDecl)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2074, file: !102, line: 161, baseType: !319, size: 64, offset: 4608)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2074, file: !102, line: 164, baseType: !3214, size: 64, offset: 4672)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !3216, line: 98, size: 6848, elements: !3217)
!3216 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0720786b938087c9219e0058826384af")
!3217 = !{!3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3251, !3252, !3253, !3254}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3215, file: !3216, line: 99, baseType: !46, size: 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3215, file: !3216, line: 100, baseType: !247, size: 64, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "max_state", scope: !3215, file: !3216, line: 101, baseType: !297, size: 64, offset: 128)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3215, file: !3216, line: 102, baseType: !1373, size: 5824, offset: 192)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !3215, file: !3216, line: 103, baseType: !1827, size: 64, offset: 6016)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !3215, file: !3216, line: 104, baseType: !319, size: 64, offset: 6080)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3215, file: !3216, line: 105, baseType: !319, size: 64, offset: 6144)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3215, file: !3216, line: 106, baseType: !3226, size: 64, offset: 6208)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3228)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !3216, line: 89, size: 384, elements: !3229)
!3229 = !{!3230, !3234, !3235, !3239, !3243, !3247}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !3228, file: !3216, line: 90, baseType: !3231, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!46, !3214, !1174}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !3228, file: !3216, line: 91, baseType: !3231, size: 64, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !3228, file: !3216, line: 92, baseType: !3236, size: 64, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!46, !3214, !297}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !3228, file: !3216, line: 93, baseType: !3240, size: 64, offset: 192)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!46, !3214, !2395}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !3228, file: !3216, line: 94, baseType: !3244, size: 64, offset: 256)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!46, !3214, !297, !2395}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !3228, file: !3216, line: 95, baseType: !3248, size: 64, offset: 320)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!46, !3214, !1093, !1174}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !3215, file: !3216, line: 107, baseType: !604, size: 8, offset: 6272)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3215, file: !3216, line: 108, baseType: !505, size: 256, offset: 6336)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !3215, file: !3216, line: 109, baseType: !147, size: 128, offset: 6592)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3215, file: !3216, line: 110, baseType: !147, size: 128, offset: 6720)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "nb_min", scope: !2074, file: !102, line: 166, baseType: !1726, size: 192, offset: 4736)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "nb_max", scope: !2074, file: !102, line: 167, baseType: !1726, size: 192, offset: 4928)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !2064, file: !102, line: 332, baseType: !3258, size: 64, offset: 320)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!46, !3261}
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_policy_data", file: !102, line: 176, size: 320, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3267, !3268}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "cpuinfo", scope: !3262, file: !102, line: 177, baseType: !2086, size: 96)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table", scope: !3262, file: !102, line: 178, baseType: !2129, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3262, file: !102, line: 179, baseType: !7, size: 32, offset: 192)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3262, file: !102, line: 180, baseType: !7, size: 32, offset: 224)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3262, file: !102, line: 181, baseType: !7, size: 32, offset: 256)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "setpolicy", scope: !2064, file: !102, line: 335, baseType: !2070, size: 64, offset: 384)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2064, file: !102, line: 337, baseType: !3271, size: 64, offset: 448)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!46, !2073, !7, !7}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "target_index", scope: !2064, file: !102, line: 340, baseType: !2115, size: 64, offset: 512)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch", scope: !2064, file: !102, line: 342, baseType: !3276, size: 64, offset: 576)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!7, !2073, !7}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "adjust_perf", scope: !2064, file: !102, line: 352, baseType: !3280, size: 64, offset: 640)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{null, !7, !297, !297, !297}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "get_intermediate", scope: !2064, file: !102, line: 372, baseType: !3276, size: 64, offset: 704)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "target_intermediate", scope: !2064, file: !102, line: 374, baseType: !2115, size: 64, offset: 768)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2064, file: !102, line: 378, baseType: !3286, size: 64, offset: 832)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!7, !7}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "update_limits", scope: !2064, file: !102, line: 381, baseType: !3290, size: 64, offset: 896)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{null, !7}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "bios_limit", scope: !2064, file: !102, line: 384, baseType: !3294, size: 64, offset: 960)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!46, !46, !927}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2064, file: !102, line: 386, baseType: !2070, size: 64, offset: 1024)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2064, file: !102, line: 387, baseType: !2070, size: 64, offset: 1088)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2064, file: !102, line: 388, baseType: !2070, size: 64, offset: 1152)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2064, file: !102, line: 389, baseType: !2070, size: 64, offset: 1216)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2064, file: !102, line: 390, baseType: !2070, size: 64, offset: 1280)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !2064, file: !102, line: 393, baseType: !2104, size: 64, offset: 1344)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2064, file: !102, line: 395, baseType: !3304, size: 64, offset: 1408)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_attr", file: !102, line: 294, size: 256, elements: !3307)
!3307 = !{!3308, !3309, !3310}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3306, file: !102, line: 295, baseType: !285, size: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3306, file: !102, line: 296, baseType: !2111, size: 64, offset: 128)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3306, file: !102, line: 297, baseType: !3311, size: 64, offset: 192)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!279, !2073, !166, !294}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "boost_enabled", scope: !2064, file: !102, line: 398, baseType: !604, size: 8, offset: 1472)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "set_boost", scope: !2064, file: !102, line: 399, baseType: !3316, size: 64, offset: 1536)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!46, !2073, !46}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "register_em", scope: !2064, file: !102, line: 405, baseType: !2104, size: 64, offset: 1600)
!3320 = !DIGlobalVariableExpression(var: !3321, expr: !DIExpression())
!3321 = distinct !DIGlobalVariable(name: "blacklisted", scope: !3322, file: !3, line: 696, type: !46, isLocal: true, isDefinition: true)
!3322 = distinct !DISubprogram(name: "acpi_cpufreq_cpu_init", scope: !3, file: !3, line: 684, type: !2071, scopeLine: 685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3323)
!3323 = !{!3324, !3325, !3326, !3327, !3344, !3345, !3346, !3349, !3351, !3352, !3353, !3354, !3355, !3356, !3359, !3361, !3366, !3368, !3373, !3375, !3377, !3380, !3381, !3385, !3388, !3389, !3392, !3393, !3394}
!3324 = !DILocalVariable(name: "policy", arg: 1, scope: !3322, file: !3, line: 684, type: !2073)
!3325 = !DILocalVariable(name: "freq_table", scope: !3322, file: !3, line: 686, type: !2129)
!3326 = !DILocalVariable(name: "perf", scope: !3322, file: !3, line: 687, type: !1256)
!3327 = !DILocalVariable(name: "data", scope: !3322, file: !3, line: 688, type: !3328)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_cpufreq_data", file: !3, line: 55, size: 320, elements: !3330)
!3330 = !{!3331, !3332, !3333, !3334, !3335, !3340}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3329, file: !3, line: 56, baseType: !7, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_feature", scope: !3329, file: !3, line: 57, baseType: !7, size: 32, offset: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_perf_cpu", scope: !3329, file: !3, line: 58, baseType: !7, size: 32, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "freqdomain_cpus", scope: !3329, file: !3, line: 59, baseType: !1293, size: 64, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_freq_write", scope: !3329, file: !3, line: 60, baseType: !3336, size: 64, offset: 192)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{null, !3339, !1093}
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_freq_read", scope: !3329, file: !3, line: 61, baseType: !3341, size: 64, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!1093, !3339}
!3344 = !DILocalVariable(name: "cpu", scope: !3322, file: !3, line: 689, type: !7)
!3345 = !DILocalVariable(name: "c", scope: !3322, file: !3, line: 690, type: !1191)
!3346 = !DILocalVariable(name: "__vpp_verify", scope: !3347, file: !3, line: 690, type: !526)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 690, column: 27)
!3348 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 690, column: 27)
!3349 = !DILocalVariable(name: "__ptr", scope: !3350, file: !3, line: 690, type: !297)
!3350 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 690, column: 27)
!3351 = !DILocalVariable(name: "max_boost_ratio", scope: !3322, file: !3, line: 691, type: !411)
!3352 = !DILocalVariable(name: "nominal_freq", scope: !3322, file: !3, line: 691, type: !411)
!3353 = !DILocalVariable(name: "valid_states", scope: !3322, file: !3, line: 692, type: !7)
!3354 = !DILocalVariable(name: "result", scope: !3322, file: !3, line: 693, type: !7)
!3355 = !DILocalVariable(name: "i", scope: !3322, file: !3, line: 694, type: !7)
!3356 = !DILocalVariable(name: "__vpp_verify", scope: !3357, file: !3, line: 718, type: !526)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 718, column: 9)
!3358 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 718, column: 9)
!3359 = !DILocalVariable(name: "__ptr", scope: !3360, file: !3, line: 718, type: !297)
!3360 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 718, column: 9)
!3361 = !DILocalVariable(name: "__vpp_verify", scope: !3362, file: !3, line: 745, type: !526)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 745, column: 30)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 745, column: 30)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 743, column: 57)
!3365 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 743, column: 6)
!3366 = !DILocalVariable(name: "__ptr", scope: !3367, file: !3, line: 745, type: !297)
!3367 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 745, column: 30)
!3368 = !DILocalVariable(name: "__vpp_verify", scope: !3369, file: !3, line: 753, type: !526)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 753, column: 9)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 753, column: 9)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 749, column: 27)
!3372 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 748, column: 6)
!3373 = !DILocalVariable(name: "__ptr", scope: !3374, file: !3, line: 753, type: !297)
!3374 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 753, column: 9)
!3375 = !DILocalVariable(name: "__ret_do_once", scope: !3376, file: !3, line: 755, type: !604)
!3376 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 755, column: 3)
!3377 = !DILocalVariable(name: "__ret_cond", scope: !3378, file: !3, line: 755, type: !604)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 755, column: 3)
!3379 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 755, column: 3)
!3380 = !DILocalVariable(name: "__ret_once", scope: !3378, file: !3, line: 755, type: !604)
!3381 = !DILocalVariable(name: "__ret_do_once", scope: !3382, file: !3, line: 827, type: !604)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 827, column: 3)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 825, column: 54)
!3384 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 824, column: 6)
!3385 = !DILocalVariable(name: "__ret_cond", scope: !3386, file: !3, line: 827, type: !604)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 827, column: 3)
!3387 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 827, column: 3)
!3388 = !DILocalVariable(name: "__ret_once", scope: !3386, file: !3, line: 827, type: !604)
!3389 = !DILocalVariable(name: "freq", scope: !3390, file: !3, line: 845, type: !7)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 844, column: 23)
!3391 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 844, column: 6)
!3392 = !DILabel(scope: !3322, name: "err_unreg", file: !3, line: 918)
!3393 = !DILabel(scope: !3322, name: "err_free_mask", file: !3, line: 920)
!3394 = !DILabel(scope: !3322, name: "err_free", file: !3, line: 922)
!3395 = !DIGlobalVariableExpression(var: !3396, expr: !DIExpression())
!3396 = distinct !DIGlobalVariable(name: "__already_done", scope: !3322, file: !3, line: 755, type: !604, isLocal: true, isDefinition: true)
!3397 = !DIGlobalVariableExpression(var: !3398, expr: !DIExpression())
!3398 = distinct !DIGlobalVariable(scope: null, file: !3, line: 755, type: !3399, isLocal: true, isDefinition: true)
!3399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 416, elements: !472)
!3400 = !DIGlobalVariableExpression(var: !3401, expr: !DIExpression())
!3401 = distinct !DIGlobalVariable(name: "__already_done", scope: !3322, file: !3, line: 827, type: !604, isLocal: true, isDefinition: true)
!3402 = !DIGlobalVariableExpression(var: !3403, expr: !DIExpression())
!3403 = distinct !DIGlobalVariable(scope: null, file: !3, line: 827, type: !3404, isLocal: true, isDefinition: true)
!3404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 480, elements: !3405)
!3405 = !{!3406}
!3406 = !DISubrange(count: 60)
!3407 = !DIGlobalVariableExpression(var: !3408, expr: !DIExpression())
!3408 = distinct !DIGlobalVariable(scope: null, file: !3, line: 909, type: !3404, isLocal: true, isDefinition: true)
!3409 = !DIGlobalVariableExpression(var: !3410, expr: !DIExpression())
!3410 = distinct !DIGlobalVariable(scope: null, file: !3, line: 622, type: !3411, isLocal: true, isDefinition: true)
!3411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 960, elements: !3412)
!3412 = !{!3413}
!3413 = !DISubrange(count: 120)
!3414 = !DIGlobalVariableExpression(var: !3415, expr: !DIExpression())
!3415 = distinct !DIGlobalVariable(scope: null, file: !132, line: 480, type: !3416, isLocal: true, isDefinition: true)
!3416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 168, elements: !3417)
!3417 = !{!3418}
!3418 = !DISubrange(count: 21)
!3419 = !DIGlobalVariableExpression(var: !3420, expr: !DIExpression())
!3420 = distinct !DIGlobalVariable(name: "acpi_perf_data", scope: !2, file: !3, line: 65, type: !1256, isLocal: true, isDefinition: true)
!3421 = !DIGlobalVariableExpression(var: !3422, expr: !DIExpression())
!3422 = distinct !DIGlobalVariable(scope: null, file: !3, line: 601, type: !3423, isLocal: true, isDefinition: true)
!3423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 192, elements: !1223)
!3424 = !DIGlobalVariableExpression(var: !3425, expr: !DIExpression())
!3425 = distinct !DIGlobalVariable(name: "sw_any_bug_dmi_table", scope: !2, file: !3, line: 598, type: !3426, isLocal: true, isDefinition: true)
!3426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3427, size: 5504, elements: !965)
!3427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3428)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !1463, line: 587, size: 2752, elements: !3429)
!3429 = !{!3430, !3435, !3436, !3446}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !3428, file: !1463, line: 588, baseType: !3431, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!46, !3434}
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !3428, file: !1463, line: 589, baseType: !166, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !3428, file: !1463, line: 590, baseType: !3437, size: 2560, offset: 128)
!3437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3438, size: 2560, elements: !486)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !1463, line: 581, size: 640, elements: !3439)
!3439 = !{!3440, !3441, !3442}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3438, file: !1463, line: 582, baseType: !209, size: 7, flags: DIFlagBitField, extraData: i64 0)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !3438, file: !1463, line: 583, baseType: !209, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !3438, file: !1463, line: 584, baseType: !3443, size: 632, offset: 8)
!3443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 632, elements: !3444)
!3444 = !{!3445}
!3445 = !DISubrange(count: 79)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3428, file: !1463, line: 591, baseType: !319, size: 64, offset: 2688)
!3447 = !DIGlobalVariableExpression(var: !3448, expr: !DIExpression())
!3448 = distinct !DIGlobalVariable(name: "bios_with_sw_any_bug", scope: !2, file: !3, line: 590, type: !46, isLocal: true, isDefinition: true)
!3449 = !DIGlobalVariableExpression(var: !3450, expr: !DIExpression())
!3450 = distinct !DIGlobalVariable(scope: null, file: !3, line: 322, type: !3451, isLocal: true, isDefinition: true)
!3451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 248, elements: !3452)
!3452 = !{!3453}
!3453 = !DISubrange(count: 31)
!3454 = !DIGlobalVariableExpression(var: !3455, expr: !DIExpression())
!3455 = distinct !DIGlobalVariable(scope: null, file: !3, line: 345, type: !3456, isLocal: true, isDefinition: true)
!3456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 40, elements: !1210)
!3457 = !DIGlobalVariableExpression(var: !3458, expr: !DIExpression())
!3458 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule251", scope: !3459, file: !3, line: 350, type: !319, isLocal: true, isDefinition: true)
!3459 = distinct !DISubprogram(name: "drv_write", scope: !3, file: !3, line: 334, type: !3460, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3462)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{null, !3328, !1311, !1093}
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3477, !3478, !3482, !3484}
!3463 = !DILocalVariable(name: "data", arg: 1, scope: !3459, file: !3, line: 334, type: !3328)
!3464 = !DILocalVariable(name: "mask", arg: 2, scope: !3459, file: !3, line: 335, type: !1311)
!3465 = !DILocalVariable(name: "val", arg: 3, scope: !3459, file: !3, line: 335, type: !1093)
!3466 = !DILocalVariable(name: "perf", scope: !3459, file: !3, line: 337, type: !1256)
!3467 = !DILocalVariable(name: "cmd", scope: !3459, file: !3, line: 338, type: !3468)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drv_cmd", file: !3, line: 295, size: 192, elements: !3469)
!3469 = !{!3470, !3471, !3472}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3468, file: !3, line: 296, baseType: !3339, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3468, file: !3, line: 297, baseType: !1093, size: 32, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3468, file: !3, line: 301, baseType: !3473, size: 64, offset: 128)
!3473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3468, file: !3, line: 298, size: 64, elements: !3474)
!3474 = !{!3475, !3476}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3473, file: !3, line: 299, baseType: !3336, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3473, file: !3, line: 300, baseType: !3341, size: 64)
!3477 = !DILocalVariable(name: "this_cpu", scope: !3459, file: !3, line: 343, type: !46)
!3478 = !DILocalVariable(name: "pscr_ret__", scope: !3479, file: !3, line: 345, type: !46)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !3, line: 345, column: 13)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 345, column: 13)
!3481 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 345, column: 13)
!3482 = !DILocalVariable(name: "__vpp_verify", scope: !3483, file: !3, line: 345, type: !526)
!3483 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 345, column: 13)
!3484 = !DILocalVariable(name: "pfo_val__", scope: !3485, file: !3, line: 345, type: !1093)
!3485 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 345, column: 13)
!3486 = !DIGlobalVariableExpression(var: !3487, expr: !DIExpression())
!3487 = distinct !DIGlobalVariable(name: "acpi_cpufreq_attr", scope: !2, file: !3, line: 957, type: !3488, isLocal: true, isDefinition: true)
!3488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3305, size: 256, elements: !486)
!3489 = !DIGlobalVariableExpression(var: !3490, expr: !DIExpression())
!3490 = distinct !DIGlobalVariable(scope: null, file: !3, line: 156, type: !1227, isLocal: true, isDefinition: true)
!3491 = !DIGlobalVariableExpression(var: !3492, expr: !DIExpression())
!3492 = distinct !DIGlobalVariable(name: "freqdomain_cpus", scope: !2, file: !3, line: 156, type: !3306, isLocal: true, isDefinition: true)
!3493 = !DIGlobalVariableExpression(var: !3494, expr: !DIExpression())
!3494 = distinct !DIGlobalVariable(scope: null, file: !3, line: 184, type: !3495, isLocal: true, isDefinition: true)
!3495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 32, elements: !486)
!3496 = !DIGlobalVariableExpression(var: !3497, expr: !DIExpression())
!3497 = distinct !DIGlobalVariable(name: "cpb", scope: !2, file: !3, line: 184, type: !3306, isLocal: true, isDefinition: true)
!3498 = !DIGlobalVariableExpression(var: !3499, expr: !DIExpression())
!3499 = distinct !DIGlobalVariable(scope: null, file: !3, line: 181, type: !3495, isLocal: true, isDefinition: true)
!3500 = !DIGlobalVariableExpression(var: !3501, expr: !DIExpression())
!3501 = distinct !DIGlobalVariable(name: "__param_str_acpi_pstate_strict", scope: !2, file: !3, line: 1060, type: !3502, isLocal: true, isDefinition: true)
!3502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 256, elements: !1467)
!3503 = !{!"rsp"}
!3504 = !{i32 7, !"Dwarf Version", i32 5}
!3505 = !{i32 2, !"Debug Info Version", i32 3}
!3506 = !{i32 1, !"wchar_size", i32 2}
!3507 = !{i32 8, !"cf-protection-branch", i32 1}
!3508 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3509 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3510 = !{i32 1, !"Code Model", i32 2}
!3511 = !{i32 1, !"override-stack-alignment", i32 8}
!3512 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3513 = distinct !DISubprogram(name: "acpi_cpufreq_exit", scope: !3, file: !3, line: 1055, type: !1188, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3514 = !DILocation(line: 1057, column: 2, scope: !3513)
!3515 = !DILocation(line: 1058, column: 1, scope: !3513)
!3516 = !DISubprogram(name: "platform_driver_unregister", scope: !1360, file: !1360, line: 276, type: !3517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{null, !3519}
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!3520 = distinct !DISubprogram(name: "__initstub__kmod_acpi_cpufreq__254_1065_acpi_cpufreq_init7", scope: !3, file: !3, line: 1065, type: !947, scopeLine: 1065, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3521 = !DILocation(line: 1065, column: 1, scope: !3520)
!3522 = distinct !DISubprogram(name: "acpi_cpufreq_init", scope: !3, file: !3, line: 1050, type: !947, scopeLine: 1051, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3523 = !DILocation(line: 1052, column: 9, scope: !3522)
!3524 = !DILocation(line: 1052, column: 2, scope: !3522)
!3525 = distinct !DISubprogram(name: "acpi_cpufreq_remove", scope: !3, file: !3, line: 1034, type: !2050, scopeLine: 1035, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3526)
!3526 = !{!3527}
!3527 = !DILocalVariable(name: "pdev", arg: 1, scope: !3525, file: !3, line: 1034, type: !1366)
!3528 = !DILocation(line: 1034, column: 57, scope: !3525)
!3529 = !DILocation(line: 1036, column: 2, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 1036, column: 2)
!3531 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 1036, column: 2)
!3532 = !DILocation(line: 1036, column: 2, scope: !3531)
!3533 = !DILocation(line: 1038, column: 2, scope: !3525)
!3534 = !DILocation(line: 1040, column: 2, scope: !3525)
!3535 = !DILocation(line: 1041, column: 1, scope: !3525)
!3536 = !DISubprogram(name: "cpufreq_unregister_driver", scope: !102, file: !102, line: 458, type: !3537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{null, !3539}
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!3540 = distinct !DISubprogram(name: "free_acpi_perf_data", scope: !3, file: !3, line: 529, type: !1188, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3541)
!3541 = !{!3542, !3543, !3548}
!3542 = !DILocalVariable(name: "i", scope: !3540, file: !3, line: 531, type: !7)
!3543 = !DILocalVariable(name: "__vpp_verify", scope: !3544, file: !3, line: 535, type: !526)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 535, column: 20)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 535, column: 20)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 534, column: 2)
!3547 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 534, column: 2)
!3548 = !DILocalVariable(name: "__ptr", scope: !3549, file: !3, line: 535, type: !297)
!3549 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 535, column: 20)
!3550 = !DILocation(line: 531, column: 2, scope: !3540)
!3551 = !DILocation(line: 531, column: 15, scope: !3540)
!3552 = !DILocation(line: 534, column: 2, scope: !3547)
!3553 = !DILocation(line: 534, column: 2, scope: !3546)
!3554 = !DILocation(line: 535, column: 20, scope: !3545)
!3555 = !DILocation(line: 535, column: 20, scope: !3544)
!3556 = !DILocation(line: 535, column: 20, scope: !3549)
!3557 = !DILocation(line: 536, column: 8, scope: !3546)
!3558 = !DILocation(line: 535, column: 20, scope: !3546)
!3559 = !DILocation(line: 535, column: 3, scope: !3546)
!3560 = distinct !{!3560, !3552, !3561, !3562, !3563}
!3561 = !DILocation(line: 536, column: 22, scope: !3547)
!3562 = !{!"llvm.loop.mustprogress"}
!3563 = !{!"llvm.loop.unroll.disable"}
!3564 = !DILocation(line: 537, column: 14, scope: !3540)
!3565 = !DILocation(line: 537, column: 2, scope: !3540)
!3566 = !DILocation(line: 538, column: 1, scope: !3540)
!3567 = !DILocation(line: 684, column: 57, scope: !3322)
!3568 = !DILocation(line: 686, column: 2, scope: !3322)
!3569 = !DILocation(line: 686, column: 34, scope: !3322)
!3570 = !DILocation(line: 687, column: 2, scope: !3322)
!3571 = !DILocation(line: 687, column: 37, scope: !3322)
!3572 = !DILocation(line: 688, column: 2, scope: !3322)
!3573 = !DILocation(line: 688, column: 28, scope: !3322)
!3574 = !DILocation(line: 689, column: 2, scope: !3322)
!3575 = !DILocation(line: 689, column: 15, scope: !3322)
!3576 = !DILocation(line: 689, column: 21, scope: !3322)
!3577 = !DILocation(line: 689, column: 29, scope: !3322)
!3578 = !DILocation(line: 690, column: 2, scope: !3322)
!3579 = !DILocation(line: 690, column: 22, scope: !3322)
!3580 = !DILocation(line: 690, column: 27, scope: !3348)
!3581 = !DILocation(line: 690, column: 27, scope: !3347)
!3582 = !DILocation(line: 690, column: 27, scope: !3350)
!3583 = !DILocation(line: 691, column: 2, scope: !3322)
!3584 = !DILocation(line: 691, column: 6, scope: !3322)
!3585 = !DILocation(line: 691, column: 23, scope: !3322)
!3586 = !DILocation(line: 692, column: 2, scope: !3322)
!3587 = !DILocation(line: 692, column: 15, scope: !3322)
!3588 = !DILocation(line: 693, column: 2, scope: !3322)
!3589 = !DILocation(line: 693, column: 15, scope: !3322)
!3590 = !DILocation(line: 694, column: 2, scope: !3322)
!3591 = !DILocation(line: 694, column: 15, scope: !3322)
!3592 = !DILocation(line: 699, column: 2, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 699, column: 2)
!3594 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 699, column: 2)
!3595 = !DILocation(line: 699, column: 2, scope: !3594)
!3596 = !DILocation(line: 702, column: 6, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 702, column: 6)
!3598 = !DILocation(line: 702, column: 6, scope: !3322)
!3599 = !DILocation(line: 703, column: 10, scope: !3597)
!3600 = !DILocation(line: 703, column: 3, scope: !3597)
!3601 = !DILocation(line: 704, column: 39, scope: !3322)
!3602 = !DILocation(line: 704, column: 16, scope: !3322)
!3603 = !DILocation(line: 704, column: 14, scope: !3322)
!3604 = !DILocation(line: 705, column: 6, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 705, column: 6)
!3606 = !DILocation(line: 705, column: 6, scope: !3322)
!3607 = !DILocation(line: 706, column: 10, scope: !3605)
!3608 = !DILocation(line: 706, column: 3, scope: !3605)
!3609 = !DILocation(line: 709, column: 9, scope: !3322)
!3610 = !DILocation(line: 709, column: 7, scope: !3322)
!3611 = !DILocation(line: 710, column: 7, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 710, column: 6)
!3613 = !DILocation(line: 710, column: 6, scope: !3322)
!3614 = !DILocation(line: 711, column: 3, scope: !3612)
!3615 = !DILocation(line: 713, column: 27, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 713, column: 6)
!3617 = !DILocation(line: 713, column: 33, scope: !3616)
!3618 = !DILocation(line: 713, column: 7, scope: !3616)
!3619 = !DILocation(line: 713, column: 6, scope: !3322)
!3620 = !DILocation(line: 714, column: 10, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 713, column: 63)
!3622 = !DILocation(line: 715, column: 3, scope: !3621)
!3623 = !DILocation(line: 718, column: 9, scope: !3358)
!3624 = !DILocation(line: 718, column: 9, scope: !3357)
!3625 = !DILocation(line: 718, column: 9, scope: !3360)
!3626 = !DILocation(line: 718, column: 7, scope: !3322)
!3627 = !DILocation(line: 719, column: 24, scope: !3322)
!3628 = !DILocation(line: 719, column: 2, scope: !3322)
!3629 = !DILocation(line: 719, column: 8, scope: !3322)
!3630 = !DILocation(line: 719, column: 22, scope: !3322)
!3631 = !DILocation(line: 720, column: 24, scope: !3322)
!3632 = !DILocation(line: 720, column: 2, scope: !3322)
!3633 = !DILocation(line: 720, column: 10, scope: !3322)
!3634 = !DILocation(line: 720, column: 22, scope: !3322)
!3635 = !DILocation(line: 722, column: 6, scope: !3322)
!3636 = !DILocation(line: 722, column: 6, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 722, column: 6)
!3638 = !DILocation(line: 723, column: 29, scope: !3637)
!3639 = !DILocation(line: 723, column: 3, scope: !3637)
!3640 = !DILocation(line: 725, column: 47, scope: !3322)
!3641 = !DILocation(line: 725, column: 53, scope: !3322)
!3642 = !DILocation(line: 725, column: 11, scope: !3322)
!3643 = !DILocation(line: 725, column: 9, scope: !3322)
!3644 = !DILocation(line: 726, column: 6, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 726, column: 6)
!3646 = !DILocation(line: 726, column: 6, scope: !3322)
!3647 = !DILocation(line: 727, column: 3, scope: !3645)
!3648 = !DILocation(line: 729, column: 24, scope: !3322)
!3649 = !DILocation(line: 729, column: 30, scope: !3322)
!3650 = !DILocation(line: 729, column: 2, scope: !3322)
!3651 = !DILocation(line: 729, column: 10, scope: !3322)
!3652 = !DILocation(line: 729, column: 22, scope: !3322)
!3653 = !DILocation(line: 735, column: 6, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 735, column: 6)
!3655 = !DILocation(line: 735, column: 14, scope: !3654)
!3656 = !DILocation(line: 735, column: 26, scope: !3654)
!3657 = !DILocation(line: 735, column: 53, scope: !3654)
!3658 = !DILocation(line: 736, column: 6, scope: !3654)
!3659 = !DILocation(line: 736, column: 14, scope: !3654)
!3660 = !DILocation(line: 736, column: 26, scope: !3654)
!3661 = !DILocation(line: 735, column: 6, scope: !3322)
!3662 = !DILocation(line: 737, column: 16, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 736, column: 54)
!3664 = !DILocation(line: 737, column: 24, scope: !3663)
!3665 = !DILocation(line: 737, column: 30, scope: !3663)
!3666 = !DILocation(line: 737, column: 36, scope: !3663)
!3667 = !DILocation(line: 737, column: 3, scope: !3663)
!3668 = !DILocation(line: 738, column: 2, scope: !3663)
!3669 = !DILocation(line: 739, column: 15, scope: !3322)
!3670 = !DILocation(line: 739, column: 21, scope: !3322)
!3671 = !DILocation(line: 739, column: 38, scope: !3322)
!3672 = !DILocation(line: 739, column: 44, scope: !3322)
!3673 = !DILocation(line: 739, column: 2, scope: !3322)
!3674 = !DILocation(line: 742, column: 2, scope: !3322)
!3675 = !DILocation(line: 743, column: 6, scope: !3365)
!3676 = !DILocation(line: 743, column: 27, scope: !3365)
!3677 = !DILocation(line: 743, column: 48, scope: !3365)
!3678 = !DILocation(line: 743, column: 31, scope: !3365)
!3679 = !DILocation(line: 743, column: 6, scope: !3322)
!3680 = !DILocation(line: 744, column: 3, scope: !3364)
!3681 = !DILocation(line: 744, column: 11, scope: !3364)
!3682 = !DILocation(line: 744, column: 23, scope: !3364)
!3683 = !DILocation(line: 745, column: 16, scope: !3364)
!3684 = !DILocation(line: 745, column: 24, scope: !3364)
!3685 = !DILocation(line: 745, column: 30, scope: !3363)
!3686 = !DILocation(line: 745, column: 30, scope: !3362)
!3687 = !DILocation(line: 745, column: 30, scope: !3367)
!3688 = !DILocation(line: 745, column: 30, scope: !3364)
!3689 = !DILocation(line: 745, column: 3, scope: !3364)
!3690 = !DILocation(line: 746, column: 2, scope: !3364)
!3691 = !DILocation(line: 748, column: 29, scope: !3372)
!3692 = !DILocation(line: 748, column: 6, scope: !3372)
!3693 = !DILocation(line: 748, column: 34, scope: !3372)
!3694 = !DILocation(line: 748, column: 51, scope: !3372)
!3695 = !DILocation(line: 748, column: 37, scope: !3372)
!3696 = !DILocation(line: 748, column: 55, scope: !3372)
!3697 = !DILocation(line: 748, column: 62, scope: !3372)
!3698 = !DILocation(line: 749, column: 7, scope: !3372)
!3699 = !DILocation(line: 748, column: 6, scope: !3322)
!3700 = !DILocation(line: 750, column: 17, scope: !3371)
!3701 = !DILocation(line: 750, column: 25, scope: !3371)
!3702 = !DILocation(line: 750, column: 3, scope: !3371)
!3703 = !DILocation(line: 751, column: 19, scope: !3371)
!3704 = !DILocation(line: 751, column: 24, scope: !3371)
!3705 = !DILocation(line: 751, column: 32, scope: !3371)
!3706 = !DILocation(line: 751, column: 3, scope: !3371)
!3707 = !DILocation(line: 752, column: 16, scope: !3371)
!3708 = !DILocation(line: 752, column: 22, scope: !3371)
!3709 = !DILocation(line: 753, column: 9, scope: !3370)
!3710 = !DILocation(line: 753, column: 9, scope: !3369)
!3711 = !DILocation(line: 753, column: 9, scope: !3374)
!3712 = !DILocation(line: 753, column: 9, scope: !3371)
!3713 = !DILocation(line: 752, column: 3, scope: !3371)
!3714 = !DILocation(line: 754, column: 3, scope: !3371)
!3715 = !DILocation(line: 754, column: 11, scope: !3371)
!3716 = !DILocation(line: 754, column: 23, scope: !3371)
!3717 = !DILocation(line: 755, column: 3, scope: !3376)
!3718 = !DILocation(line: 755, column: 3, scope: !3378)
!3719 = !{i8 0, i8 2}
!3720 = !DILocation(line: 755, column: 3, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 755, column: 3)
!3722 = !DILocation(line: 0, scope: !3721)
!3723 = !DILocation(line: 755, column: 3, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 755, column: 3)
!3725 = !DILocation(line: 755, column: 3, scope: !3379)
!3726 = !DILocation(line: 755, column: 3, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 755, column: 3)
!3728 = !DILocation(line: 755, column: 3, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 755, column: 3)
!3730 = !DILocation(line: 755, column: 3, scope: !3371)
!3731 = !DILocation(line: 756, column: 2, scope: !3371)
!3732 = !DILocation(line: 760, column: 6, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 760, column: 6)
!3734 = !DILocation(line: 760, column: 12, scope: !3733)
!3735 = !DILocation(line: 760, column: 24, scope: !3733)
!3736 = !DILocation(line: 760, column: 6, scope: !3322)
!3737 = !DILocation(line: 761, column: 3, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 761, column: 3)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !3, line: 761, column: 3)
!3740 = distinct !DILexicalBlock(scope: !3733, file: !3, line: 760, column: 30)
!3741 = !DILocation(line: 761, column: 3, scope: !3739)
!3742 = !DILocation(line: 762, column: 10, scope: !3740)
!3743 = !DILocation(line: 763, column: 3, scope: !3740)
!3744 = !DILocation(line: 766, column: 6, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 766, column: 6)
!3746 = !DILocation(line: 766, column: 12, scope: !3745)
!3747 = !DILocation(line: 766, column: 29, scope: !3745)
!3748 = !DILocation(line: 766, column: 41, scope: !3745)
!3749 = !DILocation(line: 766, column: 47, scope: !3745)
!3750 = !DILocation(line: 766, column: 63, scope: !3745)
!3751 = !DILocation(line: 766, column: 38, scope: !3745)
!3752 = !DILocation(line: 766, column: 6, scope: !3322)
!3753 = !DILocation(line: 767, column: 10, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 766, column: 73)
!3755 = !DILocation(line: 768, column: 3, scope: !3754)
!3756 = !DILocation(line: 771, column: 10, scope: !3322)
!3757 = !DILocation(line: 771, column: 16, scope: !3322)
!3758 = !DILocation(line: 771, column: 33, scope: !3322)
!3759 = !DILocation(line: 771, column: 2, scope: !3322)
!3760 = !DILocation(line: 773, column: 21, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !3, line: 773, column: 7)
!3762 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 771, column: 43)
!3763 = !DILocation(line: 773, column: 7, scope: !3761)
!3764 = !DILocation(line: 773, column: 32, scope: !3761)
!3765 = !DILocation(line: 773, column: 50, scope: !3761)
!3766 = !DILocation(line: 774, column: 21, scope: !3761)
!3767 = !DILocation(line: 774, column: 7, scope: !3761)
!3768 = !DILocation(line: 774, column: 25, scope: !3761)
!3769 = !DILocation(line: 773, column: 7, scope: !3762)
!3770 = !DILocation(line: 775, column: 4, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 775, column: 4)
!3772 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 775, column: 4)
!3773 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 774, column: 33)
!3774 = !DILocation(line: 775, column: 4, scope: !3772)
!3775 = !DILocation(line: 776, column: 11, scope: !3773)
!3776 = !DILocation(line: 777, column: 4, scope: !3773)
!3777 = !DILocation(line: 779, column: 3, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 779, column: 3)
!3779 = distinct !DILexicalBlock(scope: !3762, file: !3, line: 779, column: 3)
!3780 = !DILocation(line: 779, column: 3, scope: !3779)
!3781 = !DILocation(line: 780, column: 3, scope: !3762)
!3782 = !DILocation(line: 780, column: 9, scope: !3762)
!3783 = !DILocation(line: 780, column: 21, scope: !3762)
!3784 = !DILocation(line: 781, column: 3, scope: !3762)
!3785 = !DILocation(line: 781, column: 9, scope: !3762)
!3786 = !DILocation(line: 781, column: 23, scope: !3762)
!3787 = !DILocation(line: 782, column: 3, scope: !3762)
!3788 = !DILocation(line: 782, column: 9, scope: !3762)
!3789 = !DILocation(line: 782, column: 24, scope: !3762)
!3790 = !DILocation(line: 783, column: 3, scope: !3762)
!3791 = !DILocation(line: 785, column: 3, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3793, file: !3, line: 785, column: 3)
!3793 = distinct !DILexicalBlock(scope: !3762, file: !3, line: 785, column: 3)
!3794 = !DILocation(line: 785, column: 3, scope: !3793)
!3795 = !DILocation(line: 786, column: 21, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3762, file: !3, line: 786, column: 7)
!3797 = !DILocation(line: 786, column: 7, scope: !3796)
!3798 = !DILocation(line: 786, column: 7, scope: !3762)
!3799 = !DILocation(line: 787, column: 4, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3796, file: !3, line: 786, column: 27)
!3801 = !DILocation(line: 787, column: 10, scope: !3800)
!3802 = !DILocation(line: 787, column: 22, scope: !3800)
!3803 = !DILocation(line: 788, column: 4, scope: !3800)
!3804 = !DILocation(line: 788, column: 10, scope: !3800)
!3805 = !DILocation(line: 788, column: 24, scope: !3800)
!3806 = !DILocation(line: 789, column: 4, scope: !3800)
!3807 = !DILocation(line: 789, column: 10, scope: !3800)
!3808 = !DILocation(line: 789, column: 25, scope: !3800)
!3809 = !DILocation(line: 790, column: 4, scope: !3800)
!3810 = !DILocation(line: 792, column: 30, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3762, file: !3, line: 792, column: 7)
!3812 = !DILocation(line: 792, column: 7, scope: !3811)
!3813 = !DILocation(line: 792, column: 7, scope: !3762)
!3814 = !DILocation(line: 793, column: 4, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3811, file: !3, line: 792, column: 36)
!3816 = !DILocation(line: 793, column: 10, scope: !3815)
!3817 = !DILocation(line: 793, column: 22, scope: !3815)
!3818 = !DILocation(line: 794, column: 4, scope: !3815)
!3819 = !DILocation(line: 794, column: 10, scope: !3815)
!3820 = !DILocation(line: 794, column: 24, scope: !3815)
!3821 = !DILocation(line: 795, column: 4, scope: !3815)
!3822 = !DILocation(line: 795, column: 10, scope: !3815)
!3823 = !DILocation(line: 795, column: 25, scope: !3815)
!3824 = !DILocation(line: 796, column: 4, scope: !3815)
!3825 = !DILocation(line: 798, column: 10, scope: !3762)
!3826 = !DILocation(line: 799, column: 3, scope: !3762)
!3827 = !DILocation(line: 801, column: 3, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 801, column: 3)
!3829 = distinct !DILexicalBlock(scope: !3762, file: !3, line: 801, column: 3)
!3830 = !DILocation(line: 801, column: 3, scope: !3829)
!3831 = !DILocation(line: 803, column: 10, scope: !3762)
!3832 = !DILocation(line: 804, column: 3, scope: !3762)
!3833 = !DILocation(line: 807, column: 23, scope: !3322)
!3834 = !DILocation(line: 807, column: 29, scope: !3322)
!3835 = !DILocation(line: 807, column: 41, scope: !3322)
!3836 = !DILocation(line: 807, column: 15, scope: !3322)
!3837 = !DILocation(line: 807, column: 13, scope: !3322)
!3838 = !DILocation(line: 809, column: 7, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 809, column: 6)
!3840 = !DILocation(line: 809, column: 6, scope: !3322)
!3841 = !DILocation(line: 810, column: 10, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3839, file: !3, line: 809, column: 19)
!3843 = !DILocation(line: 811, column: 3, scope: !3842)
!3844 = !DILocation(line: 815, column: 2, scope: !3322)
!3845 = !DILocation(line: 815, column: 10, scope: !3322)
!3846 = !DILocation(line: 815, column: 18, scope: !3322)
!3847 = !DILocation(line: 815, column: 37, scope: !3322)
!3848 = !DILocation(line: 816, column: 9, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 816, column: 2)
!3850 = !DILocation(line: 816, column: 7, scope: !3849)
!3851 = !DILocation(line: 816, column: 14, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 816, column: 2)
!3853 = !DILocation(line: 816, column: 18, scope: !3852)
!3854 = !DILocation(line: 816, column: 24, scope: !3852)
!3855 = !DILocation(line: 816, column: 16, scope: !3852)
!3856 = !DILocation(line: 816, column: 2, scope: !3849)
!3857 = !DILocation(line: 817, column: 8, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 817, column: 7)
!3859 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 816, column: 42)
!3860 = !DILocation(line: 817, column: 14, scope: !3858)
!3861 = !DILocation(line: 817, column: 21, scope: !3858)
!3862 = !DILocation(line: 817, column: 24, scope: !3858)
!3863 = !DILocation(line: 817, column: 43, scope: !3858)
!3864 = !DILocation(line: 818, column: 7, scope: !3858)
!3865 = !DILocation(line: 818, column: 15, scope: !3858)
!3866 = !DILocation(line: 818, column: 23, scope: !3858)
!3867 = !DILocation(line: 817, column: 51, scope: !3858)
!3868 = !DILocation(line: 817, column: 7, scope: !3859)
!3869 = !DILocation(line: 820, column: 8, scope: !3858)
!3870 = !DILocation(line: 820, column: 14, scope: !3858)
!3871 = !DILocation(line: 820, column: 21, scope: !3858)
!3872 = !DILocation(line: 820, column: 24, scope: !3858)
!3873 = !DILocation(line: 820, column: 43, scope: !3858)
!3874 = !DILocation(line: 819, column: 4, scope: !3858)
!3875 = !DILocation(line: 819, column: 12, scope: !3858)
!3876 = !DILocation(line: 819, column: 20, scope: !3858)
!3877 = !DILocation(line: 819, column: 39, scope: !3858)
!3878 = !DILocation(line: 821, column: 2, scope: !3859)
!3879 = !DILocation(line: 816, column: 38, scope: !3852)
!3880 = !DILocation(line: 816, column: 2, scope: !3852)
!3881 = distinct !{!3881, !3856, !3882, !3562, !3563}
!3882 = !DILocation(line: 821, column: 2, scope: !3849)
!3883 = !DILocation(line: 824, column: 6, scope: !3384)
!3884 = !DILocation(line: 824, column: 12, scope: !3384)
!3885 = !DILocation(line: 824, column: 29, scope: !3384)
!3886 = !DILocation(line: 824, column: 38, scope: !3384)
!3887 = !DILocation(line: 824, column: 71, scope: !3384)
!3888 = !DILocation(line: 825, column: 6, scope: !3384)
!3889 = !DILocation(line: 825, column: 14, scope: !3384)
!3890 = !DILocation(line: 825, column: 22, scope: !3384)
!3891 = !DILocation(line: 825, column: 41, scope: !3384)
!3892 = !DILocation(line: 824, column: 6, scope: !3322)
!3893 = !DILocation(line: 826, column: 3, scope: !3383)
!3894 = !DILocation(line: 826, column: 11, scope: !3383)
!3895 = !DILocation(line: 826, column: 19, scope: !3383)
!3896 = !DILocation(line: 826, column: 38, scope: !3383)
!3897 = !DILocation(line: 827, column: 3, scope: !3382)
!3898 = !DILocation(line: 827, column: 3, scope: !3386)
!3899 = !DILocation(line: 827, column: 3, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 827, column: 3)
!3901 = !DILocation(line: 0, scope: !3900)
!3902 = !DILocation(line: 827, column: 3, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 827, column: 3)
!3904 = !DILocation(line: 827, column: 3, scope: !3387)
!3905 = !DILocation(line: 827, column: 3, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 827, column: 3)
!3907 = !DILocation(line: 827, column: 3, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 827, column: 3)
!3909 = !DILocation(line: 827, column: 3, scope: !3383)
!3910 = !DILocation(line: 828, column: 2, scope: !3383)
!3911 = !DILocation(line: 831, column: 9, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 831, column: 2)
!3913 = !DILocation(line: 831, column: 7, scope: !3912)
!3914 = !DILocation(line: 831, column: 14, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 831, column: 2)
!3916 = !DILocation(line: 831, column: 18, scope: !3915)
!3917 = !DILocation(line: 831, column: 24, scope: !3915)
!3918 = !DILocation(line: 831, column: 16, scope: !3915)
!3919 = !DILocation(line: 831, column: 2, scope: !3912)
!3920 = !DILocation(line: 832, column: 7, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3922, file: !3, line: 832, column: 7)
!3922 = distinct !DILexicalBlock(scope: !3915, file: !3, line: 831, column: 42)
!3923 = !DILocation(line: 832, column: 9, scope: !3921)
!3924 = !DILocation(line: 832, column: 13, scope: !3921)
!3925 = !DILocation(line: 832, column: 16, scope: !3921)
!3926 = !DILocation(line: 832, column: 22, scope: !3921)
!3927 = !DILocation(line: 832, column: 29, scope: !3921)
!3928 = !DILocation(line: 832, column: 32, scope: !3921)
!3929 = !DILocation(line: 833, column: 7, scope: !3921)
!3930 = !DILocation(line: 833, column: 18, scope: !3921)
!3931 = !DILocation(line: 833, column: 30, scope: !3921)
!3932 = !DILocation(line: 833, column: 34, scope: !3921)
!3933 = !DILocation(line: 833, column: 44, scope: !3921)
!3934 = !DILocation(line: 832, column: 47, scope: !3921)
!3935 = !DILocation(line: 832, column: 7, scope: !3922)
!3936 = !DILocation(line: 834, column: 4, scope: !3921)
!3937 = !DILocation(line: 836, column: 42, scope: !3922)
!3938 = !DILocation(line: 836, column: 3, scope: !3922)
!3939 = !DILocation(line: 836, column: 14, scope: !3922)
!3940 = !DILocation(line: 836, column: 28, scope: !3922)
!3941 = !DILocation(line: 836, column: 40, scope: !3922)
!3942 = !DILocation(line: 838, column: 7, scope: !3922)
!3943 = !DILocation(line: 838, column: 13, scope: !3922)
!3944 = !DILocation(line: 838, column: 20, scope: !3922)
!3945 = !DILocation(line: 838, column: 23, scope: !3922)
!3946 = !DILocation(line: 838, column: 38, scope: !3922)
!3947 = !DILocation(line: 837, column: 3, scope: !3922)
!3948 = !DILocation(line: 837, column: 14, scope: !3922)
!3949 = !DILocation(line: 837, column: 28, scope: !3922)
!3950 = !DILocation(line: 837, column: 38, scope: !3922)
!3951 = !DILocation(line: 839, column: 15, scope: !3922)
!3952 = !DILocation(line: 840, column: 2, scope: !3922)
!3953 = !DILocation(line: 831, column: 38, scope: !3915)
!3954 = !DILocation(line: 831, column: 2, scope: !3915)
!3955 = distinct !{!3955, !3919, !3956, !3562, !3563}
!3956 = !DILocation(line: 840, column: 2, scope: !3912)
!3957 = !DILocation(line: 841, column: 2, scope: !3322)
!3958 = !DILocation(line: 841, column: 13, scope: !3322)
!3959 = !DILocation(line: 841, column: 27, scope: !3322)
!3960 = !DILocation(line: 841, column: 37, scope: !3322)
!3961 = !DILocation(line: 843, column: 40, scope: !3322)
!3962 = !DILocation(line: 843, column: 20, scope: !3322)
!3963 = !DILocation(line: 843, column: 18, scope: !3322)
!3964 = !DILocation(line: 844, column: 6, scope: !3391)
!3965 = !DILocation(line: 844, column: 6, scope: !3322)
!3966 = !DILocation(line: 845, column: 3, scope: !3390)
!3967 = !DILocation(line: 845, column: 16, scope: !3390)
!3968 = !DILocation(line: 845, column: 23, scope: !3390)
!3969 = !DILocation(line: 854, column: 8, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 854, column: 7)
!3971 = !DILocation(line: 854, column: 7, scope: !3390)
!3972 = !DILocation(line: 855, column: 11, scope: !3970)
!3973 = !DILocation(line: 855, column: 25, scope: !3970)
!3974 = !DILocation(line: 855, column: 9, scope: !3970)
!3975 = !DILocation(line: 855, column: 4, scope: !3970)
!3976 = !DILocation(line: 857, column: 30, scope: !3390)
!3977 = !DILocation(line: 857, column: 37, scope: !3390)
!3978 = !DILocation(line: 857, column: 35, scope: !3390)
!3979 = !DILocation(line: 857, column: 53, scope: !3390)
!3980 = !DILocation(line: 857, column: 3, scope: !3390)
!3981 = !DILocation(line: 857, column: 11, scope: !3390)
!3982 = !DILocation(line: 857, column: 19, scope: !3390)
!3983 = !DILocation(line: 857, column: 28, scope: !3390)
!3984 = !DILocation(line: 858, column: 2, scope: !3391)
!3985 = !DILocation(line: 858, column: 2, scope: !3390)
!3986 = !DILocation(line: 865, column: 3, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 858, column: 9)
!3988 = !DILocation(line: 868, column: 23, scope: !3322)
!3989 = !DILocation(line: 868, column: 2, scope: !3322)
!3990 = !DILocation(line: 868, column: 10, scope: !3322)
!3991 = !DILocation(line: 868, column: 21, scope: !3322)
!3992 = !DILocation(line: 869, column: 2, scope: !3322)
!3993 = !DILocation(line: 869, column: 8, scope: !3322)
!3994 = !DILocation(line: 869, column: 14, scope: !3322)
!3995 = !DILocation(line: 871, column: 10, scope: !3322)
!3996 = !DILocation(line: 871, column: 16, scope: !3322)
!3997 = !DILocation(line: 871, column: 33, scope: !3322)
!3998 = !DILocation(line: 871, column: 2, scope: !3322)
!3999 = !DILocation(line: 879, column: 41, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 871, column: 43)
!4001 = !DILocation(line: 879, column: 47, scope: !4000)
!4002 = !DILocation(line: 879, column: 55, scope: !4000)
!4003 = !DILocation(line: 879, column: 17, scope: !4000)
!4004 = !DILocation(line: 879, column: 3, scope: !4000)
!4005 = !DILocation(line: 879, column: 11, scope: !4000)
!4006 = !DILocation(line: 879, column: 15, scope: !4000)
!4007 = !DILocation(line: 880, column: 3, scope: !4000)
!4008 = !DILocation(line: 882, column: 27, scope: !4000)
!4009 = !DILocation(line: 883, column: 3, scope: !4000)
!4010 = !DILocation(line: 885, column: 3, scope: !4000)
!4011 = !DILocation(line: 889, column: 2, scope: !3322)
!4012 = !DILocation(line: 891, column: 2, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !3, line: 891, column: 2)
!4014 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 891, column: 2)
!4015 = !DILocation(line: 891, column: 2, scope: !4014)
!4016 = !DILocation(line: 892, column: 9, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 892, column: 2)
!4018 = !DILocation(line: 892, column: 7, scope: !4017)
!4019 = !DILocation(line: 892, column: 14, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 892, column: 2)
!4021 = !DILocation(line: 892, column: 18, scope: !4020)
!4022 = !DILocation(line: 892, column: 24, scope: !4020)
!4023 = !DILocation(line: 892, column: 16, scope: !4020)
!4024 = !DILocation(line: 892, column: 2, scope: !4017)
!4025 = !DILocation(line: 893, column: 3, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 893, column: 3)
!4027 = distinct !DILexicalBlock(scope: !4020, file: !3, line: 893, column: 3)
!4028 = !DILocation(line: 893, column: 3, scope: !4027)
!4029 = !DILocation(line: 893, column: 3, scope: !4020)
!4030 = !DILocation(line: 892, column: 38, scope: !4020)
!4031 = !DILocation(line: 892, column: 2, scope: !4020)
!4032 = distinct !{!4032, !4024, !4033, !3562, !3563}
!4033 = !DILocation(line: 893, column: 3, scope: !4017)
!4034 = !DILocation(line: 903, column: 2, scope: !3322)
!4035 = !DILocation(line: 903, column: 8, scope: !3322)
!4036 = !DILocation(line: 903, column: 15, scope: !3322)
!4037 = !DILocation(line: 905, column: 34, scope: !3322)
!4038 = !DILocation(line: 905, column: 53, scope: !3322)
!4039 = !DILocation(line: 906, column: 22, scope: !3322)
!4040 = !DILocation(line: 906, column: 5, scope: !3322)
!4041 = !DILocation(line: 906, column: 30, scope: !3322)
!4042 = !DILocation(line: 906, column: 33, scope: !3322)
!4043 = !DILocation(line: 906, column: 41, scope: !3322)
!4044 = !DILocation(line: 906, column: 53, scope: !3322)
!4045 = !DILocation(line: 0, scope: !3322)
!4046 = !DILocation(line: 906, column: 3, scope: !3322)
!4047 = !DILocation(line: 905, column: 2, scope: !3322)
!4048 = !DILocation(line: 905, column: 10, scope: !3322)
!4049 = !DILocation(line: 905, column: 31, scope: !3322)
!4050 = !DILocation(line: 908, column: 6, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 908, column: 6)
!4052 = !DILocation(line: 908, column: 12, scope: !4051)
!4053 = !DILocation(line: 908, column: 22, scope: !4051)
!4054 = !DILocation(line: 908, column: 37, scope: !4051)
!4055 = !DILocation(line: 908, column: 47, scope: !4051)
!4056 = !DILocation(line: 908, column: 61, scope: !4051)
!4057 = !DILocation(line: 908, column: 44, scope: !4051)
!4058 = !DILocation(line: 908, column: 6, scope: !3322)
!4059 = !DILocation(line: 909, column: 3, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4051, file: !3, line: 909, column: 3)
!4061 = !DILocation(line: 909, column: 3, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 909, column: 3)
!4063 = !DILocation(line: 909, column: 3, scope: !4051)
!4064 = !DILocation(line: 911, column: 26, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 911, column: 6)
!4066 = !DILocation(line: 911, column: 6, scope: !4065)
!4067 = !DILocation(line: 911, column: 6, scope: !3322)
!4068 = !DILocation(line: 912, column: 13, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 911, column: 37)
!4070 = !DILocation(line: 912, column: 41, scope: !4069)
!4071 = !DILocation(line: 912, column: 21, scope: !4069)
!4072 = !DILocation(line: 912, column: 3, scope: !4069)
!4073 = !DILocation(line: 913, column: 47, scope: !4069)
!4074 = !DILocation(line: 913, column: 3, scope: !4069)
!4075 = !DILocation(line: 913, column: 11, scope: !4069)
!4076 = !DILocation(line: 913, column: 25, scope: !4069)
!4077 = !DILocation(line: 914, column: 2, scope: !4069)
!4078 = !DILocation(line: 916, column: 9, scope: !3322)
!4079 = !DILocation(line: 916, column: 2, scope: !3322)
!4080 = !DILocation(line: 918, column: 1, scope: !3322)
!4081 = !DILocation(line: 919, column: 40, scope: !3322)
!4082 = !DILocation(line: 919, column: 2, scope: !3322)
!4083 = !DILocation(line: 920, column: 1, scope: !3322)
!4084 = !DILocation(line: 921, column: 19, scope: !3322)
!4085 = !DILocation(line: 921, column: 25, scope: !3322)
!4086 = !DILocation(line: 921, column: 2, scope: !3322)
!4087 = !DILocation(line: 922, column: 1, scope: !3322)
!4088 = !DILocation(line: 923, column: 8, scope: !3322)
!4089 = !DILocation(line: 923, column: 2, scope: !3322)
!4090 = !DILocation(line: 924, column: 2, scope: !3322)
!4091 = !DILocation(line: 924, column: 10, scope: !3322)
!4092 = !DILocation(line: 924, column: 22, scope: !3322)
!4093 = !DILocation(line: 926, column: 9, scope: !3322)
!4094 = !DILocation(line: 926, column: 2, scope: !3322)
!4095 = !DILocation(line: 927, column: 1, scope: !3322)
!4096 = distinct !DISubprogram(name: "acpi_cpufreq_target", scope: !3, file: !3, line: 415, type: !2116, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4097)
!4097 = !{!4098, !4099, !4100, !4101, !4102, !4103, !4104}
!4098 = !DILocalVariable(name: "policy", arg: 1, scope: !4096, file: !3, line: 415, type: !2073)
!4099 = !DILocalVariable(name: "index", arg: 2, scope: !4096, file: !3, line: 416, type: !7)
!4100 = !DILocalVariable(name: "data", scope: !4096, file: !3, line: 418, type: !3328)
!4101 = !DILocalVariable(name: "perf", scope: !4096, file: !3, line: 419, type: !1256)
!4102 = !DILocalVariable(name: "mask", scope: !4096, file: !3, line: 420, type: !1311)
!4103 = !DILocalVariable(name: "next_perf_state", scope: !4096, file: !3, line: 421, type: !7)
!4104 = !DILocalVariable(name: "result", scope: !4096, file: !3, line: 422, type: !46)
!4105 = !DILocation(line: 415, column: 55, scope: !4096)
!4106 = !DILocation(line: 416, column: 24, scope: !4096)
!4107 = !DILocation(line: 418, column: 2, scope: !4096)
!4108 = !DILocation(line: 418, column: 28, scope: !4096)
!4109 = !DILocation(line: 418, column: 35, scope: !4096)
!4110 = !DILocation(line: 418, column: 43, scope: !4096)
!4111 = !DILocation(line: 419, column: 2, scope: !4096)
!4112 = !DILocation(line: 419, column: 37, scope: !4096)
!4113 = !DILocation(line: 420, column: 2, scope: !4096)
!4114 = !DILocation(line: 420, column: 24, scope: !4096)
!4115 = !DILocation(line: 421, column: 2, scope: !4096)
!4116 = !DILocation(line: 421, column: 15, scope: !4096)
!4117 = !DILocation(line: 422, column: 2, scope: !4096)
!4118 = !DILocation(line: 422, column: 6, scope: !4096)
!4119 = !DILocation(line: 424, column: 6, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 424, column: 6)
!4121 = !DILocation(line: 424, column: 6, scope: !4096)
!4122 = !DILocation(line: 425, column: 3, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 424, column: 23)
!4124 = !DILocation(line: 428, column: 22, scope: !4096)
!4125 = !DILocation(line: 428, column: 9, scope: !4096)
!4126 = !DILocation(line: 428, column: 7, scope: !4096)
!4127 = !DILocation(line: 429, column: 20, scope: !4096)
!4128 = !DILocation(line: 429, column: 28, scope: !4096)
!4129 = !DILocation(line: 429, column: 39, scope: !4096)
!4130 = !DILocation(line: 429, column: 46, scope: !4096)
!4131 = !DILocation(line: 429, column: 18, scope: !4096)
!4132 = !DILocation(line: 430, column: 6, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 430, column: 6)
!4134 = !DILocation(line: 430, column: 12, scope: !4133)
!4135 = !DILocation(line: 430, column: 21, scope: !4133)
!4136 = !DILocation(line: 430, column: 18, scope: !4133)
!4137 = !DILocation(line: 430, column: 6, scope: !4096)
!4138 = !DILocation(line: 431, column: 7, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 431, column: 7)
!4140 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 430, column: 38)
!4141 = !DILocation(line: 431, column: 7, scope: !4140)
!4142 = !DILocation(line: 432, column: 4, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4144, file: !3, line: 432, column: 4)
!4144 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 432, column: 4)
!4145 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 431, column: 31)
!4146 = !DILocation(line: 432, column: 4, scope: !4144)
!4147 = !DILocation(line: 434, column: 4, scope: !4145)
!4148 = !DILocation(line: 434, column: 10, scope: !4145)
!4149 = !DILocation(line: 434, column: 17, scope: !4145)
!4150 = !DILocation(line: 435, column: 3, scope: !4145)
!4151 = !DILocation(line: 436, column: 4, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 436, column: 4)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 436, column: 4)
!4154 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 435, column: 10)
!4155 = !DILocation(line: 436, column: 4, scope: !4153)
!4156 = !DILocation(line: 438, column: 4, scope: !4154)
!4157 = !DILocation(line: 440, column: 2, scope: !4140)
!4158 = !DILocation(line: 446, column: 9, scope: !4096)
!4159 = !DILocation(line: 446, column: 17, scope: !4096)
!4160 = !DILocation(line: 446, column: 29, scope: !4096)
!4161 = !DILocation(line: 447, column: 3, scope: !4096)
!4162 = !DILocation(line: 447, column: 29, scope: !4096)
!4163 = !DILocation(line: 447, column: 37, scope: !4096)
!4164 = !DILocation(line: 446, column: 7, scope: !4096)
!4165 = !DILocation(line: 449, column: 12, scope: !4096)
!4166 = !DILocation(line: 449, column: 18, scope: !4096)
!4167 = !DILocation(line: 449, column: 24, scope: !4096)
!4168 = !DILocation(line: 449, column: 30, scope: !4096)
!4169 = !DILocation(line: 449, column: 37, scope: !4096)
!4170 = !DILocation(line: 449, column: 54, scope: !4096)
!4171 = !DILocation(line: 449, column: 2, scope: !4096)
!4172 = !DILocation(line: 451, column: 6, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 451, column: 6)
!4174 = !DILocation(line: 451, column: 6, scope: !4096)
!4175 = !DILocation(line: 452, column: 20, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4177, file: !3, line: 452, column: 7)
!4177 = distinct !DILexicalBlock(scope: !4173, file: !3, line: 451, column: 26)
!4178 = !DILocation(line: 452, column: 28, scope: !4176)
!4179 = !DILocation(line: 453, column: 6, scope: !4176)
!4180 = !DILocation(line: 453, column: 14, scope: !4176)
!4181 = !DILocation(line: 453, column: 25, scope: !4176)
!4182 = !DILocation(line: 453, column: 32, scope: !4176)
!4183 = !DILocation(line: 452, column: 8, scope: !4176)
!4184 = !DILocation(line: 452, column: 7, scope: !4177)
!4185 = !DILocation(line: 454, column: 4, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 454, column: 4)
!4187 = distinct !DILexicalBlock(scope: !4188, file: !3, line: 454, column: 4)
!4188 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 453, column: 44)
!4189 = !DILocation(line: 454, column: 4, scope: !4187)
!4190 = !DILocation(line: 455, column: 11, scope: !4188)
!4191 = !DILocation(line: 456, column: 3, scope: !4188)
!4192 = !DILocation(line: 457, column: 2, scope: !4177)
!4193 = !DILocation(line: 459, column: 7, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 459, column: 6)
!4195 = !DILocation(line: 459, column: 6, scope: !4096)
!4196 = !DILocation(line: 460, column: 17, scope: !4194)
!4197 = !DILocation(line: 460, column: 3, scope: !4194)
!4198 = !DILocation(line: 460, column: 9, scope: !4194)
!4199 = !DILocation(line: 460, column: 15, scope: !4194)
!4200 = !DILocation(line: 462, column: 9, scope: !4096)
!4201 = !DILocation(line: 462, column: 2, scope: !4096)
!4202 = !DILocation(line: 463, column: 1, scope: !4096)
!4203 = distinct !DISubprogram(name: "acpi_cpufreq_fast_switch", scope: !3, file: !3, line: 465, type: !3277, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4204)
!4204 = !{!4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212}
!4205 = !DILocalVariable(name: "policy", arg: 1, scope: !4203, file: !3, line: 465, type: !2073)
!4206 = !DILocalVariable(name: "target_freq", arg: 2, scope: !4203, file: !3, line: 466, type: !7)
!4207 = !DILocalVariable(name: "data", scope: !4203, file: !3, line: 468, type: !3328)
!4208 = !DILocalVariable(name: "perf", scope: !4203, file: !3, line: 469, type: !1256)
!4209 = !DILocalVariable(name: "entry", scope: !4203, file: !3, line: 470, type: !2129)
!4210 = !DILocalVariable(name: "next_perf_state", scope: !4203, file: !3, line: 471, type: !7)
!4211 = !DILocalVariable(name: "next_freq", scope: !4203, file: !3, line: 471, type: !7)
!4212 = !DILocalVariable(name: "index", scope: !4203, file: !3, line: 471, type: !7)
!4213 = !DILocation(line: 465, column: 69, scope: !4203)
!4214 = !DILocation(line: 466, column: 24, scope: !4203)
!4215 = !DILocation(line: 468, column: 2, scope: !4203)
!4216 = !DILocation(line: 468, column: 28, scope: !4203)
!4217 = !DILocation(line: 468, column: 35, scope: !4203)
!4218 = !DILocation(line: 468, column: 43, scope: !4203)
!4219 = !DILocation(line: 469, column: 2, scope: !4203)
!4220 = !DILocation(line: 469, column: 37, scope: !4203)
!4221 = !DILocation(line: 470, column: 2, scope: !4203)
!4222 = !DILocation(line: 470, column: 34, scope: !4203)
!4223 = !DILocation(line: 471, column: 2, scope: !4203)
!4224 = !DILocation(line: 471, column: 15, scope: !4203)
!4225 = !DILocation(line: 471, column: 32, scope: !4203)
!4226 = !DILocation(line: 471, column: 43, scope: !4203)
!4227 = !DILocation(line: 476, column: 6, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 476, column: 6)
!4229 = !DILocation(line: 476, column: 14, scope: !4228)
!4230 = !DILocation(line: 476, column: 36, scope: !4228)
!4231 = !DILocation(line: 476, column: 33, scope: !4228)
!4232 = !DILocation(line: 476, column: 6, scope: !4203)
!4233 = !DILocation(line: 477, column: 11, scope: !4228)
!4234 = !DILocation(line: 477, column: 19, scope: !4228)
!4235 = !DILocation(line: 477, column: 9, scope: !4228)
!4236 = !DILocation(line: 477, column: 3, scope: !4228)
!4237 = !DILocation(line: 479, column: 39, scope: !4228)
!4238 = !DILocation(line: 479, column: 47, scope: !4228)
!4239 = !DILocation(line: 479, column: 11, scope: !4228)
!4240 = !DILocation(line: 479, column: 9, scope: !4228)
!4241 = !DILocation(line: 482, column: 11, scope: !4203)
!4242 = !DILocation(line: 482, column: 19, scope: !4203)
!4243 = !DILocation(line: 482, column: 30, scope: !4203)
!4244 = !DILocation(line: 482, column: 8, scope: !4203)
!4245 = !DILocation(line: 483, column: 14, scope: !4203)
!4246 = !DILocation(line: 483, column: 21, scope: !4203)
!4247 = !DILocation(line: 483, column: 12, scope: !4203)
!4248 = !DILocation(line: 484, column: 20, scope: !4203)
!4249 = !DILocation(line: 484, column: 27, scope: !4203)
!4250 = !DILocation(line: 484, column: 18, scope: !4203)
!4251 = !DILocation(line: 486, column: 22, scope: !4203)
!4252 = !DILocation(line: 486, column: 9, scope: !4203)
!4253 = !DILocation(line: 486, column: 7, scope: !4203)
!4254 = !DILocation(line: 487, column: 6, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 487, column: 6)
!4256 = !DILocation(line: 487, column: 12, scope: !4255)
!4257 = !DILocation(line: 487, column: 21, scope: !4255)
!4258 = !DILocation(line: 487, column: 18, scope: !4255)
!4259 = !DILocation(line: 487, column: 6, scope: !4203)
!4260 = !DILocation(line: 488, column: 7, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 488, column: 7)
!4262 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 487, column: 38)
!4263 = !DILocation(line: 488, column: 7, scope: !4262)
!4264 = !DILocation(line: 489, column: 4, scope: !4261)
!4265 = !DILocation(line: 489, column: 10, scope: !4261)
!4266 = !DILocation(line: 489, column: 17, scope: !4261)
!4267 = !DILocation(line: 491, column: 11, scope: !4261)
!4268 = !DILocation(line: 491, column: 4, scope: !4261)
!4269 = !DILocation(line: 492, column: 2, scope: !4262)
!4270 = !DILocation(line: 494, column: 2, scope: !4203)
!4271 = !DILocation(line: 494, column: 8, scope: !4203)
!4272 = !DILocation(line: 494, column: 24, scope: !4203)
!4273 = !DILocation(line: 494, column: 30, scope: !4203)
!4274 = !DILocation(line: 495, column: 9, scope: !4203)
!4275 = !DILocation(line: 495, column: 15, scope: !4203)
!4276 = !DILocation(line: 495, column: 22, scope: !4203)
!4277 = !DILocation(line: 495, column: 39, scope: !4203)
!4278 = !DILocation(line: 496, column: 16, scope: !4203)
!4279 = !DILocation(line: 496, column: 2, scope: !4203)
!4280 = !DILocation(line: 496, column: 8, scope: !4203)
!4281 = !DILocation(line: 496, column: 14, scope: !4203)
!4282 = !DILocation(line: 497, column: 9, scope: !4203)
!4283 = !DILocation(line: 497, column: 2, scope: !4203)
!4284 = !DILocation(line: 498, column: 1, scope: !4203)
!4285 = distinct !DISubprogram(name: "acpi_cpufreq_cpu_exit", scope: !3, file: !3, line: 929, type: !2071, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4286)
!4286 = !{!4287, !4288}
!4287 = !DILocalVariable(name: "policy", arg: 1, scope: !4285, file: !3, line: 929, type: !2073)
!4288 = !DILocalVariable(name: "data", scope: !4285, file: !3, line: 931, type: !3328)
!4289 = !DILocation(line: 929, column: 57, scope: !4285)
!4290 = !DILocation(line: 931, column: 2, scope: !4285)
!4291 = !DILocation(line: 931, column: 28, scope: !4285)
!4292 = !DILocation(line: 931, column: 35, scope: !4285)
!4293 = !DILocation(line: 931, column: 43, scope: !4285)
!4294 = !DILocation(line: 933, column: 2, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 933, column: 2)
!4296 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 933, column: 2)
!4297 = !DILocation(line: 933, column: 2, scope: !4296)
!4298 = !DILocation(line: 935, column: 26, scope: !4285)
!4299 = !DILocation(line: 935, column: 34, scope: !4285)
!4300 = !DILocation(line: 935, column: 2, scope: !4285)
!4301 = !DILocation(line: 936, column: 2, scope: !4285)
!4302 = !DILocation(line: 936, column: 10, scope: !4285)
!4303 = !DILocation(line: 936, column: 31, scope: !4285)
!4304 = !DILocation(line: 937, column: 2, scope: !4285)
!4305 = !DILocation(line: 937, column: 10, scope: !4285)
!4306 = !DILocation(line: 937, column: 22, scope: !4285)
!4307 = !DILocation(line: 938, column: 40, scope: !4285)
!4308 = !DILocation(line: 938, column: 46, scope: !4285)
!4309 = !DILocation(line: 938, column: 2, scope: !4285)
!4310 = !DILocation(line: 939, column: 19, scope: !4285)
!4311 = !DILocation(line: 939, column: 25, scope: !4285)
!4312 = !DILocation(line: 939, column: 2, scope: !4285)
!4313 = !DILocation(line: 940, column: 8, scope: !4285)
!4314 = !DILocation(line: 940, column: 16, scope: !4285)
!4315 = !DILocation(line: 940, column: 2, scope: !4285)
!4316 = !DILocation(line: 941, column: 8, scope: !4285)
!4317 = !DILocation(line: 941, column: 2, scope: !4285)
!4318 = !DILocation(line: 944, column: 1, scope: !4285)
!4319 = !DILocation(line: 943, column: 2, scope: !4285)
!4320 = distinct !DISubprogram(name: "acpi_cpufreq_resume", scope: !3, file: !3, line: 946, type: !2071, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4321)
!4321 = !{!4322, !4323}
!4322 = !DILocalVariable(name: "policy", arg: 1, scope: !4320, file: !3, line: 946, type: !2073)
!4323 = !DILocalVariable(name: "data", scope: !4320, file: !3, line: 948, type: !3328)
!4324 = !DILocation(line: 946, column: 55, scope: !4320)
!4325 = !DILocation(line: 948, column: 2, scope: !4320)
!4326 = !DILocation(line: 948, column: 28, scope: !4320)
!4327 = !DILocation(line: 948, column: 35, scope: !4320)
!4328 = !DILocation(line: 948, column: 43, scope: !4320)
!4329 = !DILocation(line: 950, column: 2, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 950, column: 2)
!4331 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 950, column: 2)
!4332 = !DILocation(line: 950, column: 2, scope: !4331)
!4333 = !DILocation(line: 952, column: 2, scope: !4320)
!4334 = !DILocation(line: 952, column: 8, scope: !4320)
!4335 = !DILocation(line: 952, column: 15, scope: !4320)
!4336 = !DILocation(line: 955, column: 1, scope: !4320)
!4337 = !DILocation(line: 954, column: 2, scope: !4320)
!4338 = distinct !DISubprogram(name: "acpi_cpufreq_blacklist", scope: !3, file: !3, line: 611, type: !4339, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4341)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!46, !1191}
!4341 = !{!4342}
!4342 = !DILocalVariable(name: "c", arg: 1, scope: !4338, file: !3, line: 611, type: !1191)
!4343 = !DILocation(line: 611, column: 55, scope: !4338)
!4344 = !DILocation(line: 618, column: 6, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4338, file: !3, line: 618, column: 6)
!4346 = !DILocation(line: 618, column: 9, scope: !4345)
!4347 = !DILocation(line: 618, column: 20, scope: !4345)
!4348 = !DILocation(line: 618, column: 6, scope: !4338)
!4349 = !DILocation(line: 619, column: 8, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 619, column: 7)
!4351 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 618, column: 41)
!4352 = !DILocation(line: 619, column: 11, scope: !4350)
!4353 = !DILocation(line: 619, column: 15, scope: !4350)
!4354 = !DILocation(line: 619, column: 22, scope: !4350)
!4355 = !DILocation(line: 620, column: 8, scope: !4350)
!4356 = !DILocation(line: 620, column: 11, scope: !4350)
!4357 = !DILocation(line: 620, column: 21, scope: !4350)
!4358 = !DILocation(line: 620, column: 27, scope: !4350)
!4359 = !DILocation(line: 621, column: 8, scope: !4350)
!4360 = !DILocation(line: 621, column: 11, scope: !4350)
!4361 = !DILocation(line: 621, column: 24, scope: !4350)
!4362 = !DILocation(line: 619, column: 7, scope: !4351)
!4363 = !DILocation(line: 622, column: 4, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 622, column: 4)
!4365 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 621, column: 31)
!4366 = !DILocation(line: 622, column: 4, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 622, column: 4)
!4368 = !DILocation(line: 623, column: 4, scope: !4365)
!4369 = !DILocation(line: 625, column: 3, scope: !4351)
!4370 = !DILocation(line: 626, column: 2, scope: !4338)
!4371 = !DILocation(line: 627, column: 1, scope: !4338)
!4372 = distinct !DISubprogram(name: "kzalloc", scope: !132, file: !132, line: 719, type: !4373, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4375)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!319, !294, !1255}
!4375 = !{!4376, !4377}
!4376 = !DILocalVariable(name: "size", arg: 1, scope: !4372, file: !132, line: 719, type: !294)
!4377 = !DILocalVariable(name: "flags", arg: 2, scope: !4372, file: !132, line: 719, type: !1255)
!4378 = !DILocation(line: 719, column: 52, scope: !4372)
!4379 = !DILocation(line: 719, column: 64, scope: !4372)
!4380 = !DILocation(line: 721, column: 17, scope: !4372)
!4381 = !DILocation(line: 721, column: 23, scope: !4372)
!4382 = !DILocation(line: 721, column: 29, scope: !4372)
!4383 = !DILocation(line: 721, column: 9, scope: !4372)
!4384 = !DILocation(line: 721, column: 2, scope: !4372)
!4385 = distinct !DISubprogram(name: "zalloc_cpumask_var", scope: !1294, file: !1294, line: 929, type: !4386, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4388)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!604, !1303, !1255}
!4388 = !{!4389, !4390}
!4389 = !DILocalVariable(name: "mask", arg: 1, scope: !4385, file: !1294, line: 929, type: !1303)
!4390 = !DILocalVariable(name: "flags", arg: 2, scope: !4385, file: !1294, line: 929, type: !1255)
!4391 = !DILocation(line: 929, column: 54, scope: !4385)
!4392 = !DILocation(line: 929, column: 66, scope: !4385)
!4393 = !DILocation(line: 931, column: 17, scope: !4385)
!4394 = !DILocation(line: 931, column: 16, scope: !4385)
!4395 = !DILocation(line: 931, column: 2, scope: !4385)
!4396 = !DILocation(line: 932, column: 2, scope: !4385)
!4397 = distinct !DISubprogram(name: "arch_test_bit", scope: !4398, file: !4398, line: 237, type: !4399, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4404)
!4398 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!604, !297, !4401}
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4403)
!4403 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !297)
!4404 = !{!4405, !4406}
!4405 = !DILocalVariable(name: "nr", arg: 1, scope: !4397, file: !4398, line: 237, type: !297)
!4406 = !DILocalVariable(name: "addr", arg: 2, scope: !4397, file: !4398, line: 237, type: !4401)
!4407 = !DILocation(line: 237, column: 29, scope: !4397)
!4408 = !DILocation(line: 237, column: 63, scope: !4397)
!4409 = !DILocation(line: 239, column: 30, scope: !4397)
!4410 = !DILocation(line: 239, column: 9, scope: !4397)
!4411 = !DILocation(line: 239, column: 54, scope: !4397)
!4412 = !DILocation(line: 239, column: 58, scope: !4397)
!4413 = !DILocation(line: 239, column: 36, scope: !4397)
!4414 = !DILocation(line: 240, column: 26, scope: !4397)
!4415 = !DILocation(line: 240, column: 30, scope: !4397)
!4416 = !DILocation(line: 240, column: 8, scope: !4397)
!4417 = !DILocation(line: 239, column: 2, scope: !4397)
!4418 = !DISubprogram(name: "acpi_processor_register_performance", scope: !1258, file: !1258, line: 258, type: !4419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!46, !1256, !7}
!4421 = distinct !DISubprogram(name: "cpumask_copy", scope: !1294, file: !1294, line: 737, type: !4422, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4424)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{null, !1310, !1311}
!4424 = !{!4425, !4426}
!4425 = !DILocalVariable(name: "dstp", arg: 1, scope: !4421, file: !1294, line: 737, type: !1310)
!4426 = !DILocalVariable(name: "srcp", arg: 2, scope: !4421, file: !1294, line: 738, type: !1311)
!4427 = !DILocation(line: 737, column: 49, scope: !4421)
!4428 = !DILocation(line: 738, column: 27, scope: !4421)
!4429 = !DILocation(line: 740, column: 14, scope: !4421)
!4430 = !DILocation(line: 740, column: 34, scope: !4421)
!4431 = !DILocation(line: 740, column: 2, scope: !4421)
!4432 = !DILocation(line: 741, column: 1, scope: !4421)
!4433 = !DISubprogram(name: "dmi_check_system", scope: !4434, file: !4434, line: 100, type: !3432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4434 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!4435 = distinct !DISubprogram(name: "policy_is_shared", scope: !102, file: !102, line: 218, type: !4436, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4438)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!604, !2073}
!4438 = !{!4439}
!4439 = !DILocalVariable(name: "policy", arg: 1, scope: !4435, file: !102, line: 218, type: !2073)
!4440 = !DILocation(line: 218, column: 60, scope: !4435)
!4441 = !DILocation(line: 220, column: 24, scope: !4435)
!4442 = !DILocation(line: 220, column: 32, scope: !4435)
!4443 = !DILocation(line: 220, column: 9, scope: !4435)
!4444 = !DILocation(line: 220, column: 38, scope: !4435)
!4445 = !DILocation(line: 220, column: 2, scope: !4435)
!4446 = distinct !DISubprogram(name: "check_amd_hwpstate_cpu", scope: !3, file: !3, line: 194, type: !4447, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4449)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!46, !7}
!4449 = !{!4450, !4451, !4452, !4455}
!4450 = !DILocalVariable(name: "cpuid", arg: 1, scope: !4446, file: !3, line: 194, type: !7)
!4451 = !DILocalVariable(name: "cpu", scope: !4446, file: !3, line: 196, type: !1191)
!4452 = !DILocalVariable(name: "__vpp_verify", scope: !4453, file: !3, line: 196, type: !526)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 196, column: 29)
!4454 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 196, column: 29)
!4455 = !DILocalVariable(name: "__ptr", scope: !4456, file: !3, line: 196, type: !297)
!4456 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 196, column: 29)
!4457 = !DILocation(line: 194, column: 48, scope: !4446)
!4458 = !DILocation(line: 196, column: 2, scope: !4446)
!4459 = !DILocation(line: 196, column: 22, scope: !4446)
!4460 = !DILocation(line: 196, column: 29, scope: !4454)
!4461 = !DILocation(line: 196, column: 29, scope: !4453)
!4462 = !DILocation(line: 196, column: 29, scope: !4456)
!4463 = !DILocation(line: 198, column: 9, scope: !4446)
!4464 = !DILocation(line: 199, column: 1, scope: !4446)
!4465 = !DILocation(line: 198, column: 2, scope: !4446)
!4466 = distinct !DISubprogram(name: "cpumask_clear", scope: !1294, file: !1294, line: 552, type: !4467, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4469)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{null, !1310}
!4469 = !{!4470}
!4470 = !DILocalVariable(name: "dstp", arg: 1, scope: !4466, file: !1294, line: 552, type: !1310)
!4471 = !DILocation(line: 552, column: 50, scope: !4466)
!4472 = !DILocation(line: 554, column: 14, scope: !4466)
!4473 = !DILocation(line: 554, column: 2, scope: !4466)
!4474 = !DILocation(line: 555, column: 1, scope: !4466)
!4475 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !1294, file: !1294, line: 469, type: !4476, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4478)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{null, !7, !1310}
!4478 = !{!4479, !4480}
!4479 = !DILocalVariable(name: "cpu", arg: 1, scope: !4475, file: !1294, line: 469, type: !7)
!4480 = !DILocalVariable(name: "dstp", arg: 2, scope: !4475, file: !1294, line: 469, type: !1310)
!4481 = !DILocation(line: 469, column: 58, scope: !4475)
!4482 = !DILocation(line: 469, column: 79, scope: !4475)
!4483 = !DILocation(line: 471, column: 24, scope: !4475)
!4484 = !DILocation(line: 471, column: 10, scope: !4475)
!4485 = !DILocation(line: 471, column: 30, scope: !4475)
!4486 = !DILocation(line: 471, column: 2, scope: !4475)
!4487 = !DILocation(line: 472, column: 1, scope: !4475)
!4488 = !DISubprogram(name: "_printk", scope: !4489, file: !4489, line: 153, type: !4490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4489 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!46, !166, null}
!4492 = distinct !DISubprogram(name: "cpu_freq_read_io", scope: !3, file: !3, line: 282, type: !3342, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4493)
!4493 = !{!4494, !4495}
!4494 = !DILocalVariable(name: "reg", arg: 1, scope: !4492, file: !3, line: 282, type: !3339)
!4495 = !DILocalVariable(name: "val", scope: !4492, file: !3, line: 284, type: !1093)
!4496 = !DILocation(line: 282, column: 55, scope: !4492)
!4497 = !DILocation(line: 284, column: 2, scope: !4492)
!4498 = !DILocation(line: 284, column: 6, scope: !4492)
!4499 = !DILocation(line: 286, column: 20, scope: !4492)
!4500 = !DILocation(line: 286, column: 25, scope: !4492)
!4501 = !DILocation(line: 286, column: 40, scope: !4492)
!4502 = !DILocation(line: 286, column: 45, scope: !4492)
!4503 = !DILocation(line: 286, column: 2, scope: !4492)
!4504 = !DILocation(line: 287, column: 9, scope: !4492)
!4505 = !DILocation(line: 288, column: 1, scope: !4492)
!4506 = !DILocation(line: 287, column: 2, scope: !4492)
!4507 = distinct !DISubprogram(name: "cpu_freq_write_io", scope: !3, file: !3, line: 290, type: !3337, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4508)
!4508 = !{!4509, !4510}
!4509 = !DILocalVariable(name: "reg", arg: 1, scope: !4507, file: !3, line: 290, type: !3339)
!4510 = !DILocalVariable(name: "val", arg: 2, scope: !4507, file: !3, line: 290, type: !1093)
!4511 = !DILocation(line: 290, column: 57, scope: !4507)
!4512 = !DILocation(line: 290, column: 66, scope: !4507)
!4513 = !DILocation(line: 292, column: 21, scope: !4507)
!4514 = !DILocation(line: 292, column: 26, scope: !4507)
!4515 = !DILocation(line: 292, column: 35, scope: !4507)
!4516 = !DILocation(line: 292, column: 40, scope: !4507)
!4517 = !DILocation(line: 292, column: 45, scope: !4507)
!4518 = !DILocation(line: 292, column: 2, scope: !4507)
!4519 = !DILocation(line: 293, column: 1, scope: !4507)
!4520 = distinct !DISubprogram(name: "check_est_cpu", scope: !3, file: !3, line: 187, type: !4447, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4521)
!4521 = !{!4522, !4523, !4524, !4527}
!4522 = !DILocalVariable(name: "cpuid", arg: 1, scope: !4520, file: !3, line: 187, type: !7)
!4523 = !DILocalVariable(name: "cpu", scope: !4520, file: !3, line: 189, type: !1191)
!4524 = !DILocalVariable(name: "__vpp_verify", scope: !4525, file: !3, line: 189, type: !526)
!4525 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 189, column: 29)
!4526 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 189, column: 29)
!4527 = !DILocalVariable(name: "__ptr", scope: !4528, file: !3, line: 189, type: !297)
!4528 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 189, column: 29)
!4529 = !DILocation(line: 187, column: 39, scope: !4520)
!4530 = !DILocation(line: 189, column: 2, scope: !4520)
!4531 = !DILocation(line: 189, column: 22, scope: !4520)
!4532 = !DILocation(line: 189, column: 29, scope: !4526)
!4533 = !DILocation(line: 189, column: 29, scope: !4525)
!4534 = !DILocation(line: 189, column: 29, scope: !4528)
!4535 = !DILocation(line: 191, column: 9, scope: !4520)
!4536 = !DILocation(line: 192, column: 1, scope: !4520)
!4537 = !DILocation(line: 191, column: 2, scope: !4520)
!4538 = distinct !DISubprogram(name: "cpu_freq_read_intel", scope: !3, file: !3, line: 252, type: !3342, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4539)
!4539 = !{!4540, !4541, !4542, !4543}
!4540 = !DILocalVariable(name: "not_used", arg: 1, scope: !4538, file: !3, line: 252, type: !3339)
!4541 = !DILocalVariable(name: "val", scope: !4538, file: !3, line: 254, type: !1093)
!4542 = !DILocalVariable(name: "dummy", scope: !4538, file: !3, line: 254, type: !1093)
!4543 = !DILocalVariable(name: "__val", scope: !4544, file: !3, line: 256, type: !411)
!4544 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 256, column: 2)
!4545 = !DILocation(line: 252, column: 58, scope: !4538)
!4546 = !DILocation(line: 254, column: 2, scope: !4538)
!4547 = !DILocation(line: 254, column: 6, scope: !4538)
!4548 = !DILocation(line: 254, column: 11, scope: !4538)
!4549 = !DILocation(line: 256, column: 2, scope: !4538)
!4550 = !DILocation(line: 256, column: 2, scope: !4544)
!4551 = !DILocation(line: 257, column: 9, scope: !4538)
!4552 = !DILocation(line: 258, column: 1, scope: !4538)
!4553 = !DILocation(line: 257, column: 2, scope: !4538)
!4554 = distinct !DISubprogram(name: "cpu_freq_write_intel", scope: !3, file: !3, line: 260, type: !3337, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4555)
!4555 = !{!4556, !4557, !4558, !4559, !4560}
!4556 = !DILocalVariable(name: "not_used", arg: 1, scope: !4554, file: !3, line: 260, type: !3339)
!4557 = !DILocalVariable(name: "val", arg: 2, scope: !4554, file: !3, line: 260, type: !1093)
!4558 = !DILocalVariable(name: "lo", scope: !4554, file: !3, line: 262, type: !1093)
!4559 = !DILocalVariable(name: "hi", scope: !4554, file: !3, line: 262, type: !1093)
!4560 = !DILocalVariable(name: "__val", scope: !4561, file: !3, line: 264, type: !411)
!4561 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 264, column: 2)
!4562 = !DILocation(line: 260, column: 60, scope: !4554)
!4563 = !DILocation(line: 260, column: 74, scope: !4554)
!4564 = !DILocation(line: 262, column: 2, scope: !4554)
!4565 = !DILocation(line: 262, column: 6, scope: !4554)
!4566 = !DILocation(line: 262, column: 10, scope: !4554)
!4567 = !DILocation(line: 264, column: 2, scope: !4554)
!4568 = !DILocation(line: 264, column: 2, scope: !4561)
!4569 = !DILocation(line: 265, column: 8, scope: !4554)
!4570 = !DILocation(line: 265, column: 11, scope: !4554)
!4571 = !DILocation(line: 265, column: 34, scope: !4554)
!4572 = !DILocation(line: 265, column: 38, scope: !4554)
!4573 = !DILocation(line: 265, column: 31, scope: !4554)
!4574 = !DILocation(line: 265, column: 5, scope: !4554)
!4575 = !DILocation(line: 266, column: 27, scope: !4554)
!4576 = !DILocation(line: 266, column: 31, scope: !4554)
!4577 = !DILocation(line: 266, column: 2, scope: !4554)
!4578 = !DILocation(line: 267, column: 1, scope: !4554)
!4579 = distinct !DISubprogram(name: "cpu_freq_read_amd", scope: !3, file: !3, line: 269, type: !3342, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4580)
!4580 = !{!4581, !4582, !4583, !4584}
!4581 = !DILocalVariable(name: "not_used", arg: 1, scope: !4579, file: !3, line: 269, type: !3339)
!4582 = !DILocalVariable(name: "val", scope: !4579, file: !3, line: 271, type: !1093)
!4583 = !DILocalVariable(name: "dummy", scope: !4579, file: !3, line: 271, type: !1093)
!4584 = !DILocalVariable(name: "__val", scope: !4585, file: !3, line: 273, type: !411)
!4585 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 273, column: 2)
!4586 = !DILocation(line: 269, column: 56, scope: !4579)
!4587 = !DILocation(line: 271, column: 2, scope: !4579)
!4588 = !DILocation(line: 271, column: 6, scope: !4579)
!4589 = !DILocation(line: 271, column: 11, scope: !4579)
!4590 = !DILocation(line: 273, column: 2, scope: !4579)
!4591 = !DILocation(line: 273, column: 2, scope: !4585)
!4592 = !DILocation(line: 274, column: 9, scope: !4579)
!4593 = !DILocation(line: 275, column: 1, scope: !4579)
!4594 = !DILocation(line: 274, column: 2, scope: !4579)
!4595 = distinct !DISubprogram(name: "cpu_freq_write_amd", scope: !3, file: !3, line: 277, type: !3337, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4596)
!4596 = !{!4597, !4598}
!4597 = !DILocalVariable(name: "not_used", arg: 1, scope: !4595, file: !3, line: 277, type: !3339)
!4598 = !DILocalVariable(name: "val", arg: 2, scope: !4595, file: !3, line: 277, type: !1093)
!4599 = !DILocation(line: 277, column: 58, scope: !4595)
!4600 = !DILocation(line: 277, column: 72, scope: !4595)
!4601 = !DILocation(line: 279, column: 26, scope: !4595)
!4602 = !DILocation(line: 279, column: 2, scope: !4595)
!4603 = !DILocation(line: 280, column: 1, scope: !4595)
!4604 = distinct !DISubprogram(name: "kcalloc", scope: !132, file: !132, line: 666, type: !4605, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4607)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!319, !294, !294, !1255}
!4607 = !{!4608, !4609, !4610}
!4608 = !DILocalVariable(name: "n", arg: 1, scope: !4604, file: !132, line: 666, type: !294)
!4609 = !DILocalVariable(name: "size", arg: 2, scope: !4604, file: !132, line: 666, type: !294)
!4610 = !DILocalVariable(name: "flags", arg: 3, scope: !4604, file: !132, line: 666, type: !1255)
!4611 = !DILocation(line: 666, column: 55, scope: !4604)
!4612 = !DILocation(line: 666, column: 65, scope: !4604)
!4613 = !DILocation(line: 666, column: 77, scope: !4604)
!4614 = !DILocation(line: 668, column: 23, scope: !4604)
!4615 = !DILocation(line: 668, column: 26, scope: !4604)
!4616 = !DILocation(line: 668, column: 32, scope: !4604)
!4617 = !DILocation(line: 668, column: 38, scope: !4604)
!4618 = !DILocation(line: 668, column: 9, scope: !4604)
!4619 = !DILocation(line: 668, column: 2, scope: !4604)
!4620 = distinct !DISubprogram(name: "get_max_boost_ratio", scope: !3, file: !3, line: 638, type: !4621, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4623)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!411, !7, !1805}
!4623 = !{!4624, !4625, !4626, !4639, !4640, !4641}
!4624 = !DILocalVariable(name: "cpu", arg: 1, scope: !4620, file: !3, line: 638, type: !7)
!4625 = !DILocalVariable(name: "nominal_freq", arg: 2, scope: !4620, file: !3, line: 638, type: !1805)
!4626 = !DILocalVariable(name: "perf_caps", scope: !4620, file: !3, line: 640, type: !4627)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cppc_perf_caps", file: !4628, line: 105, size: 288, elements: !4629)
!4628 = !DIFile(filename: "./include/acpi/cppc_acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0445ea69f5c64d65d093e90183e974cb")
!4629 = !{!4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_perf", scope: !4627, file: !4628, line: 106, baseType: !1093, size: 32)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "highest_perf", scope: !4627, file: !4628, line: 107, baseType: !1093, size: 32, offset: 32)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "nominal_perf", scope: !4627, file: !4628, line: 108, baseType: !1093, size: 32, offset: 64)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_perf", scope: !4627, file: !4628, line: 109, baseType: !1093, size: 32, offset: 96)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_nonlinear_perf", scope: !4627, file: !4628, line: 110, baseType: !1093, size: 32, offset: 128)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_freq", scope: !4627, file: !4628, line: 111, baseType: !1093, size: 32, offset: 160)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "nominal_freq", scope: !4627, file: !4628, line: 112, baseType: !1093, size: 32, offset: 192)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "energy_perf", scope: !4627, file: !4628, line: 113, baseType: !1093, size: 32, offset: 224)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "auto_sel", scope: !4627, file: !4628, line: 114, baseType: !604, size: 8, offset: 256)
!4639 = !DILocalVariable(name: "highest_perf", scope: !4620, file: !3, line: 641, type: !411)
!4640 = !DILocalVariable(name: "nominal_perf", scope: !4620, file: !3, line: 641, type: !411)
!4641 = !DILocalVariable(name: "ret", scope: !4620, file: !3, line: 642, type: !46)
!4642 = !DILocation(line: 638, column: 45, scope: !4620)
!4643 = !DILocation(line: 638, column: 55, scope: !4620)
!4644 = !DILocation(line: 640, column: 2, scope: !4620)
!4645 = !DILocation(line: 640, column: 24, scope: !4620)
!4646 = !DILocation(line: 641, column: 2, scope: !4620)
!4647 = !DILocation(line: 641, column: 6, scope: !4620)
!4648 = !DILocation(line: 641, column: 20, scope: !4620)
!4649 = !DILocation(line: 642, column: 2, scope: !4620)
!4650 = !DILocation(line: 642, column: 6, scope: !4620)
!4651 = !DILocation(line: 644, column: 6, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 644, column: 6)
!4653 = !DILocation(line: 644, column: 6, scope: !4620)
!4654 = !DILocation(line: 645, column: 3, scope: !4652)
!4655 = !DILocation(line: 647, column: 27, scope: !4620)
!4656 = !DILocation(line: 647, column: 8, scope: !4620)
!4657 = !DILocation(line: 647, column: 6, scope: !4620)
!4658 = !DILocation(line: 648, column: 6, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 648, column: 6)
!4660 = !DILocation(line: 648, column: 6, scope: !4620)
!4661 = !DILocation(line: 649, column: 3, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4663, file: !3, line: 649, column: 3)
!4663 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 649, column: 3)
!4664 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 648, column: 11)
!4665 = !DILocation(line: 649, column: 3, scope: !4663)
!4666 = !DILocation(line: 651, column: 3, scope: !4664)
!4667 = !DILocation(line: 654, column: 20, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 654, column: 6)
!4669 = !DILocation(line: 654, column: 6, scope: !4668)
!4670 = !DILocation(line: 654, column: 31, scope: !4668)
!4671 = !DILocation(line: 654, column: 6, scope: !4620)
!4672 = !DILocation(line: 655, column: 18, scope: !4668)
!4673 = !DILocation(line: 655, column: 16, scope: !4668)
!4674 = !DILocation(line: 655, column: 3, scope: !4668)
!4675 = !DILocation(line: 657, column: 28, scope: !4668)
!4676 = !DILocation(line: 657, column: 18, scope: !4668)
!4677 = !DILocation(line: 657, column: 16, scope: !4668)
!4678 = !DILocation(line: 659, column: 27, scope: !4620)
!4679 = !DILocation(line: 659, column: 17, scope: !4620)
!4680 = !DILocation(line: 659, column: 15, scope: !4620)
!4681 = !DILocation(line: 661, column: 6, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 661, column: 6)
!4683 = !DILocation(line: 661, column: 6, scope: !4620)
!4684 = !DILocation(line: 662, column: 29, scope: !4682)
!4685 = !DILocation(line: 662, column: 19, scope: !4682)
!4686 = !DILocation(line: 662, column: 4, scope: !4682)
!4687 = !DILocation(line: 662, column: 17, scope: !4682)
!4688 = !DILocation(line: 662, column: 3, scope: !4682)
!4689 = !DILocation(line: 664, column: 7, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 664, column: 6)
!4691 = !DILocation(line: 664, column: 20, scope: !4690)
!4692 = !DILocation(line: 664, column: 24, scope: !4690)
!4693 = !DILocation(line: 664, column: 6, scope: !4620)
!4694 = !DILocation(line: 665, column: 3, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 665, column: 3)
!4696 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 665, column: 3)
!4697 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 664, column: 38)
!4698 = !DILocation(line: 665, column: 3, scope: !4696)
!4699 = !DILocation(line: 666, column: 3, scope: !4697)
!4700 = !DILocation(line: 669, column: 6, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 669, column: 6)
!4702 = !DILocation(line: 669, column: 21, scope: !4701)
!4703 = !DILocation(line: 669, column: 19, scope: !4701)
!4704 = !DILocation(line: 669, column: 6, scope: !4620)
!4705 = !DILocation(line: 670, column: 3, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 670, column: 3)
!4707 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 670, column: 3)
!4708 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 669, column: 35)
!4709 = !DILocation(line: 670, column: 3, scope: !4707)
!4710 = !DILocation(line: 671, column: 3, scope: !4708)
!4711 = !DILocation(line: 674, column: 17, scope: !4620)
!4712 = !DILocation(line: 674, column: 30, scope: !4620)
!4713 = !DILocation(line: 674, column: 55, scope: !4620)
!4714 = !DILocation(line: 674, column: 9, scope: !4620)
!4715 = !DILocation(line: 674, column: 2, scope: !4620)
!4716 = !DILocation(line: 675, column: 1, scope: !4620)
!4717 = !DISubprogram(name: "arch_set_max_freq_ratio", scope: !4718, file: !4718, line: 223, type: !4719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4718 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "120eda241c1b2b25166ee71f2a584d2d")
!4719 = !DISubroutineType(types: !4720)
!4720 = !{null, !604}
!4721 = distinct !DISubprogram(name: "acpi_cpufreq_guess_freq", scope: !3, file: !3, line: 501, type: !4722, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4724)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!297, !3328, !7}
!4724 = !{!4725, !4726, !4727, !4728, !4731, !4732}
!4725 = !DILocalVariable(name: "data", arg: 1, scope: !4721, file: !3, line: 501, type: !3328)
!4726 = !DILocalVariable(name: "cpu", arg: 2, scope: !4721, file: !3, line: 501, type: !7)
!4727 = !DILocalVariable(name: "perf", scope: !4721, file: !3, line: 503, type: !1256)
!4728 = !DILocalVariable(name: "i", scope: !4729, file: !3, line: 508, type: !7)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 506, column: 15)
!4730 = distinct !DILexicalBlock(scope: !4721, file: !3, line: 506, column: 6)
!4731 = !DILocalVariable(name: "freq", scope: !4729, file: !3, line: 509, type: !297)
!4732 = !DILocalVariable(name: "freqn", scope: !4729, file: !3, line: 510, type: !297)
!4733 = !DILocation(line: 501, column: 51, scope: !4721)
!4734 = !DILocation(line: 501, column: 70, scope: !4721)
!4735 = !DILocation(line: 503, column: 2, scope: !4721)
!4736 = !DILocation(line: 503, column: 37, scope: !4721)
!4737 = !DILocation(line: 505, column: 22, scope: !4721)
!4738 = !DILocation(line: 505, column: 9, scope: !4721)
!4739 = !DILocation(line: 505, column: 7, scope: !4721)
!4740 = !DILocation(line: 506, column: 6, scope: !4730)
!4741 = !DILocation(line: 506, column: 6, scope: !4721)
!4742 = !DILocation(line: 508, column: 3, scope: !4729)
!4743 = !DILocation(line: 508, column: 16, scope: !4729)
!4744 = !DILocation(line: 509, column: 3, scope: !4729)
!4745 = !DILocation(line: 509, column: 17, scope: !4729)
!4746 = !DILocation(line: 510, column: 3, scope: !4729)
!4747 = !DILocation(line: 510, column: 17, scope: !4729)
!4748 = !DILocation(line: 510, column: 25, scope: !4729)
!4749 = !DILocation(line: 510, column: 31, scope: !4729)
!4750 = !DILocation(line: 510, column: 41, scope: !4729)
!4751 = !DILocation(line: 510, column: 56, scope: !4729)
!4752 = !DILocation(line: 512, column: 10, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 512, column: 3)
!4754 = !DILocation(line: 512, column: 8, scope: !4753)
!4755 = !DILocation(line: 512, column: 15, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 512, column: 3)
!4757 = !DILocation(line: 512, column: 20, scope: !4756)
!4758 = !DILocation(line: 512, column: 26, scope: !4756)
!4759 = !DILocation(line: 512, column: 37, scope: !4756)
!4760 = !DILocation(line: 512, column: 17, scope: !4756)
!4761 = !DILocation(line: 512, column: 3, scope: !4753)
!4762 = !DILocation(line: 513, column: 11, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4756, file: !3, line: 512, column: 47)
!4764 = !DILocation(line: 513, column: 9, scope: !4763)
!4765 = !DILocation(line: 514, column: 12, scope: !4763)
!4766 = !DILocation(line: 514, column: 18, scope: !4763)
!4767 = !DILocation(line: 514, column: 25, scope: !4763)
!4768 = !DILocation(line: 514, column: 26, scope: !4763)
!4769 = !DILocation(line: 514, column: 30, scope: !4763)
!4770 = !DILocation(line: 514, column: 45, scope: !4763)
!4771 = !DILocation(line: 514, column: 10, scope: !4763)
!4772 = !DILocation(line: 515, column: 13, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4763, file: !3, line: 515, column: 8)
!4774 = !DILocation(line: 515, column: 11, scope: !4773)
!4775 = !DILocation(line: 515, column: 8, scope: !4773)
!4776 = !DILocation(line: 515, column: 25, scope: !4773)
!4777 = !DILocation(line: 515, column: 33, scope: !4773)
!4778 = !DILocation(line: 515, column: 31, scope: !4773)
!4779 = !DILocation(line: 515, column: 22, scope: !4773)
!4780 = !DILocation(line: 515, column: 8, scope: !4763)
!4781 = !DILocation(line: 516, column: 19, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 515, column: 40)
!4783 = !DILocation(line: 516, column: 5, scope: !4782)
!4784 = !DILocation(line: 516, column: 11, scope: !4782)
!4785 = !DILocation(line: 516, column: 17, scope: !4782)
!4786 = !DILocation(line: 517, column: 12, scope: !4782)
!4787 = !DILocation(line: 517, column: 5, scope: !4782)
!4788 = !DILocation(line: 519, column: 3, scope: !4763)
!4789 = !DILocation(line: 512, column: 43, scope: !4756)
!4790 = !DILocation(line: 512, column: 3, scope: !4756)
!4791 = distinct !{!4791, !4761, !4792, !3562, !3563}
!4792 = !DILocation(line: 519, column: 3, scope: !4753)
!4793 = !DILocation(line: 520, column: 17, scope: !4729)
!4794 = !DILocation(line: 520, column: 23, scope: !4729)
!4795 = !DILocation(line: 520, column: 34, scope: !4729)
!4796 = !DILocation(line: 520, column: 3, scope: !4729)
!4797 = !DILocation(line: 520, column: 9, scope: !4729)
!4798 = !DILocation(line: 520, column: 15, scope: !4729)
!4799 = !DILocation(line: 521, column: 10, scope: !4729)
!4800 = !DILocation(line: 521, column: 3, scope: !4729)
!4801 = !DILocation(line: 522, column: 2, scope: !4730)
!4802 = !DILocation(line: 524, column: 3, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 522, column: 9)
!4804 = !DILocation(line: 524, column: 9, scope: !4803)
!4805 = !DILocation(line: 524, column: 15, scope: !4803)
!4806 = !DILocation(line: 525, column: 10, scope: !4803)
!4807 = !DILocation(line: 525, column: 16, scope: !4803)
!4808 = !DILocation(line: 525, column: 26, scope: !4803)
!4809 = !DILocation(line: 525, column: 41, scope: !4803)
!4810 = !DILocation(line: 525, column: 3, scope: !4803)
!4811 = !DILocation(line: 527, column: 1, scope: !4721)
!4812 = distinct !DISubprogram(name: "get_cur_freq_on_cpu", scope: !3, file: !3, line: 367, type: !3287, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4813)
!4813 = !{!4814, !4815, !4816, !4817, !4818}
!4814 = !DILocalVariable(name: "cpu", arg: 1, scope: !4812, file: !3, line: 367, type: !7)
!4815 = !DILocalVariable(name: "data", scope: !4812, file: !3, line: 369, type: !3328)
!4816 = !DILocalVariable(name: "policy", scope: !4812, file: !3, line: 370, type: !2073)
!4817 = !DILocalVariable(name: "freq", scope: !4812, file: !3, line: 371, type: !7)
!4818 = !DILocalVariable(name: "cached_freq", scope: !4812, file: !3, line: 372, type: !7)
!4819 = !DILocation(line: 367, column: 54, scope: !4812)
!4820 = !DILocation(line: 369, column: 2, scope: !4812)
!4821 = !DILocation(line: 369, column: 28, scope: !4812)
!4822 = !DILocation(line: 370, column: 2, scope: !4812)
!4823 = !DILocation(line: 370, column: 25, scope: !4812)
!4824 = !DILocation(line: 371, column: 2, scope: !4812)
!4825 = !DILocation(line: 371, column: 15, scope: !4812)
!4826 = !DILocation(line: 372, column: 2, scope: !4812)
!4827 = !DILocation(line: 372, column: 15, scope: !4812)
!4828 = !DILocation(line: 374, column: 2, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 374, column: 2)
!4830 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 374, column: 2)
!4831 = !DILocation(line: 374, column: 2, scope: !4830)
!4832 = !DILocation(line: 376, column: 31, scope: !4812)
!4833 = !DILocation(line: 376, column: 11, scope: !4812)
!4834 = !DILocation(line: 376, column: 9, scope: !4812)
!4835 = !DILocation(line: 377, column: 6, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 377, column: 6)
!4837 = !DILocation(line: 377, column: 6, scope: !4812)
!4838 = !DILocation(line: 378, column: 3, scope: !4836)
!4839 = !DILocation(line: 380, column: 9, scope: !4812)
!4840 = !DILocation(line: 380, column: 17, scope: !4812)
!4841 = !DILocation(line: 380, column: 7, scope: !4812)
!4842 = !DILocation(line: 381, column: 6, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 381, column: 6)
!4844 = !DILocation(line: 381, column: 6, scope: !4812)
!4845 = !DILocation(line: 382, column: 3, scope: !4843)
!4846 = !DILocation(line: 384, column: 16, scope: !4812)
!4847 = !DILocation(line: 384, column: 24, scope: !4812)
!4848 = !DILocation(line: 384, column: 48, scope: !4812)
!4849 = !DILocation(line: 384, column: 35, scope: !4812)
!4850 = !DILocation(line: 384, column: 55, scope: !4812)
!4851 = !DILocation(line: 384, column: 62, scope: !4812)
!4852 = !DILocation(line: 384, column: 14, scope: !4812)
!4853 = !DILocation(line: 385, column: 22, scope: !4812)
!4854 = !DILocation(line: 385, column: 42, scope: !4812)
!4855 = !DILocation(line: 385, column: 59, scope: !4812)
!4856 = !DILocation(line: 385, column: 30, scope: !4812)
!4857 = !DILocation(line: 385, column: 9, scope: !4812)
!4858 = !DILocation(line: 385, column: 7, scope: !4812)
!4859 = !DILocation(line: 386, column: 6, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 386, column: 6)
!4861 = !DILocation(line: 386, column: 14, scope: !4860)
!4862 = !DILocation(line: 386, column: 11, scope: !4860)
!4863 = !DILocation(line: 386, column: 6, scope: !4812)
!4864 = !DILocation(line: 391, column: 3, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4860, file: !3, line: 386, column: 27)
!4866 = !DILocation(line: 391, column: 9, scope: !4865)
!4867 = !DILocation(line: 391, column: 16, scope: !4865)
!4868 = !DILocation(line: 392, column: 2, scope: !4865)
!4869 = !DILocation(line: 394, column: 2, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 394, column: 2)
!4871 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 394, column: 2)
!4872 = !DILocation(line: 394, column: 2, scope: !4871)
!4873 = !DILocation(line: 396, column: 9, scope: !4812)
!4874 = !DILocation(line: 396, column: 2, scope: !4812)
!4875 = !DILocation(line: 397, column: 1, scope: !4812)
!4876 = !DISubprogram(name: "acpi_processor_notify_smm", scope: !1258, file: !1258, line: 265, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4877 = distinct !DISubprogram(name: "set_boost", scope: !3, file: !3, line: 136, type: !3317, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4878)
!4878 = !{!4879, !4880}
!4879 = !DILocalVariable(name: "policy", arg: 1, scope: !4877, file: !3, line: 136, type: !2073)
!4880 = !DILocalVariable(name: "val", arg: 2, scope: !4877, file: !3, line: 136, type: !46)
!4881 = !DILocation(line: 136, column: 45, scope: !4877)
!4882 = !DILocation(line: 136, column: 57, scope: !4877)
!4883 = !DILocation(line: 138, column: 19, scope: !4877)
!4884 = !DILocation(line: 138, column: 27, scope: !4877)
!4885 = !DILocation(line: 139, column: 19, scope: !4877)
!4886 = !DILocation(line: 139, column: 13, scope: !4877)
!4887 = !DILocation(line: 139, column: 5, scope: !4877)
!4888 = !DILocation(line: 138, column: 2, scope: !4877)
!4889 = !DILocation(line: 140, column: 2, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 140, column: 2)
!4891 = distinct !DILexicalBlock(scope: !4877, file: !3, line: 140, column: 2)
!4892 = !DILocation(line: 140, column: 2, scope: !4891)
!4893 = !DILocation(line: 143, column: 2, scope: !4877)
!4894 = !DISubprogram(name: "acpi_processor_unregister_performance", scope: !1258, file: !1258, line: 260, type: !3291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4895 = distinct !DISubprogram(name: "free_cpumask_var", scope: !1294, file: !1294, line: 946, type: !4467, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4896)
!4896 = !{!4897}
!4897 = !DILocalVariable(name: "mask", arg: 1, scope: !4895, file: !1294, line: 946, type: !1310)
!4898 = !DILocation(line: 946, column: 51, scope: !4895)
!4899 = !DILocation(line: 948, column: 1, scope: !4895)
!4900 = !DISubprogram(name: "kfree", scope: !132, file: !132, line: 227, type: !4901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{null, !526}
!4903 = distinct !DISubprogram(name: "kmalloc", scope: !132, file: !132, line: 591, type: !4373, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4904)
!4904 = !{!4905, !4906, !4907}
!4905 = !DILocalVariable(name: "size", arg: 1, scope: !4903, file: !132, line: 591, type: !294)
!4906 = !DILocalVariable(name: "flags", arg: 2, scope: !4903, file: !132, line: 591, type: !1255)
!4907 = !DILocalVariable(name: "index", scope: !4908, file: !132, line: 594, type: !7)
!4908 = distinct !DILexicalBlock(scope: !4909, file: !132, line: 593, column: 42)
!4909 = distinct !DILexicalBlock(scope: !4903, file: !132, line: 593, column: 6)
!4910 = !DILocation(line: 591, column: 61, scope: !4903)
!4911 = !DILocation(line: 591, column: 73, scope: !4903)
!4912 = !DILocation(line: 593, column: 27, scope: !4909)
!4913 = !DILocation(line: 593, column: 6, scope: !4909)
!4914 = !DILocation(line: 593, column: 33, scope: !4909)
!4915 = !DILocation(line: 593, column: 36, scope: !4909)
!4916 = !DILocation(line: 593, column: 6, scope: !4903)
!4917 = !DILocation(line: 594, column: 3, scope: !4908)
!4918 = !DILocation(line: 594, column: 16, scope: !4908)
!4919 = !DILocation(line: 596, column: 7, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4908, file: !132, line: 596, column: 7)
!4921 = !DILocation(line: 596, column: 12, scope: !4920)
!4922 = !DILocation(line: 596, column: 7, scope: !4908)
!4923 = !DILocation(line: 597, column: 25, scope: !4920)
!4924 = !DILocation(line: 597, column: 31, scope: !4920)
!4925 = !DILocation(line: 597, column: 11, scope: !4920)
!4926 = !DILocation(line: 597, column: 4, scope: !4920)
!4927 = !DILocation(line: 599, column: 11, scope: !4908)
!4928 = !DILocation(line: 599, column: 9, scope: !4908)
!4929 = !DILocation(line: 601, column: 33, scope: !4908)
!4930 = !DILocation(line: 601, column: 40, scope: !4908)
!4931 = !DILocation(line: 601, column: 20, scope: !4908)
!4932 = !DILocation(line: 601, column: 5, scope: !4908)
!4933 = !DILocation(line: 601, column: 51, scope: !4908)
!4934 = !DILocation(line: 602, column: 5, scope: !4908)
!4935 = !DILocation(line: 602, column: 12, scope: !4908)
!4936 = !DILocation(line: 600, column: 10, scope: !4908)
!4937 = !DILocation(line: 600, column: 3, scope: !4908)
!4938 = !DILocation(line: 603, column: 2, scope: !4909)
!4939 = !DILocation(line: 604, column: 19, scope: !4903)
!4940 = !DILocation(line: 604, column: 25, scope: !4903)
!4941 = !DILocation(line: 604, column: 9, scope: !4903)
!4942 = !DILocation(line: 604, column: 2, scope: !4903)
!4943 = !DILocation(line: 605, column: 1, scope: !4903)
!4944 = !DISubprogram(name: "kmalloc_large", scope: !132, file: !132, line: 531, type: !4373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4945 = distinct !DISubprogram(name: "__kmalloc_index", scope: !132, file: !132, line: 444, type: !4946, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4948)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!7, !294, !604}
!4948 = !{!4949, !4950}
!4949 = !DILocalVariable(name: "size", arg: 1, scope: !4945, file: !132, line: 444, type: !294)
!4950 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4945, file: !132, line: 445, type: !604)
!4951 = !DILocation(line: 444, column: 60, scope: !4945)
!4952 = !DILocation(line: 445, column: 16, scope: !4945)
!4953 = !DILocation(line: 447, column: 7, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 447, column: 6)
!4955 = !DILocation(line: 447, column: 6, scope: !4945)
!4956 = !DILocation(line: 448, column: 3, scope: !4954)
!4957 = !DILocation(line: 450, column: 6, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 450, column: 6)
!4959 = !DILocation(line: 450, column: 11, scope: !4958)
!4960 = !DILocation(line: 450, column: 6, scope: !4945)
!4961 = !DILocation(line: 451, column: 3, scope: !4958)
!4962 = !DILocation(line: 453, column: 32, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 453, column: 6)
!4964 = !DILocation(line: 453, column: 37, scope: !4963)
!4965 = !DILocation(line: 453, column: 42, scope: !4963)
!4966 = !DILocation(line: 453, column: 45, scope: !4963)
!4967 = !DILocation(line: 453, column: 50, scope: !4963)
!4968 = !DILocation(line: 453, column: 6, scope: !4945)
!4969 = !DILocation(line: 454, column: 3, scope: !4963)
!4970 = !DILocation(line: 455, column: 32, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 455, column: 6)
!4972 = !DILocation(line: 455, column: 37, scope: !4971)
!4973 = !DILocation(line: 455, column: 43, scope: !4971)
!4974 = !DILocation(line: 455, column: 46, scope: !4971)
!4975 = !DILocation(line: 455, column: 51, scope: !4971)
!4976 = !DILocation(line: 455, column: 6, scope: !4945)
!4977 = !DILocation(line: 456, column: 3, scope: !4971)
!4978 = !DILocation(line: 457, column: 6, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 457, column: 6)
!4980 = !DILocation(line: 457, column: 11, scope: !4979)
!4981 = !DILocation(line: 457, column: 6, scope: !4945)
!4982 = !DILocation(line: 457, column: 26, scope: !4979)
!4983 = !DILocation(line: 458, column: 6, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 458, column: 6)
!4985 = !DILocation(line: 458, column: 11, scope: !4984)
!4986 = !DILocation(line: 458, column: 6, scope: !4945)
!4987 = !DILocation(line: 458, column: 26, scope: !4984)
!4988 = !DILocation(line: 459, column: 6, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 459, column: 6)
!4990 = !DILocation(line: 459, column: 11, scope: !4989)
!4991 = !DILocation(line: 459, column: 6, scope: !4945)
!4992 = !DILocation(line: 459, column: 26, scope: !4989)
!4993 = !DILocation(line: 460, column: 6, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 460, column: 6)
!4995 = !DILocation(line: 460, column: 11, scope: !4994)
!4996 = !DILocation(line: 460, column: 6, scope: !4945)
!4997 = !DILocation(line: 460, column: 26, scope: !4994)
!4998 = !DILocation(line: 461, column: 6, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 461, column: 6)
!5000 = !DILocation(line: 461, column: 11, scope: !4999)
!5001 = !DILocation(line: 461, column: 6, scope: !4945)
!5002 = !DILocation(line: 461, column: 26, scope: !4999)
!5003 = !DILocation(line: 462, column: 6, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 462, column: 6)
!5005 = !DILocation(line: 462, column: 11, scope: !5004)
!5006 = !DILocation(line: 462, column: 6, scope: !4945)
!5007 = !DILocation(line: 462, column: 26, scope: !5004)
!5008 = !DILocation(line: 463, column: 6, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 463, column: 6)
!5010 = !DILocation(line: 463, column: 11, scope: !5009)
!5011 = !DILocation(line: 463, column: 6, scope: !4945)
!5012 = !DILocation(line: 463, column: 26, scope: !5009)
!5013 = !DILocation(line: 464, column: 6, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 464, column: 6)
!5015 = !DILocation(line: 464, column: 11, scope: !5014)
!5016 = !DILocation(line: 464, column: 6, scope: !4945)
!5017 = !DILocation(line: 464, column: 26, scope: !5014)
!5018 = !DILocation(line: 465, column: 6, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 465, column: 6)
!5020 = !DILocation(line: 465, column: 11, scope: !5019)
!5021 = !DILocation(line: 465, column: 6, scope: !4945)
!5022 = !DILocation(line: 465, column: 26, scope: !5019)
!5023 = !DILocation(line: 466, column: 6, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 466, column: 6)
!5025 = !DILocation(line: 466, column: 11, scope: !5024)
!5026 = !DILocation(line: 466, column: 6, scope: !4945)
!5027 = !DILocation(line: 466, column: 26, scope: !5024)
!5028 = !DILocation(line: 467, column: 6, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 467, column: 6)
!5030 = !DILocation(line: 467, column: 11, scope: !5029)
!5031 = !DILocation(line: 467, column: 6, scope: !4945)
!5032 = !DILocation(line: 467, column: 26, scope: !5029)
!5033 = !DILocation(line: 468, column: 6, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 468, column: 6)
!5035 = !DILocation(line: 468, column: 11, scope: !5034)
!5036 = !DILocation(line: 468, column: 6, scope: !4945)
!5037 = !DILocation(line: 468, column: 26, scope: !5034)
!5038 = !DILocation(line: 469, column: 6, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 469, column: 6)
!5040 = !DILocation(line: 469, column: 11, scope: !5039)
!5041 = !DILocation(line: 469, column: 6, scope: !4945)
!5042 = !DILocation(line: 469, column: 26, scope: !5039)
!5043 = !DILocation(line: 470, column: 6, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 470, column: 6)
!5045 = !DILocation(line: 470, column: 11, scope: !5044)
!5046 = !DILocation(line: 470, column: 6, scope: !4945)
!5047 = !DILocation(line: 470, column: 26, scope: !5044)
!5048 = !DILocation(line: 471, column: 6, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 471, column: 6)
!5050 = !DILocation(line: 471, column: 11, scope: !5049)
!5051 = !DILocation(line: 471, column: 6, scope: !4945)
!5052 = !DILocation(line: 471, column: 26, scope: !5049)
!5053 = !DILocation(line: 472, column: 6, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 472, column: 6)
!5055 = !DILocation(line: 472, column: 11, scope: !5054)
!5056 = !DILocation(line: 472, column: 6, scope: !4945)
!5057 = !DILocation(line: 472, column: 26, scope: !5054)
!5058 = !DILocation(line: 473, column: 6, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 473, column: 6)
!5060 = !DILocation(line: 473, column: 11, scope: !5059)
!5061 = !DILocation(line: 473, column: 6, scope: !4945)
!5062 = !DILocation(line: 473, column: 26, scope: !5059)
!5063 = !DILocation(line: 474, column: 6, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 474, column: 6)
!5065 = !DILocation(line: 474, column: 11, scope: !5064)
!5066 = !DILocation(line: 474, column: 6, scope: !4945)
!5067 = !DILocation(line: 474, column: 27, scope: !5064)
!5068 = !DILocation(line: 475, column: 6, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 475, column: 6)
!5070 = !DILocation(line: 475, column: 11, scope: !5069)
!5071 = !DILocation(line: 475, column: 6, scope: !4945)
!5072 = !DILocation(line: 475, column: 32, scope: !5069)
!5073 = !DILocation(line: 477, column: 50, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !4945, file: !132, line: 477, column: 6)
!5075 = !DILocation(line: 477, column: 6, scope: !4945)
!5076 = !DILocation(line: 478, column: 3, scope: !5074)
!5077 = !DILocation(line: 478, column: 3, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5079, file: !132, line: 478, column: 3)
!5079 = distinct !DILexicalBlock(scope: !5074, file: !132, line: 478, column: 3)
!5080 = !{i32 -2141850154}
!5081 = !DILocation(line: 478, column: 3, scope: !5079)
!5082 = !DILocation(line: 480, column: 3, scope: !5074)
!5083 = !DILocation(line: 480, column: 3, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5074, file: !132, line: 480, column: 3)
!5085 = !DILocation(line: 480, column: 3, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5084, file: !132, line: 480, column: 3)
!5087 = !DILocation(line: 480, column: 3, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5084, file: !132, line: 480, column: 3)
!5089 = !{i64 2153117345, i64 2153117374, i64 2153117420, i64 2153117478, i64 2153117532, i64 2153117586, i64 2153117641, i64 2153117672}
!5090 = !DILocation(line: 483, column: 2, scope: !4945)
!5091 = !DILocation(line: 484, column: 1, scope: !4945)
!5092 = !DISubprogram(name: "kmalloc_trace", scope: !132, file: !132, line: 525, type: !5093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{!319, !5095, !1255, !294}
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5097, line: 11, flags: DIFlagFwdDecl)
!5097 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5098 = distinct !DISubprogram(name: "kmalloc_type", scope: !132, file: !132, line: 401, type: !5099, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5101)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{!131, !1255, !297}
!5101 = !{!5102, !5103}
!5102 = !DILocalVariable(name: "flags", arg: 1, scope: !5098, file: !132, line: 401, type: !1255)
!5103 = !DILocalVariable(name: "caller", arg: 2, scope: !5098, file: !132, line: 401, type: !297)
!5104 = !DILocation(line: 401, column: 67, scope: !5098)
!5105 = !DILocation(line: 401, column: 88, scope: !5098)
!5106 = !DILocation(line: 407, column: 6, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5098, file: !132, line: 407, column: 6)
!5108 = !DILocation(line: 407, column: 6, scope: !5098)
!5109 = !DILocation(line: 413, column: 3, scope: !5107)
!5110 = !DILocation(line: 423, column: 38, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5098, file: !132, line: 423, column: 6)
!5112 = !DILocation(line: 423, column: 44, scope: !5111)
!5113 = !DILocation(line: 423, column: 6, scope: !5098)
!5114 = !DILocation(line: 424, column: 3, scope: !5111)
!5115 = !DILocation(line: 426, column: 3, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5098, file: !132, line: 425, column: 6)
!5117 = !DILocation(line: 429, column: 1, scope: !5098)
!5118 = !DISubprogram(name: "__kmalloc", scope: !132, file: !132, line: 488, type: !4373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5119 = !DISubprogram(name: "__compiletime_assert_222", scope: !132, file: !132, line: 478, type: !1188, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5120 = distinct !DISubprogram(name: "constant_test_bit", scope: !4398, file: !4398, line: 204, type: !5121, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5123)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!604, !283, !4401}
!5123 = !{!5124, !5125}
!5124 = !DILocalVariable(name: "nr", arg: 1, scope: !5120, file: !4398, line: 204, type: !283)
!5125 = !DILocalVariable(name: "addr", arg: 2, scope: !5120, file: !4398, line: 204, type: !4401)
!5126 = !DILocation(line: 204, column: 52, scope: !5120)
!5127 = !DILocation(line: 204, column: 86, scope: !5120)
!5128 = !DILocation(line: 206, column: 19, scope: !5120)
!5129 = !DILocation(line: 206, column: 22, scope: !5120)
!5130 = !DILocation(line: 206, column: 15, scope: !5120)
!5131 = !DILocation(line: 207, column: 4, scope: !5120)
!5132 = !DILocation(line: 207, column: 9, scope: !5120)
!5133 = !DILocation(line: 207, column: 12, scope: !5120)
!5134 = !DILocation(line: 206, column: 44, scope: !5120)
!5135 = !DILocation(line: 207, column: 37, scope: !5120)
!5136 = !DILocation(line: 206, column: 2, scope: !5120)
!5137 = distinct !DISubprogram(name: "variable_test_bit", scope: !4398, file: !4398, line: 224, type: !5121, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5138)
!5138 = !{!5139, !5140, !5141}
!5139 = !DILocalVariable(name: "nr", arg: 1, scope: !5137, file: !4398, line: 224, type: !283)
!5140 = !DILocalVariable(name: "addr", arg: 2, scope: !5137, file: !4398, line: 224, type: !4401)
!5141 = !DILocalVariable(name: "oldbit", scope: !5137, file: !4398, line: 226, type: !604)
!5142 = !DILocation(line: 224, column: 52, scope: !5137)
!5143 = !DILocation(line: 224, column: 86, scope: !5137)
!5144 = !DILocation(line: 226, column: 2, scope: !5137)
!5145 = !DILocation(line: 226, column: 7, scope: !5137)
!5146 = !DILocation(line: 231, column: 33, scope: !5137)
!5147 = !DILocation(line: 231, column: 46, scope: !5137)
!5148 = !DILocation(line: 228, column: 2, scope: !5137)
!5149 = !{i64 2147824714, i64 2147824788}
!5150 = !DILocation(line: 233, column: 9, scope: !5137)
!5151 = !DILocation(line: 234, column: 1, scope: !5137)
!5152 = !DILocation(line: 233, column: 2, scope: !5137)
!5153 = distinct !DISubprogram(name: "bitmap_copy", scope: !5154, file: !5154, line: 266, type: !5155, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5159)
!5154 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!5155 = !DISubroutineType(types: !5156)
!5156 = !{null, !1174, !5157, !7}
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!5159 = !{!5160, !5161, !5162, !5163}
!5160 = !DILocalVariable(name: "dst", arg: 1, scope: !5153, file: !5154, line: 266, type: !1174)
!5161 = !DILocalVariable(name: "src", arg: 2, scope: !5153, file: !5154, line: 266, type: !5157)
!5162 = !DILocalVariable(name: "nbits", arg: 3, scope: !5153, file: !5154, line: 267, type: !7)
!5163 = !DILocalVariable(name: "len", scope: !5153, file: !5154, line: 269, type: !7)
!5164 = !DILocation(line: 266, column: 47, scope: !5153)
!5165 = !DILocation(line: 266, column: 73, scope: !5153)
!5166 = !DILocation(line: 267, column: 17, scope: !5153)
!5167 = !DILocation(line: 269, column: 2, scope: !5153)
!5168 = !DILocation(line: 269, column: 15, scope: !5153)
!5169 = !DILocation(line: 269, column: 21, scope: !5153)
!5170 = !DILocation(line: 271, column: 6, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5153, file: !5154, line: 271, column: 6)
!5172 = !DILocation(line: 271, column: 6, scope: !5153)
!5173 = !DILocation(line: 272, column: 11, scope: !5171)
!5174 = !DILocation(line: 272, column: 10, scope: !5171)
!5175 = !DILocation(line: 272, column: 4, scope: !5171)
!5176 = !DILocation(line: 272, column: 8, scope: !5171)
!5177 = !DILocation(line: 272, column: 3, scope: !5171)
!5178 = !DILocation(line: 274, column: 10, scope: !5171)
!5179 = !DILocation(line: 274, column: 15, scope: !5171)
!5180 = !DILocation(line: 274, column: 20, scope: !5171)
!5181 = !DILocation(line: 274, column: 3, scope: !5171)
!5182 = !DILocation(line: 275, column: 1, scope: !5153)
!5183 = distinct !DISubprogram(name: "sw_any_bug_found", scope: !3, file: !3, line: 592, type: !3432, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5184)
!5184 = !{!5185}
!5185 = !DILocalVariable(name: "d", arg: 1, scope: !5183, file: !3, line: 592, type: !3434)
!5186 = !DILocation(line: 592, column: 57, scope: !5183)
!5187 = !DILocation(line: 594, column: 23, scope: !5183)
!5188 = !DILocation(line: 595, column: 2, scope: !5183)
!5189 = distinct !DISubprogram(name: "cpumask_weight", scope: !1294, file: !1294, line: 690, type: !5190, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5192)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!7, !1311}
!5192 = !{!5193}
!5193 = !DILocalVariable(name: "srcp", arg: 1, scope: !5189, file: !1294, line: 690, type: !1311)
!5194 = !DILocation(line: 690, column: 65, scope: !5189)
!5195 = !DILocation(line: 692, column: 23, scope: !5189)
!5196 = !DILocation(line: 692, column: 9, scope: !5189)
!5197 = !DILocation(line: 692, column: 2, scope: !5189)
!5198 = distinct !DISubprogram(name: "bitmap_weight", scope: !5154, file: !5154, line: 453, type: !5199, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5201)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!7, !5157, !7}
!5201 = !{!5202, !5203}
!5202 = !DILocalVariable(name: "src", arg: 1, scope: !5198, file: !5154, line: 453, type: !5157)
!5203 = !DILocalVariable(name: "nbits", arg: 2, scope: !5198, file: !5154, line: 453, type: !7)
!5204 = !DILocation(line: 453, column: 49, scope: !5198)
!5205 = !DILocation(line: 453, column: 67, scope: !5198)
!5206 = !DILocation(line: 455, column: 6, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5198, file: !5154, line: 455, column: 6)
!5208 = !DILocation(line: 455, column: 6, scope: !5198)
!5209 = !DILocation(line: 456, column: 24, scope: !5207)
!5210 = !DILocation(line: 456, column: 23, scope: !5207)
!5211 = !DILocation(line: 456, column: 30, scope: !5207)
!5212 = !DILocation(line: 456, column: 28, scope: !5207)
!5213 = !DILocation(line: 456, column: 10, scope: !5207)
!5214 = !DILocation(line: 456, column: 3, scope: !5207)
!5215 = !DILocation(line: 457, column: 25, scope: !5198)
!5216 = !DILocation(line: 457, column: 30, scope: !5198)
!5217 = !DILocation(line: 457, column: 9, scope: !5198)
!5218 = !DILocation(line: 457, column: 2, scope: !5198)
!5219 = !DILocation(line: 458, column: 1, scope: !5198)
!5220 = distinct !DISubprogram(name: "hweight_long", scope: !5221, file: !5221, line: 95, type: !5222, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5224)
!5221 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!5222 = !DISubroutineType(types: !5223)
!5223 = !{!297, !297}
!5224 = !{!5225}
!5225 = !DILocalVariable(name: "w", arg: 1, scope: !5220, file: !5221, line: 95, type: !297)
!5226 = !DILocation(line: 95, column: 65, scope: !5220)
!5227 = !DILocation(line: 97, column: 41, scope: !5220)
!5228 = !DILocation(line: 97, column: 2, scope: !5220)
!5229 = !DISubprogram(name: "__bitmap_weight", scope: !5154, file: !5154, line: 171, type: !5199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5230 = distinct !DISubprogram(name: "__arch_hweight64", scope: !5231, file: !5231, line: 43, type: !5232, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5234)
!5231 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!297, !412}
!5234 = !{!5235, !5236}
!5235 = !DILocalVariable(name: "w", arg: 1, scope: !5230, file: !5231, line: 43, type: !412)
!5236 = !DILocalVariable(name: "res", scope: !5230, file: !5231, line: 45, type: !297)
!5237 = !DILocation(line: 43, column: 61, scope: !5230)
!5238 = !DILocation(line: 45, column: 2, scope: !5230)
!5239 = !DILocation(line: 45, column: 16, scope: !5230)
!5240 = !DILocation(line: 49, column: 15, scope: !5230)
!5241 = !DILocation(line: 47, column: 2, scope: !5230)
!5242 = !{i64 2147872506, i64 2147872534, i64 2147872540, i64 2147872556, i64 2147872572, i64 2147872599, i64 2147872932, i64 2147872232, i64 2147872938, i64 2147872986, i64 2147873050, i64 2147873114, i64 2147873171, i64 2147872313, i64 2147872338, i64 2147873378, i64 2147873508, i64 2147873439, i64 2147873522, i64 2147872430}
!5243 = !DILocation(line: 51, column: 9, scope: !5230)
!5244 = !DILocation(line: 52, column: 1, scope: !5230)
!5245 = !DILocation(line: 51, column: 2, scope: !5230)
!5246 = distinct !DISubprogram(name: "bitmap_zero", scope: !5154, file: !5154, line: 246, type: !5247, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5249)
!5247 = !DISubroutineType(types: !5248)
!5248 = !{null, !1174, !7}
!5249 = !{!5250, !5251, !5252}
!5250 = !DILocalVariable(name: "dst", arg: 1, scope: !5246, file: !5154, line: 246, type: !1174)
!5251 = !DILocalVariable(name: "nbits", arg: 2, scope: !5246, file: !5154, line: 246, type: !7)
!5252 = !DILocalVariable(name: "len", scope: !5246, file: !5154, line: 248, type: !7)
!5253 = !DILocation(line: 246, column: 47, scope: !5246)
!5254 = !DILocation(line: 246, column: 65, scope: !5246)
!5255 = !DILocation(line: 248, column: 2, scope: !5246)
!5256 = !DILocation(line: 248, column: 15, scope: !5246)
!5257 = !DILocation(line: 248, column: 21, scope: !5246)
!5258 = !DILocation(line: 250, column: 6, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5246, file: !5154, line: 250, column: 6)
!5260 = !DILocation(line: 250, column: 6, scope: !5246)
!5261 = !DILocation(line: 251, column: 4, scope: !5259)
!5262 = !DILocation(line: 251, column: 8, scope: !5259)
!5263 = !DILocation(line: 251, column: 3, scope: !5259)
!5264 = !DILocation(line: 253, column: 10, scope: !5259)
!5265 = !DILocation(line: 253, column: 18, scope: !5259)
!5266 = !DILocation(line: 253, column: 3, scope: !5259)
!5267 = !DILocation(line: 254, column: 1, scope: !5246)
!5268 = distinct !DISubprogram(name: "set_bit", scope: !5269, file: !5269, line: 26, type: !5270, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5273)
!5269 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5270 = !DISubroutineType(types: !5271)
!5271 = !{null, !283, !5272}
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!5273 = !{!5274, !5275}
!5274 = !DILocalVariable(name: "nr", arg: 1, scope: !5268, file: !5269, line: 26, type: !283)
!5275 = !DILocalVariable(name: "addr", arg: 2, scope: !5268, file: !5269, line: 26, type: !5272)
!5276 = !DILocation(line: 26, column: 42, scope: !5268)
!5277 = !DILocation(line: 26, column: 70, scope: !5268)
!5278 = !DILocation(line: 28, column: 26, scope: !5268)
!5279 = !DILocation(line: 28, column: 33, scope: !5268)
!5280 = !DILocation(line: 28, column: 31, scope: !5268)
!5281 = !DILocation(line: 28, column: 2, scope: !5268)
!5282 = !DILocation(line: 29, column: 15, scope: !5268)
!5283 = !DILocation(line: 29, column: 19, scope: !5268)
!5284 = !DILocation(line: 29, column: 2, scope: !5268)
!5285 = !DILocation(line: 30, column: 1, scope: !5268)
!5286 = distinct !DISubprogram(name: "cpumask_check", scope: !1294, file: !1294, line: 148, type: !3287, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5287)
!5287 = !{!5288}
!5288 = !DILocalVariable(name: "cpu", arg: 1, scope: !5286, file: !1294, line: 148, type: !7)
!5289 = !DILocation(line: 148, column: 64, scope: !5286)
!5290 = !DILocation(line: 150, column: 20, scope: !5286)
!5291 = !DILocation(line: 150, column: 2, scope: !5286)
!5292 = !DILocation(line: 151, column: 9, scope: !5286)
!5293 = !DILocation(line: 151, column: 2, scope: !5286)
!5294 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5295, file: !5295, line: 80, type: !5296, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5301)
!5295 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5296 = !DISubroutineType(types: !5297)
!5297 = !{null, !5298, !294}
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5299, size: 64)
!5299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5300)
!5300 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5301 = !{!5302, !5303}
!5302 = !DILocalVariable(name: "v", arg: 1, scope: !5294, file: !5295, line: 80, type: !5298)
!5303 = !DILocalVariable(name: "size", arg: 2, scope: !5294, file: !5295, line: 80, type: !294)
!5304 = !DILocation(line: 80, column: 74, scope: !5294)
!5305 = !DILocation(line: 80, column: 84, scope: !5294)
!5306 = !DILocation(line: 82, column: 20, scope: !5294)
!5307 = !DILocation(line: 82, column: 23, scope: !5294)
!5308 = !DILocation(line: 82, column: 2, scope: !5294)
!5309 = !DILocation(line: 83, column: 2, scope: !5294)
!5310 = !DILocation(line: 84, column: 1, scope: !5294)
!5311 = distinct !DISubprogram(name: "arch_set_bit", scope: !4398, file: !4398, line: 52, type: !5270, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5312)
!5312 = !{!5313, !5314}
!5313 = !DILocalVariable(name: "nr", arg: 1, scope: !5311, file: !4398, line: 52, type: !283)
!5314 = !DILocalVariable(name: "addr", arg: 2, scope: !5311, file: !4398, line: 52, type: !5272)
!5315 = !DILocation(line: 52, column: 19, scope: !5311)
!5316 = !DILocation(line: 52, column: 47, scope: !5311)
!5317 = !DILocation(line: 54, column: 27, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5311, file: !4398, line: 54, column: 6)
!5319 = !DILocation(line: 54, column: 6, scope: !5318)
!5320 = !DILocation(line: 54, column: 6, scope: !5311)
!5321 = !DILocation(line: 56, column: 6, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5318, file: !4398, line: 54, column: 32)
!5323 = !DILocation(line: 57, column: 12, scope: !5322)
!5324 = !DILocation(line: 55, column: 3, scope: !5322)
!5325 = !{i64 2147811102, i64 2147811141, i64 2147811162, i64 2147811199, i64 2147811222, i64 2147811092}
!5326 = !DILocation(line: 59, column: 2, scope: !5322)
!5327 = !DILocation(line: 61, column: 8, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5318, file: !4398, line: 59, column: 9)
!5329 = !DILocation(line: 61, column: 32, scope: !5328)
!5330 = !DILocation(line: 60, column: 3, scope: !5328)
!5331 = !{i64 2147811387, i64 2147811426, i64 2147811447, i64 2147811484, i64 2147811507, i64 2147811377}
!5332 = !DILocation(line: 63, column: 1, scope: !5311)
!5333 = distinct !DISubprogram(name: "kasan_check_write", scope: !5334, file: !5334, line: 44, type: !5335, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5337)
!5334 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!604, !5298, !7}
!5337 = !{!5338, !5339}
!5338 = !DILocalVariable(name: "p", arg: 1, scope: !5333, file: !5334, line: 44, type: !5298)
!5339 = !DILocalVariable(name: "size", arg: 2, scope: !5333, file: !5334, line: 44, type: !7)
!5340 = !DILocation(line: 44, column: 59, scope: !5333)
!5341 = !DILocation(line: 44, column: 75, scope: !5333)
!5342 = !DILocation(line: 46, column: 2, scope: !5333)
!5343 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5344, file: !5344, line: 229, type: !5345, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5347)
!5344 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5345 = !DISubroutineType(types: !5346)
!5346 = !{null, !5298, !294, !46}
!5347 = !{!5348, !5349, !5350}
!5348 = !DILocalVariable(name: "ptr", arg: 1, scope: !5343, file: !5344, line: 229, type: !5298)
!5349 = !DILocalVariable(name: "size", arg: 2, scope: !5343, file: !5344, line: 229, type: !294)
!5350 = !DILocalVariable(name: "type", arg: 3, scope: !5343, file: !5344, line: 230, type: !46)
!5351 = !DILocation(line: 229, column: 60, scope: !5343)
!5352 = !DILocation(line: 229, column: 72, scope: !5343)
!5353 = !DILocation(line: 230, column: 15, scope: !5343)
!5354 = !DILocation(line: 230, column: 23, scope: !5343)
!5355 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !1294, file: !1294, line: 140, type: !5356, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5358)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{null, !7, !7}
!5358 = !{!5359, !5360}
!5359 = !DILocalVariable(name: "cpu", arg: 1, scope: !5355, file: !1294, line: 140, type: !7)
!5360 = !DILocalVariable(name: "bits", arg: 2, scope: !5355, file: !1294, line: 140, type: !7)
!5361 = !DILocation(line: 140, column: 60, scope: !5355)
!5362 = !DILocation(line: 140, column: 78, scope: !5355)
!5363 = !DILocation(line: 145, column: 1, scope: !5355)
!5364 = !DISubprogram(name: "acpi_os_read_port", scope: !5365, file: !5365, line: 267, type: !5366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5365 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!5366 = !DISubroutineType(types: !5367)
!5367 = !{!5368, !5369, !2395, !1093}
!5368 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !1305, line: 421, baseType: !1093)
!5369 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !1305, line: 128, baseType: !411)
!5370 = !DISubprogram(name: "acpi_os_write_port", scope: !5365, file: !5365, line: 271, type: !5371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5371 = !DISubroutineType(types: !5372)
!5372 = !{!5368, !5369, !1093, !1093}
!5373 = distinct !DISubprogram(name: "native_read_msr", scope: !5374, file: !5374, line: 114, type: !5375, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5377)
!5374 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!5375 = !DISubroutineType(types: !5376)
!5376 = !{!413, !7}
!5377 = !{!5378, !5379}
!5378 = !DILocalVariable(name: "msr", arg: 1, scope: !5373, file: !5374, line: 114, type: !7)
!5379 = !DILocalVariable(name: "val", scope: !5373, file: !5374, line: 116, type: !413)
!5380 = !DILocation(line: 114, column: 63, scope: !5373)
!5381 = !DILocation(line: 116, column: 2, scope: !5373)
!5382 = !DILocation(line: 116, column: 21, scope: !5373)
!5383 = !DILocation(line: 118, column: 16, scope: !5373)
!5384 = !DILocation(line: 118, column: 8, scope: !5373)
!5385 = !DILocation(line: 118, column: 6, scope: !5373)
!5386 = !DILocation(line: 120, column: 6, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5373, file: !5374, line: 120, column: 6)
!5388 = !DILocation(line: 120, column: 6, scope: !5373)
!5389 = !DILocation(line: 121, column: 21, scope: !5387)
!5390 = !DILocation(line: 121, column: 26, scope: !5387)
!5391 = !DILocation(line: 121, column: 3, scope: !5387)
!5392 = !DILocation(line: 123, column: 9, scope: !5373)
!5393 = !DILocation(line: 124, column: 1, scope: !5373)
!5394 = !DILocation(line: 123, column: 2, scope: !5373)
!5395 = distinct !DISubprogram(name: "__rdmsr", scope: !5374, file: !5374, line: 80, type: !5375, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5396)
!5396 = !{!5397, !5398, !5399}
!5397 = !DILocalVariable(name: "msr", arg: 1, scope: !5395, file: !5374, line: 80, type: !7)
!5398 = !DILocalVariable(name: "low", scope: !5395, file: !5374, line: 82, type: !297)
!5399 = !DILocalVariable(name: "high", scope: !5395, file: !5374, line: 82, type: !297)
!5400 = !DILocation(line: 80, column: 64, scope: !5395)
!5401 = !DILocation(line: 82, column: 2, scope: !5395)
!5402 = !DILocation(line: 87, column: 45, scope: !5395)
!5403 = !DILocation(line: 84, column: 2, scope: !5395)
!5404 = !{i64 1134716, i64 1134737, i64 2149355052, i64 2149355096, i64 2149355119, i64 2149355152, i64 2149355183, i64 2149355222}
!5405 = !DILocation(line: 89, column: 9, scope: !5395)
!5406 = !DILocation(line: 90, column: 1, scope: !5395)
!5407 = !DILocation(line: 89, column: 2, scope: !5395)
!5408 = distinct !DISubprogram(name: "static_key_false", scope: !1152, file: !1152, line: 205, type: !5409, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5423)
!5409 = !DISubroutineType(types: !5410)
!5410 = !{!604, !5411}
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1152, line: 85, size: 128, elements: !5413)
!5413 = !{!5414, !5415}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5412, file: !1152, line: 86, baseType: !197, size: 32)
!5415 = !DIDerivedType(tag: DW_TAG_member, scope: !5412, file: !1152, line: 101, baseType: !5416, size: 64, offset: 64)
!5416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5412, file: !1152, line: 101, size: 64, elements: !5417)
!5417 = !{!5418, !5419, !5420}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5416, file: !1152, line: 102, baseType: !297, size: 64)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5416, file: !1152, line: 103, baseType: !1150, size: 64)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5416, file: !1152, line: 104, baseType: !5421, size: 64)
!5421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5422, size: 64)
!5422 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1152, line: 104, flags: DIFlagFwdDecl)
!5423 = !{!5424}
!5424 = !DILocalVariable(name: "key", arg: 1, scope: !5408, file: !1152, line: 205, type: !5411)
!5425 = !DILocation(line: 205, column: 65, scope: !5408)
!5426 = !DILocation(line: 207, column: 28, scope: !5408)
!5427 = !DILocation(line: 207, column: 9, scope: !5408)
!5428 = !DILocation(line: 207, column: 2, scope: !5408)
!5429 = !DISubprogram(name: "do_trace_read_msr", scope: !5374, file: !5374, line: 65, type: !5430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{null, !7, !411, !46}
!5432 = distinct !DISubprogram(name: "arch_static_branch", scope: !5433, file: !5433, line: 25, type: !5434, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5436)
!5433 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!5434 = !DISubroutineType(types: !5435)
!5435 = !{!604, !5411, !604}
!5436 = !{!5437, !5438, !5439}
!5437 = !DILocalVariable(name: "key", arg: 1, scope: !5432, file: !5433, line: 25, type: !5411)
!5438 = !DILocalVariable(name: "branch", arg: 2, scope: !5432, file: !5433, line: 25, type: !604)
!5439 = !DILabel(scope: !5432, name: "l_yes", file: !5433, line: 33)
!5440 = !DILocation(line: 25, column: 67, scope: !5432)
!5441 = !DILocation(line: 25, column: 77, scope: !5432)
!5442 = !DILocation(line: 30, column: 13, scope: !5432)
!5443 = !DILocation(line: 30, column: 28, scope: !5432)
!5444 = !DILocation(line: 30, column: 26, scope: !5432)
!5445 = !DILocation(line: 27, column: 2, scope: !5432)
!5446 = !{i64 956063, i64 956107, i64 2148440790, i64 2148440811, i64 2148440837, i64 2148440870, i64 2148440904, i64 2148440928}
!5447 = !DILocation(line: 32, column: 2, scope: !5432)
!5448 = !DILocation(line: 33, column: 1, scope: !5432)
!5449 = !DILocation(line: 34, column: 2, scope: !5432)
!5450 = !DILocation(line: 35, column: 1, scope: !5432)
!5451 = distinct !DISubprogram(name: "wrmsr", scope: !5374, file: !5374, line: 252, type: !5452, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5454)
!5452 = !DISubroutineType(types: !5453)
!5453 = !{null, !7, !1093, !1093}
!5454 = !{!5455, !5456, !5457}
!5455 = !DILocalVariable(name: "msr", arg: 1, scope: !5451, file: !5374, line: 252, type: !7)
!5456 = !DILocalVariable(name: "low", arg: 2, scope: !5451, file: !5374, line: 252, type: !1093)
!5457 = !DILocalVariable(name: "high", arg: 3, scope: !5451, file: !5374, line: 252, type: !1093)
!5458 = !DILocation(line: 252, column: 39, scope: !5451)
!5459 = !DILocation(line: 252, column: 48, scope: !5451)
!5460 = !DILocation(line: 252, column: 57, scope: !5451)
!5461 = !DILocation(line: 254, column: 19, scope: !5451)
!5462 = !DILocation(line: 254, column: 24, scope: !5451)
!5463 = !DILocation(line: 254, column: 29, scope: !5451)
!5464 = !DILocation(line: 254, column: 2, scope: !5451)
!5465 = !DILocation(line: 255, column: 1, scope: !5451)
!5466 = distinct !DISubprogram(name: "native_write_msr", scope: !5374, file: !5374, line: 143, type: !5452, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5467)
!5467 = !{!5468, !5469, !5470}
!5468 = !DILocalVariable(name: "msr", arg: 1, scope: !5466, file: !5374, line: 143, type: !7)
!5469 = !DILocalVariable(name: "low", arg: 2, scope: !5466, file: !5374, line: 143, type: !1093)
!5470 = !DILocalVariable(name: "high", arg: 3, scope: !5466, file: !5374, line: 143, type: !1093)
!5471 = !DILocation(line: 143, column: 31, scope: !5466)
!5472 = !DILocation(line: 143, column: 40, scope: !5466)
!5473 = !DILocation(line: 143, column: 49, scope: !5466)
!5474 = !DILocation(line: 145, column: 10, scope: !5466)
!5475 = !DILocation(line: 145, column: 15, scope: !5466)
!5476 = !DILocation(line: 145, column: 20, scope: !5466)
!5477 = !DILocation(line: 145, column: 2, scope: !5466)
!5478 = !DILocation(line: 147, column: 6, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5466, file: !5374, line: 147, column: 6)
!5480 = !DILocation(line: 147, column: 6, scope: !5466)
!5481 = !DILocation(line: 148, column: 22, scope: !5479)
!5482 = !DILocation(line: 148, column: 33, scope: !5479)
!5483 = !DILocation(line: 148, column: 28, scope: !5479)
!5484 = !DILocation(line: 148, column: 38, scope: !5479)
!5485 = !DILocation(line: 148, column: 46, scope: !5479)
!5486 = !DILocation(line: 148, column: 44, scope: !5479)
!5487 = !DILocation(line: 148, column: 3, scope: !5479)
!5488 = !DILocation(line: 149, column: 1, scope: !5466)
!5489 = distinct !DISubprogram(name: "__wrmsr", scope: !5374, file: !5374, line: 92, type: !5452, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5490)
!5490 = !{!5491, !5492, !5493}
!5491 = !DILocalVariable(name: "msr", arg: 1, scope: !5489, file: !5374, line: 92, type: !7)
!5492 = !DILocalVariable(name: "low", arg: 2, scope: !5489, file: !5374, line: 92, type: !1093)
!5493 = !DILocalVariable(name: "high", arg: 3, scope: !5489, file: !5374, line: 92, type: !1093)
!5494 = !DILocation(line: 92, column: 50, scope: !5489)
!5495 = !DILocation(line: 92, column: 59, scope: !5489)
!5496 = !DILocation(line: 92, column: 68, scope: !5489)
!5497 = !DILocation(line: 97, column: 17, scope: !5489)
!5498 = !DILocation(line: 97, column: 27, scope: !5489)
!5499 = !DILocation(line: 97, column: 38, scope: !5489)
!5500 = !DILocation(line: 94, column: 2, scope: !5489)
!5501 = !{i64 1134972, i64 1134993, i64 2149355551, i64 2149355595, i64 2149355618, i64 2149355651, i64 2149355682, i64 2149355721}
!5502 = !DILocation(line: 98, column: 1, scope: !5489)
!5503 = !DISubprogram(name: "do_trace_write_msr", scope: !5374, file: !5374, line: 64, type: !5430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5504 = distinct !DISubprogram(name: "kmalloc_array", scope: !132, file: !132, line: 629, type: !4605, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5505)
!5505 = !{!5506, !5507, !5508, !5509}
!5506 = !DILocalVariable(name: "n", arg: 1, scope: !5504, file: !132, line: 629, type: !294)
!5507 = !DILocalVariable(name: "size", arg: 2, scope: !5504, file: !132, line: 629, type: !294)
!5508 = !DILocalVariable(name: "flags", arg: 3, scope: !5504, file: !132, line: 629, type: !1255)
!5509 = !DILocalVariable(name: "bytes", scope: !5504, file: !132, line: 631, type: !294)
!5510 = !DILocation(line: 629, column: 61, scope: !5504)
!5511 = !DILocation(line: 629, column: 71, scope: !5504)
!5512 = !DILocation(line: 629, column: 83, scope: !5504)
!5513 = !DILocation(line: 631, column: 2, scope: !5504)
!5514 = !DILocation(line: 631, column: 9, scope: !5504)
!5515 = !DILocation(line: 633, column: 6, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5504, file: !132, line: 633, column: 6)
!5517 = !DILocation(line: 633, column: 6, scope: !5504)
!5518 = !DILocation(line: 634, column: 3, scope: !5516)
!5519 = !DILocation(line: 635, column: 27, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5504, file: !132, line: 635, column: 6)
!5521 = !DILocation(line: 635, column: 6, scope: !5520)
!5522 = !DILocation(line: 635, column: 30, scope: !5520)
!5523 = !DILocation(line: 635, column: 54, scope: !5520)
!5524 = !DILocation(line: 635, column: 33, scope: !5520)
!5525 = !DILocation(line: 635, column: 6, scope: !5504)
!5526 = !DILocation(line: 636, column: 18, scope: !5520)
!5527 = !DILocation(line: 636, column: 25, scope: !5520)
!5528 = !DILocation(line: 636, column: 10, scope: !5520)
!5529 = !DILocation(line: 636, column: 3, scope: !5520)
!5530 = !DILocation(line: 637, column: 19, scope: !5504)
!5531 = !DILocation(line: 637, column: 26, scope: !5504)
!5532 = !DILocation(line: 637, column: 9, scope: !5504)
!5533 = !DILocation(line: 637, column: 2, scope: !5504)
!5534 = !DILocation(line: 638, column: 1, scope: !5504)
!5535 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5536, file: !5536, line: 51, type: !5537, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5539)
!5536 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5537 = !DISubroutineType(types: !5538)
!5538 = !{!604, !604}
!5539 = !{!5540}
!5540 = !DILocalVariable(name: "overflow", arg: 1, scope: !5535, file: !5536, line: 51, type: !604)
!5541 = !DILocation(line: 51, column: 60, scope: !5535)
!5542 = !DILocation(line: 53, column: 9, scope: !5535)
!5543 = !DILocation(line: 53, column: 2, scope: !5535)
!5544 = !DISubprogram(name: "cppc_get_perf_caps", scope: !4628, file: !4628, line: 148, type: !5545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5545 = !DISubroutineType(types: !5546)
!5546 = !{!46, !46, !5547}
!5547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!5548 = !DISubprogram(name: "amd_get_highest_perf", scope: !1193, file: !1193, line: 700, type: !5549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!1093}
!5551 = distinct !DISubprogram(name: "div_u64", scope: !5552, file: !5552, line: 127, type: !5553, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5555)
!5552 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!5553 = !DISubroutineType(types: !5554)
!5554 = !{!411, !411, !1093}
!5555 = !{!5556, !5557, !5558}
!5556 = !DILocalVariable(name: "dividend", arg: 1, scope: !5551, file: !5552, line: 127, type: !411)
!5557 = !DILocalVariable(name: "divisor", arg: 2, scope: !5551, file: !5552, line: 127, type: !1093)
!5558 = !DILocalVariable(name: "remainder", scope: !5551, file: !5552, line: 129, type: !1093)
!5559 = !DILocation(line: 127, column: 31, scope: !5551)
!5560 = !DILocation(line: 127, column: 45, scope: !5551)
!5561 = !DILocation(line: 129, column: 2, scope: !5551)
!5562 = !DILocation(line: 129, column: 6, scope: !5551)
!5563 = !DILocation(line: 130, column: 21, scope: !5551)
!5564 = !DILocation(line: 130, column: 31, scope: !5551)
!5565 = !DILocation(line: 130, column: 9, scope: !5551)
!5566 = !DILocation(line: 131, column: 1, scope: !5551)
!5567 = !DILocation(line: 130, column: 2, scope: !5551)
!5568 = distinct !DISubprogram(name: "div_u64_rem", scope: !5552, file: !5552, line: 26, type: !5569, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5571)
!5569 = !DISubroutineType(types: !5570)
!5570 = !{!411, !411, !1093, !2395}
!5571 = !{!5572, !5573, !5574}
!5572 = !DILocalVariable(name: "dividend", arg: 1, scope: !5568, file: !5552, line: 26, type: !411)
!5573 = !DILocalVariable(name: "divisor", arg: 2, scope: !5568, file: !5552, line: 26, type: !1093)
!5574 = !DILocalVariable(name: "remainder", arg: 3, scope: !5568, file: !5552, line: 26, type: !2395)
!5575 = !DILocation(line: 26, column: 35, scope: !5568)
!5576 = !DILocation(line: 26, column: 49, scope: !5568)
!5577 = !DILocation(line: 26, column: 63, scope: !5568)
!5578 = !DILocation(line: 28, column: 15, scope: !5568)
!5579 = !DILocation(line: 28, column: 26, scope: !5568)
!5580 = !DILocation(line: 28, column: 24, scope: !5568)
!5581 = !DILocation(line: 28, column: 3, scope: !5568)
!5582 = !DILocation(line: 28, column: 13, scope: !5568)
!5583 = !DILocation(line: 29, column: 9, scope: !5568)
!5584 = !DILocation(line: 29, column: 20, scope: !5568)
!5585 = !DILocation(line: 29, column: 18, scope: !5568)
!5586 = !DILocation(line: 29, column: 2, scope: !5568)
!5587 = distinct !DISubprogram(name: "to_perf_data", scope: !3, file: !3, line: 67, type: !5588, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5590)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{!1256, !3328}
!5590 = !{!5591, !5592, !5595}
!5591 = !DILocalVariable(name: "data", arg: 1, scope: !5587, file: !3, line: 67, type: !3328)
!5592 = !DILocalVariable(name: "__vpp_verify", scope: !5593, file: !3, line: 69, type: !526)
!5593 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 69, column: 9)
!5594 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 69, column: 9)
!5595 = !DILocalVariable(name: "__ptr", scope: !5596, file: !3, line: 69, type: !297)
!5596 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 69, column: 9)
!5597 = !DILocation(line: 67, column: 89, scope: !5587)
!5598 = !DILocation(line: 69, column: 9, scope: !5594)
!5599 = !DILocation(line: 69, column: 9, scope: !5593)
!5600 = !DILocation(line: 69, column: 9, scope: !5596)
!5601 = !DILocation(line: 69, column: 2, scope: !5587)
!5602 = !DISubprogram(name: "cpufreq_cpu_get_raw", scope: !102, file: !102, line: 198, type: !5603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{!2073, !7}
!5605 = distinct !DISubprogram(name: "extract_freq", scope: !3, file: !3, line: 237, type: !5606, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5608)
!5606 = !DISubroutineType(types: !5607)
!5607 = !{!7, !2073, !1093}
!5608 = !{!5609, !5610, !5611}
!5609 = !DILocalVariable(name: "policy", arg: 1, scope: !5605, file: !3, line: 237, type: !2073)
!5610 = !DILocalVariable(name: "val", arg: 2, scope: !5605, file: !3, line: 237, type: !1093)
!5611 = !DILocalVariable(name: "data", scope: !5605, file: !3, line: 239, type: !3328)
!5612 = !DILocation(line: 237, column: 53, scope: !5605)
!5613 = !DILocation(line: 237, column: 65, scope: !5605)
!5614 = !DILocation(line: 239, column: 2, scope: !5605)
!5615 = !DILocation(line: 239, column: 28, scope: !5605)
!5616 = !DILocation(line: 239, column: 35, scope: !5605)
!5617 = !DILocation(line: 239, column: 43, scope: !5605)
!5618 = !DILocation(line: 241, column: 10, scope: !5605)
!5619 = !DILocation(line: 241, column: 16, scope: !5605)
!5620 = !DILocation(line: 241, column: 2, scope: !5605)
!5621 = !DILocation(line: 244, column: 22, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 241, column: 29)
!5623 = !DILocation(line: 244, column: 30, scope: !5622)
!5624 = !DILocation(line: 244, column: 10, scope: !5622)
!5625 = !DILocation(line: 244, column: 3, scope: !5622)
!5626 = !DILocation(line: 246, column: 21, scope: !5622)
!5627 = !DILocation(line: 246, column: 29, scope: !5622)
!5628 = !DILocation(line: 246, column: 10, scope: !5622)
!5629 = !DILocation(line: 246, column: 3, scope: !5622)
!5630 = !DILocation(line: 248, column: 3, scope: !5622)
!5631 = !DILocation(line: 250, column: 1, scope: !5605)
!5632 = distinct !DISubprogram(name: "get_cur_val", scope: !3, file: !3, line: 353, type: !5633, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5635)
!5633 = !DISubroutineType(types: !5634)
!5634 = !{!1093, !1311, !3328}
!5635 = !{!5636, !5637, !5638}
!5636 = !DILocalVariable(name: "mask", arg: 1, scope: !5632, file: !3, line: 353, type: !1311)
!5637 = !DILocalVariable(name: "data", arg: 2, scope: !5632, file: !3, line: 353, type: !3328)
!5638 = !DILocalVariable(name: "val", scope: !5632, file: !3, line: 355, type: !1093)
!5639 = !DILocation(line: 353, column: 46, scope: !5632)
!5640 = !DILocation(line: 353, column: 78, scope: !5632)
!5641 = !DILocation(line: 355, column: 2, scope: !5632)
!5642 = !DILocation(line: 355, column: 6, scope: !5632)
!5643 = !DILocation(line: 357, column: 6, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 357, column: 6)
!5645 = !DILocation(line: 357, column: 6, scope: !5632)
!5646 = !DILocation(line: 358, column: 3, scope: !5644)
!5647 = !DILocation(line: 360, column: 17, scope: !5632)
!5648 = !DILocation(line: 360, column: 23, scope: !5632)
!5649 = !DILocation(line: 360, column: 8, scope: !5632)
!5650 = !DILocation(line: 360, column: 6, scope: !5632)
!5651 = !DILocation(line: 362, column: 2, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 362, column: 2)
!5653 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 362, column: 2)
!5654 = !DILocation(line: 362, column: 2, scope: !5653)
!5655 = !DILocation(line: 364, column: 9, scope: !5632)
!5656 = !DILocation(line: 364, column: 2, scope: !5632)
!5657 = !DILocation(line: 365, column: 1, scope: !5632)
!5658 = distinct !DISubprogram(name: "get_cpu_mask", scope: !1294, file: !1294, line: 1056, type: !5659, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5661)
!5659 = !DISubroutineType(types: !5660)
!5660 = !{!1311, !7}
!5661 = !{!5662, !5663}
!5662 = !DILocalVariable(name: "cpu", arg: 1, scope: !5658, file: !1294, line: 1056, type: !7)
!5663 = !DILocalVariable(name: "p", scope: !5658, file: !1294, line: 1058, type: !5157)
!5664 = !DILocation(line: 1056, column: 63, scope: !5658)
!5665 = !DILocation(line: 1058, column: 2, scope: !5658)
!5666 = !DILocation(line: 1058, column: 23, scope: !5658)
!5667 = !DILocation(line: 1058, column: 46, scope: !5658)
!5668 = !DILocation(line: 1058, column: 50, scope: !5658)
!5669 = !DILocation(line: 1058, column: 44, scope: !5658)
!5670 = !DILocation(line: 1058, column: 27, scope: !5658)
!5671 = !DILocation(line: 1059, column: 7, scope: !5658)
!5672 = !DILocation(line: 1059, column: 11, scope: !5658)
!5673 = !DILocation(line: 1059, column: 4, scope: !5658)
!5674 = !DILocation(line: 1060, column: 9, scope: !5658)
!5675 = !DILocation(line: 1061, column: 1, scope: !5658)
!5676 = !DILocation(line: 1060, column: 2, scope: !5658)
!5677 = distinct !DISubprogram(name: "extract_msr", scope: !3, file: !3, line: 216, type: !5606, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5678)
!5678 = !{!5679, !5680, !5681, !5682, !5683}
!5679 = !DILocalVariable(name: "policy", arg: 1, scope: !5677, file: !3, line: 216, type: !2073)
!5680 = !DILocalVariable(name: "msr", arg: 2, scope: !5677, file: !3, line: 216, type: !1093)
!5681 = !DILocalVariable(name: "data", scope: !5677, file: !3, line: 218, type: !3328)
!5682 = !DILocalVariable(name: "pos", scope: !5677, file: !3, line: 219, type: !2129)
!5683 = !DILocalVariable(name: "perf", scope: !5677, file: !3, line: 220, type: !1256)
!5684 = !DILocation(line: 216, column: 52, scope: !5677)
!5685 = !DILocation(line: 216, column: 64, scope: !5677)
!5686 = !DILocation(line: 218, column: 2, scope: !5677)
!5687 = !DILocation(line: 218, column: 28, scope: !5677)
!5688 = !DILocation(line: 218, column: 35, scope: !5677)
!5689 = !DILocation(line: 218, column: 43, scope: !5677)
!5690 = !DILocation(line: 219, column: 2, scope: !5677)
!5691 = !DILocation(line: 219, column: 34, scope: !5677)
!5692 = !DILocation(line: 220, column: 2, scope: !5677)
!5693 = !DILocation(line: 220, column: 37, scope: !5677)
!5694 = !DILocation(line: 222, column: 20, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 222, column: 6)
!5696 = !DILocation(line: 222, column: 6, scope: !5695)
!5697 = !DILocation(line: 222, column: 31, scope: !5695)
!5698 = !DILocation(line: 222, column: 6, scope: !5677)
!5699 = !DILocation(line: 223, column: 7, scope: !5695)
!5700 = !DILocation(line: 223, column: 3, scope: !5695)
!5701 = !DILocation(line: 224, column: 25, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 224, column: 11)
!5703 = !DILocation(line: 224, column: 11, scope: !5702)
!5704 = !DILocation(line: 224, column: 36, scope: !5702)
!5705 = !DILocation(line: 224, column: 11, scope: !5695)
!5706 = !DILocation(line: 225, column: 7, scope: !5702)
!5707 = !DILocation(line: 225, column: 3, scope: !5702)
!5708 = !DILocation(line: 227, column: 7, scope: !5702)
!5709 = !DILocation(line: 229, column: 22, scope: !5677)
!5710 = !DILocation(line: 229, column: 9, scope: !5677)
!5711 = !DILocation(line: 229, column: 7, scope: !5677)
!5712 = !DILocation(line: 231, column: 2, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 231, column: 2)
!5714 = !DILocation(line: 231, column: 2, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5713, file: !3, line: 231, column: 2)
!5716 = !DILocation(line: 232, column: 7, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 232, column: 7)
!5718 = !DILocation(line: 232, column: 14, scope: !5717)
!5719 = !DILocation(line: 232, column: 20, scope: !5717)
!5720 = !DILocation(line: 232, column: 27, scope: !5717)
!5721 = !DILocation(line: 232, column: 32, scope: !5717)
!5722 = !DILocation(line: 232, column: 45, scope: !5717)
!5723 = !DILocation(line: 232, column: 11, scope: !5717)
!5724 = !DILocation(line: 232, column: 7, scope: !5715)
!5725 = !DILocation(line: 233, column: 11, scope: !5717)
!5726 = !DILocation(line: 233, column: 16, scope: !5717)
!5727 = !DILocation(line: 233, column: 4, scope: !5717)
!5728 = distinct !{!5728, !5712, !5729, !3562, !3563}
!5729 = !DILocation(line: 233, column: 16, scope: !5713)
!5730 = !DILocation(line: 234, column: 9, scope: !5677)
!5731 = !DILocation(line: 234, column: 17, scope: !5677)
!5732 = !DILocation(line: 234, column: 31, scope: !5677)
!5733 = !DILocation(line: 234, column: 2, scope: !5677)
!5734 = !DILocation(line: 235, column: 1, scope: !5677)
!5735 = distinct !DISubprogram(name: "extract_io", scope: !3, file: !3, line: 201, type: !5606, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5736)
!5736 = !{!5737, !5738, !5739, !5740, !5741}
!5737 = !DILocalVariable(name: "policy", arg: 1, scope: !5735, file: !3, line: 201, type: !2073)
!5738 = !DILocalVariable(name: "value", arg: 2, scope: !5735, file: !3, line: 201, type: !1093)
!5739 = !DILocalVariable(name: "data", scope: !5735, file: !3, line: 203, type: !3328)
!5740 = !DILocalVariable(name: "perf", scope: !5735, file: !3, line: 204, type: !1256)
!5741 = !DILocalVariable(name: "i", scope: !5735, file: !3, line: 205, type: !46)
!5742 = !DILocation(line: 201, column: 51, scope: !5735)
!5743 = !DILocation(line: 201, column: 63, scope: !5735)
!5744 = !DILocation(line: 203, column: 2, scope: !5735)
!5745 = !DILocation(line: 203, column: 28, scope: !5735)
!5746 = !DILocation(line: 203, column: 35, scope: !5735)
!5747 = !DILocation(line: 203, column: 43, scope: !5735)
!5748 = !DILocation(line: 204, column: 2, scope: !5735)
!5749 = !DILocation(line: 204, column: 37, scope: !5735)
!5750 = !DILocation(line: 205, column: 2, scope: !5735)
!5751 = !DILocation(line: 205, column: 6, scope: !5735)
!5752 = !DILocation(line: 207, column: 22, scope: !5735)
!5753 = !DILocation(line: 207, column: 9, scope: !5735)
!5754 = !DILocation(line: 207, column: 7, scope: !5735)
!5755 = !DILocation(line: 209, column: 9, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 209, column: 2)
!5757 = !DILocation(line: 209, column: 7, scope: !5756)
!5758 = !DILocation(line: 209, column: 14, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5756, file: !3, line: 209, column: 2)
!5760 = !DILocation(line: 209, column: 18, scope: !5759)
!5761 = !DILocation(line: 209, column: 24, scope: !5759)
!5762 = !DILocation(line: 209, column: 16, scope: !5759)
!5763 = !DILocation(line: 209, column: 2, scope: !5756)
!5764 = !DILocation(line: 210, column: 7, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 210, column: 7)
!5766 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 209, column: 42)
!5767 = !DILocation(line: 210, column: 16, scope: !5765)
!5768 = !DILocation(line: 210, column: 22, scope: !5765)
!5769 = !DILocation(line: 210, column: 29, scope: !5765)
!5770 = !DILocation(line: 210, column: 32, scope: !5765)
!5771 = !DILocation(line: 210, column: 13, scope: !5765)
!5772 = !DILocation(line: 210, column: 7, scope: !5766)
!5773 = !DILocation(line: 211, column: 11, scope: !5765)
!5774 = !DILocation(line: 211, column: 19, scope: !5765)
!5775 = !DILocation(line: 211, column: 30, scope: !5765)
!5776 = !DILocation(line: 211, column: 33, scope: !5765)
!5777 = !DILocation(line: 211, column: 4, scope: !5765)
!5778 = !DILocation(line: 212, column: 2, scope: !5766)
!5779 = !DILocation(line: 209, column: 38, scope: !5759)
!5780 = !DILocation(line: 209, column: 2, scope: !5759)
!5781 = distinct !{!5781, !5763, !5782, !3562, !3563}
!5782 = !DILocation(line: 212, column: 2, scope: !5756)
!5783 = !DILocation(line: 213, column: 2, scope: !5735)
!5784 = !DILocation(line: 214, column: 1, scope: !5735)
!5785 = distinct !DISubprogram(name: "cpumask_empty", scope: !1294, file: !1294, line: 672, type: !5786, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5788)
!5786 = !DISubroutineType(types: !5787)
!5787 = !{!604, !1311}
!5788 = !{!5789}
!5789 = !DILocalVariable(name: "srcp", arg: 1, scope: !5785, file: !1294, line: 672, type: !1311)
!5790 = !DILocation(line: 672, column: 56, scope: !5785)
!5791 = !DILocation(line: 674, column: 22, scope: !5785)
!5792 = !DILocation(line: 674, column: 9, scope: !5785)
!5793 = !DILocation(line: 674, column: 2, scope: !5785)
!5794 = distinct !DISubprogram(name: "drv_read", scope: !3, file: !3, line: 312, type: !5795, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5797)
!5795 = !DISubroutineType(types: !5796)
!5796 = !{!1093, !3328, !1311}
!5797 = !{!5798, !5799, !5800, !5801, !5802, !5803, !5805}
!5798 = !DILocalVariable(name: "data", arg: 1, scope: !5794, file: !3, line: 312, type: !3328)
!5799 = !DILocalVariable(name: "mask", arg: 2, scope: !5794, file: !3, line: 312, type: !1311)
!5800 = !DILocalVariable(name: "perf", scope: !5794, file: !3, line: 314, type: !1256)
!5801 = !DILocalVariable(name: "cmd", scope: !5794, file: !3, line: 315, type: !3468)
!5802 = !DILocalVariable(name: "err", scope: !5794, file: !3, line: 319, type: !46)
!5803 = !DILocalVariable(name: "__ret_warn_on", scope: !5804, file: !3, line: 322, type: !46)
!5804 = distinct !DILexicalBlock(scope: !5794, file: !3, line: 322, column: 2)
!5805 = !DILocalVariable(name: "__flags", scope: !5806, file: !3, line: 322, type: !46)
!5806 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 322, column: 2)
!5807 = distinct !DILexicalBlock(scope: !5804, file: !3, line: 322, column: 2)
!5808 = !DILocation(line: 312, column: 47, scope: !5794)
!5809 = !DILocation(line: 312, column: 75, scope: !5794)
!5810 = !DILocation(line: 314, column: 2, scope: !5794)
!5811 = !DILocation(line: 314, column: 37, scope: !5794)
!5812 = !DILocation(line: 314, column: 57, scope: !5794)
!5813 = !DILocation(line: 314, column: 44, scope: !5794)
!5814 = !DILocation(line: 315, column: 2, scope: !5794)
!5815 = !DILocation(line: 315, column: 17, scope: !5794)
!5816 = !DILocation(line: 315, column: 23, scope: !5794)
!5817 = !DILocation(line: 316, column: 11, scope: !5794)
!5818 = !DILocation(line: 316, column: 17, scope: !5794)
!5819 = !DILocation(line: 317, column: 16, scope: !5794)
!5820 = !DILocation(line: 317, column: 22, scope: !5794)
!5821 = !DILocation(line: 317, column: 8, scope: !5794)
!5822 = !DILocation(line: 319, column: 2, scope: !5794)
!5823 = !DILocation(line: 319, column: 6, scope: !5794)
!5824 = !DILocation(line: 321, column: 30, scope: !5794)
!5825 = !DILocation(line: 321, column: 8, scope: !5794)
!5826 = !DILocation(line: 321, column: 6, scope: !5794)
!5827 = !DILocation(line: 322, column: 2, scope: !5804)
!5828 = !DILocation(line: 322, column: 2, scope: !5807)
!5829 = !DILocation(line: 322, column: 2, scope: !5806)
!5830 = !DILocation(line: 322, column: 2, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 322, column: 2)
!5832 = !DILocation(line: 322, column: 2, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 322, column: 2)
!5834 = !{i64 2154566955, i64 2154566984, i64 2154567030, i64 2154567088, i64 2154567142, i64 2154567196, i64 2154567251, i64 2154567282, i64 2154567590, i64 2154567596, i64 2154567643, i64 2154567666, i64 2154567692}
!5835 = !DILocation(line: 322, column: 2, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 322, column: 2)
!5837 = !DILocation(line: 322, column: 2, scope: !5794)
!5838 = !DILocation(line: 323, column: 13, scope: !5794)
!5839 = !DILocation(line: 324, column: 1, scope: !5794)
!5840 = !DILocation(line: 323, column: 2, scope: !5794)
!5841 = distinct !DISubprogram(name: "bitmap_empty", scope: !5154, file: !5154, line: 436, type: !5842, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5844)
!5842 = !DISubroutineType(types: !5843)
!5843 = !{!604, !5157, !7}
!5844 = !{!5845, !5846}
!5845 = !DILocalVariable(name: "src", arg: 1, scope: !5841, file: !5154, line: 436, type: !5157)
!5846 = !DILocalVariable(name: "nbits", arg: 2, scope: !5841, file: !5154, line: 436, type: !7)
!5847 = !DILocation(line: 436, column: 54, scope: !5841)
!5848 = !DILocation(line: 436, column: 68, scope: !5841)
!5849 = !DILocation(line: 438, column: 6, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5841, file: !5154, line: 438, column: 6)
!5851 = !DILocation(line: 438, column: 6, scope: !5841)
!5852 = !DILocation(line: 439, column: 14, scope: !5850)
!5853 = !DILocation(line: 439, column: 13, scope: !5850)
!5854 = !DILocation(line: 439, column: 20, scope: !5850)
!5855 = !DILocation(line: 439, column: 18, scope: !5850)
!5856 = !DILocation(line: 439, column: 10, scope: !5850)
!5857 = !DILocation(line: 439, column: 3, scope: !5850)
!5858 = !DILocation(line: 441, column: 24, scope: !5841)
!5859 = !DILocation(line: 441, column: 29, scope: !5841)
!5860 = !DILocation(line: 441, column: 9, scope: !5841)
!5861 = !DILocation(line: 441, column: 39, scope: !5841)
!5862 = !DILocation(line: 441, column: 36, scope: !5841)
!5863 = !DILocation(line: 441, column: 2, scope: !5841)
!5864 = !DILocation(line: 442, column: 1, scope: !5841)
!5865 = distinct !DISubprogram(name: "find_first_bit", scope: !5866, file: !5866, line: 200, type: !5867, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5869)
!5866 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!5867 = !DISubroutineType(types: !5868)
!5868 = !{!297, !5157, !297}
!5869 = !{!5870, !5871, !5872}
!5870 = !DILocalVariable(name: "addr", arg: 1, scope: !5865, file: !5866, line: 200, type: !5157)
!5871 = !DILocalVariable(name: "size", arg: 2, scope: !5865, file: !5866, line: 200, type: !297)
!5872 = !DILocalVariable(name: "val", scope: !5873, file: !5866, line: 203, type: !297)
!5873 = distinct !DILexicalBlock(scope: !5874, file: !5866, line: 202, column: 31)
!5874 = distinct !DILexicalBlock(scope: !5865, file: !5866, line: 202, column: 6)
!5875 = !DILocation(line: 200, column: 51, scope: !5865)
!5876 = !DILocation(line: 200, column: 71, scope: !5865)
!5877 = !DILocation(line: 202, column: 6, scope: !5874)
!5878 = !DILocation(line: 202, column: 6, scope: !5865)
!5879 = !DILocation(line: 203, column: 3, scope: !5873)
!5880 = !DILocation(line: 203, column: 17, scope: !5873)
!5881 = !DILocation(line: 203, column: 24, scope: !5873)
!5882 = !DILocation(line: 203, column: 23, scope: !5873)
!5883 = !DILocation(line: 203, column: 31, scope: !5873)
!5884 = !DILocation(line: 203, column: 29, scope: !5873)
!5885 = !DILocation(line: 205, column: 10, scope: !5873)
!5886 = !DILocation(line: 205, column: 16, scope: !5873)
!5887 = !DILocation(line: 205, column: 29, scope: !5873)
!5888 = !DILocation(line: 205, column: 3, scope: !5873)
!5889 = !DILocation(line: 206, column: 2, scope: !5874)
!5890 = !DILocation(line: 208, column: 25, scope: !5865)
!5891 = !DILocation(line: 208, column: 31, scope: !5865)
!5892 = !DILocation(line: 208, column: 9, scope: !5865)
!5893 = !DILocation(line: 208, column: 2, scope: !5865)
!5894 = !DILocation(line: 209, column: 1, scope: !5865)
!5895 = distinct !DISubprogram(name: "variable__ffs", scope: !4398, file: !4398, line: 250, type: !5222, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5896)
!5896 = !{!5897}
!5897 = !DILocalVariable(name: "word", arg: 1, scope: !5895, file: !4398, line: 250, type: !297)
!5898 = !DILocation(line: 250, column: 66, scope: !5895)
!5899 = !DILocation(line: 254, column: 11, scope: !5895)
!5900 = !DILocation(line: 252, column: 2, scope: !5895)
!5901 = !{i64 319789}
!5902 = !DILocation(line: 255, column: 9, scope: !5895)
!5903 = !DILocation(line: 255, column: 2, scope: !5895)
!5904 = !DISubprogram(name: "_find_first_bit", scope: !5866, file: !5866, line: 21, type: !5867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5905 = !DISubprogram(name: "smp_call_function_any", scope: !5906, file: !5906, line: 160, type: !5907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5906 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e44047123e6e4f39e255273d47d7376")
!5907 = !DISubroutineType(types: !5908)
!5908 = !{!46, !1311, !5909, !319, !46}
!5909 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !5906, line: 17, baseType: !667)
!5910 = distinct !DISubprogram(name: "do_drv_read", scope: !3, file: !3, line: 305, type: !668, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5911)
!5911 = !{!5912, !5913}
!5912 = !DILocalVariable(name: "_cmd", arg: 1, scope: !5910, file: !3, line: 305, type: !319)
!5913 = !DILocalVariable(name: "cmd", scope: !5910, file: !3, line: 307, type: !5914)
!5914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!5915 = !DILocation(line: 305, column: 31, scope: !5910)
!5916 = !DILocation(line: 307, column: 2, scope: !5910)
!5917 = !DILocation(line: 307, column: 18, scope: !5910)
!5918 = !DILocation(line: 307, column: 24, scope: !5910)
!5919 = !DILocation(line: 309, column: 13, scope: !5910)
!5920 = !DILocation(line: 309, column: 18, scope: !5910)
!5921 = !DILocation(line: 309, column: 23, scope: !5910)
!5922 = !DILocation(line: 309, column: 28, scope: !5910)
!5923 = !DILocation(line: 309, column: 33, scope: !5910)
!5924 = !DILocation(line: 309, column: 2, scope: !5910)
!5925 = !DILocation(line: 309, column: 7, scope: !5910)
!5926 = !DILocation(line: 309, column: 11, scope: !5910)
!5927 = !DILocation(line: 310, column: 1, scope: !5910)
!5928 = distinct !DISubprogram(name: "on_each_cpu_mask", scope: !5906, file: !5906, line: 90, type: !5929, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5931)
!5929 = !DISubroutineType(types: !5930)
!5930 = !{null, !1311, !5909, !319, !604}
!5931 = !{!5932, !5933, !5934, !5935}
!5932 = !DILocalVariable(name: "mask", arg: 1, scope: !5928, file: !5906, line: 90, type: !1311)
!5933 = !DILocalVariable(name: "func", arg: 2, scope: !5928, file: !5906, line: 91, type: !5909)
!5934 = !DILocalVariable(name: "info", arg: 3, scope: !5928, file: !5906, line: 91, type: !319)
!5935 = !DILocalVariable(name: "wait", arg: 4, scope: !5928, file: !5906, line: 91, type: !604)
!5936 = !DILocation(line: 90, column: 59, scope: !5928)
!5937 = !DILocation(line: 91, column: 25, scope: !5928)
!5938 = !DILocation(line: 91, column: 37, scope: !5928)
!5939 = !DILocation(line: 91, column: 48, scope: !5928)
!5940 = !DILocation(line: 93, column: 30, scope: !5928)
!5941 = !DILocation(line: 93, column: 36, scope: !5928)
!5942 = !DILocation(line: 93, column: 42, scope: !5928)
!5943 = !DILocation(line: 93, column: 48, scope: !5928)
!5944 = !DILocation(line: 93, column: 2, scope: !5928)
!5945 = !DILocation(line: 94, column: 1, scope: !5928)
!5946 = distinct !DISubprogram(name: "boost_set_msr_each", scope: !3, file: !3, line: 129, type: !668, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5947)
!5947 = !{!5948, !5949}
!5948 = !DILocalVariable(name: "p_en", arg: 1, scope: !5946, file: !3, line: 129, type: !319)
!5949 = !DILocalVariable(name: "enable", scope: !5946, file: !3, line: 131, type: !604)
!5950 = !DILocation(line: 129, column: 38, scope: !5946)
!5951 = !DILocation(line: 131, column: 2, scope: !5946)
!5952 = !DILocation(line: 131, column: 7, scope: !5946)
!5953 = !DILocation(line: 131, column: 23, scope: !5946)
!5954 = !DILocation(line: 131, column: 16, scope: !5946)
!5955 = !DILocation(line: 133, column: 16, scope: !5946)
!5956 = !DILocation(line: 133, column: 2, scope: !5946)
!5957 = !DILocation(line: 134, column: 1, scope: !5946)
!5958 = !DISubprogram(name: "on_each_cpu_cond_mask", scope: !5906, file: !5906, line: 53, type: !5959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5959 = !DISubroutineType(types: !5960)
!5960 = !{null, !5961, !5909, !319, !604, !1311}
!5961 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_cond_func_t", file: !5906, line: 18, baseType: !5962)
!5962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5963, size: 64)
!5963 = !DISubroutineType(types: !5964)
!5964 = !{!604, !46, !319}
!5965 = distinct !DISubprogram(name: "boost_set_msr", scope: !3, file: !3, line: 97, type: !5966, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5968)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{!46, !604}
!5968 = !{!5969, !5970, !5971, !5972}
!5969 = !DILocalVariable(name: "enable", arg: 1, scope: !5965, file: !3, line: 97, type: !604)
!5970 = !DILocalVariable(name: "msr_addr", scope: !5965, file: !3, line: 99, type: !1093)
!5971 = !DILocalVariable(name: "msr_mask", scope: !5965, file: !3, line: 100, type: !411)
!5972 = !DILocalVariable(name: "val", scope: !5965, file: !3, line: 100, type: !411)
!5973 = !DILocation(line: 97, column: 31, scope: !5965)
!5974 = !DILocation(line: 99, column: 2, scope: !5965)
!5975 = !DILocation(line: 99, column: 6, scope: !5965)
!5976 = !DILocation(line: 100, column: 2, scope: !5965)
!5977 = !DILocation(line: 100, column: 6, scope: !5965)
!5978 = !DILocation(line: 100, column: 16, scope: !5965)
!5979 = !DILocation(line: 102, column: 24, scope: !5965)
!5980 = !DILocation(line: 102, column: 10, scope: !5965)
!5981 = !DILocation(line: 102, column: 2, scope: !5965)
!5982 = !DILocation(line: 106, column: 12, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5965, file: !3, line: 102, column: 36)
!5984 = !DILocation(line: 107, column: 12, scope: !5983)
!5985 = !DILocation(line: 108, column: 3, scope: !5983)
!5986 = !DILocation(line: 111, column: 12, scope: !5983)
!5987 = !DILocation(line: 112, column: 12, scope: !5983)
!5988 = !DILocation(line: 113, column: 3, scope: !5983)
!5989 = !DILocation(line: 115, column: 3, scope: !5983)
!5990 = !DILocation(line: 118, column: 2, scope: !5965)
!5991 = !DILocation(line: 120, column: 6, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5965, file: !3, line: 120, column: 6)
!5993 = !DILocation(line: 120, column: 6, scope: !5965)
!5994 = !DILocation(line: 121, column: 11, scope: !5992)
!5995 = !DILocation(line: 121, column: 10, scope: !5992)
!5996 = !DILocation(line: 121, column: 7, scope: !5992)
!5997 = !DILocation(line: 121, column: 3, scope: !5992)
!5998 = !DILocation(line: 123, column: 10, scope: !5992)
!5999 = !DILocation(line: 123, column: 7, scope: !5992)
!6000 = !DILocation(line: 125, column: 9, scope: !5965)
!6001 = !DILocation(line: 125, column: 19, scope: !5965)
!6002 = !DILocation(line: 125, column: 2, scope: !5965)
!6003 = !DILocation(line: 126, column: 2, scope: !5965)
!6004 = !DILocation(line: 127, column: 1, scope: !5965)
!6005 = distinct !DISubprogram(name: "wrmsrl", scope: !5374, file: !5374, line: 260, type: !6006, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6008)
!6006 = !DISubroutineType(types: !6007)
!6007 = !{null, !7, !411}
!6008 = !{!6009, !6010}
!6009 = !DILocalVariable(name: "msr", arg: 1, scope: !6005, file: !5374, line: 260, type: !7)
!6010 = !DILocalVariable(name: "val", arg: 2, scope: !6005, file: !5374, line: 260, type: !411)
!6011 = !DILocation(line: 260, column: 40, scope: !6005)
!6012 = !DILocation(line: 260, column: 49, scope: !6005)
!6013 = !DILocation(line: 262, column: 19, scope: !6005)
!6014 = !DILocation(line: 262, column: 30, scope: !6005)
!6015 = !DILocation(line: 262, column: 34, scope: !6005)
!6016 = !DILocation(line: 262, column: 24, scope: !6005)
!6017 = !DILocation(line: 262, column: 58, scope: !6005)
!6018 = !DILocation(line: 262, column: 62, scope: !6005)
!6019 = !DILocation(line: 262, column: 52, scope: !6005)
!6020 = !DILocation(line: 262, column: 2, scope: !6005)
!6021 = !DILocation(line: 263, column: 1, scope: !6005)
!6022 = !DILocation(line: 334, column: 49, scope: !3459)
!6023 = !DILocation(line: 335, column: 31, scope: !3459)
!6024 = !DILocation(line: 335, column: 41, scope: !3459)
!6025 = !DILocation(line: 337, column: 2, scope: !3459)
!6026 = !DILocation(line: 337, column: 37, scope: !3459)
!6027 = !DILocation(line: 337, column: 57, scope: !3459)
!6028 = !DILocation(line: 337, column: 44, scope: !3459)
!6029 = !DILocation(line: 338, column: 2, scope: !3459)
!6030 = !DILocation(line: 338, column: 17, scope: !3459)
!6031 = !DILocation(line: 338, column: 23, scope: !3459)
!6032 = !DILocation(line: 339, column: 11, scope: !3459)
!6033 = !DILocation(line: 339, column: 17, scope: !3459)
!6034 = !DILocation(line: 340, column: 10, scope: !3459)
!6035 = !DILocation(line: 341, column: 17, scope: !3459)
!6036 = !DILocation(line: 341, column: 23, scope: !3459)
!6037 = !DILocation(line: 341, column: 8, scope: !3459)
!6038 = !DILocation(line: 343, column: 2, scope: !3459)
!6039 = !DILocation(line: 343, column: 6, scope: !3459)
!6040 = !DILocation(line: 345, column: 13, scope: !3481)
!6041 = !DILocation(line: 345, column: 13, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 345, column: 13)
!6043 = !{i64 2154568117}
!6044 = !DILocation(line: 345, column: 13, scope: !3480)
!6045 = !DILocation(line: 345, column: 13, scope: !3479)
!6046 = !DILocation(line: 345, column: 13, scope: !3483)
!6047 = !DILocation(line: 345, column: 13, scope: !3485)
!6048 = !{i64 2154570755}
!6049 = !DILocation(line: 345, column: 11, scope: !3459)
!6050 = !DILocation(line: 346, column: 23, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 346, column: 6)
!6052 = !DILocation(line: 346, column: 33, scope: !6051)
!6053 = !DILocation(line: 346, column: 6, scope: !6051)
!6054 = !DILocation(line: 346, column: 6, scope: !3459)
!6055 = !DILocation(line: 347, column: 3, scope: !6051)
!6056 = !DILocation(line: 349, column: 25, scope: !3459)
!6057 = !DILocation(line: 349, column: 2, scope: !3459)
!6058 = !DILocation(line: 350, column: 2, scope: !3459)
!6059 = !DILocation(line: 350, column: 2, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 350, column: 2)
!6061 = !{i64 2154571672}
!6062 = !DILocation(line: 350, column: 2, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 350, column: 2)
!6064 = !DILocation(line: 350, column: 2, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6063, file: !3, line: 350, column: 2)
!6066 = !{i64 2154571854}
!6067 = !DILocation(line: 351, column: 1, scope: !3459)
!6068 = distinct !DISubprogram(name: "check_freqs", scope: !3, file: !3, line: 399, type: !6069, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6071)
!6069 = !DISubroutineType(types: !6070)
!6070 = !{!7, !2073, !1311, !7}
!6071 = !{!6072, !6073, !6074, !6075, !6076, !6077}
!6072 = !DILocalVariable(name: "policy", arg: 1, scope: !6068, file: !3, line: 399, type: !2073)
!6073 = !DILocalVariable(name: "mask", arg: 2, scope: !6068, file: !3, line: 400, type: !1311)
!6074 = !DILocalVariable(name: "freq", arg: 3, scope: !6068, file: !3, line: 400, type: !7)
!6075 = !DILocalVariable(name: "data", scope: !6068, file: !3, line: 402, type: !3328)
!6076 = !DILocalVariable(name: "cur_freq", scope: !6068, file: !3, line: 403, type: !7)
!6077 = !DILocalVariable(name: "i", scope: !6068, file: !3, line: 404, type: !7)
!6078 = !DILocation(line: 399, column: 56, scope: !6068)
!6079 = !DILocation(line: 400, column: 27, scope: !6068)
!6080 = !DILocation(line: 400, column: 46, scope: !6068)
!6081 = !DILocation(line: 402, column: 2, scope: !6068)
!6082 = !DILocation(line: 402, column: 28, scope: !6068)
!6083 = !DILocation(line: 402, column: 35, scope: !6068)
!6084 = !DILocation(line: 402, column: 43, scope: !6068)
!6085 = !DILocation(line: 403, column: 2, scope: !6068)
!6086 = !DILocation(line: 403, column: 15, scope: !6068)
!6087 = !DILocation(line: 404, column: 2, scope: !6068)
!6088 = !DILocation(line: 404, column: 15, scope: !6068)
!6089 = !DILocation(line: 406, column: 9, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6068, file: !3, line: 406, column: 2)
!6091 = !DILocation(line: 406, column: 7, scope: !6090)
!6092 = !DILocation(line: 406, column: 14, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 406, column: 2)
!6094 = !DILocation(line: 406, column: 16, scope: !6093)
!6095 = !DILocation(line: 406, column: 2, scope: !6090)
!6096 = !DILocation(line: 407, column: 27, scope: !6097)
!6097 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 406, column: 28)
!6098 = !DILocation(line: 407, column: 47, scope: !6097)
!6099 = !DILocation(line: 407, column: 53, scope: !6097)
!6100 = !DILocation(line: 407, column: 35, scope: !6097)
!6101 = !DILocation(line: 407, column: 14, scope: !6097)
!6102 = !DILocation(line: 407, column: 12, scope: !6097)
!6103 = !DILocation(line: 408, column: 7, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 408, column: 7)
!6105 = !DILocation(line: 408, column: 19, scope: !6104)
!6106 = !DILocation(line: 408, column: 16, scope: !6104)
!6107 = !DILocation(line: 408, column: 7, scope: !6097)
!6108 = !DILocation(line: 409, column: 4, scope: !6104)
!6109 = !DILocation(line: 410, column: 3, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6111, file: !3, line: 410, column: 3)
!6111 = distinct !DILexicalBlock(scope: !6112, file: !3, line: 410, column: 3)
!6112 = distinct !DILexicalBlock(scope: !6113, file: !3, line: 410, column: 3)
!6113 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 410, column: 3)
!6114 = !DILocation(line: 411, column: 2, scope: !6097)
!6115 = !DILocation(line: 406, column: 24, scope: !6093)
!6116 = !DILocation(line: 406, column: 2, scope: !6093)
!6117 = distinct !{!6117, !6095, !6118, !3562, !3563}
!6118 = !DILocation(line: 411, column: 2, scope: !6090)
!6119 = !DILocation(line: 412, column: 2, scope: !6068)
!6120 = !DILocation(line: 413, column: 1, scope: !6068)
!6121 = distinct !DISubprogram(name: "__preempt_count_add", scope: !6122, file: !6122, line: 78, type: !6123, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6125)
!6122 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!6123 = !DISubroutineType(types: !6124)
!6124 = !{null, !46}
!6125 = !{!6126, !6127, !6129}
!6126 = !DILocalVariable(name: "val", arg: 1, scope: !6121, file: !6122, line: 78, type: !46)
!6127 = !DILocalVariable(name: "pao_ID__", scope: !6128, file: !6122, line: 80, type: !1040)
!6128 = distinct !DILexicalBlock(scope: !6121, file: !6122, line: 80, column: 2)
!6129 = !DILocalVariable(name: "pto_val__", scope: !6130, file: !6122, line: 80, type: !1093)
!6130 = distinct !DILexicalBlock(scope: !6131, file: !6122, line: 80, column: 2)
!6131 = distinct !DILexicalBlock(scope: !6132, file: !6122, line: 80, column: 2)
!6132 = distinct !DILexicalBlock(scope: !6128, file: !6122, line: 80, column: 2)
!6133 = !DILocation(line: 78, column: 53, scope: !6121)
!6134 = !DILocation(line: 80, column: 2, scope: !6121)
!6135 = !DILocation(line: 80, column: 2, scope: !6128)
!6136 = !DILocation(line: 80, column: 2, scope: !6132)
!6137 = !DILocation(line: 80, column: 2, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6132, file: !6122, line: 80, column: 2)
!6139 = !{i64 2149639602}
!6140 = !DILocation(line: 80, column: 2, scope: !6131)
!6141 = !DILocation(line: 80, column: 2, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6131, file: !6122, line: 80, column: 2)
!6143 = !{i64 2149639897}
!6144 = !DILocation(line: 80, column: 2, scope: !6130)
!6145 = !{i64 2149640602}
!6146 = !DILocation(line: 81, column: 1, scope: !6121)
!6147 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !6148, file: !6148, line: 313, type: !6149, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6151)
!6148 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!6149 = !DISubroutineType(types: !6150)
!6150 = !{null, !166}
!6151 = !{!6152}
!6152 = !DILocalVariable(name: "op", arg: 1, scope: !6147, file: !6148, line: 313, type: !166)
!6153 = !DILocation(line: 313, column: 66, scope: !6147)
!6154 = !DILocation(line: 313, column: 72, scope: !6147)
!6155 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !1294, file: !1294, line: 502, type: !6156, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6158)
!6156 = !DISubroutineType(types: !6157)
!6157 = !{!604, !46, !1311}
!6158 = !{!6159, !6160}
!6159 = !DILocalVariable(name: "cpu", arg: 1, scope: !6155, file: !1294, line: 502, type: !46)
!6160 = !DILocalVariable(name: "cpumask", arg: 2, scope: !6155, file: !1294, line: 502, type: !1311)
!6161 = !DILocation(line: 502, column: 50, scope: !6155)
!6162 = !DILocation(line: 502, column: 77, scope: !6155)
!6163 = !DILocation(line: 504, column: 9, scope: !6155)
!6164 = !DILocation(line: 504, column: 2, scope: !6155)
!6165 = distinct !DISubprogram(name: "do_drv_write", scope: !3, file: !3, line: 327, type: !668, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6166)
!6166 = !{!6167, !6168}
!6167 = !DILocalVariable(name: "_cmd", arg: 1, scope: !6165, file: !3, line: 327, type: !319)
!6168 = !DILocalVariable(name: "cmd", scope: !6165, file: !3, line: 329, type: !5914)
!6169 = !DILocation(line: 327, column: 32, scope: !6165)
!6170 = !DILocation(line: 329, column: 2, scope: !6165)
!6171 = !DILocation(line: 329, column: 18, scope: !6165)
!6172 = !DILocation(line: 329, column: 24, scope: !6165)
!6173 = !DILocation(line: 331, column: 2, scope: !6165)
!6174 = !DILocation(line: 331, column: 7, scope: !6165)
!6175 = !DILocation(line: 331, column: 12, scope: !6165)
!6176 = !DILocation(line: 331, column: 18, scope: !6165)
!6177 = !DILocation(line: 331, column: 23, scope: !6165)
!6178 = !DILocation(line: 331, column: 28, scope: !6165)
!6179 = !DILocation(line: 331, column: 33, scope: !6165)
!6180 = !DILocation(line: 332, column: 1, scope: !6165)
!6181 = !DISubprogram(name: "smp_call_function_many", scope: !5906, file: !5906, line: 157, type: !5929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6182 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !6122, file: !6122, line: 93, type: !650, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6183)
!6183 = !{!6184}
!6184 = !DILocalVariable(name: "c", scope: !6185, file: !6122, line: 95, type: !604)
!6185 = distinct !DILexicalBlock(scope: !6182, file: !6122, line: 95, column: 9)
!6186 = !DILocation(line: 95, column: 9, scope: !6185)
!6187 = !{i64 2149643958, i64 2149644051}
!6188 = !DILocation(line: 95, column: 9, scope: !6182)
!6189 = !DILocation(line: 95, column: 2, scope: !6182)
!6190 = distinct !DISubprogram(name: "_test_bit", scope: !6191, file: !6191, line: 139, type: !4399, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6192)
!6191 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6192 = !{!6193, !6194}
!6193 = !DILocalVariable(name: "nr", arg: 1, scope: !6190, file: !6191, line: 139, type: !297)
!6194 = !DILocalVariable(name: "addr", arg: 2, scope: !6190, file: !6191, line: 139, type: !4401)
!6195 = !DILocation(line: 139, column: 25, scope: !6190)
!6196 = !DILocation(line: 139, column: 59, scope: !6190)
!6197 = !DILocation(line: 141, column: 25, scope: !6190)
!6198 = !DILocation(line: 141, column: 32, scope: !6190)
!6199 = !DILocation(line: 141, column: 30, scope: !6190)
!6200 = !DILocation(line: 141, column: 2, scope: !6190)
!6201 = !DILocation(line: 142, column: 23, scope: !6190)
!6202 = !DILocation(line: 142, column: 27, scope: !6190)
!6203 = !DILocation(line: 142, column: 9, scope: !6190)
!6204 = !DILocation(line: 142, column: 2, scope: !6190)
!6205 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5295, file: !5295, line: 66, type: !5296, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6206)
!6206 = !{!6207, !6208}
!6207 = !DILocalVariable(name: "v", arg: 1, scope: !6205, file: !5295, line: 66, type: !5298)
!6208 = !DILocalVariable(name: "size", arg: 2, scope: !6205, file: !5295, line: 66, type: !294)
!6209 = !DILocation(line: 66, column: 73, scope: !6205)
!6210 = !DILocation(line: 66, column: 83, scope: !6205)
!6211 = !DILocation(line: 68, column: 19, scope: !6205)
!6212 = !DILocation(line: 68, column: 22, scope: !6205)
!6213 = !DILocation(line: 68, column: 2, scope: !6205)
!6214 = !DILocation(line: 69, column: 2, scope: !6205)
!6215 = !DILocation(line: 70, column: 1, scope: !6205)
!6216 = distinct !DISubprogram(name: "kasan_check_read", scope: !5334, file: !5334, line: 40, type: !5335, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6217)
!6217 = !{!6218, !6219}
!6218 = !DILocalVariable(name: "p", arg: 1, scope: !6216, file: !5334, line: 40, type: !5298)
!6219 = !DILocalVariable(name: "size", arg: 2, scope: !6216, file: !5334, line: 40, type: !7)
!6220 = !DILocation(line: 40, column: 58, scope: !6216)
!6221 = !DILocation(line: 40, column: 74, scope: !6216)
!6222 = !DILocation(line: 42, column: 2, scope: !6216)
!6223 = !DISubprogram(name: "__const_udelay", scope: !6224, file: !6224, line: 11, type: !6225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6224 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!6225 = !DISubroutineType(types: !6226)
!6226 = !{null, !297}
!6227 = distinct !DISubprogram(name: "cpufreq_table_find_index_dl", scope: !102, file: !102, line: 826, type: !6228, scopeLine: 829, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6230)
!6228 = !DISubroutineType(types: !6229)
!6229 = !{!46, !2073, !7, !604}
!6230 = !{!6231, !6232, !6233, !6234, !6235, !6236, !6237, !6238}
!6231 = !DILocalVariable(name: "policy", arg: 1, scope: !6227, file: !102, line: 826, type: !2073)
!6232 = !DILocalVariable(name: "target_freq", arg: 2, scope: !6227, file: !102, line: 827, type: !7)
!6233 = !DILocalVariable(name: "efficiencies", arg: 3, scope: !6227, file: !102, line: 828, type: !604)
!6234 = !DILocalVariable(name: "table", scope: !6227, file: !102, line: 830, type: !2129)
!6235 = !DILocalVariable(name: "pos", scope: !6227, file: !102, line: 831, type: !2129)
!6236 = !DILocalVariable(name: "freq", scope: !6227, file: !102, line: 832, type: !7)
!6237 = !DILocalVariable(name: "idx", scope: !6227, file: !102, line: 833, type: !46)
!6238 = !DILocalVariable(name: "best", scope: !6227, file: !102, line: 833, type: !46)
!6239 = !DILocation(line: 826, column: 70, scope: !6227)
!6240 = !DILocation(line: 827, column: 25, scope: !6227)
!6241 = !DILocation(line: 828, column: 17, scope: !6227)
!6242 = !DILocation(line: 830, column: 2, scope: !6227)
!6243 = !DILocation(line: 830, column: 34, scope: !6227)
!6244 = !DILocation(line: 830, column: 42, scope: !6227)
!6245 = !DILocation(line: 830, column: 50, scope: !6227)
!6246 = !DILocation(line: 831, column: 2, scope: !6227)
!6247 = !DILocation(line: 831, column: 34, scope: !6227)
!6248 = !DILocation(line: 832, column: 2, scope: !6227)
!6249 = !DILocation(line: 832, column: 15, scope: !6227)
!6250 = !DILocation(line: 833, column: 2, scope: !6227)
!6251 = !DILocation(line: 833, column: 6, scope: !6227)
!6252 = !DILocation(line: 833, column: 11, scope: !6227)
!6253 = !DILocation(line: 835, column: 2, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6227, file: !102, line: 835, column: 2)
!6255 = !DILocation(line: 835, column: 2, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6254, file: !102, line: 835, column: 2)
!6257 = !DILocation(line: 835, column: 2, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6256, file: !102, line: 835, column: 2)
!6259 = !DILocation(line: 835, column: 2, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6258, file: !102, line: 835, column: 2)
!6261 = !DILocation(line: 836, column: 10, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6260, file: !102, line: 835, column: 70)
!6263 = !DILocation(line: 836, column: 15, scope: !6262)
!6264 = !DILocation(line: 836, column: 8, scope: !6262)
!6265 = !DILocation(line: 838, column: 7, scope: !6266)
!6266 = distinct !DILexicalBlock(scope: !6262, file: !102, line: 838, column: 7)
!6267 = !DILocation(line: 838, column: 15, scope: !6266)
!6268 = !DILocation(line: 838, column: 12, scope: !6266)
!6269 = !DILocation(line: 838, column: 7, scope: !6262)
!6270 = !DILocation(line: 839, column: 11, scope: !6266)
!6271 = !DILocation(line: 839, column: 4, scope: !6266)
!6272 = !DILocation(line: 841, column: 7, scope: !6273)
!6273 = distinct !DILexicalBlock(scope: !6262, file: !102, line: 841, column: 7)
!6274 = !DILocation(line: 841, column: 14, scope: !6273)
!6275 = !DILocation(line: 841, column: 12, scope: !6273)
!6276 = !DILocation(line: 841, column: 7, scope: !6262)
!6277 = !DILocation(line: 842, column: 11, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6273, file: !102, line: 841, column: 27)
!6279 = !DILocation(line: 842, column: 9, scope: !6278)
!6280 = !DILocation(line: 843, column: 4, scope: !6278)
!6281 = !DILocation(line: 847, column: 7, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6262, file: !102, line: 847, column: 7)
!6283 = !DILocation(line: 847, column: 12, scope: !6282)
!6284 = !DILocation(line: 847, column: 7, scope: !6262)
!6285 = !DILocation(line: 848, column: 11, scope: !6282)
!6286 = !DILocation(line: 848, column: 4, scope: !6282)
!6287 = !DILocation(line: 850, column: 10, scope: !6262)
!6288 = !DILocation(line: 850, column: 3, scope: !6262)
!6289 = distinct !{!6289, !6253, !6290, !3562, !3563}
!6290 = !DILocation(line: 851, column: 2, scope: !6254)
!6291 = !DILocation(line: 853, column: 9, scope: !6227)
!6292 = !DILocation(line: 853, column: 2, scope: !6227)
!6293 = !DILocation(line: 854, column: 1, scope: !6227)
!6294 = distinct !DISubprogram(name: "cpufreq_boost_down_prep", scope: !3, file: !3, line: 540, type: !4447, scopeLine: 541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6295)
!6295 = !{!6296}
!6296 = !DILocalVariable(name: "cpu", arg: 1, scope: !6294, file: !3, line: 540, type: !7)
!6297 = !DILocation(line: 540, column: 49, scope: !6294)
!6298 = !DILocation(line: 546, column: 9, scope: !6294)
!6299 = !DILocation(line: 546, column: 2, scope: !6294)
!6300 = distinct !DISubprogram(name: "show_freqdomain_cpus", scope: !3, file: !3, line: 146, type: !2112, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6301)
!6301 = !{!6302, !6303, !6304}
!6302 = !DILocalVariable(name: "policy", arg: 1, scope: !6300, file: !3, line: 146, type: !2073)
!6303 = !DILocalVariable(name: "buf", arg: 2, scope: !6300, file: !3, line: 146, type: !247)
!6304 = !DILocalVariable(name: "data", scope: !6300, file: !3, line: 148, type: !3328)
!6305 = !DILocation(line: 146, column: 60, scope: !6300)
!6306 = !DILocation(line: 146, column: 74, scope: !6300)
!6307 = !DILocation(line: 148, column: 2, scope: !6300)
!6308 = !DILocation(line: 148, column: 28, scope: !6300)
!6309 = !DILocation(line: 148, column: 35, scope: !6300)
!6310 = !DILocation(line: 148, column: 43, scope: !6300)
!6311 = !DILocation(line: 150, column: 6, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6300, file: !3, line: 150, column: 6)
!6313 = !DILocation(line: 150, column: 6, scope: !6300)
!6314 = !DILocation(line: 151, column: 3, scope: !6312)
!6315 = !DILocation(line: 153, column: 27, scope: !6300)
!6316 = !DILocation(line: 153, column: 33, scope: !6300)
!6317 = !DILocation(line: 153, column: 50, scope: !6300)
!6318 = !DILocation(line: 153, column: 9, scope: !6300)
!6319 = !DILocation(line: 153, column: 2, scope: !6300)
!6320 = !DILocation(line: 154, column: 1, scope: !6300)
!6321 = !DISubprogram(name: "cpufreq_show_cpus", scope: !102, file: !102, line: 795, type: !6322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6322 = !DISubroutineType(types: !6323)
!6323 = !{!279, !1311, !247}
!6324 = distinct !DISubprogram(name: "show_cpb", scope: !3, file: !3, line: 179, type: !2112, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6325)
!6325 = !{!6326, !6327}
!6326 = !DILocalVariable(name: "policy", arg: 1, scope: !6324, file: !3, line: 179, type: !2073)
!6327 = !DILocalVariable(name: "buf", arg: 2, scope: !6324, file: !3, line: 179, type: !247)
!6328 = !DILocation(line: 179, column: 48, scope: !6324)
!6329 = !DILocation(line: 179, column: 62, scope: !6324)
!6330 = !DILocation(line: 181, column: 17, scope: !6324)
!6331 = !DILocation(line: 181, column: 50, scope: !6324)
!6332 = !DILocation(line: 181, column: 30, scope: !6324)
!6333 = !DILocation(line: 181, column: 9, scope: !6324)
!6334 = !DILocation(line: 181, column: 2, scope: !6324)
!6335 = distinct !DISubprogram(name: "store_cpb", scope: !3, file: !3, line: 159, type: !3312, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6336)
!6336 = !{!6337, !6338, !6339, !6340, !6341}
!6337 = !DILocalVariable(name: "policy", arg: 1, scope: !6335, file: !3, line: 159, type: !2073)
!6338 = !DILocalVariable(name: "buf", arg: 2, scope: !6335, file: !3, line: 159, type: !166)
!6339 = !DILocalVariable(name: "count", arg: 3, scope: !6335, file: !3, line: 160, type: !294)
!6340 = !DILocalVariable(name: "ret", scope: !6335, file: !3, line: 162, type: !46)
!6341 = !DILocalVariable(name: "val", scope: !6335, file: !3, line: 163, type: !7)
!6342 = !DILocation(line: 159, column: 49, scope: !6335)
!6343 = !DILocation(line: 159, column: 69, scope: !6335)
!6344 = !DILocation(line: 160, column: 12, scope: !6335)
!6345 = !DILocation(line: 162, column: 2, scope: !6335)
!6346 = !DILocation(line: 162, column: 6, scope: !6335)
!6347 = !DILocation(line: 163, column: 2, scope: !6335)
!6348 = !DILocation(line: 163, column: 15, scope: !6335)
!6349 = !DILocation(line: 165, column: 27, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 165, column: 6)
!6351 = !DILocation(line: 165, column: 7, scope: !6350)
!6352 = !DILocation(line: 165, column: 6, scope: !6335)
!6353 = !DILocation(line: 166, column: 3, scope: !6350)
!6354 = !DILocation(line: 168, column: 19, scope: !6335)
!6355 = !DILocation(line: 168, column: 8, scope: !6335)
!6356 = !DILocation(line: 168, column: 6, scope: !6335)
!6357 = !DILocation(line: 169, column: 6, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 169, column: 6)
!6359 = !DILocation(line: 169, column: 10, scope: !6358)
!6360 = !DILocation(line: 169, column: 13, scope: !6358)
!6361 = !DILocation(line: 169, column: 17, scope: !6358)
!6362 = !DILocation(line: 169, column: 6, scope: !6335)
!6363 = !DILocation(line: 170, column: 3, scope: !6358)
!6364 = !DILocation(line: 172, column: 2, scope: !6335)
!6365 = !DILocation(line: 173, column: 12, scope: !6335)
!6366 = !DILocation(line: 173, column: 20, scope: !6335)
!6367 = !DILocation(line: 173, column: 2, scope: !6335)
!6368 = !DILocation(line: 174, column: 2, scope: !6335)
!6369 = !DILocation(line: 176, column: 9, scope: !6335)
!6370 = !DILocation(line: 176, column: 2, scope: !6335)
!6371 = !DILocation(line: 177, column: 1, scope: !6335)
!6372 = !DISubprogram(name: "sprintf", scope: !6373, file: !6373, line: 10, type: !6374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6373 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6374 = !DISubroutineType(types: !6375)
!6375 = !{!46, !247, !166, null}
!6376 = !DISubprogram(name: "kstrtouint", scope: !6377, file: !6377, line: 71, type: !6378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6377 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!6378 = !DISubroutineType(types: !6379)
!6379 = !{!46, !166, !7, !927}
!6380 = !DISubprogram(name: "cpus_read_lock", scope: !6381, file: !6381, line: 135, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6381 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!6382 = !DISubprogram(name: "cpus_read_unlock", scope: !6381, file: !6381, line: 136, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6383 = distinct !DISubprogram(name: "find_next_bit", scope: !5866, file: !5866, line: 54, type: !6384, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6386)
!6384 = !DISubroutineType(types: !6385)
!6385 = !{!297, !5157, !297, !297}
!6386 = !{!6387, !6388, !6389, !6390}
!6387 = !DILocalVariable(name: "addr", arg: 1, scope: !6383, file: !5866, line: 54, type: !5157)
!6388 = !DILocalVariable(name: "size", arg: 2, scope: !6383, file: !5866, line: 54, type: !297)
!6389 = !DILocalVariable(name: "offset", arg: 3, scope: !6383, file: !5866, line: 55, type: !297)
!6390 = !DILocalVariable(name: "val", scope: !6391, file: !5866, line: 58, type: !297)
!6391 = distinct !DILexicalBlock(scope: !6392, file: !5866, line: 57, column: 31)
!6392 = distinct !DILexicalBlock(scope: !6383, file: !5866, line: 57, column: 6)
!6393 = !DILocation(line: 54, column: 50, scope: !6383)
!6394 = !DILocation(line: 54, column: 70, scope: !6383)
!6395 = !DILocation(line: 55, column: 22, scope: !6383)
!6396 = !DILocation(line: 57, column: 6, scope: !6392)
!6397 = !DILocation(line: 57, column: 6, scope: !6383)
!6398 = !DILocation(line: 58, column: 3, scope: !6391)
!6399 = !DILocation(line: 58, column: 17, scope: !6391)
!6400 = !DILocation(line: 60, column: 7, scope: !6401)
!6401 = distinct !DILexicalBlock(scope: !6391, file: !5866, line: 60, column: 7)
!6402 = !DILocation(line: 60, column: 7, scope: !6391)
!6403 = !DILocation(line: 61, column: 11, scope: !6401)
!6404 = !DILocation(line: 61, column: 4, scope: !6401)
!6405 = !DILocation(line: 63, column: 10, scope: !6391)
!6406 = !DILocation(line: 63, column: 9, scope: !6391)
!6407 = !DILocation(line: 63, column: 17, scope: !6391)
!6408 = !DILocation(line: 63, column: 15, scope: !6391)
!6409 = !DILocation(line: 63, column: 7, scope: !6391)
!6410 = !DILocation(line: 64, column: 10, scope: !6391)
!6411 = !DILocation(line: 64, column: 16, scope: !6391)
!6412 = !DILocation(line: 64, column: 29, scope: !6391)
!6413 = !DILocation(line: 64, column: 3, scope: !6391)
!6414 = !DILocation(line: 65, column: 2, scope: !6392)
!6415 = !DILocation(line: 67, column: 24, scope: !6383)
!6416 = !DILocation(line: 67, column: 30, scope: !6383)
!6417 = !DILocation(line: 67, column: 36, scope: !6383)
!6418 = !DILocation(line: 67, column: 9, scope: !6383)
!6419 = !DILocation(line: 67, column: 2, scope: !6383)
!6420 = !DILocation(line: 68, column: 1, scope: !6383)
!6421 = !DISubprogram(name: "free_percpu", scope: !6422, file: !6422, line: 134, type: !668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6422 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!6423 = !DISubprogram(name: "_find_next_bit", scope: !5866, file: !5866, line: 11, type: !6384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6424 = !DISubprogram(name: "__platform_driver_probe", scope: !1360, file: !1360, line: 283, type: !6425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6425 = !DISubroutineType(types: !6426)
!6426 = !{!46, !3519, !1363, !142}
!6427 = distinct !DISubprogram(name: "acpi_cpufreq_probe", scope: !3, file: !3, line: 989, type: !1364, scopeLine: 990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6428)
!6428 = !{!6429, !6430, !6431}
!6429 = !DILocalVariable(name: "pdev", arg: 1, scope: !6427, file: !3, line: 989, type: !1366)
!6430 = !DILocalVariable(name: "ret", scope: !6427, file: !3, line: 991, type: !46)
!6431 = !DILocalVariable(name: "attr", scope: !6432, file: !3, line: 1014, type: !3304)
!6432 = distinct !DILexicalBlock(scope: !6433, file: !3, line: 1013, column: 34)
!6433 = distinct !DILexicalBlock(scope: !6427, file: !3, line: 1013, column: 6)
!6434 = !DILocation(line: 989, column: 62, scope: !6427)
!6435 = !DILocation(line: 991, column: 2, scope: !6427)
!6436 = !DILocation(line: 991, column: 6, scope: !6427)
!6437 = !DILocation(line: 993, column: 6, scope: !6438)
!6438 = distinct !DILexicalBlock(scope: !6427, file: !3, line: 993, column: 6)
!6439 = !DILocation(line: 993, column: 6, scope: !6427)
!6440 = !DILocation(line: 994, column: 3, scope: !6438)
!6441 = !DILocation(line: 997, column: 6, scope: !6442)
!6442 = distinct !DILexicalBlock(scope: !6427, file: !3, line: 997, column: 6)
!6443 = !DILocation(line: 997, column: 6, scope: !6427)
!6444 = !DILocation(line: 998, column: 3, scope: !6442)
!6445 = !DILocation(line: 1000, column: 2, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6447, file: !3, line: 1000, column: 2)
!6447 = distinct !DILexicalBlock(scope: !6427, file: !3, line: 1000, column: 2)
!6448 = !DILocation(line: 1000, column: 2, scope: !6447)
!6449 = !DILocation(line: 1002, column: 8, scope: !6427)
!6450 = !DILocation(line: 1002, column: 6, scope: !6427)
!6451 = !DILocation(line: 1003, column: 6, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6427, file: !3, line: 1003, column: 6)
!6453 = !DILocation(line: 1003, column: 6, scope: !6427)
!6454 = !DILocation(line: 1004, column: 10, scope: !6452)
!6455 = !DILocation(line: 1004, column: 3, scope: !6452)
!6456 = !DILocation(line: 1013, column: 7, scope: !6433)
!6457 = !DILocation(line: 1013, column: 6, scope: !6427)
!6458 = !DILocation(line: 1014, column: 3, scope: !6432)
!6459 = !DILocation(line: 1014, column: 22, scope: !6432)
!6460 = !DILocation(line: 1016, column: 3, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6462, file: !3, line: 1016, column: 3)
!6462 = distinct !DILexicalBlock(scope: !6432, file: !3, line: 1016, column: 3)
!6463 = !DILocation(line: 1016, column: 3, scope: !6462)
!6464 = !DILocation(line: 1018, column: 13, scope: !6465)
!6465 = distinct !DILexicalBlock(scope: !6432, file: !3, line: 1018, column: 3)
!6466 = !DILocation(line: 1018, column: 8, scope: !6465)
!6467 = !DILocation(line: 1018, column: 35, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6465, file: !3, line: 1018, column: 3)
!6469 = !DILocation(line: 1018, column: 34, scope: !6468)
!6470 = !DILocation(line: 1018, column: 3, scope: !6465)
!6471 = !DILocation(line: 1019, column: 9, scope: !6472)
!6472 = distinct !DILexicalBlock(scope: !6468, file: !3, line: 1019, column: 8)
!6473 = !DILocation(line: 1019, column: 8, scope: !6472)
!6474 = !DILocation(line: 1019, column: 14, scope: !6472)
!6475 = !DILocation(line: 1019, column: 8, scope: !6468)
!6476 = !DILocation(line: 1020, column: 6, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6472, file: !3, line: 1019, column: 23)
!6478 = !DILocation(line: 1020, column: 11, scope: !6477)
!6479 = !DILocation(line: 1021, column: 5, scope: !6477)
!6480 = !DILocation(line: 1019, column: 18, scope: !6472)
!6481 = !DILocation(line: 1018, column: 45, scope: !6468)
!6482 = !DILocation(line: 1018, column: 3, scope: !6468)
!6483 = distinct !{!6483, !6470, !6484, !3562, !3563}
!6484 = !DILocation(line: 1022, column: 4, scope: !6465)
!6485 = !DILocation(line: 1023, column: 2, scope: !6433)
!6486 = !DILocation(line: 1023, column: 2, scope: !6432)
!6487 = !DILocation(line: 1025, column: 2, scope: !6427)
!6488 = !DILocation(line: 1027, column: 8, scope: !6427)
!6489 = !DILocation(line: 1027, column: 6, scope: !6427)
!6490 = !DILocation(line: 1028, column: 6, scope: !6491)
!6491 = distinct !DILexicalBlock(scope: !6427, file: !3, line: 1028, column: 6)
!6492 = !DILocation(line: 1028, column: 6, scope: !6427)
!6493 = !DILocation(line: 1029, column: 3, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6491, file: !3, line: 1028, column: 11)
!6495 = !DILocation(line: 1030, column: 2, scope: !6494)
!6496 = !DILocation(line: 1031, column: 9, scope: !6427)
!6497 = !DILocation(line: 1031, column: 2, scope: !6427)
!6498 = !DILocation(line: 1032, column: 1, scope: !6427)
!6499 = !DISubprogram(name: "cpufreq_get_current_driver", scope: !102, file: !102, line: 461, type: !6500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6500 = !DISubroutineType(types: !6501)
!6501 = !{!166}
!6502 = distinct !DISubprogram(name: "acpi_cpufreq_early_init", scope: !3, file: !3, line: 557, type: !947, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6503)
!6503 = !{!6504, !6505, !6512}
!6504 = !DILocalVariable(name: "i", scope: !6502, file: !3, line: 559, type: !7)
!6505 = !DILocalVariable(name: "__vpp_verify", scope: !6506, file: !3, line: 569, type: !526)
!6506 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 569, column: 5)
!6507 = distinct !DILexicalBlock(scope: !6508, file: !3, line: 569, column: 5)
!6508 = distinct !DILexicalBlock(scope: !6509, file: !3, line: 568, column: 7)
!6509 = distinct !DILexicalBlock(scope: !6510, file: !3, line: 567, column: 27)
!6510 = distinct !DILexicalBlock(scope: !6511, file: !3, line: 567, column: 2)
!6511 = distinct !DILexicalBlock(scope: !6502, file: !3, line: 567, column: 2)
!6512 = !DILocalVariable(name: "__ptr", scope: !6513, file: !3, line: 569, type: !297)
!6513 = distinct !DILexicalBlock(scope: !6507, file: !3, line: 569, column: 5)
!6514 = !DILocation(line: 559, column: 2, scope: !6502)
!6515 = !DILocation(line: 559, column: 15, scope: !6502)
!6516 = !DILocation(line: 560, column: 2, scope: !6517)
!6517 = distinct !DILexicalBlock(scope: !6518, file: !3, line: 560, column: 2)
!6518 = distinct !DILexicalBlock(scope: !6502, file: !3, line: 560, column: 2)
!6519 = !DILocation(line: 560, column: 2, scope: !6518)
!6520 = !DILocation(line: 562, column: 19, scope: !6502)
!6521 = !DILocation(line: 562, column: 17, scope: !6502)
!6522 = !DILocation(line: 563, column: 7, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6502, file: !3, line: 563, column: 6)
!6524 = !DILocation(line: 563, column: 6, scope: !6502)
!6525 = !DILocation(line: 564, column: 3, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6527, file: !3, line: 564, column: 3)
!6527 = distinct !DILexicalBlock(scope: !6528, file: !3, line: 564, column: 3)
!6528 = distinct !DILexicalBlock(scope: !6523, file: !3, line: 563, column: 23)
!6529 = !DILocation(line: 564, column: 3, scope: !6527)
!6530 = !DILocation(line: 565, column: 3, scope: !6528)
!6531 = !DILocation(line: 567, column: 2, scope: !6511)
!6532 = !DILocation(line: 567, column: 2, scope: !6510)
!6533 = !DILocation(line: 569, column: 5, scope: !6507)
!6534 = !DILocation(line: 569, column: 5, scope: !6506)
!6535 = !DILocation(line: 569, column: 5, scope: !6513)
!6536 = !DILocation(line: 569, column: 37, scope: !6508)
!6537 = !DILocation(line: 570, column: 28, scope: !6508)
!6538 = !DILocation(line: 570, column: 16, scope: !6508)
!6539 = !DILocation(line: 568, column: 8, scope: !6508)
!6540 = !DILocation(line: 568, column: 7, scope: !6509)
!6541 = !DILocation(line: 573, column: 4, scope: !6542)
!6542 = distinct !DILexicalBlock(scope: !6508, file: !3, line: 570, column: 33)
!6543 = !DILocation(line: 574, column: 4, scope: !6542)
!6544 = !DILocation(line: 576, column: 2, scope: !6509)
!6545 = distinct !{!6545, !6531, !6546, !3562, !3563}
!6546 = !DILocation(line: 576, column: 2, scope: !6511)
!6547 = !DILocation(line: 579, column: 41, scope: !6502)
!6548 = !DILocation(line: 579, column: 2, scope: !6502)
!6549 = !DILocation(line: 580, column: 2, scope: !6502)
!6550 = !DILocation(line: 581, column: 1, scope: !6502)
!6551 = distinct !DISubprogram(name: "acpi_cpufreq_boost_init", scope: !3, file: !3, line: 978, type: !1188, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6552 = !DILocation(line: 980, column: 38, scope: !6553)
!6553 = distinct !DILexicalBlock(scope: !6551, file: !3, line: 980, column: 6)
!6554 = !DILocation(line: 980, column: 8, scope: !6553)
!6555 = !DILocation(line: 980, column: 6, scope: !6551)
!6556 = !DILocation(line: 980, column: 41, scope: !6553)
!6557 = !DILocation(line: 981, column: 3, scope: !6558)
!6558 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 981, column: 3)
!6559 = distinct !DILexicalBlock(scope: !6560, file: !3, line: 981, column: 3)
!6560 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 980, column: 73)
!6561 = !DILocation(line: 981, column: 3, scope: !6559)
!6562 = !DILocation(line: 982, column: 3, scope: !6560)
!6563 = !DILocation(line: 985, column: 32, scope: !6551)
!6564 = !DILocation(line: 986, column: 38, scope: !6551)
!6565 = !DILocation(line: 986, column: 36, scope: !6551)
!6566 = !DILocation(line: 987, column: 1, scope: !6551)
!6567 = !DISubprogram(name: "cpufreq_register_driver", scope: !102, file: !102, line: 457, type: !6568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6568 = !DISubroutineType(types: !6569)
!6569 = !{!46, !3539}
!6570 = !DISubprogram(name: "__alloc_percpu", scope: !6422, file: !6422, line: 133, type: !6571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6571 = !DISubroutineType(types: !6572)
!6572 = !{!319, !294, !294}
!6573 = distinct !DISubprogram(name: "zalloc_cpumask_var_node", scope: !1294, file: !1294, line: 935, type: !6574, scopeLine: 937, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6576)
!6574 = !DISubroutineType(types: !6575)
!6575 = !{!604, !1303, !1255, !46}
!6576 = !{!6577, !6578, !6579}
!6577 = !DILocalVariable(name: "mask", arg: 1, scope: !6573, file: !1294, line: 935, type: !1303)
!6578 = !DILocalVariable(name: "flags", arg: 2, scope: !6573, file: !1294, line: 935, type: !1255)
!6579 = !DILocalVariable(name: "node", arg: 3, scope: !6573, file: !1294, line: 936, type: !46)
!6580 = !DILocation(line: 935, column: 59, scope: !6573)
!6581 = !DILocation(line: 935, column: 71, scope: !6573)
!6582 = !DILocation(line: 936, column: 12, scope: !6573)
!6583 = !DILocation(line: 938, column: 17, scope: !6573)
!6584 = !DILocation(line: 938, column: 16, scope: !6573)
!6585 = !DILocation(line: 938, column: 2, scope: !6573)
!6586 = !DILocation(line: 939, column: 2, scope: !6573)
!6587 = distinct !DISubprogram(name: "cpu_to_node", scope: !6588, file: !6588, line: 94, type: !6589, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6591)
!6588 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!6589 = !DISubroutineType(types: !6590)
!6590 = !{!46, !46}
!6591 = !{!6592, !6593, !6596}
!6592 = !DILocalVariable(name: "cpu", arg: 1, scope: !6587, file: !6588, line: 94, type: !46)
!6593 = !DILocalVariable(name: "__vpp_verify", scope: !6594, file: !6588, line: 96, type: !526)
!6594 = distinct !DILexicalBlock(scope: !6595, file: !6588, line: 96, column: 9)
!6595 = distinct !DILexicalBlock(scope: !6587, file: !6588, line: 96, column: 9)
!6596 = !DILocalVariable(name: "__ptr", scope: !6597, file: !6588, line: 96, type: !297)
!6597 = distinct !DILexicalBlock(scope: !6595, file: !6588, line: 96, column: 9)
!6598 = !DILocation(line: 94, column: 35, scope: !6587)
!6599 = !DILocation(line: 96, column: 9, scope: !6595)
!6600 = !DILocation(line: 96, column: 9, scope: !6594)
!6601 = !DILocation(line: 96, column: 9, scope: !6597)
!6602 = !DILocation(line: 96, column: 9, scope: !6587)
!6603 = !DILocation(line: 96, column: 2, scope: !6587)
!6604 = !DISubprogram(name: "acpi_processor_preregister_performance", scope: !1258, file: !1258, line: 254, type: !6605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6605 = !DISubroutineType(types: !6606)
!6606 = !{!46, !1256}
!6607 = distinct !DISubprogram(name: "boost_state", scope: !3, file: !3, line: 76, type: !6608, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6610)
!6608 = !DISubroutineType(types: !6609)
!6609 = !{!604, !7}
!6610 = !{!6611, !6612, !6613, !6614}
!6611 = !DILocalVariable(name: "cpu", arg: 1, scope: !6607, file: !3, line: 76, type: !7)
!6612 = !DILocalVariable(name: "lo", scope: !6607, file: !3, line: 78, type: !1093)
!6613 = !DILocalVariable(name: "hi", scope: !6607, file: !3, line: 78, type: !1093)
!6614 = !DILocalVariable(name: "msr", scope: !6607, file: !3, line: 79, type: !411)
!6615 = !DILocation(line: 76, column: 38, scope: !6607)
!6616 = !DILocation(line: 78, column: 2, scope: !6607)
!6617 = !DILocation(line: 78, column: 6, scope: !6607)
!6618 = !DILocation(line: 78, column: 10, scope: !6607)
!6619 = !DILocation(line: 79, column: 2, scope: !6607)
!6620 = !DILocation(line: 79, column: 6, scope: !6607)
!6621 = !DILocation(line: 81, column: 24, scope: !6607)
!6622 = !DILocation(line: 81, column: 10, scope: !6607)
!6623 = !DILocation(line: 81, column: 2, scope: !6607)
!6624 = !DILocation(line: 85, column: 16, scope: !6625)
!6625 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 81, column: 36)
!6626 = !DILocation(line: 85, column: 3, scope: !6625)
!6627 = !DILocation(line: 86, column: 9, scope: !6625)
!6628 = !DILocation(line: 86, column: 20, scope: !6625)
!6629 = !DILocation(line: 86, column: 15, scope: !6625)
!6630 = !DILocation(line: 86, column: 23, scope: !6625)
!6631 = !DILocation(line: 86, column: 12, scope: !6625)
!6632 = !DILocation(line: 86, column: 7, scope: !6625)
!6633 = !DILocation(line: 87, column: 12, scope: !6625)
!6634 = !DILocation(line: 87, column: 16, scope: !6625)
!6635 = !DILocation(line: 87, column: 10, scope: !6625)
!6636 = !DILocation(line: 87, column: 3, scope: !6625)
!6637 = !DILocation(line: 90, column: 16, scope: !6625)
!6638 = !DILocation(line: 90, column: 3, scope: !6625)
!6639 = !DILocation(line: 91, column: 9, scope: !6625)
!6640 = !DILocation(line: 91, column: 20, scope: !6625)
!6641 = !DILocation(line: 91, column: 15, scope: !6625)
!6642 = !DILocation(line: 91, column: 23, scope: !6625)
!6643 = !DILocation(line: 91, column: 12, scope: !6625)
!6644 = !DILocation(line: 91, column: 7, scope: !6625)
!6645 = !DILocation(line: 92, column: 12, scope: !6625)
!6646 = !DILocation(line: 92, column: 16, scope: !6625)
!6647 = !DILocation(line: 92, column: 10, scope: !6625)
!6648 = !DILocation(line: 92, column: 3, scope: !6625)
!6649 = !DILocation(line: 94, column: 2, scope: !6607)
!6650 = !DILocation(line: 95, column: 1, scope: !6607)
!6651 = !DISubprogram(name: "rdmsr_on_cpu", scope: !5374, file: !5374, line: 314, type: !6652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6652 = !DISubroutineType(types: !6653)
!6653 = !{!46, !7, !1093, !2395, !2395}
