; ModuleID = 'kernel/irq/cpuhotplug.c'
source_filename = "kernel/irq/cpuhotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { [1 x i64] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, [1 x %struct.cpumask], i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, %struct.hlist_node, [24 x i8] }
%struct.irq_common_data = type { i32, i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask] }
%struct.irq_data = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@nr_irqs = external dso_local global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local global i32, align 4
@migrate_one_irq._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !0
@__func__.migrate_one_irq = private unnamed_addr constant [16 x i8] c"migrate_one_irq\00", align 1, !dbg !2506
@.str = private unnamed_addr constant [35 x i8] c"\014IRQ%u: set affinity failed(%d).\0A\00", align 1, !dbg !2509
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !2514
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.2 = private unnamed_addr constant [83 x i8] c"\014Eff. affinity %*pbl of IRQ %u contains only offline CPUs after offlining CPU %u\0A\00", align 1, !dbg !2519

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @irq_migrate_all_off_this_cpu() #0 align 16 !dbg !2551 {
entry:
  %desc = alloca ptr, align 8
  %irq = alloca i32, align 4
  %affinity_broken = alloca i8, align 1
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #10, !dbg !2559
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !2553, metadata !DIExpression()), !dbg !2560
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #10, !dbg !2561
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !2554, metadata !DIExpression()), !dbg !2562
  %call = call i32 @irq_get_next_irq(i32 noundef 0) #11, !dbg !2563
  store i32 %call, ptr %irq, align 4, !dbg !2563
  br label %for.cond, !dbg !2563

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %irq, align 4, !dbg !2564
  %1 = load i32, ptr @nr_irqs, align 4, !dbg !2564
  %cmp = icmp ult i32 %0, %1, !dbg !2564
  br i1 %cmp, label %for.body, label %for.end, !dbg !2563

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %affinity_broken) #10, !dbg !2565
  call void @llvm.dbg.declare(metadata ptr %affinity_broken, metadata !2555, metadata !DIExpression()), !dbg !2566
  %2 = load i32, ptr %irq, align 4, !dbg !2567
  %call1 = call ptr @irq_to_desc(i32 noundef %2) #11, !dbg !2568
  store ptr %call1, ptr %desc, align 8, !dbg !2569
  %3 = load ptr, ptr %desc, align 8, !dbg !2570
  %lock = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 15, !dbg !2570
  call void @_raw_spin_lock(ptr noundef %lock) #11, !dbg !2570
  %4 = load ptr, ptr %desc, align 8, !dbg !2571
  %call2 = call zeroext i1 @migrate_one_irq(ptr noundef %4) #11, !dbg !2572
  %frombool = zext i1 %call2 to i8, !dbg !2573
  store i8 %frombool, ptr %affinity_broken, align 1, !dbg !2573
  %5 = load ptr, ptr %desc, align 8, !dbg !2574
  %lock3 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 15, !dbg !2574
  call void @_raw_spin_unlock(ptr noundef %lock3) #11, !dbg !2574
  %6 = load i8, ptr %affinity_broken, align 1, !dbg !2575, !range !2577, !noundef !559
  %tobool = trunc i8 %6 to i1, !dbg !2575
  br i1 %tobool, label %if.then, label %if.end, !dbg !2578

if.then:                                          ; preds = %for.body
  store i32 0, ptr %tmp, align 4, !dbg !2579
  %7 = load i32, ptr %tmp, align 4, !dbg !2583
  br label %if.end, !dbg !2584

if.end:                                           ; preds = %if.then, %for.body
  call void @llvm.lifetime.end.p0(i64 1, ptr %affinity_broken) #10, !dbg !2585
  br label %for.inc, !dbg !2586

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %irq, align 4, !dbg !2564
  %add = add i32 %8, 1, !dbg !2564
  %call4 = call i32 @irq_get_next_irq(i32 noundef %add) #11, !dbg !2564
  store i32 %call4, ptr %irq, align 4, !dbg !2564
  br label %for.cond, !dbg !2564, !llvm.loop !2587

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #10, !dbg !2591
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #10, !dbg !2591
  ret void, !dbg !2591
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2592 dso_local i32 @irq_get_next_irq(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2596 dso_local ptr @irq_to_desc(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2599 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @migrate_one_irq(ptr noundef %desc) #0 align 16 !dbg !2 {
entry:
  %retval = alloca i1, align 1
  %desc.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %chip = alloca ptr, align 8
  %maskchip = alloca i8, align 1
  %affinity = alloca ptr, align 8
  %brokeaff = alloca i8, align 1
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %tmp44 = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2525, metadata !DIExpression()), !dbg !2604
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #10, !dbg !2605
  call void @llvm.dbg.declare(metadata ptr %d, metadata !2526, metadata !DIExpression()), !dbg !2606
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2607
  %call = call ptr @irq_desc_get_irq_data(ptr noundef %0) #11, !dbg !2608
  store ptr %call, ptr %d, align 8, !dbg !2606
  call void @llvm.lifetime.start.p0(i64 8, ptr %chip) #10, !dbg !2609
  call void @llvm.dbg.declare(metadata ptr %chip, metadata !2527, metadata !DIExpression()), !dbg !2610
  %1 = load ptr, ptr %d, align 8, !dbg !2611
  %call1 = call ptr @irq_data_get_irq_chip(ptr noundef %1) #11, !dbg !2612
  store ptr %call1, ptr %chip, align 8, !dbg !2610
  call void @llvm.lifetime.start.p0(i64 1, ptr %maskchip) #10, !dbg !2613
  call void @llvm.dbg.declare(metadata ptr %maskchip, metadata !2528, metadata !DIExpression()), !dbg !2614
  %2 = load ptr, ptr %d, align 8, !dbg !2615
  %call2 = call zeroext i1 @irq_can_move_pcntxt(ptr noundef %2) #11, !dbg !2616
  br i1 %call2, label %land.end, label %land.rhs, !dbg !2617

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %d, align 8, !dbg !2618
  %call3 = call zeroext i1 @irqd_irq_masked(ptr noundef %3) #11, !dbg !2619
  %lnot = xor i1 %call3, true, !dbg !2620
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !2621
  %frombool = zext i1 %4 to i8, !dbg !2614
  store i8 %frombool, ptr %maskchip, align 1, !dbg !2614
  call void @llvm.lifetime.start.p0(i64 8, ptr %affinity) #10, !dbg !2622
  call void @llvm.dbg.declare(metadata ptr %affinity, metadata !2529, metadata !DIExpression()), !dbg !2623
  call void @llvm.lifetime.start.p0(i64 1, ptr %brokeaff) #10, !dbg !2624
  call void @llvm.dbg.declare(metadata ptr %brokeaff, metadata !2530, metadata !DIExpression()), !dbg !2625
  store i8 0, ptr %brokeaff, align 1, !dbg !2625
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !2626
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2531, metadata !DIExpression()), !dbg !2627
  %5 = load ptr, ptr %chip, align 8, !dbg !2628
  %tobool = icmp ne ptr %5, null, !dbg !2628
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2630

lor.lhs.false:                                    ; preds = %land.end
  %6 = load ptr, ptr %chip, align 8, !dbg !2631
  %irq_set_affinity = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 10, !dbg !2632
  %7 = load ptr, ptr %irq_set_affinity, align 8, !dbg !2632
  %tobool4 = icmp ne ptr %7, null, !dbg !2631
  br i1 %tobool4, label %if.end, label %if.then, !dbg !2633

if.then:                                          ; preds = %lor.lhs.false, %land.end
  store i32 0, ptr %tmp, align 4, !dbg !2634
  %8 = load i32, ptr %tmp, align 4, !dbg !2638
  store i1 false, ptr %retval, align 1, !dbg !2639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2639

if.end:                                           ; preds = %lor.lhs.false
  %9 = load ptr, ptr %desc.addr, align 8, !dbg !2640
  call void @irq_force_complete_move(ptr noundef %9) #11, !dbg !2641
  %10 = load ptr, ptr %d, align 8, !dbg !2642
  %call5 = call zeroext i1 @irqd_is_per_cpu(ptr noundef %10) #11, !dbg !2644
  br i1 %call5, label %if.then10, label %lor.lhs.false6, !dbg !2645

lor.lhs.false6:                                   ; preds = %if.end
  %11 = load ptr, ptr %d, align 8, !dbg !2646
  %call7 = call zeroext i1 @irqd_is_started(ptr noundef %11) #11, !dbg !2647
  br i1 %call7, label %lor.lhs.false8, label %if.then10, !dbg !2648

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %12 = load ptr, ptr %d, align 8, !dbg !2649
  %call9 = call zeroext i1 @irq_needs_fixup(ptr noundef %12) #11, !dbg !2650
  br i1 %call9, label %if.end12, label %if.then10, !dbg !2651

if.then10:                                        ; preds = %lor.lhs.false8, %lor.lhs.false6, %if.end
  %13 = load ptr, ptr %desc.addr, align 8, !dbg !2652
  %call11 = call zeroext i1 @irq_fixup_move_pending(ptr noundef %13, i1 noundef zeroext false) #11, !dbg !2654
  store i1 false, ptr %retval, align 1, !dbg !2655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2655

if.end12:                                         ; preds = %lor.lhs.false8
  %14 = load ptr, ptr %desc.addr, align 8, !dbg !2656
  %call13 = call zeroext i1 @irq_fixup_move_pending(ptr noundef %14, i1 noundef zeroext true) #11, !dbg !2658
  br i1 %call13, label %if.then14, label %if.else, !dbg !2659

if.then14:                                        ; preds = %if.end12
  %15 = load ptr, ptr %desc.addr, align 8, !dbg !2660
  %call15 = call ptr @irq_desc_get_pending_mask(ptr noundef %15) #11, !dbg !2661
  store ptr %call15, ptr %affinity, align 8, !dbg !2662
  br label %if.end17, !dbg !2663

if.else:                                          ; preds = %if.end12
  %16 = load ptr, ptr %d, align 8, !dbg !2664
  %call16 = call ptr @irq_data_get_affinity_mask(ptr noundef %16) #11, !dbg !2665
  store ptr %call16, ptr %affinity, align 8, !dbg !2666
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %17 = load i8, ptr %maskchip, align 1, !dbg !2667, !range !2577, !noundef !559
  %tobool18 = trunc i8 %17 to i1, !dbg !2667
  br i1 %tobool18, label %land.lhs.true, label %if.end22, !dbg !2669

land.lhs.true:                                    ; preds = %if.end17
  %18 = load ptr, ptr %chip, align 8, !dbg !2670
  %irq_mask = getelementptr inbounds %struct.irq_chip, ptr %18, i32 0, i32 6, !dbg !2671
  %19 = load ptr, ptr %irq_mask, align 8, !dbg !2671
  %tobool19 = icmp ne ptr %19, null, !dbg !2670
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !2672

if.then20:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %chip, align 8, !dbg !2673
  %irq_mask21 = getelementptr inbounds %struct.irq_chip, ptr %20, i32 0, i32 6, !dbg !2674
  %21 = load ptr, ptr %irq_mask21, align 8, !dbg !2674
  %22 = load ptr, ptr %d, align 8, !dbg !2675
  call void %21(ptr noundef %22) #11, !dbg !2673
  br label %if.end22, !dbg !2673

if.end22:                                         ; preds = %if.then20, %land.lhs.true, %if.end17
  %23 = load ptr, ptr %affinity, align 8, !dbg !2676
  %call23 = call i32 @cpumask_first_and(ptr noundef %23, ptr noundef @__cpu_online_mask) #11, !dbg !2676
  %24 = load i32, ptr @nr_cpu_ids, align 4, !dbg !2678
  %cmp = icmp uge i32 %call23, %24, !dbg !2679
  br i1 %cmp, label %if.then24, label %if.end28, !dbg !2680

if.then24:                                        ; preds = %if.end22
  %25 = load ptr, ptr %d, align 8, !dbg !2681
  %call25 = call zeroext i1 @irqd_affinity_is_managed(ptr noundef %25) #11, !dbg !2684
  br i1 %call25, label %if.then26, label %if.end27, !dbg !2685

if.then26:                                        ; preds = %if.then24
  %26 = load ptr, ptr %d, align 8, !dbg !2686
  call void @irqd_set_managed_shutdown(ptr noundef %26) #11, !dbg !2688
  %27 = load ptr, ptr %desc.addr, align 8, !dbg !2689
  call void @irq_shutdown_and_deactivate(ptr noundef %27) #11, !dbg !2690
  store i1 false, ptr %retval, align 1, !dbg !2691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2691

if.end27:                                         ; preds = %if.then24
  store ptr @__cpu_online_mask, ptr %affinity, align 8, !dbg !2692
  store i8 1, ptr %brokeaff, align 1, !dbg !2693
  br label %if.end28, !dbg !2694

if.end28:                                         ; preds = %if.end27, %if.end22
  %28 = load ptr, ptr %d, align 8, !dbg !2695
  %29 = load ptr, ptr %affinity, align 8, !dbg !2696
  %call29 = call i32 @irq_do_set_affinity(ptr noundef %28, ptr noundef %29, i1 noundef zeroext false) #11, !dbg !2697
  store i32 %call29, ptr %err, align 4, !dbg !2698
  %30 = load i32, ptr %err, align 4, !dbg !2699
  %cmp30 = icmp eq i32 %30, -28, !dbg !2701
  br i1 %cmp30, label %land.lhs.true31, label %if.end38, !dbg !2702

land.lhs.true31:                                  ; preds = %if.end28
  %31 = load ptr, ptr %d, align 8, !dbg !2703
  %call32 = call zeroext i1 @irqd_affinity_is_managed(ptr noundef %31) #11, !dbg !2704
  br i1 %call32, label %if.end38, label %land.lhs.true33, !dbg !2705

land.lhs.true33:                                  ; preds = %land.lhs.true31
  %32 = load ptr, ptr %affinity, align 8, !dbg !2706
  %cmp34 = icmp ne ptr %32, @__cpu_online_mask, !dbg !2707
  br i1 %cmp34, label %if.then35, label %if.end38, !dbg !2708

if.then35:                                        ; preds = %land.lhs.true33
  store i32 0, ptr %tmp36, align 4, !dbg !2709
  %33 = load i32, ptr %tmp36, align 4, !dbg !2713
  store ptr @__cpu_online_mask, ptr %affinity, align 8, !dbg !2714
  store i8 1, ptr %brokeaff, align 1, !dbg !2715
  %34 = load ptr, ptr %d, align 8, !dbg !2716
  %35 = load ptr, ptr %affinity, align 8, !dbg !2717
  %call37 = call i32 @irq_do_set_affinity(ptr noundef %34, ptr noundef %35, i1 noundef zeroext false) #11, !dbg !2718
  store i32 %call37, ptr %err, align 4, !dbg !2719
  br label %if.end38, !dbg !2720

if.end38:                                         ; preds = %if.then35, %land.lhs.true33, %land.lhs.true31, %if.end28
  %36 = load i32, ptr %err, align 4, !dbg !2721
  %tobool39 = icmp ne i32 %36, 0, !dbg !2721
  br i1 %tobool39, label %if.then40, label %if.end47, !dbg !2723

if.then40:                                        ; preds = %if.end38
  %call41 = call i32 @___ratelimit(ptr noundef @migrate_one_irq._rs, ptr noundef @__func__.migrate_one_irq) #11, !dbg !2724
  %tobool42 = icmp ne i32 %call41, 0, !dbg !2724
  br i1 %tobool42, label %if.then43, label %if.end46, !dbg !2728

if.then43:                                        ; preds = %if.then40
  br label %do.body, !dbg !2729

do.body:                                          ; preds = %if.then43
  br label %do.cond, !dbg !2731

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2731

do.end:                                           ; preds = %do.cond
  %37 = load ptr, ptr %d, align 8, !dbg !2729
  %irq = getelementptr inbounds %struct.irq_data, ptr %37, i32 0, i32 1, !dbg !2729
  %38 = load i32, ptr %irq, align 4, !dbg !2729
  %39 = load i32, ptr %err, align 4, !dbg !2729
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %38, i32 noundef %39) #12, !dbg !2729
  store i32 %call45, ptr %tmp44, align 4, !dbg !2731
  %40 = load i32, ptr %tmp44, align 4, !dbg !2729
  br label %if.end46, !dbg !2724

if.end46:                                         ; preds = %do.end, %if.then40
  store i8 0, ptr %brokeaff, align 1, !dbg !2733
  br label %if.end47, !dbg !2734

if.end47:                                         ; preds = %if.end46, %if.end38
  %41 = load i8, ptr %maskchip, align 1, !dbg !2735, !range !2577, !noundef !559
  %tobool48 = trunc i8 %41 to i1, !dbg !2735
  br i1 %tobool48, label %land.lhs.true49, label %if.end53, !dbg !2737

land.lhs.true49:                                  ; preds = %if.end47
  %42 = load ptr, ptr %chip, align 8, !dbg !2738
  %irq_unmask = getelementptr inbounds %struct.irq_chip, ptr %42, i32 0, i32 8, !dbg !2739
  %43 = load ptr, ptr %irq_unmask, align 8, !dbg !2739
  %tobool50 = icmp ne ptr %43, null, !dbg !2738
  br i1 %tobool50, label %if.then51, label %if.end53, !dbg !2740

if.then51:                                        ; preds = %land.lhs.true49
  %44 = load ptr, ptr %chip, align 8, !dbg !2741
  %irq_unmask52 = getelementptr inbounds %struct.irq_chip, ptr %44, i32 0, i32 8, !dbg !2742
  %45 = load ptr, ptr %irq_unmask52, align 8, !dbg !2742
  %46 = load ptr, ptr %d, align 8, !dbg !2743
  call void %45(ptr noundef %46) #11, !dbg !2741
  br label %if.end53, !dbg !2741

if.end53:                                         ; preds = %if.then51, %land.lhs.true49, %if.end47
  %47 = load i8, ptr %brokeaff, align 1, !dbg !2744, !range !2577, !noundef !559
  %tobool54 = trunc i8 %47 to i1, !dbg !2744
  store i1 %tobool54, ptr %retval, align 1, !dbg !2745
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2745

cleanup:                                          ; preds = %if.end53, %if.then26, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !2746
  call void @llvm.lifetime.end.p0(i64 1, ptr %brokeaff) #10, !dbg !2746
  call void @llvm.lifetime.end.p0(i64 8, ptr %affinity) #10, !dbg !2746
  call void @llvm.lifetime.end.p0(i64 1, ptr %maskchip) #10, !dbg !2746
  call void @llvm.lifetime.end.p0(i64 8, ptr %chip) #10, !dbg !2746
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #10, !dbg !2746
  %48 = load i1, ptr %retval, align 1, !dbg !2746
  ret i1 %48, !dbg !2746
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2747 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @irq_affinity_online_cpu(i32 noundef %cpu) #0 align 16 !dbg !2748 {
entry:
  %cpu.addr = alloca i32, align 4
  %desc = alloca ptr, align 8
  %irq = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2752, metadata !DIExpression()), !dbg !2755
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #10, !dbg !2756
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !2753, metadata !DIExpression()), !dbg !2757
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #10, !dbg !2758
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !2754, metadata !DIExpression()), !dbg !2759
  call void @irq_lock_sparse() #11, !dbg !2760
  %call = call i32 @irq_get_next_irq(i32 noundef 0) #11, !dbg !2761
  store i32 %call, ptr %irq, align 4, !dbg !2761
  br label %for.cond, !dbg !2761

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %irq, align 4, !dbg !2763
  %1 = load i32, ptr @nr_irqs, align 4, !dbg !2763
  %cmp = icmp ult i32 %0, %1, !dbg !2763
  br i1 %cmp, label %for.body, label %for.end, !dbg !2761

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %irq, align 4, !dbg !2765
  %call1 = call ptr @irq_to_desc(i32 noundef %2) #11, !dbg !2767
  store ptr %call1, ptr %desc, align 8, !dbg !2768
  %3 = load ptr, ptr %desc, align 8, !dbg !2769
  %lock = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 15, !dbg !2769
  call void @_raw_spin_lock_irq(ptr noundef %lock) #11, !dbg !2769
  %4 = load ptr, ptr %desc, align 8, !dbg !2770
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !2771
  call void @irq_restore_affinity_of_irq(ptr noundef %4, i32 noundef %5) #11, !dbg !2772
  %6 = load ptr, ptr %desc, align 8, !dbg !2773
  %lock2 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 15, !dbg !2773
  call void @_raw_spin_unlock_irq(ptr noundef %lock2) #11, !dbg !2773
  br label %for.inc, !dbg !2774

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %irq, align 4, !dbg !2763
  %add = add i32 %7, 1, !dbg !2763
  %call3 = call i32 @irq_get_next_irq(i32 noundef %add) #11, !dbg !2763
  store i32 %call3, ptr %irq, align 4, !dbg !2763
  br label %for.cond, !dbg !2763, !llvm.loop !2775

for.end:                                          ; preds = %for.cond
  call void @irq_unlock_sparse() #11, !dbg !2777
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #10, !dbg !2778
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #10, !dbg !2778
  ret i32 0, !dbg !2779
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2780 dso_local void @irq_lock_sparse() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2781 dso_local void @_raw_spin_lock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_restore_affinity_of_irq(ptr noundef %desc, i32 noundef %cpu) #0 align 16 !dbg !2782 {
entry:
  %desc.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  %affinity = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2786, metadata !DIExpression()), !dbg !2790
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2787, metadata !DIExpression()), !dbg !2791
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #10, !dbg !2792
  call void @llvm.dbg.declare(metadata ptr %data, metadata !2788, metadata !DIExpression()), !dbg !2793
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2794
  %call = call ptr @irq_desc_get_irq_data(ptr noundef %0) #11, !dbg !2795
  store ptr %call, ptr %data, align 8, !dbg !2793
  call void @llvm.lifetime.start.p0(i64 8, ptr %affinity) #10, !dbg !2796
  call void @llvm.dbg.declare(metadata ptr %affinity, metadata !2789, metadata !DIExpression()), !dbg !2797
  %1 = load ptr, ptr %data, align 8, !dbg !2798
  %call1 = call ptr @irq_data_get_affinity_mask(ptr noundef %1) #11, !dbg !2799
  store ptr %call1, ptr %affinity, align 8, !dbg !2797
  %2 = load ptr, ptr %data, align 8, !dbg !2800
  %call2 = call zeroext i1 @irqd_affinity_is_managed(ptr noundef %2) #11, !dbg !2802
  br i1 %call2, label %lor.lhs.false, label %if.then, !dbg !2803

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !2804
  %action = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 4, !dbg !2805
  %4 = load ptr, ptr %action, align 16, !dbg !2805
  %tobool = icmp ne ptr %4, null, !dbg !2804
  br i1 %tobool, label %lor.lhs.false3, label %if.then, !dbg !2806

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %data, align 8, !dbg !2807
  %call4 = call ptr @irq_data_get_irq_chip(ptr noundef %5) #11, !dbg !2808
  %tobool5 = icmp ne ptr %call4, null, !dbg !2808
  br i1 %tobool5, label %lor.lhs.false6, label %if.then, !dbg !2809

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %6 = load i32, ptr %cpu.addr, align 4, !dbg !2810
  %7 = load ptr, ptr %affinity, align 8, !dbg !2811
  %call7 = call zeroext i1 @cpumask_test_cpu(i32 noundef %6, ptr noundef %7) #11, !dbg !2812
  br i1 %call7, label %if.end, label %if.then, !dbg !2813

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2814

if.end:                                           ; preds = %lor.lhs.false6
  %8 = load ptr, ptr %desc.addr, align 8, !dbg !2815
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %8, i32 0, i32 6, !dbg !2817
  %9 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 4, !dbg !2817
  %and = and i32 %9, 2048, !dbg !2818
  %tobool8 = icmp ne i32 %and, 0, !dbg !2818
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !2819

if.then9:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2820

if.end10:                                         ; preds = %if.end
  %10 = load ptr, ptr %data, align 8, !dbg !2821
  %call11 = call zeroext i1 @irqd_is_managed_and_shutdown(ptr noundef %10) #11, !dbg !2823
  br i1 %call11, label %if.then12, label %if.end14, !dbg !2824

if.then12:                                        ; preds = %if.end10
  %11 = load ptr, ptr %desc.addr, align 8, !dbg !2825
  %call13 = call i32 @irq_startup(ptr noundef %11, i1 noundef zeroext true, i1 noundef zeroext false) #11, !dbg !2826
  br label %if.end14, !dbg !2826

if.end14:                                         ; preds = %if.then12, %if.end10
  %12 = load ptr, ptr %data, align 8, !dbg !2827
  %call15 = call zeroext i1 @irqd_is_single_target(ptr noundef %12) #11, !dbg !2829
  br i1 %call15, label %lor.lhs.false16, label %if.then18, !dbg !2830

lor.lhs.false16:                                  ; preds = %if.end14
  %13 = load ptr, ptr %data, align 8, !dbg !2831
  %14 = load i32, ptr %cpu.addr, align 4, !dbg !2832
  %call17 = call zeroext i1 @hk_should_isolate(ptr noundef %13, i32 noundef %14) #11, !dbg !2833
  br i1 %call17, label %if.then18, label %if.end20, !dbg !2834

if.then18:                                        ; preds = %lor.lhs.false16, %if.end14
  %15 = load ptr, ptr %data, align 8, !dbg !2835
  %16 = load ptr, ptr %affinity, align 8, !dbg !2836
  %call19 = call i32 @irq_set_affinity_locked(ptr noundef %15, ptr noundef %16, i1 noundef zeroext false) #11, !dbg !2837
  br label %if.end20, !dbg !2837

if.end20:                                         ; preds = %if.then18, %lor.lhs.false16
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2838
  br label %cleanup, !dbg !2838

cleanup:                                          ; preds = %if.end20, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %affinity) #10, !dbg !2838
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #10, !dbg !2838
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2838

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2839 dso_local void @_raw_spin_unlock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2840 dso_local void @irq_unlock_sparse() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @irq_desc_get_irq_data(ptr noundef %desc) #4 align 16 !dbg !2841 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2845, metadata !DIExpression()), !dbg !2846
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2847
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, !dbg !2848
  ret ptr %irq_data, !dbg !2849
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @irq_data_get_irq_chip(ptr noundef %d) #4 align 16 !dbg !2850 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2854, metadata !DIExpression()), !dbg !2855
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2856
  %chip = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4, !dbg !2857
  %1 = load ptr, ptr %chip, align 8, !dbg !2857
  ret ptr %1, !dbg !2858
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_can_move_pcntxt(ptr noundef %data) #4 align 16 !dbg !2859 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2863, metadata !DIExpression()), !dbg !2864
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2865
  %call = call zeroext i1 @irqd_can_move_in_process_context(ptr noundef %0) #11, !dbg !2866
  ret i1 %call, !dbg !2867
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_irq_masked(ptr noundef %d) #4 align 16 !dbg !2868 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2870, metadata !DIExpression()), !dbg !2871
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2872
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2872
  %1 = load ptr, ptr %common, align 8, !dbg !2872
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !2872
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !2872
  %and = and i32 %2, 131072, !dbg !2873
  %tobool = icmp ne i32 %and, 0, !dbg !2872
  ret i1 %tobool, !dbg !2874
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2875 dso_local void @irq_force_complete_move(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_is_per_cpu(ptr noundef %d) #4 align 16 !dbg !2876 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2878, metadata !DIExpression()), !dbg !2879
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2880
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2880
  %1 = load ptr, ptr %common, align 8, !dbg !2880
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !2880
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !2880
  %and = and i32 %2, 2048, !dbg !2881
  %tobool = icmp ne i32 %and, 0, !dbg !2880
  ret i1 %tobool, !dbg !2882
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_is_started(ptr noundef %d) #4 align 16 !dbg !2883 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2885, metadata !DIExpression()), !dbg !2886
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2887
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2887
  %1 = load ptr, ptr %common, align 8, !dbg !2887
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !2887
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !2887
  %and = and i32 %2, 4194304, !dbg !2888
  %tobool = icmp ne i32 %and, 0, !dbg !2887
  ret i1 %tobool, !dbg !2889
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_needs_fixup(ptr noundef %d) #4 align 16 !dbg !2890 {
entry:
  %retval = alloca i1, align 1
  %d.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2892, metadata !DIExpression()), !dbg !2902
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #10, !dbg !2903
  call void @llvm.dbg.declare(metadata ptr %m, metadata !2893, metadata !DIExpression()), !dbg !2904
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2905
  %call = call ptr @irq_data_get_effective_affinity_mask(ptr noundef %0) #11, !dbg !2906
  store ptr %call, ptr %m, align 8, !dbg !2904
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #10, !dbg !2907
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2894, metadata !DIExpression()), !dbg !2908
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #11, !dbg !2909
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #10, !dbg !2910
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2895, metadata !DIExpression()), !dbg !2910
  br label %do.body, !dbg !2910

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !2911
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2898, metadata !DIExpression()), !dbg !2911
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2911
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !2911
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !2910
  br label %do.cond, !dbg !2911

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2911

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #10, !dbg !2912
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2900, metadata !DIExpression()), !dbg !2912
  %2 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #13, !dbg !2912, !srcloc !2913
  store i32 %2, ptr %pfo_val__, align 4, !dbg !2912
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !2912
  %conv = zext i32 %3 to i64, !dbg !2912
  %conv2 = trunc i64 %conv to i32, !dbg !2912
  store i32 %conv2, ptr %tmp1, align 4, !dbg !2912
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #10, !dbg !2910
  %4 = load i32, ptr %tmp1, align 4, !dbg !2912
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !2910
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !2910
  store i32 %5, ptr %tmp3, align 4, !dbg !2910
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #10, !dbg !2909
  %6 = load i32, ptr %tmp3, align 4, !dbg !2910
  store i32 %6, ptr %tmp, align 4, !dbg !2909
  %7 = load i32, ptr %tmp, align 4, !dbg !2909
  store i32 %7, ptr %cpu, align 4, !dbg !2908
  %8 = load ptr, ptr %m, align 8, !dbg !2914
  %call4 = call zeroext i1 @cpumask_empty(ptr noundef %8) #11, !dbg !2916
  br i1 %call4, label %if.then, label %if.end, !dbg !2917

if.then:                                          ; preds = %do.end
  %9 = load ptr, ptr %d.addr, align 8, !dbg !2918
  %call5 = call ptr @irq_data_get_affinity_mask(ptr noundef %9) #11, !dbg !2919
  store ptr %call5, ptr %m, align 8, !dbg !2920
  br label %if.end, !dbg !2921

if.end:                                           ; preds = %if.then, %do.end
  %10 = load ptr, ptr %m, align 8, !dbg !2922
  %11 = load i32, ptr %cpu, align 4, !dbg !2924
  %call6 = call i32 @cpumask_any_but(ptr noundef %10, i32 noundef %11) #11, !dbg !2925
  %12 = load i32, ptr @nr_cpu_ids, align 4, !dbg !2926
  %cmp = icmp ult i32 %call6, %12, !dbg !2927
  br i1 %cmp, label %land.lhs.true, label %if.end17, !dbg !2928

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %m, align 8, !dbg !2929
  %call8 = call i32 @cpumask_first_and(ptr noundef %13, ptr noundef @__cpu_online_mask) #11, !dbg !2929
  %14 = load i32, ptr @nr_cpu_ids, align 4, !dbg !2930
  %cmp9 = icmp uge i32 %call8, %14, !dbg !2931
  br i1 %cmp9, label %if.then11, label %if.end17, !dbg !2932

