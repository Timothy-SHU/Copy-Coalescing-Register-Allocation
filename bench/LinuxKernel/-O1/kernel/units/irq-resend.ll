; ModuleID = 'kernel/irq/resend.c'
source_filename = "kernel/irq/resend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.tasklet_struct = type { ptr, i64, %struct.atomic_t, i8, %union.anon.13, i64 }
%union.anon.13 = type { ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, [1 x %struct.cpumask], i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, %struct.hlist_node, [24 x i8] }
%struct.irq_common_data = type { i32, i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask] }
%struct.irq_data = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i64] }
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

@irq_resend_lock = internal global %struct.raw_spinlock zeroinitializer, align 4, !dbg !0
@irq_resend_list = internal global %struct.hlist_head zeroinitializer, align 8, !dbg !2519
@resend_tasklet = internal global %struct.tasklet_struct { ptr null, i64 0, %struct.atomic_t zeroinitializer, i8 1, %union.anon.13 { ptr @resend_irqs }, i64 0 }, align 8, !dbg !2521

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @clear_irq_resend(ptr noundef %desc) #0 align 16 !dbg !2551 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2553, metadata !DIExpression()), !dbg !2554
  call void @_raw_spin_lock(ptr noundef @irq_resend_lock) #7, !dbg !2555
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2556
  %resend_node = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 35, !dbg !2557
  call void @hlist_del_init(ptr noundef %resend_node) #7, !dbg !2558
  call void @_raw_spin_unlock(ptr noundef @irq_resend_lock) #7, !dbg !2559
  ret void, !dbg !2560
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2561 dso_local void @_raw_spin_lock(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_del_init(ptr noundef %n) #3 align 16 !dbg !2566 {
entry:
  %n.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2571, metadata !DIExpression()), !dbg !2572
  %0 = load ptr, ptr %n.addr, align 8, !dbg !2573
  %call = call i32 @hlist_unhashed(ptr noundef %0) #7, !dbg !2575
  %tobool = icmp ne i32 %call, 0, !dbg !2575
  br i1 %tobool, label %if.end, label %if.then, !dbg !2576

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %n.addr, align 8, !dbg !2577
  call void @__hlist_del(ptr noundef %1) #7, !dbg !2579
  %2 = load ptr, ptr %n.addr, align 8, !dbg !2580
  call void @INIT_HLIST_NODE(ptr noundef %2) #7, !dbg !2581
  br label %if.end, !dbg !2582

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2583
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2584 dso_local void @_raw_spin_unlock(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @irq_resend_init(ptr noundef %desc) #0 align 16 !dbg !2585 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2587, metadata !DIExpression()), !dbg !2588
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2589
  %resend_node = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 35, !dbg !2590
  call void @INIT_HLIST_NODE(ptr noundef %resend_node) #7, !dbg !2591
  ret void, !dbg !2592
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_HLIST_NODE(ptr noundef %h) #3 align 16 !dbg !2593 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2595, metadata !DIExpression()), !dbg !2596
  %0 = load ptr, ptr %h.addr, align 8, !dbg !2597
  %next = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 0, !dbg !2598
  store ptr null, ptr %next, align 8, !dbg !2599
  %1 = load ptr, ptr %h.addr, align 8, !dbg !2600
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1, !dbg !2601
  store ptr null, ptr %pprev, align 8, !dbg !2602
  ret void, !dbg !2603
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @check_irq_resend(ptr noundef %desc, i1 noundef zeroext %inject) #0 align 16 !dbg !2604 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %inject.addr = alloca i8, align 1
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2608, metadata !DIExpression()), !dbg !2611
  %frombool = zext i1 %inject to i8
  store i8 %frombool, ptr %inject.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %inject.addr, metadata !2609, metadata !DIExpression()), !dbg !2612
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !2613
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2610, metadata !DIExpression()), !dbg !2614
  store i32 0, ptr %err, align 4, !dbg !2614
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2615
  %call = call zeroext i1 @irq_settings_is_level(ptr noundef %0) #7, !dbg !2617
  br i1 %call, label %if.then, label %if.end, !dbg !2618

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !2619
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 6, !dbg !2621
  %2 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 4, !dbg !2622
  %and = and i32 %2, -513, !dbg !2622
  store i32 %and, ptr %core_internal_state__do_not_mess_with_it, align 4, !dbg !2622
  store i32 -22, ptr %retval, align 4, !dbg !2623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2623

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !2624
  %core_internal_state__do_not_mess_with_it1 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 6, !dbg !2626
  %4 = load i32, ptr %core_internal_state__do_not_mess_with_it1, align 4, !dbg !2626
  %and2 = and i32 %4, 64, !dbg !2627
  %tobool = icmp ne i32 %and2, 0, !dbg !2627
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !2628

if.then3:                                         ; preds = %if.end
  store i32 -16, ptr %retval, align 4, !dbg !2629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2629

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %desc.addr, align 8, !dbg !2630
  %core_internal_state__do_not_mess_with_it5 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 6, !dbg !2632
  %6 = load i32, ptr %core_internal_state__do_not_mess_with_it5, align 4, !dbg !2632
  %and6 = and i32 %6, 512, !dbg !2633
  %tobool7 = icmp ne i32 %and6, 0, !dbg !2633
  br i1 %tobool7, label %if.end10, label %land.lhs.true, !dbg !2634

land.lhs.true:                                    ; preds = %if.end4
  %7 = load i8, ptr %inject.addr, align 1, !dbg !2635, !range !2636, !noundef !663
  %tobool8 = trunc i8 %7 to i1, !dbg !2635
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !2637

if.then9:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !2638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2638

if.end10:                                         ; preds = %land.lhs.true, %if.end4
  %8 = load ptr, ptr %desc.addr, align 8, !dbg !2639
  %core_internal_state__do_not_mess_with_it11 = getelementptr inbounds %struct.irq_desc, ptr %8, i32 0, i32 6, !dbg !2640
  %9 = load i32, ptr %core_internal_state__do_not_mess_with_it11, align 4, !dbg !2641
  %and12 = and i32 %9, -513, !dbg !2641
  store i32 %and12, ptr %core_internal_state__do_not_mess_with_it11, align 4, !dbg !2641
  %10 = load ptr, ptr %desc.addr, align 8, !dbg !2642
  %call13 = call i32 @try_retrigger(ptr noundef %10) #7, !dbg !2644
  %tobool14 = icmp ne i32 %call13, 0, !dbg !2644
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !2645

if.then15:                                        ; preds = %if.end10
  %11 = load ptr, ptr %desc.addr, align 8, !dbg !2646
  %call16 = call i32 @irq_sw_resend(ptr noundef %11) #7, !dbg !2647
  store i32 %call16, ptr %err, align 4, !dbg !2648
  br label %if.end17, !dbg !2649

if.end17:                                         ; preds = %if.then15, %if.end10
  %12 = load i32, ptr %err, align 4, !dbg !2650
  %tobool18 = icmp ne i32 %12, 0, !dbg !2650
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !2652

if.then19:                                        ; preds = %if.end17
  %13 = load ptr, ptr %desc.addr, align 8, !dbg !2653
  %core_internal_state__do_not_mess_with_it20 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 6, !dbg !2654
  %14 = load i32, ptr %core_internal_state__do_not_mess_with_it20, align 4, !dbg !2655
  %or = or i32 %14, 64, !dbg !2655
  store i32 %or, ptr %core_internal_state__do_not_mess_with_it20, align 4, !dbg !2655
  br label %if.end21, !dbg !2653

if.end21:                                         ; preds = %if.then19, %if.end17
  %15 = load i32, ptr %err, align 4, !dbg !2656
  store i32 %15, ptr %retval, align 4, !dbg !2657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2657

cleanup:                                          ; preds = %if.end21, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !2658
  %16 = load i32, ptr %retval, align 4, !dbg !2658
  ret i32 %16, !dbg !2658
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_settings_is_level(ptr noundef %desc) #3 align 16 !dbg !2659 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2663, metadata !DIExpression()), !dbg !2664
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2665
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5, !dbg !2666
  %1 = load i32, ptr %status_use_accessors, align 8, !dbg !2666
  %and = and i32 %1, 256, !dbg !2667
  %tobool = icmp ne i32 %and, 0, !dbg !2665
  ret i1 %tobool, !dbg !2668
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @try_retrigger(ptr noundef %desc) #0 align 16 !dbg !2669 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2673, metadata !DIExpression()), !dbg !2674
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2675
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, !dbg !2677
  %chip = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 4, !dbg !2678
  %1 = load ptr, ptr %chip, align 8, !dbg !2678
  %irq_retrigger = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 11, !dbg !2679
  %2 = load ptr, ptr %irq_retrigger, align 8, !dbg !2679
  %tobool = icmp ne ptr %2, null, !dbg !2675
  br i1 %tobool, label %if.then, label %if.end, !dbg !2680

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !2681
  %irq_data1 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, !dbg !2682
  %chip2 = getelementptr inbounds %struct.irq_data, ptr %irq_data1, i32 0, i32 4, !dbg !2683
  %4 = load ptr, ptr %chip2, align 8, !dbg !2683
  %irq_retrigger3 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 11, !dbg !2684
  %5 = load ptr, ptr %irq_retrigger3, align 8, !dbg !2684
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !2685
  %irq_data4 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, !dbg !2686
  %call = call i32 %5(ptr noundef %irq_data4) #7, !dbg !2681
  store i32 %call, ptr %retval, align 4, !dbg !2687
  br label %return, !dbg !2687

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %desc.addr, align 8, !dbg !2688
  %irq_data5 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1, !dbg !2689
  %call6 = call i32 @irq_chip_retrigger_hierarchy(ptr noundef %irq_data5) #7, !dbg !2690
  store i32 %call6, ptr %retval, align 4, !dbg !2691
  br label %return, !dbg !2691

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !2692
  ret i32 %8, !dbg !2692
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_sw_resend(ptr noundef %desc) #0 align 16 !dbg !2693 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2695, metadata !DIExpression()), !dbg !2696
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2697
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, !dbg !2699
  %call = call zeroext i1 @handle_enforce_irqctx(ptr noundef %irq_data) #7, !dbg !2700
  br i1 %call, label %if.then, label %if.end, !dbg !2701

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2702
  br label %return, !dbg !2702

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !2703
  %call1 = call zeroext i1 @irq_settings_is_nested_thread(ptr noundef %1) #7, !dbg !2705
  br i1 %call1, label %if.then2, label %if.end10, !dbg !2706

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !2707
  %parent_irq = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 32, !dbg !2710
  %3 = load i32, ptr %parent_irq, align 64, !dbg !2710
  %tobool = icmp ne i32 %3, 0, !dbg !2707
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !2711

if.then3:                                         ; preds = %if.then2
  store i32 -22, ptr %retval, align 4, !dbg !2712
  br label %return, !dbg !2712

if.end4:                                          ; preds = %if.then2
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !2713
  %parent_irq5 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 32, !dbg !2714
  %5 = load i32, ptr %parent_irq5, align 64, !dbg !2714
  %call6 = call ptr @irq_to_desc(i32 noundef %5) #7, !dbg !2715
  store ptr %call6, ptr %desc.addr, align 8, !dbg !2716
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !2717
  %tobool7 = icmp ne ptr %6, null, !dbg !2717
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2719

if.then8:                                         ; preds = %if.end4
  store i32 -22, ptr %retval, align 4, !dbg !2720
  br label %return, !dbg !2720

if.end9:                                          ; preds = %if.end4
  br label %if.end10, !dbg !2721

if.end10:                                         ; preds = %if.end9, %if.end
  call void @_raw_spin_lock(ptr noundef @irq_resend_lock) #7, !dbg !2722
  %7 = load ptr, ptr %desc.addr, align 8, !dbg !2723
  %resend_node = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 35, !dbg !2725
  %call11 = call i32 @hlist_unhashed(ptr noundef %resend_node) #7, !dbg !2726
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2726
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !2727

if.then13:                                        ; preds = %if.end10
  %8 = load ptr, ptr %desc.addr, align 8, !dbg !2728
  %resend_node14 = getelementptr inbounds %struct.irq_desc, ptr %8, i32 0, i32 35, !dbg !2729
  call void @hlist_add_head(ptr noundef %resend_node14, ptr noundef @irq_resend_list) #7, !dbg !2730
  br label %if.end15, !dbg !2730

if.end15:                                         ; preds = %if.then13, %if.end10
  call void @_raw_spin_unlock(ptr noundef @irq_resend_lock) #7, !dbg !2731
  call void @tasklet_schedule(ptr noundef @resend_tasklet) #7, !dbg !2732
  store i32 0, ptr %retval, align 4, !dbg !2733
  br label %return, !dbg !2733

return:                                           ; preds = %if.end15, %if.then8, %if.then3, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !2734
  ret i32 %9, !dbg !2734
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hlist_unhashed(ptr noundef %h) #3 align 16 !dbg !2735 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2741, metadata !DIExpression()), !dbg !2742
  %0 = load ptr, ptr %h.addr, align 8, !dbg !2743
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1, !dbg !2744
  %1 = load ptr, ptr %pprev, align 8, !dbg !2744
  %tobool = icmp ne ptr %1, null, !dbg !2745
  %lnot = xor i1 %tobool, true, !dbg !2745
  %lnot.ext = zext i1 %lnot to i32, !dbg !2745
  ret i32 %lnot.ext, !dbg !2746
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__hlist_del(ptr noundef %n) #3 align 16 !dbg !2747 {
entry:
  %n.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %pprev = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2749, metadata !DIExpression()), !dbg !2752
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #8, !dbg !2753
  call void @llvm.dbg.declare(metadata ptr %next, metadata !2750, metadata !DIExpression()), !dbg !2754
  %0 = load ptr, ptr %n.addr, align 8, !dbg !2755
  %next1 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 0, !dbg !2756
  %1 = load ptr, ptr %next1, align 8, !dbg !2756
  store ptr %1, ptr %next, align 8, !dbg !2754
  call void @llvm.lifetime.start.p0(i64 8, ptr %pprev) #8, !dbg !2757
  call void @llvm.dbg.declare(metadata ptr %pprev, metadata !2751, metadata !DIExpression()), !dbg !2758
  %2 = load ptr, ptr %n.addr, align 8, !dbg !2759
  %pprev2 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1, !dbg !2760
  %3 = load ptr, ptr %pprev2, align 8, !dbg !2760
  store ptr %3, ptr %pprev, align 8, !dbg !2758
  br label %do.body, !dbg !2761

do.body:                                          ; preds = %entry
  br label %do.body3, !dbg !2762

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !2764

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !2764

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !2762

do.body4:                                         ; preds = %do.end
  %4 = load ptr, ptr %next, align 8, !dbg !2766
  %5 = load ptr, ptr %pprev, align 8, !dbg !2766
  store volatile ptr %4, ptr %5, align 8, !dbg !2766
  br label %do.cond5, !dbg !2766

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !2766

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !2762

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !2762

do.end8:                                          ; preds = %do.cond7
  %6 = load ptr, ptr %next, align 8, !dbg !2768
  %tobool = icmp ne ptr %6, null, !dbg !2768
  br i1 %tobool, label %if.then, label %if.end, !dbg !2770

if.then:                                          ; preds = %do.end8
  br label %do.body9, !dbg !2771

do.body9:                                         ; preds = %if.then
  br label %do.body10, !dbg !2772

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !2774

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !2774

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !2772

do.body13:                                        ; preds = %do.end12
  %7 = load ptr, ptr %pprev, align 8, !dbg !2776
  %8 = load ptr, ptr %next, align 8, !dbg !2776
  %pprev14 = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1, !dbg !2776
  store volatile ptr %7, ptr %pprev14, align 8, !dbg !2776
  br label %do.cond15, !dbg !2776

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !2776

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !2772

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !2772

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !2772

if.end:                                           ; preds = %do.end18, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pprev) #8, !dbg !2778
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #8, !dbg !2778
  ret void, !dbg !2778
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2779 dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @handle_enforce_irqctx(ptr noundef %data) #3 align 16 !dbg !2780 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2784, metadata !DIExpression()), !dbg !2785
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2786
  %call = call zeroext i1 @irqd_is_handle_enforce_irqctx(ptr noundef %0) #7, !dbg !2787
  ret i1 %call, !dbg !2788
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_settings_is_nested_thread(ptr noundef %desc) #3 align 16 !dbg !2789 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2791, metadata !DIExpression()), !dbg !2792
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2793
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5, !dbg !2794
  %1 = load i32, ptr %status_use_accessors, align 8, !dbg !2794
  %and = and i32 %1, 32768, !dbg !2795
  %tobool = icmp ne i32 %and, 0, !dbg !2793
  ret i1 %tobool, !dbg !2796
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2797 dso_local ptr @irq_to_desc(i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_add_head(ptr noundef %n, ptr noundef %h) #3 align 16 !dbg !2801 {
entry:
  %n.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2806, metadata !DIExpression()), !dbg !2809
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #8, !dbg !2811
  call void @llvm.dbg.declare(metadata ptr %first, metadata !2808, metadata !DIExpression()), !dbg !2812
  %0 = load ptr, ptr %h.addr, align 8, !dbg !2813
  %first1 = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !2814
  %1 = load ptr, ptr %first1, align 8, !dbg !2814
  store ptr %1, ptr %first, align 8, !dbg !2812
  br label %do.body, !dbg !2815

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2816

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !2818

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !2818

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !2816

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %first, align 8, !dbg !2820
  %3 = load ptr, ptr %n.addr, align 8, !dbg !2820
  %next = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 0, !dbg !2820
  store volatile ptr %2, ptr %next, align 8, !dbg !2820
  br label %do.cond4, !dbg !2820

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !2820

do.end5:                                          ; preds = %do.cond4
  br label %do.cond6, !dbg !2816

do.cond6:                                         ; preds = %do.end5
  br label %do.end7, !dbg !2816

do.end7:                                          ; preds = %do.cond6
  %4 = load ptr, ptr %first, align 8, !dbg !2822
  %tobool = icmp ne ptr %4, null, !dbg !2822
  br i1 %tobool, label %if.then, label %if.end, !dbg !2824

if.then:                                          ; preds = %do.end7
  br label %do.body8, !dbg !2825

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !2826

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !2828

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !2828

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !2826

do.body12:                                        ; preds = %do.end11
  %5 = load ptr, ptr %n.addr, align 8, !dbg !2830
  %next13 = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 0, !dbg !2830
  %6 = load ptr, ptr %first, align 8, !dbg !2830
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1, !dbg !2830
  store volatile ptr %next13, ptr %pprev, align 8, !dbg !2830
  br label %do.cond14, !dbg !2830

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !2830

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !2826

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !2826

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !2826

if.end:                                           ; preds = %do.end17, %do.end7
  br label %do.body18, !dbg !2832

do.body18:                                        ; preds = %if.end
  br label %do.body19, !dbg !2833

do.body19:                                        ; preds = %do.body18
  br label %do.cond20, !dbg !2835

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !2835

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !2833

do.body22:                                        ; preds = %do.end21
  %7 = load ptr, ptr %n.addr, align 8, !dbg !2837
  %8 = load ptr, ptr %h.addr, align 8, !dbg !2837
  %first23 = getelementptr inbounds %struct.hlist_head, ptr %8, i32 0, i32 0, !dbg !2837
  store volatile ptr %7, ptr %first23, align 8, !dbg !2837
  br label %do.cond24, !dbg !2837

do.cond24:                                        ; preds = %do.body22
  br label %do.end25, !dbg !2837

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !2833

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !2833

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !2839

do.body28:                                        ; preds = %do.end27
  br label %do.body29, !dbg !2840

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !2842

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !2842

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !2840

do.body32:                                        ; preds = %do.end31
  %9 = load ptr, ptr %h.addr, align 8, !dbg !2844
  %first33 = getelementptr inbounds %struct.hlist_head, ptr %9, i32 0, i32 0, !dbg !2844
  %10 = load ptr, ptr %n.addr, align 8, !dbg !2844
  %pprev34 = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1, !dbg !2844
  store volatile ptr %first33, ptr %pprev34, align 8, !dbg !2844
  br label %do.cond35, !dbg !2844

do.cond35:                                        ; preds = %do.body32
  br label %do.end36, !dbg !2844

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !2840

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !2840

do.end38:                                         ; preds = %do.cond37
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #8, !dbg !2846
  ret void, !dbg !2846
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tasklet_schedule(ptr noundef %t) #3 align 16 !dbg !2847 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !2849, metadata !DIExpression()), !dbg !2850
  %0 = load ptr, ptr %t.addr, align 8, !dbg !2851
  %state = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 1, !dbg !2853
  %call = call zeroext i1 @test_and_set_bit(i64 noundef 0, ptr noundef %state) #7, !dbg !2854
  br i1 %call, label %if.end, label %if.then, !dbg !2855

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %t.addr, align 8, !dbg !2856
  call void @__tasklet_schedule(ptr noundef %1) #7, !dbg !2857
  br label %if.end, !dbg !2857

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2858
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_is_handle_enforce_irqctx(ptr noundef %d) #3 align 16 !dbg !2859 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2861, metadata !DIExpression()), !dbg !2862
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2863
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2863
  %1 = load ptr, ptr %common, align 8, !dbg !2863
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !2863
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !2863
  %and = and i32 %2, 134217728, !dbg !2864
  %tobool = icmp ne i32 %and, 0, !dbg !2863
  ret i1 %tobool, !dbg !2865
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2866 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2873, metadata !DIExpression()), !dbg !2875
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2874, metadata !DIExpression()), !dbg !2876
  br label %do.body, !dbg !2877

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2878

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2880
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2881
  %div = sdiv i64 %1, 64, !dbg !2881
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2882
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #7, !dbg !2883
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2884
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2885
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %2, ptr noundef %3) #7, !dbg !2886
  ret i1 %call, !dbg !2887
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2888 dso_local void @__tasklet_schedule(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !2889 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2897, metadata !DIExpression()), !dbg !2899
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2898, metadata !DIExpression()), !dbg !2900
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2901
  %1 = load i64, ptr %size.addr, align 8, !dbg !2902
  %conv = trunc i64 %1 to i32, !dbg !2902
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #7, !dbg !2903
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2904
  %3 = load i64, ptr %size.addr, align 8, !dbg !2904
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #7, !dbg !2904
  ret void, !dbg !2905
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2906 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2909, metadata !DIExpression()), !dbg !2913
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2910, metadata !DIExpression()), !dbg !2914
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #8, !dbg !2915
  call void @llvm.dbg.declare(metadata ptr %c, metadata !2911, metadata !DIExpression()), !dbg !2915
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2915
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2915
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #8, !dbg !2915, !srcloc !2916
  %3 = icmp ult i8 %2, 2, !dbg !2915
  call void @llvm.assume(i1 %3), !dbg !2915
  store i8 %2, ptr %c, align 1, !dbg !2915
  %4 = load i8, ptr %c, align 1, !dbg !2915, !range !2636, !noundef !663
  %tobool = trunc i8 %4 to i1, !dbg !2915
  %frombool = zext i1 %tobool to i8, !dbg !2915
  store i8 %frombool, ptr %tmp, align 1, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #8, !dbg !2917
  %5 = load i8, ptr %tmp, align 1, !dbg !2915, !range !2636, !noundef !663
  %tobool1 = trunc i8 %5 to i1, !dbg !2915
  ret i1 %tobool1, !dbg !2918
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !2919 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2924, metadata !DIExpression()), !dbg !2926
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2925, metadata !DIExpression()), !dbg !2927
  ret i1 true, !dbg !2928
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !2929 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2934, metadata !DIExpression()), !dbg !2937
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2935, metadata !DIExpression()), !dbg !2938
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2936, metadata !DIExpression()), !dbg !2939
  ret void, !dbg !2940
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @resend_irqs(ptr noundef %unused) #0 align 16 !dbg !2941 {
entry:
  %unused.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !2943, metadata !DIExpression()), !dbg !2948
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #8, !dbg !2949
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !2944, metadata !DIExpression()), !dbg !2950
  call void @_raw_spin_lock_irq(ptr noundef @irq_resend_lock) #7, !dbg !2951
  br label %while.cond, !dbg !2952

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @hlist_empty(ptr noundef @irq_resend_list) #7, !dbg !2953
  %tobool = icmp ne i32 %call, 0, !dbg !2954
  %lnot = xor i1 %tobool, true, !dbg !2954
  br i1 %lnot, label %while.body, label %while.end, !dbg !2952

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !2955
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2945, metadata !DIExpression()), !dbg !2955
  %0 = load ptr, ptr @irq_resend_list, align 8, !dbg !2955
  store ptr %0, ptr %__mptr, align 8, !dbg !2955
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2955
  %add.ptr = getelementptr i8, ptr %1, i64 -408, !dbg !2955
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2955
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !2956
  %2 = load ptr, ptr %tmp, align 8, !dbg !2955
  store ptr %2, ptr %desc, align 8, !dbg !2957
  %3 = load ptr, ptr %desc, align 8, !dbg !2958
  %resend_node = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 35, !dbg !2959
  call void @hlist_del_init(ptr noundef %resend_node) #7, !dbg !2960
  call void @_raw_spin_unlock(ptr noundef @irq_resend_lock) #7, !dbg !2961
  %4 = load ptr, ptr %desc, align 8, !dbg !2962
  %handle_irq = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 3, !dbg !2963
  %5 = load ptr, ptr %handle_irq, align 8, !dbg !2963
  %6 = load ptr, ptr %desc, align 8, !dbg !2964
  call void %5(ptr noundef %6) #7, !dbg !2962
  call void @_raw_spin_lock(ptr noundef @irq_resend_lock) #7, !dbg !2965
  br label %while.cond, !dbg !2952, !llvm.loop !2966

