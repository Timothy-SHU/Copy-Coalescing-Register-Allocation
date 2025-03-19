; ModuleID = 'drivers/cpufreq/freq_table.c'
source_filename = "drivers/cpufreq/freq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_policy_has_boost_freq: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad policy_has_boost_freq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpufreq_frequency_table_verify: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpufreq_frequency_table_verify ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpufreq_generic_frequency_table_verify: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpufreq_generic_frequency_table_verify ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpufreq_table_index_unsorted: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpufreq_table_index_unsorted ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpufreq_frequency_table_get_index: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpufreq_frequency_table_get_index ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpufreq_freq_attr_scaling_available_freqs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpufreq_freq_attr_scaling_available_freqs ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpufreq_freq_attr_scaling_boost_freqs: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpufreq_freq_attr_scaling_boost_freqs ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpufreq_generic_attr: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad cpufreq_generic_attr ; .previous"

%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.freq_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpumask = type { [1 x i64] }
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
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpufreq_policy_data = type { %struct.cpufreq_cpuinfo, ptr, i32, i32, i32 }

@__UNIQUE_ID___addressable_policy_has_boost_freq221 = internal global ptr @policy_has_boost_freq, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_cpufreq_frequency_table_verify222 = internal global ptr @cpufreq_frequency_table_verify, section ".discard.addressable", align 8, !dbg !61
@__UNIQUE_ID___addressable_cpufreq_generic_frequency_table_verify223 = internal global ptr @cpufreq_generic_frequency_table_verify, section ".discard.addressable", align 8, !dbg !63
@__const.cpufreq_table_index_unsorted.optimal = private unnamed_addr constant %struct.cpufreq_frequency_table { i32 0, i32 -1, i32 0 }, align 4
@__const.cpufreq_table_index_unsorted.suboptimal = private unnamed_addr constant %struct.cpufreq_frequency_table { i32 0, i32 -1, i32 0 }, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid frequency table: %d\0A\00", align 1, !dbg !65
@.str.1 = private unnamed_addr constant [29 x i8] c"drivers/cpufreq/freq_table.c\00", align 1, !dbg !71
@__UNIQUE_ID___addressable_cpufreq_table_index_unsorted224 = internal global ptr @cpufreq_table_index_unsorted, section ".discard.addressable", align 8, !dbg !73
@__UNIQUE_ID___addressable_cpufreq_frequency_table_get_index225 = internal global ptr @cpufreq_frequency_table_get_index, section ".discard.addressable", align 8, !dbg !75
@.str.2 = private unnamed_addr constant [30 x i8] c"scaling_available_frequencies\00", align 1, !dbg !77
@cpufreq_freq_attr_scaling_available_freqs = hidden global %struct.freq_attr { %struct.attribute { ptr @.str.2, i16 292 }, ptr @scaling_available_frequencies_show, ptr null }, align 8, !dbg !82
@__UNIQUE_ID___addressable_cpufreq_freq_attr_scaling_available_freqs226 = internal global ptr @cpufreq_freq_attr_scaling_available_freqs, section ".discard.addressable", align 8, !dbg !2408
@.str.3 = private unnamed_addr constant [26 x i8] c"scaling_boost_frequencies\00", align 1, !dbg !2410
@cpufreq_freq_attr_scaling_boost_freqs = hidden global %struct.freq_attr { %struct.attribute { ptr @.str.3, i16 292 }, ptr @scaling_boost_frequencies_show, ptr null }, align 8, !dbg !2415
@__UNIQUE_ID___addressable_cpufreq_freq_attr_scaling_boost_freqs227 = internal global ptr @cpufreq_freq_attr_scaling_boost_freqs, section ".discard.addressable", align 8, !dbg !2417
@cpufreq_generic_attr = hidden global [2 x ptr] [ptr @cpufreq_freq_attr_scaling_available_freqs, ptr null], align 16, !dbg !2419
@__UNIQUE_ID___addressable_cpufreq_generic_attr228 = internal global ptr @cpufreq_generic_attr, section ".discard.addressable", align 8, !dbg !2423
@__UNIQUE_ID_author229 = internal constant [53 x i8] c"freq_table.author=Dominik Brodowski <linux@brodo.de>\00", section ".modinfo", align 1, !dbg !2425
@__UNIQUE_ID_description230 = internal constant [55 x i8] c"freq_table.description=CPUfreq frequency table helpers\00", section ".modinfo", align 1, !dbg !2430
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1, !dbg !2435
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !2438
@.str.6 = private unnamed_addr constant [48 x i8] c"\014freq_table: Duplicate freq-table entries: %u\0A\00", align 1, !dbg !2441
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID___addressable_policy_has_boost_freq221, ptr @__UNIQUE_ID___addressable_cpufreq_frequency_table_verify222, ptr @__UNIQUE_ID___addressable_cpufreq_generic_frequency_table_verify223, ptr @__UNIQUE_ID___addressable_cpufreq_table_index_unsorted224, ptr @__UNIQUE_ID___addressable_cpufreq_frequency_table_get_index225, ptr @__UNIQUE_ID___addressable_cpufreq_freq_attr_scaling_available_freqs226, ptr @__UNIQUE_ID___addressable_cpufreq_freq_attr_scaling_boost_freqs227, ptr @__UNIQUE_ID___addressable_cpufreq_generic_attr228, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @policy_has_boost_freq(ptr noundef %policy) #0 align 16 !dbg !2455 {
entry:
  %retval = alloca i1, align 1
  %policy.addr = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %table = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2459, metadata !DIExpression()), !dbg !2462
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #8, !dbg !2463
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !2460, metadata !DIExpression()), !dbg !2464
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #8, !dbg !2463
  call void @llvm.dbg.declare(metadata ptr %table, metadata !2461, metadata !DIExpression()), !dbg !2465
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !2466
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20, !dbg !2467
  %1 = load ptr, ptr %freq_table, align 8, !dbg !2467
  store ptr %1, ptr %table, align 8, !dbg !2465
  %2 = load ptr, ptr %table, align 8, !dbg !2468
  %tobool = icmp ne ptr %2, null, !dbg !2468
  br i1 %tobool, label %if.end, label %if.then, !dbg !2470

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2471

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %table, align 8, !dbg !2472
  store ptr %3, ptr %pos, align 8, !dbg !2472
  br label %for.cond, !dbg !2472

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %pos, align 8, !dbg !2474
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %4, i32 0, i32 2, !dbg !2474
  %5 = load i32, ptr %frequency, align 4, !dbg !2474
  %cmp = icmp ne i32 %5, -2, !dbg !2474
  br i1 %cmp, label %for.body, label %for.end, !dbg !2472

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %pos, align 8, !dbg !2476
  %frequency1 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %6, i32 0, i32 2, !dbg !2476
  %7 = load i32, ptr %frequency1, align 4, !dbg !2476
  %cmp2 = icmp eq i32 %7, -1, !dbg !2476
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !2474

if.then3:                                         ; preds = %for.body
  br label %for.inc, !dbg !2476

if.else:                                          ; preds = %for.body
  %8 = load ptr, ptr %pos, align 8, !dbg !2478
  %flags = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %8, i32 0, i32 0, !dbg !2480
  %9 = load i32, ptr %flags, align 4, !dbg !2480
  %and = and i32 %9, 1, !dbg !2481
  %tobool4 = icmp ne i32 %and, 0, !dbg !2481
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2482

if.then5:                                         ; preds = %if.else
  store i1 true, ptr %retval, align 1, !dbg !2483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2483

if.end6:                                          ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6
  br label %for.inc, !dbg !2476

for.inc:                                          ; preds = %if.end7, %if.then3
  %10 = load ptr, ptr %pos, align 8, !dbg !2474
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %10, i32 1, !dbg !2474
  store ptr %incdec.ptr, ptr %pos, align 8, !dbg !2474
  br label %for.cond, !dbg !2474, !llvm.loop !2484

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !2488
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2488

cleanup:                                          ; preds = %for.end, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #8, !dbg !2489
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #8, !dbg !2489
  %11 = load i1, ptr %retval, align 1, !dbg !2489
  ret i1 %11, !dbg !2489
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpufreq_frequency_table_cpuinfo(ptr noundef %policy, ptr noundef %table) #0 align 16 !dbg !2490 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %min_freq = alloca i32, align 4
  %max_freq = alloca i32, align 4
  %freq = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2494, metadata !DIExpression()), !dbg !2500
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !2495, metadata !DIExpression()), !dbg !2501
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #8, !dbg !2502
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !2496, metadata !DIExpression()), !dbg !2503
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_freq) #8, !dbg !2504
  call void @llvm.dbg.declare(metadata ptr %min_freq, metadata !2497, metadata !DIExpression()), !dbg !2505
  store i32 -1, ptr %min_freq, align 4, !dbg !2505
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_freq) #8, !dbg !2506
  call void @llvm.dbg.declare(metadata ptr %max_freq, metadata !2498, metadata !DIExpression()), !dbg !2507
  store i32 0, ptr %max_freq, align 4, !dbg !2507
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #8, !dbg !2508
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !2499, metadata !DIExpression()), !dbg !2509
  %0 = load ptr, ptr %table.addr, align 8, !dbg !2510
  store ptr %0, ptr %pos, align 8, !dbg !2510
  br label %for.cond, !dbg !2510

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %pos, align 8, !dbg !2512
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %1, i32 0, i32 2, !dbg !2512
  %2 = load i32, ptr %frequency, align 4, !dbg !2512
  %cmp = icmp ne i32 %2, -2, !dbg !2512
  br i1 %cmp, label %for.body, label %for.end, !dbg !2510

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pos, align 8, !dbg !2514
  %frequency1 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %3, i32 0, i32 2, !dbg !2514
  %4 = load i32, ptr %frequency1, align 4, !dbg !2514
  %cmp2 = icmp eq i32 %4, -1, !dbg !2514
  br i1 %cmp2, label %if.then, label %if.else, !dbg !2512

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !2514

if.else:                                          ; preds = %for.body
  %5 = load ptr, ptr %pos, align 8, !dbg !2516
  %frequency3 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %5, i32 0, i32 2, !dbg !2518
  %6 = load i32, ptr %frequency3, align 4, !dbg !2518
  store i32 %6, ptr %freq, align 4, !dbg !2519
  %call = call i32 @cpufreq_boost_enabled() #9, !dbg !2520
  %tobool = icmp ne i32 %call, 0, !dbg !2520
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true, !dbg !2522

lor.lhs.false:                                    ; preds = %if.else
  %7 = load ptr, ptr %policy.addr, align 8, !dbg !2523
  %boost_enabled = getelementptr inbounds %struct.cpufreq_policy, ptr %7, i32 0, i32 32, !dbg !2524
  %8 = load i8, ptr %boost_enabled, align 1, !dbg !2524, !range !2525, !noundef !391
  %tobool4 = trunc i8 %8 to i1, !dbg !2524
  br i1 %tobool4, label %if.end, label %land.lhs.true, !dbg !2526

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.else
  %9 = load ptr, ptr %pos, align 8, !dbg !2527
  %flags = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %9, i32 0, i32 0, !dbg !2528
  %10 = load i32, ptr %flags, align 4, !dbg !2528
  %and = and i32 %10, 1, !dbg !2529
  %tobool5 = icmp ne i32 %and, 0, !dbg !2529
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !2530

if.then6:                                         ; preds = %land.lhs.true
  br label %for.inc, !dbg !2531

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  store i32 0, ptr %tmp, align 4, !dbg !2532
  %11 = load i32, ptr %tmp, align 4, !dbg !2535
  %12 = load i32, ptr %freq, align 4, !dbg !2536
  %13 = load i32, ptr %min_freq, align 4, !dbg !2538
  %cmp7 = icmp ult i32 %12, %13, !dbg !2539
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2540

if.then8:                                         ; preds = %if.end
  %14 = load i32, ptr %freq, align 4, !dbg !2541
  store i32 %14, ptr %min_freq, align 4, !dbg !2542
  br label %if.end9, !dbg !2543

if.end9:                                          ; preds = %if.then8, %if.end
  %15 = load i32, ptr %freq, align 4, !dbg !2544
  %16 = load i32, ptr %max_freq, align 4, !dbg !2546
  %cmp10 = icmp ugt i32 %15, %16, !dbg !2547
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !2548

if.then11:                                        ; preds = %if.end9
  %17 = load i32, ptr %freq, align 4, !dbg !2549
  store i32 %17, ptr %max_freq, align 4, !dbg !2550
  br label %if.end12, !dbg !2551

if.end12:                                         ; preds = %if.then11, %if.end9
  br label %if.end13

if.end13:                                         ; preds = %if.end12
  br label %for.inc, !dbg !2514

for.inc:                                          ; preds = %if.end13, %if.then6, %if.then
  %18 = load ptr, ptr %pos, align 8, !dbg !2512
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %18, i32 1, !dbg !2512
  store ptr %incdec.ptr, ptr %pos, align 8, !dbg !2512
  br label %for.cond, !dbg !2512, !llvm.loop !2552

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %min_freq, align 4, !dbg !2554
  %20 = load ptr, ptr %policy.addr, align 8, !dbg !2555
  %cpuinfo = getelementptr inbounds %struct.cpufreq_policy, ptr %20, i32 0, i32 6, !dbg !2556
  %min_freq14 = getelementptr inbounds %struct.cpufreq_cpuinfo, ptr %cpuinfo, i32 0, i32 1, !dbg !2557
  store i32 %19, ptr %min_freq14, align 4, !dbg !2558
  %21 = load ptr, ptr %policy.addr, align 8, !dbg !2559
  %min = getelementptr inbounds %struct.cpufreq_policy, ptr %21, i32 0, i32 7, !dbg !2560
  store i32 %19, ptr %min, align 4, !dbg !2561
  %22 = load i32, ptr %max_freq, align 4, !dbg !2562
  %23 = load ptr, ptr %policy.addr, align 8, !dbg !2563
  %max = getelementptr inbounds %struct.cpufreq_policy, ptr %23, i32 0, i32 8, !dbg !2564
  store i32 %22, ptr %max, align 8, !dbg !2565
  %24 = load ptr, ptr %policy.addr, align 8, !dbg !2566
  %cpuinfo15 = getelementptr inbounds %struct.cpufreq_policy, ptr %24, i32 0, i32 6, !dbg !2568
  %max_freq16 = getelementptr inbounds %struct.cpufreq_cpuinfo, ptr %cpuinfo15, i32 0, i32 0, !dbg !2569
  %25 = load i32, ptr %max_freq16, align 8, !dbg !2569
  %26 = load i32, ptr %max_freq, align 4, !dbg !2570
  %cmp17 = icmp ult i32 %25, %26, !dbg !2571
  br i1 %cmp17, label %if.then18, label %if.end22, !dbg !2572

if.then18:                                        ; preds = %for.end
  %27 = load i32, ptr %max_freq, align 4, !dbg !2573
  %28 = load ptr, ptr %policy.addr, align 8, !dbg !2574
  %cpuinfo19 = getelementptr inbounds %struct.cpufreq_policy, ptr %28, i32 0, i32 6, !dbg !2575
  %max_freq20 = getelementptr inbounds %struct.cpufreq_cpuinfo, ptr %cpuinfo19, i32 0, i32 0, !dbg !2576
  store i32 %27, ptr %max_freq20, align 8, !dbg !2577
  %29 = load ptr, ptr %policy.addr, align 8, !dbg !2578
  %max21 = getelementptr inbounds %struct.cpufreq_policy, ptr %29, i32 0, i32 8, !dbg !2579
  store i32 %27, ptr %max21, align 8, !dbg !2580
  br label %if.end22, !dbg !2578

if.end22:                                         ; preds = %if.then18, %for.end
  %30 = load ptr, ptr %policy.addr, align 8, !dbg !2581
  %min23 = getelementptr inbounds %struct.cpufreq_policy, ptr %30, i32 0, i32 7, !dbg !2583
  %31 = load i32, ptr %min23, align 4, !dbg !2583
  %cmp24 = icmp eq i32 %31, -1, !dbg !2584
  br i1 %cmp24, label %if.then25, label %if.else26, !dbg !2585

if.then25:                                        ; preds = %if.end22
  store i32 -22, ptr %retval, align 4, !dbg !2586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2586

if.else26:                                        ; preds = %if.end22
  store i32 0, ptr %retval, align 4, !dbg !2587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2587

cleanup:                                          ; preds = %if.else26, %if.then25
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #8, !dbg !2588
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_freq) #8, !dbg !2588
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_freq) #8, !dbg !2588
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #8, !dbg !2588
  %32 = load i32, ptr %retval, align 4, !dbg !2588
  ret i32 %32, !dbg !2588
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2589 dso_local i32 @cpufreq_boost_enabled() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpufreq_frequency_table_verify(ptr noundef %policy, ptr noundef %table) #0 align 16 !dbg !2590 {
entry:
  %policy.addr = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %freq = alloca i32, align 4
  %next_larger = alloca i32, align 4
  %found = alloca i8, align 1
  %tmp = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2602, metadata !DIExpression()), !dbg !2608
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !2603, metadata !DIExpression()), !dbg !2609
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #8, !dbg !2610
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !2604, metadata !DIExpression()), !dbg !2611
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #8, !dbg !2612
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !2605, metadata !DIExpression()), !dbg !2613
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_larger) #8, !dbg !2612
  call void @llvm.dbg.declare(metadata ptr %next_larger, metadata !2606, metadata !DIExpression()), !dbg !2614
  store i32 -1, ptr %next_larger, align 4, !dbg !2614
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #8, !dbg !2615
  call void @llvm.dbg.declare(metadata ptr %found, metadata !2607, metadata !DIExpression()), !dbg !2616
  store i8 0, ptr %found, align 1, !dbg !2616
  store i32 0, ptr %tmp, align 4, !dbg !2617
  %0 = load i32, ptr %tmp, align 4, !dbg !2620
  %1 = load ptr, ptr %policy.addr, align 8, !dbg !2621
  call void @cpufreq_verify_within_cpu_limits(ptr noundef %1) #9, !dbg !2622
  %2 = load ptr, ptr %table.addr, align 8, !dbg !2623
  store ptr %2, ptr %pos, align 8, !dbg !2623
  br label %for.cond, !dbg !2623

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %pos, align 8, !dbg !2625
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %3, i32 0, i32 2, !dbg !2625
  %4 = load i32, ptr %frequency, align 4, !dbg !2625
  %cmp = icmp ne i32 %4, -2, !dbg !2625
  br i1 %cmp, label %for.body, label %for.end, !dbg !2623

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pos, align 8, !dbg !2627
  %frequency1 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %5, i32 0, i32 2, !dbg !2627
  %6 = load i32, ptr %frequency1, align 4, !dbg !2627
  %cmp2 = icmp eq i32 %6, -1, !dbg !2627
  br i1 %cmp2, label %if.then, label %if.else, !dbg !2625

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !2627

if.else:                                          ; preds = %for.body
  %7 = load ptr, ptr %pos, align 8, !dbg !2629
  %frequency3 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %7, i32 0, i32 2, !dbg !2631
  %8 = load i32, ptr %frequency3, align 4, !dbg !2631
  store i32 %8, ptr %freq, align 4, !dbg !2632
  %9 = load i32, ptr %freq, align 4, !dbg !2633
  %10 = load ptr, ptr %policy.addr, align 8, !dbg !2635
  %min = getelementptr inbounds %struct.cpufreq_policy_data, ptr %10, i32 0, i32 3, !dbg !2636
  %11 = load i32, ptr %min, align 4, !dbg !2636
  %cmp4 = icmp uge i32 %9, %11, !dbg !2637
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !2638

land.lhs.true:                                    ; preds = %if.else
  %12 = load i32, ptr %freq, align 4, !dbg !2639
  %13 = load ptr, ptr %policy.addr, align 8, !dbg !2640
  %max = getelementptr inbounds %struct.cpufreq_policy_data, ptr %13, i32 0, i32 4, !dbg !2641
  %14 = load i32, ptr %max, align 8, !dbg !2641
  %cmp5 = icmp ule i32 %12, %14, !dbg !2642
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !2643

if.then6:                                         ; preds = %land.lhs.true
  store i8 1, ptr %found, align 1, !dbg !2644
  br label %for.end, !dbg !2646

if.end:                                           ; preds = %land.lhs.true, %if.else
  %15 = load i32, ptr %next_larger, align 4, !dbg !2647
  %16 = load i32, ptr %freq, align 4, !dbg !2649
  %cmp7 = icmp ugt i32 %15, %16, !dbg !2650
  br i1 %cmp7, label %land.lhs.true8, label %if.end12, !dbg !2651

land.lhs.true8:                                   ; preds = %if.end
  %17 = load i32, ptr %freq, align 4, !dbg !2652
  %18 = load ptr, ptr %policy.addr, align 8, !dbg !2653
  %max9 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %18, i32 0, i32 4, !dbg !2654
  %19 = load i32, ptr %max9, align 8, !dbg !2654
  %cmp10 = icmp ugt i32 %17, %19, !dbg !2655
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !2656

if.then11:                                        ; preds = %land.lhs.true8
  %20 = load i32, ptr %freq, align 4, !dbg !2657
  store i32 %20, ptr %next_larger, align 4, !dbg !2658
  br label %if.end12, !dbg !2659

if.end12:                                         ; preds = %if.then11, %land.lhs.true8, %if.end
  br label %if.end13

if.end13:                                         ; preds = %if.end12
  br label %for.inc, !dbg !2627

for.inc:                                          ; preds = %if.end13, %if.then
  %21 = load ptr, ptr %pos, align 8, !dbg !2625
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %21, i32 1, !dbg !2625
  store ptr %incdec.ptr, ptr %pos, align 8, !dbg !2625
  br label %for.cond, !dbg !2625, !llvm.loop !2660

for.end:                                          ; preds = %if.then6, %for.cond
  %22 = load i8, ptr %found, align 1, !dbg !2662, !range !2525, !noundef !391
  %tobool = trunc i8 %22 to i1, !dbg !2662
  br i1 %tobool, label %if.end16, label %if.then14, !dbg !2664

if.then14:                                        ; preds = %for.end
  %23 = load i32, ptr %next_larger, align 4, !dbg !2665
  %24 = load ptr, ptr %policy.addr, align 8, !dbg !2667
  %max15 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %24, i32 0, i32 4, !dbg !2668
  store i32 %23, ptr %max15, align 8, !dbg !2669
  %25 = load ptr, ptr %policy.addr, align 8, !dbg !2670
  call void @cpufreq_verify_within_cpu_limits(ptr noundef %25) #9, !dbg !2671
  br label %if.end16, !dbg !2672

if.end16:                                         ; preds = %if.then14, %for.end
  store i32 0, ptr %tmp17, align 4, !dbg !2673
  %26 = load i32, ptr %tmp17, align 4, !dbg !2676
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #8, !dbg !2677
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_larger) #8, !dbg !2677
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #8, !dbg !2677
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #8, !dbg !2677
  ret i32 0, !dbg !2678
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpufreq_verify_within_cpu_limits(ptr noundef %policy) #4 align 16 !dbg !2679 {
entry:
  %policy.addr = alloca ptr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2683, metadata !DIExpression()), !dbg !2684
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !2685
  %1 = load ptr, ptr %policy.addr, align 8, !dbg !2686
  %cpuinfo = getelementptr inbounds %struct.cpufreq_policy_data, ptr %1, i32 0, i32 0, !dbg !2687
  %min_freq = getelementptr inbounds %struct.cpufreq_cpuinfo, ptr %cpuinfo, i32 0, i32 1, !dbg !2688
  %2 = load i32, ptr %min_freq, align 4, !dbg !2688
  %3 = load ptr, ptr %policy.addr, align 8, !dbg !2689
  %cpuinfo1 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %3, i32 0, i32 0, !dbg !2690
  %max_freq = getelementptr inbounds %struct.cpufreq_cpuinfo, ptr %cpuinfo1, i32 0, i32 0, !dbg !2691
  %4 = load i32, ptr %max_freq, align 8, !dbg !2691
  call void @cpufreq_verify_within_limits(ptr noundef %0, i32 noundef %2, i32 noundef %4) #9, !dbg !2692
  ret void, !dbg !2693
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpufreq_generic_frequency_table_verify(ptr noundef %policy) #0 align 16 !dbg !2694 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2698, metadata !DIExpression()), !dbg !2699
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !2700
  %freq_table = getelementptr inbounds %struct.cpufreq_policy_data, ptr %0, i32 0, i32 1, !dbg !2702
  %1 = load ptr, ptr %freq_table, align 8, !dbg !2702
  %tobool = icmp ne ptr %1, null, !dbg !2700
  br i1 %tobool, label %if.end, label %if.then, !dbg !2703

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !2704
  br label %return, !dbg !2704

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %policy.addr, align 8, !dbg !2705
  %3 = load ptr, ptr %policy.addr, align 8, !dbg !2706
  %freq_table1 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %3, i32 0, i32 1, !dbg !2707
  %4 = load ptr, ptr %freq_table1, align 8, !dbg !2707
  %call = call i32 @cpufreq_frequency_table_verify(ptr noundef %2, ptr noundef %4) #9, !dbg !2708
  store i32 %call, ptr %retval, align 4, !dbg !2709
  br label %return, !dbg !2709

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !2710
  ret i32 %5, !dbg !2710
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpufreq_table_index_unsorted(ptr noundef %policy, i32 noundef %target_freq, i32 noundef %relation) #0 align 16 !dbg !2711 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %target_freq.addr = alloca i32, align 4
  %relation.addr = alloca i32, align 4
  %optimal = alloca %struct.cpufreq_frequency_table, align 4
  %suboptimal = alloca %struct.cpufreq_frequency_table, align 4
  %pos = alloca ptr, align 8
  %table = alloca ptr, align 8
  %freq = alloca i32, align 4
  %diff = alloca i32, align 4
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp93 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp106 = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2715, metadata !DIExpression()), !dbg !2743
  store i32 %target_freq, ptr %target_freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_freq.addr, metadata !2716, metadata !DIExpression()), !dbg !2744
  store i32 %relation, ptr %relation.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %relation.addr, metadata !2717, metadata !DIExpression()), !dbg !2745
  call void @llvm.lifetime.start.p0(i64 12, ptr %optimal) #8, !dbg !2746
  call void @llvm.dbg.declare(metadata ptr %optimal, metadata !2718, metadata !DIExpression()), !dbg !2747
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %optimal, ptr align 4 @__const.cpufreq_table_index_unsorted.optimal, i64 12, i1 false), !dbg !2747
  call void @llvm.lifetime.start.p0(i64 12, ptr %suboptimal) #8, !dbg !2748
  call void @llvm.dbg.declare(metadata ptr %suboptimal, metadata !2719, metadata !DIExpression()), !dbg !2749
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %suboptimal, ptr align 4 @__const.cpufreq_table_index_unsorted.suboptimal, i64 12, i1 false), !dbg !2749
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #8, !dbg !2750
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !2720, metadata !DIExpression()), !dbg !2751
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #8, !dbg !2752
  call void @llvm.dbg.declare(metadata ptr %table, metadata !2721, metadata !DIExpression()), !dbg !2753
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !2754
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20, !dbg !2755
  %1 = load ptr, ptr %freq_table, align 8, !dbg !2755
  store ptr %1, ptr %table, align 8, !dbg !2753
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #8, !dbg !2756
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !2722, metadata !DIExpression()), !dbg !2757
  call void @llvm.lifetime.start.p0(i64 4, ptr %diff) #8, !dbg !2756
  call void @llvm.dbg.declare(metadata ptr %diff, metadata !2723, metadata !DIExpression()), !dbg !2758
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !2756
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2724, metadata !DIExpression()), !dbg !2759
  store i32 0, ptr %i, align 4, !dbg !2759
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #8, !dbg !2760
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2725, metadata !DIExpression()), !dbg !2761
  store i32 0, ptr %tmp, align 4, !dbg !2762
  %2 = load i32, ptr %tmp, align 4, !dbg !2765
  %3 = load i32, ptr %relation.addr, align 4, !dbg !2766
  switch i32 %3, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
    i32 2, label %sw.bb1
  ], !dbg !2767

sw.bb:                                            ; preds = %entry
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %suboptimal, i32 0, i32 2, !dbg !2768
  store i32 -1, ptr %frequency, align 4, !dbg !2770
  br label %sw.epilog, !dbg !2771

sw.bb1:                                           ; preds = %entry, %entry
  %frequency2 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %optimal, i32 0, i32 2, !dbg !2772
  store i32 -1, ptr %frequency2, align 4, !dbg !2773
  br label %sw.epilog, !dbg !2774

sw.epilog:                                        ; preds = %entry, %sw.bb1, %sw.bb
  %4 = load ptr, ptr %table, align 8, !dbg !2775
  store ptr %4, ptr %pos, align 8, !dbg !2775
  store i32 0, ptr %i, align 4, !dbg !2775
  br label %for.cond, !dbg !2775

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %5 = load ptr, ptr %pos, align 8, !dbg !2776
  %frequency3 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %5, i32 0, i32 2, !dbg !2776
  %6 = load i32, ptr %frequency3, align 4, !dbg !2776
  %cmp = icmp ne i32 %6, -2, !dbg !2776
  br i1 %cmp, label %for.body, label %for.end, !dbg !2775

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pos, align 8, !dbg !2777
  %frequency4 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %7, i32 0, i32 2, !dbg !2777
  %8 = load i32, ptr %frequency4, align 4, !dbg !2777
  %cmp5 = icmp eq i32 %8, -1, !dbg !2777
  br i1 %cmp5, label %if.then, label %if.else, !dbg !2776

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !2777

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr %pos, align 8, !dbg !2778
  %frequency6 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %9, i32 0, i32 2, !dbg !2779
  %10 = load i32, ptr %frequency6, align 4, !dbg !2779
  store i32 %10, ptr %freq, align 4, !dbg !2780
  %11 = load i32, ptr %freq, align 4, !dbg !2781
  %12 = load ptr, ptr %policy.addr, align 8, !dbg !2783
  %min = getelementptr inbounds %struct.cpufreq_policy, ptr %12, i32 0, i32 7, !dbg !2784
  %13 = load i32, ptr %min, align 4, !dbg !2784
  %cmp7 = icmp ult i32 %11, %13, !dbg !2785
  br i1 %cmp7, label %if.then9, label %lor.lhs.false, !dbg !2786

lor.lhs.false:                                    ; preds = %if.else
  %14 = load i32, ptr %freq, align 4, !dbg !2787
  %15 = load ptr, ptr %policy.addr, align 8, !dbg !2788
  %max = getelementptr inbounds %struct.cpufreq_policy, ptr %15, i32 0, i32 8, !dbg !2789
  %16 = load i32, ptr %max, align 8, !dbg !2789
  %cmp8 = icmp ugt i32 %14, %16, !dbg !2790
  br i1 %cmp8, label %if.then9, label %if.end, !dbg !2791

if.then9:                                         ; preds = %lor.lhs.false, %if.else
  br label %for.inc, !dbg !2792

