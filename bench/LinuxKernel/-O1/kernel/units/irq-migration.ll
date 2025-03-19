; ModuleID = 'kernel/irq/migration.c'
source_filename = "kernel/irq/migration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { [1 x i64] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, [1 x %struct.cpumask], i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, %struct.hlist_node, [24 x i8] }
%struct.irq_common_data = type { i32, i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask] }
%struct.irq_data = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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

@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local global i32, align 4
@.str = private unnamed_addr constant [23 x i8] c"kernel/irq/migration.c\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @irq_fixup_move_pending(ptr noundef %desc, i1 noundef zeroext %force_clear) #0 align 16 !dbg !2491 {
entry:
  %retval = alloca i1, align 1
  %desc.addr = alloca ptr, align 8
  %force_clear.addr = alloca i8, align 1
  %data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2495, metadata !DIExpression()), !dbg !2498
  %frombool = zext i1 %force_clear to i8
  store i8 %frombool, ptr %force_clear.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %force_clear.addr, metadata !2496, metadata !DIExpression()), !dbg !2499
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #9, !dbg !2500
  call void @llvm.dbg.declare(metadata ptr %data, metadata !2497, metadata !DIExpression()), !dbg !2501
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2502
  %call = call ptr @irq_desc_get_irq_data(ptr noundef %0) #10, !dbg !2503
  store ptr %call, ptr %data, align 8, !dbg !2501
  %1 = load ptr, ptr %data, align 8, !dbg !2504
  %call1 = call zeroext i1 @irqd_is_setaffinity_pending(ptr noundef %1) #10, !dbg !2506
  br i1 %call1, label %if.end, label %if.then, !dbg !2507

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2508

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !2509
  %pending_mask = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 20, !dbg !2509
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %pending_mask, i64 0, i64 0, !dbg !2509
  %call2 = call i32 @cpumask_first_and(ptr noundef %arraydecay, ptr noundef @__cpu_online_mask) #10, !dbg !2509
  %3 = load i32, ptr @nr_cpu_ids, align 4, !dbg !2511
  %cmp = icmp uge i32 %call2, %3, !dbg !2512
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !2513

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %data, align 8, !dbg !2514
  call void @irqd_clr_move_pending(ptr noundef %4) #10, !dbg !2516
  store i1 false, ptr %retval, align 1, !dbg !2517
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2517

if.end4:                                          ; preds = %if.end
  %5 = load i8, ptr %force_clear.addr, align 1, !dbg !2518, !range !2520, !noundef !619
  %tobool = trunc i8 %5 to i1, !dbg !2518
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !2521

if.then5:                                         ; preds = %if.end4
  %6 = load ptr, ptr %data, align 8, !dbg !2522
  call void @irqd_clr_move_pending(ptr noundef %6) #10, !dbg !2523
  br label %if.end6, !dbg !2523

if.end6:                                          ; preds = %if.then5, %if.end4
  store i1 true, ptr %retval, align 1, !dbg !2524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2524

cleanup:                                          ; preds = %if.end6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #9, !dbg !2525
  %7 = load i1, ptr %retval, align 1, !dbg !2525
  ret i1 %7, !dbg !2525
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @irq_desc_get_irq_data(ptr noundef %desc) #3 align 16 !dbg !2526 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2530, metadata !DIExpression()), !dbg !2531
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2532
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, !dbg !2533
  ret ptr %irq_data, !dbg !2534
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_is_setaffinity_pending(ptr noundef %d) #3 align 16 !dbg !2535 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2539, metadata !DIExpression()), !dbg !2540
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2541
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2541
  %1 = load ptr, ptr %common, align 8, !dbg !2541
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !2541
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !2541
  %and = and i32 %2, 256, !dbg !2542
  %tobool = icmp ne i32 %and, 0, !dbg !2541
  ret i1 %tobool, !dbg !2543
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_first_and(ptr noundef %srcp1, ptr noundef %srcp2) #3 align 16 !dbg !2544 {
entry:
  %srcp1.addr = alloca ptr, align 8
  %srcp2.addr = alloca ptr, align 8
  store ptr %srcp1, ptr %srcp1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp1.addr, metadata !2548, metadata !DIExpression()), !dbg !2550
  store ptr %srcp2, ptr %srcp2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp2.addr, metadata !2549, metadata !DIExpression()), !dbg !2551
  %0 = load ptr, ptr %srcp1.addr, align 8, !dbg !2552
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !2552
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2552
  %1 = load ptr, ptr %srcp2.addr, align 8, !dbg !2553
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !2553
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !2553
  %call = call i64 @find_first_and_bit(ptr noundef %arraydecay, ptr noundef %arraydecay2, i64 noundef 64) #10, !dbg !2554
  %conv = trunc i64 %call to i32, !dbg !2554
  ret i32 %conv, !dbg !2555
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irqd_clr_move_pending(ptr noundef %d) #3 align 16 !dbg !2556 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2559, metadata !DIExpression()), !dbg !2560
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2561
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2561
  %1 = load ptr, ptr %common, align 8, !dbg !2561
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !2561
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !2562
  %and = and i32 %2, -257, !dbg !2562
  store i32 %and, ptr %state_use_accessors, align 8, !dbg !2562
  ret void, !dbg !2563
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @irq_move_masked_irq(ptr noundef %idata) #0 align 16 !dbg !2564 {
entry:
  %idata.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %data = alloca ptr, align 8
  %chip = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %idata, ptr %idata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idata.addr, metadata !2566, metadata !DIExpression()), !dbg !2580
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #9, !dbg !2581
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !2567, metadata !DIExpression()), !dbg !2582
  %0 = load ptr, ptr %idata.addr, align 8, !dbg !2583
  %call = call ptr @irq_data_to_desc(ptr noundef %0) #10, !dbg !2584
  store ptr %call, ptr %desc, align 8, !dbg !2582
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #9, !dbg !2585
  call void @llvm.dbg.declare(metadata ptr %data, metadata !2568, metadata !DIExpression()), !dbg !2586
  %1 = load ptr, ptr %desc, align 8, !dbg !2587
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 1, !dbg !2588
  store ptr %irq_data, ptr %data, align 8, !dbg !2586
  call void @llvm.lifetime.start.p0(i64 8, ptr %chip) #9, !dbg !2589
  call void @llvm.dbg.declare(metadata ptr %chip, metadata !2569, metadata !DIExpression()), !dbg !2590
  %2 = load ptr, ptr %data, align 8, !dbg !2591
  %chip1 = getelementptr inbounds %struct.irq_data, ptr %2, i32 0, i32 4, !dbg !2592
  %3 = load ptr, ptr %chip1, align 8, !dbg !2592
  store ptr %3, ptr %chip, align 8, !dbg !2590
  %4 = load ptr, ptr %data, align 8, !dbg !2593
  %call2 = call zeroext i1 @irqd_is_setaffinity_pending(ptr noundef %4) #10, !dbg !2593
  %lnot = xor i1 %call2, true, !dbg !2593
  %lnot3 = xor i1 %lnot, true, !dbg !2593
  %lnot4 = xor i1 %lnot3, true, !dbg !2593
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2593
  %conv = sext i32 %lnot.ext to i64, !dbg !2593
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2593
  %tobool = icmp ne i64 %expval, 0, !dbg !2593
  br i1 %tobool, label %if.then, label %if.end, !dbg !2595

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup87, !dbg !2596

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %data, align 8, !dbg !2597
  call void @irqd_clr_move_pending(ptr noundef %5) #10, !dbg !2598
  %6 = load ptr, ptr %data, align 8, !dbg !2599
  %call5 = call zeroext i1 @irqd_is_per_cpu(ptr noundef %6) #10, !dbg !2600
  br i1 %call5, label %if.then6, label %if.end33, !dbg !2601

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !2602
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2570, metadata !DIExpression()), !dbg !2602
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !2602
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !2603
  %tobool7 = icmp ne i32 %7, 0, !dbg !2603
  %lnot8 = xor i1 %tobool7, true, !dbg !2603
  %lnot10 = xor i1 %lnot8, true, !dbg !2603
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !2603
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !2603
  %expval13 = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !2603
  %tobool14 = icmp ne i64 %expval13, 0, !dbg !2603
  br i1 %tobool14, label %if.then15, label %if.end25, !dbg !2602

if.then15:                                        ; preds = %if.then6
  br label %do.body, !dbg !2603

do.body:                                          ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !2604
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2574, metadata !DIExpression()), !dbg !2604
  store i32 2305, ptr %__flags, align 4, !dbg !2604
  br label %do.body16, !dbg !2604

do.body16:                                        ; preds = %do.body
  br label %do.cond, !dbg !2605

do.cond:                                          ; preds = %do.body16
  br label %do.end, !dbg !2605

do.end:                                           ; preds = %do.cond
  br label %do.body17, !dbg !2604

do.body17:                                        ; preds = %do.end
  %8 = load i32, ptr %__flags, align 4, !dbg !2607
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 53, i32 %8, i64 12) #9, !dbg !2607, !srcloc !2609
  br label %do.cond18, !dbg !2607

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2607

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !2604

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !2610

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !2610

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !2603
  br label %do.cond23, !dbg !2604

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !2604

do.end24:                                         ; preds = %do.cond23
  br label %if.end25, !dbg !2604

if.end25:                                         ; preds = %do.end24, %if.then6
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !2602
  %tobool26 = icmp ne i32 %9, 0, !dbg !2602
  %lnot27 = xor i1 %tobool26, true, !dbg !2602
  %lnot29 = xor i1 %lnot27, true, !dbg !2602
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !2602
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !2602
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !2602
  store i64 %expval32, ptr %tmp, align 8, !dbg !2603
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !2612
  %10 = load i64, ptr %tmp, align 8, !dbg !2602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup87, !dbg !2613

if.end33:                                         ; preds = %if.end
  %11 = load ptr, ptr %desc, align 8, !dbg !2614
  %pending_mask = getelementptr inbounds %struct.irq_desc, ptr %11, i32 0, i32 20, !dbg !2614
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %pending_mask, i64 0, i64 0, !dbg !2614
  %call34 = call zeroext i1 @cpumask_empty(ptr noundef %arraydecay) #10, !dbg !2614
  %lnot35 = xor i1 %call34, true, !dbg !2614
  %lnot37 = xor i1 %lnot35, true, !dbg !2614
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !2614
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !2614
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !2614
  %tobool41 = icmp ne i64 %expval40, 0, !dbg !2614
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !2616

if.then42:                                        ; preds = %if.end33
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup87, !dbg !2617

if.end43:                                         ; preds = %if.end33
  %12 = load ptr, ptr %chip, align 8, !dbg !2618
  %irq_set_affinity = getelementptr inbounds %struct.irq_chip, ptr %12, i32 0, i32 10, !dbg !2620
  %13 = load ptr, ptr %irq_set_affinity, align 8, !dbg !2620
  %tobool44 = icmp ne ptr %13, null, !dbg !2618
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !2621

if.then45:                                        ; preds = %if.end43
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup87, !dbg !2622

if.end46:                                         ; preds = %if.end43
  br label %do.body47, !dbg !2623

do.body47:                                        ; preds = %if.end46
  %14 = load ptr, ptr %desc, align 8, !dbg !2624
  %lock = getelementptr inbounds %struct.irq_desc, ptr %14, i32 0, i32 15, !dbg !2624
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 0, !dbg !2624
  %call48 = call i32 @queued_spin_is_locked(ptr noundef %raw_lock) #10, !dbg !2624
  %tobool49 = icmp ne i32 %call48, 0, !dbg !2624
  %lnot50 = xor i1 %tobool49, true, !dbg !2624
  %lnot52 = xor i1 %lnot50, true, !dbg !2624
  %lnot54 = xor i1 %lnot52, true, !dbg !2624
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !2624
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !2624
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !2624
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !2624
  br i1 %tobool58, label %if.then59, label %if.end69, !dbg !2627

if.then59:                                        ; preds = %do.body47
  br label %do.body60, !dbg !2624

do.body60:                                        ; preds = %if.then59
  br label %do.body61, !dbg !2628

do.body61:                                        ; preds = %do.body60
  br label %do.cond62, !dbg !2630

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !2630

do.end63:                                         ; preds = %do.cond62
  br label %do.body64, !dbg !2628

do.body64:                                        ; preds = %do.end63
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 63, i32 0, i64 12) #9, !dbg !2632, !srcloc !2634
  br label %do.cond65, !dbg !2632

do.cond65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !2632

do.end66:                                         ; preds = %do.cond65
  unreachable, !dbg !2628

do.cond67:                                        ; No predecessors!
  br label %do.end68, !dbg !2628

do.end68:                                         ; preds = %do.cond67
  br label %if.end69, !dbg !2628

if.end69:                                         ; preds = %do.end68, %do.body47
  br label %do.cond70, !dbg !2627

do.cond70:                                        ; preds = %if.end69
  br label %do.end71, !dbg !2627

do.end71:                                         ; preds = %do.cond70
  %15 = load ptr, ptr %desc, align 8, !dbg !2635
  %pending_mask72 = getelementptr inbounds %struct.irq_desc, ptr %15, i32 0, i32 20, !dbg !2635
  %arraydecay73 = getelementptr inbounds [1 x %struct.cpumask], ptr %pending_mask72, i64 0, i64 0, !dbg !2635
  %call74 = call i32 @cpumask_first_and(ptr noundef %arraydecay73, ptr noundef @__cpu_online_mask) #10, !dbg !2635
  %16 = load i32, ptr @nr_cpu_ids, align 4, !dbg !2636
  %cmp = icmp ult i32 %call74, %16, !dbg !2637
  br i1 %cmp, label %if.then76, label %if.end84, !dbg !2638

if.then76:                                        ; preds = %do.end71
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2577, metadata !DIExpression()), !dbg !2640
  %17 = load ptr, ptr %data, align 8, !dbg !2641
  %18 = load ptr, ptr %desc, align 8, !dbg !2642
  %pending_mask77 = getelementptr inbounds %struct.irq_desc, ptr %18, i32 0, i32 20, !dbg !2643
  %arraydecay78 = getelementptr inbounds [1 x %struct.cpumask], ptr %pending_mask77, i64 0, i64 0, !dbg !2642
  %call79 = call i32 @irq_do_set_affinity(ptr noundef %17, ptr noundef %arraydecay78, i1 noundef zeroext false) #10, !dbg !2644
  store i32 %call79, ptr %ret, align 4, !dbg !2645
  %19 = load i32, ptr %ret, align 4, !dbg !2646
  %cmp80 = icmp eq i32 %19, -16, !dbg !2648
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !2649

if.then82:                                        ; preds = %if.then76
  %20 = load ptr, ptr %data, align 8, !dbg !2650
  call void @irqd_set_move_pending(ptr noundef %20) #10, !dbg !2652
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2653

if.end83:                                         ; preds = %if.then76
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2654
  br label %cleanup, !dbg !2654

cleanup:                                          ; preds = %if.end83, %if.then82
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !2654
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup87 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end84, !dbg !2655

if.end84:                                         ; preds = %cleanup.cont, %do.end71
  %21 = load ptr, ptr %desc, align 8, !dbg !2656
  %pending_mask85 = getelementptr inbounds %struct.irq_desc, ptr %21, i32 0, i32 20, !dbg !2657
  %arraydecay86 = getelementptr inbounds [1 x %struct.cpumask], ptr %pending_mask85, i64 0, i64 0, !dbg !2656
  call void @cpumask_clear(ptr noundef %arraydecay86) #10, !dbg !2658
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2659
  br label %cleanup87, !dbg !2659

cleanup87:                                        ; preds = %if.end84, %cleanup, %if.then45, %if.then42, %if.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %chip) #9, !dbg !2659
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #9, !dbg !2659
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #9, !dbg !2659
  %cleanup.dest90 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest90, label %unreachable [
    i32 0, label %cleanup.cont91
    i32 1, label %cleanup.cont91
  ]

cleanup.cont91:                                   ; preds = %cleanup87, %cleanup87
  ret void, !dbg !2659

unreachable:                                      ; preds = %cleanup87
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @irq_data_to_desc(ptr noundef %data) #3 align 16 !dbg !2660 {
entry:
  %data.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2664, metadata !DIExpression()), !dbg !2667
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !2668
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2665, metadata !DIExpression()), !dbg !2668
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2668
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2668
  %1 = load ptr, ptr %common, align 8, !dbg !2668
  store ptr %1, ptr %__mptr, align 8, !dbg !2668
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2668
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !2668
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2668
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !2669
  %3 = load ptr, ptr %tmp, align 8, !dbg !2668
  ret ptr %3, !dbg !2670
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_is_per_cpu(ptr noundef %d) #3 align 16 !dbg !2671 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2673, metadata !DIExpression()), !dbg !2674
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2675
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2675
  %1 = load ptr, ptr %common, align 8, !dbg !2675
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !2675
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !2675
  %and = and i32 %2, 2048, !dbg !2676
  %tobool = icmp ne i32 %and, 0, !dbg !2675
  ret i1 %tobool, !dbg !2677
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_empty(ptr noundef %srcp) #3 align 16 !dbg !2678 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !2682, metadata !DIExpression()), !dbg !2683
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !2684
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !2684
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2684
  %call = call zeroext i1 @bitmap_empty(ptr noundef %arraydecay, i32 noundef 64) #10, !dbg !2685
  ret i1 %call, !dbg !2686
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_spin_is_locked(ptr noundef %lock) #5 align 16 !dbg !2687 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2693, metadata !DIExpression()), !dbg !2694
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2695
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !2696
  %call = call i32 @atomic_read(ptr noundef %1) #10, !dbg !2697
  ret i32 %call, !dbg !2698
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2699 dso_local i32 @irq_do_set_affinity(ptr noundef, ptr noundef, i1 noundef zeroext) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irqd_set_move_pending(ptr noundef %d) #3 align 16 !dbg !2700 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2702, metadata !DIExpression()), !dbg !2703
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2704
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2704
  %1 = load ptr, ptr %common, align 8, !dbg !2704
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !2704
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !2705
  %or = or i32 %2, 256, !dbg !2705
  store i32 %or, ptr %state_use_accessors, align 8, !dbg !2705
  ret void, !dbg !2706
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear(ptr noundef %dstp) #3 align 16 !dbg !2707 {
entry:
  %dstp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !2711, metadata !DIExpression()), !dbg !2712
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !2713
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !2713
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2713
  call void @bitmap_zero(ptr noundef %arraydecay, i32 noundef 64) #10, !dbg !2714
  ret void, !dbg !2715
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__irq_move_irq(ptr noundef %idata) #0 align 16 !dbg !2716 {
entry:
  %idata.addr = alloca ptr, align 8
  %masked = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idata, ptr %idata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idata.addr, metadata !2718, metadata !DIExpression()), !dbg !2720
  call void @llvm.lifetime.start.p0(i64 1, ptr %masked) #9, !dbg !2721
  call void @llvm.dbg.declare(metadata ptr %masked, metadata !2719, metadata !DIExpression()), !dbg !2722
  %0 = load ptr, ptr %idata.addr, align 8, !dbg !2723
  %call = call ptr @irq_data_to_desc(ptr noundef %0) #10, !dbg !2724
  %call1 = call ptr @irq_desc_get_irq_data(ptr noundef %call) #10, !dbg !2725
  store ptr %call1, ptr %idata.addr, align 8, !dbg !2726
  %1 = load ptr, ptr %idata.addr, align 8, !dbg !2727
  %call2 = call zeroext i1 @irqd_irq_disabled(ptr noundef %1) #10, !dbg !2727
  %lnot = xor i1 %call2, true, !dbg !2727
  %lnot3 = xor i1 %lnot, true, !dbg !2727
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2727
  %conv = sext i32 %lnot.ext to i64, !dbg !2727
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2727
  %tobool = icmp ne i64 %expval, 0, !dbg !2727
  br i1 %tobool, label %if.then, label %if.end, !dbg !2729

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2730

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %idata.addr, align 8, !dbg !2731
  %call4 = call zeroext i1 @irqd_irq_masked(ptr noundef %2) #10, !dbg !2732
  %frombool = zext i1 %call4 to i8, !dbg !2733
  store i8 %frombool, ptr %masked, align 1, !dbg !2733
  %3 = load i8, ptr %masked, align 1, !dbg !2734, !range !2520, !noundef !619
  %tobool5 = trunc i8 %3 to i1, !dbg !2734
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !2736

if.then6:                                         ; preds = %if.end
  %4 = load ptr, ptr %idata.addr, align 8, !dbg !2737
  %chip = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 4, !dbg !2738
  %5 = load ptr, ptr %chip, align 8, !dbg !2738
  %irq_mask = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6, !dbg !2739
  %6 = load ptr, ptr %irq_mask, align 8, !dbg !2739
  %7 = load ptr, ptr %idata.addr, align 8, !dbg !2740
  call void %6(ptr noundef %7) #10, !dbg !2737
  br label %if.end7, !dbg !2737

if.end7:                                          ; preds = %if.then6, %if.end
  %8 = load ptr, ptr %idata.addr, align 8, !dbg !2741
  call void @irq_move_masked_irq(ptr noundef %8) #10, !dbg !2742
  %9 = load i8, ptr %masked, align 1, !dbg !2743, !range !2520, !noundef !619
  %tobool8 = trunc i8 %9 to i1, !dbg !2743
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !2745

if.then9:                                         ; preds = %if.end7
  %10 = load ptr, ptr %idata.addr, align 8, !dbg !2746
  %chip10 = getelementptr inbounds %struct.irq_data, ptr %10, i32 0, i32 4, !dbg !2747
  %11 = load ptr, ptr %chip10, align 8, !dbg !2747
  %irq_unmask = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 8, !dbg !2748
  %12 = load ptr, ptr %irq_unmask, align 8, !dbg !2748
  %13 = load ptr, ptr %idata.addr, align 8, !dbg !2749
  call void %12(ptr noundef %13) #10, !dbg !2746
  br label %if.end11, !dbg !2746

if.end11:                                         ; preds = %if.then9, %if.end7
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2750
  br label %cleanup, !dbg !2750

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %masked) #9, !dbg !2750
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2750

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_irq_disabled(ptr noundef %d) #3 align 16 !dbg !2751 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2753, metadata !DIExpression()), !dbg !2754
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2755
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2755
  %1 = load ptr, ptr %common, align 8, !dbg !2755
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !2755
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !2755
  %and = and i32 %2, 65536, !dbg !2756
  %tobool = icmp ne i32 %and, 0, !dbg !2755
  ret i1 %tobool, !dbg !2757
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_irq_masked(ptr noundef %d) #3 align 16 !dbg !2758 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2760, metadata !DIExpression()), !dbg !2761
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2762
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2762
  %1 = load ptr, ptr %common, align 8, !dbg !2762
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !2762
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !2762
  %and = and i32 %2, 131072, !dbg !2763
  %tobool = icmp ne i32 %and, 0, !dbg !2762
  ret i1 %tobool, !dbg !2764
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_and_bit(ptr noundef %addr1, ptr noundef %addr2, i64 noundef %size) #3 align 16 !dbg !2765 {
entry:
  %retval = alloca i64, align 8
  %addr1.addr = alloca ptr, align 8
  %addr2.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr1, ptr %addr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr1.addr, metadata !2772, metadata !DIExpression()), !dbg !2778
  store ptr %addr2, ptr %addr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr2.addr, metadata !2773, metadata !DIExpression()), !dbg !2779
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2774, metadata !DIExpression()), !dbg !2780
  %0 = load i64, ptr %size.addr, align 8, !dbg !2781
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2781
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !2781

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2781
  %cmp = icmp ule i64 %2, 64, !dbg !2781
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !2781

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !2781
  %cmp2 = icmp ugt i64 %3, 0, !dbg !2781
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2782

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !2783
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2775, metadata !DIExpression()), !dbg !2784
  %4 = load ptr, ptr %addr1.addr, align 8, !dbg !2785
  %5 = load i64, ptr %4, align 8, !dbg !2786
  %6 = load ptr, ptr %addr2.addr, align 8, !dbg !2787
  %7 = load i64, ptr %6, align 8, !dbg !2788
  %and = and i64 %5, %7, !dbg !2789
  %8 = load i64, ptr %size.addr, align 8, !dbg !2790
  %sub = sub i64 %8, 1, !dbg !2790
  %sub3 = sub i64 63, %sub, !dbg !2790
  %shr = lshr i64 -1, %sub3, !dbg !2790
  %and4 = and i64 -1, %shr, !dbg !2790
  %add = add i64 0, %and4, !dbg !2790
  %and5 = and i64 %and, %add, !dbg !2791
  store i64 %and5, ptr %val, align 8, !dbg !2784
  %9 = load i64, ptr %val, align 8, !dbg !2792
  %tobool = icmp ne i64 %9, 0, !dbg !2792
  br i1 %tobool, label %cond.true, label %cond.false7, !dbg !2792