while.end:                                        ; preds = %while.cond
  call void @_raw_spin_unlock_irq(ptr noundef @irq_resend_lock) #7, !dbg !2970
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #8, !dbg !2971
  ret void, !dbg !2971
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2972 dso_local void @_raw_spin_lock_irq(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hlist_empty(ptr noundef %h) #3 align 16 !dbg !2973 {
entry:
  %h.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !2979, metadata !DIExpression()), !dbg !2980
  br label %do.body, !dbg !2981

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2983

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %h.addr, align 8, !dbg !2981
  %first = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !2981
  %1 = load volatile ptr, ptr %first, align 8, !dbg !2981
  store ptr %1, ptr %tmp, align 8, !dbg !2983
  %2 = load ptr, ptr %tmp, align 8, !dbg !2981
  %tobool = icmp ne ptr %2, null, !dbg !2985
  %lnot = xor i1 %tobool, true, !dbg !2985
  %lnot.ext = zext i1 %lnot to i32, !dbg !2985
  ret i32 %lnot.ext, !dbg !2986
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2987 dso_local void @_raw_spin_unlock_irq(ptr noundef) #2 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { noredzone }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549}
!llvm.ident = !{!2550}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "irq_resend_lock", scope: !2, file: !3, line: 26, type: !457, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/irq/.resend.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/irq/resend\22 -D KBUILD_BASENAME=\22resend\22 -D KBUILD_MODNAME=\22resend\22 -D __KBUILD_MODNAME=kmod_resend -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/irq/resend.ll kernel/irq/resend.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !119, globals: !2518, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/irq/resend.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "488440378e966cd8f00624b69ca3ac0f")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !50, !64, !83, !110, !114}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !6, line: 497, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0)
!10 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1)
!11 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2)
!12 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !14, line: 11, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!17 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!18 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !20, line: 65, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!23 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !25, line: 16, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "TT_NONE", value: 0)
!28 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!29 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !31, line: 51, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!34 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!35 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!36 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !38, line: 26, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!41 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!42 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !44, line: 312, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!47 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!48 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!49 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 60, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "kernel/irq/internals.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1a83a6391bcc5e0feb0932e94d9f4c16")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!53 = !DIEnumerator(name: "IRQS_AUTODETECT", value: 1)
!54 = !DIEnumerator(name: "IRQS_SPURIOUS_DISABLED", value: 2)
!55 = !DIEnumerator(name: "IRQS_POLL_INPROGRESS", value: 8)
!56 = !DIEnumerator(name: "IRQS_ONESHOT", value: 32)
!57 = !DIEnumerator(name: "IRQS_REPLAY", value: 64)
!58 = !DIEnumerator(name: "IRQS_WAITING", value: 128)
!59 = !DIEnumerator(name: "IRQS_PENDING", value: 512)
!60 = !DIEnumerator(name: "IRQS_SUSPENDED", value: 2048)
!61 = !DIEnumerator(name: "IRQS_TIMINGS", value: 4096)
!62 = !DIEnumerator(name: "IRQS_NMI", value: 8192)
!63 = !DIEnumerator(name: "IRQS_SYSFS", value: 16384)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 6, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "kernel/irq/settings.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "472defa47e63f7ff01ae8d2992e315d8")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!67 = !DIEnumerator(name: "_IRQ_DEFAULT_INIT_FLAGS", value: 0)
!68 = !DIEnumerator(name: "_IRQ_PER_CPU", value: 512)
!69 = !DIEnumerator(name: "_IRQ_LEVEL", value: 256)
!70 = !DIEnumerator(name: "_IRQ_NOPROBE", value: 1024)
!71 = !DIEnumerator(name: "_IRQ_NOREQUEST", value: 2048)
!72 = !DIEnumerator(name: "_IRQ_NOTHREAD", value: 65536)
!73 = !DIEnumerator(name: "_IRQ_NOAUTOEN", value: 4096)
!74 = !DIEnumerator(name: "_IRQ_MOVE_PCNTXT", value: 16384)
!75 = !DIEnumerator(name: "_IRQ_NO_BALANCING", value: 8192)
!76 = !DIEnumerator(name: "_IRQ_NESTED_THREAD", value: 32768)
!77 = !DIEnumerator(name: "_IRQ_PER_CPU_DEVID", value: 131072)
!78 = !DIEnumerator(name: "_IRQ_IS_POLLED", value: 262144)
!79 = !DIEnumerator(name: "_IRQ_DISABLE_UNLAZY", value: 524288)
!80 = !DIEnumerator(name: "_IRQ_HIDDEN", value: 1048576)
!81 = !DIEnumerator(name: "_IRQ_NO_DEBUG", value: 2097152)
!82 = !DIEnumerator(name: "_IRQF_MODIFY_MASK", value: 2096911)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 227, baseType: !7, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce91671074049198389009db13b88160")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!86 = !DIEnumerator(name: "IRQD_TRIGGER_MASK", value: 15)
!87 = !DIEnumerator(name: "IRQD_SETAFFINITY_PENDING", value: 256)
!88 = !DIEnumerator(name: "IRQD_ACTIVATED", value: 512)
!89 = !DIEnumerator(name: "IRQD_NO_BALANCING", value: 1024)
!90 = !DIEnumerator(name: "IRQD_PER_CPU", value: 2048)
!91 = !DIEnumerator(name: "IRQD_AFFINITY_SET", value: 4096)
!92 = !DIEnumerator(name: "IRQD_LEVEL", value: 8192)
!93 = !DIEnumerator(name: "IRQD_WAKEUP_STATE", value: 16384)
!94 = !DIEnumerator(name: "IRQD_MOVE_PCNTXT", value: 32768)
!95 = !DIEnumerator(name: "IRQD_IRQ_DISABLED", value: 65536)
!96 = !DIEnumerator(name: "IRQD_IRQ_MASKED", value: 131072)
!97 = !DIEnumerator(name: "IRQD_IRQ_INPROGRESS", value: 262144)
!98 = !DIEnumerator(name: "IRQD_WAKEUP_ARMED", value: 524288)
!99 = !DIEnumerator(name: "IRQD_FORWARDED_TO_VCPU", value: 1048576)
!100 = !DIEnumerator(name: "IRQD_AFFINITY_MANAGED", value: 2097152)
!101 = !DIEnumerator(name: "IRQD_IRQ_STARTED", value: 4194304)
!102 = !DIEnumerator(name: "IRQD_MANAGED_SHUTDOWN", value: 8388608)
!103 = !DIEnumerator(name: "IRQD_SINGLE_TARGET", value: 16777216)
!104 = !DIEnumerator(name: "IRQD_DEFAULT_TRIGGER_SET", value: 33554432)
!105 = !DIEnumerator(name: "IRQD_CAN_RESERVE", value: 67108864)
!106 = !DIEnumerator(name: "IRQD_HANDLE_ENFORCE_IRQCTX", value: 134217728)
!107 = !DIEnumerator(name: "IRQD_AFFINITY_ON_ACTIVATE", value: 268435456)
!108 = !DIEnumerator(name: "IRQD_IRQ_ENABLED_ON_SUSPEND", value: 536870912)
!109 = !DIEnumerator(name: "IRQD_RESEND_WHEN_IN_PROGRESS", value: 1073741824)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 684, baseType: !7, size: 32, elements: !111)
!111 = !{!112, !113}
!112 = !DIEnumerator(name: "TASKLET_STATE_SCHED", value: 0)
!113 = !DIEnumerator(name: "TASKLET_STATE_RUN", value: 1)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !115, line: 10, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!116 = !{!117, !118}
!117 = !DIEnumerator(name: "false", value: 0)
!118 = !DIEnumerator(name: "true", value: 1)
!119 = !{!120, !129, !131, !132, !2516}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !124, line: 198, size: 128, elements: !125)
!124 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!125 = !{!126, !127}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !124, line: 199, baseType: !122, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !123, file: !124, line: 199, baseType: !128, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !128)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !134, line: 55, size: 3584, align: 512, elements: !135)
!134 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "435ffcdb49377a4c91932ebe21d66dca")
!135 = !{!136, !157, !262, !264, !270, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1793, !1794, !1795, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !2161, !2162, !2163, !2514, !2515}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !133, file: !134, line: 56, baseType: !137, size: 320)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !84, line: 147, size: 320, elements: !138)
!138 = !{!139, !140, !141, !142, !145, !156}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !137, file: !84, line: 148, baseType: !7, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !137, file: !84, line: 150, baseType: !7, size: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !137, file: !84, line: 152, baseType: !131, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !137, file: !84, line: 153, baseType: !143, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !84, line: 129, flags: DIFlagFwdDecl)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !137, file: !84, line: 155, baseType: !146, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !147, line: 913, baseType: !148)
!147 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 64, elements: !154)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !147, line: 19, size: 64, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !149, file: !147, line: 19, baseType: !152, size: 64)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 64, elements: !154)
!153 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!154 = !{!155}
!155 = !DISubrange(count: 1)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "effective_affinity", scope: !137, file: !84, line: 158, baseType: !146, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !133, file: !134, line: 57, baseType: !158, size: 448, offset: 320)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !84, line: 179, size: 448, elements: !159)
!159 = !{!160, !165, !166, !167, !169, !256, !260, !261}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !158, file: !84, line: 180, baseType: !161, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !162, line: 21, baseType: !163)
!162 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !164, line: 27, baseType: !7)
!164 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!165 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !158, file: !84, line: 181, baseType: !7, size: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !158, file: !84, line: 182, baseType: !153, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !158, file: !84, line: 183, baseType: !168, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !158, file: !84, line: 184, baseType: !170, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !84, line: 501, size: 2112, elements: !172)
!172 = !{!173, !177, !182, !186, !187, !188, !189, !190, !191, !192, !193, !202, !206, !210, !211, !212, !213, !214, !215, !216, !217, !223, !224, !225, !231, !232, !237, !241, !245, !249, !253, !254, !255}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !171, file: !84, line: 502, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !171, file: !84, line: 503, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!7, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !171, file: !84, line: 504, baseType: !183, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !181}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !171, file: !84, line: 505, baseType: !183, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !171, file: !84, line: 506, baseType: !183, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !171, file: !84, line: 508, baseType: !183, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !171, file: !84, line: 509, baseType: !183, size: 64, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !171, file: !84, line: 510, baseType: !183, size: 64, offset: 448)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !171, file: !84, line: 511, baseType: !183, size: 64, offset: 512)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !171, file: !84, line: 512, baseType: !183, size: 64, offset: 576)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !171, file: !84, line: 514, baseType: !194, size: 64, offset: 640)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!197, !181, !198, !200}
!197 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !124, line: 35, baseType: !201)
!201 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !171, file: !84, line: 515, baseType: !203, size: 64, offset: 704)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!197, !181}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !171, file: !84, line: 516, baseType: !207, size: 64, offset: 768)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!197, !181, !7}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !171, file: !84, line: 517, baseType: !207, size: 64, offset: 832)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !171, file: !84, line: 519, baseType: !183, size: 64, offset: 896)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !171, file: !84, line: 520, baseType: !183, size: 64, offset: 960)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !171, file: !84, line: 526, baseType: !183, size: 64, offset: 1024)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !171, file: !84, line: 527, baseType: !183, size: 64, offset: 1088)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !171, file: !84, line: 528, baseType: !183, size: 64, offset: 1152)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !171, file: !84, line: 530, baseType: !183, size: 64, offset: 1216)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !171, file: !84, line: 532, baseType: !218, size: 64, offset: 1280)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !181, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !84, line: 27, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !171, file: !84, line: 533, baseType: !203, size: 64, offset: 1344)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !171, file: !84, line: 534, baseType: !183, size: 64, offset: 1408)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !171, file: !84, line: 536, baseType: !226, size: 64, offset: 1472)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !181, !229}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !84, line: 29, flags: DIFlagFwdDecl)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !171, file: !84, line: 537, baseType: !226, size: 64, offset: 1536)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !171, file: !84, line: 539, baseType: !233, size: 64, offset: 1600)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!197, !181, !5, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !171, file: !84, line: 540, baseType: !238, size: 64, offset: 1664)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!197, !181, !5, !200}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !171, file: !84, line: 542, baseType: !242, size: 64, offset: 1728)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!197, !181, !131}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !171, file: !84, line: 544, baseType: !246, size: 64, offset: 1792)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !181, !7}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !171, file: !84, line: 545, baseType: !250, size: 64, offset: 1856)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !181, !198}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !171, file: !84, line: 547, baseType: !203, size: 64, offset: 1920)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !171, file: !84, line: 548, baseType: !183, size: 64, offset: 1984)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !171, file: !84, line: 550, baseType: !153, size: 64, offset: 2048)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !158, file: !84, line: 185, baseType: !257, size: 64, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !259, line: 13, flags: DIFlagFwdDecl)
!259 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!260 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !158, file: !84, line: 187, baseType: !181, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !158, file: !84, line: 189, baseType: !131, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !133, file: !134, line: 58, baseType: !263, size: 64, offset: 768)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !133, file: !134, line: 59, baseType: !265, size: 64, offset: 832)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !266, line: 12, baseType: !267)
!266 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !132}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !133, file: !134, line: 60, baseType: !271, size: 64, offset: 896)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !6, line: 118, size: 1024, align: 512, elements: !273)
!273 = !{!274, !280, !281, !282, !283, !284, !1771, !1772, !1773, !1774, !1775, !1776, !1777}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !272, file: !6, line: 119, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !6, line: 100, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!279, !197, !131}
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !14, line: 17, baseType: !13)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !272, file: !6, line: 120, baseType: !131, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !272, file: !6, line: 121, baseType: !131, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !6, line: 122, baseType: !271, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !272, file: !6, line: 123, baseType: !275, size: 64, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !272, file: !6, line: 124, baseType: !285, size: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !287, line: 746, size: 58368, elements: !288)
!287 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!288 = !{!289, !297, !298, !299, !309, !310, !311, !312, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !404, !415, !542, !546, !549, !580, !581, !582, !583, !587, !589, !590, !591, !592, !593, !594, !605, !606, !609, !610, !611, !612, !613, !614, !615, !616, !623, !624, !631, !632, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !934, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !984, !986, !987, !988, !1000, !1002, !1003, !1004, !1005, !1006, !1007, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1033, !1039, !1043, !1044, !1045, !1048, !1052, !1055, !1062, !1067, !1070, !1073, !1076, !1079, !1082, !1085, !1091, !1092, !1093, !1099, !1100, !1104, !1105, !1106, !1109, !1117, !1118, !1127, !1136, !1137, !1138, !1139, !1140, !1145, !1146, !1147, !1150, !1151, !1154, !1157, !1160, !1163, !1166, !1167, !1254, !1265, !1266, !1267, !1268, !1274, !1279, !1280, !1281, !1284, !1285, !1288, !1291, !1292, !1295, !1296, !1297, !1300, !1301, !1302, !1305, !1306, !1307, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1339, !1342, !1410, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1422, !1494, !1496, !1497, !1498, !1499, !1500, !1512, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1542, !1543, !1544}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !286, file: !287, line: 752, baseType: !290, size: 192)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !291, line: 56, size: 192, elements: !292)
!291 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!292 = !{!293, !294, !295, !296}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 57, baseType: !153, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !290, file: !291, line: 58, baseType: !153, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !290, file: !291, line: 59, baseType: !161, size: 32, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !290, file: !291, line: 61, baseType: !161, size: 32, offset: 160)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !286, file: !287, line: 754, baseType: !7, size: 32, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !286, file: !287, line: 767, baseType: !131, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !286, file: !287, line: 768, baseType: !300, size: 32, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !301, line: 113, baseType: !302)
!301 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !301, line: 111, size: 32, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !302, file: !301, line: 112, baseType: !305, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !124, line: 174, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 172, size: 32, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !306, file: !124, line: 173, baseType: !197, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !287, line: 770, baseType: !7, size: 32, offset: 352)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !286, file: !287, line: 771, baseType: !7, size: 32, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !286, file: !287, line: 774, baseType: !197, size: 32, offset: 416)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !286, file: !287, line: 775, baseType: !313, size: 128, offset: 448)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !314, line: 58, size: 128, elements: !315)
!314 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!315 = !{!316, !322, !327, !331}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !313, file: !314, line: 59, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !318, line: 60, size: 64, elements: !319)
!318 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !318, line: 61, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, scope: !313, file: !314, line: 60, baseType: !323, size: 32, offset: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !314, line: 60, size: 32, elements: !324)
!324 = !{!325, !326}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !323, file: !314, line: 61, baseType: !7, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !323, file: !314, line: 62, baseType: !305, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !313, file: !314, line: 65, baseType: !328, size: 16, offset: 96)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !162, line: 19, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !164, line: 24, baseType: !330)
!330 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !313, file: !314, line: 65, baseType: !328, size: 16, offset: 112)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !286, file: !287, line: 776, baseType: !7, size: 32, offset: 576)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !286, file: !287, line: 777, baseType: !153, size: 64, offset: 640)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !286, file: !287, line: 778, baseType: !285, size: 64, offset: 704)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !286, file: !287, line: 787, baseType: !197, size: 32, offset: 768)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !286, file: !287, line: 788, baseType: !197, size: 32, offset: 800)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !286, file: !287, line: 790, baseType: !197, size: 32, offset: 832)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !286, file: !287, line: 792, baseType: !197, size: 32, offset: 864)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !286, file: !287, line: 793, baseType: !197, size: 32, offset: 896)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !286, file: !287, line: 794, baseType: !197, size: 32, offset: 928)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !286, file: !287, line: 795, baseType: !7, size: 32, offset: 960)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !286, file: !287, line: 797, baseType: !343, size: 2048, offset: 1024)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !287, line: 551, size: 2048, elements: !344)
!344 = !{!345, !350, !358, !362, !363, !369, !370, !371, !372, !373, !374, !378, !379, !380, !381, !383, !386, !387, !388}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !343, file: !287, line: 553, baseType: !346, size: 128)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !287, line: 411, size: 128, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !346, file: !287, line: 412, baseType: !153, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !346, file: !287, line: 413, baseType: !161, size: 32, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !343, file: !287, line: 554, baseType: !351, size: 192, align: 64, offset: 128)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !352, line: 5, size: 192, align: 64, elements: !353)
!352 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!353 = !{!354, !355, !357}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !351, file: !352, line: 6, baseType: !153, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !351, file: !352, line: 7, baseType: !356, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !351, file: !352, line: 8, baseType: !356, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !343, file: !287, line: 555, baseType: !359, size: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !162, line: 23, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !164, line: 31, baseType: !361)
!361 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !343, file: !287, line: 556, baseType: !359, size: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !343, file: !287, line: 558, baseType: !364, size: 128, offset: 448)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !124, line: 190, size: 128, elements: !365)
!365 = !{!366, !368}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !124, line: 191, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !364, file: !124, line: 191, baseType: !367, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !343, file: !287, line: 559, baseType: !7, size: 32, offset: 576)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !343, file: !287, line: 561, baseType: !359, size: 64, offset: 640)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !343, file: !287, line: 562, baseType: !359, size: 64, offset: 704)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !343, file: !287, line: 563, baseType: !359, size: 64, offset: 768)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !343, file: !287, line: 564, baseType: !359, size: 64, offset: 832)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !343, file: !287, line: 565, baseType: !375, size: 64, offset: 896)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !162, line: 22, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !164, line: 30, baseType: !377)
!377 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !343, file: !287, line: 566, baseType: !359, size: 64, offset: 960)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !343, file: !287, line: 568, baseType: !359, size: 64, offset: 1024)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !343, file: !287, line: 571, baseType: !197, size: 32, offset: 1088)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !343, file: !287, line: 572, baseType: !382, size: 64, offset: 1152)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !343, file: !287, line: 574, baseType: !384, size: 64, offset: 1216)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !287, line: 49, flags: DIFlagFwdDecl)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !343, file: !287, line: 576, baseType: !384, size: 64, offset: 1280)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !343, file: !287, line: 578, baseType: !153, size: 64, offset: 1344)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !343, file: !287, line: 588, baseType: !389, size: 512, align: 512, offset: 1536)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !287, line: 497, size: 512, align: 512, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !389, file: !287, line: 498, baseType: !359, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !389, file: !287, line: 499, baseType: !359, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !389, file: !287, line: 500, baseType: !359, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !389, file: !287, line: 501, baseType: !161, size: 32, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !389, file: !287, line: 502, baseType: !161, size: 32, offset: 224)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !389, file: !287, line: 503, baseType: !153, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !389, file: !287, line: 504, baseType: !153, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !389, file: !287, line: 505, baseType: !153, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !389, file: !287, line: 506, baseType: !400, size: 64, align: 64, offset: 448)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !287, line: 445, size: 64, align: 64, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !400, file: !287, line: 446, baseType: !7, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !400, file: !287, line: 447, baseType: !7, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !286, file: !287, line: 798, baseType: !405, size: 384, offset: 3072)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !287, line: 592, size: 384, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412, !413}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !405, file: !287, line: 593, baseType: !364, size: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !405, file: !287, line: 594, baseType: !153, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !405, file: !287, line: 595, baseType: !153, size: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !405, file: !287, line: 596, baseType: !7, size: 32, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !405, file: !287, line: 597, baseType: !330, size: 16, offset: 288)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !405, file: !287, line: 598, baseType: !330, size: 16, offset: 304)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !405, file: !287, line: 600, baseType: !414, size: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !286, file: !287, line: 799, baseType: !416, size: 1792, offset: 3456)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !287, line: 610, size: 1792, elements: !417)
!417 = !{!418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !539, !540}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !416, file: !287, line: 611, baseType: !351, size: 192, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !416, file: !287, line: 618, baseType: !359, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !416, file: !287, line: 619, baseType: !359, size: 64, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !416, file: !287, line: 620, baseType: !359, size: 64, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !416, file: !287, line: 621, baseType: !359, size: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !416, file: !287, line: 622, baseType: !359, size: 64, offset: 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !416, file: !287, line: 629, baseType: !375, size: 64, offset: 512)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !416, file: !287, line: 630, baseType: !359, size: 64, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !416, file: !287, line: 631, baseType: !7, size: 32, offset: 640)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !416, file: !287, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !416, file: !287, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !416, file: !287, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !416, file: !287, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !416, file: !287, line: 662, baseType: !432, size: 512, offset: 704)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !433)
!433 = !{!434, !442, !443, !448, !535, !536, !537, !538}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !432, file: !20, line: 119, baseType: !435, size: 256)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !436, line: 9, size: 256, elements: !437)
!436 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !435, file: !436, line: 10, baseType: !351, size: 192, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !435, file: !436, line: 11, baseType: !440, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !441, line: 29, baseType: !375)
!441 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !432, file: !20, line: 120, baseType: !440, size: 64, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !432, file: !20, line: 121, baseType: !444, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!19, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !432, file: !20, line: 122, baseType: !449, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !451)
!451 = !{!452, !503, !504, !508, !518, !519, !530, !534}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !450, file: !20, line: 160, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 215, size: 4608, align: 512, elements: !455)
!455 = !{!456, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !454, file: !20, line: 216, baseType: !457, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !458, line: 23, baseType: !459)
!458 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !458, line: 14, size: 32, elements: !460)
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !459, file: !458, line: 15, baseType: !462, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !463, line: 44, baseType: !464)
!463 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !463, line: 14, size: 32, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !463, line: 15, baseType: !467, size: 32)
!467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !464, file: !463, line: 15, size: 32, elements: !468)
!468 = !{!469, !470, !478}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !467, file: !463, line: 16, baseType: !305, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !463, line: 24, baseType: !471, size: 16)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !467, file: !463, line: 24, size: 16, elements: !472)
!472 = !{!473, !477}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !471, file: !463, line: 25, baseType: !474, size: 8)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !162, line: 17, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !164, line: 21, baseType: !476)
!476 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !471, file: !463, line: 26, baseType: !474, size: 8, offset: 8)
!478 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !463, line: 28, baseType: !479, size: 32)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !467, file: !463, line: 28, size: 32, elements: !480)
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !479, file: !463, line: 29, baseType: !328, size: 16)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !479, file: !463, line: 30, baseType: !328, size: 16, offset: 16)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !454, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !454, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !454, file: !20, line: 219, baseType: !7, size: 32, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !454, file: !20, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !454, file: !20, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !454, file: !20, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !454, file: !20, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !454, file: !20, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !454, file: !20, line: 226, baseType: !7, size: 32, offset: 160)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !454, file: !20, line: 227, baseType: !330, size: 16, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !454, file: !20, line: 228, baseType: !330, size: 16, offset: 208)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !454, file: !20, line: 229, baseType: !7, size: 32, offset: 224)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !454, file: !20, line: 235, baseType: !440, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !454, file: !20, line: 236, baseType: !447, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !454, file: !20, line: 237, baseType: !440, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !454, file: !20, line: 238, baseType: !447, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !454, file: !20, line: 239, baseType: !500, size: 4096, align: 512, offset: 512)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 4096, align: 512, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 8)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !450, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !450, file: !20, line: 162, baseType: !505, size: 32, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !124, line: 32, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !507, line: 96, baseType: !197)
!507 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!508 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !450, file: !20, line: 163, baseType: !509, size: 32, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !510, line: 274, baseType: !511)
!510 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !510, line: 274, size: 32, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !511, file: !510, line: 274, baseType: !514, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !510, line: 69, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !510, line: 64, size: 32, elements: !516)
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !515, file: !510, line: 65, baseType: !7, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !450, file: !20, line: 164, baseType: !447, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !450, file: !20, line: 165, baseType: !520, size: 128, offset: 256)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !436, line: 14, size: 128, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !520, file: !436, line: 15, baseType: !523, size: 128)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !352, line: 26, size: 128, elements: !524)
!524 = !{!525, !529}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !523, file: !352, line: 27, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !352, line: 12, size: 64, elements: !527)
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !526, file: !352, line: 13, baseType: !356, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !523, file: !352, line: 28, baseType: !356, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !450, file: !20, line: 166, baseType: !531, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!440}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !450, file: !20, line: 167, baseType: !440, size: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !432, file: !20, line: 123, baseType: !474, size: 8, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !432, file: !20, line: 124, baseType: !474, size: 8, offset: 456)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !432, file: !20, line: 125, baseType: !474, size: 8, offset: 464)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !432, file: !20, line: 126, baseType: !474, size: 8, offset: 472)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !416, file: !287, line: 671, baseType: !432, size: 512, offset: 1216)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !416, file: !287, line: 679, baseType: !541, size: 64, offset: 1728)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !286, file: !287, line: 800, baseType: !543, size: 64, offset: 5248)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !287, line: 800, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !286, file: !287, line: 809, baseType: !547, size: 64, offset: 5312)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !287, line: 70, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !286, file: !287, line: 825, baseType: !550, size: 2048, align: 512, offset: 5632)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !287, line: 509, size: 2048, align: 512, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !550, file: !287, line: 511, baseType: !359, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !550, file: !287, line: 512, baseType: !359, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !550, file: !287, line: 513, baseType: !359, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !550, file: !287, line: 514, baseType: !359, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !550, file: !287, line: 515, baseType: !359, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !550, file: !287, line: 516, baseType: !359, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !550, file: !287, line: 518, baseType: !359, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !550, file: !287, line: 519, baseType: !359, size: 64, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !550, file: !287, line: 520, baseType: !375, size: 64, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !550, file: !287, line: 522, baseType: !359, size: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !550, file: !287, line: 523, baseType: !359, size: 64, offset: 640)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !550, file: !287, line: 524, baseType: !375, size: 64, offset: 704)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !550, file: !287, line: 526, baseType: !375, size: 64, offset: 768)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !550, file: !287, line: 527, baseType: !359, size: 64, offset: 832)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !550, file: !287, line: 529, baseType: !359, size: 64, offset: 896)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !550, file: !287, line: 530, baseType: !359, size: 64, offset: 960)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !550, file: !287, line: 531, baseType: !359, size: 64, offset: 1024)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !550, file: !287, line: 532, baseType: !359, size: 64, offset: 1088)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !550, file: !287, line: 533, baseType: !359, size: 64, offset: 1152)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !550, file: !287, line: 535, baseType: !359, size: 64, offset: 1216)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !550, file: !287, line: 536, baseType: !359, size: 64, offset: 1280)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !550, file: !287, line: 537, baseType: !359, size: 64, offset: 1344)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !550, file: !287, line: 538, baseType: !359, size: 64, offset: 1408)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !550, file: !287, line: 539, baseType: !359, size: 64, offset: 1472)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !550, file: !287, line: 540, baseType: !359, size: 64, offset: 1536)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !550, file: !287, line: 541, baseType: !359, size: 64, offset: 1600)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !550, file: !287, line: 542, baseType: !359, size: 64, offset: 1664)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !550, file: !287, line: 543, baseType: !359, size: 64, offset: 1728)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !286, file: !287, line: 833, baseType: !7, size: 32, offset: 7680)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !286, file: !287, line: 836, baseType: !7, size: 32, offset: 7712)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !286, file: !287, line: 837, baseType: !197, size: 32, offset: 7744)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !286, file: !287, line: 838, baseType: !584, size: 64, offset: 7808)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !147, line: 19, baseType: !149)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !286, file: !287, line: 839, baseType: !588, size: 64, offset: 7872)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !286, file: !287, line: 840, baseType: !586, size: 64, offset: 7936)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !286, file: !287, line: 841, baseType: !131, size: 64, offset: 8000)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !286, file: !287, line: 843, baseType: !330, size: 16, offset: 8064)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !286, file: !287, line: 845, baseType: !330, size: 16, offset: 8080)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !286, file: !287, line: 848, baseType: !197, size: 32, offset: 8096)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !286, file: !287, line: 849, baseType: !595, size: 32, offset: 8128)
!595 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !287, line: 718, size: 32, elements: !596)
!596 = !{!597, !604}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !595, file: !287, line: 724, baseType: !598, size: 32)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !287, line: 719, size: 32, elements: !599)
!599 = !{!600, !601, !602, !603}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !598, file: !287, line: 720, baseType: !474, size: 8)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !598, file: !287, line: 721, baseType: !474, size: 8, offset: 8)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !598, file: !287, line: 722, baseType: !474, size: 8, offset: 16)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !598, file: !287, line: 723, baseType: !474, size: 8, offset: 24)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !595, file: !287, line: 725, baseType: !161, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !286, file: !287, line: 850, baseType: !364, size: 128, offset: 8192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !286, file: !287, line: 851, baseType: !607, size: 64, offset: 8320)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !287, line: 60, flags: DIFlagFwdDecl)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !286, file: !287, line: 855, baseType: !153, size: 64, offset: 8384)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !286, file: !287, line: 856, baseType: !474, size: 8, offset: 8448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !286, file: !287, line: 857, baseType: !474, size: 8, offset: 8456)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !286, file: !287, line: 858, baseType: !197, size: 32, offset: 8480)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !286, file: !287, line: 859, baseType: !364, size: 128, offset: 8512)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !286, file: !287, line: 860, baseType: !197, size: 32, offset: 8640)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !286, file: !287, line: 861, baseType: !364, size: 128, offset: 8704)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !286, file: !287, line: 873, baseType: !617, size: 256, offset: 8832)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !287, line: 376, size: 256, elements: !618)
!618 = !{!619, !620, !621, !622}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !617, file: !287, line: 381, baseType: !153, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !617, file: !287, line: 384, baseType: !361, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !617, file: !287, line: 389, baseType: !361, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !617, file: !287, line: 392, baseType: !361, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !286, file: !287, line: 875, baseType: !364, size: 128, offset: 9088)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !286, file: !287, line: 877, baseType: !625, size: 320, offset: 9216)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !626, line: 86, size: 320, elements: !627)
!626 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!627 = !{!628, !629, !630}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !625, file: !626, line: 87, baseType: !197, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !625, file: !626, line: 88, baseType: !364, size: 128, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !625, file: !626, line: 89, baseType: !364, size: 128, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !286, file: !287, line: 878, baseType: !351, size: 192, align: 64, offset: 9536)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !286, file: !287, line: 881, baseType: !633, size: 64, offset: 9728)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !635, line: 733, size: 10240, elements: !636)
!635 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!636 = !{!637, !851}
!637 = !DIDerivedType(tag: DW_TAG_member, scope: !634, file: !635, line: 734, baseType: !638, size: 10240)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !634, file: !635, line: 734, size: 10240, elements: !639)
!639 = !{!640, !644, !666, !673, !674, !675, !676, !677, !678, !686, !687, !688, !694, !695, !702, !703, !704, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !745, !759, !762, !818, !819, !820, !823, !826, !827, !830, !831, !832, !838, !839}
!640 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !635, line: 739, baseType: !641, size: 512, align: 512)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !638, file: !635, line: 739, size: 512, align: 512, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !641, file: !635, line: 747, baseType: !305, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !638, file: !635, line: 750, baseType: !645, size: 128, offset: 512)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !646, line: 218, size: 128, elements: !647)
!646 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!647 = !{!648, !664, !665}
!648 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !646, line: 219, baseType: !649, size: 32)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !645, file: !646, line: 219, size: 32, elements: !650)
!650 = !{!651, !660}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !649, file: !646, line: 220, baseType: !652, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !653, line: 29, baseType: !654)
!653 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !653, line: 17, size: 32, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, scope: !654, file: !653, line: 18, baseType: !657, size: 32)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !654, file: !653, line: 18, size: 32, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !657, file: !653, line: 19, baseType: !459, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !649, file: !646, line: 221, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !646, line: 197, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !646, line: 197, elements: !663)
!663 = !{}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !645, file: !646, line: 223, baseType: !7, size: 32, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !645, file: !646, line: 224, baseType: !131, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !638, file: !635, line: 752, baseType: !667, size: 64, offset: 640)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!153, !670, !153, !153, !153, !153}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !672, line: 537, flags: DIFlagFwdDecl)
!672 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!673 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !638, file: !635, line: 756, baseType: !153, size: 64, offset: 704)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !638, file: !635, line: 757, baseType: !153, size: 64, offset: 768)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !638, file: !635, line: 760, baseType: !153, size: 64, offset: 832)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !638, file: !635, line: 761, baseType: !153, size: 64, offset: 896)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !638, file: !635, line: 763, baseType: !153, size: 64, offset: 960)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !638, file: !635, line: 764, baseType: !679, size: 64, offset: 1024)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !672, line: 299, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 299, size: 64, elements: !682)
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !681, file: !672, line: 299, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !685, line: 18, baseType: !153)
!685 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!686 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !638, file: !635, line: 773, baseType: !305, size: 32, offset: 1088)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !638, file: !635, line: 785, baseType: !305, size: 32, offset: 1120)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !638, file: !635, line: 795, baseType: !689, size: 64, offset: 1152)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !635, line: 726, size: 128, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !690, file: !635, line: 727, baseType: !359, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !690, file: !635, line: 728, baseType: !197, size: 32, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !638, file: !635, line: 801, baseType: !153, size: 64, offset: 1216)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !638, file: !635, line: 804, baseType: !696, size: 64, offset: 1280)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !697, line: 13, baseType: !698)
!697 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !124, line: 181, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 179, size: 64, elements: !700)
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !699, file: !124, line: 180, baseType: !375, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !638, file: !635, line: 806, baseType: !197, size: 32, offset: 1344)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !638, file: !635, line: 808, baseType: !652, size: 32, offset: 1376)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !638, file: !635, line: 823, baseType: !705, size: 320, offset: 1408)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !706, line: 48, size: 320, elements: !707)
!706 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!707 = !{!708, !709, !710, !715, !716}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !705, file: !706, line: 49, baseType: !696, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !705, file: !706, line: 55, baseType: !696, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !705, file: !706, line: 57, baseType: !711, size: 32, offset: 128)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !712, line: 15, size: 32, elements: !713)
!712 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!713 = !{!714}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !711, file: !712, line: 20, baseType: !305, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !705, file: !706, line: 59, baseType: !457, size: 32, offset: 160)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !705, file: !706, line: 60, baseType: !364, size: 128, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !638, file: !635, line: 825, baseType: !364, size: 128, offset: 1728)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !638, file: !635, line: 845, baseType: !197, size: 32, offset: 1856)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !638, file: !635, line: 849, baseType: !153, size: 64, offset: 1920)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !638, file: !635, line: 850, baseType: !153, size: 64, offset: 1984)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !638, file: !635, line: 852, baseType: !153, size: 64, offset: 2048)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !638, file: !635, line: 853, baseType: !153, size: 64, offset: 2112)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !638, file: !635, line: 854, baseType: !698, size: 64, offset: 2176)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !638, file: !635, line: 855, baseType: !153, size: 64, offset: 2240)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !638, file: !635, line: 856, baseType: !153, size: 64, offset: 2304)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !638, file: !635, line: 857, baseType: !153, size: 64, offset: 2368)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !638, file: !635, line: 858, baseType: !153, size: 64, offset: 2432)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !638, file: !635, line: 865, baseType: !514, size: 32, offset: 2496)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !638, file: !635, line: 867, baseType: !652, size: 32, offset: 2528)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !638, file: !635, line: 869, baseType: !153, size: 64, offset: 2560)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !638, file: !635, line: 869, baseType: !153, size: 64, offset: 2624)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !638, file: !635, line: 869, baseType: !153, size: 64, offset: 2688)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !638, file: !635, line: 869, baseType: !153, size: 64, offset: 2752)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !638, file: !635, line: 870, baseType: !153, size: 64, offset: 2816)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !638, file: !635, line: 870, baseType: !153, size: 64, offset: 2880)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !638, file: !635, line: 870, baseType: !153, size: 64, offset: 2944)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !638, file: !635, line: 871, baseType: !153, size: 64, offset: 3008)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !638, file: !635, line: 871, baseType: !153, size: 64, offset: 3072)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !638, file: !635, line: 871, baseType: !153, size: 64, offset: 3136)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !638, file: !635, line: 871, baseType: !153, size: 64, offset: 3200)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !638, file: !635, line: 873, baseType: !742, size: 3328, offset: 3264)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 3328, elements: !743)
!743 = !{!744}
!744 = !DISubrange(count: 52)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !638, file: !635, line: 875, baseType: !746, size: 1280, offset: 6592)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 1280, elements: !757)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !748, line: 22, size: 320, elements: !749)
!748 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!749 = !{!750, !751, !752, !753}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !747, file: !748, line: 23, baseType: !457, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !747, file: !748, line: 24, baseType: !375, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !747, file: !748, line: 26, baseType: !364, size: 128, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !747, file: !748, line: 28, baseType: !754, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !162, line: 20, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !164, line: 26, baseType: !197)
!757 = !{!758}
!758 = !DISubrange(count: 4)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !638, file: !635, line: 877, baseType: !760, size: 64, offset: 7872)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !635, line: 877, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !638, file: !635, line: 880, baseType: !763, size: 1088, offset: 7936)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !764, line: 72, baseType: !765)
!764 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !764, line: 23, size: 1088, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !774, !775, !783, !784, !812, !813, !814}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !765, file: !764, line: 28, baseType: !359, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !765, file: !764, line: 38, baseType: !698, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !765, file: !764, line: 40, baseType: !153, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !765, file: !764, line: 43, baseType: !705, size: 320, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !765, file: !764, line: 44, baseType: !772, size: 64, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !764, line: 44, flags: DIFlagFwdDecl)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !764, line: 48, baseType: !153, size: 64, offset: 576)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !765, file: !764, line: 59, baseType: !776, size: 256, offset: 640)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !777, line: 66, size: 256, elements: !778)
!777 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!778 = !{!779, !780, !781, !782}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !776, file: !777, line: 67, baseType: !696, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !776, file: !777, line: 68, baseType: !457, size: 32, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !776, file: !777, line: 70, baseType: !711, size: 32, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !776, file: !777, line: 72, baseType: !364, size: 128, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !765, file: !764, line: 60, baseType: !131, size: 64, offset: 896)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !765, file: !764, line: 61, baseType: !785, size: 64, offset: 960)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !788, line: 13, size: 1216, elements: !789)
!788 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!789 = !{!790, !791, !792, !793, !794, !795, !796, !799, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !787, file: !788, line: 14, baseType: !131, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !787, file: !788, line: 15, baseType: !153, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !787, file: !788, line: 17, baseType: !153, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !787, file: !788, line: 17, baseType: !153, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !787, file: !788, line: 18, baseType: !153, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !787, file: !788, line: 18, baseType: !153, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !787, file: !788, line: 19, baseType: !797, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !787, file: !788, line: 21, baseType: !800, size: 64, offset: 448)
!800 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !787, file: !788, line: 23, baseType: !800, size: 64, offset: 512)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !787, file: !788, line: 24, baseType: !800, size: 64, offset: 576)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !787, file: !788, line: 25, baseType: !800, size: 64, offset: 640)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !787, file: !788, line: 26, baseType: !800, size: 64, offset: 704)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !787, file: !788, line: 27, baseType: !800, size: 64, offset: 768)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !787, file: !788, line: 28, baseType: !800, size: 64, offset: 832)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !787, file: !788, line: 29, baseType: !800, size: 64, offset: 896)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !787, file: !788, line: 30, baseType: !800, size: 64, offset: 960)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !787, file: !788, line: 31, baseType: !800, size: 64, offset: 1024)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !787, file: !788, line: 32, baseType: !800, size: 64, offset: 1088)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !787, file: !788, line: 33, baseType: !800, size: 64, offset: 1152)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !765, file: !764, line: 63, baseType: !305, size: 32, offset: 1024)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !765, file: !764, line: 69, baseType: !328, size: 16, offset: 1056)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !765, file: !764, line: 70, baseType: !815, size: 16, offset: 1072)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !162, line: 18, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !164, line: 23, baseType: !817)
!817 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !635, line: 882, baseType: !153, size: 64, offset: 9024)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !638, file: !635, line: 885, baseType: !652, size: 32, offset: 9088)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !638, file: !635, line: 886, baseType: !821, size: 64, offset: 9152)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !635, line: 732, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !638, file: !635, line: 901, baseType: !824, size: 64, offset: 9216)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !635, line: 901, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !638, file: !635, line: 904, baseType: !670, size: 64, offset: 9280)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !638, file: !635, line: 906, baseType: !828, size: 64, offset: 9344)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !635, line: 906, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !638, file: !635, line: 930, baseType: !305, size: 32, offset: 9408)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !638, file: !635, line: 933, baseType: !305, size: 32, offset: 9440)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !638, file: !635, line: 935, baseType: !833, size: 64, offset: 9472)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !31, line: 103, size: 64, elements: !834)
!834 = !{!835}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !833, file: !31, line: 104, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !31, line: 101, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !638, file: !635, line: 940, baseType: !696, size: 64, offset: 9536)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !638, file: !635, line: 942, baseType: !840, size: 256, offset: 9600)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !841, line: 98, size: 256, elements: !842)
!841 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!842 = !{!843, !844, !845}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !840, file: !841, line: 99, baseType: !696, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !840, file: !841, line: 100, baseType: !364, size: 128, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !840, file: !841, line: 101, baseType: !846, size: 64, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !841, line: 21, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !634, file: !635, line: 986, baseType: !852, offset: 10240)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: -1)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !286, file: !287, line: 882, baseType: !633, size: 64, offset: 9792)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !286, file: !287, line: 884, baseType: !197, size: 32, offset: 9856)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !286, file: !287, line: 885, baseType: !197, size: 32, offset: 9888)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !286, file: !287, line: 886, baseType: !197, size: 32, offset: 9920)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !286, file: !287, line: 888, baseType: !197, size: 32, offset: 9952)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !286, file: !287, line: 890, baseType: !153, size: 64, offset: 9984)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !286, file: !287, line: 893, baseType: !7, size: 32, offset: 10048)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !286, file: !287, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !286, file: !287, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !286, file: !287, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !286, file: !287, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !286, file: !287, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !286, file: !287, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !286, file: !287, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !286, file: !287, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !286, file: !287, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !286, file: !287, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !286, file: !287, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !286, file: !287, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !286, file: !287, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !286, file: !287, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !286, file: !287, line: 969, baseType: !153, size: 64, offset: 10176)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !286, file: !287, line: 971, baseType: !878, size: 448, offset: 10240)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 448, elements: !879)
!879 = !{!880, !881, !886}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !878, file: !25, line: 26, baseType: !153, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !878, file: !25, line: 27, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!800, !885}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !25, line: 28, baseType: !887, size: 320, offset: 128)
!887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !25, line: 28, size: 320, elements: !888)
!888 = !{!889, !899, !924}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !887, file: !25, line: 37, baseType: !890, size: 320)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !25, line: 30, size: 320, elements: !891)
!891 = !{!892, !894, !895, !896, !897, !898}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !890, file: !25, line: 31, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !890, file: !25, line: 32, baseType: !161, size: 32, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !890, file: !25, line: 33, baseType: !161, size: 32, offset: 96)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !890, file: !25, line: 34, baseType: !161, size: 32, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !890, file: !25, line: 35, baseType: !359, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !890, file: !25, line: 36, baseType: !893, size: 64, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !887, file: !25, line: 47, baseType: !900, size: 192)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !25, line: 39, size: 192, elements: !901)
!901 = !{!902, !903, !904, !923}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !900, file: !25, line: 40, baseType: !505, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !900, file: !25, line: 41, baseType: !24, size: 32, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !900, file: !25, line: 42, baseType: !905, size: 64, offset: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !900, file: !25, line: 42, size: 64, elements: !906)
!906 = !{!907, !915}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !905, file: !25, line: 43, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !910, line: 7, size: 128, elements: !911)
!910 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!911 = !{!912, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !909, file: !910, line: 8, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !507, line: 93, baseType: !377)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !909, file: !910, line: 9, baseType: !377, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !905, file: !25, line: 44, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !918, line: 7, size: 64, elements: !919)
!918 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!919 = !{!920, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !917, file: !918, line: 8, baseType: !921, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !918, line: 5, baseType: !755)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !917, file: !918, line: 9, baseType: !755, size: 32, offset: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !900, file: !25, line: 46, baseType: !359, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !887, file: !25, line: 55, baseType: !925, size: 256)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !25, line: 49, size: 256, elements: !926)
!926 = !{!927, !930, !931, !932, !933}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !925, file: !25, line: 50, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !925, file: !25, line: 51, baseType: !197, size: 32, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !925, file: !25, line: 52, baseType: !197, size: 32, offset: 96)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !925, file: !25, line: 53, baseType: !153, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !925, file: !25, line: 54, baseType: !153, size: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !286, file: !287, line: 973, baseType: !935, size: 32, offset: 10688)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !124, line: 27, baseType: !936)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !507, line: 28, baseType: !197)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !286, file: !287, line: 974, baseType: !935, size: 32, offset: 10720)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !286, file: !287, line: 978, baseType: !153, size: 64, offset: 10752)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !286, file: !287, line: 987, baseType: !285, size: 64, offset: 10816)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !286, file: !287, line: 990, baseType: !285, size: 64, offset: 10880)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !286, file: !287, line: 995, baseType: !364, size: 128, offset: 10944)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !286, file: !287, line: 996, baseType: !364, size: 128, offset: 11072)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !286, file: !287, line: 997, baseType: !285, size: 64, offset: 11200)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !286, file: !287, line: 1005, baseType: !364, size: 128, offset: 11264)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !286, file: !287, line: 1006, baseType: !364, size: 128, offset: 11392)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !286, file: !287, line: 1009, baseType: !947, size: 64, offset: 11520)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !949, line: 59, size: 768, elements: !950)
!949 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!950 = !{!951, !952, !953, !954, !959, !960, !967, !976}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !948, file: !949, line: 61, baseType: !300, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !948, file: !949, line: 62, baseType: !7, size: 32, offset: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !948, file: !949, line: 63, baseType: !652, size: 32, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !948, file: !949, line: 65, baseType: !955, size: 256, offset: 128)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !956, size: 256, elements: !757)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !124, line: 194, size: 64, elements: !957)
!957 = !{!958}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !956, file: !124, line: 195, baseType: !122, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !948, file: !949, line: 66, baseType: !956, size: 64, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !948, file: !949, line: 68, baseType: !961, size: 192, offset: 448)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !962, line: 41, baseType: !963)
!962 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !962, line: 37, size: 192, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !963, file: !962, line: 38, baseType: !652, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !963, file: !962, line: 39, baseType: !364, size: 128, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !948, file: !949, line: 69, baseType: !968, size: 128, align: 64, offset: 640)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !124, line: 232, size: 128, align: 64, elements: !969)
!969 = !{!970, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !968, file: !124, line: 233, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !968, file: !124, line: 234, baseType: !973, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !971}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !948, file: !949, line: 70, baseType: !977, offset: 768)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !978, elements: !853)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !949, line: 54, size: 128, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !978, file: !949, line: 55, baseType: !197, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !978, file: !949, line: 56, baseType: !982, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !949, line: 56, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !286, file: !287, line: 1010, baseType: !985, size: 512, offset: 11584)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 512, elements: !757)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !286, file: !287, line: 1011, baseType: !364, size: 128, offset: 12096)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !286, file: !287, line: 1012, baseType: !364, size: 128, offset: 12224)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !286, file: !287, line: 1014, baseType: !989, size: 64, offset: 12352)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !991, line: 26, size: 256, elements: !992)
!991 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !990, file: !991, line: 27, baseType: !7, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !990, file: !991, line: 28, baseType: !995, size: 192, offset: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !996, line: 43, size: 192, elements: !997)
!996 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !995, file: !996, line: 44, baseType: !457, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !995, file: !996, line: 45, baseType: !364, size: 128, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !286, file: !287, line: 1017, baseType: !1001, size: 64, offset: 12416)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !286, file: !287, line: 1020, baseType: !1001, size: 64, offset: 12480)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !286, file: !287, line: 1023, baseType: !131, size: 64, offset: 12544)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !286, file: !287, line: 1025, baseType: !359, size: 64, offset: 12608)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !286, file: !287, line: 1026, baseType: !359, size: 64, offset: 12672)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !286, file: !287, line: 1031, baseType: !359, size: 64, offset: 12736)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !286, file: !287, line: 1032, baseType: !1008, size: 192, offset: 12800)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !287, line: 324, size: 192, elements: !1009)
!1009 = !{!1010, !1011, !1012}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1008, file: !287, line: 326, baseType: !359, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1008, file: !287, line: 327, baseType: !359, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1008, file: !287, line: 328, baseType: !457, size: 32, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !286, file: !287, line: 1041, baseType: !153, size: 64, offset: 12992)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !286, file: !287, line: 1042, baseType: !153, size: 64, offset: 13056)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !286, file: !287, line: 1045, baseType: !359, size: 64, offset: 13120)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !286, file: !287, line: 1048, baseType: !359, size: 64, offset: 13184)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !286, file: !287, line: 1051, baseType: !153, size: 64, offset: 13248)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !286, file: !287, line: 1052, baseType: !153, size: 64, offset: 13312)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !286, file: !287, line: 1055, baseType: !1020, size: 640, offset: 13376)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1021, line: 132, size: 640, elements: !1022)
!1021 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1022 = !{!1023, !1031, !1032}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1020, file: !1021, line: 133, baseType: !1024, size: 576)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1025, size: 576, elements: !1029)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1021, line: 117, size: 192, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1025, file: !1021, line: 118, baseType: !359, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1025, file: !1021, line: 119, baseType: !520, size: 128, offset: 64)
!1029 = !{!1030}
!1030 = !DISubrange(count: 3)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1020, file: !1021, line: 134, baseType: !7, size: 32, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1020, file: !1021, line: 135, baseType: !7, size: 32, offset: 608)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !286, file: !287, line: 1058, baseType: !1034, size: 448, offset: 14016)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1021, line: 144, size: 448, elements: !1035)
!1035 = !{!1036, !1037, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1034, file: !1021, line: 145, baseType: !968, size: 128, align: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1034, file: !1021, line: 146, baseType: !776, size: 256, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1034, file: !1021, line: 147, baseType: !7, size: 32, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !286, file: !287, line: 1064, baseType: !1040, size: 64, offset: 14464)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1042)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !287, line: 1064, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !286, file: !287, line: 1067, baseType: !1040, size: 64, offset: 14528)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !286, file: !287, line: 1070, baseType: !1040, size: 64, offset: 14592)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !286, file: !287, line: 1074, baseType: !1046, size: 64, offset: 14656)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !287, line: 1074, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !286, file: !287, line: 1084, baseType: !1049, size: 128, offset: 14720)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 128, elements: !1050)
!1050 = !{!1051}
!1051 = !DISubrange(count: 16)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !286, file: !287, line: 1086, baseType: !1053, size: 64, offset: 14848)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !287, line: 55, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !286, file: !287, line: 1089, baseType: !1056, size: 64, offset: 14912)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1057, line: 12, size: 64, elements: !1058)
!1057 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1058 = !{!1059}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1056, file: !1057, line: 13, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1057, line: 8, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !286, file: !287, line: 1090, baseType: !1063, size: 128, offset: 14976)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1064, line: 13, size: 128, elements: !1065)
!1064 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1065 = !{!1066}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1063, file: !1064, line: 14, baseType: !364, size: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !286, file: !287, line: 1097, baseType: !1068, size: 64, offset: 15104)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !287, line: 50, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !286, file: !287, line: 1100, baseType: !1071, size: 64, offset: 15168)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !287, line: 1100, flags: DIFlagFwdDecl)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !286, file: !287, line: 1103, baseType: !1074, size: 64, offset: 15232)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !287, line: 53, flags: DIFlagFwdDecl)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !286, file: !287, line: 1107, baseType: !1077, size: 64, offset: 15296)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !287, line: 56, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !286, file: !287, line: 1110, baseType: !1080, size: 64, offset: 15360)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1021, line: 236, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !286, file: !287, line: 1111, baseType: !1083, size: 64, offset: 15424)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !287, line: 67, flags: DIFlagFwdDecl)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !286, file: !287, line: 1112, baseType: !1086, size: 64, offset: 15488)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1087, line: 25, baseType: !1088)
!1087 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1087, line: 23, size: 64, elements: !1089)
!1089 = !{!1090}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1088, file: !1087, line: 24, baseType: !152, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !286, file: !287, line: 1113, baseType: !1086, size: 64, offset: 15552)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !286, file: !287, line: 1115, baseType: !1086, size: 64, offset: 15616)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !286, file: !287, line: 1116, baseType: !1094, size: 192, offset: 15680)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1095, line: 32, size: 192, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1094, file: !1095, line: 33, baseType: !364, size: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1094, file: !1095, line: 34, baseType: !1086, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !286, file: !287, line: 1117, baseType: !153, size: 64, offset: 15872)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !286, file: !287, line: 1118, baseType: !1101, size: 64, offset: 15936)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 61, baseType: !1102)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !507, line: 72, baseType: !1103)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !507, line: 16, baseType: !153)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !286, file: !287, line: 1119, baseType: !7, size: 32, offset: 16000)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !286, file: !287, line: 1121, baseType: !971, size: 64, offset: 16064)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !286, file: !287, line: 1125, baseType: !1107, size: 64, offset: 16128)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !287, line: 43, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !286, file: !287, line: 1127, baseType: !1110, size: 32, offset: 16192)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1111, line: 23, baseType: !1112)
!1111 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1111, line: 21, size: 32, elements: !1113)
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1112, file: !1111, line: 22, baseType: !1115, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !124, line: 37, baseType: !1116)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !507, line: 49, baseType: !7)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !286, file: !287, line: 1128, baseType: !7, size: 32, offset: 16224)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !286, file: !287, line: 1130, baseType: !1119, size: 128, offset: 16256)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1120, line: 37, size: 128, elements: !1121)
!1120 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1121 = !{!1122, !1123, !1124}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1119, file: !1120, line: 38, baseType: !197, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1119, file: !1120, line: 39, baseType: !305, size: 32, offset: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1119, file: !1120, line: 40, baseType: !1125, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1120, line: 24, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !286, file: !287, line: 1131, baseType: !1128, size: 256, offset: 16384)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1129, line: 12, size: 256, elements: !1130)
!1129 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1130 = !{!1131, !1133, !1134, !1135}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1128, file: !1129, line: 13, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1128, file: !1129, line: 14, baseType: !153, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1128, file: !1129, line: 15, baseType: !153, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1128, file: !1129, line: 16, baseType: !200, size: 8, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !286, file: !287, line: 1134, baseType: !359, size: 64, offset: 16640)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !286, file: !287, line: 1135, baseType: !359, size: 64, offset: 16704)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !286, file: !287, line: 1138, baseType: !652, size: 32, offset: 16768)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !286, file: !287, line: 1141, baseType: !457, size: 32, offset: 16800)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !286, file: !287, line: 1143, baseType: !1141, size: 64, offset: 16832)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !287, line: 735, size: 64, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1141, file: !287, line: 736, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !286, file: !287, line: 1147, baseType: !523, size: 128, offset: 16896)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !286, file: !287, line: 1149, baseType: !285, size: 64, offset: 17024)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !286, file: !287, line: 1151, baseType: !1148, size: 64, offset: 17088)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !287, line: 1151, flags: DIFlagFwdDecl)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !286, file: !287, line: 1188, baseType: !131, size: 64, offset: 17152)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !286, file: !287, line: 1191, baseType: !1152, size: 64, offset: 17216)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !287, line: 44, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !286, file: !287, line: 1194, baseType: !1155, size: 64, offset: 17280)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !287, line: 45, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !286, file: !287, line: 1197, baseType: !1158, size: 64, offset: 17344)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !287, line: 61, flags: DIFlagFwdDecl)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !286, file: !287, line: 1199, baseType: !1161, size: 64, offset: 17408)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !287, line: 52, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !286, file: !287, line: 1202, baseType: !1164, size: 64, offset: 17472)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !287, line: 48, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !286, file: !287, line: 1205, baseType: !153, size: 64, offset: 17536)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !286, file: !287, line: 1206, baseType: !1168, size: 64, offset: 17600)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1095, line: 14, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1095, line: 12, size: 384, elements: !1171)
!1171 = !{!1172}
!1172 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !1095, line: 13, baseType: !1173, size: 384)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1095, line: 13, size: 384, elements: !1174)
!1174 = !{!1175, !1176, !1177, !1178}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1173, file: !1095, line: 13, baseType: !197, size: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1173, file: !1095, line: 13, baseType: !197, size: 32, offset: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1173, file: !1095, line: 13, baseType: !197, size: 32, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1173, file: !1095, line: 13, baseType: !1179, size: 256, offset: 128)
!1179 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1180, line: 37, size: 256, elements: !1181)
!1180 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1181 = !{!1182, !1187, !1200, !1206, !1216, !1243, !1248}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1179, file: !1180, line: 42, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1179, file: !1180, line: 39, size: 64, elements: !1184)
!1184 = !{!1185, !1186}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1183, file: !1180, line: 40, baseType: !936, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1183, file: !1180, line: 41, baseType: !1116, size: 32, offset: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1179, file: !1180, line: 50, baseType: !1188, size: 192)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1179, file: !1180, line: 45, size: 192, elements: !1189)
!1189 = !{!1190, !1192, !1193, !1199}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1188, file: !1180, line: 46, baseType: !1191, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !507, line: 95, baseType: !197)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1188, file: !1180, line: 47, baseType: !197, size: 32, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1188, file: !1180, line: 48, baseType: !1194, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1180, line: 11, baseType: !1195)
!1195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1180, line: 8, size: 64, elements: !1196)
!1196 = !{!1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1195, file: !1180, line: 9, baseType: !197, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1195, file: !1180, line: 10, baseType: !131, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1188, file: !1180, line: 49, baseType: !197, size: 32, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1179, file: !1180, line: 57, baseType: !1201, size: 128)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1179, file: !1180, line: 53, size: 128, elements: !1202)
!1202 = !{!1203, !1204, !1205}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1201, file: !1180, line: 54, baseType: !936, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1201, file: !1180, line: 55, baseType: !1116, size: 32, offset: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1201, file: !1180, line: 56, baseType: !1194, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1179, file: !1180, line: 66, baseType: !1207, size: 256)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1179, file: !1180, line: 60, size: 256, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1215}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1207, file: !1180, line: 61, baseType: !936, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1207, file: !1180, line: 62, baseType: !1116, size: 32, offset: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1207, file: !1180, line: 63, baseType: !197, size: 32, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1207, file: !1180, line: 64, baseType: !1213, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !507, line: 94, baseType: !1214)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !507, line: 15, baseType: !800)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1207, file: !1180, line: 65, baseType: !1213, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1179, file: !1180, line: 105, baseType: !1217, size: 256)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1179, file: !1180, line: 69, size: 256, elements: !1218)
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1217, file: !1180, line: 70, baseType: !131, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !1180, line: 79, baseType: !1221, size: 192, offset: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1217, file: !1180, line: 79, size: 192, elements: !1222)
!1222 = !{!1223, !1224, !1225, !1232, !1237}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1221, file: !1180, line: 81, baseType: !197, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1221, file: !1180, line: 86, baseType: !817, size: 16)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1221, file: !1180, line: 92, baseType: !1226, size: 192)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !1180, line: 88, size: 192, elements: !1227)
!1227 = !{!1228, !1230, !1231}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1226, file: !1180, line: 89, baseType: !1229, size: 64)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 64, elements: !501)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1226, file: !1180, line: 90, baseType: !131, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1226, file: !1180, line: 91, baseType: !131, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1221, file: !1180, line: 97, baseType: !1233, size: 96)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !1180, line: 94, size: 96, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1233, file: !1180, line: 95, baseType: !1229, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1233, file: !1180, line: 96, baseType: !163, size: 32, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1221, file: !1180, line: 103, baseType: !1238, size: 128)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !1180, line: 99, size: 128, elements: !1239)
!1239 = !{!1240, !1241, !1242}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1238, file: !1180, line: 100, baseType: !153, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1238, file: !1180, line: 101, baseType: !163, size: 32, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1238, file: !1180, line: 102, baseType: !163, size: 32, offset: 96)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1179, file: !1180, line: 111, baseType: !1244, size: 128)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1179, file: !1180, line: 108, size: 128, elements: !1245)
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1244, file: !1180, line: 109, baseType: !800, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1244, file: !1180, line: 110, baseType: !197, size: 32, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1179, file: !1180, line: 118, baseType: !1249, size: 128)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1179, file: !1180, line: 114, size: 128, elements: !1250)
!1250 = !{!1251, !1252, !1253}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1249, file: !1180, line: 115, baseType: !131, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1249, file: !1180, line: 116, baseType: !197, size: 32, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1249, file: !1180, line: 117, baseType: !7, size: 32, offset: 96)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !286, file: !287, line: 1208, baseType: !1255, size: 448, offset: 17664)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1256, line: 12, size: 448, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1255, file: !1256, line: 15, baseType: !359, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1255, file: !1256, line: 17, baseType: !359, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1255, file: !1256, line: 19, baseType: !359, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1255, file: !1256, line: 21, baseType: !359, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1255, file: !1256, line: 29, baseType: !359, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1255, file: !1256, line: 35, baseType: !359, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1255, file: !1256, line: 44, baseType: !359, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !286, file: !287, line: 1215, baseType: !359, size: 64, offset: 18112)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !286, file: !287, line: 1217, baseType: !359, size: 64, offset: 18176)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !286, file: !287, line: 1219, baseType: !359, size: 64, offset: 18240)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !286, file: !287, line: 1223, baseType: !1269, size: 64, offset: 18304)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1270, line: 99, baseType: !1271)
!1270 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1270, line: 99, size: 64, elements: !1272)
!1272 = !{!1273}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1271, file: !1270, line: 99, baseType: !152, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !286, file: !287, line: 1225, baseType: !1275, size: 32, offset: 18368)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !510, line: 275, baseType: !1276)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !510, line: 275, size: 32, elements: !1277)
!1277 = !{!1278}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1276, file: !510, line: 275, baseType: !514, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !286, file: !287, line: 1226, baseType: !197, size: 32, offset: 18400)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !286, file: !287, line: 1227, baseType: !197, size: 32, offset: 18432)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !286, file: !287, line: 1231, baseType: !1282, size: 64, offset: 18496)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !287, line: 1231, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !286, file: !287, line: 1233, baseType: !364, size: 128, offset: 18560)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !286, file: !287, line: 1240, baseType: !1286, size: 64, offset: 18688)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !287, line: 62, flags: DIFlagFwdDecl)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !286, file: !287, line: 1242, baseType: !1289, size: 64, offset: 18752)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !287, line: 1242, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !286, file: !287, line: 1244, baseType: !364, size: 128, offset: 18816)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !286, file: !287, line: 1245, baseType: !1293, size: 64, offset: 18944)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !287, line: 51, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !286, file: !287, line: 1246, baseType: !776, size: 256, offset: 19008)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !286, file: !287, line: 1247, baseType: !7, size: 32, offset: 19264)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !286, file: !287, line: 1250, baseType: !1298, size: 64, offset: 19328)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !287, line: 57, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !286, file: !287, line: 1251, baseType: !776, size: 256, offset: 19392)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !286, file: !287, line: 1252, baseType: !364, size: 128, offset: 19648)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !286, file: !287, line: 1259, baseType: !1303, size: 64, offset: 19776)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !635, line: 717, flags: DIFlagFwdDecl)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !286, file: !287, line: 1260, baseType: !817, size: 16, offset: 19840)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !286, file: !287, line: 1261, baseType: !817, size: 16, offset: 19856)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !286, file: !287, line: 1314, baseType: !1308, size: 64, offset: 19904)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1310, line: 62, size: 256, align: 256, elements: !1311)
!1310 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1311 = !{!1312, !1313, !1314, !1315, !1316, !1317, !1318}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1309, file: !1310, line: 75, baseType: !163, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1309, file: !1310, line: 90, baseType: !163, size: 32, offset: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1309, file: !1310, line: 112, baseType: !360, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1309, file: !1310, line: 132, baseType: !163, size: 32, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1309, file: !1310, line: 140, baseType: !163, size: 32, offset: 160)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1309, file: !1310, line: 149, baseType: !163, size: 32, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1309, file: !1310, line: 154, baseType: !1319, offset: 224)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, elements: !853)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !286, file: !287, line: 1315, baseType: !161, size: 32, offset: 19968)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !286, file: !287, line: 1316, baseType: !161, size: 32, offset: 20000)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !286, file: !287, line: 1321, baseType: !153, size: 64, offset: 20032)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !286, file: !287, line: 1325, baseType: !197, size: 32, offset: 20096)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !286, file: !287, line: 1326, baseType: !197, size: 32, offset: 20128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !286, file: !287, line: 1327, baseType: !197, size: 32, offset: 20160)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !286, file: !287, line: 1328, baseType: !197, size: 32, offset: 20192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !286, file: !287, line: 1329, baseType: !968, size: 128, align: 64, offset: 20224)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !286, file: !287, line: 1332, baseType: !1329, size: 128, offset: 20352)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1330, line: 51, size: 128, elements: !1331)
!1330 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1331 = !{!1332, !1337, !1338}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1329, file: !1330, line: 60, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1334, line: 7, size: 64, elements: !1335)
!1334 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1335 = !{!1336}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1333, file: !1334, line: 12, baseType: !149, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1329, file: !1330, line: 63, baseType: !200, size: 8, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1329, file: !1330, line: 70, baseType: !200, size: 8, offset: 72)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !286, file: !287, line: 1335, baseType: !1340, size: 64, offset: 20480)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !287, line: 59, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !286, file: !287, line: 1337, baseType: !1343, size: 128, offset: 20544)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1330, line: 39, size: 128, elements: !1344)
!1344 = !{!1345, !1408, !1409}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1343, file: !1330, line: 40, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !635, line: 74, size: 512, align: 128, elements: !1348)
!1348 = !{!1349, !1350, !1402, !1407}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1347, file: !635, line: 75, baseType: !153, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, scope: !1347, file: !635, line: 83, baseType: !1351, size: 320, offset: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1347, file: !635, line: 83, size: 320, elements: !1352)
!1352 = !{!1353, !1376, !1390, !1394, !1401}
!1353 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !635, line: 84, baseType: !1354, size: 320)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1351, file: !635, line: 84, size: 320, elements: !1355)
!1355 = !{!1356, !1367, !1370, !1375}
!1356 = !DIDerivedType(tag: DW_TAG_member, scope: !1354, file: !635, line: 90, baseType: !1357, size: 128)
!1357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1354, file: !635, line: 90, size: 128, elements: !1358)
!1358 = !{!1359, !1360, !1365, !1366}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1357, file: !635, line: 91, baseType: !364, size: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !635, line: 94, baseType: !1361, size: 128)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1357, file: !635, line: 94, size: 128, elements: !1362)
!1362 = !{!1363, !1364}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1361, file: !635, line: 96, baseType: !131, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1361, file: !635, line: 98, baseType: !7, size: 32, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1357, file: !635, line: 102, baseType: !364, size: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1357, file: !635, line: 103, baseType: !364, size: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1354, file: !635, line: 106, baseType: !1368, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !635, line: 32, flags: DIFlagFwdDecl)
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1354, file: !635, line: 107, baseType: !1371, size: 64, offset: 192)
!1371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1354, file: !635, line: 107, size: 64, elements: !1372)
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1371, file: !635, line: 108, baseType: !153, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1371, file: !635, line: 109, baseType: !153, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1354, file: !635, line: 117, baseType: !153, size: 64, offset: 256)
!1376 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !635, line: 119, baseType: !1377, size: 320)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1351, file: !635, line: 119, size: 320, elements: !1378)
!1378 = !{!1379, !1380, !1383, !1384, !1385}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1377, file: !635, line: 124, baseType: !153, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1377, file: !635, line: 125, baseType: !1381, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !635, line: 125, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1377, file: !635, line: 126, baseType: !153, size: 64, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1377, file: !635, line: 127, baseType: !153, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !635, line: 128, baseType: !1386, size: 64, offset: 256)
!1386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !635, line: 128, size: 64, elements: !1387)
!1387 = !{!1388, !1389}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1386, file: !635, line: 133, baseType: !153, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1386, file: !635, line: 138, baseType: !696, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !635, line: 141, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1351, file: !635, line: 141, size: 64, elements: !1392)
!1392 = !{!1393}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1391, file: !635, line: 142, baseType: !153, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, scope: !1351, file: !635, line: 144, baseType: !1395, size: 128)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1351, file: !635, line: 144, size: 128, elements: !1396)
!1396 = !{!1397, !1400}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1395, file: !635, line: 146, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !635, line: 146, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1395, file: !635, line: 147, baseType: !131, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1351, file: !635, line: 161, baseType: !968, size: 128, align: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1347, file: !635, line: 164, baseType: !1403, size: 32, offset: 384)
!1403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1347, file: !635, line: 164, size: 32, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1403, file: !635, line: 169, baseType: !305, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1403, file: !635, line: 177, baseType: !7, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1347, file: !635, line: 181, baseType: !305, size: 32, offset: 416)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1343, file: !1330, line: 42, baseType: !163, size: 32, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1343, file: !1330, line: 43, baseType: !163, size: 32, offset: 96)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !286, file: !287, line: 1340, baseType: !1411, size: 64, offset: 20672)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !287, line: 69, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !286, file: !287, line: 1351, baseType: !197, size: 32, offset: 20736)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !286, file: !287, line: 1352, baseType: !197, size: 32, offset: 20768)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !286, file: !287, line: 1354, baseType: !153, size: 64, offset: 20800)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !286, file: !287, line: 1364, baseType: !359, size: 64, offset: 20864)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !286, file: !287, line: 1365, baseType: !359, size: 64, offset: 20928)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !286, file: !287, line: 1412, baseType: !153, size: 64, offset: 20992)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !286, file: !287, line: 1453, baseType: !1420, size: 64, offset: 21056)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !287, line: 1453, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !286, file: !287, line: 1457, baseType: !1423, size: 64, offset: 21120)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !31, line: 61, size: 576, elements: !1425)
!1425 = !{!1426, !1427, !1446, !1449, !1450, !1483, !1493}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1424, file: !31, line: 62, baseType: !30, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !31, line: 64, baseType: !1428, size: 192, offset: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1424, file: !31, line: 64, size: 192, elements: !1429)
!1429 = !{!1430, !1441}
!1430 = !DIDerivedType(tag: DW_TAG_member, scope: !1428, file: !31, line: 65, baseType: !1431, size: 192)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1428, file: !31, line: 65, size: 192, elements: !1432)
!1432 = !{!1433, !1440}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1431, file: !31, line: 66, baseType: !1434, size: 128)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1435, line: 50, size: 128, elements: !1436)
!1435 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1436 = !{!1437, !1438, !1439}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1434, file: !1435, line: 52, baseType: !153, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1434, file: !1435, line: 54, baseType: !7, size: 32, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1434, file: !1435, line: 55, baseType: !7, size: 32, offset: 96)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1431, file: !31, line: 67, baseType: !153, size: 64, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, scope: !1428, file: !31, line: 70, baseType: !1442, size: 192)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1428, file: !31, line: 70, size: 192, elements: !1443)
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1442, file: !31, line: 71, baseType: !968, size: 128, align: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1442, file: !31, line: 72, baseType: !153, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1424, file: !31, line: 76, baseType: !1447, size: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !31, line: 76, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1424, file: !31, line: 77, baseType: !153, size: 64, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1424, file: !31, line: 79, baseType: !1451, size: 64, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1435, line: 25, size: 256, elements: !1453)
!1453 = !{!1454, !1460, !1464}
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !1435, line: 26, baseType: !1455, size: 128)
!1455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1452, file: !1435, line: 26, size: 128, elements: !1456)
!1456 = !{!1457, !1459}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1455, file: !1435, line: 27, baseType: !1458, size: 128)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 128, elements: !1050)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1455, file: !1435, line: 28, baseType: !1458, size: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1452, file: !1435, line: 31, baseType: !1461, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1463)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1435, line: 23, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !1435, line: 33, baseType: !1465, size: 64, offset: 192)
!1465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1452, file: !1435, line: 33, size: 64, elements: !1466)
!1466 = !{!1467, !1473, !1478}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1465, file: !1435, line: 38, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1465, file: !1435, line: 34, size: 64, elements: !1469)
!1469 = !{!1470, !1471, !1472}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1468, file: !1435, line: 35, baseType: !755, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1468, file: !1435, line: 36, baseType: !474, size: 8, offset: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1468, file: !1435, line: 37, baseType: !474, size: 8, offset: 40)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1465, file: !1435, line: 42, baseType: !1474, size: 16)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1465, file: !1435, line: 39, size: 16, elements: !1475)
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1474, file: !1435, line: 40, baseType: !474, size: 8)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1474, file: !1435, line: 41, baseType: !474, size: 8, offset: 8)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1465, file: !1435, line: 46, baseType: !1479, size: 16)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1465, file: !1435, line: 43, size: 16, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1479, file: !1435, line: 44, baseType: !474, size: 8)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1479, file: !1435, line: 45, baseType: !474, size: 8, offset: 8)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1424, file: !31, line: 81, baseType: !1484, size: 64, offset: 448)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !31, line: 85, size: 384, elements: !1486)
!1486 = !{!1487, !1488, !1489, !1490, !1491, !1492}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1485, file: !31, line: 86, baseType: !1447, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1485, file: !31, line: 87, baseType: !153, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1485, file: !31, line: 88, baseType: !153, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1485, file: !31, line: 89, baseType: !153, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1485, file: !31, line: 90, baseType: !200, size: 8, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1485, file: !31, line: 92, baseType: !1484, size: 64, offset: 320)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1424, file: !31, line: 82, baseType: !7, size: 32, offset: 512)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !286, file: !287, line: 1463, baseType: !1495, offset: 21184)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !287, line: 739, elements: !663)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !286, file: !287, line: 1470, baseType: !968, size: 128, align: 64, offset: 21184)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !286, file: !287, line: 1471, baseType: !300, size: 32, offset: 21312)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !286, file: !287, line: 1472, baseType: !197, size: 32, offset: 21344)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !286, file: !287, line: 1474, baseType: !285, size: 64, offset: 21376)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !286, file: !287, line: 1475, baseType: !1501, size: 320, offset: 21440)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1502, line: 11, size: 320, elements: !1503)
!1502 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1503 = !{!1504, !1505, !1506, !1511}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1501, file: !1502, line: 16, baseType: !123, size: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1501, file: !1502, line: 17, baseType: !153, size: 64, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1501, file: !1502, line: 18, baseType: !1507, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{null, !1510}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1501, file: !1502, line: 19, baseType: !161, size: 32, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !286, file: !287, line: 1478, baseType: !1513, size: 64, offset: 21760)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1515, line: 49, size: 512, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1516 = !{!1517, !1518, !1519, !1520, !1521, !1523, !1524, !1525, !1527}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1514, file: !1515, line: 50, baseType: !1513, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1514, file: !1515, line: 51, baseType: !131, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1514, file: !1515, line: 52, baseType: !153, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1514, file: !1515, line: 53, baseType: !153, size: 64, offset: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1514, file: !1515, line: 54, baseType: !1522, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !1514, file: !1515, line: 56, baseType: !7, size: 32, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1514, file: !1515, line: 58, baseType: !7, size: 32, offset: 352)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1514, file: !1515, line: 59, baseType: !1526, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !124, line: 159, baseType: !359)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1514, file: !1515, line: 60, baseType: !797, size: 64, offset: 448)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !286, file: !287, line: 1482, baseType: !300, size: 32, offset: 21824)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !286, file: !287, line: 1489, baseType: !131, size: 64, offset: 21888)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !286, file: !287, line: 1504, baseType: !131, size: 64, offset: 21952)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !286, file: !287, line: 1505, baseType: !360, size: 64, offset: 22016)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !286, file: !287, line: 1506, baseType: !359, size: 64, offset: 22080)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !286, file: !287, line: 1507, baseType: !360, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !286, file: !287, line: 1508, baseType: !360, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !286, file: !287, line: 1509, baseType: !360, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !286, file: !287, line: 1510, baseType: !968, size: 128, align: 64, offset: 22208)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !286, file: !287, line: 1511, baseType: !197, size: 32, offset: 22336)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !286, file: !287, line: 1515, baseType: !1539, size: 64, offset: 22400)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !318, line: 56, size: 64, elements: !1540)
!1540 = !{!1541}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1539, file: !318, line: 57, baseType: !321, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !286, file: !287, line: 1518, baseType: !1539, size: 64, offset: 22464)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !286, file: !287, line: 1528, baseType: !968, size: 128, align: 64, offset: 22528)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !286, file: !287, line: 1552, baseType: !1545, size: 35328, offset: 23040)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1546, line: 430, size: 35328, elements: !1547)
!1546 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1547 = !{!1548, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1577, !1578, !1579, !1580, !1581, !1582, !1585, !1586, !1587, !1588}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1545, file: !1546, line: 432, baseType: !1549, size: 192)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1550, size: 192, elements: !1029)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1551, line: 16, size: 64, elements: !1552)
!1551 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1552 = !{!1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1550, file: !1551, line: 17, baseType: !328, size: 16)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1550, file: !1551, line: 18, baseType: !328, size: 16, offset: 16)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1550, file: !1551, line: 19, baseType: !328, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1550, file: !1551, line: 19, baseType: !328, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1550, file: !1551, line: 19, baseType: !328, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1550, file: !1551, line: 19, baseType: !328, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1550, file: !1551, line: 19, baseType: !328, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1550, file: !1551, line: 20, baseType: !328, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1550, file: !1551, line: 20, baseType: !328, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1550, file: !1551, line: 20, baseType: !328, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1550, file: !1551, line: 20, baseType: !328, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1550, file: !1551, line: 20, baseType: !328, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1550, file: !1551, line: 20, baseType: !328, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1545, file: !1546, line: 436, baseType: !153, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1545, file: !1546, line: 440, baseType: !330, size: 16, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1545, file: !1546, line: 441, baseType: !330, size: 16, offset: 272)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1545, file: !1546, line: 442, baseType: !330, size: 16, offset: 288)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1545, file: !1546, line: 443, baseType: !330, size: 16, offset: 304)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1545, file: !1546, line: 447, baseType: !153, size: 64, offset: 320)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1545, file: !1546, line: 448, baseType: !153, size: 64, offset: 384)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1545, file: !1546, line: 459, baseType: !1574, size: 256, offset: 448)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1575, size: 256, elements: !757)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1546, line: 428, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1545, file: !1546, line: 461, baseType: !153, size: 64, offset: 704)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1545, file: !1546, line: 463, baseType: !153, size: 64, offset: 768)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1545, file: !1546, line: 465, baseType: !153, size: 64, offset: 832)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1545, file: !1546, line: 466, baseType: !153, size: 64, offset: 896)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1545, file: !1546, line: 467, baseType: !153, size: 64, offset: 960)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1545, file: !1546, line: 473, baseType: !1583, size: 64, offset: 1024)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1546, line: 10, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1545, file: !1546, line: 480, baseType: !153, size: 64, offset: 1088)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1545, file: !1546, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1545, file: !1546, line: 491, baseType: !161, size: 32, offset: 1184)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1545, file: !1546, line: 501, baseType: !1589, size: 33792, offset: 1536)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1590, line: 448, size: 33792, elements: !1591)
!1590 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1591 = !{!1592, !1593, !1594, !1762, !1763, !1769, !1770}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1589, file: !1590, line: 461, baseType: !7, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1589, file: !1590, line: 468, baseType: !153, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1589, file: !1590, line: 476, baseType: !1595, size: 64, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1590, line: 356, size: 33280, align: 512, elements: !1597)
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1596, file: !1590, line: 358, baseType: !7, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1596, file: !1590, line: 361, baseType: !7, size: 32, offset: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1596, file: !1590, line: 364, baseType: !359, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1596, file: !1590, line: 367, baseType: !359, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1596, file: !1590, line: 370, baseType: !359, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1596, file: !1590, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1596, file: !1590, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1596, file: !1590, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1596, file: !1590, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1596, file: !1590, line: 397, baseType: !1608, size: 32768, offset: 512)
!1608 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1590, line: 348, size: 32768, elements: !1609)
!1609 = !{!1610, !1625, !1666, !1743, !1758}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1608, file: !1590, line: 349, baseType: !1611, size: 896)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1590, line: 12, size: 896, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1624}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1611, file: !1590, line: 13, baseType: !161, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1611, file: !1590, line: 14, baseType: !161, size: 32, offset: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1611, file: !1590, line: 15, baseType: !161, size: 32, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1611, file: !1590, line: 16, baseType: !161, size: 32, offset: 96)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1611, file: !1590, line: 17, baseType: !161, size: 32, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1611, file: !1590, line: 18, baseType: !161, size: 32, offset: 160)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1611, file: !1590, line: 19, baseType: !161, size: 32, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1611, file: !1590, line: 22, baseType: !1621, size: 640, offset: 224)
!1621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 640, elements: !1622)
!1622 = !{!1623}
!1623 = !DISubrange(count: 20)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1611, file: !1590, line: 25, baseType: !161, size: 32, offset: 864)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1608, file: !1590, line: 350, baseType: !1626, size: 4096, align: 128)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1590, line: 34, size: 4096, align: 128, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1631, !1632, !1647, !1648, !1649, !1653, !1657, !1661}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1626, file: !1590, line: 35, baseType: !328, size: 16)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1626, file: !1590, line: 36, baseType: !328, size: 16, offset: 16)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1626, file: !1590, line: 37, baseType: !328, size: 16, offset: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1626, file: !1590, line: 38, baseType: !328, size: 16, offset: 48)
!1632 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !1590, line: 39, baseType: !1633, size: 128, offset: 64)
!1633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !1590, line: 39, size: 128, elements: !1634)
!1634 = !{!1635, !1640}
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !1633, file: !1590, line: 40, baseType: !1636, size: 128)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1633, file: !1590, line: 40, size: 128, elements: !1637)
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1636, file: !1590, line: 41, baseType: !359, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1636, file: !1590, line: 42, baseType: !359, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, scope: !1633, file: !1590, line: 44, baseType: !1641, size: 128)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1633, file: !1590, line: 44, size: 128, elements: !1642)
!1642 = !{!1643, !1644, !1645, !1646}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1641, file: !1590, line: 45, baseType: !161, size: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1641, file: !1590, line: 46, baseType: !161, size: 32, offset: 32)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1641, file: !1590, line: 47, baseType: !161, size: 32, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1641, file: !1590, line: 48, baseType: !161, size: 32, offset: 96)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1626, file: !1590, line: 51, baseType: !161, size: 32, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1626, file: !1590, line: 52, baseType: !161, size: 32, offset: 224)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1626, file: !1590, line: 55, baseType: !1650, size: 1024, offset: 256)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 1024, elements: !1651)
!1651 = !{!1652}
!1652 = !DISubrange(count: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1626, file: !1590, line: 58, baseType: !1654, size: 2048, offset: 1280)
!1654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 2048, elements: !1655)
!1655 = !{!1656}
!1656 = !DISubrange(count: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1626, file: !1590, line: 60, baseType: !1658, size: 384, offset: 3328)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 384, elements: !1659)
!1659 = !{!1660}
!1660 = !DISubrange(count: 12)
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !1590, line: 62, baseType: !1662, size: 384, offset: 3712)
!1662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !1590, line: 62, size: 384, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1662, file: !1590, line: 63, baseType: !1658, size: 384)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1662, file: !1590, line: 64, baseType: !1658, size: 384)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1608, file: !1590, line: 351, baseType: !1667, size: 1088)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1590, line: 79, size: 1088, elements: !1668)
!1668 = !{!1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1742}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1667, file: !1590, line: 80, baseType: !161, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1667, file: !1590, line: 81, baseType: !161, size: 32, offset: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1667, file: !1590, line: 82, baseType: !161, size: 32, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1667, file: !1590, line: 83, baseType: !161, size: 32, offset: 96)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1667, file: !1590, line: 84, baseType: !161, size: 32, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1667, file: !1590, line: 85, baseType: !161, size: 32, offset: 160)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1667, file: !1590, line: 86, baseType: !161, size: 32, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1667, file: !1590, line: 88, baseType: !1621, size: 640, offset: 224)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1667, file: !1590, line: 89, baseType: !474, size: 8, offset: 864)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1667, file: !1590, line: 90, baseType: !474, size: 8, offset: 872)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1667, file: !1590, line: 91, baseType: !474, size: 8, offset: 880)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1667, file: !1590, line: 92, baseType: !474, size: 8, offset: 888)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1667, file: !1590, line: 93, baseType: !474, size: 8, offset: 896)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1667, file: !1590, line: 94, baseType: !474, size: 8, offset: 904)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1667, file: !1590, line: 95, baseType: !1684, size: 64, offset: 960)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1686, line: 11, size: 128, elements: !1687)
!1686 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1685, file: !1686, line: 12, baseType: !800, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1685, file: !1686, line: 13, baseType: !1690, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1692, line: 103, size: 1344, elements: !1693)
!1692 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1693 = !{!1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1722, !1723, !1724}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1691, file: !1692, line: 109, baseType: !153, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1691, file: !1692, line: 110, baseType: !153, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1691, file: !1692, line: 111, baseType: !153, size: 64, offset: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1691, file: !1692, line: 112, baseType: !153, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1691, file: !1692, line: 113, baseType: !153, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1691, file: !1692, line: 114, baseType: !153, size: 64, offset: 320)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1691, file: !1692, line: 117, baseType: !153, size: 64, offset: 384)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1691, file: !1692, line: 118, baseType: !153, size: 64, offset: 448)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1691, file: !1692, line: 119, baseType: !153, size: 64, offset: 512)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1691, file: !1692, line: 120, baseType: !153, size: 64, offset: 576)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1691, file: !1692, line: 121, baseType: !153, size: 64, offset: 640)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1691, file: !1692, line: 122, baseType: !153, size: 64, offset: 704)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1691, file: !1692, line: 123, baseType: !153, size: 64, offset: 768)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1691, file: !1692, line: 124, baseType: !153, size: 64, offset: 832)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1691, file: !1692, line: 125, baseType: !153, size: 64, offset: 896)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1691, file: !1692, line: 139, baseType: !153, size: 64, offset: 960)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1691, file: !1692, line: 142, baseType: !153, size: 64, offset: 1024)
!1711 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !1692, line: 144, baseType: !1712, size: 64, offset: 1088)
!1712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1691, file: !1692, line: 144, size: 64, elements: !1713)
!1713 = !{!1714, !1715, !1716}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1712, file: !1692, line: 146, baseType: !328, size: 16)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1712, file: !1692, line: 148, baseType: !359, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1712, file: !1692, line: 150, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1692, line: 59, size: 64, elements: !1718)
!1718 = !{!1719, !1720, !1721}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1717, file: !1692, line: 61, baseType: !359, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1717, file: !1692, line: 63, baseType: !359, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1717, file: !1692, line: 65, baseType: !359, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1691, file: !1692, line: 153, baseType: !153, size: 64, offset: 1152)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1691, file: !1692, line: 154, baseType: !153, size: 64, offset: 1216)
!1724 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !1692, line: 156, baseType: !1725, size: 64, offset: 1280)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1691, file: !1692, line: 156, size: 64, elements: !1726)
!1726 = !{!1727, !1728, !1729}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1725, file: !1692, line: 158, baseType: !328, size: 16)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1725, file: !1692, line: 160, baseType: !359, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1725, file: !1692, line: 162, baseType: !1730, size: 64)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1692, line: 69, size: 64, elements: !1731)
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1730, file: !1692, line: 71, baseType: !359, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1730, file: !1692, line: 73, baseType: !359, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1730, file: !1692, line: 75, baseType: !359, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1730, file: !1692, line: 77, baseType: !359, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1730, file: !1692, line: 80, baseType: !359, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1730, file: !1692, line: 83, baseType: !359, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1730, file: !1692, line: 86, baseType: !359, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1730, file: !1692, line: 88, baseType: !359, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1730, file: !1692, line: 93, baseType: !359, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1730, file: !1692, line: 100, baseType: !359, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1667, file: !1590, line: 96, baseType: !161, size: 32, offset: 1024)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1608, file: !1590, line: 352, baseType: !1744, size: 4608, align: 512)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1590, line: 333, size: 4608, align: 512, elements: !1745)
!1745 = !{!1746, !1747, !1756}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1744, file: !1590, line: 334, baseType: !1626, size: 4096, align: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1744, file: !1590, line: 335, baseType: !1748, size: 512, offset: 4096)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1590, line: 312, size: 512, elements: !1749)
!1749 = !{!1750, !1751, !1752}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1748, file: !1590, line: 313, baseType: !359, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1748, file: !1590, line: 314, baseType: !359, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1748, file: !1590, line: 315, baseType: !1753, size: 384, offset: 128)
!1753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 384, elements: !1754)
!1754 = !{!1755}
!1755 = !DISubrange(count: 6)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1744, file: !1590, line: 336, baseType: !1757, offset: 4608)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, elements: !853)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1608, file: !1590, line: 353, baseType: !1759, size: 32768)
!1759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 32768, elements: !1760)
!1760 = !{!1761}
!1761 = !DISubrange(count: 4096)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1589, file: !1590, line: 484, baseType: !1595, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1589, file: !1590, line: 491, baseType: !1764, size: 128, offset: 256)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1590, line: 404, size: 128, elements: !1765)
!1765 = !{!1766, !1767, !1768}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1764, file: !1590, line: 424, baseType: !359, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1764, file: !1590, line: 432, baseType: !7, size: 32, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1764, file: !1590, line: 440, baseType: !7, size: 32, offset: 96)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1589, file: !1590, line: 498, baseType: !1764, size: 128, offset: 384)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1589, file: !1590, line: 508, baseType: !1596, size: 33280, align: 512, offset: 512)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !272, file: !6, line: 125, baseType: !271, size: 64, offset: 384)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !272, file: !6, line: 126, baseType: !7, size: 32, offset: 448)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !272, file: !6, line: 127, baseType: !7, size: 32, offset: 480)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !272, file: !6, line: 128, baseType: !153, size: 64, offset: 512)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !272, file: !6, line: 129, baseType: !153, size: 64, offset: 576)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !6, line: 130, baseType: !174, size: 64, offset: 640)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !272, file: !6, line: 131, baseType: !1778, size: 64, offset: 704)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !134, line: 14, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !133, file: !134, line: 61, baseType: !7, size: 32, offset: 960)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !133, file: !134, line: 62, baseType: !7, size: 32, offset: 992)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !133, file: !134, line: 63, baseType: !7, size: 32, offset: 1024)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !133, file: !134, line: 64, baseType: !7, size: 32, offset: 1056)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !133, file: !134, line: 65, baseType: !7, size: 32, offset: 1088)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !133, file: !134, line: 66, baseType: !7, size: 32, offset: 1120)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !133, file: !134, line: 67, baseType: !153, size: 64, offset: 1152)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !133, file: !134, line: 68, baseType: !7, size: 32, offset: 1216)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !133, file: !134, line: 69, baseType: !305, size: 32, offset: 1248)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !133, file: !134, line: 70, baseType: !197, size: 32, offset: 1280)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !133, file: !134, line: 71, baseType: !457, size: 32, offset: 1312)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !133, file: !134, line: 72, baseType: !1792, size: 64, offset: 1344)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !133, file: !134, line: 73, baseType: !198, size: 64, offset: 1408)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_hint", scope: !133, file: !134, line: 75, baseType: !198, size: 64, offset: 1472)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_notify", scope: !133, file: !134, line: 76, baseType: !1796, size: 64, offset: 1536)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_notify", file: !6, line: 261, size: 448, elements: !1798)
!1798 = !{!1799, !1800, !1805, !1806, !1810}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1797, file: !6, line: 262, baseType: !7, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1797, file: !6, line: 263, baseType: !1801, size: 32, offset: 32)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1802, line: 19, size: 32, elements: !1803)
!1802 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1803 = !{!1804}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1801, file: !1802, line: 20, baseType: !300, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1797, file: !6, line: 264, baseType: !840, size: 256, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1797, file: !6, line: 265, baseType: !1807, size: 64, offset: 320)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{null, !1796, !584}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1797, file: !6, line: 266, baseType: !1811, size: 64, offset: 384)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{null, !1814}
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mask", scope: !133, file: !134, line: 78, baseType: !146, size: 64, offset: 1600)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !133, file: !134, line: 81, baseType: !153, size: 64, offset: 1664)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !133, file: !134, line: 82, baseType: !305, size: 32, offset: 1728)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !133, file: !134, line: 83, baseType: !961, size: 192, offset: 1792)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !133, file: !134, line: 85, baseType: !7, size: 32, offset: 1984)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !133, file: !134, line: 86, baseType: !7, size: 32, offset: 2016)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !133, file: !134, line: 87, baseType: !7, size: 32, offset: 2048)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !133, file: !134, line: 88, baseType: !7, size: 32, offset: 2080)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !133, file: !134, line: 91, baseType: !1778, size: 64, offset: 2112)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !133, file: !134, line: 98, baseType: !968, size: 128, align: 64, offset: 2176)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !133, file: !134, line: 99, baseType: !1826, size: 512, offset: 2304)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1827, line: 64, size: 512, elements: !1828)
!1827 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1828 = !{!1829, !1830, !1831, !1833, !1875, !2046, !2155, !2156, !2157, !2158, !2159, !2160}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1826, file: !1827, line: 65, baseType: !174, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1826, file: !1827, line: 66, baseType: !364, size: 128, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1826, file: !1827, line: 67, baseType: !1832, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1826, file: !1827, line: 68, baseType: !1834, size: 64, offset: 256)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1827, line: 168, size: 768, elements: !1836)
!1836 = !{!1837, !1838, !1839, !1840}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1835, file: !1827, line: 169, baseType: !364, size: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1835, file: !1827, line: 170, baseType: !652, size: 32, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1835, file: !1827, line: 171, baseType: !1826, size: 512, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1835, file: !1827, line: 172, baseType: !1841, size: 64, offset: 704)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1843)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1827, line: 133, size: 192, elements: !1844)
!1844 = !{!1845, !1852, !1857}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1843, file: !1827, line: 134, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1847)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!197, !1850}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1826)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1843, file: !1827, line: 135, baseType: !1853, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1854)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!174, !1850}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1843, file: !1827, line: 136, baseType: !1858, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1859)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!197, !1850, !1862}
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1827, line: 125, size: 20736, elements: !1864)
!1864 = !{!1865, !1867, !1869, !1870, !1874}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1863, file: !1827, line: 126, baseType: !1866, size: 192)
!1866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 192, elements: !1029)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1863, file: !1827, line: 127, baseType: !1868, size: 4096, offset: 192)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 4096, elements: !1655)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1863, file: !1827, line: 128, baseType: !197, size: 32, offset: 4288)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1863, file: !1827, line: 129, baseType: !1871, size: 16384, offset: 4320)
!1871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 16384, elements: !1872)
!1872 = !{!1873}
!1873 = !DISubrange(count: 2048)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1863, file: !1827, line: 130, baseType: !197, size: 32, offset: 20704)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1826, file: !1827, line: 69, baseType: !1876, size: 64, offset: 320)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1878)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1827, line: 116, size: 384, elements: !1879)
!1879 = !{!1880, !1884, !1906, !1999, !2030, !2034}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1878, file: !1827, line: 117, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{null, !1832}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1878, file: !1827, line: 118, baseType: !1885, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1887)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1888, line: 254, size: 128, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1889 = !{!1890, !1902}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1887, file: !1888, line: 255, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!1894, !1832, !1896, !1132}
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !124, line: 66, baseType: !1895)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !507, line: 73, baseType: !1214)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1888, line: 30, size: 128, elements: !1898)
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1897, file: !1888, line: 31, baseType: !174, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1897, file: !1888, line: 32, baseType: !1901, size: 16, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !124, line: 24, baseType: !330)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1887, file: !1888, line: 256, baseType: !1903, size: 64, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!1894, !1832, !1896, !174, !1101}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1878, file: !1827, line: 119, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1910)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1888, line: 84, size: 320, elements: !1911)
!1911 = !{!1912, !1913, !1917, !1995, !1997}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1910, file: !1888, line: 85, baseType: !174, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1910, file: !1888, line: 86, baseType: !1914, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!1901, !1832, !1896, !197}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1910, file: !1888, line: 88, baseType: !1918, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!1901, !1832, !1921, !197}
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1888, line: 175, size: 512, elements: !1923)
!1923 = !{!1924, !1925, !1926, !1927, !1931, !1937, !1938}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1922, file: !1888, line: 176, baseType: !1897, size: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1922, file: !1888, line: 177, baseType: !1101, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1922, file: !1888, line: 178, baseType: !131, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1922, file: !1888, line: 179, baseType: !1928, size: 64, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!1368}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1922, file: !1888, line: 180, baseType: !1932, size: 64, offset: 320)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!1894, !670, !1832, !1921, !1132, !1935, !1101}
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !124, line: 52, baseType: !1936)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !507, line: 88, baseType: !377)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1922, file: !1888, line: 182, baseType: !1932, size: 64, offset: 384)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1922, file: !1888, line: 184, baseType: !1939, size: 64, offset: 448)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!197, !670, !1832, !1921, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !635, line: 625, size: 1344, elements: !1944)
!1944 = !{!1945, !1954, !1955, !1961, !1968, !1969, !1974, !1975, !1980, !1981, !1984, !1988, !1989, !1990, !1991, !1992, !1993}
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1943, file: !635, line: 628, baseType: !1946, size: 128)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1943, file: !635, line: 628, size: 128, elements: !1947)
!1947 = !{!1948, !1953}
!1948 = !DIDerivedType(tag: DW_TAG_member, scope: !1946, file: !635, line: 629, baseType: !1949, size: 128)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !635, line: 629, size: 128, elements: !1950)
!1950 = !{!1951, !1952}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1949, file: !635, line: 631, baseType: !153, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1949, file: !635, line: 632, baseType: !153, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1946, file: !635, line: 635, baseType: !968, size: 128, align: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1943, file: !635, line: 639, baseType: !633, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1943, file: !635, line: 640, baseType: !1956, size: 64, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !672, line: 297, baseType: !1957)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !672, line: 297, size: 64, elements: !1958)
!1958 = !{!1959}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1957, file: !672, line: 297, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !685, line: 19, baseType: !153)
!1961 = !DIDerivedType(tag: DW_TAG_member, scope: !1943, file: !635, line: 646, baseType: !1962, size: 64, offset: 256)
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1943, file: !635, line: 646, size: 64, elements: !1963)
!1963 = !{!1964, !1967}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1962, file: !635, line: 647, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1966)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !635, line: 542, baseType: !153)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1962, file: !635, line: 648, baseType: !1966, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1943, file: !635, line: 666, baseType: !197, size: 32, offset: 320)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1943, file: !635, line: 667, baseType: !1970, size: 64, offset: 384)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !635, line: 579, size: 320, elements: !1972)
!1972 = !{!1973}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1971, file: !635, line: 580, baseType: !705, size: 320)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1943, file: !635, line: 670, baseType: !200, size: 8, offset: 448)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1943, file: !635, line: 681, baseType: !1976, size: 256, offset: 512)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1943, file: !635, line: 678, size: 256, elements: !1977)
!1977 = !{!1978, !1979}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1976, file: !635, line: 679, baseType: !351, size: 192, align: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1976, file: !635, line: 680, baseType: !153, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1943, file: !635, line: 689, baseType: !364, size: 128, offset: 768)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1943, file: !635, line: 691, baseType: !1982, size: 64, offset: 896)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !635, line: 691, flags: DIFlagFwdDecl)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1943, file: !635, line: 694, baseType: !1985, size: 64, offset: 960)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1987)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !635, line: 694, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1943, file: !635, line: 697, baseType: !153, size: 64, offset: 1024)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1943, file: !635, line: 699, baseType: !670, size: 64, offset: 1088)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1943, file: !635, line: 700, baseType: !131, size: 64, offset: 1152)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1943, file: !635, line: 711, baseType: !696, size: 64, offset: 1216)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1943, file: !635, line: 717, baseType: !1303, size: 64, offset: 1280)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1943, file: !635, line: 722, baseType: !1994, offset: 1344)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !635, line: 570, elements: !663)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1910, file: !1888, line: 90, baseType: !1996, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1910, file: !1888, line: 91, baseType: !1998, size: 64, offset: 256)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1878, file: !1827, line: 120, baseType: !2000, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!2003, !1850}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2005)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !38, line: 39, size: 384, elements: !2006)
!2006 = !{!2007, !2008, !2012, !2016, !2022, !2026}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2005, file: !38, line: 40, baseType: !37, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2005, file: !38, line: 41, baseType: !2009, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!200}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2005, file: !38, line: 42, baseType: !2013, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!131}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2005, file: !38, line: 43, baseType: !2017, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!797, !2020}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !38, line: 19, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2005, file: !38, line: 44, baseType: !2023, size: 64, offset: 256)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!797}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2005, file: !38, line: 45, baseType: !2027, size: 64, offset: 320)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !131}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1878, file: !1827, line: 121, baseType: !2031, size: 64, offset: 256)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!797, !1850}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1878, file: !1827, line: 122, baseType: !2035, size: 64, offset: 320)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{null, !1850, !2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1111, line: 28, baseType: !2041)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1111, line: 26, size: 32, elements: !2042)
!2042 = !{!2043}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2041, file: !1111, line: 27, baseType: !2044, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !124, line: 38, baseType: !2045)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !507, line: 50, baseType: !7)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1826, file: !1827, line: 70, baseType: !2047, size: 64, offset: 384)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2049, line: 190, size: 1152, elements: !2050)
!2049 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2050 = !{!2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2147, !2148, !2149, !2150, !2151, !2154}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2048, file: !2049, line: 191, baseType: !305, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2048, file: !2049, line: 192, baseType: !305, size: 32, offset: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2048, file: !2049, line: 202, baseType: !2047, size: 64, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2048, file: !2049, line: 203, baseType: !174, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2048, file: !2049, line: 205, baseType: !351, size: 192, align: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2048, file: !2049, line: 207, baseType: !797, size: 64, offset: 384)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2048, file: !2049, line: 208, baseType: !7, size: 32, offset: 448)
!2058 = !DIDerivedType(tag: DW_TAG_member, scope: !2048, file: !2049, line: 209, baseType: !2059, size: 256, offset: 512)
!2059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !2049, line: 209, size: 256, elements: !2060)
!2060 = !{!2061, !2070, !2074}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2059, file: !2049, line: 210, baseType: !2062, size: 256)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2049, line: 153, size: 256, elements: !2063)
!2063 = !{!2064, !2065, !2066, !2069}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2062, file: !2049, line: 154, baseType: !153, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2062, file: !2049, line: 156, baseType: !526, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2062, file: !2049, line: 162, baseType: !2067, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2049, line: 162, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2062, file: !2049, line: 167, baseType: !153, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2059, file: !2049, line: 211, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2049, line: 170, size: 64, elements: !2072)
!2072 = !{!2073}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2071, file: !2049, line: 171, baseType: !2047, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2059, file: !2049, line: 212, baseType: !2075, size: 256)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2049, line: 174, size: 256, elements: !2076)
!2076 = !{!2077, !2142, !2145, !2146}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2075, file: !2049, line: 175, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2080)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2049, line: 271, size: 768, elements: !2081)
!2081 = !{!2082, !2102, !2106, !2110, !2115, !2119, !2123, !2127, !2128, !2129, !2130, !2138}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2080, file: !2049, line: 276, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!197, !2086}
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2049, line: 251, size: 1216, elements: !2088)
!2088 = !{!2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2087, file: !2049, line: 253, baseType: !2047, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2087, file: !2049, line: 254, baseType: !670, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2087, file: !2049, line: 255, baseType: !221, size: 64, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2087, file: !2049, line: 256, baseType: !131, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2087, file: !2049, line: 259, baseType: !776, size: 256, offset: 256)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2087, file: !2049, line: 260, baseType: !776, size: 256, offset: 512)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2087, file: !2049, line: 261, baseType: !197, size: 32, offset: 768)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2087, file: !2049, line: 262, baseType: !364, size: 128, offset: 832)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2087, file: !2049, line: 263, baseType: !1132, size: 64, offset: 960)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2087, file: !2049, line: 265, baseType: !1101, size: 64, offset: 1024)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2087, file: !2049, line: 266, baseType: !200, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2087, file: !2049, line: 267, baseType: !200, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2087, file: !2049, line: 268, baseType: !1985, size: 64, offset: 1152)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2080, file: !2049, line: 277, baseType: !2103, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{null, !2086}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2080, file: !2049, line: 290, baseType: !2107, size: 64, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!197, !221, !131}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2080, file: !2049, line: 292, baseType: !2111, size: 64, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!131, !221, !2114}
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2080, file: !2049, line: 293, baseType: !2116, size: 64, offset: 256)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!131, !221, !131, !2114}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2080, file: !2049, line: 294, baseType: !2120, size: 64, offset: 320)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{null, !221, !131}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2080, file: !2049, line: 296, baseType: !2124, size: 64, offset: 384)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!1894, !2086, !1132, !1101, !1935}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2080, file: !2049, line: 306, baseType: !1101, size: 64, offset: 448)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2080, file: !2049, line: 313, baseType: !200, size: 8, offset: 512)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2080, file: !2049, line: 314, baseType: !2124, size: 64, offset: 576)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2080, file: !2049, line: 317, baseType: !2131, size: 64, offset: 640)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!2134, !2086, !2136}
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2135, line: 59, baseType: !7)
!2135 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2049, line: 31, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2080, file: !2049, line: 320, baseType: !2139, size: 64, offset: 704)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!197, !2086, !1942}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2075, file: !2049, line: 176, baseType: !2143, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2049, line: 35, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2075, file: !2049, line: 177, baseType: !1935, size: 64, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2075, file: !2049, line: 178, baseType: !2047, size: 64, offset: 192)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2048, file: !2049, line: 215, baseType: !131, size: 64, offset: 768)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2048, file: !2049, line: 221, baseType: !359, size: 64, offset: 832)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2048, file: !2049, line: 223, baseType: !330, size: 16, offset: 896)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2048, file: !2049, line: 224, baseType: !1901, size: 16, offset: 912)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2048, file: !2049, line: 225, baseType: !2152, size: 64, offset: 960)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2049, line: 36, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2048, file: !2049, line: 227, baseType: !968, size: 128, align: 64, offset: 1024)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1826, file: !1827, line: 71, baseType: !1801, size: 32, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1826, file: !1827, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1826, file: !1827, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1826, file: !1827, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1826, file: !1827, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1826, file: !1827, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !133, file: !134, line: 101, baseType: !776, size: 256, offset: 2816)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !133, file: !134, line: 102, baseType: !197, size: 32, offset: 3072)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !133, file: !134, line: 103, baseType: !2164, size: 64, offset: 3136)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !44, line: 402, size: 9216, align: 512, elements: !2166)
!2166 = !{!2167, !2168, !2169, !2173, !2183, !2209, !2210, !2211, !2212, !2216, !2219, !2220, !2221, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2288, !2292, !2312, !2329, !2330, !2331, !2332, !2341, !2364, !2365, !2368, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2382, !2383, !2472, !2480, !2481, !2482, !2484, !2488, !2489, !2493, !2494, !2495, !2496, !2498, !2499, !2500, !2507, !2508, !2509, !2513}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2165, file: !44, line: 403, baseType: !43, size: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2165, file: !44, line: 406, baseType: !364, size: 128, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2165, file: !44, line: 409, baseType: !2170, size: 448, offset: 192)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 448, elements: !2171)
!2171 = !{!2172}
!2172 = !DISubrange(count: 56)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !2165, file: !44, line: 417, baseType: !2174, size: 768, offset: 640)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !44, line: 45, size: 768, elements: !2175)
!2175 = !{!2176, !2177, !2178, !2179, !2182}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2174, file: !44, line: 46, baseType: !1826, size: 512)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2174, file: !44, line: 47, baseType: !2164, size: 64, offset: 512)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !2174, file: !44, line: 48, baseType: !1832, size: 64, offset: 576)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !2174, file: !44, line: 49, baseType: !2180, size: 64, offset: 640)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !44, line: 49, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !2174, file: !44, line: 50, baseType: !989, size: 64, offset: 704)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !2165, file: !44, line: 418, baseType: !2184, size: 64, offset: 1408)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !44, line: 53, size: 448, elements: !2186)
!2186 = !{!2187, !2188, !2193, !2197, !2201, !2205}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2185, file: !44, line: 54, baseType: !1897, size: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2185, file: !44, line: 55, baseType: !2189, size: 64, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!1894, !2184, !2192, !1132}
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2185, file: !44, line: 57, baseType: !2194, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!1894, !2184, !2192, !174, !1101}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2185, file: !44, line: 59, baseType: !2198, size: 64, offset: 256)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null, !2164, !174}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2185, file: !44, line: 60, baseType: !2202, size: 64, offset: 320)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!197, !2164}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2185, file: !44, line: 61, baseType: !2206, size: 64, offset: 384)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{null, !2164}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2165, file: !44, line: 419, baseType: !174, size: 64, offset: 1472)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !2165, file: !44, line: 420, baseType: !174, size: 64, offset: 1536)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !2165, file: !44, line: 421, baseType: !1832, size: 64, offset: 1600)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !2165, file: !44, line: 424, baseType: !2213, size: 64, offset: 1664)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2215)
!2215 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !44, line: 424, flags: DIFlagFwdDecl)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !2165, file: !44, line: 425, baseType: !2217, size: 64, offset: 1728)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !2165, file: !44, line: 426, baseType: !7, size: 32, offset: 1792)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !2165, file: !44, line: 435, baseType: !776, size: 256, offset: 1856)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !2165, file: !44, line: 437, baseType: !2222, size: 64, offset: 2112)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2224, line: 69, size: 320, elements: !2225)
!2224 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2225 = !{!2226, !2227, !2228, !2245, !2247, !2251, !2252}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2223, file: !2224, line: 70, baseType: !174, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2223, file: !2224, line: 71, baseType: !2164, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2223, file: !2224, line: 72, baseType: !2229, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2231)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2224, line: 47, size: 256, elements: !2232)
!2232 = !{!2233, !2234, !2240, !2244}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2231, file: !2224, line: 49, baseType: !7, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2231, file: !2224, line: 51, baseType: !2235, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!197, !174, !2238}
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2223)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2231, file: !2224, line: 53, baseType: !2241, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!197, !1132, !2238}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2231, file: !2224, line: 55, baseType: !2027, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2223, file: !2224, line: 73, baseType: !2246, size: 16, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2223, file: !2224, line: 74, baseType: !2248, size: 8, offset: 208)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !162, line: 16, baseType: !2249)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !164, line: 20, baseType: !2250)
!2250 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2223, file: !2224, line: 75, baseType: !474, size: 8, offset: 216)
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2223, file: !2224, line: 76, baseType: !2253, size: 64, offset: 256)
!2253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2223, file: !2224, line: 76, size: 64, elements: !2254)
!2254 = !{!2255, !2256, !2263}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2253, file: !2224, line: 77, baseType: !131, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2253, file: !2224, line: 78, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2259)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2224, line: 86, size: 128, elements: !2260)
!2260 = !{!2261, !2262}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2259, file: !2224, line: 87, baseType: !7, size: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2259, file: !2224, line: 88, baseType: !1132, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2253, file: !2224, line: 79, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2266)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2224, line: 92, size: 256, elements: !2267)
!2267 = !{!2268, !2269, !2270, !2271, !2272}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2266, file: !2224, line: 94, baseType: !7, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2266, file: !2224, line: 95, baseType: !7, size: 32, offset: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2266, file: !2224, line: 96, baseType: !263, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2266, file: !2224, line: 97, baseType: !2229, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2266, file: !2224, line: 98, baseType: !131, size: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !2165, file: !44, line: 438, baseType: !7, size: 32, offset: 2176)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !2165, file: !44, line: 441, baseType: !7, size: 32, offset: 2208)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !2165, file: !44, line: 442, baseType: !2213, size: 64, offset: 2240)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !2165, file: !44, line: 443, baseType: !2217, size: 64, offset: 2304)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !2165, file: !44, line: 444, baseType: !200, size: 8, offset: 2368)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !2165, file: !44, line: 451, baseType: !200, size: 8, offset: 2376)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !2165, file: !44, line: 454, baseType: !7, size: 32, offset: 2400)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2165, file: !44, line: 455, baseType: !2281, size: 64, offset: 2432)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2283, line: 23, size: 96, elements: !2284)
!2283 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2284 = !{!2285, !2286, !2287}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2282, file: !2283, line: 24, baseType: !197, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2282, file: !2283, line: 24, baseType: !197, size: 32, offset: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2282, file: !2283, line: 24, baseType: !197, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2165, file: !44, line: 458, baseType: !2289, size: 64, offset: 2496)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!197}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2165, file: !44, line: 460, baseType: !2293, size: 4032, align: 512, offset: 2560)
!2293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2294, size: 4032, elements: !2310)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !44, line: 362, size: 576, elements: !2295)
!2295 = !{!2296, !2297, !2298}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2294, file: !44, line: 363, baseType: !131, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2294, file: !44, line: 364, baseType: !7, size: 32, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2294, file: !44, line: 367, baseType: !2299, size: 448, offset: 128)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !44, line: 319, size: 448, elements: !2300)
!2300 = !{!2301, !2302}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2299, file: !44, line: 320, baseType: !2164, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2299, file: !44, line: 321, baseType: !2303, size: 384, offset: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2304, line: 40, size: 384, elements: !2305)
!2304 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2305 = !{!2306}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2303, file: !2304, line: 41, baseType: !2307, size: 384, align: 64)
!2307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 384, align: 64, elements: !2308)
!2308 = !{!2309}
!2309 = !DISubrange(count: 2)
!2310 = !{!2311}
!2311 = !DISubrange(count: 7)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2165, file: !44, line: 463, baseType: !2313, size: 192, offset: 6592)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2314, line: 8, size: 192, elements: !2315)
!2314 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2315 = !{!2316, !2317, !2318}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2313, file: !2314, line: 10, baseType: !7, size: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2313, file: !2314, line: 11, baseType: !1001, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2313, file: !2314, line: 12, baseType: !2319, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2321, line: 59, size: 48, elements: !2322)
!2321 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2322 = !{!2323, !2324, !2325, !2326, !2327, !2328}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2320, file: !2321, line: 60, baseType: !815, size: 16)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2320, file: !2321, line: 61, baseType: !815, size: 16, offset: 16)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2320, file: !2321, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2320, file: !2321, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2320, file: !2321, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2320, file: !2321, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !2165, file: !44, line: 465, baseType: !153, size: 64, offset: 6784)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !2165, file: !44, line: 469, baseType: !7, size: 32, offset: 6848)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !2165, file: !44, line: 470, baseType: !364, size: 128, offset: 6912)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !2165, file: !44, line: 471, baseType: !2333, size: 64, offset: 7040)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2335, line: 33, size: 96, elements: !2336)
!2335 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2336 = !{!2337, !2338, !2339, !2340}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2334, file: !2335, line: 37, baseType: !197, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2334, file: !2335, line: 43, baseType: !197, size: 32, offset: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2334, file: !2335, line: 45, baseType: !330, size: 16, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2334, file: !2335, line: 47, baseType: !330, size: 16, offset: 80)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !2165, file: !44, line: 476, baseType: !2342, size: 64, offset: 7104)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !44, line: 378, size: 256, elements: !2344)
!2344 = !{!2345, !2361, !2362, !2363}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2343, file: !44, line: 379, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2348, line: 204, baseType: !2349)
!2348 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2348, line: 197, size: 192, elements: !2350)
!2350 = !{!2351, !2353, !2354, !2355, !2357, !2359}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2349, file: !2348, line: 198, baseType: !2352, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2348, line: 21, baseType: !163)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2349, file: !2348, line: 199, baseType: !476, size: 8, offset: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2349, file: !2348, line: 200, baseType: !476, size: 8, offset: 40)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2349, file: !2348, line: 201, baseType: !2356, size: 16, offset: 48)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2348, line: 17, baseType: !329)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2349, file: !2348, line: 202, baseType: !2358, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2348, line: 16, baseType: !360)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2349, file: !2348, line: 203, baseType: !2360, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2348, line: 22, baseType: !360)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2343, file: !44, line: 380, baseType: !7, size: 32, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2343, file: !44, line: 381, baseType: !1132, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2343, file: !44, line: 382, baseType: !1132, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !2165, file: !44, line: 477, baseType: !2343, size: 256, offset: 7168)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !2165, file: !44, line: 480, baseType: !2366, size: 64, offset: 7424)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !44, line: 480, flags: DIFlagFwdDecl)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !2165, file: !44, line: 483, baseType: !2369, size: 64, offset: 7488)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !44, line: 483, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2165, file: !44, line: 488, baseType: !1132, size: 64, offset: 7552)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !2165, file: !44, line: 492, baseType: !131, size: 64, offset: 7616)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !2165, file: !44, line: 493, baseType: !7, size: 32, offset: 7680)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !2165, file: !44, line: 495, baseType: !131, size: 64, offset: 7744)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !2165, file: !44, line: 496, baseType: !7, size: 32, offset: 7808)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !2165, file: !44, line: 499, baseType: !7, size: 32, offset: 7840)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !2165, file: !44, line: 500, baseType: !2378, size: 64, offset: 7872)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2380, line: 45, baseType: !2381)
!2380 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !2165, file: !44, line: 503, baseType: !7, size: 32, offset: 7936)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !2165, file: !44, line: 504, baseType: !2384, size: 64, offset: 8000)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2387, line: 96, size: 192, elements: !2388)
!2387 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2388 = !{!2389, !2390, !2433, !2436}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2386, file: !2387, line: 97, baseType: !7, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2386, file: !2387, line: 98, baseType: !2391, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2387, line: 24, size: 3072, elements: !2393)
!2393 = !{!2394, !2396, !2397, !2398, !2399, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2430, !2431, !2432}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2392, file: !2387, line: 26, baseType: !2395, size: 128)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 128, elements: !2308)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2392, file: !2387, line: 27, baseType: !2395, size: 128, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2392, file: !2387, line: 28, baseType: !197, size: 32, offset: 256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2392, file: !2387, line: 31, baseType: !652, size: 32, align: 512, offset: 512)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2392, file: !2387, line: 32, baseType: !2400, size: 960, offset: 576)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2401, line: 206, size: 960, elements: !2402)
!2401 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2402 = !{!2403, !2404, !2407, !2409, !2410, !2412}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2400, file: !2401, line: 207, baseType: !971, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2400, file: !2401, line: 208, baseType: !2405, size: 256, offset: 64)
!2405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2406, size: 256, elements: !757)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2400, file: !2401, line: 209, baseType: !2408, size: 256, offset: 320)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 256, elements: !757)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2400, file: !2401, line: 213, baseType: !800, size: 64, offset: 576)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2400, file: !2401, line: 215, baseType: !2411, size: 256, offset: 640)
!2411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 256, elements: !757)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2400, file: !2401, line: 216, baseType: !474, size: 8, offset: 896)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2392, file: !2387, line: 33, baseType: !153, size: 64, offset: 1536)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2392, file: !2387, line: 34, baseType: !153, size: 64, offset: 1600)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2392, file: !2387, line: 35, baseType: !200, size: 8, offset: 1664)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2392, file: !2387, line: 36, baseType: !1501, size: 320, offset: 1728)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2392, file: !2387, line: 37, baseType: !840, size: 256, offset: 2048)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2392, file: !2387, line: 38, baseType: !968, size: 128, align: 64, offset: 2304)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2392, file: !2387, line: 39, baseType: !2420, size: 64, offset: 2432)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2387, line: 49, size: 768, elements: !2422)
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428, !2429}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2421, file: !2387, line: 50, baseType: !652, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2421, file: !2387, line: 51, baseType: !2408, size: 256, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2421, file: !2387, line: 53, baseType: !2408, size: 256, offset: 320)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2421, file: !2387, line: 54, baseType: !153, size: 64, offset: 576)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2421, file: !2387, line: 55, baseType: !2420, size: 64, offset: 640)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2421, file: !2387, line: 56, baseType: !197, size: 32, offset: 704)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2421, file: !2387, line: 57, baseType: !197, size: 32, offset: 736)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2392, file: !2387, line: 40, baseType: !153, size: 64, offset: 2496)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2392, file: !2387, line: 42, baseType: !197, size: 32, offset: 2560)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2392, file: !2387, line: 43, baseType: !2385, size: 64, offset: 2624)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2386, file: !2387, line: 99, baseType: !2434, offset: 128)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2435, line: 211, elements: !663)
!2435 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2386, file: !2387, line: 100, baseType: !2437, size: 64, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2387, line: 63, size: 3008, elements: !2439)
!2439 = !{!2440, !2441, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2471}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2438, file: !2387, line: 64, baseType: !2420, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2438, file: !2387, line: 65, baseType: !2442, size: 192, offset: 64)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2420, size: 192, elements: !1029)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2438, file: !2387, line: 67, baseType: !197, size: 32, offset: 256)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2438, file: !2387, line: 68, baseType: !776, size: 256, offset: 320)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2438, file: !2387, line: 69, baseType: !652, size: 32, offset: 576)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2438, file: !2387, line: 70, baseType: !776, size: 256, offset: 640)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2438, file: !2387, line: 71, baseType: !153, size: 64, offset: 896)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2438, file: !2387, line: 72, baseType: !153, size: 64, offset: 960)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2438, file: !2387, line: 73, baseType: !153, size: 64, offset: 1024)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2438, file: !2387, line: 74, baseType: !153, size: 64, offset: 1088)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2438, file: !2387, line: 75, baseType: !153, size: 64, offset: 1152)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2438, file: !2387, line: 76, baseType: !153, size: 64, offset: 1216)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2438, file: !2387, line: 77, baseType: !153, size: 64, offset: 1280)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2438, file: !2387, line: 78, baseType: !153, size: 64, offset: 1344)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2438, file: !2387, line: 79, baseType: !200, size: 8, offset: 1408)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2438, file: !2387, line: 80, baseType: !153, size: 64, offset: 1472)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2438, file: !2387, line: 81, baseType: !776, size: 256, offset: 1536)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2438, file: !2387, line: 82, baseType: !990, size: 256, offset: 1792)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2438, file: !2387, line: 84, baseType: !305, size: 32, offset: 2048)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2438, file: !2387, line: 87, baseType: !153, size: 64, offset: 2112)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2438, file: !2387, line: 88, baseType: !153, size: 64, offset: 2176)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2438, file: !2387, line: 89, baseType: !2463, size: 704, offset: 2240)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !841, line: 111, size: 704, elements: !2464)
!2464 = !{!2465, !2466, !2467, !2470}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2463, file: !841, line: 112, baseType: !840, size: 256)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2463, file: !841, line: 113, baseType: !1501, size: 320, offset: 256)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2463, file: !841, line: 116, baseType: !2468, size: 64, offset: 576)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !841, line: 18, flags: DIFlagFwdDecl)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2463, file: !841, line: 117, baseType: !197, size: 32, offset: 640)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2438, file: !2387, line: 90, baseType: !2385, size: 64, offset: 2944)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !2165, file: !44, line: 515, baseType: !2473, size: 64, offset: 8064)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2475, line: 117, size: 128, elements: !2476)
!2475 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2476 = !{!2477, !2478, !2479}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2474, file: !2475, line: 118, baseType: !755, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2474, file: !2475, line: 119, baseType: !755, size: 32, offset: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2474, file: !2475, line: 120, baseType: !800, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !2165, file: !44, line: 516, baseType: !7, size: 32, offset: 8128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !2165, file: !44, line: 519, baseType: !7, size: 32, offset: 8160)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !2165, file: !44, line: 520, baseType: !2483, size: 64, offset: 8192)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !2165, file: !44, line: 523, baseType: !2485, size: 64, offset: 8256)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !44, line: 523, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !2165, file: !44, line: 524, baseType: !7, size: 32, offset: 8320)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !2165, file: !44, line: 525, baseType: !2490, size: 64, offset: 8384)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !44, line: 525, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !2165, file: !44, line: 526, baseType: !7, size: 32, offset: 8448)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !2165, file: !44, line: 533, baseType: !131, size: 64, offset: 8512)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !2165, file: !44, line: 534, baseType: !7, size: 32, offset: 8576)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !2165, file: !44, line: 535, baseType: !2497, size: 64, offset: 8640)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !2165, file: !44, line: 536, baseType: !7, size: 32, offset: 8704)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !2165, file: !44, line: 539, baseType: !197, size: 32, offset: 8736)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !2165, file: !44, line: 540, baseType: !2501, size: 64, offset: 8768)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2503, line: 32, size: 64, elements: !2504)
!2503 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2504 = !{!2505, !2506}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2502, file: !2503, line: 33, baseType: !755, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2502, file: !2503, line: 34, baseType: !755, size: 32, offset: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !2165, file: !44, line: 563, baseType: !364, size: 128, offset: 8832)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !2165, file: !44, line: 565, baseType: !364, size: 128, offset: 8960)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2165, file: !44, line: 568, baseType: !2510, size: 64, offset: 9088)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{null}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2165, file: !44, line: 570, baseType: !305, size: 32, offset: 9152)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !133, file: !134, line: 104, baseType: !174, size: 64, offset: 3200)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "resend_node", scope: !133, file: !134, line: 106, baseType: !123, size: 128, offset: 3264)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!2518 = !{!0, !2519, !2521}
!2519 = !DIGlobalVariableExpression(var: !2520, expr: !DIExpression())
!2520 = distinct !DIGlobalVariable(name: "irq_resend_list", scope: !2, file: !3, line: 25, type: !956, isLocal: true, isDefinition: true)
!2521 = !DIGlobalVariableExpression(var: !2522, expr: !DIExpression())
!2522 = distinct !DIGlobalVariable(name: "resend_tasklet", scope: !2, file: !3, line: 48, type: !2523, isLocal: true, isDefinition: true)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !6, line: 642, size: 320, elements: !2524)
!2524 = !{!2525, !2527, !2528, !2529, !2530, !2541}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2523, file: !6, line: 644, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2523, file: !6, line: 645, baseType: !153, size: 64, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2523, file: !6, line: 646, baseType: !305, size: 32, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !2523, file: !6, line: 647, baseType: !200, size: 8, offset: 160)
!2530 = !DIDerivedType(tag: DW_TAG_member, scope: !2523, file: !6, line: 648, baseType: !2531, size: 64, offset: 192)
!2531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2523, file: !6, line: 648, size: 64, elements: !2532)
!2532 = !{!2533, !2537}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2531, file: !6, line: 649, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{null, !153}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2531, file: !6, line: 650, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{null, !2526}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2523, file: !6, line: 652, baseType: !153, size: 64, offset: 256)
!2542 = !{i32 7, !"Dwarf Version", i32 5}
!2543 = !{i32 2, !"Debug Info Version", i32 3}
!2544 = !{i32 1, !"wchar_size", i32 2}
!2545 = !{i32 8, !"cf-protection-branch", i32 1}
!2546 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2547 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2548 = !{i32 1, !"Code Model", i32 2}
!2549 = !{i32 1, !"override-stack-alignment", i32 8}
!2550 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2551 = distinct !DISubprogram(name: "clear_irq_resend", scope: !3, file: !3, line: 86, type: !268, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2552)
!2552 = !{!2553}
!2553 = !DILocalVariable(name: "desc", arg: 1, scope: !2551, file: !3, line: 86, type: !132)
!2554 = !DILocation(line: 86, column: 40, scope: !2551)
!2555 = !DILocation(line: 88, column: 2, scope: !2551)
!2556 = !DILocation(line: 89, column: 18, scope: !2551)
!2557 = !DILocation(line: 89, column: 24, scope: !2551)
!2558 = !DILocation(line: 89, column: 2, scope: !2551)
!2559 = !DILocation(line: 90, column: 2, scope: !2551)
!2560 = !DILocation(line: 91, column: 1, scope: !2551)
!2561 = !DISubprogram(name: "_raw_spin_lock", scope: !2562, file: !2562, line: 22, type: !2563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2562 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2563 = !DISubroutineType(types: !2564)
!2564 = !{null, !2565}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!2566 = distinct !DISubprogram(name: "hlist_del_init", scope: !2567, file: !2567, line: 1005, type: !2568, scopeLine: 1006, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2570)
!2567 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2568 = !DISubroutineType(types: !2569)
!2569 = !{null, !122}
!2570 = !{!2571}
!2571 = !DILocalVariable(name: "n", arg: 1, scope: !2566, file: !2567, line: 1005, type: !122)
!2572 = !DILocation(line: 1005, column: 54, scope: !2566)
!2573 = !DILocation(line: 1007, column: 22, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2566, file: !2567, line: 1007, column: 6)
!2575 = !DILocation(line: 1007, column: 7, scope: !2574)
!2576 = !DILocation(line: 1007, column: 6, scope: !2566)
!2577 = !DILocation(line: 1008, column: 15, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2574, file: !2567, line: 1007, column: 26)
!2579 = !DILocation(line: 1008, column: 3, scope: !2578)
!2580 = !DILocation(line: 1009, column: 19, scope: !2578)
!2581 = !DILocation(line: 1009, column: 3, scope: !2578)
!2582 = !DILocation(line: 1010, column: 2, scope: !2578)
!2583 = !DILocation(line: 1011, column: 1, scope: !2566)
!2584 = !DISubprogram(name: "_raw_spin_unlock", scope: !2562, file: !2562, line: 39, type: !2563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2585 = distinct !DISubprogram(name: "irq_resend_init", scope: !3, file: !3, line: 93, type: !268, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2586)
!2586 = !{!2587}
!2587 = !DILocalVariable(name: "desc", arg: 1, scope: !2585, file: !3, line: 93, type: !132)
!2588 = !DILocation(line: 93, column: 39, scope: !2585)
!2589 = !DILocation(line: 95, column: 19, scope: !2585)
!2590 = !DILocation(line: 95, column: 25, scope: !2585)
!2591 = !DILocation(line: 95, column: 2, scope: !2585)
!2592 = !DILocation(line: 96, column: 1, scope: !2585)
!2593 = distinct !DISubprogram(name: "INIT_HLIST_NODE", scope: !2567, file: !2567, line: 934, type: !2568, scopeLine: 935, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2594)
!2594 = !{!2595}
!2595 = !DILocalVariable(name: "h", arg: 1, scope: !2593, file: !2567, line: 934, type: !122)
!2596 = !DILocation(line: 934, column: 55, scope: !2593)
!2597 = !DILocation(line: 936, column: 2, scope: !2593)
!2598 = !DILocation(line: 936, column: 5, scope: !2593)
!2599 = !DILocation(line: 936, column: 10, scope: !2593)
!2600 = !DILocation(line: 937, column: 2, scope: !2593)
!2601 = !DILocation(line: 937, column: 5, scope: !2593)
!2602 = !DILocation(line: 937, column: 11, scope: !2593)
!2603 = !DILocation(line: 938, column: 1, scope: !2593)
!2604 = distinct !DISubprogram(name: "check_irq_resend", scope: !3, file: !3, line: 124, type: !2605, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!197, !132, !200}
!2607 = !{!2608, !2609, !2610}
!2608 = !DILocalVariable(name: "desc", arg: 1, scope: !2604, file: !3, line: 124, type: !132)
!2609 = !DILocalVariable(name: "inject", arg: 2, scope: !2604, file: !3, line: 124, type: !200)
!2610 = !DILocalVariable(name: "err", scope: !2604, file: !3, line: 126, type: !197)
!2611 = !DILocation(line: 124, column: 39, scope: !2604)
!2612 = !DILocation(line: 124, column: 50, scope: !2604)
!2613 = !DILocation(line: 126, column: 2, scope: !2604)
!2614 = !DILocation(line: 126, column: 6, scope: !2604)
!2615 = !DILocation(line: 133, column: 28, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 133, column: 6)
!2617 = !DILocation(line: 133, column: 6, scope: !2616)
!2618 = !DILocation(line: 133, column: 6, scope: !2604)
!2619 = !DILocation(line: 134, column: 3, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 133, column: 35)
!2621 = !DILocation(line: 134, column: 9, scope: !2620)
!2622 = !DILocation(line: 134, column: 16, scope: !2620)
!2623 = !DILocation(line: 135, column: 3, scope: !2620)
!2624 = !DILocation(line: 138, column: 6, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 138, column: 6)
!2626 = !DILocation(line: 138, column: 12, scope: !2625)
!2627 = !DILocation(line: 138, column: 19, scope: !2625)
!2628 = !DILocation(line: 138, column: 6, scope: !2604)
!2629 = !DILocation(line: 139, column: 3, scope: !2625)
!2630 = !DILocation(line: 141, column: 8, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 141, column: 6)
!2632 = !DILocation(line: 141, column: 14, scope: !2631)
!2633 = !DILocation(line: 141, column: 21, scope: !2631)
!2634 = !DILocation(line: 141, column: 37, scope: !2631)
!2635 = !DILocation(line: 141, column: 41, scope: !2631)
!2636 = !{i8 0, i8 2}
!2637 = !DILocation(line: 141, column: 6, scope: !2604)
!2638 = !DILocation(line: 142, column: 3, scope: !2631)
!2639 = !DILocation(line: 144, column: 2, scope: !2604)
!2640 = !DILocation(line: 144, column: 8, scope: !2604)
!2641 = !DILocation(line: 144, column: 15, scope: !2604)
!2642 = !DILocation(line: 146, column: 21, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 146, column: 6)
!2644 = !DILocation(line: 146, column: 7, scope: !2643)
!2645 = !DILocation(line: 146, column: 6, scope: !2604)
!2646 = !DILocation(line: 147, column: 23, scope: !2643)
!2647 = !DILocation(line: 147, column: 9, scope: !2643)
!2648 = !DILocation(line: 147, column: 7, scope: !2643)
!2649 = !DILocation(line: 147, column: 3, scope: !2643)
!2650 = !DILocation(line: 150, column: 7, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 150, column: 6)
!2652 = !DILocation(line: 150, column: 6, scope: !2604)
!2653 = !DILocation(line: 151, column: 3, scope: !2651)
!2654 = !DILocation(line: 151, column: 9, scope: !2651)
!2655 = !DILocation(line: 151, column: 16, scope: !2651)
!2656 = !DILocation(line: 152, column: 9, scope: !2604)
!2657 = !DILocation(line: 152, column: 2, scope: !2604)
!2658 = !DILocation(line: 153, column: 1, scope: !2604)
!2659 = distinct !DISubprogram(name: "irq_settings_is_level", scope: !65, file: !65, line: 85, type: !2660, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2662)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!200, !132}
!2662 = !{!2663}
!2663 = !DILocalVariable(name: "desc", arg: 1, scope: !2659, file: !65, line: 85, type: !132)
!2664 = !DILocation(line: 85, column: 59, scope: !2659)
!2665 = !DILocation(line: 87, column: 9, scope: !2659)
!2666 = !DILocation(line: 87, column: 15, scope: !2659)
!2667 = !DILocation(line: 87, column: 36, scope: !2659)
!2668 = !DILocation(line: 87, column: 2, scope: !2659)
!2669 = distinct !DISubprogram(name: "try_retrigger", scope: !3, file: !3, line: 107, type: !2670, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!197, !132}
!2672 = !{!2673}
!2673 = !DILocalVariable(name: "desc", arg: 1, scope: !2669, file: !3, line: 107, type: !132)
!2674 = !DILocation(line: 107, column: 43, scope: !2669)
!2675 = !DILocation(line: 109, column: 6, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 109, column: 6)
!2677 = !DILocation(line: 109, column: 12, scope: !2676)
!2678 = !DILocation(line: 109, column: 21, scope: !2676)
!2679 = !DILocation(line: 109, column: 27, scope: !2676)
!2680 = !DILocation(line: 109, column: 6, scope: !2669)
!2681 = !DILocation(line: 110, column: 10, scope: !2676)
!2682 = !DILocation(line: 110, column: 16, scope: !2676)
!2683 = !DILocation(line: 110, column: 25, scope: !2676)
!2684 = !DILocation(line: 110, column: 31, scope: !2676)
!2685 = !DILocation(line: 110, column: 46, scope: !2676)
!2686 = !DILocation(line: 110, column: 52, scope: !2676)
!2687 = !DILocation(line: 110, column: 3, scope: !2676)
!2688 = !DILocation(line: 113, column: 39, scope: !2669)
!2689 = !DILocation(line: 113, column: 45, scope: !2669)
!2690 = !DILocation(line: 113, column: 9, scope: !2669)
!2691 = !DILocation(line: 113, column: 2, scope: !2669)
!2692 = !DILocation(line: 117, column: 1, scope: !2669)
!2693 = distinct !DISubprogram(name: "irq_sw_resend", scope: !3, file: !3, line: 50, type: !2670, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2694)
!2694 = !{!2695}
!2695 = !DILocalVariable(name: "desc", arg: 1, scope: !2693, file: !3, line: 50, type: !132)
!2696 = !DILocation(line: 50, column: 43, scope: !2693)
!2697 = !DILocation(line: 56, column: 29, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 56, column: 6)
!2699 = !DILocation(line: 56, column: 35, scope: !2698)
!2700 = !DILocation(line: 56, column: 6, scope: !2698)
!2701 = !DILocation(line: 56, column: 6, scope: !2693)
!2702 = !DILocation(line: 57, column: 3, scope: !2698)
!2703 = !DILocation(line: 64, column: 36, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 64, column: 6)
!2705 = !DILocation(line: 64, column: 6, scope: !2704)
!2706 = !DILocation(line: 64, column: 6, scope: !2693)
!2707 = !DILocation(line: 69, column: 8, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 69, column: 7)
!2709 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 64, column: 43)
!2710 = !DILocation(line: 69, column: 14, scope: !2708)
!2711 = !DILocation(line: 69, column: 7, scope: !2709)
!2712 = !DILocation(line: 70, column: 4, scope: !2708)
!2713 = !DILocation(line: 72, column: 22, scope: !2709)
!2714 = !DILocation(line: 72, column: 28, scope: !2709)
!2715 = !DILocation(line: 72, column: 10, scope: !2709)
!2716 = !DILocation(line: 72, column: 8, scope: !2709)
!2717 = !DILocation(line: 73, column: 8, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 73, column: 7)
!2719 = !DILocation(line: 73, column: 7, scope: !2709)
!2720 = !DILocation(line: 74, column: 4, scope: !2718)
!2721 = !DILocation(line: 75, column: 2, scope: !2709)
!2722 = !DILocation(line: 78, column: 2, scope: !2693)
!2723 = !DILocation(line: 79, column: 22, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 79, column: 6)
!2725 = !DILocation(line: 79, column: 28, scope: !2724)
!2726 = !DILocation(line: 79, column: 6, scope: !2724)
!2727 = !DILocation(line: 79, column: 6, scope: !2693)
!2728 = !DILocation(line: 80, column: 19, scope: !2724)
!2729 = !DILocation(line: 80, column: 25, scope: !2724)
!2730 = !DILocation(line: 80, column: 3, scope: !2724)
!2731 = !DILocation(line: 81, column: 2, scope: !2693)
!2732 = !DILocation(line: 82, column: 2, scope: !2693)
!2733 = !DILocation(line: 83, column: 2, scope: !2693)
!2734 = !DILocation(line: 84, column: 1, scope: !2693)
!2735 = distinct !DISubprogram(name: "hlist_unhashed", scope: !2567, file: !2567, line: 948, type: !2736, scopeLine: 949, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2740)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!197, !2738}
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!2740 = !{!2741}
!2741 = !DILocalVariable(name: "h", arg: 1, scope: !2735, file: !2567, line: 948, type: !2738)
!2742 = !DILocation(line: 948, column: 59, scope: !2735)
!2743 = !DILocation(line: 950, column: 10, scope: !2735)
!2744 = !DILocation(line: 950, column: 13, scope: !2735)
!2745 = !DILocation(line: 950, column: 9, scope: !2735)
!2746 = !DILocation(line: 950, column: 2, scope: !2735)
!2747 = distinct !DISubprogram(name: "__hlist_del", scope: !2567, file: !2567, line: 975, type: !2568, scopeLine: 976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2748)
!2748 = !{!2749, !2750, !2751}
!2749 = !DILocalVariable(name: "n", arg: 1, scope: !2747, file: !2567, line: 975, type: !122)
!2750 = !DILocalVariable(name: "next", scope: !2747, file: !2567, line: 977, type: !122)
!2751 = !DILocalVariable(name: "pprev", scope: !2747, file: !2567, line: 978, type: !128)
!2752 = !DILocation(line: 975, column: 51, scope: !2747)
!2753 = !DILocation(line: 977, column: 2, scope: !2747)
!2754 = !DILocation(line: 977, column: 21, scope: !2747)
!2755 = !DILocation(line: 977, column: 28, scope: !2747)
!2756 = !DILocation(line: 977, column: 31, scope: !2747)
!2757 = !DILocation(line: 978, column: 2, scope: !2747)
!2758 = !DILocation(line: 978, column: 22, scope: !2747)
!2759 = !DILocation(line: 978, column: 30, scope: !2747)
!2760 = !DILocation(line: 978, column: 33, scope: !2747)
!2761 = !DILocation(line: 980, column: 2, scope: !2747)
!2762 = !DILocation(line: 980, column: 2, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2747, file: !2567, line: 980, column: 2)
!2764 = !DILocation(line: 980, column: 2, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2763, file: !2567, line: 980, column: 2)
!2766 = !DILocation(line: 980, column: 2, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2763, file: !2567, line: 980, column: 2)
!2768 = !DILocation(line: 981, column: 6, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2747, file: !2567, line: 981, column: 6)
!2770 = !DILocation(line: 981, column: 6, scope: !2747)
!2771 = !DILocation(line: 982, column: 3, scope: !2769)
!2772 = !DILocation(line: 982, column: 3, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2769, file: !2567, line: 982, column: 3)
!2774 = !DILocation(line: 982, column: 3, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2773, file: !2567, line: 982, column: 3)
!2776 = !DILocation(line: 982, column: 3, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2773, file: !2567, line: 982, column: 3)
!2778 = !DILocation(line: 983, column: 1, scope: !2747)
!2779 = !DISubprogram(name: "irq_chip_retrigger_hierarchy", scope: !84, file: !84, line: 681, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2780 = distinct !DISubprogram(name: "handle_enforce_irqctx", scope: !51, file: !51, line: 465, type: !2781, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!200, !181}
!2783 = !{!2784}
!2784 = !DILocalVariable(name: "data", arg: 1, scope: !2780, file: !51, line: 465, type: !181)
!2785 = !DILocation(line: 465, column: 59, scope: !2780)
!2786 = !DILocation(line: 467, column: 39, scope: !2780)
!2787 = !DILocation(line: 467, column: 9, scope: !2780)
!2788 = !DILocation(line: 467, column: 2, scope: !2780)
!2789 = distinct !DISubprogram(name: "irq_settings_is_nested_thread", scope: !65, file: !65, line: 155, type: !2660, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2790)
!2790 = !{!2791}
!2791 = !DILocalVariable(name: "desc", arg: 1, scope: !2789, file: !65, line: 155, type: !132)
!2792 = !DILocation(line: 155, column: 67, scope: !2789)
!2793 = !DILocation(line: 157, column: 9, scope: !2789)
!2794 = !DILocation(line: 157, column: 15, scope: !2789)
!2795 = !DILocation(line: 157, column: 36, scope: !2789)
!2796 = !DILocation(line: 157, column: 2, scope: !2789)
!2797 = !DISubprogram(name: "irq_to_desc", scope: !2798, file: !2798, line: 9, type: !2799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2798 = !DIFile(filename: "./include/linux/irqnr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "590ce9d10c77e92ba5c0ad662f4e1272")
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!132, !7}
!2801 = distinct !DISubprogram(name: "hlist_add_head", scope: !2567, file: !2567, line: 1021, type: !2802, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2805)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{null, !122, !2804}
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!2805 = !{!2806, !2807, !2808}
!2806 = !DILocalVariable(name: "n", arg: 1, scope: !2801, file: !2567, line: 1021, type: !122)
!2807 = !DILocalVariable(name: "h", arg: 2, scope: !2801, file: !2567, line: 1021, type: !2804)
!2808 = !DILocalVariable(name: "first", scope: !2801, file: !2567, line: 1023, type: !122)
!2809 = !DILocation(line: 1021, column: 54, scope: !2801)
!2810 = !DILocation(line: 1021, column: 76, scope: !2801)
!2811 = !DILocation(line: 1023, column: 2, scope: !2801)
!2812 = !DILocation(line: 1023, column: 21, scope: !2801)
!2813 = !DILocation(line: 1023, column: 29, scope: !2801)
!2814 = !DILocation(line: 1023, column: 32, scope: !2801)
!2815 = !DILocation(line: 1024, column: 2, scope: !2801)
!2816 = !DILocation(line: 1024, column: 2, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2801, file: !2567, line: 1024, column: 2)
!2818 = !DILocation(line: 1024, column: 2, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2817, file: !2567, line: 1024, column: 2)
!2820 = !DILocation(line: 1024, column: 2, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2817, file: !2567, line: 1024, column: 2)
!2822 = !DILocation(line: 1025, column: 6, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2801, file: !2567, line: 1025, column: 6)
!2824 = !DILocation(line: 1025, column: 6, scope: !2801)
!2825 = !DILocation(line: 1026, column: 3, scope: !2823)
!2826 = !DILocation(line: 1026, column: 3, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2823, file: !2567, line: 1026, column: 3)
!2828 = !DILocation(line: 1026, column: 3, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2827, file: !2567, line: 1026, column: 3)
!2830 = !DILocation(line: 1026, column: 3, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2827, file: !2567, line: 1026, column: 3)
!2832 = !DILocation(line: 1027, column: 2, scope: !2801)
!2833 = !DILocation(line: 1027, column: 2, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2801, file: !2567, line: 1027, column: 2)
!2835 = !DILocation(line: 1027, column: 2, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2834, file: !2567, line: 1027, column: 2)
!2837 = !DILocation(line: 1027, column: 2, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2834, file: !2567, line: 1027, column: 2)
!2839 = !DILocation(line: 1028, column: 2, scope: !2801)
!2840 = !DILocation(line: 1028, column: 2, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2801, file: !2567, line: 1028, column: 2)
!2842 = !DILocation(line: 1028, column: 2, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2841, file: !2567, line: 1028, column: 2)
!2844 = !DILocation(line: 1028, column: 2, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2841, file: !2567, line: 1028, column: 2)
!2846 = !DILocation(line: 1029, column: 1, scope: !2801)
!2847 = distinct !DISubprogram(name: "tasklet_schedule", scope: !6, file: !6, line: 709, type: !2539, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2848)
!2848 = !{!2849}
!2849 = !DILocalVariable(name: "t", arg: 1, scope: !2847, file: !6, line: 709, type: !2526)
!2850 = !DILocation(line: 709, column: 60, scope: !2847)
!2851 = !DILocation(line: 711, column: 46, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2847, file: !6, line: 711, column: 6)
!2853 = !DILocation(line: 711, column: 49, scope: !2852)
!2854 = !DILocation(line: 711, column: 7, scope: !2852)
!2855 = !DILocation(line: 711, column: 6, scope: !2847)
!2856 = !DILocation(line: 712, column: 22, scope: !2852)
!2857 = !DILocation(line: 712, column: 3, scope: !2852)
!2858 = !DILocation(line: 713, column: 1, scope: !2847)
!2859 = distinct !DISubprogram(name: "irqd_is_handle_enforce_irqctx", scope: !84, file: !84, line: 326, type: !2781, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2860)
!2860 = !{!2861}
!2861 = !DILocalVariable(name: "d", arg: 1, scope: !2859, file: !84, line: 326, type: !181)
!2862 = !DILocation(line: 326, column: 67, scope: !2859)
!2863 = !DILocation(line: 328, column: 9, scope: !2859)
!2864 = !DILocation(line: 328, column: 28, scope: !2859)
!2865 = !DILocation(line: 328, column: 2, scope: !2859)
!2866 = distinct !DISubprogram(name: "test_and_set_bit", scope: !2867, file: !2867, line: 68, type: !2868, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2872)
!2867 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!200, !800, !2870}
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !153)
!2872 = !{!2873, !2874}
!2873 = !DILocalVariable(name: "nr", arg: 1, scope: !2866, file: !2867, line: 68, type: !800)
!2874 = !DILocalVariable(name: "addr", arg: 2, scope: !2866, file: !2867, line: 68, type: !2870)
!2875 = !DILocation(line: 68, column: 51, scope: !2866)
!2876 = !DILocation(line: 68, column: 79, scope: !2866)
!2877 = !DILocation(line: 70, column: 2, scope: !2866)
!2878 = !DILocation(line: 70, column: 2, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2866, file: !2867, line: 70, column: 2)
!2880 = !DILocation(line: 71, column: 31, scope: !2866)
!2881 = !DILocation(line: 71, column: 38, scope: !2866)
!2882 = !DILocation(line: 71, column: 36, scope: !2866)
!2883 = !DILocation(line: 71, column: 2, scope: !2866)
!2884 = !DILocation(line: 72, column: 31, scope: !2866)
!2885 = !DILocation(line: 72, column: 35, scope: !2866)
!2886 = !DILocation(line: 72, column: 9, scope: !2866)
!2887 = !DILocation(line: 72, column: 2, scope: !2866)
!2888 = !DISubprogram(name: "__tasklet_schedule", scope: !6, file: !6, line: 707, type: !2539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2889 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2890, file: !2890, line: 94, type: !2891, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2896)
!2890 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2891 = !DISubroutineType(types: !2892)
!2892 = !{null, !2893, !1101}
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2895)
!2895 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2896 = !{!2897, !2898}
!2897 = !DILocalVariable(name: "v", arg: 1, scope: !2889, file: !2890, line: 94, type: !2893)
!2898 = !DILocalVariable(name: "size", arg: 2, scope: !2889, file: !2890, line: 94, type: !1101)
!2899 = !DILocation(line: 94, column: 79, scope: !2889)
!2900 = !DILocation(line: 94, column: 89, scope: !2889)
!2901 = !DILocation(line: 96, column: 20, scope: !2889)
!2902 = !DILocation(line: 96, column: 23, scope: !2889)
!2903 = !DILocation(line: 96, column: 2, scope: !2889)
!2904 = !DILocation(line: 97, column: 2, scope: !2889)
!2905 = !DILocation(line: 98, column: 1, scope: !2889)
!2906 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !2907, file: !2907, line: 136, type: !2868, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2908)
!2907 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2908 = !{!2909, !2910, !2911}
!2909 = !DILocalVariable(name: "nr", arg: 1, scope: !2906, file: !2907, line: 136, type: !800)
!2910 = !DILocalVariable(name: "addr", arg: 2, scope: !2906, file: !2907, line: 136, type: !2870)
!2911 = !DILocalVariable(name: "c", scope: !2912, file: !2907, line: 138, type: !200)
!2912 = distinct !DILexicalBlock(scope: !2906, file: !2907, line: 138, column: 9)
!2913 = !DILocation(line: 136, column: 28, scope: !2906)
!2914 = !DILocation(line: 136, column: 56, scope: !2906)
!2915 = !DILocation(line: 138, column: 9, scope: !2912)
!2916 = !{i64 2148008912, i64 2148008951, i64 2148008972, i64 2148009009, i64 2148009032, i64 2148009041, i64 2148009144}
!2917 = !DILocation(line: 138, column: 9, scope: !2906)
!2918 = !DILocation(line: 138, column: 2, scope: !2906)
!2919 = distinct !DISubprogram(name: "kasan_check_write", scope: !2920, file: !2920, line: 44, type: !2921, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2923)
!2920 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!200, !2893, !7}
!2923 = !{!2924, !2925}
!2924 = !DILocalVariable(name: "p", arg: 1, scope: !2919, file: !2920, line: 44, type: !2893)
!2925 = !DILocalVariable(name: "size", arg: 2, scope: !2919, file: !2920, line: 44, type: !7)
!2926 = !DILocation(line: 44, column: 59, scope: !2919)
!2927 = !DILocation(line: 44, column: 75, scope: !2919)
!2928 = !DILocation(line: 46, column: 2, scope: !2919)
!2929 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2930, file: !2930, line: 229, type: !2931, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2933)
!2930 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2931 = !DISubroutineType(types: !2932)
!2932 = !{null, !2893, !1101, !197}
!2933 = !{!2934, !2935, !2936}
!2934 = !DILocalVariable(name: "ptr", arg: 1, scope: !2929, file: !2930, line: 229, type: !2893)
!2935 = !DILocalVariable(name: "size", arg: 2, scope: !2929, file: !2930, line: 229, type: !1101)
!2936 = !DILocalVariable(name: "type", arg: 3, scope: !2929, file: !2930, line: 230, type: !197)
!2937 = !DILocation(line: 229, column: 60, scope: !2929)
!2938 = !DILocation(line: 229, column: 72, scope: !2929)
!2939 = !DILocation(line: 230, column: 15, scope: !2929)
!2940 = !DILocation(line: 230, column: 23, scope: !2929)
!2941 = distinct !DISubprogram(name: "resend_irqs", scope: !3, file: !3, line: 31, type: !2539, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2942)
!2942 = !{!2943, !2944, !2945}
!2943 = !DILocalVariable(name: "unused", arg: 1, scope: !2941, file: !3, line: 31, type: !2526)
!2944 = !DILocalVariable(name: "desc", scope: !2941, file: !3, line: 33, type: !132)
!2945 = !DILocalVariable(name: "__mptr", scope: !2946, file: !3, line: 37, type: !131)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 37, column: 10)
!2947 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 36, column: 41)
!2948 = !DILocation(line: 31, column: 48, scope: !2941)
!2949 = !DILocation(line: 33, column: 2, scope: !2941)
!2950 = !DILocation(line: 33, column: 19, scope: !2941)
!2951 = !DILocation(line: 35, column: 2, scope: !2941)
!2952 = !DILocation(line: 36, column: 2, scope: !2941)
!2953 = !DILocation(line: 36, column: 10, scope: !2941)
!2954 = !DILocation(line: 36, column: 9, scope: !2941)
!2955 = !DILocation(line: 37, column: 10, scope: !2946)
!2956 = !DILocation(line: 37, column: 10, scope: !2947)
!2957 = !DILocation(line: 37, column: 8, scope: !2947)
!2958 = !DILocation(line: 39, column: 19, scope: !2947)
!2959 = !DILocation(line: 39, column: 25, scope: !2947)
!2960 = !DILocation(line: 39, column: 3, scope: !2947)
!2961 = !DILocation(line: 40, column: 3, scope: !2947)
!2962 = !DILocation(line: 41, column: 3, scope: !2947)
!2963 = !DILocation(line: 41, column: 9, scope: !2947)
!2964 = !DILocation(line: 41, column: 20, scope: !2947)
!2965 = !DILocation(line: 42, column: 3, scope: !2947)
!2966 = distinct !{!2966, !2952, !2967, !2968, !2969}
!2967 = !DILocation(line: 43, column: 2, scope: !2941)
!2968 = !{!"llvm.loop.mustprogress"}
!2969 = !{!"llvm.loop.unroll.disable"}
!2970 = !DILocation(line: 44, column: 2, scope: !2941)
!2971 = !DILocation(line: 45, column: 1, scope: !2941)
!2972 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !2562, file: !2562, line: 29, type: !2563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2973 = distinct !DISubprogram(name: "hlist_empty", scope: !2567, file: !2567, line: 970, type: !2974, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2978)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!197, !2976}
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !956)
!2978 = !{!2979}
!2979 = !DILocalVariable(name: "h", arg: 1, scope: !2973, file: !2567, line: 970, type: !2976)
!2980 = !DILocation(line: 970, column: 56, scope: !2973)
!2981 = !DILocation(line: 972, column: 10, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2973, file: !2567, line: 972, column: 10)
!2983 = !DILocation(line: 972, column: 10, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2982, file: !2567, line: 972, column: 10)
!2985 = !DILocation(line: 972, column: 9, scope: !2973)
!2986 = !DILocation(line: 972, column: 2, scope: !2973)
!2987 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !2562, file: !2562, line: 41, type: !2563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