if.then11:                                        ; preds = %land.lhs.true
  br label %do.body12, !dbg !2933

do.body12:                                        ; preds = %if.then11
  br label %do.cond13, !dbg !2936

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !2936

do.end14:                                         ; preds = %do.cond13
  %15 = load i32, ptr @nr_cpu_ids, align 4, !dbg !2933
  %16 = load ptr, ptr %m, align 8, !dbg !2933
  %bits = getelementptr inbounds %struct.cpumask, ptr %16, i32 0, i32 0, !dbg !2933
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2933
  %17 = load ptr, ptr %d.addr, align 8, !dbg !2933
  %irq = getelementptr inbounds %struct.irq_data, ptr %17, i32 0, i32 1, !dbg !2933
  %18 = load i32, ptr %irq, align 4, !dbg !2933
  %19 = load i32, ptr %cpu, align 4, !dbg !2933
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %15, ptr noundef %arraydecay, i32 noundef %18, i32 noundef %19) #12, !dbg !2933
  store i32 %call16, ptr %tmp15, align 4, !dbg !2936
  %20 = load i32, ptr %tmp15, align 4, !dbg !2933
  store i1 true, ptr %retval, align 1, !dbg !2938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2938

if.end17:                                         ; preds = %land.lhs.true, %if.end
  %21 = load i32, ptr %cpu, align 4, !dbg !2939
  %22 = load ptr, ptr %m, align 8, !dbg !2940
  %call18 = call zeroext i1 @cpumask_test_cpu(i32 noundef %21, ptr noundef %22) #11, !dbg !2941
  store i1 %call18, ptr %retval, align 1, !dbg !2942
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2942

cleanup:                                          ; preds = %if.end17, %do.end14
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #10, !dbg !2943
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #10, !dbg !2943
  %23 = load i1, ptr %retval, align 1, !dbg !2943
  ret i1 %23, !dbg !2943
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2944 dso_local zeroext i1 @irq_fixup_move_pending(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @irq_desc_get_pending_mask(ptr noundef %desc) #4 align 16 !dbg !2947 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2951, metadata !DIExpression()), !dbg !2952
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2953
  %pending_mask = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 20, !dbg !2954
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %pending_mask, i64 0, i64 0, !dbg !2953
  ret ptr %arraydecay, !dbg !2955
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @irq_data_get_affinity_mask(ptr noundef %d) #4 align 16 !dbg !2956 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2960, metadata !DIExpression()), !dbg !2961
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2962
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2963
  %1 = load ptr, ptr %common, align 8, !dbg !2963
  %affinity = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 4, !dbg !2964
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %affinity, i64 0, i64 0, !dbg !2962
  ret ptr %arraydecay, !dbg !2965
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_first_and(ptr noundef %srcp1, ptr noundef %srcp2) #4 align 16 !dbg !2966 {
entry:
  %srcp1.addr = alloca ptr, align 8
  %srcp2.addr = alloca ptr, align 8
  store ptr %srcp1, ptr %srcp1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp1.addr, metadata !2970, metadata !DIExpression()), !dbg !2972
  store ptr %srcp2, ptr %srcp2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp2.addr, metadata !2971, metadata !DIExpression()), !dbg !2973
  %0 = load ptr, ptr %srcp1.addr, align 8, !dbg !2974
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !2974
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2974
  %1 = load ptr, ptr %srcp2.addr, align 8, !dbg !2975
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !2975
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !2975
  %call = call i64 @find_first_and_bit(ptr noundef %arraydecay, ptr noundef %arraydecay2, i64 noundef 64) #11, !dbg !2976
  %conv = trunc i64 %call to i32, !dbg !2976
  ret i32 %conv, !dbg !2977
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_affinity_is_managed(ptr noundef %d) #4 align 16 !dbg !2978 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2980, metadata !DIExpression()), !dbg !2981
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2982
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2982
  %1 = load ptr, ptr %common, align 8, !dbg !2982
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !2982
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !2982
  %and = and i32 %2, 2097152, !dbg !2983
  %tobool = icmp ne i32 %and, 0, !dbg !2982
  ret i1 %tobool, !dbg !2984
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irqd_set_managed_shutdown(ptr noundef %d) #4 align 16 !dbg !2985 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2987, metadata !DIExpression()), !dbg !2988
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2989
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2989
  %1 = load ptr, ptr %common, align 8, !dbg !2989
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !2989
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !2990
  %or = or i32 %2, 8388608, !dbg !2990
  store i32 %or, ptr %state_use_accessors, align 8, !dbg !2990
  ret void, !dbg !2991
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2992 dso_local void @irq_shutdown_and_deactivate(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2993 dso_local i32 @irq_do_set_affinity(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2994 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2998 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_can_move_in_process_context(ptr noundef %d) #4 align 16 !dbg !3002 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !3004, metadata !DIExpression()), !dbg !3005
  %0 = load ptr, ptr %d.addr, align 8, !dbg !3006
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !3006
  %1 = load ptr, ptr %common, align 8, !dbg !3006
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !3006
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !3006
  %and = and i32 %2, 32768, !dbg !3007
  %tobool = icmp ne i32 %and, 0, !dbg !3006
  ret i1 %tobool, !dbg !3008
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @irq_data_get_effective_affinity_mask(ptr noundef %d) #4 align 16 !dbg !3009 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !3011, metadata !DIExpression()), !dbg !3012
  %0 = load ptr, ptr %d.addr, align 8, !dbg !3013
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !3014
  %1 = load ptr, ptr %common, align 8, !dbg !3014
  %effective_affinity = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 5, !dbg !3015
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %effective_affinity, i64 0, i64 0, !dbg !3013
  ret ptr %arraydecay, !dbg !3016
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #6 align 16 !dbg !3017 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !3022, metadata !DIExpression()), !dbg !3023
  ret void, !dbg !3024
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_empty(ptr noundef %srcp) #4 align 16 !dbg !3025 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !3029, metadata !DIExpression()), !dbg !3030
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !3031
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !3031
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3031
  %call = call zeroext i1 @bitmap_empty(ptr noundef %arraydecay, i32 noundef 64) #11, !dbg !3032
  ret i1 %call, !dbg !3033
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_any_but(ptr noundef %mask, i32 noundef %cpu) #4 align 16 !dbg !3034 {
entry:
  %mask.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !3038, metadata !DIExpression()), !dbg !3041
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3039, metadata !DIExpression()), !dbg !3042
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !3043
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3040, metadata !DIExpression()), !dbg !3044
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3045
  %call = call i32 @cpumask_check(i32 noundef %0) #11, !dbg !3046
  store i32 0, ptr %i, align 4, !dbg !3047
  br label %for.cond, !dbg !3047

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !3049
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !3049
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3049
  %2 = load i32, ptr %i, align 4, !dbg !3049
  %conv = zext i32 %2 to i64, !dbg !3049
  %call1 = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #11, !dbg !3049
  %conv2 = trunc i64 %call1 to i32, !dbg !3049
  store i32 %conv2, ptr %i, align 4, !dbg !3049
  %3 = load i32, ptr %i, align 4, !dbg !3049
  %cmp = icmp ult i32 %3, 64, !dbg !3049
  br i1 %cmp, label %for.body, label %for.end, !dbg !3047

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !dbg !3051
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !3053
  %cmp4 = icmp ne i32 %4, %5, !dbg !3054
  br i1 %cmp4, label %if.then, label %if.end, !dbg !3055

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !3056

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3053

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4, !dbg !3049
  %inc = add i32 %6, 1, !dbg !3049
  store i32 %inc, ptr %i, align 4, !dbg !3049
  br label %for.cond, !dbg !3049, !llvm.loop !3057

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i32, ptr %i, align 4, !dbg !3059
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !3060
  ret i32 %7, !dbg !3061
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #6 align 16 !dbg !3062 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3066, metadata !DIExpression()), !dbg !3068
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !3067, metadata !DIExpression()), !dbg !3069
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3070
  %call = call i32 @cpumask_check(i32 noundef %0) #11, !dbg !3070
  %conv = zext i32 %call to i64, !dbg !3070
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !3070
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !3070
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3070
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #11, !dbg !3070
  ret i1 %call1, !dbg !3071
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_empty(ptr noundef %src, i32 noundef %nbits) #4 align 16 !dbg !3072 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !3079, metadata !DIExpression()), !dbg !3081
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !3080, metadata !DIExpression()), !dbg !3082
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !3083
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3083
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !3083

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !3083
  %cmp = icmp ule i32 %2, 64, !dbg !3083
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !3083

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !3083
  %cmp2 = icmp ugt i32 %3, 0, !dbg !3083
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3085

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !3086
  %5 = load i64, ptr %4, align 8, !dbg !3087
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !3088
  %sub = sub i32 0, %6, !dbg !3088
  %and = and i32 %sub, 63, !dbg !3088
  %sh_prom = zext i32 %and to i64, !dbg !3088
  %shr = lshr i64 -1, %sh_prom, !dbg !3088
  %and3 = and i64 %5, %shr, !dbg !3089
  %tobool = icmp ne i64 %and3, 0, !dbg !3090
  %lnot = xor i1 %tobool, true, !dbg !3090
  store i1 %lnot, ptr %retval, align 1, !dbg !3091
  br label %return, !dbg !3091

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !3092
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !3093
  %conv = zext i32 %8 to i64, !dbg !3093
  %call = call i64 @find_first_bit(ptr noundef %7, i64 noundef %conv) #11, !dbg !3094
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !3095
  %conv4 = zext i32 %9 to i64, !dbg !3095
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !3096
  store i1 %cmp5, ptr %retval, align 1, !dbg !3097
  br label %return, !dbg !3097

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, ptr %retval, align 1, !dbg !3098
  ret i1 %10, !dbg !3098
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #4 align 16 !dbg !3099 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3104, metadata !DIExpression()), !dbg !3109
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3105, metadata !DIExpression()), !dbg !3110
  %0 = load i64, ptr %size.addr, align 8, !dbg !3111
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3111
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !3111

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3111
  %cmp = icmp ule i64 %2, 64, !dbg !3111
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !3111

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !3111
  %cmp2 = icmp ugt i64 %3, 0, !dbg !3111
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3112

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !3113
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3106, metadata !DIExpression()), !dbg !3114
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !3115
  %5 = load i64, ptr %4, align 8, !dbg !3116
  %6 = load i64, ptr %size.addr, align 8, !dbg !3117
  %sub = sub i64 %6, 1, !dbg !3117
  %sub3 = sub i64 63, %sub, !dbg !3117
  %shr = lshr i64 -1, %sub3, !dbg !3117
  %and = and i64 -1, %shr, !dbg !3117
  %add = add i64 0, %and, !dbg !3117
  %and4 = and i64 %5, %add, !dbg !3118
  store i64 %and4, ptr %val, align 8, !dbg !3114
  %7 = load i64, ptr %val, align 8, !dbg !3119
  %tobool = icmp ne i64 %7, 0, !dbg !3119
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !3119

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !3120
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !3120
  br i1 %9, label %cond.true5, label %cond.false, !dbg !3120

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !3120
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !3120
  %cast = trunc i64 %11 to i32, !dbg !3120
  %conv = sext i32 %cast to i64, !dbg !3120
  br label %cond.end, !dbg !3120

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !3120
  %call = call i64 @variable__ffs(i64 noundef %12) #11, !dbg !3120
  br label %cond.end, !dbg !3120

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !3120
  br label %cond.end7, !dbg !3119

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !3121
  br label %cond.end7, !dbg !3119

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !3119
  store i64 %cond8, ptr %retval, align 8, !dbg !3122
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !3123
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !3124
  %15 = load i64, ptr %size.addr, align 8, !dbg !3125
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #11, !dbg !3126
  store i64 %call9, ptr %retval, align 8, !dbg !3127
  br label %return, !dbg !3127

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !3128
  ret i64 %16, !dbg !3128
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !3129 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !3134, metadata !DIExpression()), !dbg !3135
  %0 = load i64, ptr %word.addr, align 8, !dbg !3136
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #13, !dbg !3137, !srcloc !3138
  store i64 %1, ptr %word.addr, align 8, !dbg !3137
  %2 = load i64, ptr %word.addr, align 8, !dbg !3139
  ret i64 %2, !dbg !3140
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3141 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #6 align 16 !dbg !3142 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3144, metadata !DIExpression()), !dbg !3145
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !3146
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #11, !dbg !3147
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !3148
  ret i32 %1, !dbg !3149
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !3150 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3154, metadata !DIExpression()), !dbg !3160
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3155, metadata !DIExpression()), !dbg !3161
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !3156, metadata !DIExpression()), !dbg !3162
  %0 = load i64, ptr %size.addr, align 8, !dbg !3163
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3163
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !3163

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3163
  %cmp = icmp ule i64 %2, 64, !dbg !3163
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !3163

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !3163
  %cmp2 = icmp ugt i64 %3, 0, !dbg !3163
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !3164

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !3165
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3157, metadata !DIExpression()), !dbg !3166
  %4 = load i64, ptr %offset.addr, align 8, !dbg !3167
  %5 = load i64, ptr %size.addr, align 8, !dbg !3167
  %cmp3 = icmp uge i64 %4, %5, !dbg !3167
  %lnot = xor i1 %cmp3, true, !dbg !3167
  %lnot4 = xor i1 %lnot, true, !dbg !3167
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3167
  %conv = sext i32 %lnot.ext to i64, !dbg !3167
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3167
  %tobool = icmp ne i64 %expval, 0, !dbg !3167
  br i1 %tobool, label %if.then5, label %if.end, !dbg !3169

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3170
  store i64 %6, ptr %retval, align 8, !dbg !3171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3171

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !3172
  %8 = load i64, ptr %7, align 8, !dbg !3173
  %9 = load i64, ptr %offset.addr, align 8, !dbg !3174
  %shl = shl i64 1, %9, !dbg !3174
  %sub = sub i64 -1, %shl, !dbg !3174
  %add = add i64 %sub, 1, !dbg !3174
  %10 = load i64, ptr %size.addr, align 8, !dbg !3174
  %sub6 = sub i64 %10, 1, !dbg !3174
  %sub7 = sub i64 63, %sub6, !dbg !3174
  %shr = lshr i64 -1, %sub7, !dbg !3174
  %and = and i64 %add, %shr, !dbg !3174
  %add8 = add i64 0, %and, !dbg !3174
  %and9 = and i64 %8, %add8, !dbg !3175
  store i64 %and9, ptr %val, align 8, !dbg !3176
  %11 = load i64, ptr %val, align 8, !dbg !3177
  %tobool10 = icmp ne i64 %11, 0, !dbg !3177
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !3177

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !3178
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3178
  br i1 %13, label %cond.true11, label %cond.false, !dbg !3178

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !3178
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !3178
  %cast = trunc i64 %15 to i32, !dbg !3178
  %conv12 = sext i32 %cast to i64, !dbg !3178
  br label %cond.end, !dbg !3178

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !3178
  %call = call i64 @variable__ffs(i64 noundef %16) #11, !dbg !3178
  br label %cond.end, !dbg !3178

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !3178
  br label %cond.end14, !dbg !3177

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !3179
  br label %cond.end14, !dbg !3177

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !3177
  store i64 %cond15, ptr %retval, align 8, !dbg !3180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3180

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !3181
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !3182
  %19 = load i64, ptr %size.addr, align 8, !dbg !3183
  %20 = load i64, ptr %offset.addr, align 8, !dbg !3184
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #11, !dbg !3185
  store i64 %call17, ptr %retval, align 8, !dbg !3186
  br label %return, !dbg !3186

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !3187
  ret i64 %21, !dbg !3187
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #6 align 16 !dbg !3188 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3192, metadata !DIExpression()), !dbg !3194
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !3193, metadata !DIExpression()), !dbg !3195
  ret void, !dbg !3196
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3197 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3198 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3206, metadata !DIExpression()), !dbg !3208
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3207, metadata !DIExpression()), !dbg !3209
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3210
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3211
  %div = udiv i64 %1, 64, !dbg !3211
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !3212
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #11, !dbg !3213
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3214
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3215
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !3216
  ret i1 %call, !dbg !3217
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !3218 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3226, metadata !DIExpression()), !dbg !3228
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3227, metadata !DIExpression()), !dbg !3229
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3230
  %1 = load i64, ptr %size.addr, align 8, !dbg !3231
  %conv = trunc i64 %1 to i32, !dbg !3231
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #11, !dbg !3232
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3233
  %3 = load i64, ptr %size.addr, align 8, !dbg !3233
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #11, !dbg !3233
  ret void, !dbg !3234
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3235 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3237, metadata !DIExpression()), !dbg !3239
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3238, metadata !DIExpression()), !dbg !3240
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3241
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3242
  br i1 %1, label %cond.true, label %cond.false, !dbg !3242

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3243
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3244
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !3245
  %conv = zext i1 %call to i32, !dbg !3245
  br label %cond.end, !dbg !3242

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3246
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3247
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !3248
  %conv2 = zext i1 %call1 to i32, !dbg !3248
  br label %cond.end, !dbg !3242

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3242
  %tobool = icmp ne i32 %cond, 0, !dbg !3242
  ret i1 %tobool, !dbg !3249
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !3250 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3255, metadata !DIExpression()), !dbg !3257
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3256, metadata !DIExpression()), !dbg !3258
  ret i1 true, !dbg !3259
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !3260 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3265, metadata !DIExpression()), !dbg !3268
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3266, metadata !DIExpression()), !dbg !3269
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3267, metadata !DIExpression()), !dbg !3270
  ret void, !dbg !3271
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3272 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3276, metadata !DIExpression()), !dbg !3278
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3277, metadata !DIExpression()), !dbg !3279
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3280
  %and = and i64 %0, 63, !dbg !3281
  %shl = shl i64 1, %and, !dbg !3282
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3283
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3284
  %shr = ashr i64 %2, 6, !dbg !3285
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3283
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3283
  %and1 = and i64 %shl, %3, !dbg !3286
  %cmp = icmp ne i64 %and1, 0, !dbg !3287
  ret i1 %cmp, !dbg !3288
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !3289 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3291, metadata !DIExpression()), !dbg !3294
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3292, metadata !DIExpression()), !dbg !3295
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !3296
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3293, metadata !DIExpression()), !dbg !3297
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3298
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3299
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !3300, !srcloc !3301
  %3 = icmp ult i8 %2, 2, !dbg !3300
  call void @llvm.assume(i1 %3), !dbg !3300
  store i8 %2, ptr %oldbit, align 1, !dbg !3300
  %4 = load i8, ptr %oldbit, align 1, !dbg !3302, !range !2577, !noundef !559
  %tobool = trunc i8 %4 to i1, !dbg !3302
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !3303
  ret i1 %tobool, !dbg !3304
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_and_bit(ptr noundef %addr1, ptr noundef %addr2, i64 noundef %size) #4 align 16 !dbg !3305 {
entry:
  %retval = alloca i64, align 8
  %addr1.addr = alloca ptr, align 8
  %addr2.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr1, ptr %addr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr1.addr, metadata !3309, metadata !DIExpression()), !dbg !3315
  store ptr %addr2, ptr %addr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr2.addr, metadata !3310, metadata !DIExpression()), !dbg !3316
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3311, metadata !DIExpression()), !dbg !3317
  %0 = load i64, ptr %size.addr, align 8, !dbg !3318
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3318
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !3318

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3318
  %cmp = icmp ule i64 %2, 64, !dbg !3318
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !3318

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !3318
  %cmp2 = icmp ugt i64 %3, 0, !dbg !3318
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3319

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !3320
  call void @llvm.dbg.declare(metadata ptr %val, metadata !3312, metadata !DIExpression()), !dbg !3321
  %4 = load ptr, ptr %addr1.addr, align 8, !dbg !3322
  %5 = load i64, ptr %4, align 8, !dbg !3323
  %6 = load ptr, ptr %addr2.addr, align 8, !dbg !3324
  %7 = load i64, ptr %6, align 8, !dbg !3325
  %and = and i64 %5, %7, !dbg !3326
  %8 = load i64, ptr %size.addr, align 8, !dbg !3327
  %sub = sub i64 %8, 1, !dbg !3327
  %sub3 = sub i64 63, %sub, !dbg !3327
  %shr = lshr i64 -1, %sub3, !dbg !3327
  %and4 = and i64 -1, %shr, !dbg !3327
  %add = add i64 0, %and4, !dbg !3327
  %and5 = and i64 %and, %add, !dbg !3328
  store i64 %and5, ptr %val, align 8, !dbg !3321
  %9 = load i64, ptr %val, align 8, !dbg !3329
  %tobool = icmp ne i64 %9, 0, !dbg !3329
  br i1 %tobool, label %cond.true, label %cond.false7, !dbg !3329

cond.true:                                        ; preds = %if.then
  %10 = load i64, ptr %val, align 8, !dbg !3330
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !3330
  br i1 %11, label %cond.true6, label %cond.false, !dbg !3330

cond.true6:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !3330
  %13 = call i64 @llvm.cttz.i64(i64 %12, i1 true), !dbg !3330
  %cast = trunc i64 %13 to i32, !dbg !3330
  %conv = sext i32 %cast to i64, !dbg !3330
  br label %cond.end, !dbg !3330

cond.false:                                       ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !3330
  %call = call i64 @variable__ffs(i64 noundef %14) #11, !dbg !3330
  br label %cond.end, !dbg !3330

cond.end:                                         ; preds = %cond.false, %cond.true6
  %cond = phi i64 [ %conv, %cond.true6 ], [ %call, %cond.false ], !dbg !3330
  br label %cond.end8, !dbg !3329

cond.false7:                                      ; preds = %if.then
  %15 = load i64, ptr %size.addr, align 8, !dbg !3331
  br label %cond.end8, !dbg !3329

cond.end8:                                        ; preds = %cond.false7, %cond.end
  %cond9 = phi i64 [ %cond, %cond.end ], [ %15, %cond.false7 ], !dbg !3329
  store i64 %cond9, ptr %retval, align 8, !dbg !3332
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !3333
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %16 = load ptr, ptr %addr1.addr, align 8, !dbg !3334
  %17 = load ptr, ptr %addr2.addr, align 8, !dbg !3335
  %18 = load i64, ptr %size.addr, align 8, !dbg !3336
  %call10 = call i64 @_find_first_and_bit(ptr noundef %16, ptr noundef %17, i64 noundef %18) #11, !dbg !3337
  store i64 %call10, ptr %retval, align 8, !dbg !3338
  br label %return, !dbg !3338

return:                                           ; preds = %if.end, %cond.end8
  %19 = load i64, ptr %retval, align 8, !dbg !3339
  ret i64 %19, !dbg !3339
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3340 dso_local i64 @_find_first_and_bit(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_is_managed_and_shutdown(ptr noundef %d) #4 align 16 !dbg !3341 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !3343, metadata !DIExpression()), !dbg !3344
  %0 = load ptr, ptr %d.addr, align 8, !dbg !3345
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !3345
  %1 = load ptr, ptr %common, align 8, !dbg !3345
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !3345
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !3345
  %and = and i32 %2, 8388608, !dbg !3346
  %tobool = icmp ne i32 %and, 0, !dbg !3345
  ret i1 %tobool, !dbg !3347
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3348 dso_local i32 @irq_startup(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_is_single_target(ptr noundef %d) #4 align 16 !dbg !3351 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !3353, metadata !DIExpression()), !dbg !3354
  %0 = load ptr, ptr %d.addr, align 8, !dbg !3355
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !3355
  %1 = load ptr, ptr %common, align 8, !dbg !3355
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !3355
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !3355
  %and = and i32 %2, 16777216, !dbg !3356
  %tobool = icmp ne i32 %and, 0, !dbg !3355
  ret i1 %tobool, !dbg !3357
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @hk_should_isolate(ptr noundef %data, i32 noundef %cpu) #0 align 16 !dbg !3358 {
entry:
  %retval = alloca i1, align 1
  %data.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %hk_mask = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3362, metadata !DIExpression()), !dbg !3365
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3363, metadata !DIExpression()), !dbg !3366
  call void @llvm.lifetime.start.p0(i64 8, ptr %hk_mask) #10, !dbg !3367
  call void @llvm.dbg.declare(metadata ptr %hk_mask, metadata !3364, metadata !DIExpression()), !dbg !3368
  %call = call zeroext i1 @housekeeping_enabled(i32 noundef 7) #11, !dbg !3369
  br i1 %call, label %if.end, label %if.then, !dbg !3371

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !3372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3372

if.end:                                           ; preds = %entry
  %call1 = call ptr @housekeeping_cpumask(i32 noundef 7) #11, !dbg !3373
  store ptr %call1, ptr %hk_mask, align 8, !dbg !3374
  %0 = load ptr, ptr %data.addr, align 8, !dbg !3375
  %call2 = call ptr @irq_data_get_effective_affinity_mask(ptr noundef %0) #11, !dbg !3377
  %1 = load ptr, ptr %hk_mask, align 8, !dbg !3378
  %call3 = call zeroext i1 @cpumask_subset(ptr noundef %call2, ptr noundef %1) #11, !dbg !3379
  br i1 %call3, label %if.then4, label %if.end5, !dbg !3380

if.then4:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !3381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3381

if.end5:                                          ; preds = %if.end
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !3382
  %3 = load ptr, ptr %hk_mask, align 8, !dbg !3383
  %call6 = call zeroext i1 @cpumask_test_cpu(i32 noundef %2, ptr noundef %3) #11, !dbg !3384
  store i1 %call6, ptr %retval, align 1, !dbg !3385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3385

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hk_mask) #10, !dbg !3386
  %4 = load i1, ptr %retval, align 1, !dbg !3386
  ret i1 %4, !dbg !3386
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3387 dso_local i32 @irq_set_affinity_locked(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3388 dso_local zeroext i1 @housekeeping_enabled(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3391 dso_local ptr @housekeeping_cpumask(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_subset(ptr noundef %src1p, ptr noundef %src2p) #4 align 16 !dbg !3394 {
entry:
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !3398, metadata !DIExpression()), !dbg !3400
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !3399, metadata !DIExpression()), !dbg !3401
  %0 = load ptr, ptr %src1p.addr, align 8, !dbg !3402
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !3402
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !3402
  %1 = load ptr, ptr %src2p.addr, align 8, !dbg !3403
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !3403
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !3403
  %call = call zeroext i1 @bitmap_subset(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #11, !dbg !3404
  ret i1 %call, !dbg !3405
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_subset(ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #4 align 16 !dbg !3406 {
entry:
  %retval = alloca i1, align 1
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !3410, metadata !DIExpression()), !dbg !3413
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !3411, metadata !DIExpression()), !dbg !3414
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !3412, metadata !DIExpression()), !dbg !3415
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !3416
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3416
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !3416

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !3416
  %cmp = icmp ule i32 %2, 64, !dbg !3416
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !3416

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !3416
  %cmp2 = icmp ugt i32 %3, 0, !dbg !3416
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3418

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !3419
  %5 = load i64, ptr %4, align 8, !dbg !3420
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !3421
  %7 = load i64, ptr %6, align 8, !dbg !3422
  %not = xor i64 %7, -1, !dbg !3423
  %and = and i64 %5, %not, !dbg !3424
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !3425
  %sub = sub i32 0, %8, !dbg !3425
  %and3 = and i32 %sub, 63, !dbg !3425
  %sh_prom = zext i32 %and3 to i64, !dbg !3425
  %shr = lshr i64 -1, %sh_prom, !dbg !3425
  %and4 = and i64 %and, %shr, !dbg !3426
  %tobool = icmp ne i64 %and4, 0, !dbg !3427
  %lnot = xor i1 %tobool, true, !dbg !3427
  store i1 %lnot, ptr %retval, align 1, !dbg !3428
  br label %return, !dbg !3428

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %9 = load ptr, ptr %src1.addr, align 8, !dbg !3429
  %10 = load ptr, ptr %src2.addr, align 8, !dbg !3430
  %11 = load i32, ptr %nbits.addr, align 4, !dbg !3431
  %call = call zeroext i1 @__bitmap_subset(ptr noundef %9, ptr noundef %10, i32 noundef %11) #11, !dbg !3432
  store i1 %call, ptr %retval, align 1, !dbg !3433
  br label %return, !dbg !3433