cond.true:                                        ; preds = %if.then
  %10 = load i64, ptr %val, align 8, !dbg !2793
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !2793
  br i1 %11, label %cond.true6, label %cond.false, !dbg !2793

cond.true6:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !2793
  %13 = call i64 @llvm.cttz.i64(i64 %12, i1 true), !dbg !2793
  %cast = trunc i64 %13 to i32, !dbg !2793
  %conv = sext i32 %cast to i64, !dbg !2793
  br label %cond.end, !dbg !2793

cond.false:                                       ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !2793
  %call = call i64 @variable__ffs(i64 noundef %14) #10, !dbg !2793
  br label %cond.end, !dbg !2793

cond.end:                                         ; preds = %cond.false, %cond.true6
  %cond = phi i64 [ %conv, %cond.true6 ], [ %call, %cond.false ], !dbg !2793
  br label %cond.end8, !dbg !2792

cond.false7:                                      ; preds = %if.then
  %15 = load i64, ptr %size.addr, align 8, !dbg !2794
  br label %cond.end8, !dbg !2792

cond.end8:                                        ; preds = %cond.false7, %cond.end
  %cond9 = phi i64 [ %cond, %cond.end ], [ %15, %cond.false7 ], !dbg !2792
  store i64 %cond9, ptr %retval, align 8, !dbg !2795
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !2796
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %16 = load ptr, ptr %addr1.addr, align 8, !dbg !2797
  %17 = load ptr, ptr %addr2.addr, align 8, !dbg !2798
  %18 = load i64, ptr %size.addr, align 8, !dbg !2799
  %call10 = call i64 @_find_first_and_bit(ptr noundef %16, ptr noundef %17, i64 noundef %18) #10, !dbg !2800
  store i64 %call10, ptr %retval, align 8, !dbg !2801
  br label %return, !dbg !2801