if.end:                                           ; preds = %lor.lhs.false
  %17 = load i32, ptr %freq, align 4, !dbg !2793
  %18 = load i32, ptr %target_freq.addr, align 4, !dbg !2795
  %cmp10 = icmp eq i32 %17, %18, !dbg !2796
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !2797

if.then11:                                        ; preds = %if.end
  %19 = load i32, ptr %i, align 4, !dbg !2798
  %driver_data = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %optimal, i32 0, i32 1, !dbg !2800
  store i32 %19, ptr %driver_data, align 4, !dbg !2801
  br label %for.end, !dbg !2802

if.end12:                                         ; preds = %if.end
  %20 = load i32, ptr %relation.addr, align 4, !dbg !2803
  switch i32 %20, label %sw.epilog63 [
    i32 1, label %sw.bb13
    i32 0, label %sw.bb30
    i32 2, label %sw.bb47
  ], !dbg !2804

sw.bb13:                                          ; preds = %if.end12
  %21 = load i32, ptr %freq, align 4, !dbg !2805
  %22 = load i32, ptr %target_freq.addr, align 4, !dbg !2807
  %cmp14 = icmp ult i32 %21, %22, !dbg !2808
  br i1 %cmp14, label %if.then15, label %if.else22, !dbg !2809

if.then15:                                        ; preds = %sw.bb13
  %23 = load i32, ptr %freq, align 4, !dbg !2810
  %frequency16 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %optimal, i32 0, i32 2, !dbg !2813
  %24 = load i32, ptr %frequency16, align 4, !dbg !2813
  %cmp17 = icmp uge i32 %23, %24, !dbg !2814
  br i1 %cmp17, label %if.then18, label %if.end21, !dbg !2815

if.then18:                                        ; preds = %if.then15
  %25 = load i32, ptr %freq, align 4, !dbg !2816
  %frequency19 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %optimal, i32 0, i32 2, !dbg !2818
  store i32 %25, ptr %frequency19, align 4, !dbg !2819
  %26 = load i32, ptr %i, align 4, !dbg !2820
  %driver_data20 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %optimal, i32 0, i32 1, !dbg !2821
  store i32 %26, ptr %driver_data20, align 4, !dbg !2822
  br label %if.end21, !dbg !2823

if.end21:                                         ; preds = %if.then18, %if.then15
  br label %if.end29, !dbg !2824

if.else22:                                        ; preds = %sw.bb13
  %27 = load i32, ptr %freq, align 4, !dbg !2825
  %frequency23 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %suboptimal, i32 0, i32 2, !dbg !2828
  %28 = load i32, ptr %frequency23, align 4, !dbg !2828
  %cmp24 = icmp ule i32 %27, %28, !dbg !2829
  br i1 %cmp24, label %if.then25, label %if.end28, !dbg !2830

if.then25:                                        ; preds = %if.else22
  %29 = load i32, ptr %freq, align 4, !dbg !2831
  %frequency26 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %suboptimal, i32 0, i32 2, !dbg !2833
  store i32 %29, ptr %frequency26, align 4, !dbg !2834
  %30 = load i32, ptr %i, align 4, !dbg !2835
  %driver_data27 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %suboptimal, i32 0, i32 1, !dbg !2836
  store i32 %30, ptr %driver_data27, align 4, !dbg !2837
  br label %if.end28, !dbg !2838

if.end28:                                         ; preds = %if.then25, %if.else22
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end21
  br label %sw.epilog63, !dbg !2839

sw.bb30:                                          ; preds = %if.end12
  %31 = load i32, ptr %freq, align 4, !dbg !2840
  %32 = load i32, ptr %target_freq.addr, align 4, !dbg !2842
  %cmp31 = icmp ugt i32 %31, %32, !dbg !2843
  br i1 %cmp31, label %if.then32, label %if.else39, !dbg !2844

if.then32:                                        ; preds = %sw.bb30
  %33 = load i32, ptr %freq, align 4, !dbg !2845
  %frequency33 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %optimal, i32 0, i32 2, !dbg !2848
  %34 = load i32, ptr %frequency33, align 4, !dbg !2848
  %cmp34 = icmp ule i32 %33, %34, !dbg !2849
  br i1 %cmp34, label %if.then35, label %if.end38, !dbg !2850

if.then35:                                        ; preds = %if.then32
  %35 = load i32, ptr %freq, align 4, !dbg !2851
  %frequency36 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %optimal, i32 0, i32 2, !dbg !2853
  store i32 %35, ptr %frequency36, align 4, !dbg !2854
  %36 = load i32, ptr %i, align 4, !dbg !2855
  %driver_data37 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %optimal, i32 0, i32 1, !dbg !2856
  store i32 %36, ptr %driver_data37, align 4, !dbg !2857
  br label %if.end38, !dbg !2858

if.end38:                                         ; preds = %if.then35, %if.then32
  br label %if.end46, !dbg !2859

if.else39:                                        ; preds = %sw.bb30
  %37 = load i32, ptr %freq, align 4, !dbg !2860
  %frequency40 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %suboptimal, i32 0, i32 2, !dbg !2863
  %38 = load i32, ptr %frequency40, align 4, !dbg !2863
  %cmp41 = icmp uge i32 %37, %38, !dbg !2864
  br i1 %cmp41, label %if.then42, label %if.end45, !dbg !2865

if.then42:                                        ; preds = %if.else39
  %39 = load i32, ptr %freq, align 4, !dbg !2866
  %frequency43 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %suboptimal, i32 0, i32 2, !dbg !2868
  store i32 %39, ptr %frequency43, align 4, !dbg !2869
  %40 = load i32, ptr %i, align 4, !dbg !2870
  %driver_data44 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %suboptimal, i32 0, i32 1, !dbg !2871
  store i32 %40, ptr %driver_data44, align 4, !dbg !2872
  br label %if.end45, !dbg !2873

if.end45:                                         ; preds = %if.then42, %if.else39
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end38
  br label %sw.epilog63, !dbg !2874

sw.bb47:                                          ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #8, !dbg !2875
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !2726, metadata !DIExpression()), !dbg !2875
  %41 = load i32, ptr %freq, align 4, !dbg !2875
  %42 = load i32, ptr %target_freq.addr, align 4, !dbg !2875
  %sub = sub i32 %41, %42, !dbg !2875
  store i32 %sub, ptr %__x, align 4, !dbg !2875
  %43 = load i32, ptr %__x, align 4, !dbg !2875
  %cmp49 = icmp slt i32 %43, 0, !dbg !2875
  br i1 %cmp49, label %cond.true, label %cond.false, !dbg !2875

cond.true:                                        ; preds = %sw.bb47
  %44 = load i32, ptr %__x, align 4, !dbg !2875
  %sub50 = sub i32 0, %44, !dbg !2875
  br label %cond.end, !dbg !2875

cond.false:                                       ; preds = %sw.bb47
  %45 = load i32, ptr %__x, align 4, !dbg !2875
  br label %cond.end, !dbg !2875

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub50, %cond.true ], [ %45, %cond.false ], !dbg !2875
  store i32 %cond, ptr %tmp48, align 4, !dbg !2875
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #8, !dbg !2876
  %46 = load i32, ptr %tmp48, align 4, !dbg !2875
  store i32 %46, ptr %diff, align 4, !dbg !2877
  %47 = load i32, ptr %diff, align 4, !dbg !2878
  %frequency51 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %optimal, i32 0, i32 2, !dbg !2880
  %48 = load i32, ptr %frequency51, align 4, !dbg !2880
  %cmp52 = icmp ult i32 %47, %48, !dbg !2881
  br i1 %cmp52, label %if.then59, label %lor.lhs.false53, !dbg !2882

lor.lhs.false53:                                  ; preds = %cond.end
  %49 = load i32, ptr %diff, align 4, !dbg !2883
  %frequency54 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %optimal, i32 0, i32 2, !dbg !2884
  %50 = load i32, ptr %frequency54, align 4, !dbg !2884
  %cmp55 = icmp eq i32 %49, %50, !dbg !2885
  br i1 %cmp55, label %land.lhs.true, label %if.end62, !dbg !2886

land.lhs.true:                                    ; preds = %lor.lhs.false53
  %51 = load i32, ptr %freq, align 4, !dbg !2887
  %52 = load ptr, ptr %table, align 8, !dbg !2888
  %driver_data56 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %optimal, i32 0, i32 1, !dbg !2889
  %53 = load i32, ptr %driver_data56, align 4, !dbg !2889
  %idxprom = zext i32 %53 to i64, !dbg !2888
  %arrayidx = getelementptr %struct.cpufreq_frequency_table, ptr %52, i64 %idxprom, !dbg !2888
  %frequency57 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %arrayidx, i32 0, i32 2, !dbg !2890
  %54 = load i32, ptr %frequency57, align 4, !dbg !2890
  %cmp58 = icmp ugt i32 %51, %54, !dbg !2891
  br i1 %cmp58, label %if.then59, label %if.end62, !dbg !2892

if.then59:                                        ; preds = %land.lhs.true, %cond.end
  %55 = load i32, ptr %diff, align 4, !dbg !2893
  %frequency60 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %optimal, i32 0, i32 2, !dbg !2895
  store i32 %55, ptr %frequency60, align 4, !dbg !2896
  %56 = load i32, ptr %i, align 4, !dbg !2897
  %driver_data61 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %optimal, i32 0, i32 1, !dbg !2898
  store i32 %56, ptr %driver_data61, align 4, !dbg !2899
  br label %if.end62, !dbg !2900

if.end62:                                         ; preds = %if.then59, %land.lhs.true, %lor.lhs.false53
  br label %sw.epilog63, !dbg !2901

sw.epilog63:                                      ; preds = %if.end12, %if.end62, %if.end46, %if.end29
  br label %if.end64

if.end64:                                         ; preds = %sw.epilog63
  br label %for.inc, !dbg !2777

for.inc:                                          ; preds = %if.end64, %if.then9, %if.then
  %57 = load ptr, ptr %pos, align 8, !dbg !2776
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %57, i32 1, !dbg !2776
  store ptr %incdec.ptr, ptr %pos, align 8, !dbg !2776
  %58 = load i32, ptr %i, align 4, !dbg !2776
  %inc = add i32 %58, 1, !dbg !2776
  store i32 %inc, ptr %i, align 4, !dbg !2776
  br label %for.cond, !dbg !2776, !llvm.loop !2902

for.end:                                          ; preds = %if.then11, %for.cond
  %driver_data65 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %optimal, i32 0, i32 1, !dbg !2904
  %59 = load i32, ptr %driver_data65, align 4, !dbg !2904
  %60 = load i32, ptr %i, align 4, !dbg !2905
  %cmp66 = icmp ugt i32 %59, %60, !dbg !2906
  br i1 %cmp66, label %if.then67, label %if.else103, !dbg !2907

if.then67:                                        ; preds = %for.end
  %driver_data68 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %suboptimal, i32 0, i32 1, !dbg !2908
  %61 = load i32, ptr %driver_data68, align 4, !dbg !2908
  %62 = load i32, ptr %i, align 4, !dbg !2909
  %cmp69 = icmp ugt i32 %61, %62, !dbg !2910
  br i1 %cmp69, label %if.then70, label %if.end101, !dbg !2911

if.then70:                                        ; preds = %if.then67
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !2912
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2733, metadata !DIExpression()), !dbg !2912
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !2912
  %63 = load i32, ptr %__ret_warn_on, align 4, !dbg !2913
  %tobool = icmp ne i32 %63, 0, !dbg !2913
  %lnot = xor i1 %tobool, true, !dbg !2913
  %lnot71 = xor i1 %lnot, true, !dbg !2913
  %lnot.ext = zext i1 %lnot71 to i32, !dbg !2913
  %conv = sext i32 %lnot.ext to i64, !dbg !2913
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2913
  %tobool72 = icmp ne i64 %expval, 0, !dbg !2913
  br i1 %tobool72, label %if.then73, label %if.end92, !dbg !2912

if.then73:                                        ; preds = %if.then70
  br label %do.body, !dbg !2913

do.body:                                          ; preds = %if.then73
  br label %do.body74, !dbg !2914

do.body74:                                        ; preds = %do.body
  br label %do.cond, !dbg !2915

do.cond:                                          ; preds = %do.body74
  br label %do.end, !dbg !2915

do.end:                                           ; preds = %do.cond
  %64 = load ptr, ptr %policy.addr, align 8, !dbg !2914
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %64, i32 0, i32 4, !dbg !2914
  %65 = load i32, ptr %cpu, align 4, !dbg !2914
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, i32 noundef %65) #9, !dbg !2914
  br label %do.body75, !dbg !2914

do.body75:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !2917
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2739, metadata !DIExpression()), !dbg !2917
  store i32 2313, ptr %__flags, align 4, !dbg !2917
  br label %do.body76, !dbg !2917

do.body76:                                        ; preds = %do.body75
  br label %do.cond77, !dbg !2918

do.cond77:                                        ; preds = %do.body76
  br label %do.end78, !dbg !2918

do.end78:                                         ; preds = %do.cond77
  br label %do.body79, !dbg !2917

do.body79:                                        ; preds = %do.end78
  %66 = load i32, ptr %__flags, align 4, !dbg !2920
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 197, i32 %66, i64 12) #8, !dbg !2920, !srcloc !2922
  br label %do.cond80, !dbg !2920

do.cond80:                                        ; preds = %do.body79
  br label %do.end81, !dbg !2920

do.end81:                                         ; preds = %do.cond80
  br label %do.body82, !dbg !2917

do.body82:                                        ; preds = %do.end81
  br label %do.cond83, !dbg !2923

do.cond83:                                        ; preds = %do.body82
  br label %do.end84, !dbg !2923

do.end84:                                         ; preds = %do.cond83
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !2914
  br label %do.cond85, !dbg !2917

do.cond85:                                        ; preds = %do.end84
  br label %do.end86, !dbg !2917

do.end86:                                         ; preds = %do.cond85
  br label %do.body87, !dbg !2914

do.body87:                                        ; preds = %do.end86
  br label %do.cond88, !dbg !2925

do.cond88:                                        ; preds = %do.body87
  br label %do.end89, !dbg !2925

do.end89:                                         ; preds = %do.cond88
  br label %do.cond90, !dbg !2914

do.cond90:                                        ; preds = %do.end89
  br label %do.end91, !dbg !2914

do.end91:                                         ; preds = %do.cond90
  br label %if.end92, !dbg !2914

if.end92:                                         ; preds = %do.end91, %if.then70
  %67 = load i32, ptr %__ret_warn_on, align 4, !dbg !2912
  %tobool94 = icmp ne i32 %67, 0, !dbg !2912
  %lnot95 = xor i1 %tobool94, true, !dbg !2912
  %lnot97 = xor i1 %lnot95, true, !dbg !2912
  %lnot.ext98 = zext i1 %lnot97 to i32, !dbg !2912
  %conv99 = sext i32 %lnot.ext98 to i64, !dbg !2912
  %expval100 = call i64 @llvm.expect.i64(i64 %conv99, i64 0), !dbg !2912
  store i64 %expval100, ptr %tmp93, align 8, !dbg !2913
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !2927
  %68 = load i64, ptr %tmp93, align 8, !dbg !2912
  store i32 0, ptr %retval, align 4, !dbg !2928
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2928

if.end101:                                        ; preds = %if.then67
  %driver_data102 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %suboptimal, i32 0, i32 1, !dbg !2929
  %69 = load i32, ptr %driver_data102, align 4, !dbg !2929
  store i32 %69, ptr %index, align 4, !dbg !2930
  br label %if.end105, !dbg !2931

if.else103:                                       ; preds = %for.end
  %driver_data104 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %optimal, i32 0, i32 1, !dbg !2932
  %70 = load i32, ptr %driver_data104, align 4, !dbg !2932
  store i32 %70, ptr %index, align 4, !dbg !2933
  br label %if.end105

if.end105:                                        ; preds = %if.else103, %if.end101
  store i32 0, ptr %tmp106, align 4, !dbg !2934
  %71 = load i32, ptr %tmp106, align 4, !dbg !2937
  %72 = load i32, ptr %index, align 4, !dbg !2938
  store i32 %72, ptr %retval, align 4, !dbg !2939
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2939

cleanup:                                          ; preds = %if.end105, %if.end92
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #8, !dbg !2940
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !2940
  call void @llvm.lifetime.end.p0(i64 4, ptr %diff) #8, !dbg !2940
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #8, !dbg !2940
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #8, !dbg !2940
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #8, !dbg !2940
  call void @llvm.lifetime.end.p0(i64 12, ptr %suboptimal) #8, !dbg !2940
  call void @llvm.lifetime.end.p0(i64 12, ptr %optimal) #8, !dbg !2940
  %73 = load i32, ptr %retval, align 4, !dbg !2940
  ret i32 %73, !dbg !2940
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2941 dso_local void @__warn_printk(ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpufreq_frequency_table_get_index(ptr noundef %policy, i32 noundef %freq) #0 align 16 !dbg !2944 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %freq.addr = alloca i32, align 4
  %pos = alloca ptr, align 8
  %table = alloca ptr, align 8
  %idx = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2946, metadata !DIExpression()), !dbg !2951
  store i32 %freq, ptr %freq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %freq.addr, metadata !2947, metadata !DIExpression()), !dbg !2952
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #8, !dbg !2953
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !2948, metadata !DIExpression()), !dbg !2954
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #8, !dbg !2953
  call void @llvm.dbg.declare(metadata ptr %table, metadata !2949, metadata !DIExpression()), !dbg !2955
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !2956
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20, !dbg !2957
  %1 = load ptr, ptr %freq_table, align 8, !dbg !2957
  store ptr %1, ptr %table, align 8, !dbg !2955
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #8, !dbg !2958
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !2950, metadata !DIExpression()), !dbg !2959
  %2 = load ptr, ptr %table, align 8, !dbg !2960
  %tobool = icmp ne ptr %2, null, !dbg !2960
  %lnot = xor i1 %tobool, true, !dbg !2960
  %lnot1 = xor i1 %lnot, true, !dbg !2960
  %lnot2 = xor i1 %lnot1, true, !dbg !2960
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2960
  %conv = sext i32 %lnot.ext to i64, !dbg !2960
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2960
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2960
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2962

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !2963
  %3 = load i32, ptr %tmp, align 4, !dbg !2967
  store i32 -2, ptr %retval, align 4, !dbg !2968
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2968

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %table, align 8, !dbg !2969
  store ptr %4, ptr %pos, align 8, !dbg !2969
  store i32 0, ptr %idx, align 4, !dbg !2969
  br label %for.cond, !dbg !2969

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %pos, align 8, !dbg !2971
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %5, i32 0, i32 2, !dbg !2971
  %6 = load i32, ptr %frequency, align 4, !dbg !2971
  %cmp = icmp ne i32 %6, -2, !dbg !2971
  br i1 %cmp, label %for.body, label %for.end, !dbg !2969

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pos, align 8, !dbg !2973
  %frequency5 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %7, i32 0, i32 2, !dbg !2973
  %8 = load i32, ptr %frequency5, align 4, !dbg !2973
  %cmp6 = icmp eq i32 %8, -1, !dbg !2973
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !2971

if.then8:                                         ; preds = %for.body
  br label %for.inc, !dbg !2973

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr %pos, align 8, !dbg !2975
  %frequency9 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %9, i32 0, i32 2, !dbg !2977
  %10 = load i32, ptr %frequency9, align 4, !dbg !2977
  %11 = load i32, ptr %freq.addr, align 4, !dbg !2978
  %cmp10 = icmp eq i32 %10, %11, !dbg !2979
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !2980

if.then12:                                        ; preds = %if.else
  %12 = load i32, ptr %idx, align 4, !dbg !2981
  store i32 %12, ptr %retval, align 4, !dbg !2982
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2982

if.end13:                                         ; preds = %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13
  br label %for.inc, !dbg !2973

for.inc:                                          ; preds = %if.end14, %if.then8
  %13 = load ptr, ptr %pos, align 8, !dbg !2971
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %13, i32 1, !dbg !2971
  store ptr %incdec.ptr, ptr %pos, align 8, !dbg !2971
  %14 = load i32, ptr %idx, align 4, !dbg !2971
  %inc = add i32 %14, 1, !dbg !2971
  store i32 %inc, ptr %idx, align 4, !dbg !2971
  br label %for.cond, !dbg !2971, !llvm.loop !2983

for.end:                                          ; preds = %for.cond
  store i32 -22, ptr %retval, align 4, !dbg !2985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2985

cleanup:                                          ; preds = %for.end, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #8, !dbg !2986
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #8, !dbg !2986
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #8, !dbg !2986
  %15 = load i32, ptr %retval, align 4, !dbg !2986
  ret i32 %15, !dbg !2986
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @scaling_available_frequencies_show(ptr noundef %policy, ptr noundef %buf) #0 align 16 !dbg !2987 {
entry:
  %policy.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2989, metadata !DIExpression()), !dbg !2991
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2990, metadata !DIExpression()), !dbg !2992
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !2993
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !2994
  %call = call i64 @show_available_freqs(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false) #9, !dbg !2995
  ret i64 %call, !dbg !2996
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @scaling_boost_frequencies_show(ptr noundef %policy, ptr noundef %buf) #0 align 16 !dbg !2997 {
entry:
  %policy.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2999, metadata !DIExpression()), !dbg !3001
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3000, metadata !DIExpression()), !dbg !3002
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3003
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !3004
  %call = call i64 @show_available_freqs(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) #9, !dbg !3005
  ret i64 %call, !dbg !3006
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpufreq_table_validate_and_sort(ptr noundef %policy) #0 align 16 !dbg !3007 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3009, metadata !DIExpression()), !dbg !3011
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !3012
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3010, metadata !DIExpression()), !dbg !3013
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3014
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20, !dbg !3016
  %1 = load ptr, ptr %freq_table, align 8, !dbg !3016
  %tobool = icmp ne ptr %1, null, !dbg !3014
  br i1 %tobool, label %if.end2, label %if.then, !dbg !3017

if.then:                                          ; preds = %entry
  %call = call zeroext i1 @has_target_index() #9, !dbg !3018
  br i1 %call, label %if.then1, label %if.end, !dbg !3021

if.then1:                                         ; preds = %if.then
  store i32 -22, ptr %retval, align 4, !dbg !3022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3022

if.end:                                           ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !3023
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3023

if.end2:                                          ; preds = %entry
  %2 = load ptr, ptr %policy.addr, align 8, !dbg !3024
  %3 = load ptr, ptr %policy.addr, align 8, !dbg !3025
  %freq_table3 = getelementptr inbounds %struct.cpufreq_policy, ptr %3, i32 0, i32 20, !dbg !3026
  %4 = load ptr, ptr %freq_table3, align 8, !dbg !3026
  %call4 = call i32 @cpufreq_frequency_table_cpuinfo(ptr noundef %2, ptr noundef %4) #9, !dbg !3027
  store i32 %call4, ptr %ret, align 4, !dbg !3028
  %5 = load i32, ptr %ret, align 4, !dbg !3029
  %tobool5 = icmp ne i32 %5, 0, !dbg !3029
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3031

if.then6:                                         ; preds = %if.end2
  %6 = load i32, ptr %ret, align 4, !dbg !3032
  store i32 %6, ptr %retval, align 4, !dbg !3033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3033

if.end7:                                          ; preds = %if.end2
  %7 = load ptr, ptr %policy.addr, align 8, !dbg !3034
  %call8 = call i32 @set_freq_table_sorted(ptr noundef %7) #9, !dbg !3035
  store i32 %call8, ptr %retval, align 4, !dbg !3036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3036

cleanup:                                          ; preds = %if.end7, %if.then6, %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !3037
  %8 = load i32, ptr %retval, align 4, !dbg !3037
  ret i32 %8, !dbg !3037
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3038 dso_local zeroext i1 @has_target_index() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @set_freq_table_sorted(ptr noundef %policy) #0 align 16 !dbg !3039 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %table = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %ascending = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %tmp21 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3041, metadata !DIExpression()), !dbg !3046
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #8, !dbg !3047
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !3042, metadata !DIExpression()), !dbg !3048
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #8, !dbg !3047
  call void @llvm.dbg.declare(metadata ptr %table, metadata !3043, metadata !DIExpression()), !dbg !3049
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3050
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20, !dbg !3051
  %1 = load ptr, ptr %freq_table, align 8, !dbg !3051
  store ptr %1, ptr %table, align 8, !dbg !3049
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #8, !dbg !3052
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !3044, metadata !DIExpression()), !dbg !3053
  store ptr null, ptr %prev, align 8, !dbg !3053
  call void @llvm.lifetime.start.p0(i64 4, ptr %ascending) #8, !dbg !3054
  call void @llvm.dbg.declare(metadata ptr %ascending, metadata !3045, metadata !DIExpression()), !dbg !3055
  store i32 0, ptr %ascending, align 4, !dbg !3055
  %2 = load ptr, ptr %policy.addr, align 8, !dbg !3056
  %freq_table_sorted = getelementptr inbounds %struct.cpufreq_policy, ptr %2, i32 0, i32 21, !dbg !3057
  store i32 0, ptr %freq_table_sorted, align 8, !dbg !3058
  %3 = load ptr, ptr %table, align 8, !dbg !3059
  store ptr %3, ptr %pos, align 8, !dbg !3059
  br label %for.cond, !dbg !3059

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %pos, align 8, !dbg !3061
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %4, i32 0, i32 2, !dbg !3061
  %5 = load i32, ptr %frequency, align 4, !dbg !3061
  %cmp = icmp ne i32 %5, -2, !dbg !3061
  br i1 %cmp, label %for.body, label %for.end, !dbg !3059

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %pos, align 8, !dbg !3063
  %frequency1 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %6, i32 0, i32 2, !dbg !3063
  %7 = load i32, ptr %frequency1, align 4, !dbg !3063
  %cmp2 = icmp eq i32 %7, -1, !dbg !3063
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3061

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3063

if.else:                                          ; preds = %for.body
  %8 = load ptr, ptr %prev, align 8, !dbg !3065
  %tobool = icmp ne ptr %8, null, !dbg !3065
  br i1 %tobool, label %if.end, label %if.then3, !dbg !3068

if.then3:                                         ; preds = %if.else
  %9 = load ptr, ptr %pos, align 8, !dbg !3069
  store ptr %9, ptr %prev, align 8, !dbg !3071
  br label %for.inc, !dbg !3072

if.end:                                           ; preds = %if.else
  %10 = load ptr, ptr %pos, align 8, !dbg !3073
  %frequency4 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %10, i32 0, i32 2, !dbg !3075
  %11 = load i32, ptr %frequency4, align 4, !dbg !3075
  %12 = load ptr, ptr %prev, align 8, !dbg !3076
  %frequency5 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %12, i32 0, i32 2, !dbg !3077
  %13 = load i32, ptr %frequency5, align 4, !dbg !3077
  %cmp6 = icmp eq i32 %11, %13, !dbg !3078
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !3079

if.then7:                                         ; preds = %if.end
  br label %do.body, !dbg !3080

do.body:                                          ; preds = %if.then7
  br label %do.cond, !dbg !3083

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3083

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %pos, align 8, !dbg !3080
  %frequency8 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %14, i32 0, i32 2, !dbg !3080
  %15 = load i32, ptr %frequency8, align 4, !dbg !3080
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %15) #10, !dbg !3080
  store i32 %call, ptr %tmp, align 4, !dbg !3083
  %16 = load i32, ptr %tmp, align 4, !dbg !3080
  store i32 -22, ptr %retval, align 4, !dbg !3085
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3085

if.end9:                                          ; preds = %if.end
  %17 = load ptr, ptr %pos, align 8, !dbg !3086
  %frequency10 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %17, i32 0, i32 2, !dbg !3088
  %18 = load i32, ptr %frequency10, align 4, !dbg !3088
  %19 = load ptr, ptr %prev, align 8, !dbg !3089
  %frequency11 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %19, i32 0, i32 2, !dbg !3090
  %20 = load i32, ptr %frequency11, align 4, !dbg !3090
  %cmp12 = icmp ugt i32 %18, %20, !dbg !3091
  br i1 %cmp12, label %if.then13, label %if.else18, !dbg !3092

if.then13:                                        ; preds = %if.end9
  %21 = load i32, ptr %ascending, align 4, !dbg !3093
  %cmp14 = icmp slt i32 %21, 0, !dbg !3096
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !3097

if.then15:                                        ; preds = %if.then13
  store i32 0, ptr %tmp16, align 4, !dbg !3098
  %22 = load i32, ptr %tmp16, align 4, !dbg !3102
  store i32 0, ptr %retval, align 4, !dbg !3103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3103

if.end17:                                         ; preds = %if.then13
  %23 = load i32, ptr %ascending, align 4, !dbg !3104
  %inc = add i32 %23, 1, !dbg !3104
  store i32 %inc, ptr %ascending, align 4, !dbg !3104
  br label %if.end23, !dbg !3105

if.else18:                                        ; preds = %if.end9
  %24 = load i32, ptr %ascending, align 4, !dbg !3106
  %cmp19 = icmp sgt i32 %24, 0, !dbg !3109
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !3110

if.then20:                                        ; preds = %if.else18
  store i32 0, ptr %tmp21, align 4, !dbg !3111
  %25 = load i32, ptr %tmp21, align 4, !dbg !3115
  store i32 0, ptr %retval, align 4, !dbg !3116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3116

if.end22:                                         ; preds = %if.else18
  %26 = load i32, ptr %ascending, align 4, !dbg !3117
  %dec = add i32 %26, -1, !dbg !3117
  store i32 %dec, ptr %ascending, align 4, !dbg !3117
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end17
  %27 = load ptr, ptr %pos, align 8, !dbg !3118
  store ptr %27, ptr %prev, align 8, !dbg !3119
  br label %if.end24

if.end24:                                         ; preds = %if.end23
  br label %for.inc, !dbg !3063

for.inc:                                          ; preds = %if.end24, %if.then3, %if.then
  %28 = load ptr, ptr %pos, align 8, !dbg !3061
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %28, i32 1, !dbg !3061
  store ptr %incdec.ptr, ptr %pos, align 8, !dbg !3061
  br label %for.cond, !dbg !3061, !llvm.loop !3120

for.end:                                          ; preds = %for.cond
  %29 = load i32, ptr %ascending, align 4, !dbg !3122
  %cmp25 = icmp sgt i32 %29, 0, !dbg !3124
  br i1 %cmp25, label %if.then26, label %if.else28, !dbg !3125

if.then26:                                        ; preds = %for.end
  %30 = load ptr, ptr %policy.addr, align 8, !dbg !3126
  %freq_table_sorted27 = getelementptr inbounds %struct.cpufreq_policy, ptr %30, i32 0, i32 21, !dbg !3127
  store i32 1, ptr %freq_table_sorted27, align 8, !dbg !3128
  br label %if.end30, !dbg !3126