return:                                           ; preds = %if.else, %if.then
  %12 = load i1, ptr %retval, align 1, !dbg !3434
  ret i1 %12, !dbg !3434
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3435 dso_local zeroext i1 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2444}
!llvm.module.flags = !{!2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549}
!llvm.ident = !{!2550}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_rs", scope: !2, file: !3, line: 150, type: !2532, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "migrate_one_irq", scope: !3, file: !3, line: 53, type: !4, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !2524)
!3 = !DIFile(filename: "kernel/irq/cpuhotplug.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c00c7ef460e9e4653c94d7c0867e27")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !7, line: 35, baseType: !8)
!7 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!8 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !11, line: 55, size: 3584, align: 512, elements: !12)
!11 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "435ffcdb49377a4c91932ebe21d66dca")
!12 = !{!13, !37, !148, !150, !156, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1708, !1709, !1710, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !2082, !2083, !2084, !2442, !2443}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !10, file: !11, line: 56, baseType: !14, size: 320)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !15, line: 147, size: 320, elements: !16)
!15 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce91671074049198389009db13b88160")
!16 = !{!17, !19, !20, !22, !25, !36}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !14, file: !15, line: 148, baseType: !18, size: 32)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !14, file: !15, line: 150, baseType: !18, size: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !14, file: !15, line: 152, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !14, file: !15, line: 153, baseType: !23, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !15, line: 129, flags: DIFlagFwdDecl)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !14, file: !15, line: 155, baseType: !26, size: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !27, line: 913, baseType: !28)
!27 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !34)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !27, line: 19, size: 64, elements: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !29, file: !27, line: 19, baseType: !32, size: 64)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !34)
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !{!35}
!35 = !DISubrange(count: 1)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "effective_affinity", scope: !14, file: !15, line: 158, baseType: !26, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !10, file: !11, line: 57, baseType: !38, size: 448, offset: 320)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !15, line: 179, size: 448, elements: !39)
!39 = !{!40, !45, !46, !47, !49, !142, !146, !147}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !38, file: !15, line: 180, baseType: !41, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !42, line: 21, baseType: !43)
!42 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !44, line: 27, baseType: !18)
!44 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!45 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !38, file: !15, line: 181, baseType: !18, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !38, file: !15, line: 182, baseType: !33, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !38, file: !15, line: 183, baseType: !48, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !38, file: !15, line: 184, baseType: !50, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !15, line: 501, size: 2112, elements: !52)
!52 = !{!53, !57, !62, !66, !67, !68, !69, !70, !71, !72, !73, !80, !84, !88, !89, !90, !91, !92, !93, !94, !95, !102, !103, !104, !110, !111, !123, !127, !131, !135, !139, !140, !141}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !51, file: !15, line: 502, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !51, file: !15, line: 503, baseType: !58, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!18, !61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !51, file: !15, line: 504, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !61}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !51, file: !15, line: 505, baseType: !63, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !51, file: !15, line: 506, baseType: !63, size: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !51, file: !15, line: 508, baseType: !63, size: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !51, file: !15, line: 509, baseType: !63, size: 64, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !51, file: !15, line: 510, baseType: !63, size: 64, offset: 448)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !51, file: !15, line: 511, baseType: !63, size: 64, offset: 512)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !51, file: !15, line: 512, baseType: !63, size: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !51, file: !15, line: 514, baseType: !74, size: 64, offset: 640)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !61, !78, !6}
!77 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !51, file: !15, line: 515, baseType: !81, size: 64, offset: 704)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!77, !61}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !51, file: !15, line: 516, baseType: !85, size: 64, offset: 768)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!77, !61, !18}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !51, file: !15, line: 517, baseType: !85, size: 64, offset: 832)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !51, file: !15, line: 519, baseType: !63, size: 64, offset: 896)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !51, file: !15, line: 520, baseType: !63, size: 64, offset: 960)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !51, file: !15, line: 526, baseType: !63, size: 64, offset: 1024)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !51, file: !15, line: 527, baseType: !63, size: 64, offset: 1088)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !51, file: !15, line: 528, baseType: !63, size: 64, offset: 1152)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !51, file: !15, line: 530, baseType: !63, size: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !51, file: !15, line: 532, baseType: !96, size: 64, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !61, !99}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !101, line: 66, flags: DIFlagFwdDecl)
!101 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!102 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !51, file: !15, line: 533, baseType: !81, size: 64, offset: 1344)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !51, file: !15, line: 534, baseType: !63, size: 64, offset: 1408)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !51, file: !15, line: 536, baseType: !105, size: 64, offset: 1472)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !61, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !15, line: 29, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !51, file: !15, line: 537, baseType: !105, size: 64, offset: 1536)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !51, file: !15, line: 539, baseType: !112, size: 64, offset: 1600)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!77, !61, !115, !122}
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !116, line: 497, baseType: !18, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0)
!119 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1)
!120 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2)
!121 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !51, file: !15, line: 540, baseType: !124, size: 64, offset: 1664)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!77, !61, !115, !6}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !51, file: !15, line: 542, baseType: !128, size: 64, offset: 1728)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!77, !61, !21}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !51, file: !15, line: 544, baseType: !132, size: 64, offset: 1792)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !61, !18}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !51, file: !15, line: 545, baseType: !136, size: 64, offset: 1856)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !61, !78}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !51, file: !15, line: 547, baseType: !81, size: 64, offset: 1920)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !51, file: !15, line: 548, baseType: !63, size: 64, offset: 1984)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !51, file: !15, line: 550, baseType: !33, size: 64, offset: 2048)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !38, file: !15, line: 185, baseType: !143, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !145, line: 13, flags: DIFlagFwdDecl)
!145 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!146 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !38, file: !15, line: 187, baseType: !61, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !38, file: !15, line: 189, baseType: !21, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !10, file: !11, line: 58, baseType: !149, size: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !10, file: !11, line: 59, baseType: !151, size: 64, offset: 832)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !152, line: 12, baseType: !153)
!152 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !9}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !10, file: !11, line: 60, baseType: !157, size: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !116, line: 118, size: 1024, align: 512, elements: !159)
!159 = !{!160, !172, !173, !174, !175, !176, !1686, !1687, !1688, !1689, !1690, !1691, !1692}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !158, file: !116, line: 119, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !116, line: 100, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!165, !77, !21}
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !166, line: 17, baseType: !167)
!166 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !166, line: 11, baseType: !18, size: 32, elements: !168)
!168 = !{!169, !170, !171}
!169 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!170 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!171 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !158, file: !116, line: 120, baseType: !21, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !158, file: !116, line: 121, baseType: !21, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !158, file: !116, line: 122, baseType: !157, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !158, file: !116, line: 123, baseType: !161, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !158, file: !116, line: 124, baseType: !177, size: 64, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !101, line: 746, size: 58368, elements: !179)
!179 = !{!180, !188, !189, !190, !200, !201, !202, !203, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !295, !306, !438, !442, !445, !476, !477, !478, !479, !483, !485, !486, !487, !488, !489, !490, !501, !502, !505, !506, !507, !508, !509, !510, !511, !512, !519, !520, !527, !528, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !838, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !894, !896, !897, !898, !910, !912, !913, !914, !915, !916, !917, !923, !924, !925, !926, !927, !928, !929, !943, !949, !953, !954, !955, !958, !962, !965, !972, !977, !980, !983, !986, !989, !992, !995, !1001, !1002, !1003, !1009, !1010, !1014, !1015, !1016, !1019, !1026, !1027, !1036, !1045, !1046, !1047, !1048, !1049, !1054, !1055, !1056, !1059, !1060, !1063, !1066, !1069, !1072, !1075, !1076, !1163, !1174, !1175, !1176, !1177, !1183, !1188, !1189, !1190, !1193, !1194, !1197, !1200, !1201, !1204, !1205, !1206, !1209, !1210, !1211, !1214, !1215, !1216, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1248, !1251, !1319, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1331, !1409, !1411, !1412, !1413, !1414, !1415, !1427, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1457, !1458, !1459}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !178, file: !101, line: 752, baseType: !181, size: 192)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !182, line: 56, size: 192, elements: !183)
!182 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!183 = !{!184, !185, !186, !187}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !182, line: 57, baseType: !33, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !181, file: !182, line: 58, baseType: !33, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !181, file: !182, line: 59, baseType: !41, size: 32, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !181, file: !182, line: 61, baseType: !41, size: 32, offset: 160)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !178, file: !101, line: 754, baseType: !18, size: 32, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !178, file: !101, line: 767, baseType: !21, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !178, file: !101, line: 768, baseType: !191, size: 32, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !192, line: 113, baseType: !193)
!192 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !192, line: 111, size: 32, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !193, file: !192, line: 112, baseType: !196, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !7, line: 174, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 172, size: 32, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !197, file: !7, line: 173, baseType: !77, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !178, file: !101, line: 770, baseType: !18, size: 32, offset: 352)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !178, file: !101, line: 771, baseType: !18, size: 32, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !178, file: !101, line: 774, baseType: !77, size: 32, offset: 416)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !178, file: !101, line: 775, baseType: !204, size: 128, offset: 448)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !205, line: 58, size: 128, elements: !206)
!205 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!206 = !{!207, !213, !218, !222}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !204, file: !205, line: 59, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !209, line: 60, size: 64, elements: !210)
!209 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !209, line: 61, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !204, file: !205, line: 60, baseType: !214, size: 32, offset: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !204, file: !205, line: 60, size: 32, elements: !215)
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !214, file: !205, line: 61, baseType: !18, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !214, file: !205, line: 62, baseType: !196, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !204, file: !205, line: 65, baseType: !219, size: 16, offset: 96)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !42, line: 19, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !44, line: 24, baseType: !221)
!221 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !204, file: !205, line: 65, baseType: !219, size: 16, offset: 112)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !178, file: !101, line: 776, baseType: !18, size: 32, offset: 576)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !178, file: !101, line: 777, baseType: !33, size: 64, offset: 640)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !178, file: !101, line: 778, baseType: !177, size: 64, offset: 704)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !178, file: !101, line: 787, baseType: !77, size: 32, offset: 768)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !178, file: !101, line: 788, baseType: !77, size: 32, offset: 800)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !178, file: !101, line: 790, baseType: !77, size: 32, offset: 832)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !178, file: !101, line: 792, baseType: !77, size: 32, offset: 864)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !178, file: !101, line: 793, baseType: !77, size: 32, offset: 896)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !178, file: !101, line: 794, baseType: !77, size: 32, offset: 928)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !178, file: !101, line: 795, baseType: !18, size: 32, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !178, file: !101, line: 797, baseType: !234, size: 2048, offset: 1024)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !101, line: 551, size: 2048, elements: !235)
!235 = !{!236, !241, !249, !253, !254, !260, !261, !262, !263, !264, !265, !269, !270, !271, !272, !274, !277, !278, !279}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !234, file: !101, line: 553, baseType: !237, size: 128)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !101, line: 411, size: 128, elements: !238)
!238 = !{!239, !240}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !237, file: !101, line: 412, baseType: !33, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !237, file: !101, line: 413, baseType: !41, size: 32, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !234, file: !101, line: 554, baseType: !242, size: 192, align: 64, offset: 128)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !243, line: 5, size: 192, align: 64, elements: !244)
!243 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!244 = !{!245, !246, !248}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !242, file: !243, line: 6, baseType: !33, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !242, file: !243, line: 7, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !242, file: !243, line: 8, baseType: !247, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !234, file: !101, line: 555, baseType: !250, size: 64, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !42, line: 23, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !44, line: 31, baseType: !252)
!252 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !234, file: !101, line: 556, baseType: !250, size: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !234, file: !101, line: 558, baseType: !255, size: 128, offset: 448)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !7, line: 190, size: 128, elements: !256)
!256 = !{!257, !259}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !7, line: 191, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !255, file: !7, line: 191, baseType: !258, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !234, file: !101, line: 559, baseType: !18, size: 32, offset: 576)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !234, file: !101, line: 561, baseType: !250, size: 64, offset: 640)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !234, file: !101, line: 562, baseType: !250, size: 64, offset: 704)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !234, file: !101, line: 563, baseType: !250, size: 64, offset: 768)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !234, file: !101, line: 564, baseType: !250, size: 64, offset: 832)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !234, file: !101, line: 565, baseType: !266, size: 64, offset: 896)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !42, line: 22, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !44, line: 30, baseType: !268)
!268 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !234, file: !101, line: 566, baseType: !250, size: 64, offset: 960)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !234, file: !101, line: 568, baseType: !250, size: 64, offset: 1024)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !234, file: !101, line: 571, baseType: !77, size: 32, offset: 1088)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !234, file: !101, line: 572, baseType: !273, size: 64, offset: 1152)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !234, file: !101, line: 574, baseType: !275, size: 64, offset: 1216)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !101, line: 49, flags: DIFlagFwdDecl)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !234, file: !101, line: 576, baseType: !275, size: 64, offset: 1280)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !234, file: !101, line: 578, baseType: !33, size: 64, offset: 1344)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !234, file: !101, line: 588, baseType: !280, size: 512, align: 512, offset: 1536)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !101, line: 497, size: 512, align: 512, elements: !281)
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !280, file: !101, line: 498, baseType: !250, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !280, file: !101, line: 499, baseType: !250, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !280, file: !101, line: 500, baseType: !250, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !280, file: !101, line: 501, baseType: !41, size: 32, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !280, file: !101, line: 502, baseType: !41, size: 32, offset: 224)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !280, file: !101, line: 503, baseType: !33, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !280, file: !101, line: 504, baseType: !33, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !280, file: !101, line: 505, baseType: !33, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !280, file: !101, line: 506, baseType: !291, size: 64, align: 64, offset: 448)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !101, line: 445, size: 64, align: 64, elements: !292)
!292 = !{!293, !294}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !291, file: !101, line: 446, baseType: !18, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !291, file: !101, line: 447, baseType: !18, size: 32, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !178, file: !101, line: 798, baseType: !296, size: 384, offset: 3072)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !101, line: 592, size: 384, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !304}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !296, file: !101, line: 593, baseType: !255, size: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !296, file: !101, line: 594, baseType: !33, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !296, file: !101, line: 595, baseType: !33, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !296, file: !101, line: 596, baseType: !18, size: 32, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !296, file: !101, line: 597, baseType: !221, size: 16, offset: 288)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !296, file: !101, line: 598, baseType: !221, size: 16, offset: 304)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !296, file: !101, line: 600, baseType: !305, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !178, file: !101, line: 799, baseType: !307, size: 1792, offset: 3456)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !101, line: 610, size: 1792, elements: !308)
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !435, !436}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !307, file: !101, line: 611, baseType: !242, size: 192, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !307, file: !101, line: 618, baseType: !250, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !307, file: !101, line: 619, baseType: !250, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !307, file: !101, line: 620, baseType: !250, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !307, file: !101, line: 621, baseType: !250, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !307, file: !101, line: 622, baseType: !250, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !307, file: !101, line: 629, baseType: !266, size: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !307, file: !101, line: 630, baseType: !250, size: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !101, line: 631, baseType: !18, size: 32, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !307, file: !101, line: 653, baseType: !18, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !307, file: !101, line: 654, baseType: !18, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !307, file: !101, line: 655, baseType: !18, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !307, file: !101, line: 656, baseType: !18, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !307, file: !101, line: 662, baseType: !323, size: 512, offset: 704)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !324, line: 118, size: 512, elements: !325)
!324 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!325 = !{!326, !334, !335, !344, !431, !432, !433, !434}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !323, file: !324, line: 119, baseType: !327, size: 256)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !328, line: 9, size: 256, elements: !329)
!328 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!329 = !{!330, !331}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !327, file: !328, line: 10, baseType: !242, size: 192, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !327, file: !328, line: 11, baseType: !332, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !333, line: 29, baseType: !266)
!333 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !323, file: !324, line: 120, baseType: !332, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !323, file: !324, line: 121, baseType: !336, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!339, !343}
!339 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !324, line: 65, baseType: !18, size: 32, elements: !340)
!340 = !{!341, !342}
!341 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!342 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !323, file: !324, line: 122, baseType: !345, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !324, line: 159, size: 512, align: 512, elements: !347)
!347 = !{!348, !399, !400, !404, !414, !415, !426, !430}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !346, file: !324, line: 160, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !324, line: 215, size: 4608, align: 512, elements: !351)
!351 = !{!352, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !350, file: !324, line: 216, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !354, line: 23, baseType: !355)
!354 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !354, line: 14, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !355, file: !354, line: 15, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !359, line: 44, baseType: !360)
!359 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !359, line: 14, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !359, line: 15, baseType: !363, size: 32)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !359, line: 15, size: 32, elements: !364)
!364 = !{!365, !366, !374}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !363, file: !359, line: 16, baseType: !196, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !359, line: 24, baseType: !367, size: 16)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !359, line: 24, size: 16, elements: !368)
!368 = !{!369, !373}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !367, file: !359, line: 25, baseType: !370, size: 8)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !42, line: 17, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !44, line: 21, baseType: !372)
!372 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !367, file: !359, line: 26, baseType: !370, size: 8, offset: 8)
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !359, line: 28, baseType: !375, size: 32)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !359, line: 28, size: 32, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !375, file: !359, line: 29, baseType: !219, size: 16)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !375, file: !359, line: 30, baseType: !219, size: 16, offset: 16)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !350, file: !324, line: 217, baseType: !18, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !350, file: !324, line: 218, baseType: !18, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !350, file: !324, line: 219, baseType: !18, size: 32, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !350, file: !324, line: 220, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !350, file: !324, line: 221, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !350, file: !324, line: 222, baseType: !18, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !350, file: !324, line: 223, baseType: !18, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !350, file: !324, line: 224, baseType: !18, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !350, file: !324, line: 226, baseType: !18, size: 32, offset: 160)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !350, file: !324, line: 227, baseType: !221, size: 16, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !350, file: !324, line: 228, baseType: !221, size: 16, offset: 208)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !350, file: !324, line: 229, baseType: !18, size: 32, offset: 224)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !350, file: !324, line: 235, baseType: !332, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !350, file: !324, line: 236, baseType: !343, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !350, file: !324, line: 237, baseType: !332, size: 64, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !350, file: !324, line: 238, baseType: !343, size: 64, offset: 448)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !350, file: !324, line: 239, baseType: !396, size: 4096, align: 512, offset: 512)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 4096, align: 512, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 8)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !346, file: !324, line: 161, baseType: !18, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !346, file: !324, line: 162, baseType: !401, size: 32, offset: 96)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !7, line: 32, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !403, line: 96, baseType: !77)
!403 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!404 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !346, file: !324, line: 163, baseType: !405, size: 32, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !406, line: 274, baseType: !407)
!406 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !406, line: 274, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !407, file: !406, line: 274, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !406, line: 69, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !406, line: 64, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !411, file: !406, line: 65, baseType: !18, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !346, file: !324, line: 164, baseType: !343, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !346, file: !324, line: 165, baseType: !416, size: 128, offset: 256)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !328, line: 14, size: 128, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !416, file: !328, line: 15, baseType: !419, size: 128)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !243, line: 26, size: 128, elements: !420)
!420 = !{!421, !425}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !419, file: !243, line: 27, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !243, line: 12, size: 64, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !422, file: !243, line: 13, baseType: !247, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !419, file: !243, line: 28, baseType: !247, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !346, file: !324, line: 166, baseType: !427, size: 64, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!332}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !346, file: !324, line: 167, baseType: !332, size: 64, offset: 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !323, file: !324, line: 123, baseType: !370, size: 8, offset: 448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !323, file: !324, line: 124, baseType: !370, size: 8, offset: 456)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !323, file: !324, line: 125, baseType: !370, size: 8, offset: 464)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !323, file: !324, line: 126, baseType: !370, size: 8, offset: 472)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !307, file: !101, line: 671, baseType: !323, size: 512, offset: 1216)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !307, file: !101, line: 679, baseType: !437, size: 64, offset: 1728)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !178, file: !101, line: 800, baseType: !439, size: 64, offset: 5248)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !101, line: 800, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !178, file: !101, line: 809, baseType: !443, size: 64, offset: 5312)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !101, line: 70, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !178, file: !101, line: 825, baseType: !446, size: 2048, align: 512, offset: 5632)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !101, line: 509, size: 2048, align: 512, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !446, file: !101, line: 511, baseType: !250, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !446, file: !101, line: 512, baseType: !250, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !446, file: !101, line: 513, baseType: !250, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !446, file: !101, line: 514, baseType: !250, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !446, file: !101, line: 515, baseType: !250, size: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !446, file: !101, line: 516, baseType: !250, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !446, file: !101, line: 518, baseType: !250, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !446, file: !101, line: 519, baseType: !250, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !446, file: !101, line: 520, baseType: !266, size: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !446, file: !101, line: 522, baseType: !250, size: 64, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !446, file: !101, line: 523, baseType: !250, size: 64, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !446, file: !101, line: 524, baseType: !266, size: 64, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !446, file: !101, line: 526, baseType: !266, size: 64, offset: 768)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !446, file: !101, line: 527, baseType: !250, size: 64, offset: 832)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !446, file: !101, line: 529, baseType: !250, size: 64, offset: 896)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !446, file: !101, line: 530, baseType: !250, size: 64, offset: 960)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !446, file: !101, line: 531, baseType: !250, size: 64, offset: 1024)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !446, file: !101, line: 532, baseType: !250, size: 64, offset: 1088)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !446, file: !101, line: 533, baseType: !250, size: 64, offset: 1152)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !446, file: !101, line: 535, baseType: !250, size: 64, offset: 1216)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !446, file: !101, line: 536, baseType: !250, size: 64, offset: 1280)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !446, file: !101, line: 537, baseType: !250, size: 64, offset: 1344)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !446, file: !101, line: 538, baseType: !250, size: 64, offset: 1408)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !446, file: !101, line: 539, baseType: !250, size: 64, offset: 1472)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !446, file: !101, line: 540, baseType: !250, size: 64, offset: 1536)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !446, file: !101, line: 541, baseType: !250, size: 64, offset: 1600)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !446, file: !101, line: 542, baseType: !250, size: 64, offset: 1664)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !446, file: !101, line: 543, baseType: !250, size: 64, offset: 1728)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !178, file: !101, line: 833, baseType: !18, size: 32, offset: 7680)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !178, file: !101, line: 836, baseType: !18, size: 32, offset: 7712)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !178, file: !101, line: 837, baseType: !77, size: 32, offset: 7744)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !178, file: !101, line: 838, baseType: !480, size: 64, offset: 7808)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !27, line: 19, baseType: !29)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !178, file: !101, line: 839, baseType: !484, size: 64, offset: 7872)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !178, file: !101, line: 840, baseType: !482, size: 64, offset: 7936)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !178, file: !101, line: 841, baseType: !21, size: 64, offset: 8000)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !178, file: !101, line: 843, baseType: !221, size: 16, offset: 8064)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !178, file: !101, line: 845, baseType: !221, size: 16, offset: 8080)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !178, file: !101, line: 848, baseType: !77, size: 32, offset: 8096)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !178, file: !101, line: 849, baseType: !491, size: 32, offset: 8128)
!491 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !101, line: 718, size: 32, elements: !492)
!492 = !{!493, !500}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !491, file: !101, line: 724, baseType: !494, size: 32)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !491, file: !101, line: 719, size: 32, elements: !495)
!495 = !{!496, !497, !498, !499}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !494, file: !101, line: 720, baseType: !370, size: 8)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !494, file: !101, line: 721, baseType: !370, size: 8, offset: 8)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !494, file: !101, line: 722, baseType: !370, size: 8, offset: 16)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !494, file: !101, line: 723, baseType: !370, size: 8, offset: 24)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !491, file: !101, line: 725, baseType: !41, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !178, file: !101, line: 850, baseType: !255, size: 128, offset: 8192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !178, file: !101, line: 851, baseType: !503, size: 64, offset: 8320)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !101, line: 60, flags: DIFlagFwdDecl)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !178, file: !101, line: 855, baseType: !33, size: 64, offset: 8384)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !178, file: !101, line: 856, baseType: !370, size: 8, offset: 8448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !178, file: !101, line: 857, baseType: !370, size: 8, offset: 8456)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !178, file: !101, line: 858, baseType: !77, size: 32, offset: 8480)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !178, file: !101, line: 859, baseType: !255, size: 128, offset: 8512)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !178, file: !101, line: 860, baseType: !77, size: 32, offset: 8640)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !178, file: !101, line: 861, baseType: !255, size: 128, offset: 8704)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !178, file: !101, line: 873, baseType: !513, size: 256, offset: 8832)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !101, line: 376, size: 256, elements: !514)
!514 = !{!515, !516, !517, !518}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !513, file: !101, line: 381, baseType: !33, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !513, file: !101, line: 384, baseType: !252, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !513, file: !101, line: 389, baseType: !252, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !513, file: !101, line: 392, baseType: !252, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !178, file: !101, line: 875, baseType: !255, size: 128, offset: 9088)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !178, file: !101, line: 877, baseType: !521, size: 320, offset: 9216)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !522, line: 86, size: 320, elements: !523)
!522 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!523 = !{!524, !525, !526}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !521, file: !522, line: 87, baseType: !77, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !521, file: !522, line: 88, baseType: !255, size: 128, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !521, file: !522, line: 89, baseType: !255, size: 128, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !178, file: !101, line: 878, baseType: !242, size: 192, align: 64, offset: 9536)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !178, file: !101, line: 881, baseType: !529, size: 64, offset: 9728)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !531, line: 733, size: 10240, elements: !532)
!531 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!532 = !{!533, !749}
!533 = !DIDerivedType(tag: DW_TAG_member, scope: !530, file: !531, line: 734, baseType: !534, size: 10240)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !530, file: !531, line: 734, size: 10240, elements: !535)
!535 = !{!536, !540, !562, !569, !570, !571, !572, !573, !574, !582, !583, !584, !590, !591, !598, !599, !600, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !641, !655, !658, !714, !715, !716, !719, !723, !724, !727, !728, !729, !736, !737}
!536 = !DIDerivedType(tag: DW_TAG_member, scope: !534, file: !531, line: 739, baseType: !537, size: 512, align: 512)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !534, file: !531, line: 739, size: 512, align: 512, elements: !538)
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !537, file: !531, line: 747, baseType: !196, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !534, file: !531, line: 750, baseType: !541, size: 128, offset: 512)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !542, line: 218, size: 128, elements: !543)
!542 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!543 = !{!544, !560, !561}
!544 = !DIDerivedType(tag: DW_TAG_member, scope: !541, file: !542, line: 219, baseType: !545, size: 32)
!545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !541, file: !542, line: 219, size: 32, elements: !546)
!546 = !{!547, !556}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !545, file: !542, line: 220, baseType: !548, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !549, line: 29, baseType: !550)
!549 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !549, line: 17, size: 32, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, scope: !550, file: !549, line: 18, baseType: !553, size: 32)
!553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !550, file: !549, line: 18, size: 32, elements: !554)
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !553, file: !549, line: 19, baseType: !355, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !545, file: !542, line: 221, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !542, line: 197, baseType: !558)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 197, elements: !559)
!559 = !{}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !541, file: !542, line: 223, baseType: !18, size: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !541, file: !542, line: 224, baseType: !21, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !534, file: !531, line: 752, baseType: !563, size: 64, offset: 640)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!33, !566, !33, !33, !33, !33}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !568, line: 537, flags: DIFlagFwdDecl)
!568 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !534, file: !531, line: 756, baseType: !33, size: 64, offset: 704)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !534, file: !531, line: 757, baseType: !33, size: 64, offset: 768)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !534, file: !531, line: 760, baseType: !33, size: 64, offset: 832)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !534, file: !531, line: 761, baseType: !33, size: 64, offset: 896)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !534, file: !531, line: 763, baseType: !33, size: 64, offset: 960)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !534, file: !531, line: 764, baseType: !575, size: 64, offset: 1024)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !568, line: 299, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 299, size: 64, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !577, file: !568, line: 299, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !581, line: 18, baseType: !33)
!581 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!582 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !534, file: !531, line: 773, baseType: !196, size: 32, offset: 1088)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !534, file: !531, line: 785, baseType: !196, size: 32, offset: 1120)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !534, file: !531, line: 795, baseType: !585, size: 64, offset: 1152)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !531, line: 726, size: 128, elements: !587)
!587 = !{!588, !589}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !586, file: !531, line: 727, baseType: !250, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !586, file: !531, line: 728, baseType: !77, size: 32, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !534, file: !531, line: 801, baseType: !33, size: 64, offset: 1216)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !534, file: !531, line: 804, baseType: !592, size: 64, offset: 1280)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !593, line: 13, baseType: !594)
!593 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !7, line: 181, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 179, size: 64, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !595, file: !7, line: 180, baseType: !266, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !534, file: !531, line: 806, baseType: !77, size: 32, offset: 1344)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !534, file: !531, line: 808, baseType: !548, size: 32, offset: 1376)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !534, file: !531, line: 823, baseType: !601, size: 320, offset: 1408)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !602, line: 48, size: 320, elements: !603)
!602 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!603 = !{!604, !605, !606, !611, !612}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !601, file: !602, line: 49, baseType: !592, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !601, file: !602, line: 55, baseType: !592, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !601, file: !602, line: 57, baseType: !607, size: 32, offset: 128)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !608, line: 15, size: 32, elements: !609)
!608 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!609 = !{!610}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !607, file: !608, line: 20, baseType: !196, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !601, file: !602, line: 59, baseType: !353, size: 32, offset: 160)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !601, file: !602, line: 60, baseType: !255, size: 128, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !534, file: !531, line: 825, baseType: !255, size: 128, offset: 1728)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !534, file: !531, line: 845, baseType: !77, size: 32, offset: 1856)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !534, file: !531, line: 849, baseType: !33, size: 64, offset: 1920)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !534, file: !531, line: 850, baseType: !33, size: 64, offset: 1984)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !534, file: !531, line: 852, baseType: !33, size: 64, offset: 2048)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !534, file: !531, line: 853, baseType: !33, size: 64, offset: 2112)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !534, file: !531, line: 854, baseType: !594, size: 64, offset: 2176)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !534, file: !531, line: 855, baseType: !33, size: 64, offset: 2240)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !534, file: !531, line: 856, baseType: !33, size: 64, offset: 2304)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !534, file: !531, line: 857, baseType: !33, size: 64, offset: 2368)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !534, file: !531, line: 858, baseType: !33, size: 64, offset: 2432)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !534, file: !531, line: 865, baseType: !410, size: 32, offset: 2496)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !534, file: !531, line: 867, baseType: !548, size: 32, offset: 2528)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !534, file: !531, line: 869, baseType: !33, size: 64, offset: 2560)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !534, file: !531, line: 869, baseType: !33, size: 64, offset: 2624)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !534, file: !531, line: 869, baseType: !33, size: 64, offset: 2688)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !534, file: !531, line: 869, baseType: !33, size: 64, offset: 2752)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !534, file: !531, line: 870, baseType: !33, size: 64, offset: 2816)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !534, file: !531, line: 870, baseType: !33, size: 64, offset: 2880)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !534, file: !531, line: 870, baseType: !33, size: 64, offset: 2944)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !534, file: !531, line: 871, baseType: !33, size: 64, offset: 3008)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !534, file: !531, line: 871, baseType: !33, size: 64, offset: 3072)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !534, file: !531, line: 871, baseType: !33, size: 64, offset: 3136)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !534, file: !531, line: 871, baseType: !33, size: 64, offset: 3200)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !534, file: !531, line: 873, baseType: !638, size: 3328, offset: 3264)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 3328, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 52)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !534, file: !531, line: 875, baseType: !642, size: 1280, offset: 6592)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 1280, elements: !653)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !644, line: 22, size: 320, elements: !645)
!644 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!645 = !{!646, !647, !648, !649}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !643, file: !644, line: 23, baseType: !353, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !643, file: !644, line: 24, baseType: !266, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !643, file: !644, line: 26, baseType: !255, size: 128, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !643, file: !644, line: 28, baseType: !650, size: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !42, line: 20, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !44, line: 26, baseType: !77)
!653 = !{!654}
!654 = !DISubrange(count: 4)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !534, file: !531, line: 877, baseType: !656, size: 64, offset: 7872)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !531, line: 877, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !534, file: !531, line: 880, baseType: !659, size: 1088, offset: 7936)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !660, line: 72, baseType: !661)
!660 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !660, line: 23, size: 1088, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !670, !671, !679, !680, !708, !709, !710}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !661, file: !660, line: 28, baseType: !250, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !661, file: !660, line: 38, baseType: !594, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !661, file: !660, line: 40, baseType: !33, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !661, file: !660, line: 43, baseType: !601, size: 320, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !661, file: !660, line: 44, baseType: !668, size: 64, offset: 512)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !660, line: 44, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !660, line: 48, baseType: !33, size: 64, offset: 576)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !661, file: !660, line: 59, baseType: !672, size: 256, offset: 640)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !673, line: 66, size: 256, elements: !674)
!673 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!674 = !{!675, !676, !677, !678}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !672, file: !673, line: 67, baseType: !592, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !672, file: !673, line: 68, baseType: !353, size: 32, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !672, file: !673, line: 70, baseType: !607, size: 32, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !672, file: !673, line: 72, baseType: !255, size: 128, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !661, file: !660, line: 60, baseType: !21, size: 64, offset: 896)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !661, file: !660, line: 61, baseType: !681, size: 64, offset: 960)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !684, line: 13, size: 1216, elements: !685)
!684 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!685 = !{!686, !687, !688, !689, !690, !691, !692, !695, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !683, file: !684, line: 14, baseType: !21, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !683, file: !684, line: 15, baseType: !33, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !683, file: !684, line: 17, baseType: !33, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !683, file: !684, line: 17, baseType: !33, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !683, file: !684, line: 18, baseType: !33, size: 64, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !683, file: !684, line: 18, baseType: !33, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !683, file: !684, line: 19, baseType: !693, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !683, file: !684, line: 21, baseType: !696, size: 64, offset: 448)
!696 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !683, file: !684, line: 23, baseType: !696, size: 64, offset: 512)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !683, file: !684, line: 24, baseType: !696, size: 64, offset: 576)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !683, file: !684, line: 25, baseType: !696, size: 64, offset: 640)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !683, file: !684, line: 26, baseType: !696, size: 64, offset: 704)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !683, file: !684, line: 27, baseType: !696, size: 64, offset: 768)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !683, file: !684, line: 28, baseType: !696, size: 64, offset: 832)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !683, file: !684, line: 29, baseType: !696, size: 64, offset: 896)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !683, file: !684, line: 30, baseType: !696, size: 64, offset: 960)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !683, file: !684, line: 31, baseType: !696, size: 64, offset: 1024)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !683, file: !684, line: 32, baseType: !696, size: 64, offset: 1088)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !683, file: !684, line: 33, baseType: !696, size: 64, offset: 1152)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !661, file: !660, line: 63, baseType: !196, size: 32, offset: 1024)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !661, file: !660, line: 69, baseType: !219, size: 16, offset: 1056)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !661, file: !660, line: 70, baseType: !711, size: 16, offset: 1072)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !42, line: 18, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !44, line: 23, baseType: !713)
!713 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !534, file: !531, line: 882, baseType: !33, size: 64, offset: 9024)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !534, file: !531, line: 885, baseType: !548, size: 32, offset: 9088)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !534, file: !531, line: 886, baseType: !717, size: 64, offset: 9152)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !531, line: 732, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !534, file: !531, line: 901, baseType: !720, size: 64, offset: 9216)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !722, line: 18, flags: DIFlagFwdDecl)
!722 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!723 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !534, file: !531, line: 904, baseType: !566, size: 64, offset: 9280)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !534, file: !531, line: 906, baseType: !725, size: 64, offset: 9344)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !531, line: 906, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !534, file: !531, line: 930, baseType: !196, size: 32, offset: 9408)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !534, file: !531, line: 933, baseType: !196, size: 32, offset: 9440)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !534, file: !531, line: 935, baseType: !730, size: 64, offset: 9472)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !731, line: 103, size: 64, elements: !732)
!731 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !730, file: !731, line: 104, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !731, line: 101, flags: DIFlagFwdDecl)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !534, file: !531, line: 940, baseType: !592, size: 64, offset: 9536)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !534, file: !531, line: 942, baseType: !738, size: 256, offset: 9600)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !739, line: 98, size: 256, elements: !740)
!739 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!740 = !{!741, !742, !743}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !738, file: !739, line: 99, baseType: !592, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !738, file: !739, line: 100, baseType: !255, size: 128, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !738, file: !739, line: 101, baseType: !744, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !739, line: 21, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !530, file: !531, line: 986, baseType: !750, offset: 10240)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: -1)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !178, file: !101, line: 882, baseType: !529, size: 64, offset: 9792)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !178, file: !101, line: 884, baseType: !77, size: 32, offset: 9856)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !178, file: !101, line: 885, baseType: !77, size: 32, offset: 9888)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !178, file: !101, line: 886, baseType: !77, size: 32, offset: 9920)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !178, file: !101, line: 888, baseType: !77, size: 32, offset: 9952)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !178, file: !101, line: 890, baseType: !33, size: 64, offset: 9984)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !178, file: !101, line: 893, baseType: !18, size: 32, offset: 10048)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !178, file: !101, line: 896, baseType: !18, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !178, file: !101, line: 897, baseType: !18, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !178, file: !101, line: 898, baseType: !18, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !178, file: !101, line: 899, baseType: !18, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !178, file: !101, line: 919, baseType: !18, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !178, file: !101, line: 922, baseType: !18, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !178, file: !101, line: 923, baseType: !18, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !178, file: !101, line: 925, baseType: !18, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !178, file: !101, line: 939, baseType: !18, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !178, file: !101, line: 941, baseType: !18, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !178, file: !101, line: 944, baseType: !18, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !178, file: !101, line: 956, baseType: !18, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !178, file: !101, line: 962, baseType: !18, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !178, file: !101, line: 966, baseType: !18, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !178, file: !101, line: 969, baseType: !33, size: 64, offset: 10176)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !178, file: !101, line: 971, baseType: !776, size: 448, offset: 10240)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !777, line: 25, size: 448, elements: !778)
!777 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!778 = !{!779, !780, !785}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !776, file: !777, line: 26, baseType: !33, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !776, file: !777, line: 27, baseType: !781, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!696, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !777, line: 28, baseType: !786, size: 320, offset: 128)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !777, line: 28, size: 320, elements: !787)
!787 = !{!788, !798, !828}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !786, file: !777, line: 37, baseType: !789, size: 320)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !786, file: !777, line: 30, size: 320, elements: !790)
!790 = !{!791, !793, !794, !795, !796, !797}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !789, file: !777, line: 31, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !789, file: !777, line: 32, baseType: !41, size: 32, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !789, file: !777, line: 33, baseType: !41, size: 32, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !789, file: !777, line: 34, baseType: !41, size: 32, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !789, file: !777, line: 35, baseType: !250, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !789, file: !777, line: 36, baseType: !792, size: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !786, file: !777, line: 47, baseType: !799, size: 192)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !786, file: !777, line: 39, size: 192, elements: !800)
!800 = !{!801, !802, !808, !827}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !799, file: !777, line: 40, baseType: !401, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !799, file: !777, line: 41, baseType: !803, size: 32, offset: 32)
!803 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !777, line: 16, baseType: !18, size: 32, elements: !804)
!804 = !{!805, !806, !807}
!805 = !DIEnumerator(name: "TT_NONE", value: 0)
!806 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!807 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!808 = !DIDerivedType(tag: DW_TAG_member, scope: !799, file: !777, line: 42, baseType: !809, size: 64, offset: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !799, file: !777, line: 42, size: 64, elements: !810)
!810 = !{!811, !819}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !809, file: !777, line: 43, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !814, line: 7, size: 128, elements: !815)
!814 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!815 = !{!816, !818}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !813, file: !814, line: 8, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !403, line: 93, baseType: !268)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !813, file: !814, line: 9, baseType: !268, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !809, file: !777, line: 44, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !822, line: 7, size: 64, elements: !823)
!822 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!823 = !{!824, !826}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !821, file: !822, line: 8, baseType: !825, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !822, line: 5, baseType: !651)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !821, file: !822, line: 9, baseType: !651, size: 32, offset: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !799, file: !777, line: 46, baseType: !250, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !786, file: !777, line: 55, baseType: !829, size: 256)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !786, file: !777, line: 49, size: 256, elements: !830)
!830 = !{!831, !834, !835, !836, !837}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !829, file: !777, line: 50, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !777, line: 14, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !829, file: !777, line: 51, baseType: !77, size: 32, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !829, file: !777, line: 52, baseType: !77, size: 32, offset: 96)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !829, file: !777, line: 53, baseType: !33, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !829, file: !777, line: 54, baseType: !33, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !178, file: !101, line: 973, baseType: !839, size: 32, offset: 10688)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !7, line: 27, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !403, line: 28, baseType: !77)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !178, file: !101, line: 974, baseType: !839, size: 32, offset: 10720)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !178, file: !101, line: 978, baseType: !33, size: 64, offset: 10752)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !178, file: !101, line: 987, baseType: !177, size: 64, offset: 10816)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !178, file: !101, line: 990, baseType: !177, size: 64, offset: 10880)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !178, file: !101, line: 995, baseType: !255, size: 128, offset: 10944)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !178, file: !101, line: 996, baseType: !255, size: 128, offset: 11072)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !178, file: !101, line: 997, baseType: !177, size: 64, offset: 11200)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !178, file: !101, line: 1005, baseType: !255, size: 128, offset: 11264)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !178, file: !101, line: 1006, baseType: !255, size: 128, offset: 11392)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !178, file: !101, line: 1009, baseType: !851, size: 64, offset: 11520)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !853, line: 59, size: 768, elements: !854)
!853 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!854 = !{!855, !856, !857, !858, !869, !870, !877, !886}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !852, file: !853, line: 61, baseType: !191, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !852, file: !853, line: 62, baseType: !18, size: 32, offset: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !852, file: !853, line: 63, baseType: !548, size: 32, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !852, file: !853, line: 65, baseType: !859, size: 256, offset: 128)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !860, size: 256, elements: !653)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !7, line: 194, size: 64, elements: !861)
!861 = !{!862}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !860, file: !7, line: 195, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !7, line: 198, size: 128, elements: !865)
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !864, file: !7, line: 199, baseType: !863, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !864, file: !7, line: 199, baseType: !868, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !852, file: !853, line: 66, baseType: !860, size: 64, offset: 384)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !852, file: !853, line: 68, baseType: !871, size: 192, offset: 448)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !872, line: 41, baseType: !873)
!872 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !872, line: 37, size: 192, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !873, file: !872, line: 38, baseType: !548, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !873, file: !872, line: 39, baseType: !255, size: 128, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !852, file: !853, line: 69, baseType: !878, size: 128, align: 64, offset: 640)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !7, line: 232, size: 128, align: 64, elements: !879)
!879 = !{!880, !882}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !878, file: !7, line: 233, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !878, file: !7, line: 234, baseType: !883, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !881}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !852, file: !853, line: 70, baseType: !887, offset: 768)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !888, elements: !751)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !853, line: 54, size: 128, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !888, file: !853, line: 55, baseType: !77, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !888, file: !853, line: 56, baseType: !892, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !853, line: 56, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !178, file: !101, line: 1010, baseType: !895, size: 512, offset: 11584)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 512, elements: !653)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !178, file: !101, line: 1011, baseType: !255, size: 128, offset: 12096)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !178, file: !101, line: 1012, baseType: !255, size: 128, offset: 12224)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !178, file: !101, line: 1014, baseType: !899, size: 64, offset: 12352)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !901, line: 26, size: 256, elements: !902)
!901 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !900, file: !901, line: 27, baseType: !18, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !900, file: !901, line: 28, baseType: !905, size: 192, offset: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !906, line: 43, size: 192, elements: !907)
!906 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !905, file: !906, line: 44, baseType: !353, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !905, file: !906, line: 45, baseType: !255, size: 128, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !178, file: !101, line: 1017, baseType: !911, size: 64, offset: 12416)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !178, file: !101, line: 1020, baseType: !911, size: 64, offset: 12480)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !178, file: !101, line: 1023, baseType: !21, size: 64, offset: 12544)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !178, file: !101, line: 1025, baseType: !250, size: 64, offset: 12608)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !178, file: !101, line: 1026, baseType: !250, size: 64, offset: 12672)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !178, file: !101, line: 1031, baseType: !250, size: 64, offset: 12736)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !178, file: !101, line: 1032, baseType: !918, size: 192, offset: 12800)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !101, line: 324, size: 192, elements: !919)
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !918, file: !101, line: 326, baseType: !250, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !918, file: !101, line: 327, baseType: !250, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !918, file: !101, line: 328, baseType: !353, size: 32, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !178, file: !101, line: 1041, baseType: !33, size: 64, offset: 12992)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !178, file: !101, line: 1042, baseType: !33, size: 64, offset: 13056)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !178, file: !101, line: 1045, baseType: !250, size: 64, offset: 13120)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !178, file: !101, line: 1048, baseType: !250, size: 64, offset: 13184)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !178, file: !101, line: 1051, baseType: !33, size: 64, offset: 13248)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !178, file: !101, line: 1052, baseType: !33, size: 64, offset: 13312)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !178, file: !101, line: 1055, baseType: !930, size: 640, offset: 13376)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !931, line: 132, size: 640, elements: !932)
!931 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!932 = !{!933, !941, !942}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !930, file: !931, line: 133, baseType: !934, size: 576)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, size: 576, elements: !939)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !931, line: 117, size: 192, elements: !936)
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !935, file: !931, line: 118, baseType: !250, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !935, file: !931, line: 119, baseType: !416, size: 128, offset: 64)
!939 = !{!940}
!940 = !DISubrange(count: 3)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !930, file: !931, line: 134, baseType: !18, size: 32, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !930, file: !931, line: 135, baseType: !18, size: 32, offset: 608)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !178, file: !101, line: 1058, baseType: !944, size: 448, offset: 14016)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !931, line: 144, size: 448, elements: !945)
!945 = !{!946, !947, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !944, file: !931, line: 145, baseType: !878, size: 128, align: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !944, file: !931, line: 146, baseType: !672, size: 256, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !944, file: !931, line: 147, baseType: !18, size: 32, offset: 384)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !178, file: !101, line: 1064, baseType: !950, size: 64, offset: 14464)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !952)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !101, line: 1064, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !178, file: !101, line: 1067, baseType: !950, size: 64, offset: 14528)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !178, file: !101, line: 1070, baseType: !950, size: 64, offset: 14592)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !178, file: !101, line: 1074, baseType: !956, size: 64, offset: 14656)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !101, line: 1074, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !178, file: !101, line: 1084, baseType: !959, size: 128, offset: 14720)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 128, elements: !960)
!960 = !{!961}
!961 = !DISubrange(count: 16)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !178, file: !101, line: 1086, baseType: !963, size: 64, offset: 14848)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !101, line: 55, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !178, file: !101, line: 1089, baseType: !966, size: 64, offset: 14912)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !967, line: 12, size: 64, elements: !968)
!967 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!968 = !{!969}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !966, file: !967, line: 13, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !967, line: 8, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !178, file: !101, line: 1090, baseType: !973, size: 128, offset: 14976)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !974, line: 13, size: 128, elements: !975)
!974 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !973, file: !974, line: 14, baseType: !255, size: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !178, file: !101, line: 1097, baseType: !978, size: 64, offset: 15104)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !101, line: 50, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !178, file: !101, line: 1100, baseType: !981, size: 64, offset: 15168)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !101, line: 1100, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !178, file: !101, line: 1103, baseType: !984, size: 64, offset: 15232)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !101, line: 53, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !178, file: !101, line: 1107, baseType: !987, size: 64, offset: 15296)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !101, line: 56, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !178, file: !101, line: 1110, baseType: !990, size: 64, offset: 15360)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !931, line: 236, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !178, file: !101, line: 1111, baseType: !993, size: 64, offset: 15424)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !101, line: 67, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !178, file: !101, line: 1112, baseType: !996, size: 64, offset: 15488)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !997, line: 25, baseType: !998)
!997 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !997, line: 23, size: 64, elements: !999)
!999 = !{!1000}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !998, file: !997, line: 24, baseType: !32, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !178, file: !101, line: 1113, baseType: !996, size: 64, offset: 15552)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !178, file: !101, line: 1115, baseType: !996, size: 64, offset: 15616)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !178, file: !101, line: 1116, baseType: !1004, size: 192, offset: 15680)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1005, line: 32, size: 192, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1004, file: !1005, line: 33, baseType: !255, size: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1004, file: !1005, line: 34, baseType: !996, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !178, file: !101, line: 1117, baseType: !33, size: 64, offset: 15872)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !178, file: !101, line: 1118, baseType: !1011, size: 64, offset: 15936)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 61, baseType: !1012)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !403, line: 72, baseType: !1013)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !403, line: 16, baseType: !33)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !178, file: !101, line: 1119, baseType: !18, size: 32, offset: 16000)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !178, file: !101, line: 1121, baseType: !881, size: 64, offset: 16064)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !178, file: !101, line: 1125, baseType: !1017, size: 64, offset: 16128)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !101, line: 43, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !178, file: !101, line: 1127, baseType: !1020, size: 32, offset: 16192)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !722, line: 23, baseType: !1021)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !722, line: 21, size: 32, elements: !1022)
!1022 = !{!1023}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1021, file: !722, line: 22, baseType: !1024, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !7, line: 37, baseType: !1025)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !403, line: 49, baseType: !18)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !178, file: !101, line: 1128, baseType: !18, size: 32, offset: 16224)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !178, file: !101, line: 1130, baseType: !1028, size: 128, offset: 16256)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1029, line: 37, size: 128, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1030 = !{!1031, !1032, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1028, file: !1029, line: 38, baseType: !77, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1028, file: !1029, line: 39, baseType: !196, size: 32, offset: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1028, file: !1029, line: 40, baseType: !1034, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1029, line: 24, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !178, file: !101, line: 1131, baseType: !1037, size: 256, offset: 16384)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1038, line: 12, size: 256, elements: !1039)
!1038 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1039 = !{!1040, !1042, !1043, !1044}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1037, file: !1038, line: 13, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1037, file: !1038, line: 14, baseType: !33, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1037, file: !1038, line: 15, baseType: !33, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1037, file: !1038, line: 16, baseType: !6, size: 8, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !178, file: !101, line: 1134, baseType: !250, size: 64, offset: 16640)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !178, file: !101, line: 1135, baseType: !250, size: 64, offset: 16704)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !178, file: !101, line: 1138, baseType: !548, size: 32, offset: 16768)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !178, file: !101, line: 1141, baseType: !353, size: 32, offset: 16800)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !178, file: !101, line: 1143, baseType: !1050, size: 64, offset: 16832)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !101, line: 735, size: 64, elements: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1050, file: !101, line: 736, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !178, file: !101, line: 1147, baseType: !419, size: 128, offset: 16896)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !178, file: !101, line: 1149, baseType: !177, size: 64, offset: 17024)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !178, file: !101, line: 1151, baseType: !1057, size: 64, offset: 17088)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !101, line: 1151, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !178, file: !101, line: 1188, baseType: !21, size: 64, offset: 17152)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !178, file: !101, line: 1191, baseType: !1061, size: 64, offset: 17216)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !101, line: 44, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !178, file: !101, line: 1194, baseType: !1064, size: 64, offset: 17280)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !101, line: 45, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !178, file: !101, line: 1197, baseType: !1067, size: 64, offset: 17344)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !101, line: 61, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !178, file: !101, line: 1199, baseType: !1070, size: 64, offset: 17408)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !101, line: 52, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !178, file: !101, line: 1202, baseType: !1073, size: 64, offset: 17472)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !101, line: 48, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !178, file: !101, line: 1205, baseType: !33, size: 64, offset: 17536)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !178, file: !101, line: 1206, baseType: !1077, size: 64, offset: 17600)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1005, line: 14, baseType: !1079)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1005, line: 12, size: 384, elements: !1080)
!1080 = !{!1081}
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !1079, file: !1005, line: 13, baseType: !1082, size: 384)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1079, file: !1005, line: 13, size: 384, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1087}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1082, file: !1005, line: 13, baseType: !77, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1082, file: !1005, line: 13, baseType: !77, size: 32, offset: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1082, file: !1005, line: 13, baseType: !77, size: 32, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1082, file: !1005, line: 13, baseType: !1088, size: 256, offset: 128)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1089, line: 37, size: 256, elements: !1090)
!1089 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1090 = !{!1091, !1096, !1109, !1115, !1125, !1152, !1157}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1088, file: !1089, line: 42, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 39, size: 64, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1092, file: !1089, line: 40, baseType: !840, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1092, file: !1089, line: 41, baseType: !1025, size: 32, offset: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1088, file: !1089, line: 50, baseType: !1097, size: 192)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 45, size: 192, elements: !1098)
!1098 = !{!1099, !1101, !1102, !1108}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1097, file: !1089, line: 46, baseType: !1100, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !403, line: 95, baseType: !77)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1097, file: !1089, line: 47, baseType: !77, size: 32, offset: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1097, file: !1089, line: 48, baseType: !1103, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1089, line: 11, baseType: !1104)
!1104 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1089, line: 8, size: 64, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1104, file: !1089, line: 9, baseType: !77, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1104, file: !1089, line: 10, baseType: !21, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1097, file: !1089, line: 49, baseType: !77, size: 32, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1088, file: !1089, line: 57, baseType: !1110, size: 128)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 53, size: 128, elements: !1111)
!1111 = !{!1112, !1113, !1114}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1110, file: !1089, line: 54, baseType: !840, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1110, file: !1089, line: 55, baseType: !1025, size: 32, offset: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1110, file: !1089, line: 56, baseType: !1103, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1088, file: !1089, line: 66, baseType: !1116, size: 256)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 60, size: 256, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1124}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1116, file: !1089, line: 61, baseType: !840, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1116, file: !1089, line: 62, baseType: !1025, size: 32, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1116, file: !1089, line: 63, baseType: !77, size: 32, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1116, file: !1089, line: 64, baseType: !1122, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !403, line: 94, baseType: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !403, line: 15, baseType: !696)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1116, file: !1089, line: 65, baseType: !1122, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1088, file: !1089, line: 105, baseType: !1126, size: 256)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 69, size: 256, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1126, file: !1089, line: 70, baseType: !21, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !1089, line: 79, baseType: !1130, size: 192, offset: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1126, file: !1089, line: 79, size: 192, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1141, !1146}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1130, file: !1089, line: 81, baseType: !77, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1130, file: !1089, line: 86, baseType: !713, size: 16)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1130, file: !1089, line: 92, baseType: !1135, size: 192)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !1089, line: 88, size: 192, elements: !1136)
!1136 = !{!1137, !1139, !1140}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1135, file: !1089, line: 89, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 64, elements: !397)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1135, file: !1089, line: 90, baseType: !21, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1135, file: !1089, line: 91, baseType: !21, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1130, file: !1089, line: 97, baseType: !1142, size: 96)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !1089, line: 94, size: 96, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1142, file: !1089, line: 95, baseType: !1138, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1142, file: !1089, line: 96, baseType: !43, size: 32, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1130, file: !1089, line: 103, baseType: !1147, size: 128)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1130, file: !1089, line: 99, size: 128, elements: !1148)
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1147, file: !1089, line: 100, baseType: !33, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1147, file: !1089, line: 101, baseType: !43, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1147, file: !1089, line: 102, baseType: !43, size: 32, offset: 96)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1088, file: !1089, line: 111, baseType: !1153, size: 128)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 108, size: 128, elements: !1154)
!1154 = !{!1155, !1156}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1153, file: !1089, line: 109, baseType: !696, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1153, file: !1089, line: 110, baseType: !77, size: 32, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1088, file: !1089, line: 118, baseType: !1158, size: 128)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1089, line: 114, size: 128, elements: !1159)
!1159 = !{!1160, !1161, !1162}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1158, file: !1089, line: 115, baseType: !21, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1158, file: !1089, line: 116, baseType: !77, size: 32, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1158, file: !1089, line: 117, baseType: !18, size: 32, offset: 96)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !178, file: !101, line: 1208, baseType: !1164, size: 448, offset: 17664)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1165, line: 12, size: 448, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1166 = !{!1167, !1168, !1169, !1170, !1171, !1172, !1173}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1164, file: !1165, line: 15, baseType: !250, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1164, file: !1165, line: 17, baseType: !250, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1164, file: !1165, line: 19, baseType: !250, size: 64, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1164, file: !1165, line: 21, baseType: !250, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1164, file: !1165, line: 29, baseType: !250, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1164, file: !1165, line: 35, baseType: !250, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1164, file: !1165, line: 44, baseType: !250, size: 64, offset: 384)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !178, file: !101, line: 1215, baseType: !250, size: 64, offset: 18112)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !178, file: !101, line: 1217, baseType: !250, size: 64, offset: 18176)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !178, file: !101, line: 1219, baseType: !250, size: 64, offset: 18240)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !178, file: !101, line: 1223, baseType: !1178, size: 64, offset: 18304)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1179, line: 99, baseType: !1180)
!1179 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1179, line: 99, size: 64, elements: !1181)
!1181 = !{!1182}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1180, file: !1179, line: 99, baseType: !32, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !178, file: !101, line: 1225, baseType: !1184, size: 32, offset: 18368)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !406, line: 275, baseType: !1185)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !406, line: 275, size: 32, elements: !1186)
!1186 = !{!1187}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1185, file: !406, line: 275, baseType: !410, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !178, file: !101, line: 1226, baseType: !77, size: 32, offset: 18400)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !178, file: !101, line: 1227, baseType: !77, size: 32, offset: 18432)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !178, file: !101, line: 1231, baseType: !1191, size: 64, offset: 18496)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !101, line: 1231, flags: DIFlagFwdDecl)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !178, file: !101, line: 1233, baseType: !255, size: 128, offset: 18560)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !178, file: !101, line: 1240, baseType: !1195, size: 64, offset: 18688)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !101, line: 62, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !178, file: !101, line: 1242, baseType: !1198, size: 64, offset: 18752)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !101, line: 1242, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !178, file: !101, line: 1244, baseType: !255, size: 128, offset: 18816)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !178, file: !101, line: 1245, baseType: !1202, size: 64, offset: 18944)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !101, line: 51, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !178, file: !101, line: 1246, baseType: !672, size: 256, offset: 19008)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !178, file: !101, line: 1247, baseType: !18, size: 32, offset: 19264)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !178, file: !101, line: 1250, baseType: !1207, size: 64, offset: 19328)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !101, line: 57, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !178, file: !101, line: 1251, baseType: !672, size: 256, offset: 19392)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !178, file: !101, line: 1252, baseType: !255, size: 128, offset: 19648)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !178, file: !101, line: 1259, baseType: !1212, size: 64, offset: 19776)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !101, line: 54, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !178, file: !101, line: 1260, baseType: !713, size: 16, offset: 19840)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !178, file: !101, line: 1261, baseType: !713, size: 16, offset: 19856)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !178, file: !101, line: 1314, baseType: !1217, size: 64, offset: 19904)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1219, line: 62, size: 256, align: 256, elements: !1220)
!1219 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1218, file: !1219, line: 75, baseType: !43, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1218, file: !1219, line: 90, baseType: !43, size: 32, offset: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1218, file: !1219, line: 112, baseType: !251, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1218, file: !1219, line: 132, baseType: !43, size: 32, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1218, file: !1219, line: 140, baseType: !43, size: 32, offset: 160)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1218, file: !1219, line: 149, baseType: !43, size: 32, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1218, file: !1219, line: 154, baseType: !1228, offset: 224)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, elements: !751)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !178, file: !101, line: 1315, baseType: !41, size: 32, offset: 19968)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !178, file: !101, line: 1316, baseType: !41, size: 32, offset: 20000)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !178, file: !101, line: 1321, baseType: !33, size: 64, offset: 20032)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !178, file: !101, line: 1325, baseType: !77, size: 32, offset: 20096)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !178, file: !101, line: 1326, baseType: !77, size: 32, offset: 20128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !178, file: !101, line: 1327, baseType: !77, size: 32, offset: 20160)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !178, file: !101, line: 1328, baseType: !77, size: 32, offset: 20192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !178, file: !101, line: 1329, baseType: !878, size: 128, align: 64, offset: 20224)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !178, file: !101, line: 1332, baseType: !1238, size: 128, offset: 20352)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1239, line: 51, size: 128, elements: !1240)
!1239 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1240 = !{!1241, !1246, !1247}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1238, file: !1239, line: 60, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1243, line: 7, size: 64, elements: !1244)
!1243 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1244 = !{!1245}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1242, file: !1243, line: 12, baseType: !29, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1238, file: !1239, line: 63, baseType: !6, size: 8, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1238, file: !1239, line: 70, baseType: !6, size: 8, offset: 72)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !178, file: !101, line: 1335, baseType: !1249, size: 64, offset: 20480)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !101, line: 59, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !178, file: !101, line: 1337, baseType: !1252, size: 128, offset: 20544)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1239, line: 39, size: 128, elements: !1253)
!1253 = !{!1254, !1317, !1318}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1252, file: !1239, line: 40, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !531, line: 74, size: 512, align: 128, elements: !1257)
!1257 = !{!1258, !1259, !1311, !1316}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1256, file: !531, line: 75, baseType: !33, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1256, file: !531, line: 83, baseType: !1260, size: 320, offset: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1256, file: !531, line: 83, size: 320, elements: !1261)
!1261 = !{!1262, !1285, !1299, !1303, !1310}
!1262 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !531, line: 84, baseType: !1263, size: 320)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !531, line: 84, size: 320, elements: !1264)
!1264 = !{!1265, !1276, !1279, !1284}
!1265 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !531, line: 90, baseType: !1266, size: 128)
!1266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !531, line: 90, size: 128, elements: !1267)
!1267 = !{!1268, !1269, !1274, !1275}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1266, file: !531, line: 91, baseType: !255, size: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !531, line: 94, baseType: !1270, size: 128)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1266, file: !531, line: 94, size: 128, elements: !1271)
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1270, file: !531, line: 96, baseType: !21, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1270, file: !531, line: 98, baseType: !18, size: 32, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1266, file: !531, line: 102, baseType: !255, size: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1266, file: !531, line: 103, baseType: !255, size: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1263, file: !531, line: 106, baseType: !1277, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !531, line: 32, flags: DIFlagFwdDecl)
!1279 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !531, line: 107, baseType: !1280, size: 64, offset: 192)
!1280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !531, line: 107, size: 64, elements: !1281)
!1281 = !{!1282, !1283}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1280, file: !531, line: 108, baseType: !33, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1280, file: !531, line: 109, baseType: !33, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1263, file: !531, line: 117, baseType: !33, size: 64, offset: 256)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !531, line: 119, baseType: !1286, size: 320)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !531, line: 119, size: 320, elements: !1287)
!1287 = !{!1288, !1289, !1292, !1293, !1294}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1286, file: !531, line: 124, baseType: !33, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1286, file: !531, line: 125, baseType: !1290, size: 64, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !531, line: 125, flags: DIFlagFwdDecl)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1286, file: !531, line: 126, baseType: !33, size: 64, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1286, file: !531, line: 127, baseType: !33, size: 64, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1286, file: !531, line: 128, baseType: !1295, size: 64, offset: 256)
!1295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1286, file: !531, line: 128, size: 64, elements: !1296)
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1295, file: !531, line: 133, baseType: !33, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1295, file: !531, line: 138, baseType: !592, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !531, line: 141, baseType: !1300, size: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !531, line: 141, size: 64, elements: !1301)
!1301 = !{!1302}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1300, file: !531, line: 142, baseType: !33, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !531, line: 144, baseType: !1304, size: 128)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !531, line: 144, size: 128, elements: !1305)
!1305 = !{!1306, !1309}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1304, file: !531, line: 146, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !531, line: 146, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1304, file: !531, line: 147, baseType: !21, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1260, file: !531, line: 161, baseType: !878, size: 128, align: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1256, file: !531, line: 164, baseType: !1312, size: 32, offset: 384)
!1312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1256, file: !531, line: 164, size: 32, elements: !1313)
!1313 = !{!1314, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1312, file: !531, line: 169, baseType: !196, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1312, file: !531, line: 177, baseType: !18, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1256, file: !531, line: 181, baseType: !196, size: 32, offset: 416)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1252, file: !1239, line: 42, baseType: !43, size: 32, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1252, file: !1239, line: 43, baseType: !43, size: 32, offset: 96)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !178, file: !101, line: 1340, baseType: !1320, size: 64, offset: 20672)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !101, line: 69, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !178, file: !101, line: 1351, baseType: !77, size: 32, offset: 20736)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !178, file: !101, line: 1352, baseType: !77, size: 32, offset: 20768)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !178, file: !101, line: 1354, baseType: !33, size: 64, offset: 20800)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !178, file: !101, line: 1364, baseType: !250, size: 64, offset: 20864)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !178, file: !101, line: 1365, baseType: !250, size: 64, offset: 20928)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !178, file: !101, line: 1412, baseType: !33, size: 64, offset: 20992)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !178, file: !101, line: 1453, baseType: !1329, size: 64, offset: 21056)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !101, line: 1453, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !178, file: !101, line: 1457, baseType: !1332, size: 64, offset: 21120)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !731, line: 61, size: 576, elements: !1334)
!1334 = !{!1335, !1342, !1361, !1364, !1365, !1398, !1408}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1333, file: !731, line: 62, baseType: !1336, size: 32)
!1336 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !731, line: 51, baseType: !18, size: 32, elements: !1337)
!1337 = !{!1338, !1339, !1340, !1341}
!1338 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!1339 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!1340 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!1341 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !731, line: 64, baseType: !1343, size: 192, offset: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1333, file: !731, line: 64, size: 192, elements: !1344)
!1344 = !{!1345, !1356}
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !731, line: 65, baseType: !1346, size: 192)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1343, file: !731, line: 65, size: 192, elements: !1347)
!1347 = !{!1348, !1355}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1346, file: !731, line: 66, baseType: !1349, size: 128)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1350, line: 50, size: 128, elements: !1351)
!1350 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1351 = !{!1352, !1353, !1354}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1349, file: !1350, line: 52, baseType: !33, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1349, file: !1350, line: 54, baseType: !18, size: 32, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1349, file: !1350, line: 55, baseType: !18, size: 32, offset: 96)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1346, file: !731, line: 67, baseType: !33, size: 64, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !731, line: 70, baseType: !1357, size: 192)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1343, file: !731, line: 70, size: 192, elements: !1358)
!1358 = !{!1359, !1360}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1357, file: !731, line: 71, baseType: !878, size: 128, align: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1357, file: !731, line: 72, baseType: !33, size: 64, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1333, file: !731, line: 76, baseType: !1362, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !731, line: 76, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1333, file: !731, line: 77, baseType: !33, size: 64, offset: 320)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1333, file: !731, line: 79, baseType: !1366, size: 64, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1350, line: 25, size: 256, elements: !1368)
!1368 = !{!1369, !1375, !1379}
!1369 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !1350, line: 26, baseType: !1370, size: 128)
!1370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !1350, line: 26, size: 128, elements: !1371)
!1371 = !{!1372, !1374}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1370, file: !1350, line: 27, baseType: !1373, size: 128)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 128, elements: !960)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1370, file: !1350, line: 28, baseType: !1373, size: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1367, file: !1350, line: 31, baseType: !1376, size: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1378)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1350, line: 23, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !1350, line: 33, baseType: !1380, size: 64, offset: 192)
!1380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !1350, line: 33, size: 64, elements: !1381)
!1381 = !{!1382, !1388, !1393}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1380, file: !1350, line: 38, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1380, file: !1350, line: 34, size: 64, elements: !1384)
!1384 = !{!1385, !1386, !1387}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1383, file: !1350, line: 35, baseType: !651, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1383, file: !1350, line: 36, baseType: !370, size: 8, offset: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1383, file: !1350, line: 37, baseType: !370, size: 8, offset: 40)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1380, file: !1350, line: 42, baseType: !1389, size: 16)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1380, file: !1350, line: 39, size: 16, elements: !1390)
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1389, file: !1350, line: 40, baseType: !370, size: 8)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1389, file: !1350, line: 41, baseType: !370, size: 8, offset: 8)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1380, file: !1350, line: 46, baseType: !1394, size: 16)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1380, file: !1350, line: 43, size: 16, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1394, file: !1350, line: 44, baseType: !370, size: 8)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1394, file: !1350, line: 45, baseType: !370, size: 8, offset: 8)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1333, file: !731, line: 81, baseType: !1399, size: 64, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !731, line: 85, size: 384, elements: !1401)
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1407}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1400, file: !731, line: 86, baseType: !1362, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1400, file: !731, line: 87, baseType: !33, size: 64, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1400, file: !731, line: 88, baseType: !33, size: 64, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1400, file: !731, line: 89, baseType: !33, size: 64, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1400, file: !731, line: 90, baseType: !6, size: 8, offset: 256)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1400, file: !731, line: 92, baseType: !1399, size: 64, offset: 320)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1333, file: !731, line: 82, baseType: !18, size: 32, offset: 512)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !178, file: !101, line: 1463, baseType: !1410, offset: 21184)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !101, line: 739, elements: !559)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !178, file: !101, line: 1470, baseType: !878, size: 128, align: 64, offset: 21184)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !178, file: !101, line: 1471, baseType: !191, size: 32, offset: 21312)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !178, file: !101, line: 1472, baseType: !77, size: 32, offset: 21344)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !178, file: !101, line: 1474, baseType: !177, size: 64, offset: 21376)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !178, file: !101, line: 1475, baseType: !1416, size: 320, offset: 21440)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1417, line: 11, size: 320, elements: !1418)
!1417 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1418 = !{!1419, !1420, !1421, !1426}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1416, file: !1417, line: 16, baseType: !864, size: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1416, file: !1417, line: 17, baseType: !33, size: 64, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1416, file: !1417, line: 18, baseType: !1422, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !1425}
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1416, file: !1417, line: 19, baseType: !41, size: 32, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !178, file: !101, line: 1478, baseType: !1428, size: 64, offset: 21760)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1430, line: 49, size: 512, elements: !1431)
!1430 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1438, !1439, !1440, !1442}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1429, file: !1430, line: 50, baseType: !1428, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1429, file: !1430, line: 51, baseType: !21, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1429, file: !1430, line: 52, baseType: !33, size: 64, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1429, file: !1430, line: 53, baseType: !33, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1429, file: !1430, line: 54, baseType: !1437, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !1429, file: !1430, line: 56, baseType: !18, size: 32, offset: 320)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1429, file: !1430, line: 58, baseType: !18, size: 32, offset: 352)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1429, file: !1430, line: 59, baseType: !1441, size: 64, offset: 384)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !7, line: 159, baseType: !250)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1429, file: !1430, line: 60, baseType: !693, size: 64, offset: 448)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !178, file: !101, line: 1482, baseType: !191, size: 32, offset: 21824)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !178, file: !101, line: 1489, baseType: !21, size: 64, offset: 21888)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !178, file: !101, line: 1504, baseType: !21, size: 64, offset: 21952)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !178, file: !101, line: 1505, baseType: !251, size: 64, offset: 22016)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !178, file: !101, line: 1506, baseType: !250, size: 64, offset: 22080)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !178, file: !101, line: 1507, baseType: !251, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !178, file: !101, line: 1508, baseType: !251, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !178, file: !101, line: 1509, baseType: !251, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !178, file: !101, line: 1510, baseType: !878, size: 128, align: 64, offset: 22208)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !178, file: !101, line: 1511, baseType: !77, size: 32, offset: 22336)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !178, file: !101, line: 1515, baseType: !1454, size: 64, offset: 22400)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !209, line: 56, size: 64, elements: !1455)
!1455 = !{!1456}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1454, file: !209, line: 57, baseType: !212, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !178, file: !101, line: 1518, baseType: !1454, size: 64, offset: 22464)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !178, file: !101, line: 1528, baseType: !878, size: 128, align: 64, offset: 22528)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !178, file: !101, line: 1552, baseType: !1460, size: 35328, offset: 23040)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1461, line: 430, size: 35328, elements: !1462)
!1461 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1462 = !{!1463, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1492, !1493, !1494, !1495, !1496, !1497, !1500, !1501, !1502, !1503}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1460, file: !1461, line: 432, baseType: !1464, size: 192)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1465, size: 192, elements: !939)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1466, line: 16, size: 64, elements: !1467)
!1466 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1465, file: !1466, line: 17, baseType: !219, size: 16)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1465, file: !1466, line: 18, baseType: !219, size: 16, offset: 16)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1465, file: !1466, line: 19, baseType: !219, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1465, file: !1466, line: 19, baseType: !219, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1465, file: !1466, line: 19, baseType: !219, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1465, file: !1466, line: 19, baseType: !219, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1465, file: !1466, line: 19, baseType: !219, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1465, file: !1466, line: 20, baseType: !219, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1465, file: !1466, line: 20, baseType: !219, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1465, file: !1466, line: 20, baseType: !219, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1465, file: !1466, line: 20, baseType: !219, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1465, file: !1466, line: 20, baseType: !219, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1465, file: !1466, line: 20, baseType: !219, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1460, file: !1461, line: 436, baseType: !33, size: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1460, file: !1461, line: 440, baseType: !221, size: 16, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1460, file: !1461, line: 441, baseType: !221, size: 16, offset: 272)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1460, file: !1461, line: 442, baseType: !221, size: 16, offset: 288)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1460, file: !1461, line: 443, baseType: !221, size: 16, offset: 304)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1460, file: !1461, line: 447, baseType: !33, size: 64, offset: 320)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1460, file: !1461, line: 448, baseType: !33, size: 64, offset: 384)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1460, file: !1461, line: 459, baseType: !1489, size: 256, offset: 448)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1490, size: 256, elements: !653)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1461, line: 428, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1460, file: !1461, line: 461, baseType: !33, size: 64, offset: 704)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1460, file: !1461, line: 463, baseType: !33, size: 64, offset: 768)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1460, file: !1461, line: 465, baseType: !33, size: 64, offset: 832)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1460, file: !1461, line: 466, baseType: !33, size: 64, offset: 896)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1460, file: !1461, line: 467, baseType: !33, size: 64, offset: 960)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1460, file: !1461, line: 473, baseType: !1498, size: 64, offset: 1024)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1461, line: 10, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1460, file: !1461, line: 480, baseType: !33, size: 64, offset: 1088)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1460, file: !1461, line: 482, baseType: !18, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1460, file: !1461, line: 491, baseType: !41, size: 32, offset: 1184)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1460, file: !1461, line: 501, baseType: !1504, size: 33792, offset: 1536)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1505, line: 448, size: 33792, elements: !1506)
!1505 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1506 = !{!1507, !1508, !1509, !1677, !1678, !1684, !1685}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1504, file: !1505, line: 461, baseType: !18, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1504, file: !1505, line: 468, baseType: !33, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1504, file: !1505, line: 476, baseType: !1510, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1505, line: 356, size: 33280, align: 512, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1511, file: !1505, line: 358, baseType: !18, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1511, file: !1505, line: 361, baseType: !18, size: 32, offset: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1511, file: !1505, line: 364, baseType: !250, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1511, file: !1505, line: 367, baseType: !250, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1511, file: !1505, line: 370, baseType: !250, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1511, file: !1505, line: 373, baseType: !18, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1511, file: !1505, line: 376, baseType: !18, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1511, file: !1505, line: 391, baseType: !18, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1511, file: !1505, line: 394, baseType: !18, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1511, file: !1505, line: 397, baseType: !1523, size: 32768, offset: 512)
!1523 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1505, line: 348, size: 32768, elements: !1524)
!1524 = !{!1525, !1540, !1581, !1658, !1673}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1523, file: !1505, line: 349, baseType: !1526, size: 896)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1505, line: 12, size: 896, elements: !1527)
!1527 = !{!1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1539}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1526, file: !1505, line: 13, baseType: !41, size: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1526, file: !1505, line: 14, baseType: !41, size: 32, offset: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1526, file: !1505, line: 15, baseType: !41, size: 32, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1526, file: !1505, line: 16, baseType: !41, size: 32, offset: 96)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1526, file: !1505, line: 17, baseType: !41, size: 32, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1526, file: !1505, line: 18, baseType: !41, size: 32, offset: 160)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1526, file: !1505, line: 19, baseType: !41, size: 32, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1526, file: !1505, line: 22, baseType: !1536, size: 640, offset: 224)
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 640, elements: !1537)
!1537 = !{!1538}
!1538 = !DISubrange(count: 20)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1526, file: !1505, line: 25, baseType: !41, size: 32, offset: 864)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1523, file: !1505, line: 350, baseType: !1541, size: 4096, align: 128)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1505, line: 34, size: 4096, align: 128, elements: !1542)
!1542 = !{!1543, !1544, !1545, !1546, !1547, !1562, !1563, !1564, !1568, !1572, !1576}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1541, file: !1505, line: 35, baseType: !219, size: 16)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1541, file: !1505, line: 36, baseType: !219, size: 16, offset: 16)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1541, file: !1505, line: 37, baseType: !219, size: 16, offset: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1541, file: !1505, line: 38, baseType: !219, size: 16, offset: 48)
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !1505, line: 39, baseType: !1548, size: 128, offset: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !1505, line: 39, size: 128, elements: !1549)
!1549 = !{!1550, !1555}
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !1505, line: 40, baseType: !1551, size: 128)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1548, file: !1505, line: 40, size: 128, elements: !1552)
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1551, file: !1505, line: 41, baseType: !250, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1551, file: !1505, line: 42, baseType: !250, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !1505, line: 44, baseType: !1556, size: 128)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1548, file: !1505, line: 44, size: 128, elements: !1557)
!1557 = !{!1558, !1559, !1560, !1561}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1556, file: !1505, line: 45, baseType: !41, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1556, file: !1505, line: 46, baseType: !41, size: 32, offset: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1556, file: !1505, line: 47, baseType: !41, size: 32, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1556, file: !1505, line: 48, baseType: !41, size: 32, offset: 96)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1541, file: !1505, line: 51, baseType: !41, size: 32, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1541, file: !1505, line: 52, baseType: !41, size: 32, offset: 224)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1541, file: !1505, line: 55, baseType: !1565, size: 1024, offset: 256)
!1565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 1024, elements: !1566)
!1566 = !{!1567}
!1567 = !DISubrange(count: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1541, file: !1505, line: 58, baseType: !1569, size: 2048, offset: 1280)
!1569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2048, elements: !1570)
!1570 = !{!1571}
!1571 = !DISubrange(count: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1541, file: !1505, line: 60, baseType: !1573, size: 384, offset: 3328)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 384, elements: !1574)
!1574 = !{!1575}
!1575 = !DISubrange(count: 12)
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !1505, line: 62, baseType: !1577, size: 384, offset: 3712)
!1577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !1505, line: 62, size: 384, elements: !1578)
!1578 = !{!1579, !1580}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1577, file: !1505, line: 63, baseType: !1573, size: 384)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1577, file: !1505, line: 64, baseType: !1573, size: 384)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1523, file: !1505, line: 351, baseType: !1582, size: 1088)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1505, line: 79, size: 1088, elements: !1583)
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1657}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1582, file: !1505, line: 80, baseType: !41, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1582, file: !1505, line: 81, baseType: !41, size: 32, offset: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1582, file: !1505, line: 82, baseType: !41, size: 32, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1582, file: !1505, line: 83, baseType: !41, size: 32, offset: 96)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1582, file: !1505, line: 84, baseType: !41, size: 32, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1582, file: !1505, line: 85, baseType: !41, size: 32, offset: 160)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1582, file: !1505, line: 86, baseType: !41, size: 32, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1582, file: !1505, line: 88, baseType: !1536, size: 640, offset: 224)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1582, file: !1505, line: 89, baseType: !370, size: 8, offset: 864)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1582, file: !1505, line: 90, baseType: !370, size: 8, offset: 872)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1582, file: !1505, line: 91, baseType: !370, size: 8, offset: 880)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1582, file: !1505, line: 92, baseType: !370, size: 8, offset: 888)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1582, file: !1505, line: 93, baseType: !370, size: 8, offset: 896)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1582, file: !1505, line: 94, baseType: !370, size: 8, offset: 904)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1582, file: !1505, line: 95, baseType: !1599, size: 64, offset: 960)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1601, line: 11, size: 128, elements: !1602)
!1601 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1602 = !{!1603, !1604}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1600, file: !1601, line: 12, baseType: !696, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1600, file: !1601, line: 13, baseType: !1605, size: 64, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1607, line: 103, size: 1344, elements: !1608)
!1607 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1637, !1638, !1639}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1606, file: !1607, line: 109, baseType: !33, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1606, file: !1607, line: 110, baseType: !33, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1606, file: !1607, line: 111, baseType: !33, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1606, file: !1607, line: 112, baseType: !33, size: 64, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1606, file: !1607, line: 113, baseType: !33, size: 64, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1606, file: !1607, line: 114, baseType: !33, size: 64, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1606, file: !1607, line: 117, baseType: !33, size: 64, offset: 384)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1606, file: !1607, line: 118, baseType: !33, size: 64, offset: 448)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1606, file: !1607, line: 119, baseType: !33, size: 64, offset: 512)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1606, file: !1607, line: 120, baseType: !33, size: 64, offset: 576)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1606, file: !1607, line: 121, baseType: !33, size: 64, offset: 640)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1606, file: !1607, line: 122, baseType: !33, size: 64, offset: 704)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1606, file: !1607, line: 123, baseType: !33, size: 64, offset: 768)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1606, file: !1607, line: 124, baseType: !33, size: 64, offset: 832)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1606, file: !1607, line: 125, baseType: !33, size: 64, offset: 896)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1606, file: !1607, line: 139, baseType: !33, size: 64, offset: 960)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1606, file: !1607, line: 142, baseType: !33, size: 64, offset: 1024)
!1626 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1607, line: 144, baseType: !1627, size: 64, offset: 1088)
!1627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !1607, line: 144, size: 64, elements: !1628)
!1628 = !{!1629, !1630, !1631}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1627, file: !1607, line: 146, baseType: !219, size: 16)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1627, file: !1607, line: 148, baseType: !250, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1627, file: !1607, line: 150, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1607, line: 59, size: 64, elements: !1633)
!1633 = !{!1634, !1635, !1636}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1632, file: !1607, line: 61, baseType: !250, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1632, file: !1607, line: 63, baseType: !250, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1632, file: !1607, line: 65, baseType: !250, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1606, file: !1607, line: 153, baseType: !33, size: 64, offset: 1152)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1606, file: !1607, line: 154, baseType: !33, size: 64, offset: 1216)
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !1607, line: 156, baseType: !1640, size: 64, offset: 1280)
!1640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !1607, line: 156, size: 64, elements: !1641)
!1641 = !{!1642, !1643, !1644}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1640, file: !1607, line: 158, baseType: !219, size: 16)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1640, file: !1607, line: 160, baseType: !250, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1640, file: !1607, line: 162, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1607, line: 69, size: 64, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1645, file: !1607, line: 71, baseType: !250, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1645, file: !1607, line: 73, baseType: !250, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1645, file: !1607, line: 75, baseType: !250, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1645, file: !1607, line: 77, baseType: !250, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1645, file: !1607, line: 80, baseType: !250, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1645, file: !1607, line: 83, baseType: !250, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1645, file: !1607, line: 86, baseType: !250, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1645, file: !1607, line: 88, baseType: !250, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1645, file: !1607, line: 93, baseType: !250, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1645, file: !1607, line: 100, baseType: !250, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1582, file: !1505, line: 96, baseType: !41, size: 32, offset: 1024)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1523, file: !1505, line: 352, baseType: !1659, size: 4608, align: 512)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1505, line: 333, size: 4608, align: 512, elements: !1660)
!1660 = !{!1661, !1662, !1671}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1659, file: !1505, line: 334, baseType: !1541, size: 4096, align: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1659, file: !1505, line: 335, baseType: !1663, size: 512, offset: 4096)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1505, line: 312, size: 512, elements: !1664)
!1664 = !{!1665, !1666, !1667}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1663, file: !1505, line: 313, baseType: !250, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1663, file: !1505, line: 314, baseType: !250, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1663, file: !1505, line: 315, baseType: !1668, size: 384, offset: 128)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 384, elements: !1669)
!1669 = !{!1670}
!1670 = !DISubrange(count: 6)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1659, file: !1505, line: 336, baseType: !1672, offset: 4608)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, elements: !751)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1523, file: !1505, line: 353, baseType: !1674, size: 32768)
!1674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 32768, elements: !1675)
!1675 = !{!1676}
!1676 = !DISubrange(count: 4096)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1504, file: !1505, line: 484, baseType: !1510, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1504, file: !1505, line: 491, baseType: !1679, size: 128, offset: 256)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1505, line: 404, size: 128, elements: !1680)
!1680 = !{!1681, !1682, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1679, file: !1505, line: 424, baseType: !250, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1679, file: !1505, line: 432, baseType: !18, size: 32, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1679, file: !1505, line: 440, baseType: !18, size: 32, offset: 96)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1504, file: !1505, line: 498, baseType: !1679, size: 128, offset: 384)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1504, file: !1505, line: 508, baseType: !1511, size: 33280, align: 512, offset: 512)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !158, file: !116, line: 125, baseType: !157, size: 64, offset: 384)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !158, file: !116, line: 126, baseType: !18, size: 32, offset: 448)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !158, file: !116, line: 127, baseType: !18, size: 32, offset: 480)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !158, file: !116, line: 128, baseType: !33, size: 64, offset: 512)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !158, file: !116, line: 129, baseType: !33, size: 64, offset: 576)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !158, file: !116, line: 130, baseType: !54, size: 64, offset: 640)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !158, file: !116, line: 131, baseType: !1693, size: 64, offset: 704)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !116, line: 131, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !10, file: !11, line: 61, baseType: !18, size: 32, offset: 960)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !10, file: !11, line: 62, baseType: !18, size: 32, offset: 992)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !10, file: !11, line: 63, baseType: !18, size: 32, offset: 1024)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !10, file: !11, line: 64, baseType: !18, size: 32, offset: 1056)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !10, file: !11, line: 65, baseType: !18, size: 32, offset: 1088)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !10, file: !11, line: 66, baseType: !18, size: 32, offset: 1120)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !10, file: !11, line: 67, baseType: !33, size: 64, offset: 1152)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !10, file: !11, line: 68, baseType: !18, size: 32, offset: 1216)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !10, file: !11, line: 69, baseType: !196, size: 32, offset: 1248)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !10, file: !11, line: 70, baseType: !77, size: 32, offset: 1280)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !10, file: !11, line: 71, baseType: !353, size: 32, offset: 1312)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !10, file: !11, line: 72, baseType: !1707, size: 64, offset: 1344)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !10, file: !11, line: 73, baseType: !78, size: 64, offset: 1408)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_hint", scope: !10, file: !11, line: 75, baseType: !78, size: 64, offset: 1472)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_notify", scope: !10, file: !11, line: 76, baseType: !1711, size: 64, offset: 1536)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_notify", file: !116, line: 261, size: 448, elements: !1713)
!1713 = !{!1714, !1715, !1720, !1721, !1725}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1712, file: !116, line: 262, baseType: !18, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1712, file: !116, line: 263, baseType: !1716, size: 32, offset: 32)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1717, line: 19, size: 32, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1718 = !{!1719}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1716, file: !1717, line: 20, baseType: !191, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1712, file: !116, line: 264, baseType: !738, size: 256, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1712, file: !116, line: 265, baseType: !1722, size: 64, offset: 320)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{null, !1711, !480}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1712, file: !116, line: 266, baseType: !1726, size: 64, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{null, !1729}
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mask", scope: !10, file: !11, line: 78, baseType: !26, size: 64, offset: 1600)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !10, file: !11, line: 81, baseType: !33, size: 64, offset: 1664)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !10, file: !11, line: 82, baseType: !196, size: 32, offset: 1728)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !10, file: !11, line: 83, baseType: !871, size: 192, offset: 1792)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !10, file: !11, line: 85, baseType: !18, size: 32, offset: 1984)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !10, file: !11, line: 86, baseType: !18, size: 32, offset: 2016)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !10, file: !11, line: 87, baseType: !18, size: 32, offset: 2048)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !10, file: !11, line: 88, baseType: !18, size: 32, offset: 2080)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !10, file: !11, line: 91, baseType: !1693, size: 64, offset: 2112)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !10, file: !11, line: 98, baseType: !878, size: 128, align: 64, offset: 2176)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !10, file: !11, line: 99, baseType: !1741, size: 512, offset: 2304)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1742, line: 64, size: 512, elements: !1743)
!1742 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1743 = !{!1744, !1745, !1746, !1748, !1790, !1967, !2076, !2077, !2078, !2079, !2080, !2081}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1741, file: !1742, line: 65, baseType: !54, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1741, file: !1742, line: 66, baseType: !255, size: 128, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1741, file: !1742, line: 67, baseType: !1747, size: 64, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1741, file: !1742, line: 68, baseType: !1749, size: 64, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1742, line: 168, size: 768, elements: !1751)
!1751 = !{!1752, !1753, !1754, !1755}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1750, file: !1742, line: 169, baseType: !255, size: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1750, file: !1742, line: 170, baseType: !548, size: 32, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1750, file: !1742, line: 171, baseType: !1741, size: 512, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1750, file: !1742, line: 172, baseType: !1756, size: 64, offset: 704)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1758)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1742, line: 133, size: 192, elements: !1759)
!1759 = !{!1760, !1767, !1772}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1758, file: !1742, line: 134, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1762)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!77, !1765}
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1741)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1758, file: !1742, line: 135, baseType: !1768, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1769)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!54, !1765}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1758, file: !1742, line: 136, baseType: !1773, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1774)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!77, !1765, !1777}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1742, line: 125, size: 20736, elements: !1779)
!1779 = !{!1780, !1782, !1784, !1785, !1789}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1778, file: !1742, line: 126, baseType: !1781, size: 192)
!1781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1041, size: 192, elements: !939)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1778, file: !1742, line: 127, baseType: !1783, size: 4096, offset: 192)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1041, size: 4096, elements: !1570)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1778, file: !1742, line: 128, baseType: !77, size: 32, offset: 4288)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1778, file: !1742, line: 129, baseType: !1786, size: 16384, offset: 4320)
!1786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 16384, elements: !1787)
!1787 = !{!1788}
!1788 = !DISubrange(count: 2048)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1778, file: !1742, line: 130, baseType: !77, size: 32, offset: 20704)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1741, file: !1742, line: 69, baseType: !1791, size: 64, offset: 320)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1742, line: 116, size: 384, elements: !1794)
!1794 = !{!1795, !1799, !1821, !1914, !1951, !1955}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1793, file: !1742, line: 117, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !1747}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1793, file: !1742, line: 118, baseType: !1800, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1802)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1803, line: 254, size: 128, elements: !1804)
!1803 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1804 = !{!1805, !1817}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1802, file: !1803, line: 255, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!1809, !1747, !1811, !1041}
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !7, line: 66, baseType: !1810)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !403, line: 73, baseType: !1123)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1803, line: 30, size: 128, elements: !1813)
!1813 = !{!1814, !1815}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1812, file: !1803, line: 31, baseType: !54, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1812, file: !1803, line: 32, baseType: !1816, size: 16, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !7, line: 24, baseType: !221)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1802, file: !1803, line: 256, baseType: !1818, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!1809, !1747, !1811, !54, !1011}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1793, file: !1742, line: 119, baseType: !1822, size: 64, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1825)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1803, line: 84, size: 320, elements: !1826)
!1826 = !{!1827, !1828, !1832, !1910, !1912}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1825, file: !1803, line: 85, baseType: !54, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1825, file: !1803, line: 86, baseType: !1829, size: 64, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!1816, !1747, !1811, !77}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1825, file: !1803, line: 88, baseType: !1833, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!1816, !1747, !1836, !77}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1803, line: 175, size: 512, elements: !1838)
!1838 = !{!1839, !1840, !1841, !1842, !1846, !1852, !1853}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1837, file: !1803, line: 176, baseType: !1812, size: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1837, file: !1803, line: 177, baseType: !1011, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1837, file: !1803, line: 178, baseType: !21, size: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1837, file: !1803, line: 179, baseType: !1843, size: 64, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!1277}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1837, file: !1803, line: 180, baseType: !1847, size: 64, offset: 320)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!1809, !566, !1747, !1836, !1041, !1850, !1011}
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !7, line: 52, baseType: !1851)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !403, line: 88, baseType: !268)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1837, file: !1803, line: 182, baseType: !1847, size: 64, offset: 384)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1837, file: !1803, line: 184, baseType: !1854, size: 64, offset: 448)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!77, !566, !1747, !1836, !1857}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !531, line: 625, size: 1344, elements: !1859)
!1859 = !{!1860, !1869, !1870, !1876, !1883, !1884, !1889, !1890, !1895, !1896, !1899, !1903, !1904, !1905, !1906, !1907, !1908}
!1860 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !531, line: 628, baseType: !1861, size: 128)
!1861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !531, line: 628, size: 128, elements: !1862)
!1862 = !{!1863, !1868}
!1863 = !DIDerivedType(tag: DW_TAG_member, scope: !1861, file: !531, line: 629, baseType: !1864, size: 128)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1861, file: !531, line: 629, size: 128, elements: !1865)
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1864, file: !531, line: 631, baseType: !33, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1864, file: !531, line: 632, baseType: !33, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1861, file: !531, line: 635, baseType: !878, size: 128, align: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1858, file: !531, line: 639, baseType: !529, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1858, file: !531, line: 640, baseType: !1871, size: 64, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !568, line: 297, baseType: !1872)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !568, line: 297, size: 64, elements: !1873)
!1873 = !{!1874}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1872, file: !568, line: 297, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !581, line: 19, baseType: !33)
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !531, line: 646, baseType: !1877, size: 64, offset: 256)
!1877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !531, line: 646, size: 64, elements: !1878)
!1878 = !{!1879, !1882}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1877, file: !531, line: 647, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1881)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !531, line: 542, baseType: !33)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1877, file: !531, line: 648, baseType: !1881, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1858, file: !531, line: 666, baseType: !77, size: 32, offset: 320)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1858, file: !531, line: 667, baseType: !1885, size: 64, offset: 384)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !531, line: 579, size: 320, elements: !1887)
!1887 = !{!1888}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1886, file: !531, line: 580, baseType: !601, size: 320)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1858, file: !531, line: 670, baseType: !6, size: 8, offset: 448)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1858, file: !531, line: 681, baseType: !1891, size: 256, offset: 512)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !531, line: 678, size: 256, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1891, file: !531, line: 679, baseType: !242, size: 192, align: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1891, file: !531, line: 680, baseType: !33, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1858, file: !531, line: 689, baseType: !255, size: 128, offset: 768)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1858, file: !531, line: 691, baseType: !1897, size: 64, offset: 896)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !531, line: 691, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1858, file: !531, line: 694, baseType: !1900, size: 64, offset: 960)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1902)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !531, line: 694, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1858, file: !531, line: 697, baseType: !33, size: 64, offset: 1024)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1858, file: !531, line: 699, baseType: !566, size: 64, offset: 1088)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1858, file: !531, line: 700, baseType: !21, size: 64, offset: 1152)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1858, file: !531, line: 711, baseType: !592, size: 64, offset: 1216)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1858, file: !531, line: 717, baseType: !1212, size: 64, offset: 1280)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1858, file: !531, line: 722, baseType: !1909, offset: 1344)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !531, line: 570, elements: !559)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1825, file: !1803, line: 90, baseType: !1911, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1825, file: !1803, line: 91, baseType: !1913, size: 64, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1793, file: !1742, line: 120, baseType: !1915, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!1918, !1765}
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1920)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1921, line: 39, size: 384, elements: !1922)
!1921 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!1922 = !{!1923, !1929, !1933, !1937, !1943, !1947}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1920, file: !1921, line: 40, baseType: !1924, size: 32)
!1924 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1921, line: 26, baseType: !18, size: 32, elements: !1925)
!1925 = !{!1926, !1927, !1928}
!1926 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!1927 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!1928 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1920, file: !1921, line: 41, baseType: !1930, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!6}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1920, file: !1921, line: 42, baseType: !1934, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!21}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1920, file: !1921, line: 43, baseType: !1938, size: 64, offset: 192)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!693, !1941}
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1921, line: 19, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1920, file: !1921, line: 44, baseType: !1944, size: 64, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!693}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1920, file: !1921, line: 45, baseType: !1948, size: 64, offset: 320)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !21}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1793, file: !1742, line: 121, baseType: !1952, size: 64, offset: 256)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!693, !1765}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1793, file: !1742, line: 122, baseType: !1956, size: 64, offset: 320)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !1765, !1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !722, line: 28, baseType: !1962)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !722, line: 26, size: 32, elements: !1963)
!1963 = !{!1964}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1962, file: !722, line: 27, baseType: !1965, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !7, line: 38, baseType: !1966)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !403, line: 50, baseType: !18)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1741, file: !1742, line: 70, baseType: !1968, size: 64, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1970, line: 190, size: 1152, elements: !1971)
!1970 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1971 = !{!1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !2068, !2069, !2070, !2071, !2072, !2075}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1969, file: !1970, line: 191, baseType: !196, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1969, file: !1970, line: 192, baseType: !196, size: 32, offset: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1969, file: !1970, line: 202, baseType: !1968, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1969, file: !1970, line: 203, baseType: !54, size: 64, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1969, file: !1970, line: 205, baseType: !242, size: 192, align: 64, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1969, file: !1970, line: 207, baseType: !693, size: 64, offset: 384)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1969, file: !1970, line: 208, baseType: !18, size: 32, offset: 448)
!1979 = !DIDerivedType(tag: DW_TAG_member, scope: !1969, file: !1970, line: 209, baseType: !1980, size: 256, offset: 512)
!1980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1969, file: !1970, line: 209, size: 256, elements: !1981)
!1981 = !{!1982, !1991, !1995}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1980, file: !1970, line: 210, baseType: !1983, size: 256)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1970, line: 153, size: 256, elements: !1984)
!1984 = !{!1985, !1986, !1987, !1990}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1983, file: !1970, line: 154, baseType: !33, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1983, file: !1970, line: 156, baseType: !422, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1983, file: !1970, line: 162, baseType: !1988, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1970, line: 162, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1983, file: !1970, line: 167, baseType: !33, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1980, file: !1970, line: 211, baseType: !1992, size: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1970, line: 170, size: 64, elements: !1993)
!1993 = !{!1994}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1992, file: !1970, line: 171, baseType: !1968, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1980, file: !1970, line: 212, baseType: !1996, size: 256)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1970, line: 174, size: 256, elements: !1997)
!1997 = !{!1998, !2063, !2066, !2067}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1996, file: !1970, line: 175, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2001)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1970, line: 271, size: 768, elements: !2002)
!2002 = !{!2003, !2023, !2027, !2031, !2036, !2040, !2044, !2048, !2049, !2050, !2051, !2059}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2001, file: !1970, line: 276, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!77, !2007}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1970, line: 251, size: 1216, elements: !2009)
!2009 = !{!2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2008, file: !1970, line: 253, baseType: !1968, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2008, file: !1970, line: 254, baseType: !566, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2008, file: !1970, line: 255, baseType: !99, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2008, file: !1970, line: 256, baseType: !21, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2008, file: !1970, line: 259, baseType: !672, size: 256, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2008, file: !1970, line: 260, baseType: !672, size: 256, offset: 512)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2008, file: !1970, line: 261, baseType: !77, size: 32, offset: 768)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2008, file: !1970, line: 262, baseType: !255, size: 128, offset: 832)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2008, file: !1970, line: 263, baseType: !1041, size: 64, offset: 960)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2008, file: !1970, line: 265, baseType: !1011, size: 64, offset: 1024)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2008, file: !1970, line: 266, baseType: !6, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2008, file: !1970, line: 267, baseType: !6, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2008, file: !1970, line: 268, baseType: !1900, size: 64, offset: 1152)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2001, file: !1970, line: 277, baseType: !2024, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !2007}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2001, file: !1970, line: 290, baseType: !2028, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!77, !99, !21}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2001, file: !1970, line: 292, baseType: !2032, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!21, !99, !2035}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2001, file: !1970, line: 293, baseType: !2037, size: 64, offset: 256)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!21, !99, !21, !2035}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2001, file: !1970, line: 294, baseType: !2041, size: 64, offset: 320)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !99, !21}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2001, file: !1970, line: 296, baseType: !2045, size: 64, offset: 384)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!1809, !2007, !1041, !1011, !1850}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2001, file: !1970, line: 306, baseType: !1011, size: 64, offset: 448)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2001, file: !1970, line: 313, baseType: !6, size: 8, offset: 512)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2001, file: !1970, line: 314, baseType: !2045, size: 64, offset: 576)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2001, file: !1970, line: 317, baseType: !2052, size: 64, offset: 640)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!2055, !2007, !2057}
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2056, line: 59, baseType: !18)
!2056 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1970, line: 31, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2001, file: !1970, line: 320, baseType: !2060, size: 64, offset: 704)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!77, !2007, !1857}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1996, file: !1970, line: 176, baseType: !2064, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1970, line: 35, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1996, file: !1970, line: 177, baseType: !1850, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1996, file: !1970, line: 178, baseType: !1968, size: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1969, file: !1970, line: 215, baseType: !21, size: 64, offset: 768)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1969, file: !1970, line: 221, baseType: !250, size: 64, offset: 832)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1969, file: !1970, line: 223, baseType: !221, size: 16, offset: 896)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1969, file: !1970, line: 224, baseType: !1816, size: 16, offset: 912)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1969, file: !1970, line: 225, baseType: !2073, size: 64, offset: 960)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1970, line: 36, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1969, file: !1970, line: 227, baseType: !878, size: 128, align: 64, offset: 1024)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1741, file: !1742, line: 71, baseType: !1716, size: 32, offset: 448)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1741, file: !1742, line: 73, baseType: !18, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1741, file: !1742, line: 74, baseType: !18, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1741, file: !1742, line: 75, baseType: !18, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1741, file: !1742, line: 76, baseType: !18, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1741, file: !1742, line: 77, baseType: !18, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !10, file: !11, line: 101, baseType: !672, size: 256, offset: 2816)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !10, file: !11, line: 102, baseType: !77, size: 32, offset: 3072)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !10, file: !11, line: 103, baseType: !2085, size: 64, offset: 3136)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !2087, line: 402, size: 9216, align: 512, elements: !2088)
!2087 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!2088 = !{!2089, !2096, !2097, !2101, !2111, !2137, !2138, !2139, !2140, !2144, !2147, !2148, !2149, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2216, !2220, !2240, !2257, !2258, !2259, !2260, !2269, !2292, !2293, !2296, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2310, !2311, !2400, !2408, !2409, !2410, !2412, !2416, !2417, !2421, !2422, !2423, !2424, !2426, !2427, !2428, !2435, !2436, !2437, !2441}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2086, file: !2087, line: 403, baseType: !2090, size: 32)
!2090 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !2087, line: 312, baseType: !18, size: 32, elements: !2091)
!2091 = !{!2092, !2093, !2094, !2095}
!2092 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!2093 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!2094 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!2095 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2086, file: !2087, line: 406, baseType: !255, size: 128, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2086, file: !2087, line: 409, baseType: !2098, size: 448, offset: 192)
!2098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 448, elements: !2099)
!2099 = !{!2100}
!2100 = !DISubrange(count: 56)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !2086, file: !2087, line: 417, baseType: !2102, size: 768, offset: 640)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !2087, line: 45, size: 768, elements: !2103)
!2103 = !{!2104, !2105, !2106, !2107, !2110}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2102, file: !2087, line: 46, baseType: !1741, size: 512)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2102, file: !2087, line: 47, baseType: !2085, size: 64, offset: 512)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !2102, file: !2087, line: 48, baseType: !1747, size: 64, offset: 576)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !2102, file: !2087, line: 49, baseType: !2108, size: 64, offset: 640)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !2087, line: 49, flags: DIFlagFwdDecl)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !2102, file: !2087, line: 50, baseType: !899, size: 64, offset: 704)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !2086, file: !2087, line: 418, baseType: !2112, size: 64, offset: 1408)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !2087, line: 53, size: 448, elements: !2114)
!2114 = !{!2115, !2116, !2121, !2125, !2129, !2133}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2113, file: !2087, line: 54, baseType: !1812, size: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2113, file: !2087, line: 55, baseType: !2117, size: 64, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!1809, !2112, !2120, !1041}
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2113, file: !2087, line: 57, baseType: !2122, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!1809, !2112, !2120, !54, !1011}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2113, file: !2087, line: 59, baseType: !2126, size: 64, offset: 256)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{null, !2085, !54}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2113, file: !2087, line: 60, baseType: !2130, size: 64, offset: 320)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!77, !2085}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2113, file: !2087, line: 61, baseType: !2134, size: 64, offset: 384)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null, !2085}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2086, file: !2087, line: 419, baseType: !54, size: 64, offset: 1472)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !2086, file: !2087, line: 420, baseType: !54, size: 64, offset: 1536)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !2086, file: !2087, line: 421, baseType: !1747, size: 64, offset: 1600)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !2086, file: !2087, line: 424, baseType: !2141, size: 64, offset: 1664)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2143)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !2087, line: 424, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !2086, file: !2087, line: 425, baseType: !2145, size: 64, offset: 1728)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !2086, file: !2087, line: 426, baseType: !18, size: 32, offset: 1792)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !2086, file: !2087, line: 435, baseType: !672, size: 256, offset: 1856)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !2086, file: !2087, line: 437, baseType: !2150, size: 64, offset: 2112)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2152, line: 69, size: 320, elements: !2153)
!2152 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2153 = !{!2154, !2155, !2156, !2173, !2175, !2179, !2180}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2151, file: !2152, line: 70, baseType: !54, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2151, file: !2152, line: 71, baseType: !2085, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2151, file: !2152, line: 72, baseType: !2157, size: 64, offset: 128)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2159)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2152, line: 47, size: 256, elements: !2160)
!2160 = !{!2161, !2162, !2168, !2172}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2159, file: !2152, line: 49, baseType: !18, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2159, file: !2152, line: 51, baseType: !2163, size: 64, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!77, !54, !2166}
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2151)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2159, file: !2152, line: 53, baseType: !2169, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!77, !1041, !2166}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2159, file: !2152, line: 55, baseType: !1948, size: 64, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2151, file: !2152, line: 73, baseType: !2174, size: 16, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2151, file: !2152, line: 74, baseType: !2176, size: 8, offset: 208)
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !42, line: 16, baseType: !2177)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !44, line: 20, baseType: !2178)
!2178 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2151, file: !2152, line: 75, baseType: !370, size: 8, offset: 216)
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !2151, file: !2152, line: 76, baseType: !2181, size: 64, offset: 256)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2151, file: !2152, line: 76, size: 64, elements: !2182)
!2182 = !{!2183, !2184, !2191}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2181, file: !2152, line: 77, baseType: !21, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2181, file: !2152, line: 78, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2187)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2152, line: 86, size: 128, elements: !2188)
!2188 = !{!2189, !2190}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2187, file: !2152, line: 87, baseType: !18, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2187, file: !2152, line: 88, baseType: !1041, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2181, file: !2152, line: 79, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2194)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2152, line: 92, size: 256, elements: !2195)
!2195 = !{!2196, !2197, !2198, !2199, !2200}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2194, file: !2152, line: 94, baseType: !18, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2194, file: !2152, line: 95, baseType: !18, size: 32, offset: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2194, file: !2152, line: 96, baseType: !149, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2194, file: !2152, line: 97, baseType: !2157, size: 64, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2194, file: !2152, line: 98, baseType: !21, size: 64, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !2086, file: !2087, line: 438, baseType: !18, size: 32, offset: 2176)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !2086, file: !2087, line: 441, baseType: !18, size: 32, offset: 2208)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !2086, file: !2087, line: 442, baseType: !2141, size: 64, offset: 2240)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !2086, file: !2087, line: 443, baseType: !2145, size: 64, offset: 2304)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !2086, file: !2087, line: 444, baseType: !6, size: 8, offset: 2368)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !2086, file: !2087, line: 451, baseType: !6, size: 8, offset: 2376)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !2086, file: !2087, line: 454, baseType: !18, size: 32, offset: 2400)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2086, file: !2087, line: 455, baseType: !2209, size: 64, offset: 2432)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2211, line: 23, size: 96, elements: !2212)
!2211 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2212 = !{!2213, !2214, !2215}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2210, file: !2211, line: 24, baseType: !77, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2210, file: !2211, line: 24, baseType: !77, size: 32, offset: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2210, file: !2211, line: 24, baseType: !77, size: 32, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2086, file: !2087, line: 458, baseType: !2217, size: 64, offset: 2496)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!77}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2086, file: !2087, line: 460, baseType: !2221, size: 4032, align: 512, offset: 2560)
!2221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2222, size: 4032, elements: !2238)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !2087, line: 362, size: 576, elements: !2223)
!2223 = !{!2224, !2225, !2226}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2222, file: !2087, line: 363, baseType: !21, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2222, file: !2087, line: 364, baseType: !18, size: 32, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2222, file: !2087, line: 367, baseType: !2227, size: 448, offset: 128)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !2087, line: 319, size: 448, elements: !2228)
!2228 = !{!2229, !2230}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2227, file: !2087, line: 320, baseType: !2085, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2227, file: !2087, line: 321, baseType: !2231, size: 384, offset: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2232, line: 40, size: 384, elements: !2233)
!2232 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2233 = !{!2234}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2231, file: !2232, line: 41, baseType: !2235, size: 384, align: 64)
!2235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 384, align: 64, elements: !2236)
!2236 = !{!2237}
!2237 = !DISubrange(count: 2)
!2238 = !{!2239}
!2239 = !DISubrange(count: 7)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2086, file: !2087, line: 463, baseType: !2241, size: 192, offset: 6592)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2242, line: 8, size: 192, elements: !2243)
!2242 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2243 = !{!2244, !2245, !2246}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2241, file: !2242, line: 10, baseType: !18, size: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2241, file: !2242, line: 11, baseType: !911, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2241, file: !2242, line: 12, baseType: !2247, size: 64, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2249, line: 59, size: 48, elements: !2250)
!2249 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2250 = !{!2251, !2252, !2253, !2254, !2255, !2256}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2248, file: !2249, line: 60, baseType: !711, size: 16)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2248, file: !2249, line: 61, baseType: !711, size: 16, offset: 16)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2248, file: !2249, line: 63, baseType: !18, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2248, file: !2249, line: 64, baseType: !18, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2248, file: !2249, line: 65, baseType: !18, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2248, file: !2249, line: 66, baseType: !18, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !2086, file: !2087, line: 465, baseType: !33, size: 64, offset: 6784)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !2086, file: !2087, line: 469, baseType: !18, size: 32, offset: 6848)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !2086, file: !2087, line: 470, baseType: !255, size: 128, offset: 6912)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !2086, file: !2087, line: 471, baseType: !2261, size: 64, offset: 7040)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2263, line: 33, size: 96, elements: !2264)
!2263 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2264 = !{!2265, !2266, !2267, !2268}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2262, file: !2263, line: 37, baseType: !77, size: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2262, file: !2263, line: 43, baseType: !77, size: 32, offset: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2262, file: !2263, line: 45, baseType: !221, size: 16, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2262, file: !2263, line: 47, baseType: !221, size: 16, offset: 80)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !2086, file: !2087, line: 476, baseType: !2270, size: 64, offset: 7104)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !2087, line: 378, size: 256, elements: !2272)
!2272 = !{!2273, !2289, !2290, !2291}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2271, file: !2087, line: 379, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2276, line: 204, baseType: !2277)
!2276 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2276, line: 197, size: 192, elements: !2278)
!2278 = !{!2279, !2281, !2282, !2283, !2285, !2287}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2277, file: !2276, line: 198, baseType: !2280, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2276, line: 21, baseType: !43)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2277, file: !2276, line: 199, baseType: !372, size: 8, offset: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2277, file: !2276, line: 200, baseType: !372, size: 8, offset: 40)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2277, file: !2276, line: 201, baseType: !2284, size: 16, offset: 48)
!2284 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2276, line: 17, baseType: !220)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2277, file: !2276, line: 202, baseType: !2286, size: 64, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2276, line: 16, baseType: !251)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2277, file: !2276, line: 203, baseType: !2288, size: 64, offset: 128)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2276, line: 22, baseType: !251)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2271, file: !2087, line: 380, baseType: !18, size: 32, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2271, file: !2087, line: 381, baseType: !1041, size: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2271, file: !2087, line: 382, baseType: !1041, size: 64, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !2086, file: !2087, line: 477, baseType: !2271, size: 256, offset: 7168)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !2086, file: !2087, line: 480, baseType: !2294, size: 64, offset: 7424)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !2087, line: 480, flags: DIFlagFwdDecl)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !2086, file: !2087, line: 483, baseType: !2297, size: 64, offset: 7488)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !2087, line: 483, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2086, file: !2087, line: 488, baseType: !1041, size: 64, offset: 7552)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !2086, file: !2087, line: 492, baseType: !21, size: 64, offset: 7616)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !2086, file: !2087, line: 493, baseType: !18, size: 32, offset: 7680)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !2086, file: !2087, line: 495, baseType: !21, size: 64, offset: 7744)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !2086, file: !2087, line: 496, baseType: !18, size: 32, offset: 7808)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !2086, file: !2087, line: 499, baseType: !18, size: 32, offset: 7840)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !2086, file: !2087, line: 500, baseType: !2306, size: 64, offset: 7872)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2308, line: 45, baseType: !2309)
!2308 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !2086, file: !2087, line: 503, baseType: !18, size: 32, offset: 7936)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !2086, file: !2087, line: 504, baseType: !2312, size: 64, offset: 8000)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2315, line: 96, size: 192, elements: !2316)
!2315 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2316 = !{!2317, !2318, !2361, !2364}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2314, file: !2315, line: 97, baseType: !18, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2314, file: !2315, line: 98, baseType: !2319, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2315, line: 24, size: 3072, elements: !2321)
!2321 = !{!2322, !2324, !2325, !2326, !2327, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2358, !2359, !2360}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2320, file: !2315, line: 26, baseType: !2323, size: 128)
!2323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 128, elements: !2236)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2320, file: !2315, line: 27, baseType: !2323, size: 128, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2320, file: !2315, line: 28, baseType: !77, size: 32, offset: 256)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2320, file: !2315, line: 31, baseType: !548, size: 32, align: 512, offset: 512)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2320, file: !2315, line: 32, baseType: !2328, size: 960, offset: 576)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2329, line: 206, size: 960, elements: !2330)
!2329 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2330 = !{!2331, !2332, !2335, !2337, !2338, !2340}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2328, file: !2329, line: 207, baseType: !881, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2328, file: !2329, line: 208, baseType: !2333, size: 256, offset: 64)
!2333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2334, size: 256, elements: !653)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2328, file: !2329, line: 209, baseType: !2336, size: 256, offset: 320)
!2336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !653)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2328, file: !2329, line: 213, baseType: !696, size: 64, offset: 576)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2328, file: !2329, line: 215, baseType: !2339, size: 256, offset: 640)
!2339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 256, elements: !653)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2328, file: !2329, line: 216, baseType: !370, size: 8, offset: 896)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2320, file: !2315, line: 33, baseType: !33, size: 64, offset: 1536)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2320, file: !2315, line: 34, baseType: !33, size: 64, offset: 1600)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2320, file: !2315, line: 35, baseType: !6, size: 8, offset: 1664)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2320, file: !2315, line: 36, baseType: !1416, size: 320, offset: 1728)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2320, file: !2315, line: 37, baseType: !738, size: 256, offset: 2048)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2320, file: !2315, line: 38, baseType: !878, size: 128, align: 64, offset: 2304)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2320, file: !2315, line: 39, baseType: !2348, size: 64, offset: 2432)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2315, line: 49, size: 768, elements: !2350)
!2350 = !{!2351, !2352, !2353, !2354, !2355, !2356, !2357}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2349, file: !2315, line: 50, baseType: !548, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2349, file: !2315, line: 51, baseType: !2336, size: 256, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2349, file: !2315, line: 53, baseType: !2336, size: 256, offset: 320)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2349, file: !2315, line: 54, baseType: !33, size: 64, offset: 576)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2349, file: !2315, line: 55, baseType: !2348, size: 64, offset: 640)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2349, file: !2315, line: 56, baseType: !77, size: 32, offset: 704)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2349, file: !2315, line: 57, baseType: !77, size: 32, offset: 736)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2320, file: !2315, line: 40, baseType: !33, size: 64, offset: 2496)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2320, file: !2315, line: 42, baseType: !77, size: 32, offset: 2560)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2320, file: !2315, line: 43, baseType: !2313, size: 64, offset: 2624)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2314, file: !2315, line: 99, baseType: !2362, offset: 128)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2363, line: 211, elements: !559)
!2363 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2314, file: !2315, line: 100, baseType: !2365, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2315, line: 63, size: 3008, elements: !2367)
!2367 = !{!2368, !2369, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2399}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2366, file: !2315, line: 64, baseType: !2348, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2366, file: !2315, line: 65, baseType: !2370, size: 192, offset: 64)
!2370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2348, size: 192, elements: !939)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2366, file: !2315, line: 67, baseType: !77, size: 32, offset: 256)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2366, file: !2315, line: 68, baseType: !672, size: 256, offset: 320)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2366, file: !2315, line: 69, baseType: !548, size: 32, offset: 576)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2366, file: !2315, line: 70, baseType: !672, size: 256, offset: 640)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2366, file: !2315, line: 71, baseType: !33, size: 64, offset: 896)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2366, file: !2315, line: 72, baseType: !33, size: 64, offset: 960)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2366, file: !2315, line: 73, baseType: !33, size: 64, offset: 1024)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2366, file: !2315, line: 74, baseType: !33, size: 64, offset: 1088)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2366, file: !2315, line: 75, baseType: !33, size: 64, offset: 1152)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2366, file: !2315, line: 76, baseType: !33, size: 64, offset: 1216)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2366, file: !2315, line: 77, baseType: !33, size: 64, offset: 1280)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2366, file: !2315, line: 78, baseType: !33, size: 64, offset: 1344)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2366, file: !2315, line: 79, baseType: !6, size: 8, offset: 1408)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2366, file: !2315, line: 80, baseType: !33, size: 64, offset: 1472)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2366, file: !2315, line: 81, baseType: !672, size: 256, offset: 1536)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2366, file: !2315, line: 82, baseType: !900, size: 256, offset: 1792)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2366, file: !2315, line: 84, baseType: !196, size: 32, offset: 2048)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2366, file: !2315, line: 87, baseType: !33, size: 64, offset: 2112)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2366, file: !2315, line: 88, baseType: !33, size: 64, offset: 2176)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2366, file: !2315, line: 89, baseType: !2391, size: 704, offset: 2240)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !739, line: 111, size: 704, elements: !2392)
!2392 = !{!2393, !2394, !2395, !2398}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2391, file: !739, line: 112, baseType: !738, size: 256)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2391, file: !739, line: 113, baseType: !1416, size: 320, offset: 256)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2391, file: !739, line: 116, baseType: !2396, size: 64, offset: 576)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !739, line: 18, flags: DIFlagFwdDecl)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2391, file: !739, line: 117, baseType: !77, size: 32, offset: 640)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2366, file: !2315, line: 90, baseType: !2313, size: 64, offset: 2944)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !2086, file: !2087, line: 515, baseType: !2401, size: 64, offset: 8064)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2403, line: 117, size: 128, elements: !2404)
!2403 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2404 = !{!2405, !2406, !2407}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2402, file: !2403, line: 118, baseType: !651, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2402, file: !2403, line: 119, baseType: !651, size: 32, offset: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2402, file: !2403, line: 120, baseType: !696, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !2086, file: !2087, line: 516, baseType: !18, size: 32, offset: 8128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !2086, file: !2087, line: 519, baseType: !18, size: 32, offset: 8160)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !2086, file: !2087, line: 520, baseType: !2411, size: 64, offset: 8192)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !2086, file: !2087, line: 523, baseType: !2413, size: 64, offset: 8256)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !2087, line: 523, flags: DIFlagFwdDecl)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !2086, file: !2087, line: 524, baseType: !18, size: 32, offset: 8320)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !2086, file: !2087, line: 525, baseType: !2418, size: 64, offset: 8384)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2087, line: 525, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !2086, file: !2087, line: 526, baseType: !18, size: 32, offset: 8448)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !2086, file: !2087, line: 533, baseType: !21, size: 64, offset: 8512)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !2086, file: !2087, line: 534, baseType: !18, size: 32, offset: 8576)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !2086, file: !2087, line: 535, baseType: !2425, size: 64, offset: 8640)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !2086, file: !2087, line: 536, baseType: !18, size: 32, offset: 8704)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !2086, file: !2087, line: 539, baseType: !77, size: 32, offset: 8736)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !2086, file: !2087, line: 540, baseType: !2429, size: 64, offset: 8768)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2431, line: 32, size: 64, elements: !2432)
!2431 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2432 = !{!2433, !2434}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2430, file: !2431, line: 33, baseType: !651, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2430, file: !2431, line: 34, baseType: !651, size: 32, offset: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !2086, file: !2087, line: 563, baseType: !255, size: 128, offset: 8832)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !2086, file: !2087, line: 565, baseType: !255, size: 128, offset: 8960)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2086, file: !2087, line: 568, baseType: !2438, size: 64, offset: 9088)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{null}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2086, file: !2087, line: 570, baseType: !196, size: 32, offset: 9152)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !10, file: !11, line: 104, baseType: !54, size: 64, offset: 3200)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "resend_node", scope: !10, file: !11, line: 106, baseType: !864, size: 128, offset: 3264)
!2444 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/irq/.cpuhotplug.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/irq/cpuhotplug\22 -D KBUILD_BASENAME=\22cpuhotplug\22 -D KBUILD_MODNAME=\22cpuhotplug\22 -D __KBUILD_MODNAME=kmod_cpuhotplug -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/irq/cpuhotplug.ll kernel/irq/cpuhotplug.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2445, retainedTypes: !2504, globals: !2505, splitDebugInlining: false, nameTableKind: None)
!2445 = !{!115, !167, !339, !803, !1336, !1924, !2090, !2446, !2451, !2477, !2491}
!2446 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2447, line: 10, baseType: !18, size: 32, elements: !2448)
!2447 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!2448 = !{!2449, !2450}
!2449 = !DIEnumerator(name: "false", value: 0)
!2450 = !DIEnumerator(name: "true", value: 1)
!2451 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 227, baseType: !18, size: 32, elements: !2452)
!2452 = !{!2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476}
!2453 = !DIEnumerator(name: "IRQD_TRIGGER_MASK", value: 15)
!2454 = !DIEnumerator(name: "IRQD_SETAFFINITY_PENDING", value: 256)
!2455 = !DIEnumerator(name: "IRQD_ACTIVATED", value: 512)
!2456 = !DIEnumerator(name: "IRQD_NO_BALANCING", value: 1024)
!2457 = !DIEnumerator(name: "IRQD_PER_CPU", value: 2048)
!2458 = !DIEnumerator(name: "IRQD_AFFINITY_SET", value: 4096)
!2459 = !DIEnumerator(name: "IRQD_LEVEL", value: 8192)
!2460 = !DIEnumerator(name: "IRQD_WAKEUP_STATE", value: 16384)
!2461 = !DIEnumerator(name: "IRQD_MOVE_PCNTXT", value: 32768)
!2462 = !DIEnumerator(name: "IRQD_IRQ_DISABLED", value: 65536)
!2463 = !DIEnumerator(name: "IRQD_IRQ_MASKED", value: 131072)
!2464 = !DIEnumerator(name: "IRQD_IRQ_INPROGRESS", value: 262144)
!2465 = !DIEnumerator(name: "IRQD_WAKEUP_ARMED", value: 524288)
!2466 = !DIEnumerator(name: "IRQD_FORWARDED_TO_VCPU", value: 1048576)
!2467 = !DIEnumerator(name: "IRQD_AFFINITY_MANAGED", value: 2097152)
!2468 = !DIEnumerator(name: "IRQD_IRQ_STARTED", value: 4194304)
!2469 = !DIEnumerator(name: "IRQD_MANAGED_SHUTDOWN", value: 8388608)
!2470 = !DIEnumerator(name: "IRQD_SINGLE_TARGET", value: 16777216)
!2471 = !DIEnumerator(name: "IRQD_DEFAULT_TRIGGER_SET", value: 33554432)
!2472 = !DIEnumerator(name: "IRQD_CAN_RESERVE", value: 67108864)
!2473 = !DIEnumerator(name: "IRQD_HANDLE_ENFORCE_IRQCTX", value: 134217728)
!2474 = !DIEnumerator(name: "IRQD_AFFINITY_ON_ACTIVATE", value: 268435456)
!2475 = !DIEnumerator(name: "IRQD_IRQ_ENABLED_ON_SUSPEND", value: 536870912)
!2476 = !DIEnumerator(name: "IRQD_RESEND_WHEN_IN_PROGRESS", value: 1073741824)
!2477 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2478, line: 60, baseType: !18, size: 32, elements: !2479)
!2478 = !DIFile(filename: "kernel/irq/internals.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1a83a6391bcc5e0feb0932e94d9f4c16")
!2479 = !{!2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490}
!2480 = !DIEnumerator(name: "IRQS_AUTODETECT", value: 1)
!2481 = !DIEnumerator(name: "IRQS_SPURIOUS_DISABLED", value: 2)
!2482 = !DIEnumerator(name: "IRQS_POLL_INPROGRESS", value: 8)
!2483 = !DIEnumerator(name: "IRQS_ONESHOT", value: 32)
!2484 = !DIEnumerator(name: "IRQS_REPLAY", value: 64)
!2485 = !DIEnumerator(name: "IRQS_WAITING", value: 128)
!2486 = !DIEnumerator(name: "IRQS_PENDING", value: 512)
!2487 = !DIEnumerator(name: "IRQS_SUSPENDED", value: 2048)
!2488 = !DIEnumerator(name: "IRQS_TIMINGS", value: 4096)
!2489 = !DIEnumerator(name: "IRQS_NMI", value: 8192)
!2490 = !DIEnumerator(name: "IRQS_SYSFS", value: 16384)
!2491 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hk_type", file: !2492, line: 8, baseType: !18, size: 32, elements: !2493)
!2492 = !DIFile(filename: "./include/linux/sched/isolation.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f45135f5b311296c29424234bd6ab2ab")
!2493 = !{!2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503}
!2494 = !DIEnumerator(name: "HK_TYPE_TIMER", value: 0)
!2495 = !DIEnumerator(name: "HK_TYPE_RCU", value: 1)
!2496 = !DIEnumerator(name: "HK_TYPE_MISC", value: 2)
!2497 = !DIEnumerator(name: "HK_TYPE_SCHED", value: 3)
!2498 = !DIEnumerator(name: "HK_TYPE_TICK", value: 4)
!2499 = !DIEnumerator(name: "HK_TYPE_DOMAIN", value: 5)
!2500 = !DIEnumerator(name: "HK_TYPE_WQ", value: 6)
!2501 = !DIEnumerator(name: "HK_TYPE_MANAGED_IRQ", value: 7)
!2502 = !DIEnumerator(name: "HK_TYPE_KTHREAD", value: 8)
!2503 = !DIEnumerator(name: "HK_TYPE_MAX", value: 9)
!2504 = !{!78, !911, !21, !77, !33, !18, !2425}
!2505 = !{!0, !2506, !2509, !2514, !2519}
!2506 = !DIGlobalVariableExpression(var: !2507, expr: !DIExpression())
!2507 = distinct !DIGlobalVariable(scope: null, file: !3, line: 150, type: !2508, isLocal: true, isDefinition: true)
!2508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, elements: !960)
!2509 = !DIGlobalVariableExpression(var: !2510, expr: !DIExpression())
!2510 = distinct !DIGlobalVariable(scope: null, file: !3, line: 150, type: !2511, isLocal: true, isDefinition: true)
!2511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 280, elements: !2512)
!2512 = !{!2513}
!2513 = !DISubrange(count: 35)
!2514 = !DIGlobalVariableExpression(var: !2515, expr: !DIExpression())
!2515 = distinct !DIGlobalVariable(scope: null, file: !3, line: 23, type: !2516, isLocal: true, isDefinition: true)
!2516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 40, elements: !2517)
!2517 = !{!2518}
!2518 = !DISubrange(count: 5)
!2519 = !DIGlobalVariableExpression(var: !2520, expr: !DIExpression())
!2520 = distinct !DIGlobalVariable(scope: null, file: !3, line: 45, type: !2521, isLocal: true, isDefinition: true)
!2521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 664, elements: !2522)
!2522 = !{!2523}
!2523 = !DISubrange(count: 83)
!2524 = !{!2525, !2526, !2527, !2528, !2529, !2530, !2531}
!2525 = !DILocalVariable(name: "desc", arg: 1, scope: !2, file: !3, line: 53, type: !9)
!2526 = !DILocalVariable(name: "d", scope: !2, file: !3, line: 55, type: !61)
!2527 = !DILocalVariable(name: "chip", scope: !2, file: !3, line: 56, type: !50)
!2528 = !DILocalVariable(name: "maskchip", scope: !2, file: !3, line: 57, type: !6)
!2529 = !DILocalVariable(name: "affinity", scope: !2, file: !3, line: 58, type: !78)
!2530 = !DILocalVariable(name: "brokeaff", scope: !2, file: !3, line: 59, type: !6)
!2531 = !DILocalVariable(name: "err", scope: !2, file: !3, line: 60, type: !77)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2533, line: 15, size: 320, elements: !2534)
!2533 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2534 = !{!2535, !2536, !2537, !2538, !2539, !2540, !2541}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2532, file: !2533, line: 16, baseType: !353, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2532, file: !2533, line: 18, baseType: !77, size: 32, offset: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2532, file: !2533, line: 19, baseType: !77, size: 32, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2532, file: !2533, line: 20, baseType: !77, size: 32, offset: 96)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2532, file: !2533, line: 21, baseType: !77, size: 32, offset: 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2532, file: !2533, line: 22, baseType: !33, size: 64, offset: 192)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2532, file: !2533, line: 23, baseType: !33, size: 64, offset: 256)
!2542 = !{i32 7, !"Dwarf Version", i32 5}
!2543 = !{i32 2, !"Debug Info Version", i32 3}
!2544 = !{i32 1, !"wchar_size", i32 2}
!2545 = !{i32 8, !"cf-protection-branch", i32 1}
!2546 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2547 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2548 = !{i32 1, !"Code Model", i32 2}
!2549 = !{i32 1, !"override-stack-alignment", i32 8}
!2550 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2551 = distinct !DISubprogram(name: "irq_migrate_all_off_this_cpu", scope: !3, file: !3, line: 171, type: !2439, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !2552)
!2552 = !{!2553, !2554, !2555}
!2553 = !DILocalVariable(name: "desc", scope: !2551, file: !3, line: 173, type: !9)
!2554 = !DILocalVariable(name: "irq", scope: !2551, file: !3, line: 174, type: !18)
!2555 = !DILocalVariable(name: "affinity_broken", scope: !2556, file: !3, line: 177, type: !6)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 176, column: 27)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 176, column: 2)
!2558 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 176, column: 2)
!2559 = !DILocation(line: 173, column: 2, scope: !2551)
!2560 = !DILocation(line: 173, column: 19, scope: !2551)
!2561 = !DILocation(line: 174, column: 2, scope: !2551)
!2562 = !DILocation(line: 174, column: 15, scope: !2551)
!2563 = !DILocation(line: 176, column: 2, scope: !2558)
!2564 = !DILocation(line: 176, column: 2, scope: !2557)
!2565 = !DILocation(line: 177, column: 3, scope: !2556)
!2566 = !DILocation(line: 177, column: 8, scope: !2556)
!2567 = !DILocation(line: 179, column: 22, scope: !2556)
!2568 = !DILocation(line: 179, column: 10, scope: !2556)
!2569 = !DILocation(line: 179, column: 8, scope: !2556)
!2570 = !DILocation(line: 180, column: 3, scope: !2556)
!2571 = !DILocation(line: 181, column: 37, scope: !2556)
!2572 = !DILocation(line: 181, column: 21, scope: !2556)
!2573 = !DILocation(line: 181, column: 19, scope: !2556)
!2574 = !DILocation(line: 182, column: 3, scope: !2556)
!2575 = !DILocation(line: 184, column: 7, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 184, column: 7)
!2577 = !{i8 0, i8 2}
!2578 = !DILocation(line: 184, column: 7, scope: !2556)
!2579 = !DILocation(line: 185, column: 4, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 185, column: 4)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 185, column: 4)
!2582 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 184, column: 24)
!2583 = !DILocation(line: 185, column: 4, scope: !2581)
!2584 = !DILocation(line: 187, column: 3, scope: !2582)
!2585 = !DILocation(line: 188, column: 2, scope: !2557)
!2586 = !DILocation(line: 188, column: 2, scope: !2556)
!2587 = distinct !{!2587, !2563, !2588, !2589, !2590}
!2588 = !DILocation(line: 188, column: 2, scope: !2558)
!2589 = !{!"llvm.loop.mustprogress"}
!2590 = !{!"llvm.loop.unroll.disable"}
!2591 = !DILocation(line: 189, column: 1, scope: !2551)
!2592 = !DISubprogram(name: "irq_get_next_irq", scope: !2593, file: !2593, line: 10, type: !2594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2593 = !DIFile(filename: "./include/linux/irqnr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "590ce9d10c77e92ba5c0ad662f4e1272")
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!18, !18}
!2596 = !DISubprogram(name: "irq_to_desc", scope: !2593, file: !2593, line: 9, type: !2597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!9, !18}
!2599 = !DISubprogram(name: "_raw_spin_lock", scope: !2600, file: !2600, line: 22, type: !2601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2600 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2601 = !DISubroutineType(types: !2602)
!2602 = !{null, !2603}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!2604 = !DILocation(line: 53, column: 46, scope: !2)
!2605 = !DILocation(line: 55, column: 2, scope: !2)
!2606 = !DILocation(line: 55, column: 19, scope: !2)
!2607 = !DILocation(line: 55, column: 45, scope: !2)
!2608 = !DILocation(line: 55, column: 23, scope: !2)
!2609 = !DILocation(line: 56, column: 2, scope: !2)
!2610 = !DILocation(line: 56, column: 19, scope: !2)
!2611 = !DILocation(line: 56, column: 48, scope: !2)
!2612 = !DILocation(line: 56, column: 26, scope: !2)
!2613 = !DILocation(line: 57, column: 2, scope: !2)
!2614 = !DILocation(line: 57, column: 7, scope: !2)
!2615 = !DILocation(line: 57, column: 39, scope: !2)
!2616 = !DILocation(line: 57, column: 19, scope: !2)
!2617 = !DILocation(line: 57, column: 42, scope: !2)
!2618 = !DILocation(line: 57, column: 62, scope: !2)
!2619 = !DILocation(line: 57, column: 46, scope: !2)
!2620 = !DILocation(line: 57, column: 45, scope: !2)
!2621 = !DILocation(line: 0, scope: !2)
!2622 = !DILocation(line: 58, column: 2, scope: !2)
!2623 = !DILocation(line: 58, column: 24, scope: !2)
!2624 = !DILocation(line: 59, column: 2, scope: !2)
!2625 = !DILocation(line: 59, column: 7, scope: !2)
!2626 = !DILocation(line: 60, column: 2, scope: !2)
!2627 = !DILocation(line: 60, column: 6, scope: !2)
!2628 = !DILocation(line: 67, column: 7, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2, file: !3, line: 67, column: 6)
!2630 = !DILocation(line: 67, column: 12, scope: !2629)
!2631 = !DILocation(line: 67, column: 16, scope: !2629)
!2632 = !DILocation(line: 67, column: 22, scope: !2629)
!2633 = !DILocation(line: 67, column: 6, scope: !2)
!2634 = !DILocation(line: 68, column: 3, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 68, column: 3)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 68, column: 3)
!2637 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 67, column: 40)
!2638 = !DILocation(line: 68, column: 3, scope: !2636)
!2639 = !DILocation(line: 69, column: 3, scope: !2637)
!2640 = !DILocation(line: 78, column: 26, scope: !2)
!2641 = !DILocation(line: 78, column: 2, scope: !2)
!2642 = !DILocation(line: 89, column: 22, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2, file: !3, line: 89, column: 6)
!2644 = !DILocation(line: 89, column: 6, scope: !2643)
!2645 = !DILocation(line: 89, column: 25, scope: !2643)
!2646 = !DILocation(line: 89, column: 45, scope: !2643)
!2647 = !DILocation(line: 89, column: 29, scope: !2643)
!2648 = !DILocation(line: 89, column: 48, scope: !2643)
!2649 = !DILocation(line: 89, column: 68, scope: !2643)
!2650 = !DILocation(line: 89, column: 52, scope: !2643)
!2651 = !DILocation(line: 89, column: 6, scope: !2)
!2652 = !DILocation(line: 94, column: 26, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 89, column: 72)
!2654 = !DILocation(line: 94, column: 3, scope: !2653)
!2655 = !DILocation(line: 95, column: 3, scope: !2653)
!2656 = !DILocation(line: 104, column: 29, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2, file: !3, line: 104, column: 6)
!2658 = !DILocation(line: 104, column: 6, scope: !2657)
!2659 = !DILocation(line: 104, column: 6, scope: !2)
!2660 = !DILocation(line: 105, column: 40, scope: !2657)
!2661 = !DILocation(line: 105, column: 14, scope: !2657)
!2662 = !DILocation(line: 105, column: 12, scope: !2657)
!2663 = !DILocation(line: 105, column: 3, scope: !2657)
!2664 = !DILocation(line: 107, column: 41, scope: !2657)
!2665 = !DILocation(line: 107, column: 14, scope: !2657)
!2666 = !DILocation(line: 107, column: 12, scope: !2657)
!2667 = !DILocation(line: 110, column: 6, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2, file: !3, line: 110, column: 6)
!2669 = !DILocation(line: 110, column: 15, scope: !2668)
!2670 = !DILocation(line: 110, column: 18, scope: !2668)
!2671 = !DILocation(line: 110, column: 24, scope: !2668)
!2672 = !DILocation(line: 110, column: 6, scope: !2)
!2673 = !DILocation(line: 111, column: 3, scope: !2668)
!2674 = !DILocation(line: 111, column: 9, scope: !2668)
!2675 = !DILocation(line: 111, column: 18, scope: !2668)
!2676 = !DILocation(line: 113, column: 6, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2, file: !3, line: 113, column: 6)
!2678 = !DILocation(line: 113, column: 52, scope: !2677)
!2679 = !DILocation(line: 113, column: 49, scope: !2677)
!2680 = !DILocation(line: 113, column: 6, scope: !2)
!2681 = !DILocation(line: 118, column: 32, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 118, column: 7)
!2683 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 113, column: 64)
!2684 = !DILocation(line: 118, column: 7, scope: !2682)
!2685 = !DILocation(line: 118, column: 7, scope: !2683)
!2686 = !DILocation(line: 119, column: 30, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 118, column: 36)
!2688 = !DILocation(line: 119, column: 4, scope: !2687)
!2689 = !DILocation(line: 120, column: 32, scope: !2687)
!2690 = !DILocation(line: 120, column: 4, scope: !2687)
!2691 = !DILocation(line: 121, column: 4, scope: !2687)
!2692 = !DILocation(line: 123, column: 12, scope: !2683)
!2693 = !DILocation(line: 124, column: 12, scope: !2683)
!2694 = !DILocation(line: 125, column: 2, scope: !2683)
!2695 = !DILocation(line: 132, column: 28, scope: !2)
!2696 = !DILocation(line: 132, column: 31, scope: !2)
!2697 = !DILocation(line: 132, column: 8, scope: !2)
!2698 = !DILocation(line: 132, column: 6, scope: !2)
!2699 = !DILocation(line: 139, column: 6, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2, file: !3, line: 139, column: 6)
!2701 = !DILocation(line: 139, column: 10, scope: !2700)
!2702 = !DILocation(line: 139, column: 21, scope: !2700)
!2703 = !DILocation(line: 139, column: 50, scope: !2700)
!2704 = !DILocation(line: 139, column: 25, scope: !2700)
!2705 = !DILocation(line: 139, column: 53, scope: !2700)
!2706 = !DILocation(line: 139, column: 56, scope: !2700)
!2707 = !DILocation(line: 139, column: 65, scope: !2700)
!2708 = !DILocation(line: 139, column: 6, scope: !2)
!2709 = !DILocation(line: 140, column: 3, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 140, column: 3)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 140, column: 3)
!2712 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 139, column: 85)
!2713 = !DILocation(line: 140, column: 3, scope: !2711)
!2714 = !DILocation(line: 143, column: 12, scope: !2712)
!2715 = !DILocation(line: 144, column: 12, scope: !2712)
!2716 = !DILocation(line: 146, column: 29, scope: !2712)
!2717 = !DILocation(line: 146, column: 32, scope: !2712)
!2718 = !DILocation(line: 146, column: 9, scope: !2712)
!2719 = !DILocation(line: 146, column: 7, scope: !2712)
!2720 = !DILocation(line: 147, column: 2, scope: !2712)
!2721 = !DILocation(line: 149, column: 6, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2, file: !3, line: 149, column: 6)
!2723 = !DILocation(line: 149, column: 6, scope: !2)
!2724 = !DILocation(line: 150, column: 3, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 150, column: 3)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 150, column: 3)
!2727 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 149, column: 11)
!2728 = !DILocation(line: 150, column: 3, scope: !2726)
!2729 = !DILocation(line: 150, column: 3, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 150, column: 3)
!2731 = !DILocation(line: 150, column: 3, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 150, column: 3)
!2733 = !DILocation(line: 152, column: 12, scope: !2727)
!2734 = !DILocation(line: 153, column: 2, scope: !2727)
!2735 = !DILocation(line: 155, column: 6, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2, file: !3, line: 155, column: 6)
!2737 = !DILocation(line: 155, column: 15, scope: !2736)
!2738 = !DILocation(line: 155, column: 18, scope: !2736)
!2739 = !DILocation(line: 155, column: 24, scope: !2736)
!2740 = !DILocation(line: 155, column: 6, scope: !2)
!2741 = !DILocation(line: 156, column: 3, scope: !2736)
!2742 = !DILocation(line: 156, column: 9, scope: !2736)
!2743 = !DILocation(line: 156, column: 20, scope: !2736)
!2744 = !DILocation(line: 158, column: 9, scope: !2)
!2745 = !DILocation(line: 158, column: 2, scope: !2)
!2746 = !DILocation(line: 159, column: 1, scope: !2)
!2747 = !DISubprogram(name: "_raw_spin_unlock", scope: !2600, file: !2600, line: 39, type: !2601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2748 = distinct !DISubprogram(name: "irq_affinity_online_cpu", scope: !3, file: !3, line: 239, type: !2749, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !2751)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!77, !18}
!2751 = !{!2752, !2753, !2754}
!2752 = !DILocalVariable(name: "cpu", arg: 1, scope: !2748, file: !3, line: 239, type: !18)
!2753 = !DILocalVariable(name: "desc", scope: !2748, file: !3, line: 241, type: !9)
!2754 = !DILocalVariable(name: "irq", scope: !2748, file: !3, line: 242, type: !18)
!2755 = !DILocation(line: 239, column: 42, scope: !2748)
!2756 = !DILocation(line: 241, column: 2, scope: !2748)
!2757 = !DILocation(line: 241, column: 19, scope: !2748)
!2758 = !DILocation(line: 242, column: 2, scope: !2748)
!2759 = !DILocation(line: 242, column: 15, scope: !2748)
!2760 = !DILocation(line: 244, column: 2, scope: !2748)
!2761 = !DILocation(line: 245, column: 2, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 245, column: 2)
!2763 = !DILocation(line: 245, column: 2, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 245, column: 2)
!2765 = !DILocation(line: 246, column: 22, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 245, column: 27)
!2767 = !DILocation(line: 246, column: 10, scope: !2766)
!2768 = !DILocation(line: 246, column: 8, scope: !2766)
!2769 = !DILocation(line: 247, column: 3, scope: !2766)
!2770 = !DILocation(line: 248, column: 31, scope: !2766)
!2771 = !DILocation(line: 248, column: 37, scope: !2766)
!2772 = !DILocation(line: 248, column: 3, scope: !2766)
!2773 = !DILocation(line: 249, column: 3, scope: !2766)
!2774 = !DILocation(line: 250, column: 2, scope: !2766)
!2775 = distinct !{!2775, !2761, !2776, !2589, !2590}
!2776 = !DILocation(line: 250, column: 2, scope: !2762)
!2777 = !DILocation(line: 251, column: 2, scope: !2748)
!2778 = !DILocation(line: 254, column: 1, scope: !2748)
!2779 = !DILocation(line: 253, column: 2, scope: !2748)
!2780 = !DISubprogram(name: "irq_lock_sparse", scope: !11, file: !11, line: 111, type: !2439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2781 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !2600, file: !2600, line: 29, type: !2601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2782 = distinct !DISubprogram(name: "irq_restore_affinity_of_irq", scope: !3, file: !3, line: 205, type: !2783, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{null, !9, !18}
!2785 = !{!2786, !2787, !2788, !2789}
!2786 = !DILocalVariable(name: "desc", arg: 1, scope: !2782, file: !3, line: 205, type: !9)
!2787 = !DILocalVariable(name: "cpu", arg: 2, scope: !2782, file: !3, line: 205, type: !18)
!2788 = !DILocalVariable(name: "data", scope: !2782, file: !3, line: 207, type: !61)
!2789 = !DILocalVariable(name: "affinity", scope: !2782, file: !3, line: 208, type: !78)
!2790 = !DILocation(line: 205, column: 58, scope: !2782)
!2791 = !DILocation(line: 205, column: 77, scope: !2782)
!2792 = !DILocation(line: 207, column: 2, scope: !2782)
!2793 = !DILocation(line: 207, column: 19, scope: !2782)
!2794 = !DILocation(line: 207, column: 48, scope: !2782)
!2795 = !DILocation(line: 207, column: 26, scope: !2782)
!2796 = !DILocation(line: 208, column: 2, scope: !2782)
!2797 = !DILocation(line: 208, column: 24, scope: !2782)
!2798 = !DILocation(line: 208, column: 62, scope: !2782)
!2799 = !DILocation(line: 208, column: 35, scope: !2782)
!2800 = !DILocation(line: 210, column: 32, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 210, column: 6)
!2802 = !DILocation(line: 210, column: 7, scope: !2801)
!2803 = !DILocation(line: 210, column: 38, scope: !2801)
!2804 = !DILocation(line: 210, column: 42, scope: !2801)
!2805 = !DILocation(line: 210, column: 48, scope: !2801)
!2806 = !DILocation(line: 210, column: 55, scope: !2801)
!2807 = !DILocation(line: 211, column: 29, scope: !2801)
!2808 = !DILocation(line: 211, column: 7, scope: !2801)
!2809 = !DILocation(line: 211, column: 35, scope: !2801)
!2810 = !DILocation(line: 211, column: 56, scope: !2801)
!2811 = !DILocation(line: 211, column: 61, scope: !2801)
!2812 = !DILocation(line: 211, column: 39, scope: !2801)
!2813 = !DILocation(line: 210, column: 6, scope: !2782)
!2814 = !DILocation(line: 212, column: 3, scope: !2801)
!2815 = !DILocation(line: 218, column: 6, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 218, column: 6)
!2817 = !DILocation(line: 218, column: 12, scope: !2816)
!2818 = !DILocation(line: 218, column: 19, scope: !2816)
!2819 = !DILocation(line: 218, column: 6, scope: !2782)
!2820 = !DILocation(line: 219, column: 3, scope: !2816)
!2821 = !DILocation(line: 221, column: 35, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 221, column: 6)
!2823 = !DILocation(line: 221, column: 6, scope: !2822)
!2824 = !DILocation(line: 221, column: 6, scope: !2782)
!2825 = !DILocation(line: 222, column: 15, scope: !2822)
!2826 = !DILocation(line: 222, column: 3, scope: !2822)
!2827 = !DILocation(line: 231, column: 29, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 231, column: 6)
!2829 = !DILocation(line: 231, column: 7, scope: !2828)
!2830 = !DILocation(line: 231, column: 35, scope: !2828)
!2831 = !DILocation(line: 231, column: 56, scope: !2828)
!2832 = !DILocation(line: 231, column: 62, scope: !2828)
!2833 = !DILocation(line: 231, column: 38, scope: !2828)
!2834 = !DILocation(line: 231, column: 6, scope: !2782)
!2835 = !DILocation(line: 232, column: 27, scope: !2828)
!2836 = !DILocation(line: 232, column: 33, scope: !2828)
!2837 = !DILocation(line: 232, column: 3, scope: !2828)
!2838 = !DILocation(line: 233, column: 1, scope: !2782)
!2839 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !2600, file: !2600, line: 41, type: !2601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2840 = !DISubprogram(name: "irq_unlock_sparse", scope: !11, file: !11, line: 112, type: !2439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2841 = distinct !DISubprogram(name: "irq_desc_get_irq_data", scope: !11, file: !11, line: 135, type: !2842, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!61, !9}
!2844 = !{!2845}
!2845 = !DILocalVariable(name: "desc", arg: 1, scope: !2841, file: !11, line: 135, type: !9)
!2846 = !DILocation(line: 135, column: 71, scope: !2841)
!2847 = !DILocation(line: 137, column: 10, scope: !2841)
!2848 = !DILocation(line: 137, column: 16, scope: !2841)
!2849 = !DILocation(line: 137, column: 2, scope: !2841)
!2850 = distinct !DISubprogram(name: "irq_data_get_irq_chip", scope: !15, file: !15, line: 821, type: !2851, scopeLine: 822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!50, !61}
!2853 = !{!2854}
!2854 = !DILocalVariable(name: "d", arg: 1, scope: !2850, file: !15, line: 821, type: !61)
!2855 = !DILocation(line: 821, column: 71, scope: !2850)
!2856 = !DILocation(line: 823, column: 9, scope: !2850)
!2857 = !DILocation(line: 823, column: 12, scope: !2850)
!2858 = !DILocation(line: 823, column: 2, scope: !2850)
!2859 = distinct !DISubprogram(name: "irq_can_move_pcntxt", scope: !2478, file: !2478, line: 415, type: !2860, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !2862)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!6, !61}
!2862 = !{!2863}
!2863 = !DILocalVariable(name: "data", arg: 1, scope: !2859, file: !2478, line: 415, type: !61)
!2864 = !DILocation(line: 415, column: 57, scope: !2859)
!2865 = !DILocation(line: 417, column: 42, scope: !2859)
!2866 = !DILocation(line: 417, column: 9, scope: !2859)
!2867 = !DILocation(line: 417, column: 2, scope: !2859)
!2868 = distinct !DISubprogram(name: "irqd_irq_masked", scope: !15, file: !15, line: 351, type: !2860, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !2869)
!2869 = !{!2870}
!2870 = !DILocalVariable(name: "d", arg: 1, scope: !2868, file: !15, line: 351, type: !61)
!2871 = !DILocation(line: 351, column: 53, scope: !2868)
!2872 = !DILocation(line: 353, column: 9, scope: !2868)
!2873 = !DILocation(line: 353, column: 28, scope: !2868)
!2874 = !DILocation(line: 353, column: 2, scope: !2868)
!2875 = !DISubprogram(name: "irq_force_complete_move", scope: !15, file: !15, line: 630, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2876 = distinct !DISubprogram(name: "irqd_is_per_cpu", scope: !15, file: !15, line: 261, type: !2860, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !2877)
!2877 = !{!2878}
!2878 = !DILocalVariable(name: "d", arg: 1, scope: !2876, file: !15, line: 261, type: !61)
!2879 = !DILocation(line: 261, column: 53, scope: !2876)
!2880 = !DILocation(line: 263, column: 9, scope: !2876)
!2881 = !DILocation(line: 263, column: 28, scope: !2876)
!2882 = !DILocation(line: 263, column: 2, scope: !2876)
!2883 = distinct !DISubprogram(name: "irqd_is_started", scope: !15, file: !15, line: 401, type: !2860, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !2884)
!2884 = !{!2885}
!2885 = !DILocalVariable(name: "d", arg: 1, scope: !2883, file: !15, line: 401, type: !61)
!2886 = !DILocation(line: 401, column: 53, scope: !2883)
!2887 = !DILocation(line: 403, column: 9, scope: !2883)
!2888 = !DILocation(line: 403, column: 28, scope: !2883)
!2889 = !DILocation(line: 403, column: 2, scope: !2883)
!2890 = distinct !DISubprogram(name: "irq_needs_fixup", scope: !3, file: !3, line: 20, type: !2860, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !2891)
!2891 = !{!2892, !2893, !2894, !2895, !2898, !2900}
!2892 = !DILocalVariable(name: "d", arg: 1, scope: !2890, file: !3, line: 20, type: !61)
!2893 = !DILocalVariable(name: "m", scope: !2890, file: !3, line: 22, type: !78)
!2894 = !DILocalVariable(name: "cpu", scope: !2890, file: !3, line: 23, type: !18)
!2895 = !DILocalVariable(name: "pscr_ret__", scope: !2896, file: !3, line: 23, type: !77)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 23, column: 21)
!2897 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 23, column: 21)
!2898 = !DILocalVariable(name: "__vpp_verify", scope: !2899, file: !3, line: 23, type: !693)
!2899 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 23, column: 21)
!2900 = !DILocalVariable(name: "pfo_val__", scope: !2901, file: !3, line: 23, type: !41)
!2901 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 23, column: 21)
!2902 = !DILocation(line: 20, column: 53, scope: !2890)
!2903 = !DILocation(line: 22, column: 2, scope: !2890)
!2904 = !DILocation(line: 22, column: 24, scope: !2890)
!2905 = !DILocation(line: 22, column: 65, scope: !2890)
!2906 = !DILocation(line: 22, column: 28, scope: !2890)
!2907 = !DILocation(line: 23, column: 2, scope: !2890)
!2908 = !DILocation(line: 23, column: 15, scope: !2890)
!2909 = !DILocation(line: 23, column: 21, scope: !2897)
!2910 = !DILocation(line: 23, column: 21, scope: !2896)
!2911 = !DILocation(line: 23, column: 21, scope: !2899)
!2912 = !DILocation(line: 23, column: 21, scope: !2901)
!2913 = !{i64 2153248808}
!2914 = !DILocation(line: 31, column: 20, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 31, column: 6)
!2916 = !DILocation(line: 31, column: 6, scope: !2915)
!2917 = !DILocation(line: 31, column: 6, scope: !2890)
!2918 = !DILocation(line: 32, column: 34, scope: !2915)
!2919 = !DILocation(line: 32, column: 7, scope: !2915)
!2920 = !DILocation(line: 32, column: 5, scope: !2915)
!2921 = !DILocation(line: 32, column: 3, scope: !2915)
!2922 = !DILocation(line: 39, column: 22, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 39, column: 6)
!2924 = !DILocation(line: 39, column: 25, scope: !2923)
!2925 = !DILocation(line: 39, column: 6, scope: !2923)
!2926 = !DILocation(line: 39, column: 32, scope: !2923)
!2927 = !DILocation(line: 39, column: 30, scope: !2923)
!2928 = !DILocation(line: 39, column: 43, scope: !2923)
!2929 = !DILocation(line: 40, column: 6, scope: !2923)
!2930 = !DILocation(line: 40, column: 45, scope: !2923)
!2931 = !DILocation(line: 40, column: 42, scope: !2923)
!2932 = !DILocation(line: 39, column: 6, scope: !2890)
!2933 = !DILocation(line: 45, column: 3, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 45, column: 3)
!2935 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 40, column: 57)
!2936 = !DILocation(line: 45, column: 3, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 45, column: 3)
!2938 = !DILocation(line: 47, column: 3, scope: !2935)
!2939 = !DILocation(line: 50, column: 26, scope: !2890)
!2940 = !DILocation(line: 50, column: 31, scope: !2890)
!2941 = !DILocation(line: 50, column: 9, scope: !2890)
!2942 = !DILocation(line: 50, column: 2, scope: !2890)
!2943 = !DILocation(line: 51, column: 1, scope: !2890)
!2944 = !DISubprogram(name: "irq_fixup_move_pending", scope: !2478, file: !2478, line: 437, type: !2945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!6, !9, !6}
!2947 = distinct !DISubprogram(name: "irq_desc_get_pending_mask", scope: !2478, file: !2478, line: 433, type: !2948, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!1707, !9}
!2950 = !{!2951}
!2951 = !DILocalVariable(name: "desc", arg: 1, scope: !2947, file: !2478, line: 433, type: !9)
!2952 = !DILocation(line: 433, column: 74, scope: !2947)
!2953 = !DILocation(line: 435, column: 9, scope: !2947)
!2954 = !DILocation(line: 435, column: 15, scope: !2947)
!2955 = !DILocation(line: 435, column: 2, scope: !2947)
!2956 = distinct !DISubprogram(name: "irq_data_get_affinity_mask", scope: !15, file: !15, line: 880, type: !2957, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!78, !61}
!2959 = !{!2960}
!2960 = !DILocalVariable(name: "d", arg: 1, scope: !2956, file: !15, line: 880, type: !61)
!2961 = !DILocation(line: 880, column: 67, scope: !2956)
!2962 = !DILocation(line: 883, column: 9, scope: !2956)
!2963 = !DILocation(line: 883, column: 12, scope: !2956)
!2964 = !DILocation(line: 883, column: 20, scope: !2956)
!2965 = !DILocation(line: 883, column: 2, scope: !2956)
!2966 = distinct !DISubprogram(name: "cpumask_first_and", scope: !27, file: !27, line: 184, type: !2967, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!18, !78, !78}
!2969 = !{!2970, !2971}
!2970 = !DILocalVariable(name: "srcp1", arg: 1, scope: !2966, file: !27, line: 184, type: !78)
!2971 = !DILocalVariable(name: "srcp2", arg: 2, scope: !2966, file: !27, line: 184, type: !78)
!2972 = !DILocation(line: 184, column: 54, scope: !2966)
!2973 = !DILocation(line: 184, column: 83, scope: !2966)
!2974 = !DILocation(line: 186, column: 28, scope: !2966)
!2975 = !DILocation(line: 186, column: 49, scope: !2966)
!2976 = !DILocation(line: 186, column: 9, scope: !2966)
!2977 = !DILocation(line: 186, column: 2, scope: !2966)
!2978 = distinct !DISubprogram(name: "irqd_affinity_is_managed", scope: !15, file: !15, line: 381, type: !2860, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !2979)
!2979 = !{!2980}
!2980 = !DILocalVariable(name: "d", arg: 1, scope: !2978, file: !15, line: 381, type: !61)
!2981 = !DILocation(line: 381, column: 62, scope: !2978)
!2982 = !DILocation(line: 383, column: 9, scope: !2978)
!2983 = !DILocation(line: 383, column: 28, scope: !2978)
!2984 = !DILocation(line: 383, column: 2, scope: !2978)
!2985 = distinct !DISubprogram(name: "irqd_set_managed_shutdown", scope: !2478, file: !2478, line: 222, type: !64, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !2986)
!2986 = !{!2987}
!2987 = !DILocalVariable(name: "d", arg: 1, scope: !2985, file: !2478, line: 222, type: !61)
!2988 = !DILocation(line: 222, column: 63, scope: !2985)
!2989 = !DILocation(line: 224, column: 2, scope: !2985)
!2990 = !DILocation(line: 224, column: 21, scope: !2985)
!2991 = !DILocation(line: 225, column: 1, scope: !2985)
!2992 = !DISubprogram(name: "irq_shutdown_and_deactivate", scope: !2478, file: !2478, line: 92, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2993 = !DISubprogram(name: "irq_do_set_affinity", scope: !2478, file: !2478, line: 142, type: !75, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2994 = !DISubprogram(name: "___ratelimit", scope: !2533, file: !2533, line: 44, type: !2995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!77, !2997, !54}
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2998 = !DISubprogram(name: "_printk", scope: !2999, file: !2999, line: 153, type: !3000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2999 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!77, !54, null}
!3002 = distinct !DISubprogram(name: "irqd_can_move_in_process_context", scope: !15, file: !15, line: 341, type: !2860, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3003)
!3003 = !{!3004}
!3004 = !DILocalVariable(name: "d", arg: 1, scope: !3002, file: !15, line: 341, type: !61)
!3005 = !DILocation(line: 341, column: 70, scope: !3002)
!3006 = !DILocation(line: 343, column: 9, scope: !3002)
!3007 = !DILocation(line: 343, column: 28, scope: !3002)
!3008 = !DILocation(line: 343, column: 2, scope: !3002)
!3009 = distinct !DISubprogram(name: "irq_data_get_effective_affinity_mask", scope: !15, file: !15, line: 906, type: !2957, scopeLine: 907, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3010)
!3010 = !{!3011}
!3011 = !DILocalVariable(name: "d", arg: 1, scope: !3009, file: !15, line: 906, type: !61)
!3012 = !DILocation(line: 906, column: 77, scope: !3009)
!3013 = !DILocation(line: 908, column: 9, scope: !3009)
!3014 = !DILocation(line: 908, column: 12, scope: !3009)
!3015 = !DILocation(line: 908, column: 20, scope: !3009)
!3016 = !DILocation(line: 908, column: 2, scope: !3009)
!3017 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !3018, file: !3018, line: 313, type: !3019, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3021)
!3018 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!3019 = !DISubroutineType(types: !3020)
!3020 = !{null, !54}
!3021 = !{!3022}
!3022 = !DILocalVariable(name: "op", arg: 1, scope: !3017, file: !3018, line: 313, type: !54)
!3023 = !DILocation(line: 313, column: 66, scope: !3017)
!3024 = !DILocation(line: 313, column: 72, scope: !3017)
!3025 = distinct !DISubprogram(name: "cpumask_empty", scope: !27, file: !27, line: 672, type: !3026, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3028)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!6, !78}
!3028 = !{!3029}
!3029 = !DILocalVariable(name: "srcp", arg: 1, scope: !3025, file: !27, line: 672, type: !78)
!3030 = !DILocation(line: 672, column: 56, scope: !3025)
!3031 = !DILocation(line: 674, column: 22, scope: !3025)
!3032 = !DILocation(line: 674, column: 9, scope: !3025)
!3033 = !DILocation(line: 674, column: 2, scope: !3025)
!3034 = distinct !DISubprogram(name: "cpumask_any_but", scope: !27, file: !27, line: 379, type: !3035, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!18, !78, !18}
!3037 = !{!3038, !3039, !3040}
!3038 = !DILocalVariable(name: "mask", arg: 1, scope: !3034, file: !27, line: 379, type: !78)
!3039 = !DILocalVariable(name: "cpu", arg: 2, scope: !3034, file: !27, line: 379, type: !18)
!3040 = !DILocalVariable(name: "i", scope: !3034, file: !27, line: 381, type: !18)
!3041 = !DILocation(line: 379, column: 52, scope: !3034)
!3042 = !DILocation(line: 379, column: 71, scope: !3034)
!3043 = !DILocation(line: 381, column: 2, scope: !3034)
!3044 = !DILocation(line: 381, column: 15, scope: !3034)
!3045 = !DILocation(line: 383, column: 16, scope: !3034)
!3046 = !DILocation(line: 383, column: 2, scope: !3034)
!3047 = !DILocation(line: 384, column: 2, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3034, file: !27, line: 384, column: 2)
!3049 = !DILocation(line: 384, column: 2, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3048, file: !27, line: 384, column: 2)
!3051 = !DILocation(line: 385, column: 7, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3050, file: !27, line: 385, column: 7)
!3053 = !DILocation(line: 385, column: 12, scope: !3052)
!3054 = !DILocation(line: 385, column: 9, scope: !3052)
!3055 = !DILocation(line: 385, column: 7, scope: !3050)
!3056 = !DILocation(line: 386, column: 4, scope: !3052)
!3057 = distinct !{!3057, !3047, !3058, !2589, !2590}
!3058 = !DILocation(line: 386, column: 4, scope: !3048)
!3059 = !DILocation(line: 387, column: 9, scope: !3034)
!3060 = !DILocation(line: 388, column: 1, scope: !3034)
!3061 = !DILocation(line: 387, column: 2, scope: !3034)
!3062 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !27, file: !27, line: 502, type: !3063, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3065)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!6, !77, !78}
!3065 = !{!3066, !3067}
!3066 = !DILocalVariable(name: "cpu", arg: 1, scope: !3062, file: !27, line: 502, type: !77)
!3067 = !DILocalVariable(name: "cpumask", arg: 2, scope: !3062, file: !27, line: 502, type: !78)
!3068 = !DILocation(line: 502, column: 50, scope: !3062)
!3069 = !DILocation(line: 502, column: 77, scope: !3062)
!3070 = !DILocation(line: 504, column: 9, scope: !3062)
!3071 = !DILocation(line: 504, column: 2, scope: !3062)
!3072 = distinct !DISubprogram(name: "bitmap_empty", scope: !3073, file: !3073, line: 436, type: !3074, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3078)
!3073 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!6, !3076, !18}
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!3078 = !{!3079, !3080}
!3079 = !DILocalVariable(name: "src", arg: 1, scope: !3072, file: !3073, line: 436, type: !3076)
!3080 = !DILocalVariable(name: "nbits", arg: 2, scope: !3072, file: !3073, line: 436, type: !18)
!3081 = !DILocation(line: 436, column: 54, scope: !3072)
!3082 = !DILocation(line: 436, column: 68, scope: !3072)
!3083 = !DILocation(line: 438, column: 6, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3072, file: !3073, line: 438, column: 6)
!3085 = !DILocation(line: 438, column: 6, scope: !3072)
!3086 = !DILocation(line: 439, column: 14, scope: !3084)
!3087 = !DILocation(line: 439, column: 13, scope: !3084)
!3088 = !DILocation(line: 439, column: 20, scope: !3084)
!3089 = !DILocation(line: 439, column: 18, scope: !3084)
!3090 = !DILocation(line: 439, column: 10, scope: !3084)
!3091 = !DILocation(line: 439, column: 3, scope: !3084)
!3092 = !DILocation(line: 441, column: 24, scope: !3072)
!3093 = !DILocation(line: 441, column: 29, scope: !3072)
!3094 = !DILocation(line: 441, column: 9, scope: !3072)
!3095 = !DILocation(line: 441, column: 39, scope: !3072)
!3096 = !DILocation(line: 441, column: 36, scope: !3072)
!3097 = !DILocation(line: 441, column: 2, scope: !3072)
!3098 = !DILocation(line: 442, column: 1, scope: !3072)
!3099 = distinct !DISubprogram(name: "find_first_bit", scope: !3100, file: !3100, line: 200, type: !3101, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3103)
!3100 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!33, !3076, !33}
!3103 = !{!3104, !3105, !3106}
!3104 = !DILocalVariable(name: "addr", arg: 1, scope: !3099, file: !3100, line: 200, type: !3076)
!3105 = !DILocalVariable(name: "size", arg: 2, scope: !3099, file: !3100, line: 200, type: !33)
!3106 = !DILocalVariable(name: "val", scope: !3107, file: !3100, line: 203, type: !33)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !3100, line: 202, column: 31)
!3108 = distinct !DILexicalBlock(scope: !3099, file: !3100, line: 202, column: 6)
!3109 = !DILocation(line: 200, column: 51, scope: !3099)
!3110 = !DILocation(line: 200, column: 71, scope: !3099)
!3111 = !DILocation(line: 202, column: 6, scope: !3108)
!3112 = !DILocation(line: 202, column: 6, scope: !3099)
!3113 = !DILocation(line: 203, column: 3, scope: !3107)
!3114 = !DILocation(line: 203, column: 17, scope: !3107)
!3115 = !DILocation(line: 203, column: 24, scope: !3107)
!3116 = !DILocation(line: 203, column: 23, scope: !3107)
!3117 = !DILocation(line: 203, column: 31, scope: !3107)
!3118 = !DILocation(line: 203, column: 29, scope: !3107)
!3119 = !DILocation(line: 205, column: 10, scope: !3107)
!3120 = !DILocation(line: 205, column: 16, scope: !3107)
!3121 = !DILocation(line: 205, column: 29, scope: !3107)
!3122 = !DILocation(line: 205, column: 3, scope: !3107)
!3123 = !DILocation(line: 206, column: 2, scope: !3108)
!3124 = !DILocation(line: 208, column: 25, scope: !3099)
!3125 = !DILocation(line: 208, column: 31, scope: !3099)
!3126 = !DILocation(line: 208, column: 9, scope: !3099)
!3127 = !DILocation(line: 208, column: 2, scope: !3099)
!3128 = !DILocation(line: 209, column: 1, scope: !3099)
!3129 = distinct !DISubprogram(name: "variable__ffs", scope: !3130, file: !3130, line: 250, type: !3131, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3133)
!3130 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!33, !33}
!3133 = !{!3134}
!3134 = !DILocalVariable(name: "word", arg: 1, scope: !3129, file: !3130, line: 250, type: !33)
!3135 = !DILocation(line: 250, column: 66, scope: !3129)
!3136 = !DILocation(line: 254, column: 11, scope: !3129)
!3137 = !DILocation(line: 252, column: 2, scope: !3129)
!3138 = !{i64 326127}
!3139 = !DILocation(line: 255, column: 9, scope: !3129)
!3140 = !DILocation(line: 255, column: 2, scope: !3129)
!3141 = !DISubprogram(name: "_find_first_bit", scope: !3100, file: !3100, line: 21, type: !3101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3142 = distinct !DISubprogram(name: "cpumask_check", scope: !27, file: !27, line: 148, type: !2594, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3143)
!3143 = !{!3144}
!3144 = !DILocalVariable(name: "cpu", arg: 1, scope: !3142, file: !27, line: 148, type: !18)
!3145 = !DILocation(line: 148, column: 64, scope: !3142)
!3146 = !DILocation(line: 150, column: 20, scope: !3142)
!3147 = !DILocation(line: 150, column: 2, scope: !3142)
!3148 = !DILocation(line: 151, column: 9, scope: !3142)
!3149 = !DILocation(line: 151, column: 2, scope: !3142)
!3150 = distinct !DISubprogram(name: "find_next_bit", scope: !3100, file: !3100, line: 54, type: !3151, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!33, !3076, !33, !33}
!3153 = !{!3154, !3155, !3156, !3157}
!3154 = !DILocalVariable(name: "addr", arg: 1, scope: !3150, file: !3100, line: 54, type: !3076)
!3155 = !DILocalVariable(name: "size", arg: 2, scope: !3150, file: !3100, line: 54, type: !33)
!3156 = !DILocalVariable(name: "offset", arg: 3, scope: !3150, file: !3100, line: 55, type: !33)
!3157 = !DILocalVariable(name: "val", scope: !3158, file: !3100, line: 58, type: !33)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !3100, line: 57, column: 31)
!3159 = distinct !DILexicalBlock(scope: !3150, file: !3100, line: 57, column: 6)
!3160 = !DILocation(line: 54, column: 50, scope: !3150)
!3161 = !DILocation(line: 54, column: 70, scope: !3150)
!3162 = !DILocation(line: 55, column: 22, scope: !3150)
!3163 = !DILocation(line: 57, column: 6, scope: !3159)
!3164 = !DILocation(line: 57, column: 6, scope: !3150)
!3165 = !DILocation(line: 58, column: 3, scope: !3158)
!3166 = !DILocation(line: 58, column: 17, scope: !3158)
!3167 = !DILocation(line: 60, column: 7, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3158, file: !3100, line: 60, column: 7)
!3169 = !DILocation(line: 60, column: 7, scope: !3158)
!3170 = !DILocation(line: 61, column: 11, scope: !3168)
!3171 = !DILocation(line: 61, column: 4, scope: !3168)
!3172 = !DILocation(line: 63, column: 10, scope: !3158)
!3173 = !DILocation(line: 63, column: 9, scope: !3158)
!3174 = !DILocation(line: 63, column: 17, scope: !3158)
!3175 = !DILocation(line: 63, column: 15, scope: !3158)
!3176 = !DILocation(line: 63, column: 7, scope: !3158)
!3177 = !DILocation(line: 64, column: 10, scope: !3158)
!3178 = !DILocation(line: 64, column: 16, scope: !3158)
!3179 = !DILocation(line: 64, column: 29, scope: !3158)
!3180 = !DILocation(line: 64, column: 3, scope: !3158)
!3181 = !DILocation(line: 65, column: 2, scope: !3159)
!3182 = !DILocation(line: 67, column: 24, scope: !3150)
!3183 = !DILocation(line: 67, column: 30, scope: !3150)
!3184 = !DILocation(line: 67, column: 36, scope: !3150)
!3185 = !DILocation(line: 67, column: 9, scope: !3150)
!3186 = !DILocation(line: 67, column: 2, scope: !3150)
!3187 = !DILocation(line: 68, column: 1, scope: !3150)
!3188 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !27, file: !27, line: 140, type: !3189, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3191)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{null, !18, !18}
!3191 = !{!3192, !3193}
!3192 = !DILocalVariable(name: "cpu", arg: 1, scope: !3188, file: !27, line: 140, type: !18)
!3193 = !DILocalVariable(name: "bits", arg: 2, scope: !3188, file: !27, line: 140, type: !18)
!3194 = !DILocation(line: 140, column: 60, scope: !3188)
!3195 = !DILocation(line: 140, column: 78, scope: !3188)
!3196 = !DILocation(line: 145, column: 1, scope: !3188)
!3197 = !DISubprogram(name: "_find_next_bit", scope: !3100, file: !3100, line: 11, type: !3151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3198 = distinct !DISubprogram(name: "_test_bit", scope: !3199, file: !3199, line: 139, type: !3200, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3205)
!3199 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!6, !33, !3202}
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3204)
!3204 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!3205 = !{!3206, !3207}
!3206 = !DILocalVariable(name: "nr", arg: 1, scope: !3198, file: !3199, line: 139, type: !33)
!3207 = !DILocalVariable(name: "addr", arg: 2, scope: !3198, file: !3199, line: 139, type: !3202)
!3208 = !DILocation(line: 139, column: 25, scope: !3198)
!3209 = !DILocation(line: 139, column: 59, scope: !3198)
!3210 = !DILocation(line: 141, column: 25, scope: !3198)
!3211 = !DILocation(line: 141, column: 32, scope: !3198)
!3212 = !DILocation(line: 141, column: 30, scope: !3198)
!3213 = !DILocation(line: 141, column: 2, scope: !3198)
!3214 = !DILocation(line: 142, column: 23, scope: !3198)
!3215 = !DILocation(line: 142, column: 27, scope: !3198)
!3216 = !DILocation(line: 142, column: 9, scope: !3198)
!3217 = !DILocation(line: 142, column: 2, scope: !3198)
!3218 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3219, file: !3219, line: 66, type: !3220, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3225)
!3219 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3220 = !DISubroutineType(types: !3221)
!3221 = !{null, !3222, !1011}
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3224)
!3224 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3225 = !{!3226, !3227}
!3226 = !DILocalVariable(name: "v", arg: 1, scope: !3218, file: !3219, line: 66, type: !3222)
!3227 = !DILocalVariable(name: "size", arg: 2, scope: !3218, file: !3219, line: 66, type: !1011)
!3228 = !DILocation(line: 66, column: 73, scope: !3218)
!3229 = !DILocation(line: 66, column: 83, scope: !3218)
!3230 = !DILocation(line: 68, column: 19, scope: !3218)
!3231 = !DILocation(line: 68, column: 22, scope: !3218)
!3232 = !DILocation(line: 68, column: 2, scope: !3218)
!3233 = !DILocation(line: 69, column: 2, scope: !3218)
!3234 = !DILocation(line: 70, column: 1, scope: !3218)
!3235 = distinct !DISubprogram(name: "arch_test_bit", scope: !3130, file: !3130, line: 237, type: !3200, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3236)
!3236 = !{!3237, !3238}
!3237 = !DILocalVariable(name: "nr", arg: 1, scope: !3235, file: !3130, line: 237, type: !33)
!3238 = !DILocalVariable(name: "addr", arg: 2, scope: !3235, file: !3130, line: 237, type: !3202)
!3239 = !DILocation(line: 237, column: 29, scope: !3235)
!3240 = !DILocation(line: 237, column: 63, scope: !3235)
!3241 = !DILocation(line: 239, column: 30, scope: !3235)
!3242 = !DILocation(line: 239, column: 9, scope: !3235)
!3243 = !DILocation(line: 239, column: 54, scope: !3235)
!3244 = !DILocation(line: 239, column: 58, scope: !3235)
!3245 = !DILocation(line: 239, column: 36, scope: !3235)
!3246 = !DILocation(line: 240, column: 26, scope: !3235)
!3247 = !DILocation(line: 240, column: 30, scope: !3235)
!3248 = !DILocation(line: 240, column: 8, scope: !3235)
!3249 = !DILocation(line: 239, column: 2, scope: !3235)
!3250 = distinct !DISubprogram(name: "kasan_check_read", scope: !3251, file: !3251, line: 40, type: !3252, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3254)
!3251 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!6, !3222, !18}
!3254 = !{!3255, !3256}
!3255 = !DILocalVariable(name: "p", arg: 1, scope: !3250, file: !3251, line: 40, type: !3222)
!3256 = !DILocalVariable(name: "size", arg: 2, scope: !3250, file: !3251, line: 40, type: !18)
!3257 = !DILocation(line: 40, column: 58, scope: !3250)
!3258 = !DILocation(line: 40, column: 74, scope: !3250)
!3259 = !DILocation(line: 42, column: 2, scope: !3250)
!3260 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3261, file: !3261, line: 229, type: !3262, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3264)
!3261 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !3222, !1011, !77}
!3264 = !{!3265, !3266, !3267}
!3265 = !DILocalVariable(name: "ptr", arg: 1, scope: !3260, file: !3261, line: 229, type: !3222)
!3266 = !DILocalVariable(name: "size", arg: 2, scope: !3260, file: !3261, line: 229, type: !1011)
!3267 = !DILocalVariable(name: "type", arg: 3, scope: !3260, file: !3261, line: 230, type: !77)
!3268 = !DILocation(line: 229, column: 60, scope: !3260)
!3269 = !DILocation(line: 229, column: 72, scope: !3260)
!3270 = !DILocation(line: 230, column: 15, scope: !3260)
!3271 = !DILocation(line: 230, column: 23, scope: !3260)
!3272 = distinct !DISubprogram(name: "constant_test_bit", scope: !3130, file: !3130, line: 204, type: !3273, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!6, !696, !3202}
!3275 = !{!3276, !3277}
!3276 = !DILocalVariable(name: "nr", arg: 1, scope: !3272, file: !3130, line: 204, type: !696)
!3277 = !DILocalVariable(name: "addr", arg: 2, scope: !3272, file: !3130, line: 204, type: !3202)
!3278 = !DILocation(line: 204, column: 52, scope: !3272)
!3279 = !DILocation(line: 204, column: 86, scope: !3272)
!3280 = !DILocation(line: 206, column: 19, scope: !3272)
!3281 = !DILocation(line: 206, column: 22, scope: !3272)
!3282 = !DILocation(line: 206, column: 15, scope: !3272)
!3283 = !DILocation(line: 207, column: 4, scope: !3272)
!3284 = !DILocation(line: 207, column: 9, scope: !3272)
!3285 = !DILocation(line: 207, column: 12, scope: !3272)
!3286 = !DILocation(line: 206, column: 44, scope: !3272)
!3287 = !DILocation(line: 207, column: 37, scope: !3272)
!3288 = !DILocation(line: 206, column: 2, scope: !3272)
!3289 = distinct !DISubprogram(name: "variable_test_bit", scope: !3130, file: !3130, line: 224, type: !3273, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3290)
!3290 = !{!3291, !3292, !3293}
!3291 = !DILocalVariable(name: "nr", arg: 1, scope: !3289, file: !3130, line: 224, type: !696)
!3292 = !DILocalVariable(name: "addr", arg: 2, scope: !3289, file: !3130, line: 224, type: !3202)
!3293 = !DILocalVariable(name: "oldbit", scope: !3289, file: !3130, line: 226, type: !6)
!3294 = !DILocation(line: 224, column: 52, scope: !3289)
!3295 = !DILocation(line: 224, column: 86, scope: !3289)
!3296 = !DILocation(line: 226, column: 2, scope: !3289)
!3297 = !DILocation(line: 226, column: 7, scope: !3289)
!3298 = !DILocation(line: 231, column: 33, scope: !3289)
!3299 = !DILocation(line: 231, column: 46, scope: !3289)
!3300 = !DILocation(line: 228, column: 2, scope: !3289)
!3301 = !{i64 2147831052, i64 2147831126}
!3302 = !DILocation(line: 233, column: 9, scope: !3289)
!3303 = !DILocation(line: 234, column: 1, scope: !3289)
!3304 = !DILocation(line: 233, column: 2, scope: !3289)
!3305 = distinct !DISubprogram(name: "find_first_and_bit", scope: !3100, file: !3100, line: 334, type: !3306, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3308)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!33, !3076, !3076, !33}
!3308 = !{!3309, !3310, !3311, !3312}
!3309 = !DILocalVariable(name: "addr1", arg: 1, scope: !3305, file: !3100, line: 334, type: !3076)
!3310 = !DILocalVariable(name: "addr2", arg: 2, scope: !3305, file: !3100, line: 335, type: !3076)
!3311 = !DILocalVariable(name: "size", arg: 3, scope: !3305, file: !3100, line: 336, type: !33)
!3312 = !DILocalVariable(name: "val", scope: !3313, file: !3100, line: 339, type: !33)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !3100, line: 338, column: 31)
!3314 = distinct !DILexicalBlock(scope: !3305, file: !3100, line: 338, column: 6)
!3315 = !DILocation(line: 334, column: 55, scope: !3305)
!3316 = !DILocation(line: 335, column: 27, scope: !3305)
!3317 = !DILocation(line: 336, column: 20, scope: !3305)
!3318 = !DILocation(line: 338, column: 6, scope: !3314)
!3319 = !DILocation(line: 338, column: 6, scope: !3305)
!3320 = !DILocation(line: 339, column: 3, scope: !3313)
!3321 = !DILocation(line: 339, column: 17, scope: !3313)
!3322 = !DILocation(line: 339, column: 24, scope: !3313)
!3323 = !DILocation(line: 339, column: 23, scope: !3313)
!3324 = !DILocation(line: 339, column: 33, scope: !3313)
!3325 = !DILocation(line: 339, column: 32, scope: !3313)
!3326 = !DILocation(line: 339, column: 30, scope: !3313)
!3327 = !DILocation(line: 339, column: 41, scope: !3313)
!3328 = !DILocation(line: 339, column: 39, scope: !3313)
!3329 = !DILocation(line: 341, column: 10, scope: !3313)
!3330 = !DILocation(line: 341, column: 16, scope: !3313)
!3331 = !DILocation(line: 341, column: 29, scope: !3313)
!3332 = !DILocation(line: 341, column: 3, scope: !3313)
!3333 = !DILocation(line: 342, column: 2, scope: !3314)
!3334 = !DILocation(line: 344, column: 29, scope: !3305)
!3335 = !DILocation(line: 344, column: 36, scope: !3305)
!3336 = !DILocation(line: 344, column: 43, scope: !3305)
!3337 = !DILocation(line: 344, column: 9, scope: !3305)
!3338 = !DILocation(line: 344, column: 2, scope: !3305)
!3339 = !DILocation(line: 345, column: 1, scope: !3305)
!3340 = !DISubprogram(name: "_find_first_and_bit", scope: !3100, file: !3100, line: 30, type: !3306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3341 = distinct !DISubprogram(name: "irqd_is_managed_and_shutdown", scope: !15, file: !15, line: 406, type: !2860, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3342)
!3342 = !{!3343}
!3343 = !DILocalVariable(name: "d", arg: 1, scope: !3341, file: !15, line: 406, type: !61)
!3344 = !DILocation(line: 406, column: 66, scope: !3341)
!3345 = !DILocation(line: 408, column: 9, scope: !3341)
!3346 = !DILocation(line: 408, column: 28, scope: !3341)
!3347 = !DILocation(line: 408, column: 2, scope: !3341)
!3348 = !DISubprogram(name: "irq_startup", scope: !2478, file: !2478, line: 89, type: !3349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!77, !9, !6, !6}
!3351 = distinct !DISubprogram(name: "irqd_is_single_target", scope: !15, file: !15, line: 316, type: !2860, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3352)
!3352 = !{!3353}
!3353 = !DILocalVariable(name: "d", arg: 1, scope: !3351, file: !15, line: 316, type: !61)
!3354 = !DILocation(line: 316, column: 59, scope: !3351)
!3355 = !DILocation(line: 318, column: 9, scope: !3351)
!3356 = !DILocation(line: 318, column: 28, scope: !3351)
!3357 = !DILocation(line: 318, column: 2, scope: !3351)
!3358 = distinct !DISubprogram(name: "hk_should_isolate", scope: !3, file: !3, line: 191, type: !3359, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!6, !61, !18}
!3361 = !{!3362, !3363, !3364}
!3362 = !DILocalVariable(name: "data", arg: 1, scope: !3358, file: !3, line: 191, type: !61)
!3363 = !DILocalVariable(name: "cpu", arg: 2, scope: !3358, file: !3, line: 191, type: !18)
!3364 = !DILocalVariable(name: "hk_mask", scope: !3358, file: !3, line: 193, type: !78)
!3365 = !DILocation(line: 191, column: 48, scope: !3358)
!3366 = !DILocation(line: 191, column: 67, scope: !3358)
!3367 = !DILocation(line: 193, column: 2, scope: !3358)
!3368 = !DILocation(line: 193, column: 24, scope: !3358)
!3369 = !DILocation(line: 195, column: 7, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 195, column: 6)
!3371 = !DILocation(line: 195, column: 6, scope: !3358)
!3372 = !DILocation(line: 196, column: 3, scope: !3370)
!3373 = !DILocation(line: 198, column: 12, scope: !3358)
!3374 = !DILocation(line: 198, column: 10, scope: !3358)
!3375 = !DILocation(line: 199, column: 58, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 199, column: 6)
!3377 = !DILocation(line: 199, column: 21, scope: !3376)
!3378 = !DILocation(line: 199, column: 65, scope: !3376)
!3379 = !DILocation(line: 199, column: 6, scope: !3376)
!3380 = !DILocation(line: 199, column: 6, scope: !3358)
!3381 = !DILocation(line: 200, column: 3, scope: !3376)
!3382 = !DILocation(line: 202, column: 26, scope: !3358)
!3383 = !DILocation(line: 202, column: 31, scope: !3358)
!3384 = !DILocation(line: 202, column: 9, scope: !3358)
!3385 = !DILocation(line: 202, column: 2, scope: !3358)
!3386 = !DILocation(line: 203, column: 1, scope: !3358)
!3387 = !DISubprogram(name: "irq_set_affinity_locked", scope: !15, file: !15, line: 611, type: !75, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3388 = !DISubprogram(name: "housekeeping_enabled", scope: !2492, file: !2492, line: 25, type: !3389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!6, !2491}
!3391 = !DISubprogram(name: "housekeeping_cpumask", scope: !2492, file: !2492, line: 24, type: !3392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!78, !2491}
!3394 = distinct !DISubprogram(name: "cpumask_subset", scope: !27, file: !27, line: 661, type: !3395, scopeLine: 663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!6, !78, !78}
!3397 = !{!3398, !3399}
!3398 = !DILocalVariable(name: "src1p", arg: 1, scope: !3394, file: !27, line: 661, type: !78)
!3399 = !DILocalVariable(name: "src2p", arg: 2, scope: !3394, file: !27, line: 662, type: !78)
!3400 = !DILocation(line: 661, column: 57, scope: !3394)
!3401 = !DILocation(line: 662, column: 28, scope: !3394)
!3402 = !DILocation(line: 664, column: 23, scope: !3394)
!3403 = !DILocation(line: 664, column: 44, scope: !3394)
!3404 = !DILocation(line: 664, column: 9, scope: !3394)
!3405 = !DILocation(line: 664, column: 2, scope: !3394)
!3406 = distinct !DISubprogram(name: "bitmap_subset", scope: !3073, file: !3073, line: 427, type: !3407, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2444, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!6, !3076, !3076, !18}
!3409 = !{!3410, !3411, !3412}
!3410 = !DILocalVariable(name: "src1", arg: 1, scope: !3406, file: !3073, line: 427, type: !3076)
!3411 = !DILocalVariable(name: "src2", arg: 2, scope: !3406, file: !3073, line: 428, type: !3076)
!3412 = !DILocalVariable(name: "nbits", arg: 3, scope: !3406, file: !3073, line: 428, type: !18)
!3413 = !DILocation(line: 427, column: 55, scope: !3406)
!3414 = !DILocation(line: 428, column: 27, scope: !3406)
!3415 = !DILocation(line: 428, column: 46, scope: !3406)
!3416 = !DILocation(line: 430, column: 6, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3406, file: !3073, line: 430, column: 6)
!3418 = !DILocation(line: 430, column: 6, scope: !3406)
!3419 = !DILocation(line: 431, column: 15, scope: !3417)
!3420 = !DILocation(line: 431, column: 14, scope: !3417)
!3421 = !DILocation(line: 431, column: 25, scope: !3417)
!3422 = !DILocation(line: 431, column: 24, scope: !3417)
!3423 = !DILocation(line: 431, column: 22, scope: !3417)
!3424 = !DILocation(line: 431, column: 20, scope: !3417)
!3425 = !DILocation(line: 431, column: 34, scope: !3417)
!3426 = !DILocation(line: 431, column: 32, scope: !3417)
!3427 = !DILocation(line: 431, column: 10, scope: !3417)
!3428 = !DILocation(line: 431, column: 3, scope: !3417)
!3429 = !DILocation(line: 433, column: 26, scope: !3417)
!3430 = !DILocation(line: 433, column: 32, scope: !3417)
!3431 = !DILocation(line: 433, column: 38, scope: !3417)
!3432 = !DILocation(line: 433, column: 10, scope: !3417)
!3433 = !DILocation(line: 433, column: 3, scope: !3417)
!3434 = !DILocation(line: 434, column: 1, scope: !3406)
!3435 = !DISubprogram(name: "__bitmap_subset", scope: !3073, file: !3073, line: 169, type: !3407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