return:                                           ; preds = %if.end, %cond.end8
  %19 = load i64, ptr %retval, align 8, !dbg !2802
  ret i64 %19, !dbg !2802
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #5 align 16 !dbg !2803 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !2808, metadata !DIExpression()), !dbg !2809
  %0 = load i64, ptr %word.addr, align 8, !dbg !2810
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #11, !dbg !2811, !srcloc !2812
  store i64 %1, ptr %word.addr, align 8, !dbg !2811
  %2 = load i64, ptr %word.addr, align 8, !dbg !2813
  ret i64 %2, !dbg !2814
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2815 dso_local i64 @_find_first_and_bit(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_empty(ptr noundef %src, i32 noundef %nbits) #3 align 16 !dbg !2816 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !2821, metadata !DIExpression()), !dbg !2823
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !2822, metadata !DIExpression()), !dbg !2824
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !2825
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2825
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !2825

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !2825
  %cmp = icmp ule i32 %2, 64, !dbg !2825
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !2825

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !2825
  %cmp2 = icmp ugt i32 %3, 0, !dbg !2825
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2827

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !2828
  %5 = load i64, ptr %4, align 8, !dbg !2829
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !2830
  %sub = sub i32 0, %6, !dbg !2830
  %and = and i32 %sub, 63, !dbg !2830
  %sh_prom = zext i32 %and to i64, !dbg !2830
  %shr = lshr i64 -1, %sh_prom, !dbg !2830
  %and3 = and i64 %5, %shr, !dbg !2831
  %tobool = icmp ne i64 %and3, 0, !dbg !2832
  %lnot = xor i1 %tobool, true, !dbg !2832
  store i1 %lnot, ptr %retval, align 1, !dbg !2833
  br label %return, !dbg !2833

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !2834
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !2835
  %conv = zext i32 %8 to i64, !dbg !2835
  %call = call i64 @find_first_bit(ptr noundef %7, i64 noundef %conv) #10, !dbg !2836
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !2837
  %conv4 = zext i32 %9 to i64, !dbg !2837
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !2838
  store i1 %cmp5, ptr %retval, align 1, !dbg !2839
  br label %return, !dbg !2839

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, ptr %retval, align 1, !dbg !2840
  ret i1 %10, !dbg !2840
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #3 align 16 !dbg !2841 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2845, metadata !DIExpression()), !dbg !2850
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2846, metadata !DIExpression()), !dbg !2851
  %0 = load i64, ptr %size.addr, align 8, !dbg !2852
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2852
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !2852

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2852
  %cmp = icmp ule i64 %2, 64, !dbg !2852
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !2852

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !2852
  %cmp2 = icmp ugt i64 %3, 0, !dbg !2852
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2853

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !2854
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2847, metadata !DIExpression()), !dbg !2855
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !2856
  %5 = load i64, ptr %4, align 8, !dbg !2857
  %6 = load i64, ptr %size.addr, align 8, !dbg !2858
  %sub = sub i64 %6, 1, !dbg !2858
  %sub3 = sub i64 63, %sub, !dbg !2858
  %shr = lshr i64 -1, %sub3, !dbg !2858
  %and = and i64 -1, %shr, !dbg !2858
  %add = add i64 0, %and, !dbg !2858
  %and4 = and i64 %5, %add, !dbg !2859
  store i64 %and4, ptr %val, align 8, !dbg !2855
  %7 = load i64, ptr %val, align 8, !dbg !2860
  %tobool = icmp ne i64 %7, 0, !dbg !2860
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !2860

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !2861
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !2861
  br i1 %9, label %cond.true5, label %cond.false, !dbg !2861

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !2861
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !2861
  %cast = trunc i64 %11 to i32, !dbg !2861
  %conv = sext i32 %cast to i64, !dbg !2861
  br label %cond.end, !dbg !2861

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !2861
  %call = call i64 @variable__ffs(i64 noundef %12) #10, !dbg !2861
  br label %cond.end, !dbg !2861

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !2861
  br label %cond.end7, !dbg !2860

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !2862
  br label %cond.end7, !dbg !2860

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !2860
  store i64 %cond8, ptr %retval, align 8, !dbg !2863
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !2864
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !2865
  %15 = load i64, ptr %size.addr, align 8, !dbg !2866
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #10, !dbg !2867
  store i64 %call9, ptr %retval, align 8, !dbg !2868
  br label %return, !dbg !2868

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !2869
  ret i64 %16, !dbg !2869
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2870 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #5 align 16 !dbg !2871 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2878, metadata !DIExpression()), !dbg !2879
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2880
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #10, !dbg !2881
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2882
  %call = call i32 @raw_atomic_read(ptr noundef %1) #10, !dbg !2883
  ret i32 %call, !dbg !2884
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !2885 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2893, metadata !DIExpression()), !dbg !2895
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2894, metadata !DIExpression()), !dbg !2896
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2897
  %1 = load i64, ptr %size.addr, align 8, !dbg !2898
  %conv = trunc i64 %1 to i32, !dbg !2898
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #10, !dbg !2899
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2900
  %3 = load i64, ptr %size.addr, align 8, !dbg !2900
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #10, !dbg !2900
  ret void, !dbg !2901
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #5 align 16 !dbg !2902 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2905, metadata !DIExpression()), !dbg !2906
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2907
  %call = call i32 @arch_atomic_read(ptr noundef %0) #10, !dbg !2908
  ret i32 %call, !dbg !2909
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !2910 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2915, metadata !DIExpression()), !dbg !2917
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2916, metadata !DIExpression()), !dbg !2918
  ret i1 true, !dbg !2919
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !2920 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2925, metadata !DIExpression()), !dbg !2928
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2926, metadata !DIExpression()), !dbg !2929
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2927, metadata !DIExpression()), !dbg !2930
  ret void, !dbg !2931
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #5 align 16 !dbg !2932 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2935, metadata !DIExpression()), !dbg !2936
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2937
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !2937
  %1 = load volatile i32, ptr %counter, align 4, !dbg !2937
  ret i32 %1, !dbg !2938
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_zero(ptr noundef %dst, i32 noundef %nbits) #3 align 16 !dbg !2939 {
entry:
  %dst.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2943, metadata !DIExpression()), !dbg !2946
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #9, !dbg !2948
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2945, metadata !DIExpression()), !dbg !2949
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !2950
  %add = add i32 %0, 63, !dbg !2950
  %and = and i32 %add, -64, !dbg !2950
  %div = udiv i32 %and, 8, !dbg !2950
  store i32 %div, ptr %len, align 4, !dbg !2949
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !2951
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !2951
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !2951

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !2951
  %cmp = icmp ule i32 %3, 64, !dbg !2951
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !2951

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !2951
  %cmp2 = icmp ugt i32 %4, 0, !dbg !2951
  br i1 %cmp2, label %if.then, label %if.else, !dbg !2953

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !2954
  store i64 0, ptr %5, align 8, !dbg !2955
  br label %if.end, !dbg !2956

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !2957
  %7 = load i32, ptr %len, align 4, !dbg !2958
  %conv = zext i32 %7 to i64, !dbg !2958
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %conv, i1 false), !dbg !2959
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #9, !dbg !2960
  ret void, !dbg !2960
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { nounwind memory(read) }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489}
!llvm.ident = !{!2490}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/irq/migration.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d3151821cf78a4392ef121aef4cef65b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/irq/.migration.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/irq/migration\22 -D KBUILD_BASENAME=\22migration\22 -D KBUILD_MODNAME=\22migration\22 -D __KBUILD_MODNAME=kmod_migration -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/irq/migration.ll kernel/irq/migration.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !86, globals: !2481, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9, !17, !23, !28, !34, !41, !47, !54, !59}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !10, line: 497, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14, !15, !16}
!13 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0)
!14 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1)
!15 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2)
!16 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !18, line: 11, baseType: !11, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!21 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!22 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !24, line: 65, baseType: !11, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!27 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !29, line: 16, baseType: !11, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "TT_NONE", value: 0)
!32 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!33 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !35, line: 51, baseType: !11, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!36 = !{!37, !38, !39, !40}
!37 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!38 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!39 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!40 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !42, line: 26, baseType: !11, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!43 = !{!44, !45, !46}
!44 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!45 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!46 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !48, line: 312, baseType: !11, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!49 = !{!50, !51, !52, !53}
!50 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!51 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!52 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!53 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !55, line: 10, baseType: !11, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "false", value: 0)
!58 = !DIEnumerator(name: "true", value: 1)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !60, line: 227, baseType: !11, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce91671074049198389009db13b88160")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!62 = !DIEnumerator(name: "IRQD_TRIGGER_MASK", value: 15)
!63 = !DIEnumerator(name: "IRQD_SETAFFINITY_PENDING", value: 256)
!64 = !DIEnumerator(name: "IRQD_ACTIVATED", value: 512)
!65 = !DIEnumerator(name: "IRQD_NO_BALANCING", value: 1024)
!66 = !DIEnumerator(name: "IRQD_PER_CPU", value: 2048)
!67 = !DIEnumerator(name: "IRQD_AFFINITY_SET", value: 4096)
!68 = !DIEnumerator(name: "IRQD_LEVEL", value: 8192)
!69 = !DIEnumerator(name: "IRQD_WAKEUP_STATE", value: 16384)
!70 = !DIEnumerator(name: "IRQD_MOVE_PCNTXT", value: 32768)
!71 = !DIEnumerator(name: "IRQD_IRQ_DISABLED", value: 65536)
!72 = !DIEnumerator(name: "IRQD_IRQ_MASKED", value: 131072)
!73 = !DIEnumerator(name: "IRQD_IRQ_INPROGRESS", value: 262144)
!74 = !DIEnumerator(name: "IRQD_WAKEUP_ARMED", value: 524288)
!75 = !DIEnumerator(name: "IRQD_FORWARDED_TO_VCPU", value: 1048576)
!76 = !DIEnumerator(name: "IRQD_AFFINITY_MANAGED", value: 2097152)
!77 = !DIEnumerator(name: "IRQD_IRQ_STARTED", value: 4194304)
!78 = !DIEnumerator(name: "IRQD_MANAGED_SHUTDOWN", value: 8388608)
!79 = !DIEnumerator(name: "IRQD_SINGLE_TARGET", value: 16777216)
!80 = !DIEnumerator(name: "IRQD_DEFAULT_TRIGGER_SET", value: 33554432)
!81 = !DIEnumerator(name: "IRQD_CAN_RESERVE", value: 67108864)
!82 = !DIEnumerator(name: "IRQD_HANDLE_ENFORCE_IRQCTX", value: 134217728)
!83 = !DIEnumerator(name: "IRQD_AFFINITY_ON_ACTIVATE", value: 268435456)
!84 = !DIEnumerator(name: "IRQD_IRQ_ENABLED_ON_SUSPEND", value: 536870912)
!85 = !DIEnumerator(name: "IRQD_RESEND_WHEN_IN_PROGRESS", value: 1073741824)
!86 = !{!87, !11, !97, !94, !98, !99, !2478}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !90, line: 19, size: 64, elements: !91)
!90 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !89, file: !90, line: 19, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !95)
!94 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!95 = !{!96}
!96 = !DISubrange(count: 1)
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !101, line: 55, size: 3584, align: 512, elements: !102)
!101 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "435ffcdb49377a4c91932ebe21d66dca")
!102 = !{!103, !116, !218, !220, !226, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1755, !1756, !1757, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !2123, !2124, !2125, !2476, !2477}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !100, file: !101, line: 56, baseType: !104, size: 320)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !60, line: 147, size: 320, elements: !105)
!105 = !{!106, !107, !108, !109, !112, !115}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !104, file: !60, line: 148, baseType: !11, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !104, file: !60, line: 150, baseType: !11, size: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !104, file: !60, line: 152, baseType: !98, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !104, file: !60, line: 153, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !60, line: 129, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !104, file: !60, line: 155, baseType: !113, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !90, line: 913, baseType: !114)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 64, elements: !95)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "effective_affinity", scope: !104, file: !60, line: 158, baseType: !113, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !100, file: !101, line: 57, baseType: !117, size: 448, offset: 320)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !60, line: 179, size: 448, elements: !118)
!118 = !{!119, !124, !125, !126, !128, !212, !216, !217}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !117, file: !60, line: 180, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !121, line: 21, baseType: !122)
!121 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !123, line: 27, baseType: !11)
!123 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!124 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !117, file: !60, line: 181, baseType: !11, size: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !117, file: !60, line: 182, baseType: !94, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !117, file: !60, line: 183, baseType: !127, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !117, file: !60, line: 184, baseType: !129, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !60, line: 501, size: 2112, elements: !131)
!131 = !{!132, !135, !140, !144, !145, !146, !147, !148, !149, !150, !151, !158, !162, !166, !167, !168, !169, !170, !171, !172, !173, !179, !180, !181, !187, !188, !193, !197, !201, !205, !209, !210, !211}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !60, line: 502, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !130, file: !60, line: 503, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!11, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !130, file: !60, line: 504, baseType: !141, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !139}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !130, file: !60, line: 505, baseType: !141, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !130, file: !60, line: 506, baseType: !141, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !130, file: !60, line: 508, baseType: !141, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !130, file: !60, line: 509, baseType: !141, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !130, file: !60, line: 510, baseType: !141, size: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !130, file: !60, line: 511, baseType: !141, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !130, file: !60, line: 512, baseType: !141, size: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !130, file: !60, line: 514, baseType: !152, size: 64, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!97, !139, !87, !155}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !156, line: 35, baseType: !157)
!156 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!157 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !130, file: !60, line: 515, baseType: !159, size: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!97, !139}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !130, file: !60, line: 516, baseType: !163, size: 64, offset: 768)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!97, !139, !11}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !130, file: !60, line: 517, baseType: !163, size: 64, offset: 832)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !130, file: !60, line: 519, baseType: !141, size: 64, offset: 896)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !130, file: !60, line: 520, baseType: !141, size: 64, offset: 960)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !130, file: !60, line: 526, baseType: !141, size: 64, offset: 1024)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !130, file: !60, line: 527, baseType: !141, size: 64, offset: 1088)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !130, file: !60, line: 528, baseType: !141, size: 64, offset: 1152)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !130, file: !60, line: 530, baseType: !141, size: 64, offset: 1216)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !130, file: !60, line: 532, baseType: !174, size: 64, offset: 1280)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !139, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !60, line: 27, flags: DIFlagFwdDecl)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !130, file: !60, line: 533, baseType: !159, size: 64, offset: 1344)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !130, file: !60, line: 534, baseType: !141, size: 64, offset: 1408)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !130, file: !60, line: 536, baseType: !182, size: 64, offset: 1472)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !139, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !60, line: 29, flags: DIFlagFwdDecl)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !130, file: !60, line: 537, baseType: !182, size: 64, offset: 1536)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !130, file: !60, line: 539, baseType: !189, size: 64, offset: 1600)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!97, !139, !9, !192}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !130, file: !60, line: 540, baseType: !194, size: 64, offset: 1664)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!97, !139, !9, !155}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !130, file: !60, line: 542, baseType: !198, size: 64, offset: 1728)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!97, !139, !98}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !130, file: !60, line: 544, baseType: !202, size: 64, offset: 1792)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !139, !11}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !130, file: !60, line: 545, baseType: !206, size: 64, offset: 1856)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !139, !87}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !130, file: !60, line: 547, baseType: !159, size: 64, offset: 1920)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !130, file: !60, line: 548, baseType: !141, size: 64, offset: 1984)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !60, line: 550, baseType: !94, size: 64, offset: 2048)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !117, file: !60, line: 185, baseType: !213, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !215, line: 13, flags: DIFlagFwdDecl)
!215 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !117, file: !60, line: 187, baseType: !139, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !117, file: !60, line: 189, baseType: !98, size: 64, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !100, file: !101, line: 58, baseType: !219, size: 64, offset: 768)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !100, file: !101, line: 59, baseType: !221, size: 64, offset: 832)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !222, line: 12, baseType: !223)
!222 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !99}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !100, file: !101, line: 60, baseType: !227, size: 64, offset: 896)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !10, line: 118, size: 1024, align: 512, elements: !229)
!229 = !{!230, !236, !237, !238, !239, !240, !1733, !1734, !1735, !1736, !1737, !1738, !1739}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !228, file: !10, line: 119, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !10, line: 100, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !97, !98}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !18, line: 17, baseType: !17)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !228, file: !10, line: 120, baseType: !98, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !228, file: !10, line: 121, baseType: !98, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !10, line: 122, baseType: !227, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !228, file: !10, line: 123, baseType: !231, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !228, file: !10, line: 124, baseType: !241, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !243, line: 746, size: 58368, elements: !244)
!243 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!244 = !{!245, !253, !254, !255, !265, !266, !267, !268, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !360, !371, !498, !502, !505, !536, !537, !538, !539, !543, !545, !546, !547, !548, !549, !550, !561, !562, !565, !566, !567, !568, !569, !570, !571, !572, !579, !580, !587, !588, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !890, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !946, !948, !949, !950, !962, !964, !965, !966, !967, !968, !969, !975, !976, !977, !978, !979, !980, !981, !995, !1001, !1005, !1006, !1007, !1010, !1014, !1017, !1024, !1029, !1032, !1035, !1038, !1041, !1044, !1047, !1053, !1054, !1055, !1061, !1062, !1066, !1067, !1068, !1071, !1079, !1080, !1089, !1098, !1099, !1100, !1101, !1102, !1107, !1108, !1109, !1112, !1113, !1116, !1119, !1122, !1125, !1128, !1129, !1216, !1227, !1228, !1229, !1230, !1236, !1241, !1242, !1243, !1246, !1247, !1250, !1253, !1254, !1257, !1258, !1259, !1262, !1263, !1264, !1267, !1268, !1269, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1301, !1304, !1372, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1384, !1456, !1458, !1459, !1460, !1461, !1462, !1474, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1504, !1505, !1506}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !242, file: !243, line: 752, baseType: !246, size: 192)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !247, line: 56, size: 192, elements: !248)
!247 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!248 = !{!249, !250, !251, !252}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !246, file: !247, line: 57, baseType: !94, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !246, file: !247, line: 58, baseType: !94, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !246, file: !247, line: 59, baseType: !120, size: 32, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !246, file: !247, line: 61, baseType: !120, size: 32, offset: 160)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !242, file: !243, line: 754, baseType: !11, size: 32, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !242, file: !243, line: 767, baseType: !98, size: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !242, file: !243, line: 768, baseType: !256, size: 32, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !257, line: 113, baseType: !258)
!257 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !257, line: 111, size: 32, elements: !259)
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !258, file: !257, line: 112, baseType: !261, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !156, line: 174, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !156, line: 172, size: 32, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !262, file: !156, line: 173, baseType: !97, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !242, file: !243, line: 770, baseType: !11, size: 32, offset: 352)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !242, file: !243, line: 771, baseType: !11, size: 32, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !242, file: !243, line: 774, baseType: !97, size: 32, offset: 416)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !242, file: !243, line: 775, baseType: !269, size: 128, offset: 448)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !270, line: 58, size: 128, elements: !271)
!270 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!271 = !{!272, !278, !283, !287}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !269, file: !270, line: 59, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !274, line: 60, size: 64, elements: !275)
!274 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !274, line: 61, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !270, line: 60, baseType: !279, size: 32, offset: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !270, line: 60, size: 32, elements: !280)
!280 = !{!281, !282}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !279, file: !270, line: 61, baseType: !11, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !279, file: !270, line: 62, baseType: !261, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !269, file: !270, line: 65, baseType: !284, size: 16, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !121, line: 19, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !123, line: 24, baseType: !286)
!286 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !269, file: !270, line: 65, baseType: !284, size: 16, offset: 112)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !242, file: !243, line: 776, baseType: !11, size: 32, offset: 576)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !242, file: !243, line: 777, baseType: !94, size: 64, offset: 640)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !242, file: !243, line: 778, baseType: !241, size: 64, offset: 704)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !242, file: !243, line: 787, baseType: !97, size: 32, offset: 768)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !242, file: !243, line: 788, baseType: !97, size: 32, offset: 800)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !242, file: !243, line: 790, baseType: !97, size: 32, offset: 832)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !242, file: !243, line: 792, baseType: !97, size: 32, offset: 864)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !242, file: !243, line: 793, baseType: !97, size: 32, offset: 896)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !242, file: !243, line: 794, baseType: !97, size: 32, offset: 928)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !242, file: !243, line: 795, baseType: !11, size: 32, offset: 960)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !242, file: !243, line: 797, baseType: !299, size: 2048, offset: 1024)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !243, line: 551, size: 2048, elements: !300)
!300 = !{!301, !306, !314, !318, !319, !325, !326, !327, !328, !329, !330, !334, !335, !336, !337, !339, !342, !343, !344}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !299, file: !243, line: 553, baseType: !302, size: 128)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !243, line: 411, size: 128, elements: !303)
!303 = !{!304, !305}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !302, file: !243, line: 412, baseType: !94, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !302, file: !243, line: 413, baseType: !120, size: 32, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !299, file: !243, line: 554, baseType: !307, size: 192, align: 64, offset: 128)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !308, line: 5, size: 192, align: 64, elements: !309)
!308 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!309 = !{!310, !311, !313}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !307, file: !308, line: 6, baseType: !94, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !307, file: !308, line: 7, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !307, file: !308, line: 8, baseType: !312, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !299, file: !243, line: 555, baseType: !315, size: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !121, line: 23, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !123, line: 31, baseType: !317)
!317 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !299, file: !243, line: 556, baseType: !315, size: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !299, file: !243, line: 558, baseType: !320, size: 128, offset: 448)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !156, line: 190, size: 128, elements: !321)
!321 = !{!322, !324}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !156, line: 191, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !320, file: !156, line: 191, baseType: !323, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !299, file: !243, line: 559, baseType: !11, size: 32, offset: 576)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !299, file: !243, line: 561, baseType: !315, size: 64, offset: 640)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !299, file: !243, line: 562, baseType: !315, size: 64, offset: 704)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !299, file: !243, line: 563, baseType: !315, size: 64, offset: 768)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !299, file: !243, line: 564, baseType: !315, size: 64, offset: 832)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !299, file: !243, line: 565, baseType: !331, size: 64, offset: 896)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !121, line: 22, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !123, line: 30, baseType: !333)
!333 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !299, file: !243, line: 566, baseType: !315, size: 64, offset: 960)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !299, file: !243, line: 568, baseType: !315, size: 64, offset: 1024)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !299, file: !243, line: 571, baseType: !97, size: 32, offset: 1088)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !299, file: !243, line: 572, baseType: !338, size: 64, offset: 1152)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !299, file: !243, line: 574, baseType: !340, size: 64, offset: 1216)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !243, line: 49, flags: DIFlagFwdDecl)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !299, file: !243, line: 576, baseType: !340, size: 64, offset: 1280)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !299, file: !243, line: 578, baseType: !94, size: 64, offset: 1344)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !299, file: !243, line: 588, baseType: !345, size: 512, align: 512, offset: 1536)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !243, line: 497, size: 512, align: 512, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !345, file: !243, line: 498, baseType: !315, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !345, file: !243, line: 499, baseType: !315, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !345, file: !243, line: 500, baseType: !315, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !345, file: !243, line: 501, baseType: !120, size: 32, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !345, file: !243, line: 502, baseType: !120, size: 32, offset: 224)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !345, file: !243, line: 503, baseType: !94, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !345, file: !243, line: 504, baseType: !94, size: 64, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !345, file: !243, line: 505, baseType: !94, size: 64, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !345, file: !243, line: 506, baseType: !356, size: 64, align: 64, offset: 448)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !243, line: 445, size: 64, align: 64, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !356, file: !243, line: 446, baseType: !11, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !356, file: !243, line: 447, baseType: !11, size: 32, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !242, file: !243, line: 798, baseType: !361, size: 384, offset: 3072)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !243, line: 592, size: 384, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !361, file: !243, line: 593, baseType: !320, size: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !361, file: !243, line: 594, baseType: !94, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !361, file: !243, line: 595, baseType: !94, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !361, file: !243, line: 596, baseType: !11, size: 32, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !361, file: !243, line: 597, baseType: !286, size: 16, offset: 288)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !361, file: !243, line: 598, baseType: !286, size: 16, offset: 304)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !361, file: !243, line: 600, baseType: !370, size: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !242, file: !243, line: 799, baseType: !372, size: 1792, offset: 3456)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !243, line: 610, size: 1792, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !495, !496}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !372, file: !243, line: 611, baseType: !307, size: 192, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !372, file: !243, line: 618, baseType: !315, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !372, file: !243, line: 619, baseType: !315, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !372, file: !243, line: 620, baseType: !315, size: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !372, file: !243, line: 621, baseType: !315, size: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !372, file: !243, line: 622, baseType: !315, size: 64, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !372, file: !243, line: 629, baseType: !331, size: 64, offset: 512)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !372, file: !243, line: 630, baseType: !315, size: 64, offset: 576)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !372, file: !243, line: 631, baseType: !11, size: 32, offset: 640)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !372, file: !243, line: 653, baseType: !11, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !372, file: !243, line: 654, baseType: !11, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !372, file: !243, line: 655, baseType: !11, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !372, file: !243, line: 656, baseType: !11, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !372, file: !243, line: 662, baseType: !388, size: 512, offset: 704)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !24, line: 118, size: 512, elements: !389)
!389 = !{!390, !398, !399, !404, !491, !492, !493, !494}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !388, file: !24, line: 119, baseType: !391, size: 256)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !392, line: 9, size: 256, elements: !393)
!392 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !391, file: !392, line: 10, baseType: !307, size: 192, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !391, file: !392, line: 11, baseType: !396, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !397, line: 29, baseType: !331)
!397 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !388, file: !24, line: 120, baseType: !396, size: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !388, file: !24, line: 121, baseType: !400, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!23, !403}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !388, file: !24, line: 122, baseType: !405, size: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !24, line: 159, size: 512, align: 512, elements: !407)
!407 = !{!408, !459, !460, !464, !474, !475, !486, !490}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !406, file: !24, line: 160, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !24, line: 215, size: 4608, align: 512, elements: !411)
!411 = !{!412, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !410, file: !24, line: 216, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !414, line: 23, baseType: !415)
!414 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !414, line: 14, size: 32, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !415, file: !414, line: 15, baseType: !418, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !419, line: 44, baseType: !420)
!419 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !419, line: 14, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !419, line: 15, baseType: !423, size: 32)
!423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !419, line: 15, size: 32, elements: !424)
!424 = !{!425, !426, !434}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !423, file: !419, line: 16, baseType: !261, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !419, line: 24, baseType: !427, size: 16)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !423, file: !419, line: 24, size: 16, elements: !428)
!428 = !{!429, !433}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !427, file: !419, line: 25, baseType: !430, size: 8)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !121, line: 17, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !123, line: 21, baseType: !432)
!432 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !427, file: !419, line: 26, baseType: !430, size: 8, offset: 8)
!434 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !419, line: 28, baseType: !435, size: 32)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !423, file: !419, line: 28, size: 32, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !435, file: !419, line: 29, baseType: !284, size: 16)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !435, file: !419, line: 30, baseType: !284, size: 16, offset: 16)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !410, file: !24, line: 217, baseType: !11, size: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !410, file: !24, line: 218, baseType: !11, size: 32, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !410, file: !24, line: 219, baseType: !11, size: 32, offset: 96)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !410, file: !24, line: 220, baseType: !11, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !410, file: !24, line: 221, baseType: !11, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !410, file: !24, line: 222, baseType: !11, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !410, file: !24, line: 223, baseType: !11, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !410, file: !24, line: 224, baseType: !11, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !410, file: !24, line: 226, baseType: !11, size: 32, offset: 160)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !410, file: !24, line: 227, baseType: !286, size: 16, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !410, file: !24, line: 228, baseType: !286, size: 16, offset: 208)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !410, file: !24, line: 229, baseType: !11, size: 32, offset: 224)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !410, file: !24, line: 235, baseType: !396, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !410, file: !24, line: 236, baseType: !403, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !410, file: !24, line: 237, baseType: !396, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !410, file: !24, line: 238, baseType: !403, size: 64, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !410, file: !24, line: 239, baseType: !456, size: 4096, align: 512, offset: 512)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 4096, align: 512, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 8)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !406, file: !24, line: 161, baseType: !11, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !406, file: !24, line: 162, baseType: !461, size: 32, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !156, line: 32, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !463, line: 96, baseType: !97)
!463 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!464 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !406, file: !24, line: 163, baseType: !465, size: 32, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !466, line: 274, baseType: !467)
!466 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !466, line: 274, size: 32, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !467, file: !466, line: 274, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !466, line: 69, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !466, line: 64, size: 32, elements: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !471, file: !466, line: 65, baseType: !11, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !406, file: !24, line: 164, baseType: !403, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !406, file: !24, line: 165, baseType: !476, size: 128, offset: 256)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !392, line: 14, size: 128, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !476, file: !392, line: 15, baseType: !479, size: 128)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !308, line: 26, size: 128, elements: !480)
!480 = !{!481, !485}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !479, file: !308, line: 27, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !308, line: 12, size: 64, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !482, file: !308, line: 13, baseType: !312, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !479, file: !308, line: 28, baseType: !312, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !406, file: !24, line: 166, baseType: !487, size: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!396}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !406, file: !24, line: 167, baseType: !396, size: 64, offset: 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !388, file: !24, line: 123, baseType: !430, size: 8, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !388, file: !24, line: 124, baseType: !430, size: 8, offset: 456)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !388, file: !24, line: 125, baseType: !430, size: 8, offset: 464)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !388, file: !24, line: 126, baseType: !430, size: 8, offset: 472)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !372, file: !243, line: 671, baseType: !388, size: 512, offset: 1216)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !372, file: !243, line: 679, baseType: !497, size: 64, offset: 1728)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !242, file: !243, line: 800, baseType: !499, size: 64, offset: 5248)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !243, line: 800, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !242, file: !243, line: 809, baseType: !503, size: 64, offset: 5312)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !243, line: 70, flags: DIFlagFwdDecl)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !242, file: !243, line: 825, baseType: !506, size: 2048, align: 512, offset: 5632)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !243, line: 509, size: 2048, align: 512, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !506, file: !243, line: 511, baseType: !315, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !506, file: !243, line: 512, baseType: !315, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !506, file: !243, line: 513, baseType: !315, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !506, file: !243, line: 514, baseType: !315, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !506, file: !243, line: 515, baseType: !315, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !506, file: !243, line: 516, baseType: !315, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !506, file: !243, line: 518, baseType: !315, size: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !506, file: !243, line: 519, baseType: !315, size: 64, offset: 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !506, file: !243, line: 520, baseType: !331, size: 64, offset: 512)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !506, file: !243, line: 522, baseType: !315, size: 64, offset: 576)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !506, file: !243, line: 523, baseType: !315, size: 64, offset: 640)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !506, file: !243, line: 524, baseType: !331, size: 64, offset: 704)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !506, file: !243, line: 526, baseType: !331, size: 64, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !506, file: !243, line: 527, baseType: !315, size: 64, offset: 832)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !506, file: !243, line: 529, baseType: !315, size: 64, offset: 896)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !506, file: !243, line: 530, baseType: !315, size: 64, offset: 960)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !506, file: !243, line: 531, baseType: !315, size: 64, offset: 1024)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !506, file: !243, line: 532, baseType: !315, size: 64, offset: 1088)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !506, file: !243, line: 533, baseType: !315, size: 64, offset: 1152)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !506, file: !243, line: 535, baseType: !315, size: 64, offset: 1216)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !506, file: !243, line: 536, baseType: !315, size: 64, offset: 1280)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !506, file: !243, line: 537, baseType: !315, size: 64, offset: 1344)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !506, file: !243, line: 538, baseType: !315, size: 64, offset: 1408)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !506, file: !243, line: 539, baseType: !315, size: 64, offset: 1472)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !506, file: !243, line: 540, baseType: !315, size: 64, offset: 1536)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !506, file: !243, line: 541, baseType: !315, size: 64, offset: 1600)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !506, file: !243, line: 542, baseType: !315, size: 64, offset: 1664)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !506, file: !243, line: 543, baseType: !315, size: 64, offset: 1728)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !242, file: !243, line: 833, baseType: !11, size: 32, offset: 7680)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !242, file: !243, line: 836, baseType: !11, size: 32, offset: 7712)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !242, file: !243, line: 837, baseType: !97, size: 32, offset: 7744)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !242, file: !243, line: 838, baseType: !540, size: 64, offset: 7808)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !90, line: 19, baseType: !89)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !242, file: !243, line: 839, baseType: !544, size: 64, offset: 7872)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !242, file: !243, line: 840, baseType: !542, size: 64, offset: 7936)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !242, file: !243, line: 841, baseType: !98, size: 64, offset: 8000)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !242, file: !243, line: 843, baseType: !286, size: 16, offset: 8064)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !242, file: !243, line: 845, baseType: !286, size: 16, offset: 8080)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !242, file: !243, line: 848, baseType: !97, size: 32, offset: 8096)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !242, file: !243, line: 849, baseType: !551, size: 32, offset: 8128)
!551 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !243, line: 718, size: 32, elements: !552)
!552 = !{!553, !560}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !551, file: !243, line: 724, baseType: !554, size: 32)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !551, file: !243, line: 719, size: 32, elements: !555)
!555 = !{!556, !557, !558, !559}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !554, file: !243, line: 720, baseType: !430, size: 8)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !554, file: !243, line: 721, baseType: !430, size: 8, offset: 8)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !554, file: !243, line: 722, baseType: !430, size: 8, offset: 16)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !554, file: !243, line: 723, baseType: !430, size: 8, offset: 24)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !551, file: !243, line: 725, baseType: !120, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !242, file: !243, line: 850, baseType: !320, size: 128, offset: 8192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !242, file: !243, line: 851, baseType: !563, size: 64, offset: 8320)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !243, line: 60, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !242, file: !243, line: 855, baseType: !94, size: 64, offset: 8384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !242, file: !243, line: 856, baseType: !430, size: 8, offset: 8448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !242, file: !243, line: 857, baseType: !430, size: 8, offset: 8456)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !242, file: !243, line: 858, baseType: !97, size: 32, offset: 8480)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !242, file: !243, line: 859, baseType: !320, size: 128, offset: 8512)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !242, file: !243, line: 860, baseType: !97, size: 32, offset: 8640)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !242, file: !243, line: 861, baseType: !320, size: 128, offset: 8704)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !242, file: !243, line: 873, baseType: !573, size: 256, offset: 8832)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !243, line: 376, size: 256, elements: !574)
!574 = !{!575, !576, !577, !578}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !573, file: !243, line: 381, baseType: !94, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !573, file: !243, line: 384, baseType: !317, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !573, file: !243, line: 389, baseType: !317, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !573, file: !243, line: 392, baseType: !317, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !242, file: !243, line: 875, baseType: !320, size: 128, offset: 9088)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !242, file: !243, line: 877, baseType: !581, size: 320, offset: 9216)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !582, line: 86, size: 320, elements: !583)
!582 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!583 = !{!584, !585, !586}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !581, file: !582, line: 87, baseType: !97, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !581, file: !582, line: 88, baseType: !320, size: 128, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !581, file: !582, line: 89, baseType: !320, size: 128, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !242, file: !243, line: 878, baseType: !307, size: 192, align: 64, offset: 9536)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !242, file: !243, line: 881, baseType: !589, size: 64, offset: 9728)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !591, line: 733, size: 10240, elements: !592)
!591 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!592 = !{!593, !807}
!593 = !DIDerivedType(tag: DW_TAG_member, scope: !590, file: !591, line: 734, baseType: !594, size: 10240)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !590, file: !591, line: 734, size: 10240, elements: !595)
!595 = !{!596, !600, !622, !629, !630, !631, !632, !633, !634, !642, !643, !644, !650, !651, !658, !659, !660, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !701, !715, !718, !774, !775, !776, !779, !782, !783, !786, !787, !788, !794, !795}
!596 = !DIDerivedType(tag: DW_TAG_member, scope: !594, file: !591, line: 739, baseType: !597, size: 512, align: 512)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !594, file: !591, line: 739, size: 512, align: 512, elements: !598)
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !597, file: !591, line: 747, baseType: !261, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !594, file: !591, line: 750, baseType: !601, size: 128, offset: 512)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !602, line: 218, size: 128, elements: !603)
!602 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!603 = !{!604, !620, !621}
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !602, line: 219, baseType: !605, size: 32)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !601, file: !602, line: 219, size: 32, elements: !606)
!606 = !{!607, !616}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !605, file: !602, line: 220, baseType: !608, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !609, line: 29, baseType: !610)
!609 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !609, line: 17, size: 32, elements: !611)
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !609, line: 18, baseType: !613, size: 32)
!613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !609, line: 18, size: 32, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !613, file: !609, line: 19, baseType: !415, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !605, file: !602, line: 221, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !602, line: 197, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 197, elements: !619)
!619 = !{}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !601, file: !602, line: 223, baseType: !11, size: 32, offset: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !601, file: !602, line: 224, baseType: !98, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !594, file: !591, line: 752, baseType: !623, size: 64, offset: 640)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!94, !626, !94, !94, !94, !94}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !628, line: 537, flags: DIFlagFwdDecl)
!628 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !594, file: !591, line: 756, baseType: !94, size: 64, offset: 704)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !594, file: !591, line: 757, baseType: !94, size: 64, offset: 768)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !594, file: !591, line: 760, baseType: !94, size: 64, offset: 832)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !594, file: !591, line: 761, baseType: !94, size: 64, offset: 896)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !594, file: !591, line: 763, baseType: !94, size: 64, offset: 960)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !594, file: !591, line: 764, baseType: !635, size: 64, offset: 1024)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !628, line: 299, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !628, line: 299, size: 64, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !637, file: !628, line: 299, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !641, line: 18, baseType: !94)
!641 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!642 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !594, file: !591, line: 773, baseType: !261, size: 32, offset: 1088)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !594, file: !591, line: 785, baseType: !261, size: 32, offset: 1120)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !594, file: !591, line: 795, baseType: !645, size: 64, offset: 1152)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !591, line: 726, size: 128, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !646, file: !591, line: 727, baseType: !315, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !646, file: !591, line: 728, baseType: !97, size: 32, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !594, file: !591, line: 801, baseType: !94, size: 64, offset: 1216)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !594, file: !591, line: 804, baseType: !652, size: 64, offset: 1280)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !653, line: 13, baseType: !654)
!653 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !156, line: 181, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !156, line: 179, size: 64, elements: !656)
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !655, file: !156, line: 180, baseType: !331, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !594, file: !591, line: 806, baseType: !97, size: 32, offset: 1344)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !594, file: !591, line: 808, baseType: !608, size: 32, offset: 1376)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !594, file: !591, line: 823, baseType: !661, size: 320, offset: 1408)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !662, line: 48, size: 320, elements: !663)
!662 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!663 = !{!664, !665, !666, !671, !672}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !661, file: !662, line: 49, baseType: !652, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !661, file: !662, line: 55, baseType: !652, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !661, file: !662, line: 57, baseType: !667, size: 32, offset: 128)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !668, line: 15, size: 32, elements: !669)
!668 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !667, file: !668, line: 20, baseType: !261, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !661, file: !662, line: 59, baseType: !413, size: 32, offset: 160)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !661, file: !662, line: 60, baseType: !320, size: 128, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !594, file: !591, line: 825, baseType: !320, size: 128, offset: 1728)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !594, file: !591, line: 845, baseType: !97, size: 32, offset: 1856)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !594, file: !591, line: 849, baseType: !94, size: 64, offset: 1920)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !594, file: !591, line: 850, baseType: !94, size: 64, offset: 1984)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !594, file: !591, line: 852, baseType: !94, size: 64, offset: 2048)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !594, file: !591, line: 853, baseType: !94, size: 64, offset: 2112)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !594, file: !591, line: 854, baseType: !654, size: 64, offset: 2176)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !594, file: !591, line: 855, baseType: !94, size: 64, offset: 2240)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !594, file: !591, line: 856, baseType: !94, size: 64, offset: 2304)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !594, file: !591, line: 857, baseType: !94, size: 64, offset: 2368)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !594, file: !591, line: 858, baseType: !94, size: 64, offset: 2432)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !594, file: !591, line: 865, baseType: !470, size: 32, offset: 2496)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !594, file: !591, line: 867, baseType: !608, size: 32, offset: 2528)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !594, file: !591, line: 869, baseType: !94, size: 64, offset: 2560)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !594, file: !591, line: 869, baseType: !94, size: 64, offset: 2624)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !594, file: !591, line: 869, baseType: !94, size: 64, offset: 2688)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !594, file: !591, line: 869, baseType: !94, size: 64, offset: 2752)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !594, file: !591, line: 870, baseType: !94, size: 64, offset: 2816)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !594, file: !591, line: 870, baseType: !94, size: 64, offset: 2880)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !594, file: !591, line: 870, baseType: !94, size: 64, offset: 2944)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !594, file: !591, line: 871, baseType: !94, size: 64, offset: 3008)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !594, file: !591, line: 871, baseType: !94, size: 64, offset: 3072)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !594, file: !591, line: 871, baseType: !94, size: 64, offset: 3136)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !594, file: !591, line: 871, baseType: !94, size: 64, offset: 3200)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !594, file: !591, line: 873, baseType: !698, size: 3328, offset: 3264)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 3328, elements: !699)
!699 = !{!700}
!700 = !DISubrange(count: 52)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !594, file: !591, line: 875, baseType: !702, size: 1280, offset: 6592)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !703, size: 1280, elements: !713)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !704, line: 22, size: 320, elements: !705)
!704 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!705 = !{!706, !707, !708, !709}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !703, file: !704, line: 23, baseType: !413, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !703, file: !704, line: 24, baseType: !331, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !703, file: !704, line: 26, baseType: !320, size: 128, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !703, file: !704, line: 28, baseType: !710, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !121, line: 20, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !123, line: 26, baseType: !97)
!713 = !{!714}
!714 = !DISubrange(count: 4)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !594, file: !591, line: 877, baseType: !716, size: 64, offset: 7872)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !591, line: 877, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !594, file: !591, line: 880, baseType: !719, size: 1088, offset: 7936)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !720, line: 72, baseType: !721)
!720 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !720, line: 23, size: 1088, elements: !722)
!722 = !{!723, !724, !725, !726, !727, !730, !731, !739, !740, !768, !769, !770}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !721, file: !720, line: 28, baseType: !315, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !721, file: !720, line: 38, baseType: !654, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !721, file: !720, line: 40, baseType: !94, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !721, file: !720, line: 43, baseType: !661, size: 320, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !721, file: !720, line: 44, baseType: !728, size: 64, offset: 512)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !720, line: 44, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !720, line: 48, baseType: !94, size: 64, offset: 576)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !721, file: !720, line: 59, baseType: !732, size: 256, offset: 640)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !733, line: 66, size: 256, elements: !734)
!733 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!734 = !{!735, !736, !737, !738}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !732, file: !733, line: 67, baseType: !652, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !732, file: !733, line: 68, baseType: !413, size: 32, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !732, file: !733, line: 70, baseType: !667, size: 32, offset: 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !732, file: !733, line: 72, baseType: !320, size: 128, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !721, file: !720, line: 60, baseType: !98, size: 64, offset: 896)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !721, file: !720, line: 61, baseType: !741, size: 64, offset: 960)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !744, line: 13, size: 1216, elements: !745)
!744 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!745 = !{!746, !747, !748, !749, !750, !751, !752, !755, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !743, file: !744, line: 14, baseType: !98, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !743, file: !744, line: 15, baseType: !94, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !743, file: !744, line: 17, baseType: !94, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !743, file: !744, line: 17, baseType: !94, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !743, file: !744, line: 18, baseType: !94, size: 64, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !743, file: !744, line: 18, baseType: !94, size: 64, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !743, file: !744, line: 19, baseType: !753, size: 64, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !743, file: !744, line: 21, baseType: !756, size: 64, offset: 448)
!756 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !743, file: !744, line: 23, baseType: !756, size: 64, offset: 512)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !743, file: !744, line: 24, baseType: !756, size: 64, offset: 576)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !743, file: !744, line: 25, baseType: !756, size: 64, offset: 640)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !743, file: !744, line: 26, baseType: !756, size: 64, offset: 704)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !743, file: !744, line: 27, baseType: !756, size: 64, offset: 768)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !743, file: !744, line: 28, baseType: !756, size: 64, offset: 832)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !743, file: !744, line: 29, baseType: !756, size: 64, offset: 896)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !743, file: !744, line: 30, baseType: !756, size: 64, offset: 960)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !743, file: !744, line: 31, baseType: !756, size: 64, offset: 1024)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !743, file: !744, line: 32, baseType: !756, size: 64, offset: 1088)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !743, file: !744, line: 33, baseType: !756, size: 64, offset: 1152)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !721, file: !720, line: 63, baseType: !261, size: 32, offset: 1024)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !721, file: !720, line: 69, baseType: !284, size: 16, offset: 1056)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !721, file: !720, line: 70, baseType: !771, size: 16, offset: 1072)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !121, line: 18, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !123, line: 23, baseType: !773)
!773 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !594, file: !591, line: 882, baseType: !94, size: 64, offset: 9024)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !594, file: !591, line: 885, baseType: !608, size: 32, offset: 9088)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !594, file: !591, line: 886, baseType: !777, size: 64, offset: 9152)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !591, line: 732, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !594, file: !591, line: 901, baseType: !780, size: 64, offset: 9216)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !591, line: 901, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !594, file: !591, line: 904, baseType: !626, size: 64, offset: 9280)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !594, file: !591, line: 906, baseType: !784, size: 64, offset: 9344)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !591, line: 906, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !594, file: !591, line: 930, baseType: !261, size: 32, offset: 9408)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !594, file: !591, line: 933, baseType: !261, size: 32, offset: 9440)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !594, file: !591, line: 935, baseType: !789, size: 64, offset: 9472)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !35, line: 103, size: 64, elements: !790)
!790 = !{!791}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !789, file: !35, line: 104, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !35, line: 101, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !594, file: !591, line: 940, baseType: !652, size: 64, offset: 9536)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !594, file: !591, line: 942, baseType: !796, size: 256, offset: 9600)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !797, line: 98, size: 256, elements: !798)
!797 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!798 = !{!799, !800, !801}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !796, file: !797, line: 99, baseType: !652, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !796, file: !797, line: 100, baseType: !320, size: 128, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !796, file: !797, line: 101, baseType: !802, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !797, line: 21, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !806}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !590, file: !591, line: 986, baseType: !808, offset: 10240)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: -1)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !242, file: !243, line: 882, baseType: !589, size: 64, offset: 9792)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !242, file: !243, line: 884, baseType: !97, size: 32, offset: 9856)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !242, file: !243, line: 885, baseType: !97, size: 32, offset: 9888)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !242, file: !243, line: 886, baseType: !97, size: 32, offset: 9920)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !242, file: !243, line: 888, baseType: !97, size: 32, offset: 9952)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !242, file: !243, line: 890, baseType: !94, size: 64, offset: 9984)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !242, file: !243, line: 893, baseType: !11, size: 32, offset: 10048)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !242, file: !243, line: 896, baseType: !11, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !242, file: !243, line: 897, baseType: !11, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !242, file: !243, line: 898, baseType: !11, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !242, file: !243, line: 899, baseType: !11, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !242, file: !243, line: 919, baseType: !11, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !242, file: !243, line: 922, baseType: !11, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !242, file: !243, line: 923, baseType: !11, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !242, file: !243, line: 925, baseType: !11, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !242, file: !243, line: 939, baseType: !11, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !242, file: !243, line: 941, baseType: !11, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !242, file: !243, line: 944, baseType: !11, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !242, file: !243, line: 956, baseType: !11, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !242, file: !243, line: 962, baseType: !11, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !242, file: !243, line: 966, baseType: !11, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !242, file: !243, line: 969, baseType: !94, size: 64, offset: 10176)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !242, file: !243, line: 971, baseType: !834, size: 448, offset: 10240)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !29, line: 25, size: 448, elements: !835)
!835 = !{!836, !837, !842}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !834, file: !29, line: 26, baseType: !94, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !834, file: !29, line: 27, baseType: !838, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!756, !841}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, scope: !834, file: !29, line: 28, baseType: !843, size: 320, offset: 128)
!843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !834, file: !29, line: 28, size: 320, elements: !844)
!844 = !{!845, !855, !880}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !843, file: !29, line: 37, baseType: !846, size: 320)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !843, file: !29, line: 30, size: 320, elements: !847)
!847 = !{!848, !850, !851, !852, !853, !854}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !846, file: !29, line: 31, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !846, file: !29, line: 32, baseType: !120, size: 32, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !846, file: !29, line: 33, baseType: !120, size: 32, offset: 96)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !846, file: !29, line: 34, baseType: !120, size: 32, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !846, file: !29, line: 35, baseType: !315, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !846, file: !29, line: 36, baseType: !849, size: 64, offset: 256)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !843, file: !29, line: 47, baseType: !856, size: 192)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !843, file: !29, line: 39, size: 192, elements: !857)
!857 = !{!858, !859, !860, !879}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !856, file: !29, line: 40, baseType: !461, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !856, file: !29, line: 41, baseType: !28, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !29, line: 42, baseType: !861, size: 64, offset: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !29, line: 42, size: 64, elements: !862)
!862 = !{!863, !871}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !861, file: !29, line: 43, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !866, line: 7, size: 128, elements: !867)
!866 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!867 = !{!868, !870}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !865, file: !866, line: 8, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !463, line: 93, baseType: !333)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !865, file: !866, line: 9, baseType: !333, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !861, file: !29, line: 44, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !874, line: 7, size: 64, elements: !875)
!874 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!875 = !{!876, !878}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !873, file: !874, line: 8, baseType: !877, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !874, line: 5, baseType: !711)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !873, file: !874, line: 9, baseType: !711, size: 32, offset: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !856, file: !29, line: 46, baseType: !315, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !843, file: !29, line: 55, baseType: !881, size: 256)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !843, file: !29, line: 49, size: 256, elements: !882)
!882 = !{!883, !886, !887, !888, !889}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !881, file: !29, line: 50, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !29, line: 14, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !881, file: !29, line: 51, baseType: !97, size: 32, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !881, file: !29, line: 52, baseType: !97, size: 32, offset: 96)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !881, file: !29, line: 53, baseType: !94, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !881, file: !29, line: 54, baseType: !94, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !242, file: !243, line: 973, baseType: !891, size: 32, offset: 10688)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !156, line: 27, baseType: !892)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !463, line: 28, baseType: !97)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !242, file: !243, line: 974, baseType: !891, size: 32, offset: 10720)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !242, file: !243, line: 978, baseType: !94, size: 64, offset: 10752)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !242, file: !243, line: 987, baseType: !241, size: 64, offset: 10816)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !242, file: !243, line: 990, baseType: !241, size: 64, offset: 10880)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !242, file: !243, line: 995, baseType: !320, size: 128, offset: 10944)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !242, file: !243, line: 996, baseType: !320, size: 128, offset: 11072)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !242, file: !243, line: 997, baseType: !241, size: 64, offset: 11200)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !242, file: !243, line: 1005, baseType: !320, size: 128, offset: 11264)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !242, file: !243, line: 1006, baseType: !320, size: 128, offset: 11392)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !242, file: !243, line: 1009, baseType: !903, size: 64, offset: 11520)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !905, line: 59, size: 768, elements: !906)
!905 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!906 = !{!907, !908, !909, !910, !921, !922, !929, !938}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !904, file: !905, line: 61, baseType: !256, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !904, file: !905, line: 62, baseType: !11, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !904, file: !905, line: 63, baseType: !608, size: 32, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !904, file: !905, line: 65, baseType: !911, size: 256, offset: 128)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !912, size: 256, elements: !713)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !156, line: 194, size: 64, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !912, file: !156, line: 195, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !156, line: 198, size: 128, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !916, file: !156, line: 199, baseType: !915, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !916, file: !156, line: 199, baseType: !920, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !904, file: !905, line: 66, baseType: !912, size: 64, offset: 384)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !904, file: !905, line: 68, baseType: !923, size: 192, offset: 448)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !924, line: 41, baseType: !925)
!924 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !924, line: 37, size: 192, elements: !926)
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !925, file: !924, line: 38, baseType: !608, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !925, file: !924, line: 39, baseType: !320, size: 128, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !904, file: !905, line: 69, baseType: !930, size: 128, align: 64, offset: 640)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !156, line: 232, size: 128, align: 64, elements: !931)
!931 = !{!932, !934}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !930, file: !156, line: 233, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !930, file: !156, line: 234, baseType: !935, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !933}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !904, file: !905, line: 70, baseType: !939, offset: 768)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, elements: !809)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !905, line: 54, size: 128, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !940, file: !905, line: 55, baseType: !97, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !940, file: !905, line: 56, baseType: !944, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !905, line: 56, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !242, file: !243, line: 1010, baseType: !947, size: 512, offset: 11584)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 512, elements: !713)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !242, file: !243, line: 1011, baseType: !320, size: 128, offset: 12096)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !242, file: !243, line: 1012, baseType: !320, size: 128, offset: 12224)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !242, file: !243, line: 1014, baseType: !951, size: 64, offset: 12352)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !953, line: 26, size: 256, elements: !954)
!953 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !952, file: !953, line: 27, baseType: !11, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !952, file: !953, line: 28, baseType: !957, size: 192, offset: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !958, line: 43, size: 192, elements: !959)
!958 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !957, file: !958, line: 44, baseType: !413, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !957, file: !958, line: 45, baseType: !320, size: 128, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !242, file: !243, line: 1017, baseType: !963, size: 64, offset: 12416)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !242, file: !243, line: 1020, baseType: !963, size: 64, offset: 12480)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !242, file: !243, line: 1023, baseType: !98, size: 64, offset: 12544)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !242, file: !243, line: 1025, baseType: !315, size: 64, offset: 12608)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !242, file: !243, line: 1026, baseType: !315, size: 64, offset: 12672)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !242, file: !243, line: 1031, baseType: !315, size: 64, offset: 12736)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !242, file: !243, line: 1032, baseType: !970, size: 192, offset: 12800)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !243, line: 324, size: 192, elements: !971)
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !970, file: !243, line: 326, baseType: !315, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !970, file: !243, line: 327, baseType: !315, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !970, file: !243, line: 328, baseType: !413, size: 32, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !242, file: !243, line: 1041, baseType: !94, size: 64, offset: 12992)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !242, file: !243, line: 1042, baseType: !94, size: 64, offset: 13056)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !242, file: !243, line: 1045, baseType: !315, size: 64, offset: 13120)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !242, file: !243, line: 1048, baseType: !315, size: 64, offset: 13184)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !242, file: !243, line: 1051, baseType: !94, size: 64, offset: 13248)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !242, file: !243, line: 1052, baseType: !94, size: 64, offset: 13312)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !242, file: !243, line: 1055, baseType: !982, size: 640, offset: 13376)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !983, line: 132, size: 640, elements: !984)
!983 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!984 = !{!985, !993, !994}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !982, file: !983, line: 133, baseType: !986, size: 576)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !987, size: 576, elements: !991)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !983, line: 117, size: 192, elements: !988)
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !987, file: !983, line: 118, baseType: !315, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !987, file: !983, line: 119, baseType: !476, size: 128, offset: 64)
!991 = !{!992}
!992 = !DISubrange(count: 3)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !982, file: !983, line: 134, baseType: !11, size: 32, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !982, file: !983, line: 135, baseType: !11, size: 32, offset: 608)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !242, file: !243, line: 1058, baseType: !996, size: 448, offset: 14016)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !983, line: 144, size: 448, elements: !997)
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !996, file: !983, line: 145, baseType: !930, size: 128, align: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !996, file: !983, line: 146, baseType: !732, size: 256, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !996, file: !983, line: 147, baseType: !11, size: 32, offset: 384)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !242, file: !243, line: 1064, baseType: !1002, size: 64, offset: 14464)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1004)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !243, line: 1064, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !242, file: !243, line: 1067, baseType: !1002, size: 64, offset: 14528)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !242, file: !243, line: 1070, baseType: !1002, size: 64, offset: 14592)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !242, file: !243, line: 1074, baseType: !1008, size: 64, offset: 14656)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !243, line: 1074, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !242, file: !243, line: 1084, baseType: !1011, size: 128, offset: 14720)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1012)
!1012 = !{!1013}
!1013 = !DISubrange(count: 16)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !242, file: !243, line: 1086, baseType: !1015, size: 64, offset: 14848)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !243, line: 55, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !242, file: !243, line: 1089, baseType: !1018, size: 64, offset: 14912)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1019, line: 12, size: 64, elements: !1020)
!1019 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1020 = !{!1021}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1018, file: !1019, line: 13, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1019, line: 8, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !242, file: !243, line: 1090, baseType: !1025, size: 128, offset: 14976)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1026, line: 13, size: 128, elements: !1027)
!1026 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1025, file: !1026, line: 14, baseType: !320, size: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !242, file: !243, line: 1097, baseType: !1030, size: 64, offset: 15104)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !243, line: 50, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !242, file: !243, line: 1100, baseType: !1033, size: 64, offset: 15168)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !243, line: 1100, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !242, file: !243, line: 1103, baseType: !1036, size: 64, offset: 15232)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !243, line: 53, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !242, file: !243, line: 1107, baseType: !1039, size: 64, offset: 15296)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !243, line: 56, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !242, file: !243, line: 1110, baseType: !1042, size: 64, offset: 15360)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !983, line: 236, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !242, file: !243, line: 1111, baseType: !1045, size: 64, offset: 15424)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !243, line: 67, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !242, file: !243, line: 1112, baseType: !1048, size: 64, offset: 15488)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1049, line: 25, baseType: !1050)
!1049 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1049, line: 23, size: 64, elements: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1050, file: !1049, line: 24, baseType: !93, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !242, file: !243, line: 1113, baseType: !1048, size: 64, offset: 15552)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !242, file: !243, line: 1115, baseType: !1048, size: 64, offset: 15616)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !242, file: !243, line: 1116, baseType: !1056, size: 192, offset: 15680)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1057, line: 32, size: 192, elements: !1058)
!1057 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1056, file: !1057, line: 33, baseType: !320, size: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1056, file: !1057, line: 34, baseType: !1048, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !242, file: !243, line: 1117, baseType: !94, size: 64, offset: 15872)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !242, file: !243, line: 1118, baseType: !1063, size: 64, offset: 15936)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !156, line: 61, baseType: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !463, line: 72, baseType: !1065)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !463, line: 16, baseType: !94)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !242, file: !243, line: 1119, baseType: !11, size: 32, offset: 16000)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !242, file: !243, line: 1121, baseType: !933, size: 64, offset: 16064)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !242, file: !243, line: 1125, baseType: !1069, size: 64, offset: 16128)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !243, line: 43, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !242, file: !243, line: 1127, baseType: !1072, size: 32, offset: 16192)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1073, line: 23, baseType: !1074)
!1073 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1073, line: 21, size: 32, elements: !1075)
!1075 = !{!1076}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1074, file: !1073, line: 22, baseType: !1077, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !156, line: 37, baseType: !1078)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !463, line: 49, baseType: !11)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !242, file: !243, line: 1128, baseType: !11, size: 32, offset: 16224)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !242, file: !243, line: 1130, baseType: !1081, size: 128, offset: 16256)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1082, line: 37, size: 128, elements: !1083)
!1082 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1083 = !{!1084, !1085, !1086}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1081, file: !1082, line: 38, baseType: !97, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1081, file: !1082, line: 39, baseType: !261, size: 32, offset: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1081, file: !1082, line: 40, baseType: !1087, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1082, line: 24, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !242, file: !243, line: 1131, baseType: !1090, size: 256, offset: 16384)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1091, line: 12, size: 256, elements: !1092)
!1091 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1092 = !{!1093, !1095, !1096, !1097}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1090, file: !1091, line: 13, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1090, file: !1091, line: 14, baseType: !94, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1090, file: !1091, line: 15, baseType: !94, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1090, file: !1091, line: 16, baseType: !155, size: 8, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !242, file: !243, line: 1134, baseType: !315, size: 64, offset: 16640)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !242, file: !243, line: 1135, baseType: !315, size: 64, offset: 16704)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !242, file: !243, line: 1138, baseType: !608, size: 32, offset: 16768)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !242, file: !243, line: 1141, baseType: !413, size: 32, offset: 16800)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !242, file: !243, line: 1143, baseType: !1103, size: 64, offset: 16832)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !243, line: 735, size: 64, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1103, file: !243, line: 736, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !242, file: !243, line: 1147, baseType: !479, size: 128, offset: 16896)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !242, file: !243, line: 1149, baseType: !241, size: 64, offset: 17024)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !242, file: !243, line: 1151, baseType: !1110, size: 64, offset: 17088)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !243, line: 1151, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !242, file: !243, line: 1188, baseType: !98, size: 64, offset: 17152)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !242, file: !243, line: 1191, baseType: !1114, size: 64, offset: 17216)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !243, line: 44, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !242, file: !243, line: 1194, baseType: !1117, size: 64, offset: 17280)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !243, line: 45, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !242, file: !243, line: 1197, baseType: !1120, size: 64, offset: 17344)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !243, line: 61, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !242, file: !243, line: 1199, baseType: !1123, size: 64, offset: 17408)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !243, line: 52, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !242, file: !243, line: 1202, baseType: !1126, size: 64, offset: 17472)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !243, line: 48, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !242, file: !243, line: 1205, baseType: !94, size: 64, offset: 17536)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !242, file: !243, line: 1206, baseType: !1130, size: 64, offset: 17600)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1057, line: 14, baseType: !1132)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1057, line: 12, size: 384, elements: !1133)
!1133 = !{!1134}
!1134 = !DIDerivedType(tag: DW_TAG_member, scope: !1132, file: !1057, line: 13, baseType: !1135, size: 384)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1132, file: !1057, line: 13, size: 384, elements: !1136)
!1136 = !{!1137, !1138, !1139, !1140}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1135, file: !1057, line: 13, baseType: !97, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1135, file: !1057, line: 13, baseType: !97, size: 32, offset: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1135, file: !1057, line: 13, baseType: !97, size: 32, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1135, file: !1057, line: 13, baseType: !1141, size: 256, offset: 128)
!1141 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1142, line: 37, size: 256, elements: !1143)
!1142 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1143 = !{!1144, !1149, !1162, !1168, !1178, !1205, !1210}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1141, file: !1142, line: 42, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1141, file: !1142, line: 39, size: 64, elements: !1146)
!1146 = !{!1147, !1148}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1145, file: !1142, line: 40, baseType: !892, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1145, file: !1142, line: 41, baseType: !1078, size: 32, offset: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1141, file: !1142, line: 50, baseType: !1150, size: 192)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1141, file: !1142, line: 45, size: 192, elements: !1151)
!1151 = !{!1152, !1154, !1155, !1161}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1150, file: !1142, line: 46, baseType: !1153, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !463, line: 95, baseType: !97)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1150, file: !1142, line: 47, baseType: !97, size: 32, offset: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1150, file: !1142, line: 48, baseType: !1156, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1142, line: 11, baseType: !1157)
!1157 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1142, line: 8, size: 64, elements: !1158)
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1157, file: !1142, line: 9, baseType: !97, size: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1157, file: !1142, line: 10, baseType: !98, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1150, file: !1142, line: 49, baseType: !97, size: 32, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1141, file: !1142, line: 57, baseType: !1163, size: 128)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1141, file: !1142, line: 53, size: 128, elements: !1164)
!1164 = !{!1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1163, file: !1142, line: 54, baseType: !892, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1163, file: !1142, line: 55, baseType: !1078, size: 32, offset: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1163, file: !1142, line: 56, baseType: !1156, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1141, file: !1142, line: 66, baseType: !1169, size: 256)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1141, file: !1142, line: 60, size: 256, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1177}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1169, file: !1142, line: 61, baseType: !892, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1169, file: !1142, line: 62, baseType: !1078, size: 32, offset: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1169, file: !1142, line: 63, baseType: !97, size: 32, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1169, file: !1142, line: 64, baseType: !1175, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !463, line: 94, baseType: !1176)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !463, line: 15, baseType: !756)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1169, file: !1142, line: 65, baseType: !1175, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1141, file: !1142, line: 105, baseType: !1179, size: 256)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1141, file: !1142, line: 69, size: 256, elements: !1180)
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1179, file: !1142, line: 70, baseType: !98, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !1142, line: 79, baseType: !1183, size: 192, offset: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !1142, line: 79, size: 192, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1194, !1199}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1183, file: !1142, line: 81, baseType: !97, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1183, file: !1142, line: 86, baseType: !773, size: 16)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1183, file: !1142, line: 92, baseType: !1188, size: 192)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1183, file: !1142, line: 88, size: 192, elements: !1189)
!1189 = !{!1190, !1192, !1193}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1188, file: !1142, line: 89, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !457)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1188, file: !1142, line: 90, baseType: !98, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1188, file: !1142, line: 91, baseType: !98, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1183, file: !1142, line: 97, baseType: !1195, size: 96)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1183, file: !1142, line: 94, size: 96, elements: !1196)
!1196 = !{!1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1195, file: !1142, line: 95, baseType: !1191, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1195, file: !1142, line: 96, baseType: !122, size: 32, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1183, file: !1142, line: 103, baseType: !1200, size: 128)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1183, file: !1142, line: 99, size: 128, elements: !1201)
!1201 = !{!1202, !1203, !1204}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1200, file: !1142, line: 100, baseType: !94, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1200, file: !1142, line: 101, baseType: !122, size: 32, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1200, file: !1142, line: 102, baseType: !122, size: 32, offset: 96)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1141, file: !1142, line: 111, baseType: !1206, size: 128)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1141, file: !1142, line: 108, size: 128, elements: !1207)
!1207 = !{!1208, !1209}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1206, file: !1142, line: 109, baseType: !756, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1206, file: !1142, line: 110, baseType: !97, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1141, file: !1142, line: 118, baseType: !1211, size: 128)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1141, file: !1142, line: 114, size: 128, elements: !1212)
!1212 = !{!1213, !1214, !1215}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1211, file: !1142, line: 115, baseType: !98, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1211, file: !1142, line: 116, baseType: !97, size: 32, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1211, file: !1142, line: 117, baseType: !11, size: 32, offset: 96)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !242, file: !243, line: 1208, baseType: !1217, size: 448, offset: 17664)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1218, line: 12, size: 448, elements: !1219)
!1218 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1225, !1226}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1217, file: !1218, line: 15, baseType: !315, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1217, file: !1218, line: 17, baseType: !315, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1217, file: !1218, line: 19, baseType: !315, size: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1217, file: !1218, line: 21, baseType: !315, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1217, file: !1218, line: 29, baseType: !315, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1217, file: !1218, line: 35, baseType: !315, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1217, file: !1218, line: 44, baseType: !315, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !242, file: !243, line: 1215, baseType: !315, size: 64, offset: 18112)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !242, file: !243, line: 1217, baseType: !315, size: 64, offset: 18176)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !242, file: !243, line: 1219, baseType: !315, size: 64, offset: 18240)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !242, file: !243, line: 1223, baseType: !1231, size: 64, offset: 18304)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1232, line: 99, baseType: !1233)
!1232 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1232, line: 99, size: 64, elements: !1234)
!1234 = !{!1235}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1233, file: !1232, line: 99, baseType: !93, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !242, file: !243, line: 1225, baseType: !1237, size: 32, offset: 18368)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !466, line: 275, baseType: !1238)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !466, line: 275, size: 32, elements: !1239)
!1239 = !{!1240}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1238, file: !466, line: 275, baseType: !470, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !242, file: !243, line: 1226, baseType: !97, size: 32, offset: 18400)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !242, file: !243, line: 1227, baseType: !97, size: 32, offset: 18432)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !242, file: !243, line: 1231, baseType: !1244, size: 64, offset: 18496)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !243, line: 1231, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !242, file: !243, line: 1233, baseType: !320, size: 128, offset: 18560)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !242, file: !243, line: 1240, baseType: !1248, size: 64, offset: 18688)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !243, line: 62, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !242, file: !243, line: 1242, baseType: !1251, size: 64, offset: 18752)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !243, line: 1242, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !242, file: !243, line: 1244, baseType: !320, size: 128, offset: 18816)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !242, file: !243, line: 1245, baseType: !1255, size: 64, offset: 18944)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !243, line: 51, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !242, file: !243, line: 1246, baseType: !732, size: 256, offset: 19008)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !242, file: !243, line: 1247, baseType: !11, size: 32, offset: 19264)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !242, file: !243, line: 1250, baseType: !1260, size: 64, offset: 19328)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !243, line: 57, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !242, file: !243, line: 1251, baseType: !732, size: 256, offset: 19392)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !242, file: !243, line: 1252, baseType: !320, size: 128, offset: 19648)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !242, file: !243, line: 1259, baseType: !1265, size: 64, offset: 19776)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !591, line: 717, flags: DIFlagFwdDecl)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !242, file: !243, line: 1260, baseType: !773, size: 16, offset: 19840)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !242, file: !243, line: 1261, baseType: !773, size: 16, offset: 19856)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !242, file: !243, line: 1314, baseType: !1270, size: 64, offset: 19904)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1272, line: 62, size: 256, align: 256, elements: !1273)
!1272 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1271, file: !1272, line: 75, baseType: !122, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1271, file: !1272, line: 90, baseType: !122, size: 32, offset: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1271, file: !1272, line: 112, baseType: !316, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1271, file: !1272, line: 132, baseType: !122, size: 32, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1271, file: !1272, line: 140, baseType: !122, size: 32, offset: 160)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1271, file: !1272, line: 149, baseType: !122, size: 32, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1271, file: !1272, line: 154, baseType: !1281, offset: 224)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !809)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !242, file: !243, line: 1315, baseType: !120, size: 32, offset: 19968)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !242, file: !243, line: 1316, baseType: !120, size: 32, offset: 20000)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !242, file: !243, line: 1321, baseType: !94, size: 64, offset: 20032)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !242, file: !243, line: 1325, baseType: !97, size: 32, offset: 20096)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !242, file: !243, line: 1326, baseType: !97, size: 32, offset: 20128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !242, file: !243, line: 1327, baseType: !97, size: 32, offset: 20160)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !242, file: !243, line: 1328, baseType: !97, size: 32, offset: 20192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !242, file: !243, line: 1329, baseType: !930, size: 128, align: 64, offset: 20224)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !242, file: !243, line: 1332, baseType: !1291, size: 128, offset: 20352)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1292, line: 51, size: 128, elements: !1293)
!1292 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1293 = !{!1294, !1299, !1300}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1291, file: !1292, line: 60, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1296, line: 7, size: 64, elements: !1297)
!1296 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1297 = !{!1298}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1295, file: !1296, line: 12, baseType: !89, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1291, file: !1292, line: 63, baseType: !155, size: 8, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1291, file: !1292, line: 70, baseType: !155, size: 8, offset: 72)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !242, file: !243, line: 1335, baseType: !1302, size: 64, offset: 20480)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !243, line: 59, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !242, file: !243, line: 1337, baseType: !1305, size: 128, offset: 20544)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1292, line: 39, size: 128, elements: !1306)
!1306 = !{!1307, !1370, !1371}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1305, file: !1292, line: 40, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !591, line: 74, size: 512, align: 128, elements: !1310)
!1310 = !{!1311, !1312, !1364, !1369}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1309, file: !591, line: 75, baseType: !94, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, scope: !1309, file: !591, line: 83, baseType: !1313, size: 320, offset: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1309, file: !591, line: 83, size: 320, elements: !1314)
!1314 = !{!1315, !1338, !1352, !1356, !1363}
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !591, line: 84, baseType: !1316, size: 320)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1313, file: !591, line: 84, size: 320, elements: !1317)
!1317 = !{!1318, !1329, !1332, !1337}
!1318 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !591, line: 90, baseType: !1319, size: 128)
!1319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1316, file: !591, line: 90, size: 128, elements: !1320)
!1320 = !{!1321, !1322, !1327, !1328}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1319, file: !591, line: 91, baseType: !320, size: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, scope: !1319, file: !591, line: 94, baseType: !1323, size: 128)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1319, file: !591, line: 94, size: 128, elements: !1324)
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1323, file: !591, line: 96, baseType: !98, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1323, file: !591, line: 98, baseType: !11, size: 32, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1319, file: !591, line: 102, baseType: !320, size: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1319, file: !591, line: 103, baseType: !320, size: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1316, file: !591, line: 106, baseType: !1330, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !591, line: 32, flags: DIFlagFwdDecl)
!1332 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !591, line: 107, baseType: !1333, size: 64, offset: 192)
!1333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1316, file: !591, line: 107, size: 64, elements: !1334)
!1334 = !{!1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1333, file: !591, line: 108, baseType: !94, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1333, file: !591, line: 109, baseType: !94, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1316, file: !591, line: 117, baseType: !94, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !591, line: 119, baseType: !1339, size: 320)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1313, file: !591, line: 119, size: 320, elements: !1340)
!1340 = !{!1341, !1342, !1345, !1346, !1347}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1339, file: !591, line: 124, baseType: !94, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1339, file: !591, line: 125, baseType: !1343, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !591, line: 125, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1339, file: !591, line: 126, baseType: !94, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1339, file: !591, line: 127, baseType: !94, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1339, file: !591, line: 128, baseType: !1348, size: 64, offset: 256)
!1348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1339, file: !591, line: 128, size: 64, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1348, file: !591, line: 133, baseType: !94, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1348, file: !591, line: 138, baseType: !652, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !591, line: 141, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1313, file: !591, line: 141, size: 64, elements: !1354)
!1354 = !{!1355}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1353, file: !591, line: 142, baseType: !94, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !591, line: 144, baseType: !1357, size: 128)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1313, file: !591, line: 144, size: 128, elements: !1358)
!1358 = !{!1359, !1362}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1357, file: !591, line: 146, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !591, line: 146, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1357, file: !591, line: 147, baseType: !98, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1313, file: !591, line: 161, baseType: !930, size: 128, align: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, scope: !1309, file: !591, line: 164, baseType: !1365, size: 32, offset: 384)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1309, file: !591, line: 164, size: 32, elements: !1366)
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1365, file: !591, line: 169, baseType: !261, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1365, file: !591, line: 177, baseType: !11, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1309, file: !591, line: 181, baseType: !261, size: 32, offset: 416)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1305, file: !1292, line: 42, baseType: !122, size: 32, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1305, file: !1292, line: 43, baseType: !122, size: 32, offset: 96)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !242, file: !243, line: 1340, baseType: !1373, size: 64, offset: 20672)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !243, line: 69, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !242, file: !243, line: 1351, baseType: !97, size: 32, offset: 20736)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !242, file: !243, line: 1352, baseType: !97, size: 32, offset: 20768)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !242, file: !243, line: 1354, baseType: !94, size: 64, offset: 20800)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !242, file: !243, line: 1364, baseType: !315, size: 64, offset: 20864)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !242, file: !243, line: 1365, baseType: !315, size: 64, offset: 20928)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !242, file: !243, line: 1412, baseType: !94, size: 64, offset: 20992)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !242, file: !243, line: 1453, baseType: !1382, size: 64, offset: 21056)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !243, line: 1453, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !242, file: !243, line: 1457, baseType: !1385, size: 64, offset: 21120)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !35, line: 61, size: 576, elements: !1387)
!1387 = !{!1388, !1389, !1408, !1411, !1412, !1445, !1455}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1386, file: !35, line: 62, baseType: !34, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, scope: !1386, file: !35, line: 64, baseType: !1390, size: 192, offset: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1386, file: !35, line: 64, size: 192, elements: !1391)
!1391 = !{!1392, !1403}
!1392 = !DIDerivedType(tag: DW_TAG_member, scope: !1390, file: !35, line: 65, baseType: !1393, size: 192)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1390, file: !35, line: 65, size: 192, elements: !1394)
!1394 = !{!1395, !1402}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1393, file: !35, line: 66, baseType: !1396, size: 128)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1397, line: 50, size: 128, elements: !1398)
!1397 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1398 = !{!1399, !1400, !1401}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1396, file: !1397, line: 52, baseType: !94, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1396, file: !1397, line: 54, baseType: !11, size: 32, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1396, file: !1397, line: 55, baseType: !11, size: 32, offset: 96)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1393, file: !35, line: 67, baseType: !94, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1390, file: !35, line: 70, baseType: !1404, size: 192)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1390, file: !35, line: 70, size: 192, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1404, file: !35, line: 71, baseType: !930, size: 128, align: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1404, file: !35, line: 72, baseType: !94, size: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1386, file: !35, line: 76, baseType: !1409, size: 64, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !35, line: 76, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1386, file: !35, line: 77, baseType: !94, size: 64, offset: 320)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1386, file: !35, line: 79, baseType: !1413, size: 64, offset: 384)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1397, line: 25, size: 256, elements: !1415)
!1415 = !{!1416, !1422, !1426}
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !1397, line: 26, baseType: !1417, size: 128)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !1397, line: 26, size: 128, elements: !1418)
!1418 = !{!1419, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1417, file: !1397, line: 27, baseType: !1420, size: 128)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 128, elements: !1012)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1417, file: !1397, line: 28, baseType: !1420, size: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1414, file: !1397, line: 31, baseType: !1423, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1425)
!1425 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1397, line: 23, flags: DIFlagFwdDecl)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !1397, line: 33, baseType: !1427, size: 64, offset: 192)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !1397, line: 33, size: 64, elements: !1428)
!1428 = !{!1429, !1435, !1440}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1427, file: !1397, line: 38, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1427, file: !1397, line: 34, size: 64, elements: !1431)
!1431 = !{!1432, !1433, !1434}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1430, file: !1397, line: 35, baseType: !711, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1430, file: !1397, line: 36, baseType: !430, size: 8, offset: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1430, file: !1397, line: 37, baseType: !430, size: 8, offset: 40)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1427, file: !1397, line: 42, baseType: !1436, size: 16)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1427, file: !1397, line: 39, size: 16, elements: !1437)
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1436, file: !1397, line: 40, baseType: !430, size: 8)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1436, file: !1397, line: 41, baseType: !430, size: 8, offset: 8)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1427, file: !1397, line: 46, baseType: !1441, size: 16)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1427, file: !1397, line: 43, size: 16, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1441, file: !1397, line: 44, baseType: !430, size: 8)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1441, file: !1397, line: 45, baseType: !430, size: 8, offset: 8)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1386, file: !35, line: 81, baseType: !1446, size: 64, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !35, line: 85, size: 384, elements: !1448)
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1454}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1447, file: !35, line: 86, baseType: !1409, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1447, file: !35, line: 87, baseType: !94, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1447, file: !35, line: 88, baseType: !94, size: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1447, file: !35, line: 89, baseType: !94, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1447, file: !35, line: 90, baseType: !155, size: 8, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1447, file: !35, line: 92, baseType: !1446, size: 64, offset: 320)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1386, file: !35, line: 82, baseType: !11, size: 32, offset: 512)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !242, file: !243, line: 1463, baseType: !1457, offset: 21184)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !243, line: 739, elements: !619)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !242, file: !243, line: 1470, baseType: !930, size: 128, align: 64, offset: 21184)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !242, file: !243, line: 1471, baseType: !256, size: 32, offset: 21312)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !242, file: !243, line: 1472, baseType: !97, size: 32, offset: 21344)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !242, file: !243, line: 1474, baseType: !241, size: 64, offset: 21376)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !242, file: !243, line: 1475, baseType: !1463, size: 320, offset: 21440)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1464, line: 11, size: 320, elements: !1465)
!1464 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1465 = !{!1466, !1467, !1468, !1473}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1463, file: !1464, line: 16, baseType: !916, size: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1463, file: !1464, line: 17, baseType: !94, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1463, file: !1464, line: 18, baseType: !1469, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{null, !1472}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1463, file: !1464, line: 19, baseType: !120, size: 32, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !242, file: !243, line: 1478, baseType: !1475, size: 64, offset: 21760)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1477, line: 49, size: 512, elements: !1478)
!1477 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1485, !1486, !1487, !1489}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1476, file: !1477, line: 50, baseType: !1475, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1476, file: !1477, line: 51, baseType: !98, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1476, file: !1477, line: 52, baseType: !94, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1476, file: !1477, line: 53, baseType: !94, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1476, file: !1477, line: 54, baseType: !1484, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !1476, file: !1477, line: 56, baseType: !11, size: 32, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1476, file: !1477, line: 58, baseType: !11, size: 32, offset: 352)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1476, file: !1477, line: 59, baseType: !1488, size: 64, offset: 384)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !156, line: 159, baseType: !315)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1476, file: !1477, line: 60, baseType: !753, size: 64, offset: 448)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !242, file: !243, line: 1482, baseType: !256, size: 32, offset: 21824)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !242, file: !243, line: 1489, baseType: !98, size: 64, offset: 21888)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !242, file: !243, line: 1504, baseType: !98, size: 64, offset: 21952)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !242, file: !243, line: 1505, baseType: !316, size: 64, offset: 22016)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !242, file: !243, line: 1506, baseType: !315, size: 64, offset: 22080)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !242, file: !243, line: 1507, baseType: !316, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !242, file: !243, line: 1508, baseType: !316, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !242, file: !243, line: 1509, baseType: !316, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !242, file: !243, line: 1510, baseType: !930, size: 128, align: 64, offset: 22208)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !242, file: !243, line: 1511, baseType: !97, size: 32, offset: 22336)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !242, file: !243, line: 1515, baseType: !1501, size: 64, offset: 22400)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !274, line: 56, size: 64, elements: !1502)
!1502 = !{!1503}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1501, file: !274, line: 57, baseType: !277, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !242, file: !243, line: 1518, baseType: !1501, size: 64, offset: 22464)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !242, file: !243, line: 1528, baseType: !930, size: 128, align: 64, offset: 22528)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !242, file: !243, line: 1552, baseType: !1507, size: 35328, offset: 23040)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1508, line: 430, size: 35328, elements: !1509)
!1508 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1509 = !{!1510, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1539, !1540, !1541, !1542, !1543, !1544, !1547, !1548, !1549, !1550}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1507, file: !1508, line: 432, baseType: !1511, size: 192)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1512, size: 192, elements: !991)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1513, line: 16, size: 64, elements: !1514)
!1513 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1514 = !{!1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1512, file: !1513, line: 17, baseType: !284, size: 16)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1512, file: !1513, line: 18, baseType: !284, size: 16, offset: 16)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1512, file: !1513, line: 19, baseType: !284, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1512, file: !1513, line: 19, baseType: !284, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1512, file: !1513, line: 19, baseType: !284, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1512, file: !1513, line: 19, baseType: !284, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1512, file: !1513, line: 19, baseType: !284, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1512, file: !1513, line: 20, baseType: !284, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1512, file: !1513, line: 20, baseType: !284, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1512, file: !1513, line: 20, baseType: !284, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1512, file: !1513, line: 20, baseType: !284, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1512, file: !1513, line: 20, baseType: !284, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1512, file: !1513, line: 20, baseType: !284, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1507, file: !1508, line: 436, baseType: !94, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1507, file: !1508, line: 440, baseType: !286, size: 16, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1507, file: !1508, line: 441, baseType: !286, size: 16, offset: 272)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1507, file: !1508, line: 442, baseType: !286, size: 16, offset: 288)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1507, file: !1508, line: 443, baseType: !286, size: 16, offset: 304)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1507, file: !1508, line: 447, baseType: !94, size: 64, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1507, file: !1508, line: 448, baseType: !94, size: 64, offset: 384)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1507, file: !1508, line: 459, baseType: !1536, size: 256, offset: 448)
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1537, size: 256, elements: !713)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1508, line: 428, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1507, file: !1508, line: 461, baseType: !94, size: 64, offset: 704)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1507, file: !1508, line: 463, baseType: !94, size: 64, offset: 768)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1507, file: !1508, line: 465, baseType: !94, size: 64, offset: 832)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1507, file: !1508, line: 466, baseType: !94, size: 64, offset: 896)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1507, file: !1508, line: 467, baseType: !94, size: 64, offset: 960)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1507, file: !1508, line: 473, baseType: !1545, size: 64, offset: 1024)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1508, line: 10, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1507, file: !1508, line: 480, baseType: !94, size: 64, offset: 1088)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1507, file: !1508, line: 482, baseType: !11, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1507, file: !1508, line: 491, baseType: !120, size: 32, offset: 1184)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1507, file: !1508, line: 501, baseType: !1551, size: 33792, offset: 1536)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1552, line: 448, size: 33792, elements: !1553)
!1552 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1553 = !{!1554, !1555, !1556, !1724, !1725, !1731, !1732}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1551, file: !1552, line: 461, baseType: !11, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1551, file: !1552, line: 468, baseType: !94, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1551, file: !1552, line: 476, baseType: !1557, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1552, line: 356, size: 33280, align: 512, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1558, file: !1552, line: 358, baseType: !11, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1558, file: !1552, line: 361, baseType: !11, size: 32, offset: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1558, file: !1552, line: 364, baseType: !315, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1558, file: !1552, line: 367, baseType: !315, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1558, file: !1552, line: 370, baseType: !315, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1558, file: !1552, line: 373, baseType: !11, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1558, file: !1552, line: 376, baseType: !11, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1558, file: !1552, line: 391, baseType: !11, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1558, file: !1552, line: 394, baseType: !11, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1558, file: !1552, line: 397, baseType: !1570, size: 32768, offset: 512)
!1570 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1552, line: 348, size: 32768, elements: !1571)
!1571 = !{!1572, !1587, !1628, !1705, !1720}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1570, file: !1552, line: 349, baseType: !1573, size: 896)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1552, line: 12, size: 896, elements: !1574)
!1574 = !{!1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1586}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1573, file: !1552, line: 13, baseType: !120, size: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1573, file: !1552, line: 14, baseType: !120, size: 32, offset: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1573, file: !1552, line: 15, baseType: !120, size: 32, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1573, file: !1552, line: 16, baseType: !120, size: 32, offset: 96)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1573, file: !1552, line: 17, baseType: !120, size: 32, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1573, file: !1552, line: 18, baseType: !120, size: 32, offset: 160)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1573, file: !1552, line: 19, baseType: !120, size: 32, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1573, file: !1552, line: 22, baseType: !1583, size: 640, offset: 224)
!1583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 640, elements: !1584)
!1584 = !{!1585}
!1585 = !DISubrange(count: 20)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1573, file: !1552, line: 25, baseType: !120, size: 32, offset: 864)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1570, file: !1552, line: 350, baseType: !1588, size: 4096, align: 128)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1552, line: 34, size: 4096, align: 128, elements: !1589)
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1609, !1610, !1611, !1615, !1619, !1623}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1588, file: !1552, line: 35, baseType: !284, size: 16)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1588, file: !1552, line: 36, baseType: !284, size: 16, offset: 16)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1588, file: !1552, line: 37, baseType: !284, size: 16, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1588, file: !1552, line: 38, baseType: !284, size: 16, offset: 48)
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !1552, line: 39, baseType: !1595, size: 128, offset: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1588, file: !1552, line: 39, size: 128, elements: !1596)
!1596 = !{!1597, !1602}
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1595, file: !1552, line: 40, baseType: !1598, size: 128)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1595, file: !1552, line: 40, size: 128, elements: !1599)
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1598, file: !1552, line: 41, baseType: !315, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1598, file: !1552, line: 42, baseType: !315, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1595, file: !1552, line: 44, baseType: !1603, size: 128)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1595, file: !1552, line: 44, size: 128, elements: !1604)
!1604 = !{!1605, !1606, !1607, !1608}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1603, file: !1552, line: 45, baseType: !120, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1603, file: !1552, line: 46, baseType: !120, size: 32, offset: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1603, file: !1552, line: 47, baseType: !120, size: 32, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1603, file: !1552, line: 48, baseType: !120, size: 32, offset: 96)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1588, file: !1552, line: 51, baseType: !120, size: 32, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1588, file: !1552, line: 52, baseType: !120, size: 32, offset: 224)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1588, file: !1552, line: 55, baseType: !1612, size: 1024, offset: 256)
!1612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 1024, elements: !1613)
!1613 = !{!1614}
!1614 = !DISubrange(count: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1588, file: !1552, line: 58, baseType: !1616, size: 2048, offset: 1280)
!1616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 2048, elements: !1617)
!1617 = !{!1618}
!1618 = !DISubrange(count: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1588, file: !1552, line: 60, baseType: !1620, size: 384, offset: 3328)
!1620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 384, elements: !1621)
!1621 = !{!1622}
!1622 = !DISubrange(count: 12)
!1623 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !1552, line: 62, baseType: !1624, size: 384, offset: 3712)
!1624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1588, file: !1552, line: 62, size: 384, elements: !1625)
!1625 = !{!1626, !1627}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1624, file: !1552, line: 63, baseType: !1620, size: 384)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1624, file: !1552, line: 64, baseType: !1620, size: 384)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1570, file: !1552, line: 351, baseType: !1629, size: 1088)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1552, line: 79, size: 1088, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1704}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1629, file: !1552, line: 80, baseType: !120, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1629, file: !1552, line: 81, baseType: !120, size: 32, offset: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1629, file: !1552, line: 82, baseType: !120, size: 32, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1629, file: !1552, line: 83, baseType: !120, size: 32, offset: 96)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1629, file: !1552, line: 84, baseType: !120, size: 32, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1629, file: !1552, line: 85, baseType: !120, size: 32, offset: 160)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1629, file: !1552, line: 86, baseType: !120, size: 32, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1629, file: !1552, line: 88, baseType: !1583, size: 640, offset: 224)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1629, file: !1552, line: 89, baseType: !430, size: 8, offset: 864)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1629, file: !1552, line: 90, baseType: !430, size: 8, offset: 872)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1629, file: !1552, line: 91, baseType: !430, size: 8, offset: 880)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1629, file: !1552, line: 92, baseType: !430, size: 8, offset: 888)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1629, file: !1552, line: 93, baseType: !430, size: 8, offset: 896)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1629, file: !1552, line: 94, baseType: !430, size: 8, offset: 904)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1629, file: !1552, line: 95, baseType: !1646, size: 64, offset: 960)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1648, line: 11, size: 128, elements: !1649)
!1648 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1647, file: !1648, line: 12, baseType: !756, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1647, file: !1648, line: 13, baseType: !1652, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1654, line: 103, size: 1344, elements: !1655)
!1654 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1655 = !{!1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1684, !1685, !1686}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1653, file: !1654, line: 109, baseType: !94, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1653, file: !1654, line: 110, baseType: !94, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1653, file: !1654, line: 111, baseType: !94, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1653, file: !1654, line: 112, baseType: !94, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1653, file: !1654, line: 113, baseType: !94, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1653, file: !1654, line: 114, baseType: !94, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1653, file: !1654, line: 117, baseType: !94, size: 64, offset: 384)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1653, file: !1654, line: 118, baseType: !94, size: 64, offset: 448)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1653, file: !1654, line: 119, baseType: !94, size: 64, offset: 512)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1653, file: !1654, line: 120, baseType: !94, size: 64, offset: 576)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1653, file: !1654, line: 121, baseType: !94, size: 64, offset: 640)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1653, file: !1654, line: 122, baseType: !94, size: 64, offset: 704)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1653, file: !1654, line: 123, baseType: !94, size: 64, offset: 768)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1653, file: !1654, line: 124, baseType: !94, size: 64, offset: 832)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1653, file: !1654, line: 125, baseType: !94, size: 64, offset: 896)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1653, file: !1654, line: 139, baseType: !94, size: 64, offset: 960)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1653, file: !1654, line: 142, baseType: !94, size: 64, offset: 1024)
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !1654, line: 144, baseType: !1674, size: 64, offset: 1088)
!1674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1653, file: !1654, line: 144, size: 64, elements: !1675)
!1675 = !{!1676, !1677, !1678}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1674, file: !1654, line: 146, baseType: !284, size: 16)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1674, file: !1654, line: 148, baseType: !315, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1674, file: !1654, line: 150, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1654, line: 59, size: 64, elements: !1680)
!1680 = !{!1681, !1682, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1679, file: !1654, line: 61, baseType: !315, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1679, file: !1654, line: 63, baseType: !315, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1679, file: !1654, line: 65, baseType: !315, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1653, file: !1654, line: 153, baseType: !94, size: 64, offset: 1152)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1653, file: !1654, line: 154, baseType: !94, size: 64, offset: 1216)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !1654, line: 156, baseType: !1687, size: 64, offset: 1280)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1653, file: !1654, line: 156, size: 64, elements: !1688)
!1688 = !{!1689, !1690, !1691}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1687, file: !1654, line: 158, baseType: !284, size: 16)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1687, file: !1654, line: 160, baseType: !315, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1687, file: !1654, line: 162, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1654, line: 69, size: 64, elements: !1693)
!1693 = !{!1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1692, file: !1654, line: 71, baseType: !315, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1692, file: !1654, line: 73, baseType: !315, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1692, file: !1654, line: 75, baseType: !315, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1692, file: !1654, line: 77, baseType: !315, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1692, file: !1654, line: 80, baseType: !315, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1692, file: !1654, line: 83, baseType: !315, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1692, file: !1654, line: 86, baseType: !315, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1692, file: !1654, line: 88, baseType: !315, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1692, file: !1654, line: 93, baseType: !315, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1692, file: !1654, line: 100, baseType: !315, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1629, file: !1552, line: 96, baseType: !120, size: 32, offset: 1024)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1570, file: !1552, line: 352, baseType: !1706, size: 4608, align: 512)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1552, line: 333, size: 4608, align: 512, elements: !1707)
!1707 = !{!1708, !1709, !1718}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1706, file: !1552, line: 334, baseType: !1588, size: 4096, align: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1706, file: !1552, line: 335, baseType: !1710, size: 512, offset: 4096)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1552, line: 312, size: 512, elements: !1711)
!1711 = !{!1712, !1713, !1714}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1710, file: !1552, line: 313, baseType: !315, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1710, file: !1552, line: 314, baseType: !315, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1710, file: !1552, line: 315, baseType: !1715, size: 384, offset: 128)
!1715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 384, elements: !1716)
!1716 = !{!1717}
!1717 = !DISubrange(count: 6)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1706, file: !1552, line: 336, baseType: !1719, offset: 4608)
!1719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, elements: !809)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1570, file: !1552, line: 353, baseType: !1721, size: 32768)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 32768, elements: !1722)
!1722 = !{!1723}
!1723 = !DISubrange(count: 4096)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1551, file: !1552, line: 484, baseType: !1557, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1551, file: !1552, line: 491, baseType: !1726, size: 128, offset: 256)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1552, line: 404, size: 128, elements: !1727)
!1727 = !{!1728, !1729, !1730}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1726, file: !1552, line: 424, baseType: !315, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1726, file: !1552, line: 432, baseType: !11, size: 32, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1726, file: !1552, line: 440, baseType: !11, size: 32, offset: 96)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1551, file: !1552, line: 498, baseType: !1726, size: 128, offset: 384)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1551, file: !1552, line: 508, baseType: !1558, size: 33280, align: 512, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !228, file: !10, line: 125, baseType: !227, size: 64, offset: 384)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !228, file: !10, line: 126, baseType: !11, size: 32, offset: 448)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !228, file: !10, line: 127, baseType: !11, size: 32, offset: 480)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !228, file: !10, line: 128, baseType: !94, size: 64, offset: 512)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !228, file: !10, line: 129, baseType: !94, size: 64, offset: 576)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !10, line: 130, baseType: !133, size: 64, offset: 640)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !228, file: !10, line: 131, baseType: !1740, size: 64, offset: 704)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !101, line: 14, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !100, file: !101, line: 61, baseType: !11, size: 32, offset: 960)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !100, file: !101, line: 62, baseType: !11, size: 32, offset: 992)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !100, file: !101, line: 63, baseType: !11, size: 32, offset: 1024)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !100, file: !101, line: 64, baseType: !11, size: 32, offset: 1056)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !100, file: !101, line: 65, baseType: !11, size: 32, offset: 1088)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !100, file: !101, line: 66, baseType: !11, size: 32, offset: 1120)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !100, file: !101, line: 67, baseType: !94, size: 64, offset: 1152)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !100, file: !101, line: 68, baseType: !11, size: 32, offset: 1216)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !100, file: !101, line: 69, baseType: !261, size: 32, offset: 1248)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !100, file: !101, line: 70, baseType: !97, size: 32, offset: 1280)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !100, file: !101, line: 71, baseType: !413, size: 32, offset: 1312)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !100, file: !101, line: 72, baseType: !1754, size: 64, offset: 1344)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !100, file: !101, line: 73, baseType: !87, size: 64, offset: 1408)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_hint", scope: !100, file: !101, line: 75, baseType: !87, size: 64, offset: 1472)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_notify", scope: !100, file: !101, line: 76, baseType: !1758, size: 64, offset: 1536)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_notify", file: !10, line: 261, size: 448, elements: !1760)
!1760 = !{!1761, !1762, !1767, !1768, !1772}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1759, file: !10, line: 262, baseType: !11, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1759, file: !10, line: 263, baseType: !1763, size: 32, offset: 32)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1764, line: 19, size: 32, elements: !1765)
!1764 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1765 = !{!1766}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1763, file: !1764, line: 20, baseType: !256, size: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1759, file: !10, line: 264, baseType: !796, size: 256, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1759, file: !10, line: 265, baseType: !1769, size: 64, offset: 320)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !1758, !540}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1759, file: !10, line: 266, baseType: !1773, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{null, !1776}
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mask", scope: !100, file: !101, line: 78, baseType: !113, size: 64, offset: 1600)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !100, file: !101, line: 81, baseType: !94, size: 64, offset: 1664)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !100, file: !101, line: 82, baseType: !261, size: 32, offset: 1728)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !100, file: !101, line: 83, baseType: !923, size: 192, offset: 1792)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !100, file: !101, line: 85, baseType: !11, size: 32, offset: 1984)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !100, file: !101, line: 86, baseType: !11, size: 32, offset: 2016)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !100, file: !101, line: 87, baseType: !11, size: 32, offset: 2048)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !100, file: !101, line: 88, baseType: !11, size: 32, offset: 2080)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !100, file: !101, line: 91, baseType: !1740, size: 64, offset: 2112)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !100, file: !101, line: 98, baseType: !930, size: 128, align: 64, offset: 2176)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !100, file: !101, line: 99, baseType: !1788, size: 512, offset: 2304)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1789, line: 64, size: 512, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1790 = !{!1791, !1792, !1793, !1795, !1837, !2008, !2117, !2118, !2119, !2120, !2121, !2122}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1788, file: !1789, line: 65, baseType: !133, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1788, file: !1789, line: 66, baseType: !320, size: 128, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1788, file: !1789, line: 67, baseType: !1794, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1788, file: !1789, line: 68, baseType: !1796, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1789, line: 168, size: 768, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1797, file: !1789, line: 169, baseType: !320, size: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1797, file: !1789, line: 170, baseType: !608, size: 32, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1797, file: !1789, line: 171, baseType: !1788, size: 512, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1797, file: !1789, line: 172, baseType: !1803, size: 64, offset: 704)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1789, line: 133, size: 192, elements: !1806)
!1806 = !{!1807, !1814, !1819}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1805, file: !1789, line: 134, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1809)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!97, !1812}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1788)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1805, file: !1789, line: 135, baseType: !1815, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1816)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!133, !1812}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1805, file: !1789, line: 136, baseType: !1820, size: 64, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1821)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!97, !1812, !1824}
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1789, line: 125, size: 20736, elements: !1826)
!1826 = !{!1827, !1829, !1831, !1832, !1836}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1825, file: !1789, line: 126, baseType: !1828, size: 192)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, size: 192, elements: !991)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1825, file: !1789, line: 127, baseType: !1830, size: 4096, offset: 192)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, size: 4096, elements: !1617)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1825, file: !1789, line: 128, baseType: !97, size: 32, offset: 4288)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1825, file: !1789, line: 129, baseType: !1833, size: 16384, offset: 4320)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1834)
!1834 = !{!1835}
!1835 = !DISubrange(count: 2048)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1825, file: !1789, line: 130, baseType: !97, size: 32, offset: 20704)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1788, file: !1789, line: 69, baseType: !1838, size: 64, offset: 320)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1840)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1789, line: 116, size: 384, elements: !1841)
!1841 = !{!1842, !1846, !1868, !1961, !1992, !1996}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1840, file: !1789, line: 117, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{null, !1794}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1840, file: !1789, line: 118, baseType: !1847, size: 64, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1850, line: 254, size: 128, elements: !1851)
!1850 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1851 = !{!1852, !1864}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1849, file: !1850, line: 255, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!1856, !1794, !1858, !1094}
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !156, line: 66, baseType: !1857)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !463, line: 73, baseType: !1176)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1850, line: 30, size: 128, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1859, file: !1850, line: 31, baseType: !133, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1859, file: !1850, line: 32, baseType: !1863, size: 16, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !156, line: 24, baseType: !286)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1849, file: !1850, line: 256, baseType: !1865, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!1856, !1794, !1858, !133, !1063}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1840, file: !1789, line: 119, baseType: !1869, size: 64, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1872)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1850, line: 84, size: 320, elements: !1873)
!1873 = !{!1874, !1875, !1879, !1957, !1959}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1872, file: !1850, line: 85, baseType: !133, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1872, file: !1850, line: 86, baseType: !1876, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!1863, !1794, !1858, !97}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1872, file: !1850, line: 88, baseType: !1880, size: 64, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!1863, !1794, !1883, !97}
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1850, line: 175, size: 512, elements: !1885)
!1885 = !{!1886, !1887, !1888, !1889, !1893, !1899, !1900}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1884, file: !1850, line: 176, baseType: !1859, size: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1884, file: !1850, line: 177, baseType: !1063, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1884, file: !1850, line: 178, baseType: !98, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1884, file: !1850, line: 179, baseType: !1890, size: 64, offset: 256)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!1330}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1884, file: !1850, line: 180, baseType: !1894, size: 64, offset: 320)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!1856, !626, !1794, !1883, !1094, !1897, !1063}
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !156, line: 52, baseType: !1898)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !463, line: 88, baseType: !333)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1884, file: !1850, line: 182, baseType: !1894, size: 64, offset: 384)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1884, file: !1850, line: 184, baseType: !1901, size: 64, offset: 448)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!97, !626, !1794, !1883, !1904}
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !591, line: 625, size: 1344, elements: !1906)
!1906 = !{!1907, !1916, !1917, !1923, !1930, !1931, !1936, !1937, !1942, !1943, !1946, !1950, !1951, !1952, !1953, !1954, !1955}
!1907 = !DIDerivedType(tag: DW_TAG_member, scope: !1905, file: !591, line: 628, baseType: !1908, size: 128)
!1908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1905, file: !591, line: 628, size: 128, elements: !1909)
!1909 = !{!1910, !1915}
!1910 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !591, line: 629, baseType: !1911, size: 128)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1908, file: !591, line: 629, size: 128, elements: !1912)
!1912 = !{!1913, !1914}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1911, file: !591, line: 631, baseType: !94, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1911, file: !591, line: 632, baseType: !94, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1908, file: !591, line: 635, baseType: !930, size: 128, align: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1905, file: !591, line: 639, baseType: !589, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1905, file: !591, line: 640, baseType: !1918, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !628, line: 297, baseType: !1919)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !628, line: 297, size: 64, elements: !1920)
!1920 = !{!1921}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1919, file: !628, line: 297, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !641, line: 19, baseType: !94)
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1905, file: !591, line: 646, baseType: !1924, size: 64, offset: 256)
!1924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1905, file: !591, line: 646, size: 64, elements: !1925)
!1925 = !{!1926, !1929}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1924, file: !591, line: 647, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1928)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !591, line: 542, baseType: !94)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1924, file: !591, line: 648, baseType: !1928, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1905, file: !591, line: 666, baseType: !97, size: 32, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1905, file: !591, line: 667, baseType: !1932, size: 64, offset: 384)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !591, line: 579, size: 320, elements: !1934)
!1934 = !{!1935}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1933, file: !591, line: 580, baseType: !661, size: 320)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1905, file: !591, line: 670, baseType: !155, size: 8, offset: 448)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1905, file: !591, line: 681, baseType: !1938, size: 256, offset: 512)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !591, line: 678, size: 256, elements: !1939)
!1939 = !{!1940, !1941}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1938, file: !591, line: 679, baseType: !307, size: 192, align: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1938, file: !591, line: 680, baseType: !94, size: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1905, file: !591, line: 689, baseType: !320, size: 128, offset: 768)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1905, file: !591, line: 691, baseType: !1944, size: 64, offset: 896)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !591, line: 691, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1905, file: !591, line: 694, baseType: !1947, size: 64, offset: 960)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1949)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !591, line: 694, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1905, file: !591, line: 697, baseType: !94, size: 64, offset: 1024)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1905, file: !591, line: 699, baseType: !626, size: 64, offset: 1088)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1905, file: !591, line: 700, baseType: !98, size: 64, offset: 1152)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1905, file: !591, line: 711, baseType: !652, size: 64, offset: 1216)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1905, file: !591, line: 717, baseType: !1265, size: 64, offset: 1280)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1905, file: !591, line: 722, baseType: !1956, offset: 1344)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !591, line: 570, elements: !619)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1872, file: !1850, line: 90, baseType: !1958, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1872, file: !1850, line: 91, baseType: !1960, size: 64, offset: 256)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1840, file: !1789, line: 120, baseType: !1962, size: 64, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!1965, !1812}
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1967)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !42, line: 39, size: 384, elements: !1968)
!1968 = !{!1969, !1970, !1974, !1978, !1984, !1988}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1967, file: !42, line: 40, baseType: !41, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1967, file: !42, line: 41, baseType: !1971, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!155}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1967, file: !42, line: 42, baseType: !1975, size: 64, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!98}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1967, file: !42, line: 43, baseType: !1979, size: 64, offset: 192)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!753, !1982}
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !42, line: 19, flags: DIFlagFwdDecl)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1967, file: !42, line: 44, baseType: !1985, size: 64, offset: 256)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!753}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1967, file: !42, line: 45, baseType: !1989, size: 64, offset: 320)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !98}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1840, file: !1789, line: 121, baseType: !1993, size: 64, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!753, !1812}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1840, file: !1789, line: 122, baseType: !1997, size: 64, offset: 320)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{null, !1812, !2000, !2001}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1073, line: 28, baseType: !2003)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1073, line: 26, size: 32, elements: !2004)
!2004 = !{!2005}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2003, file: !1073, line: 27, baseType: !2006, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !156, line: 38, baseType: !2007)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !463, line: 50, baseType: !11)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1788, file: !1789, line: 70, baseType: !2009, size: 64, offset: 384)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2011, line: 190, size: 1152, elements: !2012)
!2011 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2012 = !{!2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2109, !2110, !2111, !2112, !2113, !2116}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2010, file: !2011, line: 191, baseType: !261, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2010, file: !2011, line: 192, baseType: !261, size: 32, offset: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2010, file: !2011, line: 202, baseType: !2009, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2010, file: !2011, line: 203, baseType: !133, size: 64, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2010, file: !2011, line: 205, baseType: !307, size: 192, align: 64, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2010, file: !2011, line: 207, baseType: !753, size: 64, offset: 384)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2010, file: !2011, line: 208, baseType: !11, size: 32, offset: 448)
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !2010, file: !2011, line: 209, baseType: !2021, size: 256, offset: 512)
!2021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2010, file: !2011, line: 209, size: 256, elements: !2022)
!2022 = !{!2023, !2032, !2036}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2021, file: !2011, line: 210, baseType: !2024, size: 256)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2011, line: 153, size: 256, elements: !2025)
!2025 = !{!2026, !2027, !2028, !2031}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2024, file: !2011, line: 154, baseType: !94, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2024, file: !2011, line: 156, baseType: !482, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2024, file: !2011, line: 162, baseType: !2029, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2011, line: 162, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2024, file: !2011, line: 167, baseType: !94, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2021, file: !2011, line: 211, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2011, line: 170, size: 64, elements: !2034)
!2034 = !{!2035}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2033, file: !2011, line: 171, baseType: !2009, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2021, file: !2011, line: 212, baseType: !2037, size: 256)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2011, line: 174, size: 256, elements: !2038)
!2038 = !{!2039, !2104, !2107, !2108}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2037, file: !2011, line: 175, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2042)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2011, line: 271, size: 768, elements: !2043)
!2043 = !{!2044, !2064, !2068, !2072, !2077, !2081, !2085, !2089, !2090, !2091, !2092, !2100}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2042, file: !2011, line: 276, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!97, !2048}
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2011, line: 251, size: 1216, elements: !2050)
!2050 = !{!2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2049, file: !2011, line: 253, baseType: !2009, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2049, file: !2011, line: 254, baseType: !626, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2049, file: !2011, line: 255, baseType: !177, size: 64, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2049, file: !2011, line: 256, baseType: !98, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2049, file: !2011, line: 259, baseType: !732, size: 256, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2049, file: !2011, line: 260, baseType: !732, size: 256, offset: 512)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2049, file: !2011, line: 261, baseType: !97, size: 32, offset: 768)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2049, file: !2011, line: 262, baseType: !320, size: 128, offset: 832)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2049, file: !2011, line: 263, baseType: !1094, size: 64, offset: 960)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2049, file: !2011, line: 265, baseType: !1063, size: 64, offset: 1024)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2049, file: !2011, line: 266, baseType: !155, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2049, file: !2011, line: 267, baseType: !155, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2049, file: !2011, line: 268, baseType: !1947, size: 64, offset: 1152)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2042, file: !2011, line: 277, baseType: !2065, size: 64, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !2048}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2042, file: !2011, line: 290, baseType: !2069, size: 64, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!97, !177, !98}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2042, file: !2011, line: 292, baseType: !2073, size: 64, offset: 192)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!98, !177, !2076}
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2042, file: !2011, line: 293, baseType: !2078, size: 64, offset: 256)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!98, !177, !98, !2076}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2042, file: !2011, line: 294, baseType: !2082, size: 64, offset: 320)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{null, !177, !98}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2042, file: !2011, line: 296, baseType: !2086, size: 64, offset: 384)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!1856, !2048, !1094, !1063, !1897}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2042, file: !2011, line: 306, baseType: !1063, size: 64, offset: 448)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2042, file: !2011, line: 313, baseType: !155, size: 8, offset: 512)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2042, file: !2011, line: 314, baseType: !2086, size: 64, offset: 576)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2042, file: !2011, line: 317, baseType: !2093, size: 64, offset: 640)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!2096, !2048, !2098}
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2097, line: 59, baseType: !11)
!2097 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2011, line: 31, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2042, file: !2011, line: 320, baseType: !2101, size: 64, offset: 704)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!97, !2048, !1904}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2037, file: !2011, line: 176, baseType: !2105, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2011, line: 35, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2037, file: !2011, line: 177, baseType: !1897, size: 64, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2037, file: !2011, line: 178, baseType: !2009, size: 64, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2010, file: !2011, line: 215, baseType: !98, size: 64, offset: 768)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2010, file: !2011, line: 221, baseType: !315, size: 64, offset: 832)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2010, file: !2011, line: 223, baseType: !286, size: 16, offset: 896)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2010, file: !2011, line: 224, baseType: !1863, size: 16, offset: 912)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2010, file: !2011, line: 225, baseType: !2114, size: 64, offset: 960)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2011, line: 36, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2010, file: !2011, line: 227, baseType: !930, size: 128, align: 64, offset: 1024)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1788, file: !1789, line: 71, baseType: !1763, size: 32, offset: 448)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1788, file: !1789, line: 73, baseType: !11, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1788, file: !1789, line: 74, baseType: !11, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1788, file: !1789, line: 75, baseType: !11, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1788, file: !1789, line: 76, baseType: !11, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1788, file: !1789, line: 77, baseType: !11, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !100, file: !101, line: 101, baseType: !732, size: 256, offset: 2816)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !100, file: !101, line: 102, baseType: !97, size: 32, offset: 3072)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !100, file: !101, line: 103, baseType: !2126, size: 64, offset: 3136)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !48, line: 402, size: 9216, align: 512, elements: !2128)
!2128 = !{!2129, !2130, !2131, !2135, !2145, !2171, !2172, !2173, !2174, !2178, !2181, !2182, !2183, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2250, !2254, !2274, !2291, !2292, !2293, !2294, !2303, !2326, !2327, !2330, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2344, !2345, !2434, !2442, !2443, !2444, !2446, !2450, !2451, !2455, !2456, !2457, !2458, !2460, !2461, !2462, !2469, !2470, !2471, !2475}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2127, file: !48, line: 403, baseType: !47, size: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2127, file: !48, line: 406, baseType: !320, size: 128, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2127, file: !48, line: 409, baseType: !2132, size: 448, offset: 192)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !2133)
!2133 = !{!2134}
!2134 = !DISubrange(count: 56)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !2127, file: !48, line: 417, baseType: !2136, size: 768, offset: 640)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !48, line: 45, size: 768, elements: !2137)
!2137 = !{!2138, !2139, !2140, !2141, !2144}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2136, file: !48, line: 46, baseType: !1788, size: 512)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2136, file: !48, line: 47, baseType: !2126, size: 64, offset: 512)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !2136, file: !48, line: 48, baseType: !1794, size: 64, offset: 576)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !2136, file: !48, line: 49, baseType: !2142, size: 64, offset: 640)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !48, line: 49, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !2136, file: !48, line: 50, baseType: !951, size: 64, offset: 704)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !2127, file: !48, line: 418, baseType: !2146, size: 64, offset: 1408)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !48, line: 53, size: 448, elements: !2148)
!2148 = !{!2149, !2150, !2155, !2159, !2163, !2167}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2147, file: !48, line: 54, baseType: !1859, size: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2147, file: !48, line: 55, baseType: !2151, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!1856, !2146, !2154, !1094}
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2147, file: !48, line: 57, baseType: !2156, size: 64, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!1856, !2146, !2154, !133, !1063}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2147, file: !48, line: 59, baseType: !2160, size: 64, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{null, !2126, !133}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2147, file: !48, line: 60, baseType: !2164, size: 64, offset: 320)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!97, !2126}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2147, file: !48, line: 61, baseType: !2168, size: 64, offset: 384)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{null, !2126}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2127, file: !48, line: 419, baseType: !133, size: 64, offset: 1472)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !2127, file: !48, line: 420, baseType: !133, size: 64, offset: 1536)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !2127, file: !48, line: 421, baseType: !1794, size: 64, offset: 1600)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !2127, file: !48, line: 424, baseType: !2175, size: 64, offset: 1664)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2177)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !48, line: 424, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !2127, file: !48, line: 425, baseType: !2179, size: 64, offset: 1728)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !2127, file: !48, line: 426, baseType: !11, size: 32, offset: 1792)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !2127, file: !48, line: 435, baseType: !732, size: 256, offset: 1856)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !2127, file: !48, line: 437, baseType: !2184, size: 64, offset: 2112)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2186, line: 69, size: 320, elements: !2187)
!2186 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2187 = !{!2188, !2189, !2190, !2207, !2209, !2213, !2214}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2185, file: !2186, line: 70, baseType: !133, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2185, file: !2186, line: 71, baseType: !2126, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2185, file: !2186, line: 72, baseType: !2191, size: 64, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2193)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2186, line: 47, size: 256, elements: !2194)
!2194 = !{!2195, !2196, !2202, !2206}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2193, file: !2186, line: 49, baseType: !11, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2193, file: !2186, line: 51, baseType: !2197, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!97, !133, !2200}
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2185)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2193, file: !2186, line: 53, baseType: !2203, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!97, !1094, !2200}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2193, file: !2186, line: 55, baseType: !1989, size: 64, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2185, file: !2186, line: 73, baseType: !2208, size: 16, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2185, file: !2186, line: 74, baseType: !2210, size: 8, offset: 208)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !121, line: 16, baseType: !2211)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !123, line: 20, baseType: !2212)
!2212 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2185, file: !2186, line: 75, baseType: !430, size: 8, offset: 216)
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2185, file: !2186, line: 76, baseType: !2215, size: 64, offset: 256)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2185, file: !2186, line: 76, size: 64, elements: !2216)
!2216 = !{!2217, !2218, !2225}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2215, file: !2186, line: 77, baseType: !98, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2215, file: !2186, line: 78, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2186, line: 86, size: 128, elements: !2222)
!2222 = !{!2223, !2224}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2221, file: !2186, line: 87, baseType: !11, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2221, file: !2186, line: 88, baseType: !1094, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2215, file: !2186, line: 79, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2228)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2186, line: 92, size: 256, elements: !2229)
!2229 = !{!2230, !2231, !2232, !2233, !2234}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2228, file: !2186, line: 94, baseType: !11, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2228, file: !2186, line: 95, baseType: !11, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2228, file: !2186, line: 96, baseType: !219, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2228, file: !2186, line: 97, baseType: !2191, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2228, file: !2186, line: 98, baseType: !98, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !2127, file: !48, line: 438, baseType: !11, size: 32, offset: 2176)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !2127, file: !48, line: 441, baseType: !11, size: 32, offset: 2208)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !2127, file: !48, line: 442, baseType: !2175, size: 64, offset: 2240)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !2127, file: !48, line: 443, baseType: !2179, size: 64, offset: 2304)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !2127, file: !48, line: 444, baseType: !155, size: 8, offset: 2368)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !2127, file: !48, line: 451, baseType: !155, size: 8, offset: 2376)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !2127, file: !48, line: 454, baseType: !11, size: 32, offset: 2400)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2127, file: !48, line: 455, baseType: !2243, size: 64, offset: 2432)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2245, line: 23, size: 96, elements: !2246)
!2245 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2246 = !{!2247, !2248, !2249}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2244, file: !2245, line: 24, baseType: !97, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2244, file: !2245, line: 24, baseType: !97, size: 32, offset: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2244, file: !2245, line: 24, baseType: !97, size: 32, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2127, file: !48, line: 458, baseType: !2251, size: 64, offset: 2496)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!97}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2127, file: !48, line: 460, baseType: !2255, size: 4032, align: 512, offset: 2560)
!2255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2256, size: 4032, elements: !2272)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !48, line: 362, size: 576, elements: !2257)
!2257 = !{!2258, !2259, !2260}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2256, file: !48, line: 363, baseType: !98, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2256, file: !48, line: 364, baseType: !11, size: 32, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2256, file: !48, line: 367, baseType: !2261, size: 448, offset: 128)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !48, line: 319, size: 448, elements: !2262)
!2262 = !{!2263, !2264}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2261, file: !48, line: 320, baseType: !2126, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2261, file: !48, line: 321, baseType: !2265, size: 384, offset: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2266, line: 40, size: 384, elements: !2267)
!2266 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2267 = !{!2268}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2265, file: !2266, line: 41, baseType: !2269, size: 384, align: 64)
!2269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 384, align: 64, elements: !2270)
!2270 = !{!2271}
!2271 = !DISubrange(count: 2)
!2272 = !{!2273}
!2273 = !DISubrange(count: 7)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2127, file: !48, line: 463, baseType: !2275, size: 192, offset: 6592)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2276, line: 8, size: 192, elements: !2277)
!2276 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2277 = !{!2278, !2279, !2280}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2275, file: !2276, line: 10, baseType: !11, size: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2275, file: !2276, line: 11, baseType: !963, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2275, file: !2276, line: 12, baseType: !2281, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2283, line: 59, size: 48, elements: !2284)
!2283 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2284 = !{!2285, !2286, !2287, !2288, !2289, !2290}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2282, file: !2283, line: 60, baseType: !771, size: 16)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2282, file: !2283, line: 61, baseType: !771, size: 16, offset: 16)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2282, file: !2283, line: 63, baseType: !11, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2282, file: !2283, line: 64, baseType: !11, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2282, file: !2283, line: 65, baseType: !11, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2282, file: !2283, line: 66, baseType: !11, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !2127, file: !48, line: 465, baseType: !94, size: 64, offset: 6784)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !2127, file: !48, line: 469, baseType: !11, size: 32, offset: 6848)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !2127, file: !48, line: 470, baseType: !320, size: 128, offset: 6912)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !2127, file: !48, line: 471, baseType: !2295, size: 64, offset: 7040)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2297, line: 33, size: 96, elements: !2298)
!2297 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2298 = !{!2299, !2300, !2301, !2302}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2296, file: !2297, line: 37, baseType: !97, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2296, file: !2297, line: 43, baseType: !97, size: 32, offset: 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2296, file: !2297, line: 45, baseType: !286, size: 16, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2296, file: !2297, line: 47, baseType: !286, size: 16, offset: 80)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !2127, file: !48, line: 476, baseType: !2304, size: 64, offset: 7104)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !48, line: 378, size: 256, elements: !2306)
!2306 = !{!2307, !2323, !2324, !2325}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2305, file: !48, line: 379, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2310, line: 204, baseType: !2311)
!2310 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2310, line: 197, size: 192, elements: !2312)
!2312 = !{!2313, !2315, !2316, !2317, !2319, !2321}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2311, file: !2310, line: 198, baseType: !2314, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2310, line: 21, baseType: !122)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2311, file: !2310, line: 199, baseType: !432, size: 8, offset: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2311, file: !2310, line: 200, baseType: !432, size: 8, offset: 40)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2311, file: !2310, line: 201, baseType: !2318, size: 16, offset: 48)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2310, line: 17, baseType: !285)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2311, file: !2310, line: 202, baseType: !2320, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2310, line: 16, baseType: !316)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2311, file: !2310, line: 203, baseType: !2322, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2310, line: 22, baseType: !316)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2305, file: !48, line: 380, baseType: !11, size: 32, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2305, file: !48, line: 381, baseType: !1094, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2305, file: !48, line: 382, baseType: !1094, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !2127, file: !48, line: 477, baseType: !2305, size: 256, offset: 7168)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !2127, file: !48, line: 480, baseType: !2328, size: 64, offset: 7424)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !48, line: 480, flags: DIFlagFwdDecl)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !2127, file: !48, line: 483, baseType: !2331, size: 64, offset: 7488)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !48, line: 483, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2127, file: !48, line: 488, baseType: !1094, size: 64, offset: 7552)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !2127, file: !48, line: 492, baseType: !98, size: 64, offset: 7616)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !2127, file: !48, line: 493, baseType: !11, size: 32, offset: 7680)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !2127, file: !48, line: 495, baseType: !98, size: 64, offset: 7744)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !2127, file: !48, line: 496, baseType: !11, size: 32, offset: 7808)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !2127, file: !48, line: 499, baseType: !11, size: 32, offset: 7840)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !2127, file: !48, line: 500, baseType: !2340, size: 64, offset: 7872)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2342, line: 45, baseType: !2343)
!2342 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !2127, file: !48, line: 503, baseType: !11, size: 32, offset: 7936)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !2127, file: !48, line: 504, baseType: !2346, size: 64, offset: 8000)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2349, line: 96, size: 192, elements: !2350)
!2349 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2350 = !{!2351, !2352, !2395, !2398}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2348, file: !2349, line: 97, baseType: !11, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2348, file: !2349, line: 98, baseType: !2353, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2349, line: 24, size: 3072, elements: !2355)
!2355 = !{!2356, !2358, !2359, !2360, !2361, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2392, !2393, !2394}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2354, file: !2349, line: 26, baseType: !2357, size: 128)
!2357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 128, elements: !2270)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2354, file: !2349, line: 27, baseType: !2357, size: 128, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2354, file: !2349, line: 28, baseType: !97, size: 32, offset: 256)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2354, file: !2349, line: 31, baseType: !608, size: 32, align: 512, offset: 512)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2354, file: !2349, line: 32, baseType: !2362, size: 960, offset: 576)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2363, line: 206, size: 960, elements: !2364)
!2363 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2364 = !{!2365, !2366, !2369, !2371, !2372, !2374}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2362, file: !2363, line: 207, baseType: !933, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2362, file: !2363, line: 208, baseType: !2367, size: 256, offset: 64)
!2367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2368, size: 256, elements: !713)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2362, file: !2363, line: 209, baseType: !2370, size: 256, offset: 320)
!2370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 256, elements: !713)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2362, file: !2363, line: 213, baseType: !756, size: 64, offset: 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2362, file: !2363, line: 215, baseType: !2373, size: 256, offset: 640)
!2373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 256, elements: !713)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2362, file: !2363, line: 216, baseType: !430, size: 8, offset: 896)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2354, file: !2349, line: 33, baseType: !94, size: 64, offset: 1536)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2354, file: !2349, line: 34, baseType: !94, size: 64, offset: 1600)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2354, file: !2349, line: 35, baseType: !155, size: 8, offset: 1664)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2354, file: !2349, line: 36, baseType: !1463, size: 320, offset: 1728)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2354, file: !2349, line: 37, baseType: !796, size: 256, offset: 2048)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2354, file: !2349, line: 38, baseType: !930, size: 128, align: 64, offset: 2304)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2354, file: !2349, line: 39, baseType: !2382, size: 64, offset: 2432)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2349, line: 49, size: 768, elements: !2384)
!2384 = !{!2385, !2386, !2387, !2388, !2389, !2390, !2391}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2383, file: !2349, line: 50, baseType: !608, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2383, file: !2349, line: 51, baseType: !2370, size: 256, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2383, file: !2349, line: 53, baseType: !2370, size: 256, offset: 320)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2383, file: !2349, line: 54, baseType: !94, size: 64, offset: 576)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2383, file: !2349, line: 55, baseType: !2382, size: 64, offset: 640)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2383, file: !2349, line: 56, baseType: !97, size: 32, offset: 704)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2383, file: !2349, line: 57, baseType: !97, size: 32, offset: 736)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2354, file: !2349, line: 40, baseType: !94, size: 64, offset: 2496)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2354, file: !2349, line: 42, baseType: !97, size: 32, offset: 2560)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2354, file: !2349, line: 43, baseType: !2347, size: 64, offset: 2624)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2348, file: !2349, line: 99, baseType: !2396, offset: 128)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2397, line: 211, elements: !619)
!2397 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2348, file: !2349, line: 100, baseType: !2399, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2349, line: 63, size: 3008, elements: !2401)
!2401 = !{!2402, !2403, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2433}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2400, file: !2349, line: 64, baseType: !2382, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2400, file: !2349, line: 65, baseType: !2404, size: 192, offset: 64)
!2404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2382, size: 192, elements: !991)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2400, file: !2349, line: 67, baseType: !97, size: 32, offset: 256)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2400, file: !2349, line: 68, baseType: !732, size: 256, offset: 320)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2400, file: !2349, line: 69, baseType: !608, size: 32, offset: 576)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2400, file: !2349, line: 70, baseType: !732, size: 256, offset: 640)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2400, file: !2349, line: 71, baseType: !94, size: 64, offset: 896)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2400, file: !2349, line: 72, baseType: !94, size: 64, offset: 960)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2400, file: !2349, line: 73, baseType: !94, size: 64, offset: 1024)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2400, file: !2349, line: 74, baseType: !94, size: 64, offset: 1088)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2400, file: !2349, line: 75, baseType: !94, size: 64, offset: 1152)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2400, file: !2349, line: 76, baseType: !94, size: 64, offset: 1216)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2400, file: !2349, line: 77, baseType: !94, size: 64, offset: 1280)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2400, file: !2349, line: 78, baseType: !94, size: 64, offset: 1344)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2400, file: !2349, line: 79, baseType: !155, size: 8, offset: 1408)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2400, file: !2349, line: 80, baseType: !94, size: 64, offset: 1472)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2400, file: !2349, line: 81, baseType: !732, size: 256, offset: 1536)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2400, file: !2349, line: 82, baseType: !952, size: 256, offset: 1792)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2400, file: !2349, line: 84, baseType: !261, size: 32, offset: 2048)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2400, file: !2349, line: 87, baseType: !94, size: 64, offset: 2112)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2400, file: !2349, line: 88, baseType: !94, size: 64, offset: 2176)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2400, file: !2349, line: 89, baseType: !2425, size: 704, offset: 2240)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !797, line: 111, size: 704, elements: !2426)
!2426 = !{!2427, !2428, !2429, !2432}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2425, file: !797, line: 112, baseType: !796, size: 256)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2425, file: !797, line: 113, baseType: !1463, size: 320, offset: 256)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2425, file: !797, line: 116, baseType: !2430, size: 64, offset: 576)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !797, line: 18, flags: DIFlagFwdDecl)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2425, file: !797, line: 117, baseType: !97, size: 32, offset: 640)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2400, file: !2349, line: 90, baseType: !2347, size: 64, offset: 2944)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !2127, file: !48, line: 515, baseType: !2435, size: 64, offset: 8064)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2437, line: 117, size: 128, elements: !2438)
!2437 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2438 = !{!2439, !2440, !2441}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2436, file: !2437, line: 118, baseType: !711, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2436, file: !2437, line: 119, baseType: !711, size: 32, offset: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2436, file: !2437, line: 120, baseType: !756, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !2127, file: !48, line: 516, baseType: !11, size: 32, offset: 8128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !2127, file: !48, line: 519, baseType: !11, size: 32, offset: 8160)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !2127, file: !48, line: 520, baseType: !2445, size: 64, offset: 8192)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !2127, file: !48, line: 523, baseType: !2447, size: 64, offset: 8256)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !48, line: 523, flags: DIFlagFwdDecl)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !2127, file: !48, line: 524, baseType: !11, size: 32, offset: 8320)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !2127, file: !48, line: 525, baseType: !2452, size: 64, offset: 8384)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !48, line: 525, flags: DIFlagFwdDecl)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !2127, file: !48, line: 526, baseType: !11, size: 32, offset: 8448)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !2127, file: !48, line: 533, baseType: !98, size: 64, offset: 8512)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !2127, file: !48, line: 534, baseType: !11, size: 32, offset: 8576)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !2127, file: !48, line: 535, baseType: !2459, size: 64, offset: 8640)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !2127, file: !48, line: 536, baseType: !11, size: 32, offset: 8704)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !2127, file: !48, line: 539, baseType: !97, size: 32, offset: 8736)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !2127, file: !48, line: 540, baseType: !2463, size: 64, offset: 8768)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2465, line: 32, size: 64, elements: !2466)
!2465 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2466 = !{!2467, !2468}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2464, file: !2465, line: 33, baseType: !711, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2464, file: !2465, line: 34, baseType: !711, size: 32, offset: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !2127, file: !48, line: 563, baseType: !320, size: 128, offset: 8832)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !2127, file: !48, line: 565, baseType: !320, size: 128, offset: 8960)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2127, file: !48, line: 568, baseType: !2472, size: 64, offset: 9088)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{null}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2127, file: !48, line: 570, baseType: !261, size: 32, offset: 9152)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !100, file: !101, line: 104, baseType: !133, size: 64, offset: 3200)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "resend_node", scope: !100, file: !101, line: 106, baseType: !916, size: 128, offset: 3264)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2480)
!2480 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !97)
!2481 = !{!0}
!2482 = !{i32 7, !"Dwarf Version", i32 5}
!2483 = !{i32 2, !"Debug Info Version", i32 3}
!2484 = !{i32 1, !"wchar_size", i32 2}
!2485 = !{i32 8, !"cf-protection-branch", i32 1}
!2486 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2487 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2488 = !{i32 1, !"Code Model", i32 2}
!2489 = !{i32 1, !"override-stack-alignment", i32 8}
!2490 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2491 = distinct !DISubprogram(name: "irq_fixup_move_pending", scope: !2, file: !2, line: 18, type: !2492, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2494)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!155, !99, !155}
!2494 = !{!2495, !2496, !2497}
!2495 = !DILocalVariable(name: "desc", arg: 1, scope: !2491, file: !2, line: 18, type: !99)
!2496 = !DILocalVariable(name: "force_clear", arg: 2, scope: !2491, file: !2, line: 18, type: !155)
!2497 = !DILocalVariable(name: "data", scope: !2491, file: !2, line: 20, type: !139)
!2498 = !DILocation(line: 18, column: 46, scope: !2491)
!2499 = !DILocation(line: 18, column: 57, scope: !2491)
!2500 = !DILocation(line: 20, column: 2, scope: !2491)
!2501 = !DILocation(line: 20, column: 19, scope: !2491)
!2502 = !DILocation(line: 20, column: 48, scope: !2491)
!2503 = !DILocation(line: 20, column: 26, scope: !2491)
!2504 = !DILocation(line: 22, column: 35, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 22, column: 6)
!2506 = !DILocation(line: 22, column: 7, scope: !2505)
!2507 = !DILocation(line: 22, column: 6, scope: !2491)
!2508 = !DILocation(line: 23, column: 3, scope: !2505)
!2509 = !DILocation(line: 29, column: 6, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 29, column: 6)
!2511 = !DILocation(line: 29, column: 62, scope: !2510)
!2512 = !DILocation(line: 29, column: 59, scope: !2510)
!2513 = !DILocation(line: 29, column: 6, scope: !2491)
!2514 = !DILocation(line: 30, column: 25, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2510, file: !2, line: 29, column: 74)
!2516 = !DILocation(line: 30, column: 3, scope: !2515)
!2517 = !DILocation(line: 31, column: 3, scope: !2515)
!2518 = !DILocation(line: 33, column: 6, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2491, file: !2, line: 33, column: 6)
!2520 = !{i8 0, i8 2}
!2521 = !DILocation(line: 33, column: 6, scope: !2491)
!2522 = !DILocation(line: 34, column: 25, scope: !2519)
!2523 = !DILocation(line: 34, column: 3, scope: !2519)
!2524 = !DILocation(line: 35, column: 2, scope: !2491)
!2525 = !DILocation(line: 36, column: 1, scope: !2491)
!2526 = distinct !DISubprogram(name: "irq_desc_get_irq_data", scope: !101, file: !101, line: 135, type: !2527, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!139, !99}
!2529 = !{!2530}
!2530 = !DILocalVariable(name: "desc", arg: 1, scope: !2526, file: !101, line: 135, type: !99)
!2531 = !DILocation(line: 135, column: 71, scope: !2526)
!2532 = !DILocation(line: 137, column: 10, scope: !2526)
!2533 = !DILocation(line: 137, column: 16, scope: !2526)
!2534 = !DILocation(line: 137, column: 2, scope: !2526)
!2535 = distinct !DISubprogram(name: "irqd_is_setaffinity_pending", scope: !60, file: !60, line: 256, type: !2536, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2538)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!155, !139}
!2538 = !{!2539}
!2539 = !DILocalVariable(name: "d", arg: 1, scope: !2535, file: !60, line: 256, type: !139)
!2540 = !DILocation(line: 256, column: 65, scope: !2535)
!2541 = !DILocation(line: 258, column: 9, scope: !2535)
!2542 = !DILocation(line: 258, column: 28, scope: !2535)
!2543 = !DILocation(line: 258, column: 2, scope: !2535)
!2544 = distinct !DISubprogram(name: "cpumask_first_and", scope: !90, file: !90, line: 184, type: !2545, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!11, !87, !87}
!2547 = !{!2548, !2549}
!2548 = !DILocalVariable(name: "srcp1", arg: 1, scope: !2544, file: !90, line: 184, type: !87)
!2549 = !DILocalVariable(name: "srcp2", arg: 2, scope: !2544, file: !90, line: 184, type: !87)
!2550 = !DILocation(line: 184, column: 54, scope: !2544)
!2551 = !DILocation(line: 184, column: 83, scope: !2544)
!2552 = !DILocation(line: 186, column: 28, scope: !2544)
!2553 = !DILocation(line: 186, column: 49, scope: !2544)
!2554 = !DILocation(line: 186, column: 9, scope: !2544)
!2555 = !DILocation(line: 186, column: 2, scope: !2544)
!2556 = distinct !DISubprogram(name: "irqd_clr_move_pending", scope: !2557, file: !2557, line: 217, type: !142, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2558)
!2557 = !DIFile(filename: "kernel/irq/internals.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1a83a6391bcc5e0feb0932e94d9f4c16")
!2558 = !{!2559}
!2559 = !DILocalVariable(name: "d", arg: 1, scope: !2556, file: !2557, line: 217, type: !139)
!2560 = !DILocation(line: 217, column: 59, scope: !2556)
!2561 = !DILocation(line: 219, column: 2, scope: !2556)
!2562 = !DILocation(line: 219, column: 21, scope: !2556)
!2563 = !DILocation(line: 220, column: 1, scope: !2556)
!2564 = distinct !DISubprogram(name: "irq_move_masked_irq", scope: !2, file: !2, line: 38, type: !142, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2565)
!2565 = !{!2566, !2567, !2568, !2569, !2570, !2574, !2577}
!2566 = !DILocalVariable(name: "idata", arg: 1, scope: !2564, file: !2, line: 38, type: !139)
!2567 = !DILocalVariable(name: "desc", scope: !2564, file: !2, line: 40, type: !99)
!2568 = !DILocalVariable(name: "data", scope: !2564, file: !2, line: 41, type: !139)
!2569 = !DILocalVariable(name: "chip", scope: !2564, file: !2, line: 42, type: !129)
!2570 = !DILocalVariable(name: "__ret_warn_on", scope: !2571, file: !2, line: 53, type: !97)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !2, line: 53, column: 3)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !2, line: 52, column: 29)
!2573 = distinct !DILexicalBlock(scope: !2564, file: !2, line: 52, column: 6)
!2574 = !DILocalVariable(name: "__flags", scope: !2575, file: !2, line: 53, type: !97)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !2, line: 53, column: 3)
!2576 = distinct !DILexicalBlock(scope: !2571, file: !2, line: 53, column: 3)
!2577 = !DILocalVariable(name: "ret", scope: !2578, file: !2, line: 78, type: !97)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !2, line: 77, column: 73)
!2579 = distinct !DILexicalBlock(scope: !2564, file: !2, line: 77, column: 6)
!2580 = !DILocation(line: 38, column: 43, scope: !2564)
!2581 = !DILocation(line: 40, column: 2, scope: !2564)
!2582 = !DILocation(line: 40, column: 19, scope: !2564)
!2583 = !DILocation(line: 40, column: 43, scope: !2564)
!2584 = !DILocation(line: 40, column: 26, scope: !2564)
!2585 = !DILocation(line: 41, column: 2, scope: !2564)
!2586 = !DILocation(line: 41, column: 19, scope: !2564)
!2587 = !DILocation(line: 41, column: 27, scope: !2564)
!2588 = !DILocation(line: 41, column: 33, scope: !2564)
!2589 = !DILocation(line: 42, column: 2, scope: !2564)
!2590 = !DILocation(line: 42, column: 19, scope: !2564)
!2591 = !DILocation(line: 42, column: 26, scope: !2564)
!2592 = !DILocation(line: 42, column: 32, scope: !2564)
!2593 = !DILocation(line: 44, column: 6, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2564, file: !2, line: 44, column: 6)
!2595 = !DILocation(line: 44, column: 6, scope: !2564)
!2596 = !DILocation(line: 45, column: 3, scope: !2594)
!2597 = !DILocation(line: 47, column: 24, scope: !2564)
!2598 = !DILocation(line: 47, column: 2, scope: !2564)
!2599 = !DILocation(line: 52, column: 22, scope: !2573)
!2600 = !DILocation(line: 52, column: 6, scope: !2573)
!2601 = !DILocation(line: 52, column: 6, scope: !2564)
!2602 = !DILocation(line: 53, column: 3, scope: !2571)
!2603 = !DILocation(line: 53, column: 3, scope: !2576)
!2604 = !DILocation(line: 53, column: 3, scope: !2575)
!2605 = !DILocation(line: 53, column: 3, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2575, file: !2, line: 53, column: 3)
!2607 = !DILocation(line: 53, column: 3, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2575, file: !2, line: 53, column: 3)
!2609 = !{i64 2153058217, i64 2153058246, i64 2153058292, i64 2153058350, i64 2153058404, i64 2153058458, i64 2153058513, i64 2153058544, i64 2153058852, i64 2153058858, i64 2153058905, i64 2153058928, i64 2153058954}
!2610 = !DILocation(line: 53, column: 3, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2575, file: !2, line: 53, column: 3)
!2612 = !DILocation(line: 53, column: 3, scope: !2572)
!2613 = !DILocation(line: 54, column: 3, scope: !2572)
!2614 = !DILocation(line: 57, column: 6, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2564, file: !2, line: 57, column: 6)
!2616 = !DILocation(line: 57, column: 6, scope: !2564)
!2617 = !DILocation(line: 58, column: 3, scope: !2615)
!2618 = !DILocation(line: 60, column: 7, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2564, file: !2, line: 60, column: 6)
!2620 = !DILocation(line: 60, column: 13, scope: !2619)
!2621 = !DILocation(line: 60, column: 6, scope: !2564)
!2622 = !DILocation(line: 61, column: 3, scope: !2619)
!2623 = !DILocation(line: 63, column: 2, scope: !2564)
!2624 = !DILocation(line: 63, column: 2, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !2, line: 63, column: 2)
!2626 = distinct !DILexicalBlock(scope: !2564, file: !2, line: 63, column: 2)
!2627 = !DILocation(line: 63, column: 2, scope: !2626)
!2628 = !DILocation(line: 63, column: 2, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2625, file: !2, line: 63, column: 2)
!2630 = !DILocation(line: 63, column: 2, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2629, file: !2, line: 63, column: 2)
!2632 = !DILocation(line: 63, column: 2, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2629, file: !2, line: 63, column: 2)
!2634 = !{i64 2153059764, i64 2153059793, i64 2153059839, i64 2153059897, i64 2153059951, i64 2153060005, i64 2153060060, i64 2153060091}
!2635 = !DILocation(line: 77, column: 6, scope: !2579)
!2636 = !DILocation(line: 77, column: 61, scope: !2579)
!2637 = !DILocation(line: 77, column: 59, scope: !2579)
!2638 = !DILocation(line: 77, column: 6, scope: !2564)
!2639 = !DILocation(line: 78, column: 3, scope: !2578)
!2640 = !DILocation(line: 78, column: 7, scope: !2578)
!2641 = !DILocation(line: 80, column: 29, scope: !2578)
!2642 = !DILocation(line: 80, column: 35, scope: !2578)
!2643 = !DILocation(line: 80, column: 41, scope: !2578)
!2644 = !DILocation(line: 80, column: 9, scope: !2578)
!2645 = !DILocation(line: 80, column: 7, scope: !2578)
!2646 = !DILocation(line: 86, column: 7, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2578, file: !2, line: 86, column: 7)
!2648 = !DILocation(line: 86, column: 11, scope: !2647)
!2649 = !DILocation(line: 86, column: 7, scope: !2578)
!2650 = !DILocation(line: 87, column: 26, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2647, file: !2, line: 86, column: 22)
!2652 = !DILocation(line: 87, column: 4, scope: !2651)
!2653 = !DILocation(line: 88, column: 4, scope: !2651)
!2654 = !DILocation(line: 90, column: 2, scope: !2579)
!2655 = !DILocation(line: 90, column: 2, scope: !2578)
!2656 = !DILocation(line: 91, column: 16, scope: !2564)
!2657 = !DILocation(line: 91, column: 22, scope: !2564)
!2658 = !DILocation(line: 91, column: 2, scope: !2564)
!2659 = !DILocation(line: 92, column: 1, scope: !2564)
!2660 = distinct !DISubprogram(name: "irq_data_to_desc", scope: !101, file: !101, line: 125, type: !2661, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2663)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!99, !139}
!2663 = !{!2664, !2665}
!2664 = !DILocalVariable(name: "data", arg: 1, scope: !2660, file: !101, line: 125, type: !139)
!2665 = !DILocalVariable(name: "__mptr", scope: !2666, file: !101, line: 127, type: !98)
!2666 = distinct !DILexicalBlock(scope: !2660, file: !101, line: 127, column: 9)
!2667 = !DILocation(line: 125, column: 66, scope: !2660)
!2668 = !DILocation(line: 127, column: 9, scope: !2666)
!2669 = !DILocation(line: 127, column: 9, scope: !2660)
!2670 = !DILocation(line: 127, column: 2, scope: !2660)
!2671 = distinct !DISubprogram(name: "irqd_is_per_cpu", scope: !60, file: !60, line: 261, type: !2536, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2672)
!2672 = !{!2673}
!2673 = !DILocalVariable(name: "d", arg: 1, scope: !2671, file: !60, line: 261, type: !139)
!2674 = !DILocation(line: 261, column: 53, scope: !2671)
!2675 = !DILocation(line: 263, column: 9, scope: !2671)
!2676 = !DILocation(line: 263, column: 28, scope: !2671)
!2677 = !DILocation(line: 263, column: 2, scope: !2671)
!2678 = distinct !DISubprogram(name: "cpumask_empty", scope: !90, file: !90, line: 672, type: !2679, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!155, !87}
!2681 = !{!2682}
!2682 = !DILocalVariable(name: "srcp", arg: 1, scope: !2678, file: !90, line: 672, type: !87)
!2683 = !DILocation(line: 672, column: 56, scope: !2678)
!2684 = !DILocation(line: 674, column: 22, scope: !2678)
!2685 = !DILocation(line: 674, column: 9, scope: !2678)
!2686 = !DILocation(line: 674, column: 2, scope: !2678)
!2687 = distinct !DISubprogram(name: "queued_spin_is_locked", scope: !2688, file: !2688, line: 51, type: !2689, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2692)
!2688 = !DIFile(filename: "./include/asm-generic/qspinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee2071dbdb30625b016b6622681cc28")
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!97, !2691}
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!2692 = !{!2693}
!2693 = !DILocalVariable(name: "lock", arg: 1, scope: !2687, file: !2688, line: 51, type: !2691)
!2694 = !DILocation(line: 51, column: 68, scope: !2687)
!2695 = !DILocation(line: 57, column: 22, scope: !2687)
!2696 = !DILocation(line: 57, column: 28, scope: !2687)
!2697 = !DILocation(line: 57, column: 9, scope: !2687)
!2698 = !DILocation(line: 57, column: 2, scope: !2687)
!2699 = !DISubprogram(name: "irq_do_set_affinity", scope: !2557, file: !2557, line: 142, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2700 = distinct !DISubprogram(name: "irqd_set_move_pending", scope: !2557, file: !2557, line: 212, type: !142, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2701)
!2701 = !{!2702}
!2702 = !DILocalVariable(name: "d", arg: 1, scope: !2700, file: !2557, line: 212, type: !139)
!2703 = !DILocation(line: 212, column: 59, scope: !2700)
!2704 = !DILocation(line: 214, column: 2, scope: !2700)
!2705 = !DILocation(line: 214, column: 21, scope: !2700)
!2706 = !DILocation(line: 215, column: 1, scope: !2700)
!2707 = distinct !DISubprogram(name: "cpumask_clear", scope: !90, file: !90, line: 552, type: !2708, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{null, !1754}
!2710 = !{!2711}
!2711 = !DILocalVariable(name: "dstp", arg: 1, scope: !2707, file: !90, line: 552, type: !1754)
!2712 = !DILocation(line: 552, column: 50, scope: !2707)
!2713 = !DILocation(line: 554, column: 14, scope: !2707)
!2714 = !DILocation(line: 554, column: 2, scope: !2707)
!2715 = !DILocation(line: 555, column: 1, scope: !2707)
!2716 = distinct !DISubprogram(name: "__irq_move_irq", scope: !2, file: !2, line: 94, type: !142, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2717)
!2717 = !{!2718, !2719}
!2718 = !DILocalVariable(name: "idata", arg: 1, scope: !2716, file: !2, line: 94, type: !139)
!2719 = !DILocalVariable(name: "masked", scope: !2716, file: !2, line: 96, type: !155)
!2720 = !DILocation(line: 94, column: 38, scope: !2716)
!2721 = !DILocation(line: 96, column: 2, scope: !2716)
!2722 = !DILocation(line: 96, column: 7, scope: !2716)
!2723 = !DILocation(line: 103, column: 49, scope: !2716)
!2724 = !DILocation(line: 103, column: 32, scope: !2716)
!2725 = !DILocation(line: 103, column: 10, scope: !2716)
!2726 = !DILocation(line: 103, column: 8, scope: !2716)
!2727 = !DILocation(line: 105, column: 6, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2716, file: !2, line: 105, column: 6)
!2729 = !DILocation(line: 105, column: 6, scope: !2716)
!2730 = !DILocation(line: 106, column: 3, scope: !2728)
!2731 = !DILocation(line: 113, column: 27, scope: !2716)
!2732 = !DILocation(line: 113, column: 11, scope: !2716)
!2733 = !DILocation(line: 113, column: 9, scope: !2716)
!2734 = !DILocation(line: 114, column: 7, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2716, file: !2, line: 114, column: 6)
!2736 = !DILocation(line: 114, column: 6, scope: !2716)
!2737 = !DILocation(line: 115, column: 3, scope: !2735)
!2738 = !DILocation(line: 115, column: 10, scope: !2735)
!2739 = !DILocation(line: 115, column: 16, scope: !2735)
!2740 = !DILocation(line: 115, column: 25, scope: !2735)
!2741 = !DILocation(line: 116, column: 22, scope: !2716)
!2742 = !DILocation(line: 116, column: 2, scope: !2716)
!2743 = !DILocation(line: 117, column: 7, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2716, file: !2, line: 117, column: 6)
!2745 = !DILocation(line: 117, column: 6, scope: !2716)
!2746 = !DILocation(line: 118, column: 3, scope: !2744)
!2747 = !DILocation(line: 118, column: 10, scope: !2744)
!2748 = !DILocation(line: 118, column: 16, scope: !2744)
!2749 = !DILocation(line: 118, column: 27, scope: !2744)
!2750 = !DILocation(line: 119, column: 1, scope: !2716)
!2751 = distinct !DISubprogram(name: "irqd_irq_disabled", scope: !60, file: !60, line: 346, type: !2536, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2752)
!2752 = !{!2753}
!2753 = !DILocalVariable(name: "d", arg: 1, scope: !2751, file: !60, line: 346, type: !139)
!2754 = !DILocation(line: 346, column: 55, scope: !2751)
!2755 = !DILocation(line: 348, column: 9, scope: !2751)
!2756 = !DILocation(line: 348, column: 28, scope: !2751)
!2757 = !DILocation(line: 348, column: 2, scope: !2751)
!2758 = distinct !DISubprogram(name: "irqd_irq_masked", scope: !60, file: !60, line: 351, type: !2536, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2759)
!2759 = !{!2760}
!2760 = !DILocalVariable(name: "d", arg: 1, scope: !2758, file: !60, line: 351, type: !139)
!2761 = !DILocation(line: 351, column: 53, scope: !2758)
!2762 = !DILocation(line: 353, column: 9, scope: !2758)
!2763 = !DILocation(line: 353, column: 28, scope: !2758)
!2764 = !DILocation(line: 353, column: 2, scope: !2758)
!2765 = distinct !DISubprogram(name: "find_first_and_bit", scope: !2766, file: !2766, line: 334, type: !2767, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2771)
!2766 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!94, !2769, !2769, !94}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!2771 = !{!2772, !2773, !2774, !2775}
!2772 = !DILocalVariable(name: "addr1", arg: 1, scope: !2765, file: !2766, line: 334, type: !2769)
!2773 = !DILocalVariable(name: "addr2", arg: 2, scope: !2765, file: !2766, line: 335, type: !2769)
!2774 = !DILocalVariable(name: "size", arg: 3, scope: !2765, file: !2766, line: 336, type: !94)
!2775 = !DILocalVariable(name: "val", scope: !2776, file: !2766, line: 339, type: !94)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !2766, line: 338, column: 31)
!2777 = distinct !DILexicalBlock(scope: !2765, file: !2766, line: 338, column: 6)
!2778 = !DILocation(line: 334, column: 55, scope: !2765)
!2779 = !DILocation(line: 335, column: 27, scope: !2765)
!2780 = !DILocation(line: 336, column: 20, scope: !2765)
!2781 = !DILocation(line: 338, column: 6, scope: !2777)
!2782 = !DILocation(line: 338, column: 6, scope: !2765)
!2783 = !DILocation(line: 339, column: 3, scope: !2776)
!2784 = !DILocation(line: 339, column: 17, scope: !2776)
!2785 = !DILocation(line: 339, column: 24, scope: !2776)
!2786 = !DILocation(line: 339, column: 23, scope: !2776)
!2787 = !DILocation(line: 339, column: 33, scope: !2776)
!2788 = !DILocation(line: 339, column: 32, scope: !2776)
!2789 = !DILocation(line: 339, column: 30, scope: !2776)
!2790 = !DILocation(line: 339, column: 41, scope: !2776)
!2791 = !DILocation(line: 339, column: 39, scope: !2776)
!2792 = !DILocation(line: 341, column: 10, scope: !2776)
!2793 = !DILocation(line: 341, column: 16, scope: !2776)
!2794 = !DILocation(line: 341, column: 29, scope: !2776)
!2795 = !DILocation(line: 341, column: 3, scope: !2776)
!2796 = !DILocation(line: 342, column: 2, scope: !2777)
!2797 = !DILocation(line: 344, column: 29, scope: !2765)
!2798 = !DILocation(line: 344, column: 36, scope: !2765)
!2799 = !DILocation(line: 344, column: 43, scope: !2765)
!2800 = !DILocation(line: 344, column: 9, scope: !2765)
!2801 = !DILocation(line: 344, column: 2, scope: !2765)
!2802 = !DILocation(line: 345, column: 1, scope: !2765)
!2803 = distinct !DISubprogram(name: "variable__ffs", scope: !2804, file: !2804, line: 250, type: !2805, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2807)
!2804 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!94, !94}
!2807 = !{!2808}
!2808 = !DILocalVariable(name: "word", arg: 1, scope: !2803, file: !2804, line: 250, type: !94)
!2809 = !DILocation(line: 250, column: 66, scope: !2803)
!2810 = !DILocation(line: 254, column: 11, scope: !2803)
!2811 = !DILocation(line: 252, column: 2, scope: !2803)
!2812 = !{i64 512054}
!2813 = !DILocation(line: 255, column: 9, scope: !2803)
!2814 = !DILocation(line: 255, column: 2, scope: !2803)
!2815 = !DISubprogram(name: "_find_first_and_bit", scope: !2766, file: !2766, line: 30, type: !2767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2816 = distinct !DISubprogram(name: "bitmap_empty", scope: !2817, file: !2817, line: 436, type: !2818, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2820)
!2817 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!155, !2769, !11}
!2820 = !{!2821, !2822}
!2821 = !DILocalVariable(name: "src", arg: 1, scope: !2816, file: !2817, line: 436, type: !2769)
!2822 = !DILocalVariable(name: "nbits", arg: 2, scope: !2816, file: !2817, line: 436, type: !11)
!2823 = !DILocation(line: 436, column: 54, scope: !2816)
!2824 = !DILocation(line: 436, column: 68, scope: !2816)
!2825 = !DILocation(line: 438, column: 6, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2816, file: !2817, line: 438, column: 6)
!2827 = !DILocation(line: 438, column: 6, scope: !2816)
!2828 = !DILocation(line: 439, column: 14, scope: !2826)
!2829 = !DILocation(line: 439, column: 13, scope: !2826)
!2830 = !DILocation(line: 439, column: 20, scope: !2826)
!2831 = !DILocation(line: 439, column: 18, scope: !2826)
!2832 = !DILocation(line: 439, column: 10, scope: !2826)
!2833 = !DILocation(line: 439, column: 3, scope: !2826)
!2834 = !DILocation(line: 441, column: 24, scope: !2816)
!2835 = !DILocation(line: 441, column: 29, scope: !2816)
!2836 = !DILocation(line: 441, column: 9, scope: !2816)
!2837 = !DILocation(line: 441, column: 39, scope: !2816)
!2838 = !DILocation(line: 441, column: 36, scope: !2816)
!2839 = !DILocation(line: 441, column: 2, scope: !2816)
!2840 = !DILocation(line: 442, column: 1, scope: !2816)
!2841 = distinct !DISubprogram(name: "find_first_bit", scope: !2766, file: !2766, line: 200, type: !2842, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!94, !2769, !94}
!2844 = !{!2845, !2846, !2847}
!2845 = !DILocalVariable(name: "addr", arg: 1, scope: !2841, file: !2766, line: 200, type: !2769)
!2846 = !DILocalVariable(name: "size", arg: 2, scope: !2841, file: !2766, line: 200, type: !94)
!2847 = !DILocalVariable(name: "val", scope: !2848, file: !2766, line: 203, type: !94)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !2766, line: 202, column: 31)
!2849 = distinct !DILexicalBlock(scope: !2841, file: !2766, line: 202, column: 6)
!2850 = !DILocation(line: 200, column: 51, scope: !2841)
!2851 = !DILocation(line: 200, column: 71, scope: !2841)
!2852 = !DILocation(line: 202, column: 6, scope: !2849)
!2853 = !DILocation(line: 202, column: 6, scope: !2841)
!2854 = !DILocation(line: 203, column: 3, scope: !2848)
!2855 = !DILocation(line: 203, column: 17, scope: !2848)
!2856 = !DILocation(line: 203, column: 24, scope: !2848)
!2857 = !DILocation(line: 203, column: 23, scope: !2848)
!2858 = !DILocation(line: 203, column: 31, scope: !2848)
!2859 = !DILocation(line: 203, column: 29, scope: !2848)
!2860 = !DILocation(line: 205, column: 10, scope: !2848)
!2861 = !DILocation(line: 205, column: 16, scope: !2848)
!2862 = !DILocation(line: 205, column: 29, scope: !2848)
!2863 = !DILocation(line: 205, column: 3, scope: !2848)
!2864 = !DILocation(line: 206, column: 2, scope: !2849)
!2865 = !DILocation(line: 208, column: 25, scope: !2841)
!2866 = !DILocation(line: 208, column: 31, scope: !2841)
!2867 = !DILocation(line: 208, column: 9, scope: !2841)
!2868 = !DILocation(line: 208, column: 2, scope: !2841)
!2869 = !DILocation(line: 209, column: 1, scope: !2841)
!2870 = !DISubprogram(name: "_find_first_bit", scope: !2766, file: !2766, line: 21, type: !2842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2871 = distinct !DISubprogram(name: "atomic_read", scope: !2872, file: !2872, line: 30, type: !2873, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2877)
!2872 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!97, !2875}
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!2877 = !{!2878}
!2878 = !DILocalVariable(name: "v", arg: 1, scope: !2871, file: !2872, line: 30, type: !2875)
!2879 = !DILocation(line: 30, column: 29, scope: !2871)
!2880 = !DILocation(line: 32, column: 25, scope: !2871)
!2881 = !DILocation(line: 32, column: 2, scope: !2871)
!2882 = !DILocation(line: 33, column: 25, scope: !2871)
!2883 = !DILocation(line: 33, column: 9, scope: !2871)
!2884 = !DILocation(line: 33, column: 2, scope: !2871)
!2885 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2886, file: !2886, line: 66, type: !2887, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2892)
!2886 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2887 = !DISubroutineType(types: !2888)
!2888 = !{null, !2889, !1063}
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2892 = !{!2893, !2894}
!2893 = !DILocalVariable(name: "v", arg: 1, scope: !2885, file: !2886, line: 66, type: !2889)
!2894 = !DILocalVariable(name: "size", arg: 2, scope: !2885, file: !2886, line: 66, type: !1063)
!2895 = !DILocation(line: 66, column: 73, scope: !2885)
!2896 = !DILocation(line: 66, column: 83, scope: !2885)
!2897 = !DILocation(line: 68, column: 19, scope: !2885)
!2898 = !DILocation(line: 68, column: 22, scope: !2885)
!2899 = !DILocation(line: 68, column: 2, scope: !2885)
!2900 = !DILocation(line: 69, column: 2, scope: !2885)
!2901 = !DILocation(line: 70, column: 1, scope: !2885)
!2902 = distinct !DISubprogram(name: "raw_atomic_read", scope: !2903, file: !2903, line: 442, type: !2873, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2904)
!2903 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!2904 = !{!2905}
!2905 = !DILocalVariable(name: "v", arg: 1, scope: !2902, file: !2903, line: 442, type: !2875)
!2906 = !DILocation(line: 442, column: 33, scope: !2902)
!2907 = !DILocation(line: 444, column: 26, scope: !2902)
!2908 = !DILocation(line: 444, column: 9, scope: !2902)
!2909 = !DILocation(line: 444, column: 2, scope: !2902)
!2910 = distinct !DISubprogram(name: "kasan_check_read", scope: !2911, file: !2911, line: 40, type: !2912, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2914)
!2911 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!155, !2889, !11}
!2914 = !{!2915, !2916}
!2915 = !DILocalVariable(name: "p", arg: 1, scope: !2910, file: !2911, line: 40, type: !2889)
!2916 = !DILocalVariable(name: "size", arg: 2, scope: !2910, file: !2911, line: 40, type: !11)
!2917 = !DILocation(line: 40, column: 58, scope: !2910)
!2918 = !DILocation(line: 40, column: 74, scope: !2910)
!2919 = !DILocation(line: 42, column: 2, scope: !2910)
!2920 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2921, file: !2921, line: 229, type: !2922, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2924)
!2921 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2922 = !DISubroutineType(types: !2923)
!2923 = !{null, !2889, !1063, !97}
!2924 = !{!2925, !2926, !2927}
!2925 = !DILocalVariable(name: "ptr", arg: 1, scope: !2920, file: !2921, line: 229, type: !2889)
!2926 = !DILocalVariable(name: "size", arg: 2, scope: !2920, file: !2921, line: 229, type: !1063)
!2927 = !DILocalVariable(name: "type", arg: 3, scope: !2920, file: !2921, line: 230, type: !97)
!2928 = !DILocation(line: 229, column: 60, scope: !2920)
!2929 = !DILocation(line: 229, column: 72, scope: !2920)
!2930 = !DILocation(line: 230, column: 15, scope: !2920)
!2931 = !DILocation(line: 230, column: 23, scope: !2920)
!2932 = distinct !DISubprogram(name: "arch_atomic_read", scope: !2933, file: !2933, line: 17, type: !2873, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2934)
!2933 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!2934 = !{!2935}
!2935 = !DILocalVariable(name: "v", arg: 1, scope: !2932, file: !2933, line: 17, type: !2875)
!2936 = !DILocation(line: 17, column: 61, scope: !2932)
!2937 = !DILocation(line: 23, column: 9, scope: !2932)
!2938 = !DILocation(line: 23, column: 2, scope: !2932)
!2939 = distinct !DISubprogram(name: "bitmap_zero", scope: !2817, file: !2817, line: 246, type: !2940, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{null, !2459, !11}
!2942 = !{!2943, !2944, !2945}
!2943 = !DILocalVariable(name: "dst", arg: 1, scope: !2939, file: !2817, line: 246, type: !2459)
!2944 = !DILocalVariable(name: "nbits", arg: 2, scope: !2939, file: !2817, line: 246, type: !11)
!2945 = !DILocalVariable(name: "len", scope: !2939, file: !2817, line: 248, type: !11)
!2946 = !DILocation(line: 246, column: 47, scope: !2939)
!2947 = !DILocation(line: 246, column: 65, scope: !2939)
!2948 = !DILocation(line: 248, column: 2, scope: !2939)
!2949 = !DILocation(line: 248, column: 15, scope: !2939)
!2950 = !DILocation(line: 248, column: 21, scope: !2939)
!2951 = !DILocation(line: 250, column: 6, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2939, file: !2817, line: 250, column: 6)
!2953 = !DILocation(line: 250, column: 6, scope: !2939)
!2954 = !DILocation(line: 251, column: 4, scope: !2952)
!2955 = !DILocation(line: 251, column: 8, scope: !2952)
!2956 = !DILocation(line: 251, column: 3, scope: !2952)
!2957 = !DILocation(line: 253, column: 10, scope: !2952)
!2958 = !DILocation(line: 253, column: 18, scope: !2952)
!2959 = !DILocation(line: 253, column: 3, scope: !2952)
!2960 = !DILocation(line: 254, column: 1, scope: !2939)