if.else28:                                        ; preds = %for.end
  %31 = load ptr, ptr %policy.addr, align 8, !dbg !3129
  %freq_table_sorted29 = getelementptr inbounds %struct.cpufreq_policy, ptr %31, i32 0, i32 21, !dbg !3130
  store i32 2, ptr %freq_table_sorted29, align 8, !dbg !3131
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then26
  store i32 0, ptr %tmp31, align 4, !dbg !3132
  %32 = load i32, ptr %tmp31, align 4, !dbg !3135
  store i32 0, ptr %retval, align 4, !dbg !3136
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3136

cleanup:                                          ; preds = %if.end30, %if.then20, %if.then15, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ascending) #8, !dbg !3137
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #8, !dbg !3137
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #8, !dbg !3137
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #8, !dbg !3137
  %33 = load i32, ptr %retval, align 4, !dbg !3137
  ret i32 %33, !dbg !3137
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpufreq_verify_within_limits(ptr noundef %policy, i32 noundef %min, i32 noundef %max) #4 align 16 !dbg !3138 {
entry:
  %policy.addr = alloca ptr, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___val203 = alloca i32, align 4
  %__UNIQUE_ID___lo204 = alloca i32, align 4
  %__UNIQUE_ID___hi205 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %__UNIQUE_ID___val206 = alloca i32, align 4
  %__UNIQUE_ID___lo207 = alloca i32, align 4
  %__UNIQUE_ID___hi208 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3142, metadata !DIExpression()), !dbg !3155
  store i32 %min, ptr %min.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !3143, metadata !DIExpression()), !dbg !3156
  store i32 %max, ptr %max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !3144, metadata !DIExpression()), !dbg !3157
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___val203) #8, !dbg !3158
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val203, metadata !3145, metadata !DIExpression()), !dbg !3158
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3158
  %max1 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %0, i32 0, i32 4, !dbg !3158
  %1 = load i32, ptr %max1, align 8, !dbg !3158
  store i32 %1, ptr %__UNIQUE_ID___val203, align 4, !dbg !3158
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo204) #8, !dbg !3158
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo204, metadata !3148, metadata !DIExpression()), !dbg !3158
  %2 = load i32, ptr %min.addr, align 4, !dbg !3158
  store i32 %2, ptr %__UNIQUE_ID___lo204, align 4, !dbg !3158
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___hi205) #8, !dbg !3158
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi205, metadata !3149, metadata !DIExpression()), !dbg !3158
  %3 = load i32, ptr %max.addr, align 4, !dbg !3158
  store i32 %3, ptr %__UNIQUE_ID___hi205, align 4, !dbg !3158
  %4 = load i32, ptr %__UNIQUE_ID___val203, align 4, !dbg !3158
  %5 = load i32, ptr %__UNIQUE_ID___hi205, align 4, !dbg !3158
  %cmp = icmp uge i32 %4, %5, !dbg !3158
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3158

cond.true:                                        ; preds = %entry
  %6 = load i32, ptr %__UNIQUE_ID___hi205, align 4, !dbg !3158
  br label %cond.end6, !dbg !3158

cond.false:                                       ; preds = %entry
  %7 = load i32, ptr %__UNIQUE_ID___val203, align 4, !dbg !3158
  %8 = load i32, ptr %__UNIQUE_ID___lo204, align 4, !dbg !3158
  %cmp3 = icmp ule i32 %7, %8, !dbg !3158
  br i1 %cmp3, label %cond.true4, label %cond.false5, !dbg !3158

cond.true4:                                       ; preds = %cond.false
  %9 = load i32, ptr %__UNIQUE_ID___lo204, align 4, !dbg !3158
  br label %cond.end, !dbg !3158

cond.false5:                                      ; preds = %cond.false
  %10 = load i32, ptr %__UNIQUE_ID___val203, align 4, !dbg !3158
  br label %cond.end, !dbg !3158

cond.end:                                         ; preds = %cond.false5, %cond.true4
  %cond = phi i32 [ %9, %cond.true4 ], [ %10, %cond.false5 ], !dbg !3158
  br label %cond.end6, !dbg !3158

cond.end6:                                        ; preds = %cond.end, %cond.true
  %cond7 = phi i32 [ %6, %cond.true ], [ %cond, %cond.end ], !dbg !3158
  store i32 %cond7, ptr %tmp2, align 4, !dbg !3158
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___hi205) #8, !dbg !3159
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo204) #8, !dbg !3159
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___val203) #8, !dbg !3159
  %11 = load i32, ptr %tmp2, align 4, !dbg !3158
  store i32 %11, ptr %tmp, align 4, !dbg !3160
  %12 = load i32, ptr %tmp, align 4, !dbg !3159
  %13 = load ptr, ptr %policy.addr, align 8, !dbg !3161
  %max8 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %13, i32 0, i32 4, !dbg !3162
  store i32 %12, ptr %max8, align 8, !dbg !3163
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___val206) #8, !dbg !3164
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val206, metadata !3150, metadata !DIExpression()), !dbg !3164
  %14 = load ptr, ptr %policy.addr, align 8, !dbg !3164
  %min10 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %14, i32 0, i32 3, !dbg !3164
  %15 = load i32, ptr %min10, align 4, !dbg !3164
  store i32 %15, ptr %__UNIQUE_ID___val206, align 4, !dbg !3164
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo207) #8, !dbg !3164
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo207, metadata !3153, metadata !DIExpression()), !dbg !3164
  %16 = load i32, ptr %min.addr, align 4, !dbg !3164
  store i32 %16, ptr %__UNIQUE_ID___lo207, align 4, !dbg !3164
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___hi208) #8, !dbg !3164
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi208, metadata !3154, metadata !DIExpression()), !dbg !3164
  %17 = load ptr, ptr %policy.addr, align 8, !dbg !3164
  %max11 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %17, i32 0, i32 4, !dbg !3164
  %18 = load i32, ptr %max11, align 8, !dbg !3164
  store i32 %18, ptr %__UNIQUE_ID___hi208, align 4, !dbg !3164
  %19 = load i32, ptr %__UNIQUE_ID___val206, align 4, !dbg !3164
  %20 = load i32, ptr %__UNIQUE_ID___hi208, align 4, !dbg !3164
  %cmp13 = icmp uge i32 %19, %20, !dbg !3164
  br i1 %cmp13, label %cond.true14, label %cond.false15, !dbg !3164

cond.true14:                                      ; preds = %cond.end6
  %21 = load i32, ptr %__UNIQUE_ID___hi208, align 4, !dbg !3164
  br label %cond.end21, !dbg !3164

cond.false15:                                     ; preds = %cond.end6
  %22 = load i32, ptr %__UNIQUE_ID___val206, align 4, !dbg !3164
  %23 = load i32, ptr %__UNIQUE_ID___lo207, align 4, !dbg !3164
  %cmp16 = icmp ule i32 %22, %23, !dbg !3164
  br i1 %cmp16, label %cond.true17, label %cond.false18, !dbg !3164

cond.true17:                                      ; preds = %cond.false15
  %24 = load i32, ptr %__UNIQUE_ID___lo207, align 4, !dbg !3164
  br label %cond.end19, !dbg !3164

cond.false18:                                     ; preds = %cond.false15
  %25 = load i32, ptr %__UNIQUE_ID___val206, align 4, !dbg !3164
  br label %cond.end19, !dbg !3164

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi i32 [ %24, %cond.true17 ], [ %25, %cond.false18 ], !dbg !3164
  br label %cond.end21, !dbg !3164

cond.end21:                                       ; preds = %cond.end19, %cond.true14
  %cond22 = phi i32 [ %21, %cond.true14 ], [ %cond20, %cond.end19 ], !dbg !3164
  store i32 %cond22, ptr %tmp12, align 4, !dbg !3164
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___hi208) #8, !dbg !3165
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo207) #8, !dbg !3165
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___val206) #8, !dbg !3165
  %26 = load i32, ptr %tmp12, align 4, !dbg !3164
  store i32 %26, ptr %tmp9, align 4, !dbg !3166
  %27 = load i32, ptr %tmp9, align 4, !dbg !3165
  %28 = load ptr, ptr %policy.addr, align 8, !dbg !3167
  %min23 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %28, i32 0, i32 3, !dbg !3168
  store i32 %27, ptr %min23, align 4, !dbg !3169
  ret void, !dbg !3170
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_available_freqs(ptr noundef %policy, ptr noundef %buf, i1 noundef zeroext %show_boost) #0 align 16 !dbg !3171 {
entry:
  %retval = alloca i64, align 8
  %policy.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %show_boost.addr = alloca i8, align 1
  %count = alloca i64, align 8
  %pos = alloca ptr, align 8
  %table = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3175, metadata !DIExpression()), !dbg !3181
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3176, metadata !DIExpression()), !dbg !3182
  %frombool = zext i1 %show_boost to i8
  store i8 %frombool, ptr %show_boost.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %show_boost.addr, metadata !3177, metadata !DIExpression()), !dbg !3183
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #8, !dbg !3184
  call void @llvm.dbg.declare(metadata ptr %count, metadata !3178, metadata !DIExpression()), !dbg !3185
  store i64 0, ptr %count, align 8, !dbg !3185
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #8, !dbg !3186
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !3179, metadata !DIExpression()), !dbg !3187
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #8, !dbg !3186
  call void @llvm.dbg.declare(metadata ptr %table, metadata !3180, metadata !DIExpression()), !dbg !3188
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !3189
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20, !dbg !3190
  %1 = load ptr, ptr %freq_table, align 8, !dbg !3190
  store ptr %1, ptr %table, align 8, !dbg !3188
  %2 = load ptr, ptr %table, align 8, !dbg !3191
  %tobool = icmp ne ptr %2, null, !dbg !3191
  br i1 %tobool, label %if.end, label %if.then, !dbg !3193

if.then:                                          ; preds = %entry
  store i64 -19, ptr %retval, align 8, !dbg !3194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3194

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %table, align 8, !dbg !3195
  store ptr %3, ptr %pos, align 8, !dbg !3195
  br label %for.cond, !dbg !3195

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %pos, align 8, !dbg !3197
  %frequency = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %4, i32 0, i32 2, !dbg !3197
  %5 = load i32, ptr %frequency, align 4, !dbg !3197
  %cmp = icmp ne i32 %5, -2, !dbg !3197
  br i1 %cmp, label %for.body, label %for.end, !dbg !3195

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %pos, align 8, !dbg !3199
  %frequency1 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %6, i32 0, i32 2, !dbg !3199
  %7 = load i32, ptr %frequency1, align 4, !dbg !3199
  %cmp2 = icmp eq i32 %7, -1, !dbg !3199
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !3197

if.then3:                                         ; preds = %for.body
  br label %for.inc, !dbg !3199

if.else:                                          ; preds = %for.body
  %8 = load i8, ptr %show_boost.addr, align 1, !dbg !3201, !range !2525, !noundef !391
  %tobool4 = trunc i8 %8 to i1, !dbg !3201
  %conv = zext i1 %tobool4 to i32, !dbg !3201
  %9 = load ptr, ptr %pos, align 8, !dbg !3204
  %flags = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %9, i32 0, i32 0, !dbg !3205
  %10 = load i32, ptr %flags, align 4, !dbg !3205
  %and = and i32 %10, 1, !dbg !3206
  %xor = xor i32 %conv, %and, !dbg !3207
  %tobool5 = icmp ne i32 %xor, 0, !dbg !3207
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3208

if.then6:                                         ; preds = %if.else
  br label %for.inc, !dbg !3209

if.end7:                                          ; preds = %if.else
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !3210
  %12 = load i64, ptr %count, align 8, !dbg !3211
  %arrayidx = getelementptr i8, ptr %11, i64 %12, !dbg !3210
  %13 = load ptr, ptr %pos, align 8, !dbg !3212
  %frequency8 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %13, i32 0, i32 2, !dbg !3213
  %14 = load i32, ptr %frequency8, align 4, !dbg !3213
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx, ptr noundef @.str.4, i32 noundef %14) #9, !dbg !3214
  %conv9 = sext i32 %call to i64, !dbg !3214
  %15 = load i64, ptr %count, align 8, !dbg !3215
  %add = add i64 %15, %conv9, !dbg !3215
  store i64 %add, ptr %count, align 8, !dbg !3215
  br label %if.end10

if.end10:                                         ; preds = %if.end7
  br label %for.inc, !dbg !3199

for.inc:                                          ; preds = %if.end10, %if.then6, %if.then3
  %16 = load ptr, ptr %pos, align 8, !dbg !3197
  %incdec.ptr = getelementptr %struct.cpufreq_frequency_table, ptr %16, i32 1, !dbg !3197
  store ptr %incdec.ptr, ptr %pos, align 8, !dbg !3197
  br label %for.cond, !dbg !3197, !llvm.loop !3216

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !3218
  %18 = load i64, ptr %count, align 8, !dbg !3219
  %arrayidx11 = getelementptr i8, ptr %17, i64 %18, !dbg !3218
  %call12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx11, ptr noundef @.str.5) #9, !dbg !3220
  %conv13 = sext i32 %call12 to i64, !dbg !3220
  %19 = load i64, ptr %count, align 8, !dbg !3221
  %add14 = add i64 %19, %conv13, !dbg !3221
  store i64 %add14, ptr %count, align 8, !dbg !3221
  %20 = load i64, ptr %count, align 8, !dbg !3222
  store i64 %20, ptr %retval, align 8, !dbg !3223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3223

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #8, !dbg !3224
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #8, !dbg !3224
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #8, !dbg !3224
  %21 = load i64, ptr %retval, align 8, !dbg !3224
  ret i64 %21, !dbg !3224
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3225 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3229 dso_local i32 @_printk(ptr noundef, ...) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453}
!llvm.ident = !{!2454}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_policy_has_boost_freq221", scope: !2, file: !3, line: 30, type: !59, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/cpufreq/.freq_table.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/cpufreq/freq_table\22 -D KBUILD_BASENAME=\22freq_table\22 -D KBUILD_MODNAME=\22freq_table\22 -D __KBUILD_MODNAME=kmod_freq_table -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/cpufreq/freq_table.ll drivers/cpufreq/freq_table.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !58, globals: !60, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/cpufreq/freq_table.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8df144ac1cf0de11fc251bbf746851")
!4 = !{!5, !13, !19, !25, !29, !35, !40, !46, !53}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !20, line: 41, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!23 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!24 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !20, line: 80, baseType: !7, size: 32, elements: !26)
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!28 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpufreq_table_sorting", file: !30, line: 41, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/cpufreq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad5b2d8eef98749599a01da4cdfaed5a")
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "CPUFREQ_TABLE_UNSORTED", value: 0)
!33 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_ASCENDING", value: 1)
!34 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_DESCENDING", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !36, line: 65, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!37 = !{!38, !39}
!38 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!39 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !41, line: 16, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!42 = !{!43, !44, !45}
!43 = !DIEnumerator(name: "TT_NONE", value: 0)
!44 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!45 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !47, line: 51, baseType: !7, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!48 = !{!49, !50, !51, !52}
!49 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!50 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!51 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!52 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 10, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!55 = !{!56, !57}
!56 = !DIEnumerator(name: "false", value: 0)
!57 = !DIEnumerator(name: "true", value: 1)
!58 = !{!59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!60 = !{!0, !61, !63, !65, !71, !73, !75, !77, !82, !2408, !2410, !2415, !2417, !2419, !2423, !2425, !2430, !2435, !2438, !2441}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpufreq_frequency_table_verify222", scope: !2, file: !3, line: 103, type: !59, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpufreq_generic_frequency_table_verify223", scope: !2, file: !3, line: 116, type: !59, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 232, elements: !69)
!68 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !{!70}
!70 = !DISubrange(count: 29)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !67, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpufreq_table_index_unsorted224", scope: !2, file: !3, line: 209, type: !59, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpufreq_frequency_table_get_index225", scope: !2, file: !3, line: 228, type: !59, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !3, line: 278, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 240, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 30)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "cpufreq_freq_attr_scaling_available_freqs", scope: !2, file: !3, line: 278, type: !84, isLocal: false, isDefinition: true)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_attr", file: !30, line: 294, size: 256, elements: !85)
!85 = !{!86, !97, !2404}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !84, file: !30, line: 295, baseType: !87, size: 128)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !88, line: 30, size: 128, elements: !89)
!88 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!89 = !{!90, !93}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !87, file: !88, line: 31, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !87, file: !88, line: 32, baseType: !94, size: 16, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !95, line: 24, baseType: !96)
!95 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !84, file: !30, line: 296, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!101, !106, !267}
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !95, line: 66, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !103, line: 73, baseType: !104)
!103 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !103, line: 15, baseType: !105)
!105 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_policy", file: !30, line: 55, size: 5120, elements: !108)
!108 = !{!109, !120, !121, !122, !123, !124, !128, !134, !135, !136, !137, !138, !139, !140, !1193, !1194, !1195, !1196, !1231, !1244, !1245, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1275, !2395, !2398, !2399, !2402, !2403}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !107, file: !30, line: 57, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !111, line: 913, baseType: !112)
!111 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 64, elements: !118)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !111, line: 19, size: 64, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !113, file: !111, line: 19, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 64, elements: !118)
!117 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!118 = !{!119}
!119 = !DISubrange(count: 1)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "related_cpus", scope: !107, file: !30, line: 58, baseType: !110, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "real_cpus", scope: !107, file: !30, line: 59, baseType: !110, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !107, file: !30, line: 61, baseType: !7, size: 32, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !107, file: !30, line: 63, baseType: !7, size: 32, offset: 224)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !107, file: !30, line: 65, baseType: !125, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !127, line: 17, flags: DIFlagFwdDecl)
!127 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1429a43eaf99e9312dde348d6bc82f22")
!128 = !DIDerivedType(tag: DW_TAG_member, name: "cpuinfo", scope: !107, file: !30, line: 66, baseType: !129, size: 96, offset: 320)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_cpuinfo", file: !30, line: 47, size: 96, elements: !130)
!130 = !{!131, !132, !133}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !129, file: !30, line: 48, baseType: !7, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !129, file: !30, line: 49, baseType: !7, size: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !129, file: !30, line: 52, baseType: !7, size: 32, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !107, file: !30, line: 68, baseType: !7, size: 32, offset: 416)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !107, file: !30, line: 69, baseType: !7, size: 32, offset: 448)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !107, file: !30, line: 70, baseType: !7, size: 32, offset: 480)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_freq", scope: !107, file: !30, line: 72, baseType: !7, size: 32, offset: 512)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !107, file: !30, line: 74, baseType: !7, size: 32, offset: 544)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "last_policy", scope: !107, file: !30, line: 75, baseType: !7, size: 32, offset: 576)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !107, file: !30, line: 76, baseType: !141, size: 64, offset: 640)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_governor", file: !30, line: 577, size: 832, elements: !143)
!143 = !{!144, !148, !153, !157, !158, !159, !160, !161, !165, !171, !1192}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !142, file: !30, line: 578, baseType: !145, size: 128)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 128, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 16)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !142, file: !30, line: 579, baseType: !149, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !106}
!152 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !142, file: !30, line: 580, baseType: !154, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !106}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !142, file: !30, line: 581, baseType: !149, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !142, file: !30, line: 582, baseType: !154, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !142, file: !30, line: 583, baseType: !154, size: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "show_setspeed", scope: !142, file: !30, line: 584, baseType: !98, size: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "store_setspeed", scope: !142, file: !30, line: 586, baseType: !162, size: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!152, !106, !7}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !142, file: !30, line: 588, baseType: !166, size: 128, offset: 576)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !95, line: 190, size: 128, elements: !167)
!167 = !{!168, !170}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !95, line: 191, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !166, file: !95, line: 191, baseType: !169, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !142, file: !30, line: 589, baseType: !172, size: 64, offset: 704)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !174)
!174 = !{!175, !176, !177, !181, !845, !871, !872, !873, !874, !878, !881, !882, !883, !936, !937, !938, !939, !940, !941, !942, !943, !946, !950, !970, !988, !989, !990, !991, !1000, !1024, !1025, !1028, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1042, !1043, !1150, !1158, !1159, !1160, !1162, !1166, !1167, !1171, !1172, !1173, !1174, !1176, !1177, !1178, !1185, !1186, !1187, !1191}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !173, file: !6, line: 403, baseType: !5, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !173, file: !6, line: 406, baseType: !166, size: 128, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !6, line: 409, baseType: !178, size: 448, offset: 192)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 448, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 56)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !173, file: !6, line: 417, baseType: !182, size: 768, offset: 640)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !183)
!183 = !{!184, !828, !829, !830, !833}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !182, file: !6, line: 46, baseType: !185, size: 512)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !186, line: 64, size: 512, elements: !187)
!186 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!187 = !{!188, !189, !190, !192, !280, !699, !813, !823, !824, !825, !826, !827}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !186, line: 65, baseType: !91, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !185, file: !186, line: 66, baseType: !166, size: 128, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !185, file: !186, line: 67, baseType: !191, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !185, file: !186, line: 68, baseType: !193, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !186, line: 168, size: 768, elements: !195)
!195 = !{!196, !197, !239, !240}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !194, file: !186, line: 169, baseType: !166, size: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !194, file: !186, line: 170, baseType: !198, size: 32, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !199, line: 29, baseType: !200)
!199 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !199, line: 17, size: 32, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !199, line: 18, baseType: !203, size: 32)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !199, line: 18, size: 32, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !203, file: !199, line: 19, baseType: !206, size: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !207, line: 14, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !206, file: !207, line: 15, baseType: !210, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !211, line: 44, baseType: !212)
!211 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !211, line: 14, size: 32, elements: !213)
!213 = !{!214}
!214 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !211, line: 15, baseType: !215, size: 32)
!215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !212, file: !211, line: 15, size: 32, elements: !216)
!216 = !{!217, !222, !232}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !215, file: !211, line: 16, baseType: !218, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !95, line: 174, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 172, size: 32, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !219, file: !95, line: 173, baseType: !152, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !211, line: 24, baseType: !223, size: 16)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !211, line: 24, size: 16, elements: !224)
!224 = !{!225, !231}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !223, file: !211, line: 25, baseType: !226, size: 8)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !227, line: 17, baseType: !228)
!227 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !229, line: 21, baseType: !230)
!229 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!230 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !223, file: !211, line: 26, baseType: !226, size: 8, offset: 8)
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !211, line: 28, baseType: !233, size: 32)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !211, line: 28, size: 32, elements: !234)
!234 = !{!235, !238}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !233, file: !211, line: 29, baseType: !236, size: 16)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !227, line: 19, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !229, line: 24, baseType: !96)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !233, file: !211, line: 30, baseType: !236, size: 16, offset: 16)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !194, file: !186, line: 171, baseType: !185, size: 512, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !194, file: !186, line: 172, baseType: !241, size: 64, offset: 704)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !186, line: 133, size: 192, elements: !244)
!244 = !{!245, !252, !257}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !243, file: !186, line: 134, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!152, !250}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !243, file: !186, line: 135, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!91, !250}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !243, file: !186, line: 136, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!152, !250, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !186, line: 125, size: 20736, elements: !264)
!264 = !{!265, !270, !274, !275, !279}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !263, file: !186, line: 126, baseType: !266, size: 192)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 192, elements: !268)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!268 = !{!269}
!269 = !DISubrange(count: 3)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !263, file: !186, line: 127, baseType: !271, size: 4096, offset: 192)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 4096, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !263, file: !186, line: 128, baseType: !152, size: 32, offset: 4288)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !263, file: !186, line: 129, baseType: !276, size: 16384, offset: 4320)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 16384, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 2048)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !263, file: !186, line: 130, baseType: !152, size: 32, offset: 20704)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !185, file: !186, line: 69, baseType: !281, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !186, line: 116, size: 384, elements: !284)
!284 = !{!285, !289, !306, !647, !677, !681}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !283, file: !186, line: 117, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !191}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !283, file: !186, line: 118, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !88, line: 254, size: 128, elements: !293)
!293 = !{!294, !299}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !292, file: !88, line: 255, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!101, !191, !298, !267}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !292, file: !88, line: 256, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!101, !191, !298, !91, !303}
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 61, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !103, line: 72, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !103, line: 16, baseType: !117)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !283, file: !186, line: 119, baseType: !307, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !88, line: 84, size: 320, elements: !311)
!311 = !{!312, !313, !317, !643, !645}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !310, file: !88, line: 85, baseType: !91, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !310, file: !88, line: 86, baseType: !314, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!94, !191, !298, !152}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !310, file: !88, line: 88, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!94, !191, !321, !152}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !88, line: 175, size: 512, elements: !323)
!323 = !{!324, !325, !326, !327, !334, !344, !345}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !322, file: !88, line: 176, baseType: !87, size: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !322, file: !88, line: 177, baseType: !303, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !322, file: !88, line: 178, baseType: !59, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !322, file: !88, line: 179, baseType: !328, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !333, line: 32, flags: DIFlagFwdDecl)
!333 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!334 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !322, file: !88, line: 180, baseType: !335, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!101, !338, !191, !321, !267, !341, !303}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !340, line: 537, flags: DIFlagFwdDecl)
!340 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !95, line: 52, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !103, line: 88, baseType: !343)
!343 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !322, file: !88, line: 182, baseType: !335, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !322, file: !88, line: 184, baseType: !346, size: 64, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!152, !338, !191, !321, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !333, line: 625, size: 1344, elements: !351)
!351 = !{!352, !369, !591, !597, !604, !605, !610, !613, !625, !626, !629, !633, !634, !635, !636, !637, !641}
!352 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !333, line: 628, baseType: !353, size: 128)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !333, line: 628, size: 128, elements: !354)
!354 = !{!355, !360}
!355 = !DIDerivedType(tag: DW_TAG_member, scope: !353, file: !333, line: 629, baseType: !356, size: 128)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !353, file: !333, line: 629, size: 128, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !356, file: !333, line: 631, baseType: !117, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !356, file: !333, line: 632, baseType: !117, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !353, file: !333, line: 635, baseType: !361, size: 128, align: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !95, line: 232, size: 128, align: 64, elements: !362)
!362 = !{!363, !365}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !95, line: 233, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !361, file: !95, line: 234, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !364}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !350, file: !333, line: 639, baseType: !370, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !333, line: 733, size: 10240, elements: !372)
!372 = !{!373, !587}
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !333, line: 734, baseType: !374, size: 10240)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !371, file: !333, line: 734, size: 10240, elements: !375)
!375 = !{!376, !380, !394, !398, !399, !400, !401, !402, !403, !411, !412, !413, !422, !423, !432, !433, !434, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !481, !495, !498, !553, !554, !555, !558, !562, !563, !566, !567, !568, !574, !575}
!376 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !333, line: 739, baseType: !377, size: 512, align: 512)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !333, line: 739, size: 512, align: 512, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !377, file: !333, line: 747, baseType: !218, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !374, file: !333, line: 750, baseType: !381, size: 128, offset: 512)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !382, line: 218, size: 128, elements: !383)
!382 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!383 = !{!384, !392, !393}
!384 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !382, line: 219, baseType: !385, size: 32)
!385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !382, line: 219, size: 32, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !385, file: !382, line: 220, baseType: !198, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !385, file: !382, line: 221, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !382, line: 197, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 197, elements: !391)
!391 = !{}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !381, file: !382, line: 223, baseType: !7, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !381, file: !382, line: 224, baseType: !59, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !374, file: !333, line: 752, baseType: !395, size: 64, offset: 640)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!117, !338, !117, !117, !117, !117}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !374, file: !333, line: 756, baseType: !117, size: 64, offset: 704)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !374, file: !333, line: 757, baseType: !117, size: 64, offset: 768)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !374, file: !333, line: 760, baseType: !117, size: 64, offset: 832)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !374, file: !333, line: 761, baseType: !117, size: 64, offset: 896)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !374, file: !333, line: 763, baseType: !117, size: 64, offset: 960)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !374, file: !333, line: 764, baseType: !404, size: 64, offset: 1024)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !340, line: 299, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 299, size: 64, elements: !407)
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !406, file: !340, line: 299, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !410, line: 18, baseType: !117)
!410 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!411 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !374, file: !333, line: 773, baseType: !218, size: 32, offset: 1088)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !374, file: !333, line: 785, baseType: !218, size: 32, offset: 1120)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !374, file: !333, line: 795, baseType: !414, size: 64, offset: 1152)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !333, line: 726, size: 128, elements: !416)
!416 = !{!417, !421}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !415, file: !333, line: 727, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !227, line: 23, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !229, line: 31, baseType: !420)
!420 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !415, file: !333, line: 728, baseType: !152, size: 32, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !374, file: !333, line: 801, baseType: !117, size: 64, offset: 1216)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !374, file: !333, line: 804, baseType: !424, size: 64, offset: 1280)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !425, line: 13, baseType: !426)
!425 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !95, line: 181, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 179, size: 64, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !427, file: !95, line: 180, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !227, line: 22, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !229, line: 30, baseType: !343)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !374, file: !333, line: 806, baseType: !152, size: 32, offset: 1344)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !374, file: !333, line: 808, baseType: !198, size: 32, offset: 1376)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !374, file: !333, line: 823, baseType: !435, size: 320, offset: 1408)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !436, line: 48, size: 320, elements: !437)
!436 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!437 = !{!438, !439, !440, !445, !447}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !435, file: !436, line: 49, baseType: !424, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !435, file: !436, line: 55, baseType: !424, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !435, file: !436, line: 57, baseType: !441, size: 32, offset: 128)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !442, line: 15, size: 32, elements: !443)
!442 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !441, file: !442, line: 20, baseType: !218, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !435, file: !436, line: 59, baseType: !446, size: 32, offset: 160)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !207, line: 23, baseType: !206)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !435, file: !436, line: 60, baseType: !166, size: 128, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !374, file: !333, line: 825, baseType: !166, size: 128, offset: 1728)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !374, file: !333, line: 845, baseType: !152, size: 32, offset: 1856)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !374, file: !333, line: 849, baseType: !117, size: 64, offset: 1920)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !374, file: !333, line: 850, baseType: !117, size: 64, offset: 1984)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !374, file: !333, line: 852, baseType: !117, size: 64, offset: 2048)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !374, file: !333, line: 853, baseType: !117, size: 64, offset: 2112)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !374, file: !333, line: 854, baseType: !426, size: 64, offset: 2176)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !374, file: !333, line: 855, baseType: !117, size: 64, offset: 2240)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !374, file: !333, line: 856, baseType: !117, size: 64, offset: 2304)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !374, file: !333, line: 857, baseType: !117, size: 64, offset: 2368)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !374, file: !333, line: 858, baseType: !117, size: 64, offset: 2432)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !374, file: !333, line: 865, baseType: !460, size: 32, offset: 2496)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !461, line: 69, baseType: !462)
!461 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !461, line: 64, size: 32, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !462, file: !461, line: 65, baseType: !7, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !374, file: !333, line: 867, baseType: !198, size: 32, offset: 2528)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !374, file: !333, line: 869, baseType: !117, size: 64, offset: 2560)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !374, file: !333, line: 869, baseType: !117, size: 64, offset: 2624)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !374, file: !333, line: 869, baseType: !117, size: 64, offset: 2688)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !374, file: !333, line: 869, baseType: !117, size: 64, offset: 2752)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !374, file: !333, line: 870, baseType: !117, size: 64, offset: 2816)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !374, file: !333, line: 870, baseType: !117, size: 64, offset: 2880)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !374, file: !333, line: 870, baseType: !117, size: 64, offset: 2944)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !374, file: !333, line: 871, baseType: !117, size: 64, offset: 3008)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !374, file: !333, line: 871, baseType: !117, size: 64, offset: 3072)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !374, file: !333, line: 871, baseType: !117, size: 64, offset: 3136)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !374, file: !333, line: 871, baseType: !117, size: 64, offset: 3200)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !374, file: !333, line: 873, baseType: !478, size: 3328, offset: 3264)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 3328, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 52)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !374, file: !333, line: 875, baseType: !482, size: 1280, offset: 6592)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 1280, elements: !493)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !484, line: 22, size: 320, elements: !485)
!484 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!485 = !{!486, !487, !488, !489}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !483, file: !484, line: 23, baseType: !446, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !483, file: !484, line: 24, baseType: !430, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !483, file: !484, line: 26, baseType: !166, size: 128, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !483, file: !484, line: 28, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !227, line: 20, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !229, line: 26, baseType: !152)
!493 = !{!494}
!494 = !DISubrange(count: 4)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !374, file: !333, line: 877, baseType: !496, size: 64, offset: 7872)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !333, line: 877, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !374, file: !333, line: 880, baseType: !499, size: 1088, offset: 7936)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !500, line: 72, baseType: !501)
!500 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !500, line: 23, size: 1088, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !510, !511, !519, !520, !547, !548, !549}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !501, file: !500, line: 28, baseType: !418, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !501, file: !500, line: 38, baseType: !426, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !501, file: !500, line: 40, baseType: !117, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !501, file: !500, line: 43, baseType: !435, size: 320, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !501, file: !500, line: 44, baseType: !508, size: 64, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !500, line: 44, flags: DIFlagFwdDecl)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !501, file: !500, line: 48, baseType: !117, size: 64, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !501, file: !500, line: 59, baseType: !512, size: 256, offset: 640)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !513, line: 66, size: 256, elements: !514)
!513 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!514 = !{!515, !516, !517, !518}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !512, file: !513, line: 67, baseType: !424, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !512, file: !513, line: 68, baseType: !446, size: 32, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !512, file: !513, line: 70, baseType: !441, size: 32, offset: 96)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !512, file: !513, line: 72, baseType: !166, size: 128, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !501, file: !500, line: 60, baseType: !59, size: 64, offset: 896)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !501, file: !500, line: 61, baseType: !521, size: 64, offset: 960)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !524, line: 13, size: 1216, elements: !525)
!524 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!525 = !{!526, !527, !528, !529, !530, !531, !532, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !523, file: !524, line: 14, baseType: !59, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !523, file: !524, line: 15, baseType: !117, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !523, file: !524, line: 17, baseType: !117, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !523, file: !524, line: 17, baseType: !117, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !523, file: !524, line: 18, baseType: !117, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !523, file: !524, line: 18, baseType: !117, size: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !523, file: !524, line: 19, baseType: !533, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !523, file: !524, line: 21, baseType: !105, size: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !523, file: !524, line: 23, baseType: !105, size: 64, offset: 512)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !523, file: !524, line: 24, baseType: !105, size: 64, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !523, file: !524, line: 25, baseType: !105, size: 64, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !523, file: !524, line: 26, baseType: !105, size: 64, offset: 704)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !523, file: !524, line: 27, baseType: !105, size: 64, offset: 768)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !523, file: !524, line: 28, baseType: !105, size: 64, offset: 832)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !523, file: !524, line: 29, baseType: !105, size: 64, offset: 896)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !523, file: !524, line: 30, baseType: !105, size: 64, offset: 960)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !523, file: !524, line: 31, baseType: !105, size: 64, offset: 1024)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !523, file: !524, line: 32, baseType: !105, size: 64, offset: 1088)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !523, file: !524, line: 33, baseType: !105, size: 64, offset: 1152)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !501, file: !500, line: 63, baseType: !218, size: 32, offset: 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !501, file: !500, line: 69, baseType: !236, size: 16, offset: 1056)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !501, file: !500, line: 70, baseType: !550, size: 16, offset: 1072)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !227, line: 18, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !229, line: 23, baseType: !552)
!552 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !374, file: !333, line: 882, baseType: !117, size: 64, offset: 9024)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !374, file: !333, line: 885, baseType: !198, size: 32, offset: 9088)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !374, file: !333, line: 886, baseType: !556, size: 64, offset: 9152)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !333, line: 732, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !374, file: !333, line: 901, baseType: !559, size: 64, offset: 9216)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !561, line: 18, flags: DIFlagFwdDecl)
!561 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!562 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !374, file: !333, line: 904, baseType: !338, size: 64, offset: 9280)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !374, file: !333, line: 906, baseType: !564, size: 64, offset: 9344)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !333, line: 906, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !374, file: !333, line: 930, baseType: !218, size: 32, offset: 9408)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !374, file: !333, line: 933, baseType: !218, size: 32, offset: 9440)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !374, file: !333, line: 935, baseType: !569, size: 64, offset: 9472)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !47, line: 103, size: 64, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !569, file: !47, line: 104, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !47, line: 101, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !374, file: !333, line: 940, baseType: !424, size: 64, offset: 9536)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !374, file: !333, line: 942, baseType: !576, size: 256, offset: 9600)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !577, line: 98, size: 256, elements: !578)
!577 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!578 = !{!579, !580, !581}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !576, file: !577, line: 99, baseType: !424, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !576, file: !577, line: 100, baseType: !166, size: 128, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !576, file: !577, line: 101, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !577, line: 21, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !371, file: !333, line: 986, baseType: !588, offset: 10240)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: -1)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !350, file: !333, line: 640, baseType: !592, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !340, line: 297, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !340, line: 297, size: 64, elements: !594)
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !593, file: !340, line: 297, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !410, line: 19, baseType: !117)
!597 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !333, line: 646, baseType: !598, size: 64, offset: 256)
!598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !333, line: 646, size: 64, elements: !599)
!599 = !{!600, !603}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !598, file: !333, line: 647, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !333, line: 542, baseType: !117)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !598, file: !333, line: 648, baseType: !602, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !350, file: !333, line: 666, baseType: !152, size: 32, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !350, file: !333, line: 667, baseType: !606, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !333, line: 579, size: 320, elements: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !607, file: !333, line: 580, baseType: !435, size: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !350, file: !333, line: 670, baseType: !611, size: 8, offset: 448)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !95, line: 35, baseType: !612)
!612 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !350, file: !333, line: 681, baseType: !614, size: 256, offset: 512)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !350, file: !333, line: 678, size: 256, elements: !615)
!615 = !{!616, !624}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !614, file: !333, line: 679, baseType: !617, size: 192, align: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !618, line: 5, size: 192, align: 64, elements: !619)
!618 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!619 = !{!620, !621, !623}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !617, file: !618, line: 6, baseType: !117, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !617, file: !618, line: 7, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !617, file: !618, line: 8, baseType: !622, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !614, file: !333, line: 680, baseType: !117, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !350, file: !333, line: 689, baseType: !166, size: 128, offset: 768)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !350, file: !333, line: 691, baseType: !627, size: 64, offset: 896)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !333, line: 691, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !350, file: !333, line: 694, baseType: !630, size: 64, offset: 960)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !333, line: 694, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !350, file: !333, line: 697, baseType: !117, size: 64, offset: 1024)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !350, file: !333, line: 699, baseType: !338, size: 64, offset: 1088)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !350, file: !333, line: 700, baseType: !59, size: 64, offset: 1152)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !350, file: !333, line: 711, baseType: !424, size: 64, offset: 1216)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !350, file: !333, line: 717, baseType: !638, size: 64, offset: 1280)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !640, line: 54, flags: DIFlagFwdDecl)
!640 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!641 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !350, file: !333, line: 722, baseType: !642, offset: 1344)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !333, line: 570, elements: !391)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !310, file: !88, line: 90, baseType: !644, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !310, file: !88, line: 91, baseType: !646, size: 64, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !283, file: !186, line: 120, baseType: !648, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!651, !250}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !654)
!654 = !{!655, !656, !660, !663, !669, !673}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !653, file: !14, line: 40, baseType: !13, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !653, file: !14, line: 41, baseType: !657, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!611}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !653, file: !14, line: 42, baseType: !661, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !58)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !653, file: !14, line: 43, baseType: !664, size: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!533, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !653, file: !14, line: 44, baseType: !670, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!533}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !653, file: !14, line: 45, baseType: !674, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !59}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !283, file: !186, line: 121, baseType: !678, size: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!533, !250}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !283, file: !186, line: 122, baseType: !682, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !250, !685, !692}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !561, line: 23, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 21, size: 32, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !687, file: !561, line: 22, baseType: !690, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !95, line: 37, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !103, line: 49, baseType: !7)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !561, line: 28, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 26, size: 32, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !694, file: !561, line: 27, baseType: !697, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !95, line: 38, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !103, line: 50, baseType: !7)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !185, file: !186, line: 70, baseType: !700, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !702, line: 190, size: 1152, elements: !703)
!702 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !805, !806, !807, !808, !809, !812}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !701, file: !702, line: 191, baseType: !218, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !701, file: !702, line: 192, baseType: !218, size: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !701, file: !702, line: 202, baseType: !700, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !701, file: !702, line: 203, baseType: !91, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !701, file: !702, line: 205, baseType: !617, size: 192, align: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !701, file: !702, line: 207, baseType: !533, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !701, file: !702, line: 208, baseType: !7, size: 32, offset: 448)
!711 = !DIDerivedType(tag: DW_TAG_member, scope: !701, file: !702, line: 209, baseType: !712, size: 256, offset: 512)
!712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !701, file: !702, line: 209, size: 256, elements: !713)
!713 = !{!714, !726, !730}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !712, file: !702, line: 210, baseType: !715, size: 256)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !702, line: 153, size: 256, elements: !716)
!716 = !{!717, !718, !722, !725}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !715, file: !702, line: 154, baseType: !117, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !715, file: !702, line: 156, baseType: !719, size: 64, offset: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !618, line: 12, size: 64, elements: !720)
!720 = !{!721}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !719, file: !618, line: 13, baseType: !622, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !715, file: !702, line: 162, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !702, line: 162, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !715, file: !702, line: 167, baseType: !117, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !712, file: !702, line: 211, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !702, line: 170, size: 64, elements: !728)
!728 = !{!729}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !727, file: !702, line: 171, baseType: !700, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !712, file: !702, line: 212, baseType: !731, size: 256)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !702, line: 174, size: 256, elements: !732)
!732 = !{!733, !800, !803, !804}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !731, file: !702, line: 175, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !702, line: 271, size: 768, elements: !737)
!737 = !{!738, !760, !764, !768, !773, !777, !781, !785, !786, !787, !788, !796}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !736, file: !702, line: 276, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!152, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !702, line: 251, size: 1216, elements: !744)
!744 = !{!745, !746, !747, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !743, file: !702, line: 253, baseType: !700, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !743, file: !702, line: 254, baseType: !338, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !743, file: !702, line: 255, baseType: !748, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !640, line: 66, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !743, file: !702, line: 256, baseType: !59, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !743, file: !702, line: 259, baseType: !512, size: 256, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !743, file: !702, line: 260, baseType: !512, size: 256, offset: 512)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !743, file: !702, line: 261, baseType: !152, size: 32, offset: 768)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !743, file: !702, line: 262, baseType: !166, size: 128, offset: 832)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !743, file: !702, line: 263, baseType: !267, size: 64, offset: 960)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !743, file: !702, line: 265, baseType: !303, size: 64, offset: 1024)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !743, file: !702, line: 266, baseType: !611, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !743, file: !702, line: 267, baseType: !611, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !743, file: !702, line: 268, baseType: !630, size: 64, offset: 1152)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !736, file: !702, line: 277, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !742}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !736, file: !702, line: 290, baseType: !765, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!152, !748, !59}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !736, file: !702, line: 292, baseType: !769, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!59, !748, !772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !736, file: !702, line: 293, baseType: !774, size: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!59, !748, !59, !772}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !736, file: !702, line: 294, baseType: !778, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !748, !59}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !736, file: !702, line: 296, baseType: !782, size: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!101, !742, !267, !303, !341}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !736, file: !702, line: 306, baseType: !303, size: 64, offset: 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !736, file: !702, line: 313, baseType: !611, size: 8, offset: 512)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !736, file: !702, line: 314, baseType: !782, size: 64, offset: 576)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !736, file: !702, line: 317, baseType: !789, size: 64, offset: 640)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!792, !742, !794}
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !793, line: 59, baseType: !7)
!793 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !702, line: 31, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !736, file: !702, line: 320, baseType: !797, size: 64, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!152, !742, !349}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !731, file: !702, line: 176, baseType: !801, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !702, line: 35, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !731, file: !702, line: 177, baseType: !341, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !731, file: !702, line: 178, baseType: !700, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !701, file: !702, line: 215, baseType: !59, size: 64, offset: 768)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !701, file: !702, line: 221, baseType: !418, size: 64, offset: 832)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !701, file: !702, line: 223, baseType: !96, size: 16, offset: 896)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !701, file: !702, line: 224, baseType: !94, size: 16, offset: 912)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !701, file: !702, line: 225, baseType: !810, size: 64, offset: 960)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !702, line: 36, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !701, file: !702, line: 227, baseType: !361, size: 128, align: 64, offset: 1024)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !185, file: !186, line: 71, baseType: !814, size: 32, offset: 448)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !815, line: 19, size: 32, elements: !816)
!815 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!816 = !{!817}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !814, file: !815, line: 20, baseType: !818, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !819, line: 113, baseType: !820)
!819 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !819, line: 111, size: 32, elements: !821)
!821 = !{!822}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !820, file: !819, line: 112, baseType: !218, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !185, file: !186, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !185, file: !186, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !185, file: !186, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !185, file: !186, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !185, file: !186, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !182, file: !6, line: 47, baseType: !172, size: 64, offset: 512)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !182, file: !6, line: 48, baseType: !191, size: 64, offset: 576)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !182, file: !6, line: 49, baseType: !831, size: 64, offset: 640)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !182, file: !6, line: 50, baseType: !834, size: 64, offset: 704)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !836, line: 26, size: 256, elements: !837)
!836 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !835, file: !836, line: 27, baseType: !7, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !835, file: !836, line: 28, baseType: !840, size: 192, offset: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !841, line: 43, size: 192, elements: !842)
!841 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !840, file: !841, line: 44, baseType: !446, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !840, file: !841, line: 45, baseType: !166, size: 128, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !173, file: !6, line: 418, baseType: !846, size: 64, offset: 1408)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !848)
!848 = !{!849, !850, !855, !859, !863, !867}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !847, file: !6, line: 54, baseType: !87, size: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !847, file: !6, line: 55, baseType: !851, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!101, !846, !854, !267}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !847, file: !6, line: 57, baseType: !856, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!101, !846, !854, !91, !303}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !847, file: !6, line: 59, baseType: !860, size: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !172, !91}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !847, file: !6, line: 60, baseType: !864, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!152, !172}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !847, file: !6, line: 61, baseType: !868, size: 64, offset: 384)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !172}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !173, file: !6, line: 419, baseType: !91, size: 64, offset: 1472)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !173, file: !6, line: 420, baseType: !91, size: 64, offset: 1536)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !173, file: !6, line: 421, baseType: !191, size: 64, offset: 1600)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !173, file: !6, line: 424, baseType: !875, size: 64, offset: 1664)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !173, file: !6, line: 425, baseType: !879, size: 64, offset: 1728)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !173, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !173, file: !6, line: 435, baseType: !512, size: 256, offset: 1856)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !173, file: !6, line: 437, baseType: !884, size: 64, offset: 2112)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !886, line: 69, size: 320, elements: !887)
!886 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!887 = !{!888, !889, !890, !907, !909, !913, !914}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !885, file: !886, line: 70, baseType: !91, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !885, file: !886, line: 71, baseType: !172, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !885, file: !886, line: 72, baseType: !891, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !886, line: 47, size: 256, elements: !894)
!894 = !{!895, !896, !902, !906}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !893, file: !886, line: 49, baseType: !7, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !893, file: !886, line: 51, baseType: !897, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!152, !91, !900}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !885)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !893, file: !886, line: 53, baseType: !903, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!152, !267, !900}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !893, file: !886, line: 55, baseType: !674, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !885, file: !886, line: 73, baseType: !908, size: 16, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !885, file: !886, line: 74, baseType: !910, size: 8, offset: 208)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !227, line: 16, baseType: !911)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !229, line: 20, baseType: !912)
!912 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !885, file: !886, line: 75, baseType: !226, size: 8, offset: 216)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !885, file: !886, line: 76, baseType: !915, size: 64, offset: 256)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !885, file: !886, line: 76, size: 64, elements: !916)
!916 = !{!917, !918, !925}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !915, file: !886, line: 77, baseType: !59, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !915, file: !886, line: 78, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !886, line: 86, size: 128, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !921, file: !886, line: 87, baseType: !7, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !921, file: !886, line: 88, baseType: !267, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !915, file: !886, line: 79, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !928)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !886, line: 92, size: 256, elements: !929)
!929 = !{!930, !931, !932, !934, !935}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !928, file: !886, line: 94, baseType: !7, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !928, file: !886, line: 95, baseType: !7, size: 32, offset: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !928, file: !886, line: 96, baseType: !933, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !928, file: !886, line: 97, baseType: !891, size: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !928, file: !886, line: 98, baseType: !59, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !173, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !173, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !173, file: !6, line: 442, baseType: !875, size: 64, offset: 2240)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !173, file: !6, line: 443, baseType: !879, size: 64, offset: 2304)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !173, file: !6, line: 444, baseType: !611, size: 8, offset: 2368)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !173, file: !6, line: 451, baseType: !611, size: 8, offset: 2376)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !173, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !173, file: !6, line: 455, baseType: !944, size: 64, offset: 2432)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !6, line: 43, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !173, file: !6, line: 458, baseType: !947, size: 64, offset: 2496)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!152}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !173, file: !6, line: 460, baseType: !951, size: 4032, align: 512, offset: 2560)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, size: 4032, elements: !968)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !953)
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !952, file: !6, line: 363, baseType: !59, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !952, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !952, file: !6, line: 367, baseType: !957, size: 448, offset: 128)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !957, file: !6, line: 320, baseType: !172, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !957, file: !6, line: 321, baseType: !961, size: 384, offset: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !962, line: 40, size: 384, elements: !963)
!962 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !961, file: !962, line: 41, baseType: !965, size: 384, align: 64)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 384, align: 64, elements: !966)
!966 = !{!967}
!967 = !DISubrange(count: 2)
!968 = !{!969}
!969 = !DISubrange(count: 7)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !173, file: !6, line: 463, baseType: !971, size: 192, offset: 6592)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !972, line: 8, size: 192, elements: !973)
!972 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!973 = !{!974, !975, !977}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !971, file: !972, line: 10, baseType: !7, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !971, file: !972, line: 11, baseType: !976, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !971, file: !972, line: 12, baseType: !978, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !980, line: 59, size: 48, elements: !981)
!980 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!981 = !{!982, !983, !984, !985, !986, !987}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !979, file: !980, line: 60, baseType: !550, size: 16)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !979, file: !980, line: 61, baseType: !550, size: 16, offset: 16)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !979, file: !980, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !979, file: !980, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !979, file: !980, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !979, file: !980, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !173, file: !6, line: 465, baseType: !117, size: 64, offset: 6784)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !173, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !173, file: !6, line: 470, baseType: !166, size: 128, offset: 6912)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !173, file: !6, line: 471, baseType: !992, size: 64, offset: 7040)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !994, line: 33, size: 96, elements: !995)
!994 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!995 = !{!996, !997, !998, !999}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !993, file: !994, line: 37, baseType: !152, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !993, file: !994, line: 43, baseType: !152, size: 32, offset: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !993, file: !994, line: 45, baseType: !96, size: 16, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !993, file: !994, line: 47, baseType: !96, size: 16, offset: 80)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !173, file: !6, line: 476, baseType: !1001, size: 64, offset: 7104)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1003)
!1003 = !{!1004, !1021, !1022, !1023}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1002, file: !6, line: 379, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1007, line: 204, baseType: !1008)
!1007 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1007, line: 197, size: 192, elements: !1009)
!1009 = !{!1010, !1013, !1014, !1015, !1017, !1019}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1008, file: !1007, line: 198, baseType: !1011, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1007, line: 21, baseType: !1012)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !229, line: 27, baseType: !7)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1008, file: !1007, line: 199, baseType: !230, size: 8, offset: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1008, file: !1007, line: 200, baseType: !230, size: 8, offset: 40)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1008, file: !1007, line: 201, baseType: !1016, size: 16, offset: 48)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1007, line: 17, baseType: !237)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1008, file: !1007, line: 202, baseType: !1018, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1007, line: 16, baseType: !419)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1008, file: !1007, line: 203, baseType: !1020, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1007, line: 22, baseType: !419)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1002, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1002, file: !6, line: 381, baseType: !267, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1002, file: !6, line: 382, baseType: !267, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !173, file: !6, line: 477, baseType: !1002, size: 256, offset: 7168)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !173, file: !6, line: 480, baseType: !1026, size: 64, offset: 7424)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !173, file: !6, line: 483, baseType: !1029, size: 64, offset: 7488)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !173, file: !6, line: 488, baseType: !267, size: 64, offset: 7552)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !173, file: !6, line: 492, baseType: !59, size: 64, offset: 7616)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !173, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !173, file: !6, line: 495, baseType: !59, size: 64, offset: 7744)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !173, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !173, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !173, file: !6, line: 500, baseType: !1038, size: 64, offset: 7872)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1040, line: 45, baseType: !1041)
!1040 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !173, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !173, file: !6, line: 504, baseType: !1044, size: 64, offset: 8000)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1047, line: 96, size: 192, elements: !1048)
!1047 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1048 = !{!1049, !1050, !1111, !1114}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1046, file: !1047, line: 97, baseType: !7, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1046, file: !1047, line: 98, baseType: !1051, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1047, line: 24, size: 3072, elements: !1053)
!1053 = !{!1054, !1056, !1057, !1058, !1059, !1073, !1074, !1075, !1076, !1095, !1096, !1097, !1108, !1109, !1110}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1052, file: !1047, line: 26, baseType: !1055, size: 128)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 128, elements: !966)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1052, file: !1047, line: 27, baseType: !1055, size: 128, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1052, file: !1047, line: 28, baseType: !152, size: 32, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1052, file: !1047, line: 31, baseType: !198, size: 32, align: 512, offset: 512)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1052, file: !1047, line: 32, baseType: !1060, size: 960, offset: 576)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1061, line: 206, size: 960, elements: !1062)
!1061 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1062 = !{!1063, !1064, !1067, !1069, !1070, !1072}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1060, file: !1061, line: 207, baseType: !364, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1060, file: !1061, line: 208, baseType: !1065, size: 256, offset: 64)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 256, elements: !493)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1060, file: !1061, line: 209, baseType: !1068, size: 256, offset: 320)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !493)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1060, file: !1061, line: 213, baseType: !105, size: 64, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1060, file: !1061, line: 215, baseType: !1071, size: 256, offset: 640)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 256, elements: !493)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1060, file: !1061, line: 216, baseType: !226, size: 8, offset: 896)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1052, file: !1047, line: 33, baseType: !117, size: 64, offset: 1536)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1052, file: !1047, line: 34, baseType: !117, size: 64, offset: 1600)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1052, file: !1047, line: 35, baseType: !611, size: 8, offset: 1664)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1052, file: !1047, line: 36, baseType: !1077, size: 320, offset: 1728)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1078, line: 11, size: 320, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1079 = !{!1080, !1087, !1088, !1093}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1077, file: !1078, line: 16, baseType: !1081, size: 128)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !95, line: 198, size: 128, elements: !1082)
!1082 = !{!1083, !1085}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1081, file: !95, line: 199, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1081, file: !95, line: 199, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1077, file: !1078, line: 17, baseType: !117, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1077, file: !1078, line: 18, baseType: !1089, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !1092}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1077, file: !1078, line: 19, baseType: !1094, size: 32, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !227, line: 21, baseType: !1012)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1052, file: !1047, line: 37, baseType: !576, size: 256, offset: 2048)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1052, file: !1047, line: 38, baseType: !361, size: 128, align: 64, offset: 2304)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1052, file: !1047, line: 39, baseType: !1098, size: 64, offset: 2432)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1047, line: 49, size: 768, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104, !1105, !1106, !1107}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1099, file: !1047, line: 50, baseType: !198, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1099, file: !1047, line: 51, baseType: !1068, size: 256, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1099, file: !1047, line: 53, baseType: !1068, size: 256, offset: 320)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1099, file: !1047, line: 54, baseType: !117, size: 64, offset: 576)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1099, file: !1047, line: 55, baseType: !1098, size: 64, offset: 640)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1099, file: !1047, line: 56, baseType: !152, size: 32, offset: 704)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1099, file: !1047, line: 57, baseType: !152, size: 32, offset: 736)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1052, file: !1047, line: 40, baseType: !117, size: 64, offset: 2496)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1052, file: !1047, line: 42, baseType: !152, size: 32, offset: 2560)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1052, file: !1047, line: 43, baseType: !1045, size: 64, offset: 2624)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1046, file: !1047, line: 99, baseType: !1112, offset: 128)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1113, line: 211, elements: !391)
!1113 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1046, file: !1047, line: 100, baseType: !1115, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1047, line: 63, size: 3008, elements: !1117)
!1117 = !{!1118, !1119, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1149}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1116, file: !1047, line: 64, baseType: !1098, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1116, file: !1047, line: 65, baseType: !1120, size: 192, offset: 64)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1098, size: 192, elements: !268)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1116, file: !1047, line: 67, baseType: !152, size: 32, offset: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1116, file: !1047, line: 68, baseType: !512, size: 256, offset: 320)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1116, file: !1047, line: 69, baseType: !198, size: 32, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1116, file: !1047, line: 70, baseType: !512, size: 256, offset: 640)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1116, file: !1047, line: 71, baseType: !117, size: 64, offset: 896)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1116, file: !1047, line: 72, baseType: !117, size: 64, offset: 960)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1116, file: !1047, line: 73, baseType: !117, size: 64, offset: 1024)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1116, file: !1047, line: 74, baseType: !117, size: 64, offset: 1088)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1116, file: !1047, line: 75, baseType: !117, size: 64, offset: 1152)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1116, file: !1047, line: 76, baseType: !117, size: 64, offset: 1216)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1116, file: !1047, line: 77, baseType: !117, size: 64, offset: 1280)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1116, file: !1047, line: 78, baseType: !117, size: 64, offset: 1344)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1116, file: !1047, line: 79, baseType: !611, size: 8, offset: 1408)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1116, file: !1047, line: 80, baseType: !117, size: 64, offset: 1472)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1116, file: !1047, line: 81, baseType: !512, size: 256, offset: 1536)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1116, file: !1047, line: 82, baseType: !835, size: 256, offset: 1792)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1116, file: !1047, line: 84, baseType: !218, size: 32, offset: 2048)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1116, file: !1047, line: 87, baseType: !117, size: 64, offset: 2112)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1116, file: !1047, line: 88, baseType: !117, size: 64, offset: 2176)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1116, file: !1047, line: 89, baseType: !1141, size: 704, offset: 2240)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !577, line: 111, size: 704, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1148}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1141, file: !577, line: 112, baseType: !576, size: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1141, file: !577, line: 113, baseType: !1077, size: 320, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1141, file: !577, line: 116, baseType: !1146, size: 64, offset: 576)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !577, line: 18, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1141, file: !577, line: 117, baseType: !152, size: 32, offset: 640)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1116, file: !1047, line: 90, baseType: !1045, size: 64, offset: 2944)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !173, file: !6, line: 515, baseType: !1151, size: 64, offset: 8064)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1153, line: 117, size: 128, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1154 = !{!1155, !1156, !1157}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1152, file: !1153, line: 118, baseType: !491, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1152, file: !1153, line: 119, baseType: !491, size: 32, offset: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1152, file: !1153, line: 120, baseType: !105, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !173, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !173, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !173, file: !6, line: 520, baseType: !1161, size: 64, offset: 8192)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !173, file: !6, line: 523, baseType: !1163, size: 64, offset: 8256)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !173, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !173, file: !6, line: 525, baseType: !1168, size: 64, offset: 8384)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !173, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !173, file: !6, line: 533, baseType: !59, size: 64, offset: 8512)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !173, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !173, file: !6, line: 535, baseType: !1175, size: 64, offset: 8640)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !173, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !173, file: !6, line: 539, baseType: !152, size: 32, offset: 8736)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !173, file: !6, line: 540, baseType: !1179, size: 64, offset: 8768)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1181, line: 32, size: 64, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1180, file: !1181, line: 33, baseType: !491, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1180, file: !1181, line: 34, baseType: !491, size: 32, offset: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !173, file: !6, line: 563, baseType: !166, size: 128, offset: 8832)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !173, file: !6, line: 565, baseType: !166, size: 128, offset: 8960)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !173, file: !6, line: 568, baseType: !1188, size: 64, offset: 9088)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !173, file: !6, line: 570, baseType: !218, size: 32, offset: 9152)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !142, file: !30, line: 590, baseType: !226, size: 8, offset: 768)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !107, file: !30, line: 77, baseType: !59, size: 64, offset: 704)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "last_governor", scope: !107, file: !30, line: 78, baseType: !145, size: 128, offset: 768)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !107, file: !30, line: 80, baseType: !576, size: 256, offset: 896)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "constraints", scope: !107, file: !30, line: 83, baseType: !1197, size: 1408, offset: 1152)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !20, line: 85, size: 1408, elements: !1198)
!1198 = !{!1199, !1228, !1229, !1230}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1197, file: !20, line: 86, baseType: !1200, size: 320)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !20, line: 52, size: 320, elements: !1201)
!1201 = !{!1202, !1207, !1208, !1209, !1210, !1211}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1200, file: !20, line: 53, baseType: !1203, size: 128)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1204, line: 82, size: 128, elements: !1205)
!1204 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1203, file: !1204, line: 83, baseType: !166, size: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1200, file: !20, line: 54, baseType: !491, size: 32, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1200, file: !20, line: 55, baseType: !491, size: 32, offset: 160)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1200, file: !20, line: 56, baseType: !491, size: 32, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1200, file: !20, line: 57, baseType: !19, size: 32, offset: 224)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1200, file: !20, line: 58, baseType: !1212, size: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1214, line: 65, size: 384, elements: !1215)
!1214 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1213, file: !1214, line: 66, baseType: !435, size: 320)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1213, file: !1214, line: 67, baseType: !1218, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1214, line: 54, size: 192, elements: !1220)
!1220 = !{!1221, !1226, !1227}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1219, file: !1214, line: 55, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1214, line: 51, baseType: !1223)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!152, !1218, !117, !59}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1219, file: !1214, line: 56, baseType: !1218, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1219, file: !1214, line: 57, baseType: !152, size: 32, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1197, file: !20, line: 87, baseType: !1213, size: 384, offset: 320)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1197, file: !20, line: 88, baseType: !1200, size: 320, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1197, file: !20, line: 89, baseType: !1213, size: 384, offset: 1024)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_req", scope: !107, file: !30, line: 84, baseType: !1232, size: 64, offset: 2560)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !20, line: 92, size: 448, elements: !1234)
!1234 = !{!1235, !1236, !1242}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1233, file: !20, line: 93, baseType: !25, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1233, file: !20, line: 94, baseType: !1237, size: 320, offset: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1204, line: 86, size: 320, elements: !1238)
!1238 = !{!1239, !1240, !1241}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1237, file: !1204, line: 87, baseType: !152, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1237, file: !1204, line: 88, baseType: !166, size: 128, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1237, file: !1204, line: 89, baseType: !166, size: 128, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1233, file: !20, line: 95, baseType: !1243, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_req", scope: !107, file: !30, line: 85, baseType: !1232, size: 64, offset: 2624)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table", scope: !107, file: !30, line: 87, baseType: !1246, size: 64, offset: 2688)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_frequency_table", file: !30, line: 690, size: 96, elements: !1248)
!1248 = !{!1249, !1250, !1251}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1247, file: !30, line: 691, baseType: !7, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1247, file: !30, line: 692, baseType: !7, size: 32, offset: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1247, file: !30, line: 693, baseType: !7, size: 32, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table_sorted", scope: !107, file: !30, line: 88, baseType: !29, size: 32, offset: 2752)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "policy_list", scope: !107, file: !30, line: 90, baseType: !166, size: 128, offset: 2816)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !107, file: !30, line: 91, baseType: !185, size: 512, offset: 2944)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_unregister", scope: !107, file: !30, line: 92, baseType: !835, size: 256, offset: 3456)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !107, file: !30, line: 102, baseType: !435, size: 320, offset: 3712)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_possible", scope: !107, file: !30, line: 112, baseType: !611, size: 8, offset: 4032)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_enabled", scope: !107, file: !30, line: 113, baseType: !611, size: 8, offset: 4040)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "strict_target", scope: !107, file: !30, line: 119, baseType: !611, size: 8, offset: 4048)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "efficiencies_available", scope: !107, file: !30, line: 126, baseType: !611, size: 8, offset: 4056)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "transition_delay_us", scope: !107, file: !30, line: 133, baseType: !7, size: 32, offset: 4064)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dvfs_possible_from_any_cpu", scope: !107, file: !30, line: 142, baseType: !611, size: 8, offset: 4096)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "boost_enabled", scope: !107, file: !30, line: 145, baseType: !611, size: 8, offset: 4104)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "cached_target_freq", scope: !107, file: !30, line: 148, baseType: !7, size: 32, offset: 4128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "cached_resolved_idx", scope: !107, file: !30, line: 149, baseType: !7, size: 32, offset: 4160)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "transition_ongoing", scope: !107, file: !30, line: 152, baseType: !611, size: 8, offset: 4192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "transition_lock", scope: !107, file: !30, line: 153, baseType: !198, size: 32, offset: 4224)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "transition_wait", scope: !107, file: !30, line: 154, baseType: !1269, size: 192, offset: 4288)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1270, line: 41, baseType: !1271)
!1270 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1270, line: 37, size: 192, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1271, file: !1270, line: 38, baseType: !198, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1271, file: !1270, line: 39, baseType: !166, size: 128, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "transition_task", scope: !107, file: !30, line: 155, baseType: !1276, size: 64, offset: 4480)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !640, line: 746, size: 58368, elements: !1278)
!1278 = !{!1279, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1364, !1375, !1467, !1471, !1474, !1505, !1506, !1507, !1508, !1512, !1514, !1515, !1516, !1517, !1518, !1519, !1530, !1531, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1631, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1667, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1702, !1708, !1712, !1713, !1714, !1717, !1718, !1721, !1728, !1733, !1736, !1739, !1742, !1745, !1748, !1751, !1757, !1758, !1759, !1765, !1766, !1767, !1768, !1769, !1772, !1773, !1774, !1783, !1791, !1792, !1793, !1794, !1795, !1800, !1801, !1802, !1805, !1806, !1809, !1812, !1815, !1818, !1821, !1822, !1908, !1919, !1920, !1921, !1922, !1928, !1933, !1934, !1935, !1938, !1939, !1942, !1945, !1946, !1949, !1950, !1951, !1954, !1955, !1956, !1957, !1958, !1959, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1991, !1994, !2060, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2072, !2144, !2146, !2147, !2148, !2149, !2150, !2151, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2168, !2169, !2170}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1277, file: !640, line: 752, baseType: !1280, size: 192)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1281, line: 56, size: 192, elements: !1282)
!1281 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1282 = !{!1283, !1284, !1285, !1286}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1280, file: !1281, line: 57, baseType: !117, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1280, file: !1281, line: 58, baseType: !117, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1280, file: !1281, line: 59, baseType: !1094, size: 32, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1280, file: !1281, line: 61, baseType: !1094, size: 32, offset: 160)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1277, file: !640, line: 754, baseType: !7, size: 32, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1277, file: !640, line: 767, baseType: !59, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1277, file: !640, line: 768, baseType: !818, size: 32, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1277, file: !640, line: 770, baseType: !7, size: 32, offset: 352)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1277, file: !640, line: 771, baseType: !7, size: 32, offset: 384)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1277, file: !640, line: 774, baseType: !152, size: 32, offset: 416)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1277, file: !640, line: 775, baseType: !1294, size: 128, offset: 448)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1295, line: 58, size: 128, elements: !1296)
!1295 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1296 = !{!1297, !1303, !1308, !1309}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1294, file: !1295, line: 59, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1299, line: 60, size: 64, elements: !1300)
!1299 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1300 = !{!1301}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1298, file: !1299, line: 61, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !1295, line: 60, baseType: !1304, size: 32, offset: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !1295, line: 60, size: 32, elements: !1305)
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1304, file: !1295, line: 61, baseType: !7, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1304, file: !1295, line: 62, baseType: !218, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1294, file: !1295, line: 65, baseType: !236, size: 16, offset: 96)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1294, file: !1295, line: 65, baseType: !236, size: 16, offset: 112)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1277, file: !640, line: 776, baseType: !7, size: 32, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1277, file: !640, line: 777, baseType: !117, size: 64, offset: 640)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1277, file: !640, line: 778, baseType: !1276, size: 64, offset: 704)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1277, file: !640, line: 787, baseType: !152, size: 32, offset: 768)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1277, file: !640, line: 788, baseType: !152, size: 32, offset: 800)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1277, file: !640, line: 790, baseType: !152, size: 32, offset: 832)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1277, file: !640, line: 792, baseType: !152, size: 32, offset: 864)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1277, file: !640, line: 793, baseType: !152, size: 32, offset: 896)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1277, file: !640, line: 794, baseType: !152, size: 32, offset: 928)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1277, file: !640, line: 795, baseType: !7, size: 32, offset: 960)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1277, file: !640, line: 797, baseType: !1321, size: 2048, offset: 1024)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !640, line: 551, size: 2048, elements: !1322)
!1322 = !{!1323, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1343, !1346, !1347, !1348}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1321, file: !640, line: 553, baseType: !1324, size: 128)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !640, line: 411, size: 128, elements: !1325)
!1325 = !{!1326, !1327}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1324, file: !640, line: 412, baseType: !117, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1324, file: !640, line: 413, baseType: !1094, size: 32, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1321, file: !640, line: 554, baseType: !617, size: 192, align: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1321, file: !640, line: 555, baseType: !418, size: 64, offset: 320)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1321, file: !640, line: 556, baseType: !418, size: 64, offset: 384)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1321, file: !640, line: 558, baseType: !166, size: 128, offset: 448)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1321, file: !640, line: 559, baseType: !7, size: 32, offset: 576)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1321, file: !640, line: 561, baseType: !418, size: 64, offset: 640)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1321, file: !640, line: 562, baseType: !418, size: 64, offset: 704)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1321, file: !640, line: 563, baseType: !418, size: 64, offset: 768)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1321, file: !640, line: 564, baseType: !418, size: 64, offset: 832)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1321, file: !640, line: 565, baseType: !430, size: 64, offset: 896)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1321, file: !640, line: 566, baseType: !418, size: 64, offset: 960)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1321, file: !640, line: 568, baseType: !418, size: 64, offset: 1024)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1321, file: !640, line: 571, baseType: !152, size: 32, offset: 1088)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1321, file: !640, line: 572, baseType: !1342, size: 64, offset: 1152)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1321, file: !640, line: 574, baseType: !1344, size: 64, offset: 1216)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !640, line: 49, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1321, file: !640, line: 576, baseType: !1344, size: 64, offset: 1280)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1321, file: !640, line: 578, baseType: !117, size: 64, offset: 1344)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1321, file: !640, line: 588, baseType: !1349, size: 512, align: 512, offset: 1536)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !640, line: 497, size: 512, align: 512, elements: !1350)
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1349, file: !640, line: 498, baseType: !418, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1349, file: !640, line: 499, baseType: !418, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1349, file: !640, line: 500, baseType: !418, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1349, file: !640, line: 501, baseType: !1094, size: 32, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1349, file: !640, line: 502, baseType: !1094, size: 32, offset: 224)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1349, file: !640, line: 503, baseType: !117, size: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1349, file: !640, line: 504, baseType: !117, size: 64, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1349, file: !640, line: 505, baseType: !117, size: 64, offset: 384)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1349, file: !640, line: 506, baseType: !1360, size: 64, align: 64, offset: 448)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !640, line: 445, size: 64, align: 64, elements: !1361)
!1361 = !{!1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1360, file: !640, line: 446, baseType: !7, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1360, file: !640, line: 447, baseType: !7, size: 32, offset: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1277, file: !640, line: 798, baseType: !1365, size: 384, offset: 3072)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !640, line: 592, size: 384, elements: !1366)
!1366 = !{!1367, !1368, !1369, !1370, !1371, !1372, !1373}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1365, file: !640, line: 593, baseType: !166, size: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1365, file: !640, line: 594, baseType: !117, size: 64, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1365, file: !640, line: 595, baseType: !117, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1365, file: !640, line: 596, baseType: !7, size: 32, offset: 256)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1365, file: !640, line: 597, baseType: !96, size: 16, offset: 288)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1365, file: !640, line: 598, baseType: !96, size: 16, offset: 304)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1365, file: !640, line: 600, baseType: !1374, size: 64, offset: 320)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1277, file: !640, line: 799, baseType: !1376, size: 1792, offset: 3456)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !640, line: 610, size: 1792, elements: !1377)
!1377 = !{!1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1464, !1465}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1376, file: !640, line: 611, baseType: !617, size: 192, align: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1376, file: !640, line: 618, baseType: !418, size: 64, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1376, file: !640, line: 619, baseType: !418, size: 64, offset: 256)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1376, file: !640, line: 620, baseType: !418, size: 64, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1376, file: !640, line: 621, baseType: !418, size: 64, offset: 384)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1376, file: !640, line: 622, baseType: !418, size: 64, offset: 448)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1376, file: !640, line: 629, baseType: !430, size: 64, offset: 512)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1376, file: !640, line: 630, baseType: !418, size: 64, offset: 576)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1376, file: !640, line: 631, baseType: !7, size: 32, offset: 640)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1376, file: !640, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1376, file: !640, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1376, file: !640, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1376, file: !640, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1376, file: !640, line: 662, baseType: !1392, size: 512, offset: 704)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !36, line: 118, size: 512, elements: !1393)
!1393 = !{!1394, !1402, !1403, !1408, !1460, !1461, !1462, !1463}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1392, file: !36, line: 119, baseType: !1395, size: 256)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1396, line: 9, size: 256, elements: !1397)
!1396 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1397 = !{!1398, !1399}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1395, file: !1396, line: 10, baseType: !617, size: 192, align: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1395, file: !1396, line: 11, baseType: !1400, size: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1401, line: 29, baseType: !430)
!1401 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1392, file: !36, line: 120, baseType: !1400, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1392, file: !36, line: 121, baseType: !1404, size: 64, offset: 320)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!35, !1407}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1392, file: !36, line: 122, baseType: !1409, size: 64, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !36, line: 159, size: 512, align: 512, elements: !1411)
!1411 = !{!1412, !1437, !1438, !1441, !1446, !1447, !1455, !1459}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1410, file: !36, line: 160, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !36, line: 215, size: 4608, align: 512, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1414, file: !36, line: 216, baseType: !446, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1414, file: !36, line: 217, baseType: !7, size: 32, offset: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1414, file: !36, line: 218, baseType: !7, size: 32, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1414, file: !36, line: 219, baseType: !7, size: 32, offset: 96)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1414, file: !36, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1414, file: !36, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1414, file: !36, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1414, file: !36, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1414, file: !36, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1414, file: !36, line: 226, baseType: !7, size: 32, offset: 160)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1414, file: !36, line: 227, baseType: !96, size: 16, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1414, file: !36, line: 228, baseType: !96, size: 16, offset: 208)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1414, file: !36, line: 229, baseType: !7, size: 32, offset: 224)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1414, file: !36, line: 235, baseType: !1400, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1414, file: !36, line: 236, baseType: !1407, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1414, file: !36, line: 237, baseType: !1400, size: 64, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1414, file: !36, line: 238, baseType: !1407, size: 64, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1414, file: !36, line: 239, baseType: !1434, size: 4096, align: 512, offset: 512)
!1434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1410, size: 4096, align: 512, elements: !1435)
!1435 = !{!1436}
!1436 = !DISubrange(count: 8)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1410, file: !36, line: 161, baseType: !7, size: 32, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1410, file: !36, line: 162, baseType: !1439, size: 32, offset: 96)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !95, line: 32, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !103, line: 96, baseType: !152)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1410, file: !36, line: 163, baseType: !1442, size: 32, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !461, line: 274, baseType: !1443)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !461, line: 274, size: 32, elements: !1444)
!1444 = !{!1445}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1443, file: !461, line: 274, baseType: !460, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1410, file: !36, line: 164, baseType: !1407, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1410, file: !36, line: 165, baseType: !1448, size: 128, offset: 256)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1396, line: 14, size: 128, elements: !1449)
!1449 = !{!1450}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1448, file: !1396, line: 15, baseType: !1451, size: 128)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !618, line: 26, size: 128, elements: !1452)
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1451, file: !618, line: 27, baseType: !719, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1451, file: !618, line: 28, baseType: !622, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1410, file: !36, line: 166, baseType: !1456, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!1400}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1410, file: !36, line: 167, baseType: !1400, size: 64, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1392, file: !36, line: 123, baseType: !226, size: 8, offset: 448)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1392, file: !36, line: 124, baseType: !226, size: 8, offset: 456)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1392, file: !36, line: 125, baseType: !226, size: 8, offset: 464)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1392, file: !36, line: 126, baseType: !226, size: 8, offset: 472)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1376, file: !640, line: 671, baseType: !1392, size: 512, offset: 1216)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1376, file: !640, line: 679, baseType: !1466, size: 64, offset: 1728)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1277, file: !640, line: 800, baseType: !1468, size: 64, offset: 5248)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1470)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !640, line: 800, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1277, file: !640, line: 809, baseType: !1472, size: 64, offset: 5312)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !640, line: 70, flags: DIFlagFwdDecl)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1277, file: !640, line: 825, baseType: !1475, size: 2048, align: 512, offset: 5632)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !640, line: 509, size: 2048, align: 512, elements: !1476)
!1476 = !{!1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1475, file: !640, line: 511, baseType: !418, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1475, file: !640, line: 512, baseType: !418, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1475, file: !640, line: 513, baseType: !418, size: 64, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1475, file: !640, line: 514, baseType: !418, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1475, file: !640, line: 515, baseType: !418, size: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1475, file: !640, line: 516, baseType: !418, size: 64, offset: 320)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1475, file: !640, line: 518, baseType: !418, size: 64, offset: 384)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1475, file: !640, line: 519, baseType: !418, size: 64, offset: 448)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1475, file: !640, line: 520, baseType: !430, size: 64, offset: 512)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1475, file: !640, line: 522, baseType: !418, size: 64, offset: 576)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1475, file: !640, line: 523, baseType: !418, size: 64, offset: 640)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1475, file: !640, line: 524, baseType: !430, size: 64, offset: 704)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1475, file: !640, line: 526, baseType: !430, size: 64, offset: 768)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1475, file: !640, line: 527, baseType: !418, size: 64, offset: 832)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1475, file: !640, line: 529, baseType: !418, size: 64, offset: 896)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1475, file: !640, line: 530, baseType: !418, size: 64, offset: 960)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1475, file: !640, line: 531, baseType: !418, size: 64, offset: 1024)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1475, file: !640, line: 532, baseType: !418, size: 64, offset: 1088)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1475, file: !640, line: 533, baseType: !418, size: 64, offset: 1152)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1475, file: !640, line: 535, baseType: !418, size: 64, offset: 1216)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1475, file: !640, line: 536, baseType: !418, size: 64, offset: 1280)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1475, file: !640, line: 537, baseType: !418, size: 64, offset: 1344)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1475, file: !640, line: 538, baseType: !418, size: 64, offset: 1408)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1475, file: !640, line: 539, baseType: !418, size: 64, offset: 1472)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1475, file: !640, line: 540, baseType: !418, size: 64, offset: 1536)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1475, file: !640, line: 541, baseType: !418, size: 64, offset: 1600)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1475, file: !640, line: 542, baseType: !418, size: 64, offset: 1664)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1475, file: !640, line: 543, baseType: !418, size: 64, offset: 1728)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1277, file: !640, line: 833, baseType: !7, size: 32, offset: 7680)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1277, file: !640, line: 836, baseType: !7, size: 32, offset: 7712)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1277, file: !640, line: 837, baseType: !152, size: 32, offset: 7744)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1277, file: !640, line: 838, baseType: !1509, size: 64, offset: 7808)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1511)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !111, line: 19, baseType: !113)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1277, file: !640, line: 839, baseType: !1513, size: 64, offset: 7872)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1277, file: !640, line: 840, baseType: !1511, size: 64, offset: 7936)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1277, file: !640, line: 841, baseType: !59, size: 64, offset: 8000)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1277, file: !640, line: 843, baseType: !96, size: 16, offset: 8064)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1277, file: !640, line: 845, baseType: !96, size: 16, offset: 8080)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1277, file: !640, line: 848, baseType: !152, size: 32, offset: 8096)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1277, file: !640, line: 849, baseType: !1520, size: 32, offset: 8128)
!1520 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !640, line: 718, size: 32, elements: !1521)
!1521 = !{!1522, !1529}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1520, file: !640, line: 724, baseType: !1523, size: 32)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1520, file: !640, line: 719, size: 32, elements: !1524)
!1524 = !{!1525, !1526, !1527, !1528}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1523, file: !640, line: 720, baseType: !226, size: 8)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1523, file: !640, line: 721, baseType: !226, size: 8, offset: 8)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1523, file: !640, line: 722, baseType: !226, size: 8, offset: 16)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1523, file: !640, line: 723, baseType: !226, size: 8, offset: 24)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1520, file: !640, line: 725, baseType: !1094, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1277, file: !640, line: 850, baseType: !166, size: 128, offset: 8192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1277, file: !640, line: 851, baseType: !1532, size: 64, offset: 8320)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !640, line: 60, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1277, file: !640, line: 855, baseType: !117, size: 64, offset: 8384)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1277, file: !640, line: 856, baseType: !226, size: 8, offset: 8448)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1277, file: !640, line: 857, baseType: !226, size: 8, offset: 8456)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1277, file: !640, line: 858, baseType: !152, size: 32, offset: 8480)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1277, file: !640, line: 859, baseType: !166, size: 128, offset: 8512)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1277, file: !640, line: 860, baseType: !152, size: 32, offset: 8640)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1277, file: !640, line: 861, baseType: !166, size: 128, offset: 8704)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1277, file: !640, line: 873, baseType: !1542, size: 256, offset: 8832)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !640, line: 376, size: 256, elements: !1543)
!1543 = !{!1544, !1545, !1546, !1547}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1542, file: !640, line: 381, baseType: !117, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1542, file: !640, line: 384, baseType: !420, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1542, file: !640, line: 389, baseType: !420, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1542, file: !640, line: 392, baseType: !420, size: 64, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1277, file: !640, line: 875, baseType: !166, size: 128, offset: 9088)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1277, file: !640, line: 877, baseType: !1237, size: 320, offset: 9216)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1277, file: !640, line: 878, baseType: !617, size: 192, align: 64, offset: 9536)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1277, file: !640, line: 881, baseType: !370, size: 64, offset: 9728)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1277, file: !640, line: 882, baseType: !370, size: 64, offset: 9792)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1277, file: !640, line: 884, baseType: !152, size: 32, offset: 9856)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1277, file: !640, line: 885, baseType: !152, size: 32, offset: 9888)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1277, file: !640, line: 886, baseType: !152, size: 32, offset: 9920)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1277, file: !640, line: 888, baseType: !152, size: 32, offset: 9952)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1277, file: !640, line: 890, baseType: !117, size: 64, offset: 9984)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1277, file: !640, line: 893, baseType: !7, size: 32, offset: 10048)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1277, file: !640, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1277, file: !640, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1277, file: !640, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1277, file: !640, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1277, file: !640, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1277, file: !640, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1277, file: !640, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1277, file: !640, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1277, file: !640, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1277, file: !640, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1277, file: !640, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1277, file: !640, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1277, file: !640, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1277, file: !640, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1277, file: !640, line: 969, baseType: !117, size: 64, offset: 10176)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1277, file: !640, line: 971, baseType: !1575, size: 448, offset: 10240)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !41, line: 25, size: 448, elements: !1576)
!1576 = !{!1577, !1578, !1583}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1575, file: !41, line: 26, baseType: !117, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1575, file: !41, line: 27, baseType: !1579, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!105, !1582}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !41, line: 28, baseType: !1584, size: 320, offset: 128)
!1584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !41, line: 28, size: 320, elements: !1585)
!1585 = !{!1586, !1596, !1621}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1584, file: !41, line: 37, baseType: !1587, size: 320)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !41, line: 30, size: 320, elements: !1588)
!1588 = !{!1589, !1591, !1592, !1593, !1594, !1595}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1587, file: !41, line: 31, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1587, file: !41, line: 32, baseType: !1094, size: 32, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1587, file: !41, line: 33, baseType: !1094, size: 32, offset: 96)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1587, file: !41, line: 34, baseType: !1094, size: 32, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1587, file: !41, line: 35, baseType: !418, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1587, file: !41, line: 36, baseType: !1590, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1584, file: !41, line: 47, baseType: !1597, size: 192)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !41, line: 39, size: 192, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1620}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1597, file: !41, line: 40, baseType: !1439, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1597, file: !41, line: 41, baseType: !40, size: 32, offset: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, scope: !1597, file: !41, line: 42, baseType: !1602, size: 64, offset: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1597, file: !41, line: 42, size: 64, elements: !1603)
!1603 = !{!1604, !1612}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1602, file: !41, line: 43, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1607, line: 7, size: 128, elements: !1608)
!1607 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1608 = !{!1609, !1611}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1606, file: !1607, line: 8, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !103, line: 93, baseType: !343)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1606, file: !1607, line: 9, baseType: !343, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1602, file: !41, line: 44, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1615, line: 7, size: 64, elements: !1616)
!1615 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1616 = !{!1617, !1619}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1614, file: !1615, line: 8, baseType: !1618, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1615, line: 5, baseType: !491)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1614, file: !1615, line: 9, baseType: !491, size: 32, offset: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1597, file: !41, line: 46, baseType: !418, size: 64, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1584, file: !41, line: 55, baseType: !1622, size: 256)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !41, line: 49, size: 256, elements: !1623)
!1623 = !{!1624, !1627, !1628, !1629, !1630}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1622, file: !41, line: 50, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !41, line: 14, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1622, file: !41, line: 51, baseType: !152, size: 32, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1622, file: !41, line: 52, baseType: !152, size: 32, offset: 96)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1622, file: !41, line: 53, baseType: !117, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1622, file: !41, line: 54, baseType: !117, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1277, file: !640, line: 973, baseType: !1632, size: 32, offset: 10688)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !95, line: 27, baseType: !1633)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !103, line: 28, baseType: !152)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1277, file: !640, line: 974, baseType: !1632, size: 32, offset: 10720)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1277, file: !640, line: 978, baseType: !117, size: 64, offset: 10752)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1277, file: !640, line: 987, baseType: !1276, size: 64, offset: 10816)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1277, file: !640, line: 990, baseType: !1276, size: 64, offset: 10880)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1277, file: !640, line: 995, baseType: !166, size: 128, offset: 10944)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1277, file: !640, line: 996, baseType: !166, size: 128, offset: 11072)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1277, file: !640, line: 997, baseType: !1276, size: 64, offset: 11200)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1277, file: !640, line: 1005, baseType: !166, size: 128, offset: 11264)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1277, file: !640, line: 1006, baseType: !166, size: 128, offset: 11392)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1277, file: !640, line: 1009, baseType: !1644, size: 64, offset: 11520)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1646, line: 59, size: 768, elements: !1647)
!1646 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1647 = !{!1648, !1649, !1650, !1651, !1656, !1657, !1658, !1659}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1645, file: !1646, line: 61, baseType: !818, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1645, file: !1646, line: 62, baseType: !7, size: 32, offset: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1645, file: !1646, line: 63, baseType: !198, size: 32, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1645, file: !1646, line: 65, baseType: !1652, size: 256, offset: 128)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1653, size: 256, elements: !493)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !95, line: 194, size: 64, elements: !1654)
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1653, file: !95, line: 195, baseType: !1084, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1645, file: !1646, line: 66, baseType: !1653, size: 64, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1645, file: !1646, line: 68, baseType: !1269, size: 192, offset: 448)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1645, file: !1646, line: 69, baseType: !361, size: 128, align: 64, offset: 640)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1645, file: !1646, line: 70, baseType: !1660, offset: 768)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1661, elements: !589)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1646, line: 54, size: 128, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1661, file: !1646, line: 55, baseType: !152, size: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1661, file: !1646, line: 56, baseType: !1665, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1646, line: 56, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1277, file: !640, line: 1010, baseType: !1668, size: 512, offset: 11584)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, size: 512, elements: !493)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1277, file: !640, line: 1011, baseType: !166, size: 128, offset: 12096)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1277, file: !640, line: 1012, baseType: !166, size: 128, offset: 12224)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1277, file: !640, line: 1014, baseType: !834, size: 64, offset: 12352)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1277, file: !640, line: 1017, baseType: !976, size: 64, offset: 12416)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1277, file: !640, line: 1020, baseType: !976, size: 64, offset: 12480)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1277, file: !640, line: 1023, baseType: !59, size: 64, offset: 12544)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1277, file: !640, line: 1025, baseType: !418, size: 64, offset: 12608)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1277, file: !640, line: 1026, baseType: !418, size: 64, offset: 12672)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1277, file: !640, line: 1031, baseType: !418, size: 64, offset: 12736)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1277, file: !640, line: 1032, baseType: !1679, size: 192, offset: 12800)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !640, line: 324, size: 192, elements: !1680)
!1680 = !{!1681, !1682, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1679, file: !640, line: 326, baseType: !418, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1679, file: !640, line: 327, baseType: !418, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1679, file: !640, line: 328, baseType: !446, size: 32, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1277, file: !640, line: 1041, baseType: !117, size: 64, offset: 12992)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1277, file: !640, line: 1042, baseType: !117, size: 64, offset: 13056)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1277, file: !640, line: 1045, baseType: !418, size: 64, offset: 13120)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1277, file: !640, line: 1048, baseType: !418, size: 64, offset: 13184)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1277, file: !640, line: 1051, baseType: !117, size: 64, offset: 13248)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1277, file: !640, line: 1052, baseType: !117, size: 64, offset: 13312)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1277, file: !640, line: 1055, baseType: !1691, size: 640, offset: 13376)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1692, line: 132, size: 640, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1693 = !{!1694, !1700, !1701}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1691, file: !1692, line: 133, baseType: !1695, size: 576)
!1695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1696, size: 576, elements: !268)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1692, line: 117, size: 192, elements: !1697)
!1697 = !{!1698, !1699}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1696, file: !1692, line: 118, baseType: !418, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1696, file: !1692, line: 119, baseType: !1448, size: 128, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1691, file: !1692, line: 134, baseType: !7, size: 32, offset: 576)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1691, file: !1692, line: 135, baseType: !7, size: 32, offset: 608)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1277, file: !640, line: 1058, baseType: !1703, size: 448, offset: 14016)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1692, line: 144, size: 448, elements: !1704)
!1704 = !{!1705, !1706, !1707}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1703, file: !1692, line: 145, baseType: !361, size: 128, align: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1703, file: !1692, line: 146, baseType: !512, size: 256, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1703, file: !1692, line: 147, baseType: !7, size: 32, offset: 384)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1277, file: !640, line: 1064, baseType: !1709, size: 64, offset: 14464)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1711)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !640, line: 1064, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1277, file: !640, line: 1067, baseType: !1709, size: 64, offset: 14528)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1277, file: !640, line: 1070, baseType: !1709, size: 64, offset: 14592)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1277, file: !640, line: 1074, baseType: !1715, size: 64, offset: 14656)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !640, line: 1074, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1277, file: !640, line: 1084, baseType: !145, size: 128, offset: 14720)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1277, file: !640, line: 1086, baseType: !1719, size: 64, offset: 14848)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !640, line: 55, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1277, file: !640, line: 1089, baseType: !1722, size: 64, offset: 14912)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1723, line: 12, size: 64, elements: !1724)
!1723 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1724 = !{!1725}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1722, file: !1723, line: 13, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1723, line: 8, flags: DIFlagFwdDecl)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1277, file: !640, line: 1090, baseType: !1729, size: 128, offset: 14976)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1730, line: 13, size: 128, elements: !1731)
!1730 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1731 = !{!1732}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1729, file: !1730, line: 14, baseType: !166, size: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1277, file: !640, line: 1097, baseType: !1734, size: 64, offset: 15104)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !640, line: 50, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1277, file: !640, line: 1100, baseType: !1737, size: 64, offset: 15168)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !640, line: 1100, flags: DIFlagFwdDecl)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1277, file: !640, line: 1103, baseType: !1740, size: 64, offset: 15232)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !640, line: 53, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1277, file: !640, line: 1107, baseType: !1743, size: 64, offset: 15296)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !640, line: 56, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1277, file: !640, line: 1110, baseType: !1746, size: 64, offset: 15360)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1692, line: 236, flags: DIFlagFwdDecl)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1277, file: !640, line: 1111, baseType: !1749, size: 64, offset: 15424)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !640, line: 67, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1277, file: !640, line: 1112, baseType: !1752, size: 64, offset: 15488)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1753, line: 25, baseType: !1754)
!1753 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1753, line: 23, size: 64, elements: !1755)
!1755 = !{!1756}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1754, file: !1753, line: 24, baseType: !116, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1277, file: !640, line: 1113, baseType: !1752, size: 64, offset: 15552)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1277, file: !640, line: 1115, baseType: !1752, size: 64, offset: 15616)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1277, file: !640, line: 1116, baseType: !1760, size: 192, offset: 15680)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1761, line: 32, size: 192, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1762 = !{!1763, !1764}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1760, file: !1761, line: 33, baseType: !166, size: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1760, file: !1761, line: 34, baseType: !1752, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1277, file: !640, line: 1117, baseType: !117, size: 64, offset: 15872)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1277, file: !640, line: 1118, baseType: !303, size: 64, offset: 15936)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1277, file: !640, line: 1119, baseType: !7, size: 32, offset: 16000)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1277, file: !640, line: 1121, baseType: !364, size: 64, offset: 16064)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1277, file: !640, line: 1125, baseType: !1770, size: 64, offset: 16128)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !640, line: 43, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1277, file: !640, line: 1127, baseType: !686, size: 32, offset: 16192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1277, file: !640, line: 1128, baseType: !7, size: 32, offset: 16224)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1277, file: !640, line: 1130, baseType: !1775, size: 128, offset: 16256)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1776, line: 37, size: 128, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1777 = !{!1778, !1779, !1780}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1775, file: !1776, line: 38, baseType: !152, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1775, file: !1776, line: 39, baseType: !218, size: 32, offset: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1775, file: !1776, line: 40, baseType: !1781, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1776, line: 24, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1277, file: !640, line: 1131, baseType: !1784, size: 256, offset: 16384)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1785, line: 12, size: 256, elements: !1786)
!1785 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1786 = !{!1787, !1788, !1789, !1790}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1784, file: !1785, line: 13, baseType: !267, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1784, file: !1785, line: 14, baseType: !117, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1784, file: !1785, line: 15, baseType: !117, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1784, file: !1785, line: 16, baseType: !611, size: 8, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1277, file: !640, line: 1134, baseType: !418, size: 64, offset: 16640)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1277, file: !640, line: 1135, baseType: !418, size: 64, offset: 16704)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1277, file: !640, line: 1138, baseType: !198, size: 32, offset: 16768)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1277, file: !640, line: 1141, baseType: !446, size: 32, offset: 16800)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1277, file: !640, line: 1143, baseType: !1796, size: 64, offset: 16832)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !640, line: 735, size: 64, elements: !1797)
!1797 = !{!1798}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1796, file: !640, line: 736, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1277, file: !640, line: 1147, baseType: !1451, size: 128, offset: 16896)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1277, file: !640, line: 1149, baseType: !1276, size: 64, offset: 17024)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1277, file: !640, line: 1151, baseType: !1803, size: 64, offset: 17088)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !640, line: 1151, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1277, file: !640, line: 1188, baseType: !59, size: 64, offset: 17152)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1277, file: !640, line: 1191, baseType: !1807, size: 64, offset: 17216)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !640, line: 44, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1277, file: !640, line: 1194, baseType: !1810, size: 64, offset: 17280)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !640, line: 45, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1277, file: !640, line: 1197, baseType: !1813, size: 64, offset: 17344)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !640, line: 61, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1277, file: !640, line: 1199, baseType: !1816, size: 64, offset: 17408)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !640, line: 52, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1277, file: !640, line: 1202, baseType: !1819, size: 64, offset: 17472)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !640, line: 48, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1277, file: !640, line: 1205, baseType: !117, size: 64, offset: 17536)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1277, file: !640, line: 1206, baseType: !1823, size: 64, offset: 17600)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1761, line: 14, baseType: !1825)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1761, line: 12, size: 384, elements: !1826)
!1826 = !{!1827}
!1827 = !DIDerivedType(tag: DW_TAG_member, scope: !1825, file: !1761, line: 13, baseType: !1828, size: 384)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1825, file: !1761, line: 13, size: 384, elements: !1829)
!1829 = !{!1830, !1831, !1832, !1833}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1828, file: !1761, line: 13, baseType: !152, size: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1828, file: !1761, line: 13, baseType: !152, size: 32, offset: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1828, file: !1761, line: 13, baseType: !152, size: 32, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1828, file: !1761, line: 13, baseType: !1834, size: 256, offset: 128)
!1834 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1835, line: 37, size: 256, elements: !1836)
!1835 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1836 = !{!1837, !1842, !1855, !1861, !1870, !1897, !1902}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1834, file: !1835, line: 42, baseType: !1838, size: 64)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1834, file: !1835, line: 39, size: 64, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1838, file: !1835, line: 40, baseType: !1633, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1838, file: !1835, line: 41, baseType: !691, size: 32, offset: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1834, file: !1835, line: 50, baseType: !1843, size: 192)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1834, file: !1835, line: 45, size: 192, elements: !1844)
!1844 = !{!1845, !1847, !1848, !1854}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1843, file: !1835, line: 46, baseType: !1846, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !103, line: 95, baseType: !152)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1843, file: !1835, line: 47, baseType: !152, size: 32, offset: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1843, file: !1835, line: 48, baseType: !1849, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1835, line: 11, baseType: !1850)
!1850 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1835, line: 8, size: 64, elements: !1851)
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1850, file: !1835, line: 9, baseType: !152, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1850, file: !1835, line: 10, baseType: !59, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1843, file: !1835, line: 49, baseType: !152, size: 32, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1834, file: !1835, line: 57, baseType: !1856, size: 128)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1834, file: !1835, line: 53, size: 128, elements: !1857)
!1857 = !{!1858, !1859, !1860}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1856, file: !1835, line: 54, baseType: !1633, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1856, file: !1835, line: 55, baseType: !691, size: 32, offset: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1856, file: !1835, line: 56, baseType: !1849, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1834, file: !1835, line: 66, baseType: !1862, size: 256)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1834, file: !1835, line: 60, size: 256, elements: !1863)
!1863 = !{!1864, !1865, !1866, !1867, !1869}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1862, file: !1835, line: 61, baseType: !1633, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1862, file: !1835, line: 62, baseType: !691, size: 32, offset: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1862, file: !1835, line: 63, baseType: !152, size: 32, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1862, file: !1835, line: 64, baseType: !1868, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !103, line: 94, baseType: !104)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1862, file: !1835, line: 65, baseType: !1868, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1834, file: !1835, line: 105, baseType: !1871, size: 256)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1834, file: !1835, line: 69, size: 256, elements: !1872)
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1871, file: !1835, line: 70, baseType: !59, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !1835, line: 79, baseType: !1875, size: 192, offset: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !1835, line: 79, size: 192, elements: !1876)
!1876 = !{!1877, !1878, !1879, !1886, !1891}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1875, file: !1835, line: 81, baseType: !152, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1875, file: !1835, line: 86, baseType: !552, size: 16)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1875, file: !1835, line: 92, baseType: !1880, size: 192)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1875, file: !1835, line: 88, size: 192, elements: !1881)
!1881 = !{!1882, !1884, !1885}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1880, file: !1835, line: 89, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 64, elements: !1435)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1880, file: !1835, line: 90, baseType: !59, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1880, file: !1835, line: 91, baseType: !59, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1875, file: !1835, line: 97, baseType: !1887, size: 96)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1875, file: !1835, line: 94, size: 96, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1887, file: !1835, line: 95, baseType: !1883, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1887, file: !1835, line: 96, baseType: !1012, size: 32, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1875, file: !1835, line: 103, baseType: !1892, size: 128)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1875, file: !1835, line: 99, size: 128, elements: !1893)
!1893 = !{!1894, !1895, !1896}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1892, file: !1835, line: 100, baseType: !117, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1892, file: !1835, line: 101, baseType: !1012, size: 32, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1892, file: !1835, line: 102, baseType: !1012, size: 32, offset: 96)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1834, file: !1835, line: 111, baseType: !1898, size: 128)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1834, file: !1835, line: 108, size: 128, elements: !1899)
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1898, file: !1835, line: 109, baseType: !105, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1898, file: !1835, line: 110, baseType: !152, size: 32, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1834, file: !1835, line: 118, baseType: !1903, size: 128)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1834, file: !1835, line: 114, size: 128, elements: !1904)
!1904 = !{!1905, !1906, !1907}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1903, file: !1835, line: 115, baseType: !59, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1903, file: !1835, line: 116, baseType: !152, size: 32, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1903, file: !1835, line: 117, baseType: !7, size: 32, offset: 96)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1277, file: !640, line: 1208, baseType: !1909, size: 448, offset: 17664)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1910, line: 12, size: 448, elements: !1911)
!1910 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1911 = !{!1912, !1913, !1914, !1915, !1916, !1917, !1918}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1909, file: !1910, line: 15, baseType: !418, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1909, file: !1910, line: 17, baseType: !418, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1909, file: !1910, line: 19, baseType: !418, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1909, file: !1910, line: 21, baseType: !418, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1909, file: !1910, line: 29, baseType: !418, size: 64, offset: 256)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1909, file: !1910, line: 35, baseType: !418, size: 64, offset: 320)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1909, file: !1910, line: 44, baseType: !418, size: 64, offset: 384)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1277, file: !640, line: 1215, baseType: !418, size: 64, offset: 18112)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1277, file: !640, line: 1217, baseType: !418, size: 64, offset: 18176)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1277, file: !640, line: 1219, baseType: !418, size: 64, offset: 18240)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1277, file: !640, line: 1223, baseType: !1923, size: 64, offset: 18304)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1924, line: 99, baseType: !1925)
!1924 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1924, line: 99, size: 64, elements: !1926)
!1926 = !{!1927}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1925, file: !1924, line: 99, baseType: !116, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1277, file: !640, line: 1225, baseType: !1929, size: 32, offset: 18368)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !461, line: 275, baseType: !1930)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !461, line: 275, size: 32, elements: !1931)
!1931 = !{!1932}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1930, file: !461, line: 275, baseType: !460, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1277, file: !640, line: 1226, baseType: !152, size: 32, offset: 18400)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1277, file: !640, line: 1227, baseType: !152, size: 32, offset: 18432)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1277, file: !640, line: 1231, baseType: !1936, size: 64, offset: 18496)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !640, line: 1231, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1277, file: !640, line: 1233, baseType: !166, size: 128, offset: 18560)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1277, file: !640, line: 1240, baseType: !1940, size: 64, offset: 18688)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !640, line: 62, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1277, file: !640, line: 1242, baseType: !1943, size: 64, offset: 18752)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !640, line: 1242, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1277, file: !640, line: 1244, baseType: !166, size: 128, offset: 18816)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1277, file: !640, line: 1245, baseType: !1947, size: 64, offset: 18944)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !640, line: 51, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1277, file: !640, line: 1246, baseType: !512, size: 256, offset: 19008)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1277, file: !640, line: 1247, baseType: !7, size: 32, offset: 19264)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1277, file: !640, line: 1250, baseType: !1952, size: 64, offset: 19328)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !640, line: 57, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1277, file: !640, line: 1251, baseType: !512, size: 256, offset: 19392)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1277, file: !640, line: 1252, baseType: !166, size: 128, offset: 19648)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1277, file: !640, line: 1259, baseType: !638, size: 64, offset: 19776)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1277, file: !640, line: 1260, baseType: !552, size: 16, offset: 19840)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1277, file: !640, line: 1261, baseType: !552, size: 16, offset: 19856)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1277, file: !640, line: 1314, baseType: !1960, size: 64, offset: 19904)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1962, line: 62, size: 256, align: 256, elements: !1963)
!1962 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1963 = !{!1964, !1965, !1966, !1967, !1968, !1969, !1970}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1961, file: !1962, line: 75, baseType: !1012, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1961, file: !1962, line: 90, baseType: !1012, size: 32, offset: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1961, file: !1962, line: 112, baseType: !419, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1961, file: !1962, line: 132, baseType: !1012, size: 32, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1961, file: !1962, line: 140, baseType: !1012, size: 32, offset: 160)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1961, file: !1962, line: 149, baseType: !1012, size: 32, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1961, file: !1962, line: 154, baseType: !1971, offset: 224)
!1971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, elements: !589)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1277, file: !640, line: 1315, baseType: !1094, size: 32, offset: 19968)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1277, file: !640, line: 1316, baseType: !1094, size: 32, offset: 20000)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1277, file: !640, line: 1321, baseType: !117, size: 64, offset: 20032)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1277, file: !640, line: 1325, baseType: !152, size: 32, offset: 20096)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1277, file: !640, line: 1326, baseType: !152, size: 32, offset: 20128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1277, file: !640, line: 1327, baseType: !152, size: 32, offset: 20160)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1277, file: !640, line: 1328, baseType: !152, size: 32, offset: 20192)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1277, file: !640, line: 1329, baseType: !361, size: 128, align: 64, offset: 20224)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1277, file: !640, line: 1332, baseType: !1981, size: 128, offset: 20352)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1982, line: 51, size: 128, elements: !1983)
!1982 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1983 = !{!1984, !1989, !1990}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1981, file: !1982, line: 60, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1986, line: 7, size: 64, elements: !1987)
!1986 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1987 = !{!1988}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1985, file: !1986, line: 12, baseType: !113, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1981, file: !1982, line: 63, baseType: !611, size: 8, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1981, file: !1982, line: 70, baseType: !611, size: 8, offset: 72)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1277, file: !640, line: 1335, baseType: !1992, size: 64, offset: 20480)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !640, line: 59, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1277, file: !640, line: 1337, baseType: !1995, size: 128, offset: 20544)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1982, line: 39, size: 128, elements: !1996)
!1996 = !{!1997, !2058, !2059}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1995, file: !1982, line: 40, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !333, line: 74, size: 512, align: 128, elements: !2000)
!2000 = !{!2001, !2002, !2052, !2057}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1999, file: !333, line: 75, baseType: !117, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, scope: !1999, file: !333, line: 83, baseType: !2003, size: 320, offset: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1999, file: !333, line: 83, size: 320, elements: !2004)
!2004 = !{!2005, !2026, !2040, !2044, !2051}
!2005 = !DIDerivedType(tag: DW_TAG_member, scope: !2003, file: !333, line: 84, baseType: !2006, size: 320)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2003, file: !333, line: 84, size: 320, elements: !2007)
!2007 = !{!2008, !2019, !2020, !2025}
!2008 = !DIDerivedType(tag: DW_TAG_member, scope: !2006, file: !333, line: 90, baseType: !2009, size: 128)
!2009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2006, file: !333, line: 90, size: 128, elements: !2010)
!2010 = !{!2011, !2012, !2017, !2018}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2009, file: !333, line: 91, baseType: !166, size: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, scope: !2009, file: !333, line: 94, baseType: !2013, size: 128)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2009, file: !333, line: 94, size: 128, elements: !2014)
!2014 = !{!2015, !2016}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2013, file: !333, line: 96, baseType: !59, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2013, file: !333, line: 98, baseType: !7, size: 32, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2009, file: !333, line: 102, baseType: !166, size: 128)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2009, file: !333, line: 103, baseType: !166, size: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2006, file: !333, line: 106, baseType: !331, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !2006, file: !333, line: 107, baseType: !2021, size: 64, offset: 192)
!2021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2006, file: !333, line: 107, size: 64, elements: !2022)
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2021, file: !333, line: 108, baseType: !117, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2021, file: !333, line: 109, baseType: !117, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2006, file: !333, line: 117, baseType: !117, size: 64, offset: 256)
!2026 = !DIDerivedType(tag: DW_TAG_member, scope: !2003, file: !333, line: 119, baseType: !2027, size: 320)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2003, file: !333, line: 119, size: 320, elements: !2028)
!2028 = !{!2029, !2030, !2033, !2034, !2035}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2027, file: !333, line: 124, baseType: !117, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2027, file: !333, line: 125, baseType: !2031, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !333, line: 125, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2027, file: !333, line: 126, baseType: !117, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2027, file: !333, line: 127, baseType: !117, size: 64, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_member, scope: !2027, file: !333, line: 128, baseType: !2036, size: 64, offset: 256)
!2036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2027, file: !333, line: 128, size: 64, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2036, file: !333, line: 133, baseType: !117, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2036, file: !333, line: 138, baseType: !424, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, scope: !2003, file: !333, line: 141, baseType: !2041, size: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2003, file: !333, line: 141, size: 64, elements: !2042)
!2042 = !{!2043}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2041, file: !333, line: 142, baseType: !117, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !2003, file: !333, line: 144, baseType: !2045, size: 128)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2003, file: !333, line: 144, size: 128, elements: !2046)
!2046 = !{!2047, !2050}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2045, file: !333, line: 146, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !333, line: 146, flags: DIFlagFwdDecl)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2045, file: !333, line: 147, baseType: !59, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2003, file: !333, line: 161, baseType: !361, size: 128, align: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, scope: !1999, file: !333, line: 164, baseType: !2053, size: 32, offset: 384)
!2053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1999, file: !333, line: 164, size: 32, elements: !2054)
!2054 = !{!2055, !2056}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2053, file: !333, line: 169, baseType: !218, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2053, file: !333, line: 177, baseType: !7, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1999, file: !333, line: 181, baseType: !218, size: 32, offset: 416)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1995, file: !1982, line: 42, baseType: !1012, size: 32, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1995, file: !1982, line: 43, baseType: !1012, size: 32, offset: 96)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1277, file: !640, line: 1340, baseType: !2061, size: 64, offset: 20672)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !640, line: 69, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1277, file: !640, line: 1351, baseType: !152, size: 32, offset: 20736)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1277, file: !640, line: 1352, baseType: !152, size: 32, offset: 20768)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1277, file: !640, line: 1354, baseType: !117, size: 64, offset: 20800)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1277, file: !640, line: 1364, baseType: !418, size: 64, offset: 20864)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1277, file: !640, line: 1365, baseType: !418, size: 64, offset: 20928)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1277, file: !640, line: 1412, baseType: !117, size: 64, offset: 20992)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1277, file: !640, line: 1453, baseType: !2070, size: 64, offset: 21056)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !640, line: 1453, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1277, file: !640, line: 1457, baseType: !2073, size: 64, offset: 21120)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !47, line: 61, size: 576, elements: !2075)
!2075 = !{!2076, !2077, !2096, !2099, !2100, !2133, !2143}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2074, file: !47, line: 62, baseType: !46, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, scope: !2074, file: !47, line: 64, baseType: !2078, size: 192, offset: 64)
!2078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2074, file: !47, line: 64, size: 192, elements: !2079)
!2079 = !{!2080, !2091}
!2080 = !DIDerivedType(tag: DW_TAG_member, scope: !2078, file: !47, line: 65, baseType: !2081, size: 192)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2078, file: !47, line: 65, size: 192, elements: !2082)
!2082 = !{!2083, !2090}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2081, file: !47, line: 66, baseType: !2084, size: 128)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2085, line: 50, size: 128, elements: !2086)
!2085 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2086 = !{!2087, !2088, !2089}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2084, file: !2085, line: 52, baseType: !117, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2084, file: !2085, line: 54, baseType: !7, size: 32, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2084, file: !2085, line: 55, baseType: !7, size: 32, offset: 96)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2081, file: !47, line: 67, baseType: !117, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, scope: !2078, file: !47, line: 70, baseType: !2092, size: 192)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2078, file: !47, line: 70, size: 192, elements: !2093)
!2093 = !{!2094, !2095}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2092, file: !47, line: 71, baseType: !361, size: 128, align: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2092, file: !47, line: 72, baseType: !117, size: 64, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2074, file: !47, line: 76, baseType: !2097, size: 64, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !47, line: 76, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2074, file: !47, line: 77, baseType: !117, size: 64, offset: 320)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2074, file: !47, line: 79, baseType: !2101, size: 64, offset: 384)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2085, line: 25, size: 256, elements: !2103)
!2103 = !{!2104, !2110, !2114}
!2104 = !DIDerivedType(tag: DW_TAG_member, scope: !2102, file: !2085, line: 26, baseType: !2105, size: 128)
!2105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2102, file: !2085, line: 26, size: 128, elements: !2106)
!2106 = !{!2107, !2109}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2105, file: !2085, line: 27, baseType: !2108, size: 128)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 128, elements: !146)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2105, file: !2085, line: 28, baseType: !2108, size: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2102, file: !2085, line: 31, baseType: !2111, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2113)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2085, line: 23, flags: DIFlagFwdDecl)
!2114 = !DIDerivedType(tag: DW_TAG_member, scope: !2102, file: !2085, line: 33, baseType: !2115, size: 64, offset: 192)
!2115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2102, file: !2085, line: 33, size: 64, elements: !2116)
!2116 = !{!2117, !2123, !2128}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2115, file: !2085, line: 38, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2115, file: !2085, line: 34, size: 64, elements: !2119)
!2119 = !{!2120, !2121, !2122}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2118, file: !2085, line: 35, baseType: !491, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2118, file: !2085, line: 36, baseType: !226, size: 8, offset: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2118, file: !2085, line: 37, baseType: !226, size: 8, offset: 40)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2115, file: !2085, line: 42, baseType: !2124, size: 16)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2115, file: !2085, line: 39, size: 16, elements: !2125)
!2125 = !{!2126, !2127}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2124, file: !2085, line: 40, baseType: !226, size: 8)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2124, file: !2085, line: 41, baseType: !226, size: 8, offset: 8)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2115, file: !2085, line: 46, baseType: !2129, size: 16)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2115, file: !2085, line: 43, size: 16, elements: !2130)
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2129, file: !2085, line: 44, baseType: !226, size: 8)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2129, file: !2085, line: 45, baseType: !226, size: 8, offset: 8)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2074, file: !47, line: 81, baseType: !2134, size: 64, offset: 448)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !47, line: 85, size: 384, elements: !2136)
!2136 = !{!2137, !2138, !2139, !2140, !2141, !2142}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2135, file: !47, line: 86, baseType: !2097, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2135, file: !47, line: 87, baseType: !117, size: 64, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2135, file: !47, line: 88, baseType: !117, size: 64, offset: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2135, file: !47, line: 89, baseType: !117, size: 64, offset: 192)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2135, file: !47, line: 90, baseType: !611, size: 8, offset: 256)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2135, file: !47, line: 92, baseType: !2134, size: 64, offset: 320)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2074, file: !47, line: 82, baseType: !7, size: 32, offset: 512)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1277, file: !640, line: 1463, baseType: !2145, offset: 21184)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !640, line: 739, elements: !391)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1277, file: !640, line: 1470, baseType: !361, size: 128, align: 64, offset: 21184)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1277, file: !640, line: 1471, baseType: !818, size: 32, offset: 21312)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1277, file: !640, line: 1472, baseType: !152, size: 32, offset: 21344)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1277, file: !640, line: 1474, baseType: !1276, size: 64, offset: 21376)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1277, file: !640, line: 1475, baseType: !1077, size: 320, offset: 21440)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1277, file: !640, line: 1478, baseType: !2152, size: 64, offset: 21760)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !640, line: 1478, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1277, file: !640, line: 1482, baseType: !818, size: 32, offset: 21824)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1277, file: !640, line: 1489, baseType: !59, size: 64, offset: 21888)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1277, file: !640, line: 1504, baseType: !59, size: 64, offset: 21952)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1277, file: !640, line: 1505, baseType: !419, size: 64, offset: 22016)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1277, file: !640, line: 1506, baseType: !418, size: 64, offset: 22080)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1277, file: !640, line: 1507, baseType: !419, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1277, file: !640, line: 1508, baseType: !419, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1277, file: !640, line: 1509, baseType: !419, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1277, file: !640, line: 1510, baseType: !361, size: 128, align: 64, offset: 22208)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1277, file: !640, line: 1511, baseType: !152, size: 32, offset: 22336)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1277, file: !640, line: 1515, baseType: !2165, size: 64, offset: 22400)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1299, line: 56, size: 64, elements: !2166)
!2166 = !{!2167}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2165, file: !1299, line: 57, baseType: !1302, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1277, file: !640, line: 1518, baseType: !2165, size: 64, offset: 22464)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1277, file: !640, line: 1528, baseType: !361, size: 128, align: 64, offset: 22528)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1277, file: !640, line: 1552, baseType: !2171, size: 35328, offset: 23040)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2172, line: 430, size: 35328, elements: !2173)
!2172 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2173 = !{!2174, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2203, !2204, !2205, !2206, !2207, !2208, !2211, !2212, !2213, !2214}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2171, file: !2172, line: 432, baseType: !2175, size: 192)
!2175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2176, size: 192, elements: !268)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2177, line: 16, size: 64, elements: !2178)
!2177 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2178 = !{!2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2176, file: !2177, line: 17, baseType: !236, size: 16)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2176, file: !2177, line: 18, baseType: !236, size: 16, offset: 16)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2176, file: !2177, line: 19, baseType: !236, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2176, file: !2177, line: 19, baseType: !236, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2176, file: !2177, line: 19, baseType: !236, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2176, file: !2177, line: 19, baseType: !236, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2176, file: !2177, line: 19, baseType: !236, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2176, file: !2177, line: 20, baseType: !236, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2176, file: !2177, line: 20, baseType: !236, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2176, file: !2177, line: 20, baseType: !236, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2176, file: !2177, line: 20, baseType: !236, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2176, file: !2177, line: 20, baseType: !236, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2176, file: !2177, line: 20, baseType: !236, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2171, file: !2172, line: 436, baseType: !117, size: 64, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2171, file: !2172, line: 440, baseType: !96, size: 16, offset: 256)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2171, file: !2172, line: 441, baseType: !96, size: 16, offset: 272)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2171, file: !2172, line: 442, baseType: !96, size: 16, offset: 288)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2171, file: !2172, line: 443, baseType: !96, size: 16, offset: 304)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2171, file: !2172, line: 447, baseType: !117, size: 64, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2171, file: !2172, line: 448, baseType: !117, size: 64, offset: 384)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2171, file: !2172, line: 459, baseType: !2200, size: 256, offset: 448)
!2200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2201, size: 256, elements: !493)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2172, line: 428, flags: DIFlagFwdDecl)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2171, file: !2172, line: 461, baseType: !117, size: 64, offset: 704)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2171, file: !2172, line: 463, baseType: !117, size: 64, offset: 768)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2171, file: !2172, line: 465, baseType: !117, size: 64, offset: 832)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2171, file: !2172, line: 466, baseType: !117, size: 64, offset: 896)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2171, file: !2172, line: 467, baseType: !117, size: 64, offset: 960)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2171, file: !2172, line: 473, baseType: !2209, size: 64, offset: 1024)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2172, line: 10, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2171, file: !2172, line: 480, baseType: !117, size: 64, offset: 1088)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2171, file: !2172, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2171, file: !2172, line: 491, baseType: !1094, size: 32, offset: 1184)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2171, file: !2172, line: 501, baseType: !2215, size: 33792, offset: 1536)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2216, line: 448, size: 33792, elements: !2217)
!2216 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2217 = !{!2218, !2219, !2220, !2386, !2387, !2393, !2394}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2215, file: !2216, line: 461, baseType: !7, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2215, file: !2216, line: 468, baseType: !117, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2215, file: !2216, line: 476, baseType: !2221, size: 64, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2216, line: 356, size: 33280, align: 512, elements: !2223)
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2222, file: !2216, line: 358, baseType: !7, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2222, file: !2216, line: 361, baseType: !7, size: 32, offset: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2222, file: !2216, line: 364, baseType: !418, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2222, file: !2216, line: 367, baseType: !418, size: 64, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2222, file: !2216, line: 370, baseType: !418, size: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2222, file: !2216, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2222, file: !2216, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2222, file: !2216, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2222, file: !2216, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2222, file: !2216, line: 397, baseType: !2234, size: 32768, offset: 512)
!2234 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2216, line: 348, size: 32768, elements: !2235)
!2235 = !{!2236, !2251, !2290, !2367, !2382}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2234, file: !2216, line: 349, baseType: !2237, size: 896)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2216, line: 12, size: 896, elements: !2238)
!2238 = !{!2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2250}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2237, file: !2216, line: 13, baseType: !1094, size: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2237, file: !2216, line: 14, baseType: !1094, size: 32, offset: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2237, file: !2216, line: 15, baseType: !1094, size: 32, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2237, file: !2216, line: 16, baseType: !1094, size: 32, offset: 96)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2237, file: !2216, line: 17, baseType: !1094, size: 32, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2237, file: !2216, line: 18, baseType: !1094, size: 32, offset: 160)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2237, file: !2216, line: 19, baseType: !1094, size: 32, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2237, file: !2216, line: 22, baseType: !2247, size: 640, offset: 224)
!2247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, size: 640, elements: !2248)
!2248 = !{!2249}
!2249 = !DISubrange(count: 20)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2237, file: !2216, line: 25, baseType: !1094, size: 32, offset: 864)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2234, file: !2216, line: 350, baseType: !2252, size: 4096, align: 128)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2216, line: 34, size: 4096, align: 128, elements: !2253)
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2273, !2274, !2275, !2279, !2281, !2285}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2252, file: !2216, line: 35, baseType: !236, size: 16)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2252, file: !2216, line: 36, baseType: !236, size: 16, offset: 16)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2252, file: !2216, line: 37, baseType: !236, size: 16, offset: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2252, file: !2216, line: 38, baseType: !236, size: 16, offset: 48)
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2252, file: !2216, line: 39, baseType: !2259, size: 128, offset: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2252, file: !2216, line: 39, size: 128, elements: !2260)
!2260 = !{!2261, !2266}
!2261 = !DIDerivedType(tag: DW_TAG_member, scope: !2259, file: !2216, line: 40, baseType: !2262, size: 128)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2259, file: !2216, line: 40, size: 128, elements: !2263)
!2263 = !{!2264, !2265}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2262, file: !2216, line: 41, baseType: !418, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2262, file: !2216, line: 42, baseType: !418, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, scope: !2259, file: !2216, line: 44, baseType: !2267, size: 128)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2259, file: !2216, line: 44, size: 128, elements: !2268)
!2268 = !{!2269, !2270, !2271, !2272}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2267, file: !2216, line: 45, baseType: !1094, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2267, file: !2216, line: 46, baseType: !1094, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2267, file: !2216, line: 47, baseType: !1094, size: 32, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2267, file: !2216, line: 48, baseType: !1094, size: 32, offset: 96)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2252, file: !2216, line: 51, baseType: !1094, size: 32, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2252, file: !2216, line: 52, baseType: !1094, size: 32, offset: 224)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2252, file: !2216, line: 55, baseType: !2276, size: 1024, offset: 256)
!2276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, size: 1024, elements: !2277)
!2277 = !{!2278}
!2278 = !DISubrange(count: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2252, file: !2216, line: 58, baseType: !2280, size: 2048, offset: 1280)
!2280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, size: 2048, elements: !272)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2252, file: !2216, line: 60, baseType: !2282, size: 384, offset: 3328)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, size: 384, elements: !2283)
!2283 = !{!2284}
!2284 = !DISubrange(count: 12)
!2285 = !DIDerivedType(tag: DW_TAG_member, scope: !2252, file: !2216, line: 62, baseType: !2286, size: 384, offset: 3712)
!2286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2252, file: !2216, line: 62, size: 384, elements: !2287)
!2287 = !{!2288, !2289}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2286, file: !2216, line: 63, baseType: !2282, size: 384)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2286, file: !2216, line: 64, baseType: !2282, size: 384)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2234, file: !2216, line: 351, baseType: !2291, size: 1088)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2216, line: 79, size: 1088, elements: !2292)
!2292 = !{!2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2366}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2291, file: !2216, line: 80, baseType: !1094, size: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2291, file: !2216, line: 81, baseType: !1094, size: 32, offset: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2291, file: !2216, line: 82, baseType: !1094, size: 32, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2291, file: !2216, line: 83, baseType: !1094, size: 32, offset: 96)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2291, file: !2216, line: 84, baseType: !1094, size: 32, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2291, file: !2216, line: 85, baseType: !1094, size: 32, offset: 160)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2291, file: !2216, line: 86, baseType: !1094, size: 32, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2291, file: !2216, line: 88, baseType: !2247, size: 640, offset: 224)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2291, file: !2216, line: 89, baseType: !226, size: 8, offset: 864)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2291, file: !2216, line: 90, baseType: !226, size: 8, offset: 872)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2291, file: !2216, line: 91, baseType: !226, size: 8, offset: 880)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2291, file: !2216, line: 92, baseType: !226, size: 8, offset: 888)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2291, file: !2216, line: 93, baseType: !226, size: 8, offset: 896)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2291, file: !2216, line: 94, baseType: !226, size: 8, offset: 904)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2291, file: !2216, line: 95, baseType: !2308, size: 64, offset: 960)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2310, line: 11, size: 128, elements: !2311)
!2310 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2311 = !{!2312, !2313}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2309, file: !2310, line: 12, baseType: !105, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2309, file: !2310, line: 13, baseType: !2314, size: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2316, line: 103, size: 1344, elements: !2317)
!2316 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2346, !2347, !2348}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2315, file: !2316, line: 109, baseType: !117, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2315, file: !2316, line: 110, baseType: !117, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2315, file: !2316, line: 111, baseType: !117, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2315, file: !2316, line: 112, baseType: !117, size: 64, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2315, file: !2316, line: 113, baseType: !117, size: 64, offset: 256)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2315, file: !2316, line: 114, baseType: !117, size: 64, offset: 320)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2315, file: !2316, line: 117, baseType: !117, size: 64, offset: 384)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2315, file: !2316, line: 118, baseType: !117, size: 64, offset: 448)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2315, file: !2316, line: 119, baseType: !117, size: 64, offset: 512)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2315, file: !2316, line: 120, baseType: !117, size: 64, offset: 576)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2315, file: !2316, line: 121, baseType: !117, size: 64, offset: 640)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2315, file: !2316, line: 122, baseType: !117, size: 64, offset: 704)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2315, file: !2316, line: 123, baseType: !117, size: 64, offset: 768)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2315, file: !2316, line: 124, baseType: !117, size: 64, offset: 832)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2315, file: !2316, line: 125, baseType: !117, size: 64, offset: 896)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2315, file: !2316, line: 139, baseType: !117, size: 64, offset: 960)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2315, file: !2316, line: 142, baseType: !117, size: 64, offset: 1024)
!2335 = !DIDerivedType(tag: DW_TAG_member, scope: !2315, file: !2316, line: 144, baseType: !2336, size: 64, offset: 1088)
!2336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2315, file: !2316, line: 144, size: 64, elements: !2337)
!2337 = !{!2338, !2339, !2340}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2336, file: !2316, line: 146, baseType: !236, size: 16)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2336, file: !2316, line: 148, baseType: !418, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2336, file: !2316, line: 150, baseType: !2341, size: 64)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2316, line: 59, size: 64, elements: !2342)
!2342 = !{!2343, !2344, !2345}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2341, file: !2316, line: 61, baseType: !418, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2341, file: !2316, line: 63, baseType: !418, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2341, file: !2316, line: 65, baseType: !418, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2315, file: !2316, line: 153, baseType: !117, size: 64, offset: 1152)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2315, file: !2316, line: 154, baseType: !117, size: 64, offset: 1216)
!2348 = !DIDerivedType(tag: DW_TAG_member, scope: !2315, file: !2316, line: 156, baseType: !2349, size: 64, offset: 1280)
!2349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2315, file: !2316, line: 156, size: 64, elements: !2350)
!2350 = !{!2351, !2352, !2353}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2349, file: !2316, line: 158, baseType: !236, size: 16)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2349, file: !2316, line: 160, baseType: !418, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2349, file: !2316, line: 162, baseType: !2354, size: 64)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2316, line: 69, size: 64, elements: !2355)
!2355 = !{!2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2354, file: !2316, line: 71, baseType: !418, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2354, file: !2316, line: 73, baseType: !418, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2354, file: !2316, line: 75, baseType: !418, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2354, file: !2316, line: 77, baseType: !418, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2354, file: !2316, line: 80, baseType: !418, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2354, file: !2316, line: 83, baseType: !418, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2354, file: !2316, line: 86, baseType: !418, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2354, file: !2316, line: 88, baseType: !418, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2354, file: !2316, line: 93, baseType: !418, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2354, file: !2316, line: 100, baseType: !418, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2291, file: !2216, line: 96, baseType: !1094, size: 32, offset: 1024)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2234, file: !2216, line: 352, baseType: !2368, size: 4608, align: 512)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2216, line: 333, size: 4608, align: 512, elements: !2369)
!2369 = !{!2370, !2371, !2380}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2368, file: !2216, line: 334, baseType: !2252, size: 4096, align: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2368, file: !2216, line: 335, baseType: !2372, size: 512, offset: 4096)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2216, line: 312, size: 512, elements: !2373)
!2373 = !{!2374, !2375, !2376}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2372, file: !2216, line: 313, baseType: !418, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2372, file: !2216, line: 314, baseType: !418, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2372, file: !2216, line: 315, baseType: !2377, size: 384, offset: 128)
!2377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 384, elements: !2378)
!2378 = !{!2379}
!2379 = !DISubrange(count: 6)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2368, file: !2216, line: 336, baseType: !2381, offset: 4608)
!2381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, elements: !589)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2234, file: !2216, line: 353, baseType: !2383, size: 32768)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 32768, elements: !2384)
!2384 = !{!2385}
!2385 = !DISubrange(count: 4096)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2215, file: !2216, line: 484, baseType: !2221, size: 64, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2215, file: !2216, line: 491, baseType: !2388, size: 128, offset: 256)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2216, line: 404, size: 128, elements: !2389)
!2389 = !{!2390, !2391, !2392}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2388, file: !2216, line: 424, baseType: !418, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2388, file: !2216, line: 432, baseType: !7, size: 32, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2388, file: !2216, line: 440, baseType: !7, size: 32, offset: 96)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2215, file: !2216, line: 498, baseType: !2388, size: 128, offset: 384)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2215, file: !2216, line: 508, baseType: !2222, size: 33280, align: 512, offset: 512)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !107, file: !30, line: 158, baseType: !2396, size: 64, offset: 4544)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_stats", file: !30, line: 158, flags: DIFlagFwdDecl)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !107, file: !30, line: 161, baseType: !59, size: 64, offset: 4608)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !107, file: !30, line: 164, baseType: !2400, size: 64, offset: 4672)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !30, line: 164, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "nb_min", scope: !107, file: !30, line: 166, baseType: !1219, size: 192, offset: 4736)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "nb_max", scope: !107, file: !30, line: 167, baseType: !1219, size: 192, offset: 4928)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !84, file: !30, line: 297, baseType: !2405, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!101, !106, !91, !303}
!2408 = !DIGlobalVariableExpression(var: !2409, expr: !DIExpression())
!2409 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpufreq_freq_attr_scaling_available_freqs226", scope: !2, file: !3, line: 279, type: !59, isLocal: true, isDefinition: true)
!2410 = !DIGlobalVariableExpression(var: !2411, expr: !DIExpression())
!2411 = distinct !DIGlobalVariable(scope: null, file: !3, line: 290, type: !2412, isLocal: true, isDefinition: true)
!2412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 208, elements: !2413)
!2413 = !{!2414}
!2414 = !DISubrange(count: 26)
!2415 = !DIGlobalVariableExpression(var: !2416, expr: !DIExpression())
!2416 = distinct !DIGlobalVariable(name: "cpufreq_freq_attr_scaling_boost_freqs", scope: !2, file: !3, line: 290, type: !84, isLocal: false, isDefinition: true)
!2417 = !DIGlobalVariableExpression(var: !2418, expr: !DIExpression())
!2418 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpufreq_freq_attr_scaling_boost_freqs227", scope: !2, file: !3, line: 291, type: !59, isLocal: true, isDefinition: true)
!2419 = !DIGlobalVariableExpression(var: !2420, expr: !DIExpression())
!2420 = distinct !DIGlobalVariable(name: "cpufreq_generic_attr", scope: !2, file: !3, line: 293, type: !2421, isLocal: false, isDefinition: true)
!2421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2422, size: 128, elements: !966)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!2423 = !DIGlobalVariableExpression(var: !2424, expr: !DIExpression())
!2424 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpufreq_generic_attr228", scope: !2, file: !3, line: 297, type: !59, isLocal: true, isDefinition: true)
!2425 = !DIGlobalVariableExpression(var: !2426, expr: !DIExpression())
!2426 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author229", scope: !2, file: !3, line: 373, type: !2427, isLocal: true, isDefinition: true, align: 8)
!2427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 424, elements: !2428)
!2428 = !{!2429}
!2429 = !DISubrange(count: 53)
!2430 = !DIGlobalVariableExpression(var: !2431, expr: !DIExpression())
!2431 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description230", scope: !2, file: !3, line: 374, type: !2432, isLocal: true, isDefinition: true, align: 8)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 440, elements: !2433)
!2433 = !{!2434}
!2434 = !DISubrange(count: 55)
!2435 = !DIGlobalVariableExpression(var: !2436, expr: !DIExpression())
!2436 = distinct !DIGlobalVariable(scope: null, file: !3, line: 257, type: !2437, isLocal: true, isDefinition: true)
!2437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 32, elements: !493)
!2438 = !DIGlobalVariableExpression(var: !2439, expr: !DIExpression())
!2439 = distinct !DIGlobalVariable(scope: null, file: !3, line: 259, type: !2440, isLocal: true, isDefinition: true)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 16, elements: !966)
!2441 = !DIGlobalVariableExpression(var: !2442, expr: !DIExpression())
!2442 = distinct !DIGlobalVariable(scope: null, file: !3, line: 314, type: !2443, isLocal: true, isDefinition: true)
!2443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 384, elements: !2444)
!2444 = !{!2445}
!2445 = !DISubrange(count: 48)
!2446 = !{i32 7, !"Dwarf Version", i32 5}
!2447 = !{i32 2, !"Debug Info Version", i32 3}
!2448 = !{i32 1, !"wchar_size", i32 2}
!2449 = !{i32 8, !"cf-protection-branch", i32 1}
!2450 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2451 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2452 = !{i32 1, !"Code Model", i32 2}
!2453 = !{i32 1, !"override-stack-alignment", i32 8}
!2454 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2455 = distinct !DISubprogram(name: "policy_has_boost_freq", scope: !3, file: !3, line: 17, type: !2456, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2458)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!611, !106}
!2458 = !{!2459, !2460, !2461}
!2459 = !DILocalVariable(name: "policy", arg: 1, scope: !2455, file: !3, line: 17, type: !106)
!2460 = !DILocalVariable(name: "pos", scope: !2455, file: !3, line: 19, type: !1246)
!2461 = !DILocalVariable(name: "table", scope: !2455, file: !3, line: 19, type: !1246)
!2462 = !DILocation(line: 17, column: 51, scope: !2455)
!2463 = !DILocation(line: 19, column: 2, scope: !2455)
!2464 = !DILocation(line: 19, column: 34, scope: !2455)
!2465 = !DILocation(line: 19, column: 40, scope: !2455)
!2466 = !DILocation(line: 19, column: 48, scope: !2455)
!2467 = !DILocation(line: 19, column: 56, scope: !2455)
!2468 = !DILocation(line: 21, column: 7, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 21, column: 6)
!2470 = !DILocation(line: 21, column: 6, scope: !2455)
!2471 = !DILocation(line: 22, column: 3, scope: !2469)
!2472 = !DILocation(line: 24, column: 2, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 24, column: 2)
!2474 = !DILocation(line: 24, column: 2, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 24, column: 2)
!2476 = !DILocation(line: 24, column: 2, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 24, column: 2)
!2478 = !DILocation(line: 25, column: 7, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 25, column: 7)
!2480 = !DILocation(line: 25, column: 12, scope: !2479)
!2481 = !DILocation(line: 25, column: 18, scope: !2479)
!2482 = !DILocation(line: 25, column: 7, scope: !2477)
!2483 = !DILocation(line: 26, column: 4, scope: !2479)
!2484 = distinct !{!2484, !2472, !2485, !2486, !2487}
!2485 = !DILocation(line: 26, column: 11, scope: !2473)
!2486 = !{!"llvm.loop.mustprogress"}
!2487 = !{!"llvm.loop.unroll.disable"}
!2488 = !DILocation(line: 28, column: 2, scope: !2455)
!2489 = !DILocation(line: 29, column: 1, scope: !2455)
!2490 = distinct !DISubprogram(name: "cpufreq_frequency_table_cpuinfo", scope: !3, file: !3, line: 32, type: !2491, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2493)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!152, !106, !1246}
!2493 = !{!2494, !2495, !2496, !2497, !2498, !2499}
!2494 = !DILocalVariable(name: "policy", arg: 1, scope: !2490, file: !3, line: 32, type: !106)
!2495 = !DILocalVariable(name: "table", arg: 2, scope: !2490, file: !3, line: 33, type: !1246)
!2496 = !DILocalVariable(name: "pos", scope: !2490, file: !3, line: 35, type: !1246)
!2497 = !DILocalVariable(name: "min_freq", scope: !2490, file: !3, line: 36, type: !7)
!2498 = !DILocalVariable(name: "max_freq", scope: !2490, file: !3, line: 37, type: !7)
!2499 = !DILocalVariable(name: "freq", scope: !2490, file: !3, line: 38, type: !7)
!2500 = !DILocation(line: 32, column: 60, scope: !2490)
!2501 = !DILocation(line: 33, column: 41, scope: !2490)
!2502 = !DILocation(line: 35, column: 2, scope: !2490)
!2503 = !DILocation(line: 35, column: 34, scope: !2490)
!2504 = !DILocation(line: 36, column: 2, scope: !2490)
!2505 = !DILocation(line: 36, column: 15, scope: !2490)
!2506 = !DILocation(line: 37, column: 2, scope: !2490)
!2507 = !DILocation(line: 37, column: 15, scope: !2490)
!2508 = !DILocation(line: 38, column: 2, scope: !2490)
!2509 = !DILocation(line: 38, column: 15, scope: !2490)
!2510 = !DILocation(line: 40, column: 2, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 40, column: 2)
!2512 = !DILocation(line: 40, column: 2, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 40, column: 2)
!2514 = !DILocation(line: 40, column: 2, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 40, column: 2)
!2516 = !DILocation(line: 41, column: 10, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 40, column: 43)
!2518 = !DILocation(line: 41, column: 15, scope: !2517)
!2519 = !DILocation(line: 41, column: 8, scope: !2517)
!2520 = !DILocation(line: 43, column: 9, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 43, column: 7)
!2522 = !DILocation(line: 43, column: 33, scope: !2521)
!2523 = !DILocation(line: 43, column: 37, scope: !2521)
!2524 = !DILocation(line: 43, column: 45, scope: !2521)
!2525 = !{i8 0, i8 2}
!2526 = !DILocation(line: 44, column: 7, scope: !2521)
!2527 = !DILocation(line: 44, column: 11, scope: !2521)
!2528 = !DILocation(line: 44, column: 16, scope: !2521)
!2529 = !DILocation(line: 44, column: 22, scope: !2521)
!2530 = !DILocation(line: 43, column: 7, scope: !2517)
!2531 = !DILocation(line: 45, column: 4, scope: !2521)
!2532 = !DILocation(line: 47, column: 3, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 47, column: 3)
!2534 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 47, column: 3)
!2535 = !DILocation(line: 47, column: 3, scope: !2534)
!2536 = !DILocation(line: 48, column: 7, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 48, column: 7)
!2538 = !DILocation(line: 48, column: 14, scope: !2537)
!2539 = !DILocation(line: 48, column: 12, scope: !2537)
!2540 = !DILocation(line: 48, column: 7, scope: !2517)
!2541 = !DILocation(line: 49, column: 15, scope: !2537)
!2542 = !DILocation(line: 49, column: 13, scope: !2537)
!2543 = !DILocation(line: 49, column: 4, scope: !2537)
!2544 = !DILocation(line: 50, column: 7, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 50, column: 7)
!2546 = !DILocation(line: 50, column: 14, scope: !2545)
!2547 = !DILocation(line: 50, column: 12, scope: !2545)
!2548 = !DILocation(line: 50, column: 7, scope: !2517)
!2549 = !DILocation(line: 51, column: 15, scope: !2545)
!2550 = !DILocation(line: 51, column: 13, scope: !2545)
!2551 = !DILocation(line: 51, column: 4, scope: !2545)
!2552 = distinct !{!2552, !2510, !2553, !2486, !2487}
!2553 = !DILocation(line: 52, column: 2, scope: !2511)
!2554 = !DILocation(line: 54, column: 43, scope: !2490)
!2555 = !DILocation(line: 54, column: 16, scope: !2490)
!2556 = !DILocation(line: 54, column: 24, scope: !2490)
!2557 = !DILocation(line: 54, column: 32, scope: !2490)
!2558 = !DILocation(line: 54, column: 41, scope: !2490)
!2559 = !DILocation(line: 54, column: 2, scope: !2490)
!2560 = !DILocation(line: 54, column: 10, scope: !2490)
!2561 = !DILocation(line: 54, column: 14, scope: !2490)
!2562 = !DILocation(line: 55, column: 16, scope: !2490)
!2563 = !DILocation(line: 55, column: 2, scope: !2490)
!2564 = !DILocation(line: 55, column: 10, scope: !2490)
!2565 = !DILocation(line: 55, column: 14, scope: !2490)
!2566 = !DILocation(line: 60, column: 6, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 60, column: 6)
!2568 = !DILocation(line: 60, column: 14, scope: !2567)
!2569 = !DILocation(line: 60, column: 22, scope: !2567)
!2570 = !DILocation(line: 60, column: 33, scope: !2567)
!2571 = !DILocation(line: 60, column: 31, scope: !2567)
!2572 = !DILocation(line: 60, column: 6, scope: !2490)
!2573 = !DILocation(line: 61, column: 44, scope: !2567)
!2574 = !DILocation(line: 61, column: 17, scope: !2567)
!2575 = !DILocation(line: 61, column: 25, scope: !2567)
!2576 = !DILocation(line: 61, column: 33, scope: !2567)
!2577 = !DILocation(line: 61, column: 42, scope: !2567)
!2578 = !DILocation(line: 61, column: 3, scope: !2567)
!2579 = !DILocation(line: 61, column: 11, scope: !2567)
!2580 = !DILocation(line: 61, column: 15, scope: !2567)
!2581 = !DILocation(line: 63, column: 6, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 63, column: 6)
!2583 = !DILocation(line: 63, column: 14, scope: !2582)
!2584 = !DILocation(line: 63, column: 18, scope: !2582)
!2585 = !DILocation(line: 63, column: 6, scope: !2490)
!2586 = !DILocation(line: 64, column: 3, scope: !2582)
!2587 = !DILocation(line: 66, column: 3, scope: !2582)
!2588 = !DILocation(line: 67, column: 1, scope: !2490)
!2589 = !DISubprogram(name: "cpufreq_boost_enabled", scope: !30, file: !30, line: 799, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2590 = distinct !DISubprogram(name: "cpufreq_frequency_table_verify", scope: !3, file: !3, line: 69, type: !2591, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2601)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!152, !2593, !1246}
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_policy_data", file: !30, line: 176, size: 320, elements: !2595)
!2595 = !{!2596, !2597, !2598, !2599, !2600}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "cpuinfo", scope: !2594, file: !30, line: 177, baseType: !129, size: 96)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table", scope: !2594, file: !30, line: 178, baseType: !1246, size: 64, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2594, file: !30, line: 179, baseType: !7, size: 32, offset: 192)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2594, file: !30, line: 180, baseType: !7, size: 32, offset: 224)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2594, file: !30, line: 181, baseType: !7, size: 32, offset: 256)
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2607}
!2602 = !DILocalVariable(name: "policy", arg: 1, scope: !2590, file: !3, line: 69, type: !2593)
!2603 = !DILocalVariable(name: "table", arg: 2, scope: !2590, file: !3, line: 70, type: !1246)
!2604 = !DILocalVariable(name: "pos", scope: !2590, file: !3, line: 72, type: !1246)
!2605 = !DILocalVariable(name: "freq", scope: !2590, file: !3, line: 73, type: !7)
!2606 = !DILocalVariable(name: "next_larger", scope: !2590, file: !3, line: 73, type: !7)
!2607 = !DILocalVariable(name: "found", scope: !2590, file: !3, line: 74, type: !611)
!2608 = !DILocation(line: 69, column: 64, scope: !2590)
!2609 = !DILocation(line: 70, column: 40, scope: !2590)
!2610 = !DILocation(line: 72, column: 2, scope: !2590)
!2611 = !DILocation(line: 72, column: 34, scope: !2590)
!2612 = !DILocation(line: 73, column: 2, scope: !2590)
!2613 = !DILocation(line: 73, column: 15, scope: !2590)
!2614 = !DILocation(line: 73, column: 21, scope: !2590)
!2615 = !DILocation(line: 74, column: 2, scope: !2590)
!2616 = !DILocation(line: 74, column: 7, scope: !2590)
!2617 = !DILocation(line: 76, column: 2, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 76, column: 2)
!2619 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 76, column: 2)
!2620 = !DILocation(line: 76, column: 2, scope: !2619)
!2621 = !DILocation(line: 79, column: 35, scope: !2590)
!2622 = !DILocation(line: 79, column: 2, scope: !2590)
!2623 = !DILocation(line: 81, column: 2, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 81, column: 2)
!2625 = !DILocation(line: 81, column: 2, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 81, column: 2)
!2627 = !DILocation(line: 81, column: 2, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 81, column: 2)
!2629 = !DILocation(line: 82, column: 10, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 81, column: 43)
!2631 = !DILocation(line: 82, column: 15, scope: !2630)
!2632 = !DILocation(line: 82, column: 8, scope: !2630)
!2633 = !DILocation(line: 84, column: 8, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 84, column: 7)
!2635 = !DILocation(line: 84, column: 16, scope: !2634)
!2636 = !DILocation(line: 84, column: 24, scope: !2634)
!2637 = !DILocation(line: 84, column: 13, scope: !2634)
!2638 = !DILocation(line: 84, column: 29, scope: !2634)
!2639 = !DILocation(line: 84, column: 33, scope: !2634)
!2640 = !DILocation(line: 84, column: 41, scope: !2634)
!2641 = !DILocation(line: 84, column: 49, scope: !2634)
!2642 = !DILocation(line: 84, column: 38, scope: !2634)
!2643 = !DILocation(line: 84, column: 7, scope: !2630)
!2644 = !DILocation(line: 85, column: 10, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 84, column: 55)
!2646 = !DILocation(line: 86, column: 4, scope: !2645)
!2647 = !DILocation(line: 89, column: 8, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 89, column: 7)
!2649 = !DILocation(line: 89, column: 22, scope: !2648)
!2650 = !DILocation(line: 89, column: 20, scope: !2648)
!2651 = !DILocation(line: 89, column: 28, scope: !2648)
!2652 = !DILocation(line: 89, column: 32, scope: !2648)
!2653 = !DILocation(line: 89, column: 39, scope: !2648)
!2654 = !DILocation(line: 89, column: 47, scope: !2648)
!2655 = !DILocation(line: 89, column: 37, scope: !2648)
!2656 = !DILocation(line: 89, column: 7, scope: !2630)
!2657 = !DILocation(line: 90, column: 18, scope: !2648)
!2658 = !DILocation(line: 90, column: 16, scope: !2648)
!2659 = !DILocation(line: 90, column: 4, scope: !2648)
!2660 = distinct !{!2660, !2623, !2661, !2486, !2487}
!2661 = !DILocation(line: 91, column: 2, scope: !2624)
!2662 = !DILocation(line: 93, column: 7, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 93, column: 6)
!2664 = !DILocation(line: 93, column: 6, scope: !2590)
!2665 = !DILocation(line: 94, column: 17, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 93, column: 14)
!2667 = !DILocation(line: 94, column: 3, scope: !2666)
!2668 = !DILocation(line: 94, column: 11, scope: !2666)
!2669 = !DILocation(line: 94, column: 15, scope: !2666)
!2670 = !DILocation(line: 95, column: 36, scope: !2666)
!2671 = !DILocation(line: 95, column: 3, scope: !2666)
!2672 = !DILocation(line: 96, column: 2, scope: !2666)
!2673 = !DILocation(line: 98, column: 2, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 98, column: 2)
!2675 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 98, column: 2)
!2676 = !DILocation(line: 98, column: 2, scope: !2675)
!2677 = !DILocation(line: 102, column: 1, scope: !2590)
!2678 = !DILocation(line: 101, column: 2, scope: !2590)
!2679 = distinct !DISubprogram(name: "cpufreq_verify_within_cpu_limits", scope: !30, file: !30, line: 479, type: !2680, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{null, !2593}
!2682 = !{!2683}
!2683 = !DILocalVariable(name: "policy", arg: 1, scope: !2679, file: !30, line: 479, type: !2593)
!2684 = !DILocation(line: 479, column: 62, scope: !2679)
!2685 = !DILocation(line: 481, column: 31, scope: !2679)
!2686 = !DILocation(line: 481, column: 39, scope: !2679)
!2687 = !DILocation(line: 481, column: 47, scope: !2679)
!2688 = !DILocation(line: 481, column: 55, scope: !2679)
!2689 = !DILocation(line: 482, column: 10, scope: !2679)
!2690 = !DILocation(line: 482, column: 18, scope: !2679)
!2691 = !DILocation(line: 482, column: 26, scope: !2679)
!2692 = !DILocation(line: 481, column: 2, scope: !2679)
!2693 = !DILocation(line: 483, column: 1, scope: !2679)
!2694 = distinct !DISubprogram(name: "cpufreq_generic_frequency_table_verify", scope: !3, file: !3, line: 109, type: !2695, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!152, !2593}
!2697 = !{!2698}
!2698 = !DILocalVariable(name: "policy", arg: 1, scope: !2694, file: !3, line: 109, type: !2593)
!2699 = !DILocation(line: 109, column: 72, scope: !2694)
!2700 = !DILocation(line: 111, column: 7, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 111, column: 6)
!2702 = !DILocation(line: 111, column: 15, scope: !2701)
!2703 = !DILocation(line: 111, column: 6, scope: !2694)
!2704 = !DILocation(line: 112, column: 3, scope: !2701)
!2705 = !DILocation(line: 114, column: 40, scope: !2694)
!2706 = !DILocation(line: 114, column: 48, scope: !2694)
!2707 = !DILocation(line: 114, column: 56, scope: !2694)
!2708 = !DILocation(line: 114, column: 9, scope: !2694)
!2709 = !DILocation(line: 114, column: 2, scope: !2694)
!2710 = !DILocation(line: 115, column: 1, scope: !2694)
!2711 = distinct !DISubprogram(name: "cpufreq_table_index_unsorted", scope: !3, file: !3, line: 118, type: !2712, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!152, !106, !7, !7}
!2714 = !{!2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2733, !2739}
!2715 = !DILocalVariable(name: "policy", arg: 1, scope: !2711, file: !3, line: 118, type: !106)
!2716 = !DILocalVariable(name: "target_freq", arg: 2, scope: !2711, file: !3, line: 119, type: !7)
!2717 = !DILocalVariable(name: "relation", arg: 3, scope: !2711, file: !3, line: 120, type: !7)
!2718 = !DILocalVariable(name: "optimal", scope: !2711, file: !3, line: 122, type: !1247)
!2719 = !DILocalVariable(name: "suboptimal", scope: !2711, file: !3, line: 126, type: !1247)
!2720 = !DILocalVariable(name: "pos", scope: !2711, file: !3, line: 130, type: !1246)
!2721 = !DILocalVariable(name: "table", scope: !2711, file: !3, line: 131, type: !1246)
!2722 = !DILocalVariable(name: "freq", scope: !2711, file: !3, line: 132, type: !7)
!2723 = !DILocalVariable(name: "diff", scope: !2711, file: !3, line: 132, type: !7)
!2724 = !DILocalVariable(name: "i", scope: !2711, file: !3, line: 132, type: !7)
!2725 = !DILocalVariable(name: "index", scope: !2711, file: !3, line: 133, type: !152)
!2726 = !DILocalVariable(name: "__x", scope: !2727, file: !3, line: 185, type: !152)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 185, column: 11)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 157, column: 21)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 148, column: 50)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 148, column: 2)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !3, line: 148, column: 2)
!2732 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 148, column: 2)
!2733 = !DILocalVariable(name: "__ret_warn_on", scope: !2734, file: !3, line: 197, type: !152)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 197, column: 4)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 196, column: 35)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 196, column: 7)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 195, column: 31)
!2738 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 195, column: 6)
!2739 = !DILocalVariable(name: "__flags", scope: !2740, file: !3, line: 197, type: !152)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 197, column: 4)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 197, column: 4)
!2742 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 197, column: 4)
!2743 = !DILocation(line: 118, column: 57, scope: !2711)
!2744 = !DILocation(line: 119, column: 19, scope: !2711)
!2745 = !DILocation(line: 120, column: 19, scope: !2711)
!2746 = !DILocation(line: 122, column: 2, scope: !2711)
!2747 = !DILocation(line: 122, column: 33, scope: !2711)
!2748 = !DILocation(line: 126, column: 2, scope: !2711)
!2749 = !DILocation(line: 126, column: 33, scope: !2711)
!2750 = !DILocation(line: 130, column: 2, scope: !2711)
!2751 = !DILocation(line: 130, column: 34, scope: !2711)
!2752 = !DILocation(line: 131, column: 2, scope: !2711)
!2753 = !DILocation(line: 131, column: 34, scope: !2711)
!2754 = !DILocation(line: 131, column: 42, scope: !2711)
!2755 = !DILocation(line: 131, column: 50, scope: !2711)
!2756 = !DILocation(line: 132, column: 2, scope: !2711)
!2757 = !DILocation(line: 132, column: 15, scope: !2711)
!2758 = !DILocation(line: 132, column: 21, scope: !2711)
!2759 = !DILocation(line: 132, column: 27, scope: !2711)
!2760 = !DILocation(line: 133, column: 2, scope: !2711)
!2761 = !DILocation(line: 133, column: 6, scope: !2711)
!2762 = !DILocation(line: 135, column: 2, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 135, column: 2)
!2764 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 135, column: 2)
!2765 = !DILocation(line: 135, column: 2, scope: !2764)
!2766 = !DILocation(line: 138, column: 10, scope: !2711)
!2767 = !DILocation(line: 138, column: 2, scope: !2711)
!2768 = !DILocation(line: 140, column: 14, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 138, column: 20)
!2770 = !DILocation(line: 140, column: 24, scope: !2769)
!2771 = !DILocation(line: 141, column: 3, scope: !2769)
!2772 = !DILocation(line: 144, column: 11, scope: !2769)
!2773 = !DILocation(line: 144, column: 21, scope: !2769)
!2774 = !DILocation(line: 145, column: 3, scope: !2769)
!2775 = !DILocation(line: 148, column: 2, scope: !2732)
!2776 = !DILocation(line: 148, column: 2, scope: !2731)
!2777 = !DILocation(line: 148, column: 2, scope: !2730)
!2778 = !DILocation(line: 149, column: 10, scope: !2729)
!2779 = !DILocation(line: 149, column: 15, scope: !2729)
!2780 = !DILocation(line: 149, column: 8, scope: !2729)
!2781 = !DILocation(line: 151, column: 8, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 151, column: 7)
!2783 = !DILocation(line: 151, column: 15, scope: !2782)
!2784 = !DILocation(line: 151, column: 23, scope: !2782)
!2785 = !DILocation(line: 151, column: 13, scope: !2782)
!2786 = !DILocation(line: 151, column: 28, scope: !2782)
!2787 = !DILocation(line: 151, column: 32, scope: !2782)
!2788 = !DILocation(line: 151, column: 39, scope: !2782)
!2789 = !DILocation(line: 151, column: 47, scope: !2782)
!2790 = !DILocation(line: 151, column: 37, scope: !2782)
!2791 = !DILocation(line: 151, column: 7, scope: !2729)
!2792 = !DILocation(line: 152, column: 4, scope: !2782)
!2793 = !DILocation(line: 153, column: 7, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 153, column: 7)
!2795 = !DILocation(line: 153, column: 15, scope: !2794)
!2796 = !DILocation(line: 153, column: 12, scope: !2794)
!2797 = !DILocation(line: 153, column: 7, scope: !2729)
!2798 = !DILocation(line: 154, column: 26, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 153, column: 28)
!2800 = !DILocation(line: 154, column: 12, scope: !2799)
!2801 = !DILocation(line: 154, column: 24, scope: !2799)
!2802 = !DILocation(line: 155, column: 4, scope: !2799)
!2803 = !DILocation(line: 157, column: 11, scope: !2729)
!2804 = !DILocation(line: 157, column: 3, scope: !2729)
!2805 = !DILocation(line: 159, column: 8, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 159, column: 8)
!2807 = !DILocation(line: 159, column: 15, scope: !2806)
!2808 = !DILocation(line: 159, column: 13, scope: !2806)
!2809 = !DILocation(line: 159, column: 8, scope: !2728)
!2810 = !DILocation(line: 160, column: 9, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 160, column: 9)
!2812 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 159, column: 28)
!2813 = !DILocation(line: 160, column: 25, scope: !2811)
!2814 = !DILocation(line: 160, column: 14, scope: !2811)
!2815 = !DILocation(line: 160, column: 9, scope: !2812)
!2816 = !DILocation(line: 161, column: 26, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 160, column: 36)
!2818 = !DILocation(line: 161, column: 14, scope: !2817)
!2819 = !DILocation(line: 161, column: 24, scope: !2817)
!2820 = !DILocation(line: 162, column: 28, scope: !2817)
!2821 = !DILocation(line: 162, column: 14, scope: !2817)
!2822 = !DILocation(line: 162, column: 26, scope: !2817)
!2823 = !DILocation(line: 163, column: 5, scope: !2817)
!2824 = !DILocation(line: 164, column: 4, scope: !2812)
!2825 = !DILocation(line: 165, column: 9, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 165, column: 9)
!2827 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 164, column: 11)
!2828 = !DILocation(line: 165, column: 28, scope: !2826)
!2829 = !DILocation(line: 165, column: 14, scope: !2826)
!2830 = !DILocation(line: 165, column: 9, scope: !2827)
!2831 = !DILocation(line: 166, column: 29, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 165, column: 39)
!2833 = !DILocation(line: 166, column: 17, scope: !2832)
!2834 = !DILocation(line: 166, column: 27, scope: !2832)
!2835 = !DILocation(line: 167, column: 31, scope: !2832)
!2836 = !DILocation(line: 167, column: 17, scope: !2832)
!2837 = !DILocation(line: 167, column: 29, scope: !2832)
!2838 = !DILocation(line: 168, column: 5, scope: !2832)
!2839 = !DILocation(line: 170, column: 4, scope: !2728)
!2840 = !DILocation(line: 172, column: 8, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 172, column: 8)
!2842 = !DILocation(line: 172, column: 15, scope: !2841)
!2843 = !DILocation(line: 172, column: 13, scope: !2841)
!2844 = !DILocation(line: 172, column: 8, scope: !2728)
!2845 = !DILocation(line: 173, column: 9, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 173, column: 9)
!2847 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 172, column: 28)
!2848 = !DILocation(line: 173, column: 25, scope: !2846)
!2849 = !DILocation(line: 173, column: 14, scope: !2846)
!2850 = !DILocation(line: 173, column: 9, scope: !2847)
!2851 = !DILocation(line: 174, column: 26, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 173, column: 36)
!2853 = !DILocation(line: 174, column: 14, scope: !2852)
!2854 = !DILocation(line: 174, column: 24, scope: !2852)
!2855 = !DILocation(line: 175, column: 28, scope: !2852)
!2856 = !DILocation(line: 175, column: 14, scope: !2852)
!2857 = !DILocation(line: 175, column: 26, scope: !2852)
!2858 = !DILocation(line: 176, column: 5, scope: !2852)
!2859 = !DILocation(line: 177, column: 4, scope: !2847)
!2860 = !DILocation(line: 178, column: 9, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 178, column: 9)
!2862 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 177, column: 11)
!2863 = !DILocation(line: 178, column: 28, scope: !2861)
!2864 = !DILocation(line: 178, column: 14, scope: !2861)
!2865 = !DILocation(line: 178, column: 9, scope: !2862)
!2866 = !DILocation(line: 179, column: 29, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 178, column: 39)
!2868 = !DILocation(line: 179, column: 17, scope: !2867)
!2869 = !DILocation(line: 179, column: 27, scope: !2867)
!2870 = !DILocation(line: 180, column: 31, scope: !2867)
!2871 = !DILocation(line: 180, column: 17, scope: !2867)
!2872 = !DILocation(line: 180, column: 29, scope: !2867)
!2873 = !DILocation(line: 181, column: 5, scope: !2867)
!2874 = !DILocation(line: 183, column: 4, scope: !2728)
!2875 = !DILocation(line: 185, column: 11, scope: !2727)
!2876 = !DILocation(line: 185, column: 11, scope: !2728)
!2877 = !DILocation(line: 185, column: 9, scope: !2728)
!2878 = !DILocation(line: 186, column: 8, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 186, column: 8)
!2880 = !DILocation(line: 186, column: 23, scope: !2879)
!2881 = !DILocation(line: 186, column: 13, scope: !2879)
!2882 = !DILocation(line: 186, column: 33, scope: !2879)
!2883 = !DILocation(line: 187, column: 9, scope: !2879)
!2884 = !DILocation(line: 187, column: 25, scope: !2879)
!2885 = !DILocation(line: 187, column: 14, scope: !2879)
!2886 = !DILocation(line: 187, column: 35, scope: !2879)
!2887 = !DILocation(line: 188, column: 9, scope: !2879)
!2888 = !DILocation(line: 188, column: 16, scope: !2879)
!2889 = !DILocation(line: 188, column: 30, scope: !2879)
!2890 = !DILocation(line: 188, column: 43, scope: !2879)
!2891 = !DILocation(line: 188, column: 14, scope: !2879)
!2892 = !DILocation(line: 186, column: 8, scope: !2728)
!2893 = !DILocation(line: 189, column: 25, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2879, file: !3, line: 188, column: 55)
!2895 = !DILocation(line: 189, column: 13, scope: !2894)
!2896 = !DILocation(line: 189, column: 23, scope: !2894)
!2897 = !DILocation(line: 190, column: 27, scope: !2894)
!2898 = !DILocation(line: 190, column: 13, scope: !2894)
!2899 = !DILocation(line: 190, column: 25, scope: !2894)
!2900 = !DILocation(line: 191, column: 4, scope: !2894)
!2901 = !DILocation(line: 192, column: 4, scope: !2728)
!2902 = distinct !{!2902, !2775, !2903, !2486, !2487}
!2903 = !DILocation(line: 194, column: 2, scope: !2732)
!2904 = !DILocation(line: 195, column: 14, scope: !2738)
!2905 = !DILocation(line: 195, column: 28, scope: !2738)
!2906 = !DILocation(line: 195, column: 26, scope: !2738)
!2907 = !DILocation(line: 195, column: 6, scope: !2711)
!2908 = !DILocation(line: 196, column: 18, scope: !2736)
!2909 = !DILocation(line: 196, column: 32, scope: !2736)
!2910 = !DILocation(line: 196, column: 30, scope: !2736)
!2911 = !DILocation(line: 196, column: 7, scope: !2737)
!2912 = !DILocation(line: 197, column: 4, scope: !2734)
!2913 = !DILocation(line: 197, column: 4, scope: !2742)
!2914 = !DILocation(line: 197, column: 4, scope: !2741)
!2915 = !DILocation(line: 197, column: 4, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 197, column: 4)
!2917 = !DILocation(line: 197, column: 4, scope: !2740)
!2918 = !DILocation(line: 197, column: 4, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 197, column: 4)
!2920 = !DILocation(line: 197, column: 4, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 197, column: 4)
!2922 = !{i64 2152997474, i64 2152997503, i64 2152997549, i64 2152997607, i64 2152997661, i64 2152997715, i64 2152997770, i64 2152997801, i64 2152998109, i64 2152998115, i64 2152998162, i64 2152998185, i64 2152998211}
!2923 = !DILocation(line: 197, column: 4, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 197, column: 4)
!2925 = !DILocation(line: 197, column: 4, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 197, column: 4)
!2927 = !DILocation(line: 197, column: 4, scope: !2735)
!2928 = !DILocation(line: 198, column: 4, scope: !2735)
!2929 = !DILocation(line: 201, column: 22, scope: !2737)
!2930 = !DILocation(line: 201, column: 9, scope: !2737)
!2931 = !DILocation(line: 202, column: 2, scope: !2737)
!2932 = !DILocation(line: 203, column: 19, scope: !2738)
!2933 = !DILocation(line: 203, column: 9, scope: !2738)
!2934 = !DILocation(line: 205, column: 2, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 205, column: 2)
!2936 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 205, column: 2)
!2937 = !DILocation(line: 205, column: 2, scope: !2936)
!2938 = !DILocation(line: 207, column: 9, scope: !2711)
!2939 = !DILocation(line: 207, column: 2, scope: !2711)
!2940 = !DILocation(line: 208, column: 1, scope: !2711)
!2941 = !DISubprogram(name: "__warn_printk", scope: !994, file: !994, line: 93, type: !2942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{null, !91, null}
!2944 = distinct !DISubprogram(name: "cpufreq_frequency_table_get_index", scope: !3, file: !3, line: 211, type: !163, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2945)
!2945 = !{!2946, !2947, !2948, !2949, !2950}
!2946 = !DILocalVariable(name: "policy", arg: 1, scope: !2944, file: !3, line: 211, type: !106)
!2947 = !DILocalVariable(name: "freq", arg: 2, scope: !2944, file: !3, line: 212, type: !7)
!2948 = !DILocalVariable(name: "pos", scope: !2944, file: !3, line: 214, type: !1246)
!2949 = !DILocalVariable(name: "table", scope: !2944, file: !3, line: 214, type: !1246)
!2950 = !DILocalVariable(name: "idx", scope: !2944, file: !3, line: 215, type: !152)
!2951 = !DILocation(line: 211, column: 62, scope: !2944)
!2952 = !DILocation(line: 212, column: 16, scope: !2944)
!2953 = !DILocation(line: 214, column: 2, scope: !2944)
!2954 = !DILocation(line: 214, column: 34, scope: !2944)
!2955 = !DILocation(line: 214, column: 40, scope: !2944)
!2956 = !DILocation(line: 214, column: 48, scope: !2944)
!2957 = !DILocation(line: 214, column: 56, scope: !2944)
!2958 = !DILocation(line: 215, column: 2, scope: !2944)
!2959 = !DILocation(line: 215, column: 6, scope: !2944)
!2960 = !DILocation(line: 217, column: 6, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 217, column: 6)
!2962 = !DILocation(line: 217, column: 6, scope: !2944)
!2963 = !DILocation(line: 218, column: 3, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 218, column: 3)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 218, column: 3)
!2966 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 217, column: 24)
!2967 = !DILocation(line: 218, column: 3, scope: !2965)
!2968 = !DILocation(line: 219, column: 3, scope: !2966)
!2969 = !DILocation(line: 222, column: 2, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 222, column: 2)
!2971 = !DILocation(line: 222, column: 2, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 222, column: 2)
!2973 = !DILocation(line: 222, column: 2, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 222, column: 2)
!2975 = !DILocation(line: 223, column: 7, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 223, column: 7)
!2977 = !DILocation(line: 223, column: 12, scope: !2976)
!2978 = !DILocation(line: 223, column: 25, scope: !2976)
!2979 = !DILocation(line: 223, column: 22, scope: !2976)
!2980 = !DILocation(line: 223, column: 7, scope: !2974)
!2981 = !DILocation(line: 224, column: 11, scope: !2976)
!2982 = !DILocation(line: 224, column: 4, scope: !2976)
!2983 = distinct !{!2983, !2969, !2984, !2486, !2487}
!2984 = !DILocation(line: 224, column: 11, scope: !2970)
!2985 = !DILocation(line: 226, column: 2, scope: !2944)
!2986 = !DILocation(line: 227, column: 1, scope: !2944)
!2987 = distinct !DISubprogram(name: "scaling_available_frequencies_show", scope: !3, file: !3, line: 273, type: !99, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2988)
!2988 = !{!2989, !2990}
!2989 = !DILocalVariable(name: "policy", arg: 1, scope: !2987, file: !3, line: 273, type: !106)
!2990 = !DILocalVariable(name: "buf", arg: 2, scope: !2987, file: !3, line: 274, type: !267)
!2991 = !DILocation(line: 273, column: 74, scope: !2987)
!2992 = !DILocation(line: 274, column: 15, scope: !2987)
!2993 = !DILocation(line: 276, column: 30, scope: !2987)
!2994 = !DILocation(line: 276, column: 38, scope: !2987)
!2995 = !DILocation(line: 276, column: 9, scope: !2987)
!2996 = !DILocation(line: 276, column: 2, scope: !2987)
!2997 = distinct !DISubprogram(name: "scaling_boost_frequencies_show", scope: !3, file: !3, line: 285, type: !99, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2998)
!2998 = !{!2999, !3000}
!2999 = !DILocalVariable(name: "policy", arg: 1, scope: !2997, file: !3, line: 285, type: !106)
!3000 = !DILocalVariable(name: "buf", arg: 2, scope: !2997, file: !3, line: 286, type: !267)
!3001 = !DILocation(line: 285, column: 70, scope: !2997)
!3002 = !DILocation(line: 286, column: 18, scope: !2997)
!3003 = !DILocation(line: 288, column: 30, scope: !2997)
!3004 = !DILocation(line: 288, column: 38, scope: !2997)
!3005 = !DILocation(line: 288, column: 9, scope: !2997)
!3006 = !DILocation(line: 288, column: 2, scope: !2997)
!3007 = distinct !DISubprogram(name: "cpufreq_table_validate_and_sort", scope: !3, file: !3, line: 354, type: !150, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3008)
!3008 = !{!3009, !3010}
!3009 = !DILocalVariable(name: "policy", arg: 1, scope: !3007, file: !3, line: 354, type: !106)
!3010 = !DILocalVariable(name: "ret", scope: !3007, file: !3, line: 356, type: !152)
!3011 = !DILocation(line: 354, column: 60, scope: !3007)
!3012 = !DILocation(line: 356, column: 2, scope: !3007)
!3013 = !DILocation(line: 356, column: 6, scope: !3007)
!3014 = !DILocation(line: 358, column: 7, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 358, column: 6)
!3016 = !DILocation(line: 358, column: 15, scope: !3015)
!3017 = !DILocation(line: 358, column: 6, scope: !3007)
!3018 = !DILocation(line: 360, column: 7, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 360, column: 7)
!3020 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 358, column: 27)
!3021 = !DILocation(line: 360, column: 7, scope: !3020)
!3022 = !DILocation(line: 361, column: 4, scope: !3019)
!3023 = !DILocation(line: 363, column: 3, scope: !3020)
!3024 = !DILocation(line: 366, column: 40, scope: !3007)
!3025 = !DILocation(line: 366, column: 48, scope: !3007)
!3026 = !DILocation(line: 366, column: 56, scope: !3007)
!3027 = !DILocation(line: 366, column: 8, scope: !3007)
!3028 = !DILocation(line: 366, column: 6, scope: !3007)
!3029 = !DILocation(line: 367, column: 6, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 367, column: 6)
!3031 = !DILocation(line: 367, column: 6, scope: !3007)
!3032 = !DILocation(line: 368, column: 10, scope: !3030)
!3033 = !DILocation(line: 368, column: 3, scope: !3030)
!3034 = !DILocation(line: 370, column: 31, scope: !3007)
!3035 = !DILocation(line: 370, column: 9, scope: !3007)
!3036 = !DILocation(line: 370, column: 2, scope: !3007)
!3037 = !DILocation(line: 371, column: 1, scope: !3007)
!3038 = !DISubprogram(name: "has_target_index", scope: !30, file: !30, line: 243, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3039 = distinct !DISubprogram(name: "set_freq_table_sorted", scope: !3, file: !3, line: 299, type: !150, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3040)
!3040 = !{!3041, !3042, !3043, !3044, !3045}
!3041 = !DILocalVariable(name: "policy", arg: 1, scope: !3039, file: !3, line: 299, type: !106)
!3042 = !DILocalVariable(name: "pos", scope: !3039, file: !3, line: 301, type: !1246)
!3043 = !DILocalVariable(name: "table", scope: !3039, file: !3, line: 301, type: !1246)
!3044 = !DILocalVariable(name: "prev", scope: !3039, file: !3, line: 302, type: !1246)
!3045 = !DILocalVariable(name: "ascending", scope: !3039, file: !3, line: 303, type: !152)
!3046 = !DILocation(line: 299, column: 57, scope: !3039)
!3047 = !DILocation(line: 301, column: 2, scope: !3039)
!3048 = !DILocation(line: 301, column: 34, scope: !3039)
!3049 = !DILocation(line: 301, column: 40, scope: !3039)
!3050 = !DILocation(line: 301, column: 48, scope: !3039)
!3051 = !DILocation(line: 301, column: 56, scope: !3039)
!3052 = !DILocation(line: 302, column: 2, scope: !3039)
!3053 = !DILocation(line: 302, column: 34, scope: !3039)
!3054 = !DILocation(line: 303, column: 2, scope: !3039)
!3055 = !DILocation(line: 303, column: 6, scope: !3039)
!3056 = !DILocation(line: 305, column: 2, scope: !3039)
!3057 = !DILocation(line: 305, column: 10, scope: !3039)
!3058 = !DILocation(line: 305, column: 28, scope: !3039)
!3059 = !DILocation(line: 307, column: 2, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 307, column: 2)
!3061 = !DILocation(line: 307, column: 2, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 307, column: 2)
!3063 = !DILocation(line: 307, column: 2, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 307, column: 2)
!3065 = !DILocation(line: 308, column: 8, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 308, column: 7)
!3067 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 307, column: 43)
!3068 = !DILocation(line: 308, column: 7, scope: !3067)
!3069 = !DILocation(line: 309, column: 11, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 308, column: 14)
!3071 = !DILocation(line: 309, column: 9, scope: !3070)
!3072 = !DILocation(line: 310, column: 4, scope: !3070)
!3073 = !DILocation(line: 313, column: 7, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 313, column: 7)
!3075 = !DILocation(line: 313, column: 12, scope: !3074)
!3076 = !DILocation(line: 313, column: 25, scope: !3074)
!3077 = !DILocation(line: 313, column: 31, scope: !3074)
!3078 = !DILocation(line: 313, column: 22, scope: !3074)
!3079 = !DILocation(line: 313, column: 7, scope: !3067)
!3080 = !DILocation(line: 314, column: 4, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 314, column: 4)
!3082 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 313, column: 42)
!3083 = !DILocation(line: 314, column: 4, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 314, column: 4)
!3085 = !DILocation(line: 316, column: 4, scope: !3082)
!3086 = !DILocation(line: 320, column: 7, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 320, column: 7)
!3088 = !DILocation(line: 320, column: 12, scope: !3087)
!3089 = !DILocation(line: 320, column: 24, scope: !3087)
!3090 = !DILocation(line: 320, column: 30, scope: !3087)
!3091 = !DILocation(line: 320, column: 22, scope: !3087)
!3092 = !DILocation(line: 320, column: 7, scope: !3067)
!3093 = !DILocation(line: 322, column: 8, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 322, column: 8)
!3095 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 320, column: 41)
!3096 = !DILocation(line: 322, column: 18, scope: !3094)
!3097 = !DILocation(line: 322, column: 8, scope: !3095)
!3098 = !DILocation(line: 323, column: 5, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 323, column: 5)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 323, column: 5)
!3101 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 322, column: 23)
!3102 = !DILocation(line: 323, column: 5, scope: !3100)
!3103 = !DILocation(line: 324, column: 5, scope: !3101)
!3104 = !DILocation(line: 327, column: 13, scope: !3095)
!3105 = !DILocation(line: 328, column: 3, scope: !3095)
!3106 = !DILocation(line: 332, column: 8, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 332, column: 8)
!3108 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 328, column: 10)
!3109 = !DILocation(line: 332, column: 18, scope: !3107)
!3110 = !DILocation(line: 332, column: 8, scope: !3108)
!3111 = !DILocation(line: 333, column: 5, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 333, column: 5)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 333, column: 5)
!3114 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 332, column: 23)
!3115 = !DILocation(line: 333, column: 5, scope: !3113)
!3116 = !DILocation(line: 334, column: 5, scope: !3114)
!3117 = !DILocation(line: 337, column: 13, scope: !3108)
!3118 = !DILocation(line: 340, column: 10, scope: !3067)
!3119 = !DILocation(line: 340, column: 8, scope: !3067)
!3120 = distinct !{!3120, !3059, !3121, !2486, !2487}
!3121 = !DILocation(line: 341, column: 2, scope: !3060)
!3122 = !DILocation(line: 343, column: 6, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 343, column: 6)
!3124 = !DILocation(line: 343, column: 16, scope: !3123)
!3125 = !DILocation(line: 343, column: 6, scope: !3039)
!3126 = !DILocation(line: 344, column: 3, scope: !3123)
!3127 = !DILocation(line: 344, column: 11, scope: !3123)
!3128 = !DILocation(line: 344, column: 29, scope: !3123)
!3129 = !DILocation(line: 346, column: 3, scope: !3123)
!3130 = !DILocation(line: 346, column: 11, scope: !3123)
!3131 = !DILocation(line: 346, column: 29, scope: !3123)
!3132 = !DILocation(line: 348, column: 2, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 348, column: 2)
!3134 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 348, column: 2)
!3135 = !DILocation(line: 348, column: 2, scope: !3134)
!3136 = !DILocation(line: 351, column: 2, scope: !3039)
!3137 = !DILocation(line: 352, column: 1, scope: !3039)
!3138 = distinct !DISubprogram(name: "cpufreq_verify_within_limits", scope: !30, file: !30, line: 470, type: !3139, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{null, !2593, !7, !7}
!3141 = !{!3142, !3143, !3144, !3145, !3148, !3149, !3150, !3153, !3154}
!3142 = !DILocalVariable(name: "policy", arg: 1, scope: !3138, file: !30, line: 470, type: !2593)
!3143 = !DILocalVariable(name: "min", arg: 2, scope: !3138, file: !30, line: 471, type: !7)
!3144 = !DILocalVariable(name: "max", arg: 3, scope: !3138, file: !30, line: 472, type: !7)
!3145 = !DILocalVariable(name: "__UNIQUE_ID___val203", scope: !3146, file: !30, line: 474, type: !7)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !30, line: 474, column: 16)
!3147 = distinct !DILexicalBlock(scope: !3138, file: !30, line: 474, column: 16)
!3148 = !DILocalVariable(name: "__UNIQUE_ID___lo204", scope: !3146, file: !30, line: 474, type: !7)
!3149 = !DILocalVariable(name: "__UNIQUE_ID___hi205", scope: !3146, file: !30, line: 474, type: !7)
!3150 = !DILocalVariable(name: "__UNIQUE_ID___val206", scope: !3151, file: !30, line: 475, type: !7)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !30, line: 475, column: 16)
!3152 = distinct !DILexicalBlock(scope: !3138, file: !30, line: 475, column: 16)
!3153 = !DILocalVariable(name: "__UNIQUE_ID___lo207", scope: !3151, file: !30, line: 475, type: !7)
!3154 = !DILocalVariable(name: "__UNIQUE_ID___hi208", scope: !3151, file: !30, line: 475, type: !7)
!3155 = !DILocation(line: 470, column: 77, scope: !3138)
!3156 = !DILocation(line: 471, column: 20, scope: !3138)
!3157 = !DILocation(line: 472, column: 20, scope: !3138)
!3158 = !DILocation(line: 474, column: 16, scope: !3146)
!3159 = !DILocation(line: 474, column: 16, scope: !3147)
!3160 = !DILocation(line: 474, column: 16, scope: !3138)
!3161 = !DILocation(line: 474, column: 2, scope: !3138)
!3162 = !DILocation(line: 474, column: 10, scope: !3138)
!3163 = !DILocation(line: 474, column: 14, scope: !3138)
!3164 = !DILocation(line: 475, column: 16, scope: !3151)
!3165 = !DILocation(line: 475, column: 16, scope: !3152)
!3166 = !DILocation(line: 475, column: 16, scope: !3138)
!3167 = !DILocation(line: 475, column: 2, scope: !3138)
!3168 = !DILocation(line: 475, column: 10, scope: !3138)
!3169 = !DILocation(line: 475, column: 14, scope: !3138)
!3170 = !DILocation(line: 476, column: 1, scope: !3138)
!3171 = distinct !DISubprogram(name: "show_available_freqs", scope: !3, file: !3, line: 233, type: !3172, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3174)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!101, !106, !267, !611}
!3174 = !{!3175, !3176, !3177, !3178, !3179, !3180}
!3175 = !DILocalVariable(name: "policy", arg: 1, scope: !3171, file: !3, line: 233, type: !106)
!3176 = !DILocalVariable(name: "buf", arg: 2, scope: !3171, file: !3, line: 233, type: !267)
!3177 = !DILocalVariable(name: "show_boost", arg: 3, scope: !3171, file: !3, line: 234, type: !611)
!3178 = !DILocalVariable(name: "count", scope: !3171, file: !3, line: 236, type: !101)
!3179 = !DILocalVariable(name: "pos", scope: !3171, file: !3, line: 237, type: !1246)
!3180 = !DILocalVariable(name: "table", scope: !3171, file: !3, line: 237, type: !1246)
!3181 = !DILocation(line: 233, column: 60, scope: !3171)
!3182 = !DILocation(line: 233, column: 74, scope: !3171)
!3183 = !DILocation(line: 234, column: 14, scope: !3171)
!3184 = !DILocation(line: 236, column: 2, scope: !3171)
!3185 = !DILocation(line: 236, column: 10, scope: !3171)
!3186 = !DILocation(line: 237, column: 2, scope: !3171)
!3187 = !DILocation(line: 237, column: 34, scope: !3171)
!3188 = !DILocation(line: 237, column: 40, scope: !3171)
!3189 = !DILocation(line: 237, column: 48, scope: !3171)
!3190 = !DILocation(line: 237, column: 56, scope: !3171)
!3191 = !DILocation(line: 239, column: 7, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 239, column: 6)
!3193 = !DILocation(line: 239, column: 6, scope: !3171)
!3194 = !DILocation(line: 240, column: 3, scope: !3192)
!3195 = !DILocation(line: 242, column: 2, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 242, column: 2)
!3197 = !DILocation(line: 242, column: 2, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 242, column: 2)
!3199 = !DILocation(line: 242, column: 2, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 242, column: 2)
!3201 = !DILocation(line: 254, column: 7, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 254, column: 7)
!3203 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 242, column: 43)
!3204 = !DILocation(line: 254, column: 21, scope: !3202)
!3205 = !DILocation(line: 254, column: 26, scope: !3202)
!3206 = !DILocation(line: 254, column: 32, scope: !3202)
!3207 = !DILocation(line: 254, column: 18, scope: !3202)
!3208 = !DILocation(line: 254, column: 7, scope: !3203)
!3209 = !DILocation(line: 255, column: 4, scope: !3202)
!3210 = !DILocation(line: 257, column: 21, scope: !3203)
!3211 = !DILocation(line: 257, column: 25, scope: !3203)
!3212 = !DILocation(line: 257, column: 40, scope: !3203)
!3213 = !DILocation(line: 257, column: 45, scope: !3203)
!3214 = !DILocation(line: 257, column: 12, scope: !3203)
!3215 = !DILocation(line: 257, column: 9, scope: !3203)
!3216 = distinct !{!3216, !3195, !3217, !2486, !2487}
!3217 = !DILocation(line: 258, column: 2, scope: !3196)
!3218 = !DILocation(line: 259, column: 20, scope: !3171)
!3219 = !DILocation(line: 259, column: 24, scope: !3171)
!3220 = !DILocation(line: 259, column: 11, scope: !3171)
!3221 = !DILocation(line: 259, column: 8, scope: !3171)
!3222 = !DILocation(line: 261, column: 9, scope: !3171)
!3223 = !DILocation(line: 261, column: 2, scope: !3171)
!3224 = !DILocation(line: 263, column: 1, scope: !3171)
!3225 = !DISubprogram(name: "sprintf", scope: !3226, file: !3226, line: 10, type: !3227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3226 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!152, !267, !91, null}
!3229 = !DISubprogram(name: "_printk", scope: !3230, file: !3230, line: 153, type: !3231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3230 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!152, !91, null}
