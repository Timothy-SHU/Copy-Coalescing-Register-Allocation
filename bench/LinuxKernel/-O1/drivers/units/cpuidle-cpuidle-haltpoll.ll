; ModuleID = 'drivers/cpuidle/cpuidle-haltpoll.c'
source_filename = "drivers/cpuidle/cpuidle-haltpoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_cpuidle_haltpoll__206_142_haltpoll_init\22, \22a\22\09\09"
module asm "__initcall__kmod_cpuidle_haltpoll__206_142_haltpoll_init6:\09\09\09"
module asm ".long\09__initstub__kmod_cpuidle_haltpoll__206_142_haltpoll_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15, [16 x i8] }
%struct.anon.15 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }

@__param_str_force = internal constant [23 x i8] c"cpuidle_haltpoll.force\00", align 16, !dbg !0
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@force = internal global i8 0, section ".data..read_mostly", align 1, !dbg !2512
@__param_force = internal constant %struct.kernel_param { ptr @__param_str_force, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.1 { ptr @force } }, section "__param", align 8, !dbg !2479
@__UNIQUE_ID_forcetype204 = internal constant [37 x i8] c"cpuidle_haltpoll.parmtype=force:bool\00", section ".modinfo", align 1, !dbg !2481
@__UNIQUE_ID_force205 = internal constant [49 x i8] c"cpuidle_haltpoll.parm=force:Load unconditionally\00", section ".modinfo", align 1, !dbg !2486
@__UNIQUE_ID___addressable___initstub__kmod_cpuidle_haltpoll__206_142_haltpoll_init6207 = internal global ptr @__initstub__kmod_cpuidle_haltpoll__206_142_haltpoll_init6, section ".discard.addressable", align 8, !dbg !2491
@__exitcall_haltpoll_exit = internal global ptr @haltpoll_exit, section ".exitcall.exit", align 8, !dbg !2493
@__UNIQUE_ID_file208 = internal constant [55 x i8] c"cpuidle_haltpoll.file=drivers/cpuidle/cpuidle-haltpoll\00", section ".modinfo", align 1, !dbg !2497
@__UNIQUE_ID_license209 = internal constant [29 x i8] c"cpuidle_haltpoll.license=GPL\00", section ".modinfo", align 1, !dbg !2502
@__UNIQUE_ID_author210 = internal constant [62 x i8] c"cpuidle_haltpoll.author=Marcelo Tosatti <mtosatti@redhat.com>\00", section ".modinfo", align 1, !dbg !2507
@haltpoll_hp_state = internal global i32 0, align 4, !dbg !2514
@haltpoll_cpuidle_devices = internal global ptr null, align 8, !dbg !2556
@.str = private unnamed_addr constant [9 x i8] c"haltpoll\00", align 1, !dbg !2516
@haltpoll_driver = internal global { ptr, ptr, i8, [7 x i8], <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }>, i32, i32, ptr, ptr } { ptr @.str, ptr null, i8 0, [7 x i8] undef, <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }> <{ %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state { [16 x i8] c"haltpoll idle\00\00\00", [32 x i8] c"default architecture idle\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 1, i32 -1, i32 1, ptr @default_enter_idle, ptr null, ptr null }, [8 x %struct.cpuidle_state] zeroinitializer }>, i32 2, i32 0, ptr null, ptr @.str }, align 8, !dbg !2521
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@boot_option_idle_override = external dso_local global i64, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"cpuidle/haltpoll:online\00", align 1, !dbg !2558
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str.3 = private unnamed_addr constant [38 x i8] c"\015cpuidle_register_device %d failed!\0A\00", align 1, !dbg !2563
@llvm.compiler.used = appending global [9 x ptr] [ptr @__param_force, ptr @__UNIQUE_ID_forcetype204, ptr @__UNIQUE_ID_force205, ptr @haltpoll_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_cpuidle_haltpoll__206_142_haltpoll_init6207, ptr @__exitcall_haltpoll_exit, ptr @__UNIQUE_ID_file208, ptr @__UNIQUE_ID_license209, ptr @__UNIQUE_ID_author210], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @haltpoll_exit() #0 section ".exit.text" align 16 !dbg !2580 {
entry:
  call void @haltpoll_uninit() #13, !dbg !2581
  ret void, !dbg !2582
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @haltpoll_uninit() #1 align 16 !dbg !2583 {
entry:
  %0 = load i32, ptr @haltpoll_hp_state, align 4, !dbg !2584
  %tobool = icmp ne i32 %0, 0, !dbg !2584
  br i1 %tobool, label %if.then, label %if.end, !dbg !2586

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @haltpoll_hp_state, align 4, !dbg !2587
  call void @cpuhp_remove_state(i32 noundef %1) #13, !dbg !2588
  br label %if.end, !dbg !2588

if.end:                                           ; preds = %if.then, %entry
  call void @cpuidle_unregister_driver(ptr noundef @haltpoll_driver) #13, !dbg !2589
  %2 = load ptr, ptr @haltpoll_cpuidle_devices, align 8, !dbg !2590
  call void @free_percpu(ptr noundef %2) #13, !dbg !2591
  store ptr null, ptr @haltpoll_cpuidle_devices, align 8, !dbg !2592
  ret void, !dbg !2593
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_cpuidle_haltpoll__206_142_haltpoll_init6() #0 section ".init.text" align 16 !dbg !2594 {
entry:
  %call = call i32 @haltpoll_init() #14, !dbg !2595
  ret i32 %call, !dbg !2595
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @haltpoll_init() #0 section ".init.text" align 16 !dbg !2596 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %drv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2600
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2598, metadata !DIExpression()), !dbg !2601
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #15, !dbg !2602
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !2599, metadata !DIExpression()), !dbg !2603
  store ptr @haltpoll_driver, ptr %drv, align 8, !dbg !2603
  %0 = load i64, ptr @boot_option_idle_override, align 8, !dbg !2604
  %cmp = icmp ne i64 %0, 0, !dbg !2606
  br i1 %cmp, label %if.then, label %if.end, !dbg !2607

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !2608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2608

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @kvm_para_available() #13, !dbg !2609
  br i1 %call, label %lor.lhs.false, label %if.then2, !dbg !2611

lor.lhs.false:                                    ; preds = %if.end
  %call1 = call zeroext i1 @haltpoll_want() #13, !dbg !2612
  br i1 %call1, label %if.end3, label %if.then2, !dbg !2613

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -19, ptr %retval, align 4, !dbg !2614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2614

if.end3:                                          ; preds = %lor.lhs.false
  %1 = load ptr, ptr %drv, align 8, !dbg !2615
  call void @cpuidle_poll_state_init(ptr noundef %1) #13, !dbg !2616
  %2 = load ptr, ptr %drv, align 8, !dbg !2617
  %call4 = call i32 @cpuidle_register_driver(ptr noundef %2) #13, !dbg !2618
  store i32 %call4, ptr %ret, align 4, !dbg !2619
  %3 = load i32, ptr %ret, align 4, !dbg !2620
  %cmp5 = icmp slt i32 %3, 0, !dbg !2622
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2623

if.then6:                                         ; preds = %if.end3
  %4 = load i32, ptr %ret, align 4, !dbg !2624
  store i32 %4, ptr %retval, align 4, !dbg !2625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2625

if.end7:                                          ; preds = %if.end3
  %call8 = call noalias ptr @__alloc_percpu(i64 noundef 800, i64 noundef 8) #16, !dbg !2626
  store ptr %call8, ptr @haltpoll_cpuidle_devices, align 8, !dbg !2627
  %5 = load ptr, ptr @haltpoll_cpuidle_devices, align 8, !dbg !2628
  %cmp9 = icmp eq ptr %5, null, !dbg !2630
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2631

if.then10:                                        ; preds = %if.end7
  %6 = load ptr, ptr %drv, align 8, !dbg !2632
  call void @cpuidle_unregister_driver(ptr noundef %6) #13, !dbg !2634
  store i32 -12, ptr %retval, align 4, !dbg !2635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2635

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @cpuhp_setup_state(i32 noundef 202, ptr noundef @.str.2, ptr noundef @haltpoll_cpu_online, ptr noundef @haltpoll_cpu_offline) #13, !dbg !2636
  store i32 %call12, ptr %ret, align 4, !dbg !2637
  %7 = load i32, ptr %ret, align 4, !dbg !2638
  %cmp13 = icmp slt i32 %7, 0, !dbg !2640
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !2641

if.then14:                                        ; preds = %if.end11
  call void @haltpoll_uninit() #13, !dbg !2642
  br label %if.end15, !dbg !2644

if.else:                                          ; preds = %if.end11
  %8 = load i32, ptr %ret, align 4, !dbg !2645
  store i32 %8, ptr @haltpoll_hp_state, align 4, !dbg !2647
  store i32 0, ptr %ret, align 4, !dbg !2648
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  %9 = load i32, ptr %ret, align 4, !dbg !2649
  store i32 %9, ptr %retval, align 4, !dbg !2650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2650

cleanup:                                          ; preds = %if.end15, %if.then10, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #15, !dbg !2651
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2651
  %10 = load i32, ptr %retval, align 4, !dbg !2651
  ret i32 %10, !dbg !2651
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuhp_remove_state(i32 noundef %state) #2 align 16 !dbg !2652 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2656, metadata !DIExpression()), !dbg !2657
  %0 = load i32, ptr %state.addr, align 4, !dbg !2658
  call void @__cpuhp_remove_state(i32 noundef %0, i1 noundef zeroext true) #13, !dbg !2659
  ret void, !dbg !2660
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2661 dso_local void @cpuidle_unregister_driver(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2664 dso_local void @free_percpu(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2666 dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @default_enter_idle(ptr noundef %dev, ptr noundef %drv, i32 noundef %index) #5 section ".cpuidle.text" align 16 !dbg !2669 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2671, metadata !DIExpression()), !dbg !2674
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2672, metadata !DIExpression()), !dbg !2675
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !2673, metadata !DIExpression()), !dbg !2676
  %call = call zeroext i1 @current_clr_polling_and_test() #13, !dbg !2677
  br i1 %call, label %if.then, label %if.end, !dbg !2679

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %index.addr, align 4, !dbg !2680
  store i32 %0, ptr %retval, align 4, !dbg !2681
  br label %return, !dbg !2681

if.end:                                           ; preds = %entry
  call void @arch_cpu_idle() #13, !dbg !2682
  %1 = load i32, ptr %index.addr, align 4, !dbg !2683
  store i32 %1, ptr %retval, align 4, !dbg !2684
  br label %return, !dbg !2684

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2685
  ret i32 %2, !dbg !2685
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @current_clr_polling_and_test() #6 align 16 !dbg !2686 {
entry:
  call void @__current_clr_polling() #13, !dbg !2688
  br label %do.body, !dbg !2689

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2690

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2692

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2690

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2694

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2690

do.end4:                                          ; preds = %do.end3
  %call = call zeroext i1 @tif_need_resched() #13, !dbg !2696
  %lnot = xor i1 %call, true, !dbg !2696
  %lnot5 = xor i1 %lnot, true, !dbg !2696
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !2696
  %conv = sext i32 %lnot.ext to i64, !dbg !2696
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2696
  %tobool = icmp ne i64 %expval, 0, !dbg !2696
  ret i1 %tobool, !dbg !2697
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2698 dso_local void @arch_cpu_idle() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__current_clr_polling() #6 align 16 !dbg !2700 {
entry:
  %call = call ptr @get_current() #13, !dbg !2701
  %flags = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 0, !dbg !2702
  call void @arch_clear_bit(i64 noundef 21, ptr noundef %flags) #13, !dbg !2703
  ret void, !dbg !2704
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tif_need_resched() #6 align 16 !dbg !2705 {
entry:
  %call = call ptr @get_current() #13, !dbg !2707
  %flags = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 0, !dbg !2708
  %call1 = call zeroext i1 @arch_test_bit(i64 noundef 3, ptr noundef %flags) #13, !dbg !2709
  ret i1 %call1, !dbg !2710
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2711 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2718, metadata !DIExpression()), !dbg !2720
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2719, metadata !DIExpression()), !dbg !2721
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2722
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2724
  br i1 %1, label %if.then, label %if.else, !dbg !2725

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !2726
  %3 = load i64, ptr %nr.addr, align 8, !dbg !2726
  %shr = ashr i64 %3, 3, !dbg !2726
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !2726
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2728
  %and = and i64 %4, 7, !dbg !2728
  %sh_prom = trunc i64 %and to i32, !dbg !2728
  %shl = shl i32 1, %sh_prom, !dbg !2728
  %not = xor i32 %shl, -1, !dbg !2729
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #15, !dbg !2730, !srcloc !2731
  br label %if.end, !dbg !2732

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2733
  %6 = load i64, ptr %nr.addr, align 8, !dbg !2735
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #15, !dbg !2736, !srcloc !2737
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2738
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #6 align 16 !dbg !2739 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !2750
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2744, metadata !DIExpression()), !dbg !2750
  br label %do.body, !dbg !2750

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2751
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2746, metadata !DIExpression()), !dbg !2751
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2751
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2751
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2750
  br label %do.cond, !dbg !2751

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2751

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !2752
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2748, metadata !DIExpression()), !dbg !2752
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #17, !dbg !2752, !srcloc !2753
  store i64 %1, ptr %pfo_val__, align 8, !dbg !2752
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !2752
  %3 = inttoptr i64 %2 to ptr, !dbg !2752
  store ptr %3, ptr %tmp, align 8, !dbg !2752
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !2750
  %4 = load ptr, ptr %tmp, align 8, !dbg !2752
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !2750
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !2750
  store ptr %5, ptr %tmp1, align 8, !dbg !2750
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !2754
  %6 = load ptr, ptr %tmp1, align 8, !dbg !2750
  ret ptr %6, !dbg !2755
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2756 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2762, metadata !DIExpression()), !dbg !2764
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2763, metadata !DIExpression()), !dbg !2765
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2766
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2767
  br i1 %1, label %cond.true, label %cond.false, !dbg !2767

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2768
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2769
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !2770
  %conv = zext i1 %call to i32, !dbg !2770
  br label %cond.end, !dbg !2767

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2771
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2772
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !2773
  %conv2 = zext i1 %call1 to i32, !dbg !2773
  br label %cond.end, !dbg !2767

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2767
  %tobool = icmp ne i32 %cond, 0, !dbg !2767
  ret i1 %tobool, !dbg !2774
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2775 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2779, metadata !DIExpression()), !dbg !2781
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2780, metadata !DIExpression()), !dbg !2782
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2783
  %and = and i64 %0, 63, !dbg !2784
  %shl = shl i64 1, %and, !dbg !2785
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !2786
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2787
  %shr = ashr i64 %2, 6, !dbg !2788
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !2786
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !2786
  %and1 = and i64 %shl, %3, !dbg !2789
  %cmp = icmp ne i64 %and1, 0, !dbg !2790
  ret i1 %cmp, !dbg !2791
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2792 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2794, metadata !DIExpression()), !dbg !2797
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2795, metadata !DIExpression()), !dbg !2798
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !2799
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !2796, metadata !DIExpression()), !dbg !2800
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2801
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2802
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !2803, !srcloc !2804
  %3 = icmp ult i8 %2, 2, !dbg !2803
  call void @llvm.assume(i1 %3), !dbg !2803
  store i8 %2, ptr %oldbit, align 1, !dbg !2803
  %4 = load i8, ptr %oldbit, align 1, !dbg !2805, !range !2806, !noundef !487
  %tobool = trunc i8 %4 to i1, !dbg !2805
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !2807
  ret i1 %tobool, !dbg !2808
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2809 dso_local zeroext i1 @kvm_para_available() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @haltpoll_want() #1 align 16 !dbg !2811 {
entry:
  %call = call zeroext i1 @kvm_para_has_hint(i32 noundef 0) #13, !dbg !2812
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !2813

lor.rhs:                                          ; preds = %entry
  %0 = load i8, ptr @force, align 1, !dbg !2814, !range !2806, !noundef !487
  %tobool = trunc i8 %0 to i1, !dbg !2814
  br label %lor.end, !dbg !2813

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  ret i1 %1, !dbg !2815
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2816 dso_local void @cpuidle_poll_state_init(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2817 dso_local i32 @cpuidle_register_driver(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2820 dso_local noalias ptr @__alloc_percpu(i64 noundef, i64 noundef) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #2 align 16 !dbg !2823 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2830, metadata !DIExpression()), !dbg !2834
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2831, metadata !DIExpression()), !dbg !2835
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !2832, metadata !DIExpression()), !dbg !2836
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !2833, metadata !DIExpression()), !dbg !2837
  %0 = load i32, ptr %state.addr, align 4, !dbg !2838
  %1 = load ptr, ptr %name.addr, align 8, !dbg !2839
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !2840
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !2841
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #13, !dbg !2842
  ret i32 %call, !dbg !2843
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @haltpoll_cpu_online(i32 noundef %cpu) #1 align 16 !dbg !2844 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %tmp8 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2846, metadata !DIExpression()), !dbg !2853
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !2854
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2847, metadata !DIExpression()), !dbg !2855
  br label %do.body, !dbg !2856

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2857
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2848, metadata !DIExpression()), !dbg !2857
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2857
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2857
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2856
  br label %do.cond, !dbg !2857

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2857

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !2858
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2851, metadata !DIExpression()), !dbg !2858
  %1 = load ptr, ptr @haltpoll_cpuidle_devices, align 8, !dbg !2858
  %2 = ptrtoint ptr %1 to i64, !dbg !2858
  store i64 %2, ptr %__ptr, align 8, !dbg !2858
  %3 = load i64, ptr %__ptr, align 8, !dbg !2858
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !2858
  %idxprom = zext i32 %4 to i64, !dbg !2858
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2858
  %5 = load i64, ptr %arrayidx, align 8, !dbg !2858
  %add = add i64 %3, %5, !dbg !2858
  %6 = inttoptr i64 %add to ptr, !dbg !2858
  store ptr %6, ptr %tmp1, align 8, !dbg !2858
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !2856
  %7 = load ptr, ptr %tmp1, align 8, !dbg !2858
  store ptr %7, ptr %tmp, align 8, !dbg !2857
  %8 = load ptr, ptr %tmp, align 8, !dbg !2856
  store ptr %8, ptr %dev, align 8, !dbg !2859
  %9 = load ptr, ptr %dev, align 8, !dbg !2860
  %bf.load = load i8, ptr %9, align 8, !dbg !2862
  %bf.clear = and i8 %bf.load, 1, !dbg !2862
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2862
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2860
  br i1 %tobool, label %if.end10, label %if.then, !dbg !2863

if.then:                                          ; preds = %do.end
  %10 = load i32, ptr %cpu.addr, align 4, !dbg !2864
  %11 = load ptr, ptr %dev, align 8, !dbg !2866
  %cpu2 = getelementptr inbounds %struct.cpuidle_device, ptr %11, i32 0, i32 1, !dbg !2867
  store i32 %10, ptr %cpu2, align 4, !dbg !2868
  %12 = load ptr, ptr %dev, align 8, !dbg !2869
  %call = call i32 @cpuidle_register_device(ptr noundef %12) #13, !dbg !2871
  %tobool3 = icmp ne i32 %call, 0, !dbg !2871
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !2872

if.then4:                                         ; preds = %if.then
  br label %do.body5, !dbg !2873

do.body5:                                         ; preds = %if.then4
  br label %do.cond6, !dbg !2876

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2876

do.end7:                                          ; preds = %do.cond6
  %13 = load i32, ptr %cpu.addr, align 4, !dbg !2873
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %13) #14, !dbg !2873
  store i32 %call9, ptr %tmp8, align 4, !dbg !2876
  %14 = load i32, ptr %tmp8, align 4, !dbg !2873
  store i32 -5, ptr %retval, align 4, !dbg !2878
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2878

if.end:                                           ; preds = %if.then
  %15 = load i32, ptr %cpu.addr, align 4, !dbg !2879
  call void @arch_haltpoll_enable(i32 noundef %15) #13, !dbg !2880
  br label %if.end10, !dbg !2881

if.end10:                                         ; preds = %if.end, %do.end
  store i32 0, ptr %retval, align 4, !dbg !2882
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2882

cleanup:                                          ; preds = %if.end10, %do.end7
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !2883
  %16 = load i32, ptr %retval, align 4, !dbg !2883
  ret i32 %16, !dbg !2883
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @haltpoll_cpu_offline(i32 noundef %cpu) #1 align 16 !dbg !2884 {
entry:
  %cpu.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2886, metadata !DIExpression()), !dbg !2893
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !2894
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2887, metadata !DIExpression()), !dbg !2895
  br label %do.body, !dbg !2896

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2897
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2888, metadata !DIExpression()), !dbg !2897
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2897
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2897
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !2896
  br label %do.cond, !dbg !2897

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2897

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !2898
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2891, metadata !DIExpression()), !dbg !2898
  %1 = load ptr, ptr @haltpoll_cpuidle_devices, align 8, !dbg !2898
  %2 = ptrtoint ptr %1 to i64, !dbg !2898
  store i64 %2, ptr %__ptr, align 8, !dbg !2898
  %3 = load i64, ptr %__ptr, align 8, !dbg !2898
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !2898
  %idxprom = zext i32 %4 to i64, !dbg !2898
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2898
  %5 = load i64, ptr %arrayidx, align 8, !dbg !2898
  %add = add i64 %3, %5, !dbg !2898
  %6 = inttoptr i64 %add to ptr, !dbg !2898
  store ptr %6, ptr %tmp1, align 8, !dbg !2898
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !2896
  %7 = load ptr, ptr %tmp1, align 8, !dbg !2898
  store ptr %7, ptr %tmp, align 8, !dbg !2897
  %8 = load ptr, ptr %tmp, align 8, !dbg !2896
  store ptr %8, ptr %dev, align 8, !dbg !2899
  %9 = load ptr, ptr %dev, align 8, !dbg !2900
  %bf.load = load i8, ptr %9, align 8, !dbg !2902
  %bf.clear = and i8 %bf.load, 1, !dbg !2902
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2902
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2900
  br i1 %tobool, label %if.then, label %if.end, !dbg !2903

if.then:                                          ; preds = %do.end
  %10 = load i32, ptr %cpu.addr, align 4, !dbg !2904
  call void @arch_haltpoll_disable(i32 noundef %10) #13, !dbg !2906
  %11 = load ptr, ptr %dev, align 8, !dbg !2907
  call void @cpuidle_unregister_device(ptr noundef %11) #13, !dbg !2908
  br label %if.end, !dbg !2909

if.end:                                           ; preds = %if.then, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !2910
  ret i32 0, !dbg !2911
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kvm_para_has_hint(i32 noundef %feature) #2 align 16 !dbg !2912 {
entry:
  %feature.addr = alloca i32, align 4
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !2917, metadata !DIExpression()), !dbg !2918
  %call = call i32 @kvm_arch_para_hints() #13, !dbg !2919
  %conv = zext i32 %call to i64, !dbg !2919
  %0 = load i32, ptr %feature.addr, align 4, !dbg !2920
  %sh_prom = zext i32 %0 to i64, !dbg !2921
  %shl = shl i64 1, %sh_prom, !dbg !2921
  %and = and i64 %conv, %shl, !dbg !2922
  %tobool = icmp ne i64 %and, 0, !dbg !2923
  %lnot = xor i1 %tobool, true, !dbg !2923
  %lnot1 = xor i1 %lnot, true, !dbg !2924
  ret i1 %lnot1, !dbg !2925
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2926 dso_local i32 @kvm_arch_para_hints() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2929 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2932 dso_local i32 @cpuidle_register_device(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2935 dso_local i32 @_printk(ptr noundef, ...) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2939 dso_local void @arch_haltpoll_enable(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2943 dso_local void @arch_haltpoll_disable(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2944 dso_local void @cpuidle_unregister_device(ptr noundef) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone }
attributes #14 = { cold noredzone }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578}
!llvm.ident = !{!2579}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_force", scope: !2, file: !3, line: 22, type: !2568, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/cpuidle/.cpuidle-haltpoll.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/cpuidle/cpuidle-haltpoll\22 -D KBUILD_BASENAME=\22cpuidle_haltpoll\22 -D KBUILD_MODNAME=\22cpuidle_haltpoll\22 -D __KBUILD_MODNAME=kmod_cpuidle_haltpoll -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/cpuidle/cpuidle-haltpoll.ll drivers/cpuidle/cpuidle-haltpoll.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !244, globals: !2478, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/cpuidle/cpuidle-haltpoll.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e67b236e2204eb99d593ecc7dc64157")
!4 = !{!5, !13, !19, !214, !219, !224, !230, !237}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !20, line: 57, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213}
!23 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!24 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!25 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!26 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!27 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!28 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!29 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!30 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!31 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!32 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!33 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!34 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!35 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!36 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!37 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!38 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!39 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!40 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!41 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!42 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!43 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!44 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!45 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!46 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!47 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!48 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!49 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!50 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!51 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!52 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!53 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!54 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!55 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!56 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!57 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!58 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!59 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!60 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!61 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!62 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!63 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!64 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!65 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!66 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!67 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!68 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!69 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!70 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!71 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!72 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!73 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!74 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!75 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!76 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!77 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!78 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!79 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!80 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!81 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!82 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!83 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!84 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!85 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!86 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!87 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!88 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!89 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!90 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!91 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!92 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!93 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!94 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!95 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!96 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!97 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!98 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!99 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!100 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!101 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!102 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!103 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!104 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!105 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!106 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!107 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!108 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!109 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!110 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!111 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!112 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!113 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!114 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!115 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!116 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!117 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!118 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!119 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!120 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!121 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!122 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!123 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!124 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!125 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!126 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!127 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!128 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!129 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!130 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!131 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!132 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!133 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!134 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!135 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!136 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!137 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!138 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!139 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!140 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!141 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!142 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!143 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!144 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!145 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!146 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!147 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!148 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!149 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!150 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!151 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!152 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!153 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!154 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!155 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!156 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!157 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!158 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!159 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!160 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!161 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!162 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!163 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!164 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!165 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!166 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!167 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!168 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!169 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!170 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!171 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!172 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!173 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!174 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!175 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!176 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!177 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!178 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!179 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!180 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!181 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!182 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!183 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!184 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!185 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!186 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!187 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!188 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!189 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!190 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!191 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!192 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!193 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!194 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!195 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!196 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!197 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!198 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!199 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!200 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!201 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!202 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!203 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!204 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!205 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!206 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!207 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!208 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!209 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!210 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!211 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!212 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!213 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !215, line: 10, baseType: !7, size: 32, elements: !216)
!215 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!216 = !{!217, !218}
!217 = !DIEnumerator(name: "false", value: 0)
!218 = !DIEnumerator(name: "true", value: 1)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !220, line: 65, baseType: !7, size: 32, elements: !221)
!220 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!221 = !{!222, !223}
!222 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!223 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !225, line: 16, baseType: !7, size: 32, elements: !226)
!225 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!226 = !{!227, !228, !229}
!227 = !DIEnumerator(name: "TT_NONE", value: 0)
!228 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!229 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !231, line: 51, baseType: !7, size: 32, elements: !232)
!231 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!232 = !{!233, !234, !235, !236}
!233 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!234 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!235 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!236 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "idle_boot_override", file: !238, line: 563, baseType: !7, size: 32, elements: !239)
!238 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!239 = !{!240, !241, !242, !243}
!240 = !DIEnumerator(name: "IDLE_NO_OVERRIDE", value: 0)
!241 = !DIEnumerator(name: "IDLE_HALT", value: 1)
!242 = !DIEnumerator(name: "IDLE_NOMWAIT", value: 2)
!243 = !DIEnumerator(name: "IDLE_POLL", value: 3)
!244 = !{!245, !422, !1277, !1294, !1302, !1304, !1306, !1307, !400, !2440}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !247)
!247 = !{!248, !249, !256, !261, !942, !968, !969, !970, !971, !975, !978, !979, !980, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1048, !1052, !1072, !1090, !1091, !1092, !1093, !1102, !1126, !1127, !1130, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1144, !1145, !1252, !1260, !1261, !1262, !1264, !1268, !1269, !1273, !1274, !1275, !1276, !1278, !1279, !1280, !1287, !1288, !1289, !1293}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !246, file: !6, line: 403, baseType: !5, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !246, file: !6, line: 406, baseType: !250, size: 128, offset: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !251, line: 190, size: 128, elements: !252)
!251 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!252 = !{!253, !255}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !251, line: 191, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !250, file: !251, line: 191, baseType: !254, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !246, file: !6, line: 409, baseType: !257, size: 448, offset: 192)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 448, elements: !259)
!258 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!259 = !{!260}
!260 = !DISubrange(count: 56)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !246, file: !6, line: 417, baseType: !262, size: 768, offset: 640)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !263)
!263 = !{!264, !925, !926, !927, !930}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !262, file: !6, line: 46, baseType: !265, size: 512)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !266, line: 64, size: 512, elements: !267)
!266 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!267 = !{!268, !271, !272, !274, !363, !796, !910, !920, !921, !922, !923, !924}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !266, line: 65, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !265, file: !266, line: 66, baseType: !250, size: 128, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !265, file: !266, line: 67, baseType: !273, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !265, file: !266, line: 68, baseType: !275, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !266, line: 168, size: 768, elements: !277)
!277 = !{!278, !279, !322, !323}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !276, file: !266, line: 169, baseType: !250, size: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !276, file: !266, line: 170, baseType: !280, size: 32, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !281, line: 29, baseType: !282)
!281 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !281, line: 17, size: 32, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, scope: !282, file: !281, line: 18, baseType: !285, size: 32)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !281, line: 18, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !285, file: !281, line: 19, baseType: !288, size: 32)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !289, line: 14, size: 32, elements: !290)
!289 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !288, file: !289, line: 15, baseType: !292, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !293, line: 44, baseType: !294)
!293 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !293, line: 14, size: 32, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !293, line: 15, baseType: !297, size: 32)
!297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !294, file: !293, line: 15, size: 32, elements: !298)
!298 = !{!299, !304, !314}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !297, file: !293, line: 16, baseType: !300, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !251, line: 174, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 172, size: 32, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !301, file: !251, line: 173, baseType: !21, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !293, line: 24, baseType: !305, size: 16)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !297, file: !293, line: 24, size: 16, elements: !306)
!306 = !{!307, !313}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !305, file: !293, line: 25, baseType: !308, size: 8)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !309, line: 17, baseType: !310)
!309 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !311, line: 21, baseType: !312)
!311 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!312 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !305, file: !293, line: 26, baseType: !308, size: 8, offset: 8)
!314 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !293, line: 28, baseType: !315, size: 32)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !297, file: !293, line: 28, size: 32, elements: !316)
!316 = !{!317, !321}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !315, file: !293, line: 29, baseType: !318, size: 16)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !309, line: 19, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !311, line: 24, baseType: !320)
!320 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !315, file: !293, line: 30, baseType: !318, size: 16, offset: 16)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !276, file: !266, line: 171, baseType: !265, size: 512, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !276, file: !266, line: 172, baseType: !324, size: 64, offset: 704)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !266, line: 133, size: 192, elements: !327)
!327 = !{!328, !335, !340}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !326, file: !266, line: 134, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!21, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !326, file: !266, line: 135, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!269, !333}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !326, file: !266, line: 136, baseType: !341, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!21, !333, !345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !266, line: 125, size: 20736, elements: !347)
!347 = !{!348, !353, !357, !358, !362}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !346, file: !266, line: 126, baseType: !349, size: 192)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 192, elements: !351)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!351 = !{!352}
!352 = !DISubrange(count: 3)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !346, file: !266, line: 127, baseType: !354, size: 4096, offset: 192)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 4096, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !346, file: !266, line: 128, baseType: !21, size: 32, offset: 4288)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !346, file: !266, line: 129, baseType: !359, size: 16384, offset: 4320)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 16384, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 2048)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !346, file: !266, line: 130, baseType: !21, size: 32, offset: 20704)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !265, file: !266, line: 69, baseType: !364, size: 64, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !266, line: 116, size: 384, elements: !367)
!367 = !{!368, !372, !401, !743, !774, !778}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !366, file: !266, line: 117, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !273}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !366, file: !266, line: 118, baseType: !373, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !376, line: 254, size: 128, elements: !377)
!376 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!377 = !{!378, !393}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !375, file: !376, line: 255, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!382, !273, !387, !350}
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !251, line: 66, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !384, line: 73, baseType: !385)
!384 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !384, line: 15, baseType: !386)
!386 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !376, line: 30, size: 128, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !388, file: !376, line: 31, baseType: !269, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !388, file: !376, line: 32, baseType: !392, size: 16, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !251, line: 24, baseType: !320)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !375, file: !376, line: 256, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!382, !273, !387, !269, !397}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !251, line: 61, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !384, line: 72, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !384, line: 16, baseType: !400)
!400 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !366, file: !266, line: 119, baseType: !402, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !376, line: 84, size: 320, elements: !406)
!406 = !{!407, !408, !412, !739, !741}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !405, file: !376, line: 85, baseType: !269, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !405, file: !376, line: 86, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!392, !273, !387, !21}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !405, file: !376, line: 88, baseType: !413, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!392, !273, !416, !21}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !376, line: 175, size: 512, elements: !418)
!418 = !{!419, !420, !421, !423, !430, !440, !441}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !417, file: !376, line: 176, baseType: !388, size: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !417, file: !376, line: 177, baseType: !397, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !417, file: !376, line: 178, baseType: !422, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !417, file: !376, line: 179, baseType: !424, size: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !429, line: 32, flags: DIFlagFwdDecl)
!429 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!430 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !417, file: !376, line: 180, baseType: !431, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!382, !434, !273, !416, !350, !437, !397}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !436, line: 537, flags: DIFlagFwdDecl)
!436 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !251, line: 52, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !384, line: 88, baseType: !439)
!439 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !417, file: !376, line: 182, baseType: !431, size: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !417, file: !376, line: 184, baseType: !442, size: 64, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!21, !434, !273, !416, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !429, line: 625, size: 1344, elements: !447)
!447 = !{!448, !465, !687, !693, !700, !701, !706, !709, !721, !722, !725, !729, !730, !731, !732, !733, !737}
!448 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !429, line: 628, baseType: !449, size: 128)
!449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !446, file: !429, line: 628, size: 128, elements: !450)
!450 = !{!451, !456}
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !449, file: !429, line: 629, baseType: !452, size: 128)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !449, file: !429, line: 629, size: 128, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !452, file: !429, line: 631, baseType: !400, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !452, file: !429, line: 632, baseType: !400, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !449, file: !429, line: 635, baseType: !457, size: 128, align: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !251, line: 232, size: 128, align: 64, elements: !458)
!458 = !{!459, !461}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !251, line: 233, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !457, file: !251, line: 234, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !460}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !446, file: !429, line: 639, baseType: !466, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !429, line: 733, size: 10240, elements: !468)
!468 = !{!469, !683}
!469 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !429, line: 734, baseType: !470, size: 10240)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !467, file: !429, line: 734, size: 10240, elements: !471)
!471 = !{!472, !476, !490, !494, !495, !496, !497, !498, !499, !507, !508, !509, !518, !519, !528, !529, !530, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !577, !591, !594, !649, !650, !651, !654, !658, !659, !662, !663, !664, !670, !671}
!472 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !429, line: 739, baseType: !473, size: 512, align: 512)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !470, file: !429, line: 739, size: 512, align: 512, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !473, file: !429, line: 747, baseType: !300, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !470, file: !429, line: 750, baseType: !477, size: 128, offset: 512)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !478, line: 218, size: 128, elements: !479)
!478 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!479 = !{!480, !488, !489}
!480 = !DIDerivedType(tag: DW_TAG_member, scope: !477, file: !478, line: 219, baseType: !481, size: 32)
!481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !477, file: !478, line: 219, size: 32, elements: !482)
!482 = !{!483, !484}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !481, file: !478, line: 220, baseType: !280, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !481, file: !478, line: 221, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !478, line: 197, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !478, line: 197, elements: !487)
!487 = !{}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !477, file: !478, line: 223, baseType: !7, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !477, file: !478, line: 224, baseType: !422, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !470, file: !429, line: 752, baseType: !491, size: 64, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!400, !434, !400, !400, !400, !400}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !470, file: !429, line: 756, baseType: !400, size: 64, offset: 704)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !470, file: !429, line: 757, baseType: !400, size: 64, offset: 768)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !470, file: !429, line: 760, baseType: !400, size: 64, offset: 832)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !470, file: !429, line: 761, baseType: !400, size: 64, offset: 896)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !470, file: !429, line: 763, baseType: !400, size: 64, offset: 960)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !470, file: !429, line: 764, baseType: !500, size: 64, offset: 1024)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !436, line: 299, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 299, size: 64, elements: !503)
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !502, file: !436, line: 299, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !506, line: 18, baseType: !400)
!506 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!507 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !470, file: !429, line: 773, baseType: !300, size: 32, offset: 1088)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !470, file: !429, line: 785, baseType: !300, size: 32, offset: 1120)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !470, file: !429, line: 795, baseType: !510, size: 64, offset: 1152)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !429, line: 726, size: 128, elements: !512)
!512 = !{!513, !517}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !511, file: !429, line: 727, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !309, line: 23, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !311, line: 31, baseType: !516)
!516 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !511, file: !429, line: 728, baseType: !21, size: 32, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !470, file: !429, line: 801, baseType: !400, size: 64, offset: 1216)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !470, file: !429, line: 804, baseType: !520, size: 64, offset: 1280)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !521, line: 13, baseType: !522)
!521 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !251, line: 181, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 179, size: 64, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !523, file: !251, line: 180, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !309, line: 22, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !311, line: 30, baseType: !439)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !470, file: !429, line: 806, baseType: !21, size: 32, offset: 1344)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !470, file: !429, line: 808, baseType: !280, size: 32, offset: 1376)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !470, file: !429, line: 823, baseType: !531, size: 320, offset: 1408)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !532, line: 48, size: 320, elements: !533)
!532 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!533 = !{!534, !535, !536, !541, !543}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !531, file: !532, line: 49, baseType: !520, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !531, file: !532, line: 55, baseType: !520, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !531, file: !532, line: 57, baseType: !537, size: 32, offset: 128)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !538, line: 15, size: 32, elements: !539)
!538 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !537, file: !538, line: 20, baseType: !300, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !531, file: !532, line: 59, baseType: !542, size: 32, offset: 160)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !289, line: 23, baseType: !288)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !531, file: !532, line: 60, baseType: !250, size: 128, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !470, file: !429, line: 825, baseType: !250, size: 128, offset: 1728)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !470, file: !429, line: 845, baseType: !21, size: 32, offset: 1856)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !470, file: !429, line: 849, baseType: !400, size: 64, offset: 1920)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !470, file: !429, line: 850, baseType: !400, size: 64, offset: 1984)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !470, file: !429, line: 852, baseType: !400, size: 64, offset: 2048)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !470, file: !429, line: 853, baseType: !400, size: 64, offset: 2112)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !470, file: !429, line: 854, baseType: !522, size: 64, offset: 2176)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !470, file: !429, line: 855, baseType: !400, size: 64, offset: 2240)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !470, file: !429, line: 856, baseType: !400, size: 64, offset: 2304)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !470, file: !429, line: 857, baseType: !400, size: 64, offset: 2368)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !470, file: !429, line: 858, baseType: !400, size: 64, offset: 2432)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !470, file: !429, line: 865, baseType: !556, size: 32, offset: 2496)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !557, line: 69, baseType: !558)
!557 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !557, line: 64, size: 32, elements: !559)
!559 = !{!560}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !558, file: !557, line: 65, baseType: !7, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !470, file: !429, line: 867, baseType: !280, size: 32, offset: 2528)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !470, file: !429, line: 869, baseType: !400, size: 64, offset: 2560)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !470, file: !429, line: 869, baseType: !400, size: 64, offset: 2624)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !470, file: !429, line: 869, baseType: !400, size: 64, offset: 2688)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !470, file: !429, line: 869, baseType: !400, size: 64, offset: 2752)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !470, file: !429, line: 870, baseType: !400, size: 64, offset: 2816)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !470, file: !429, line: 870, baseType: !400, size: 64, offset: 2880)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !470, file: !429, line: 870, baseType: !400, size: 64, offset: 2944)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !470, file: !429, line: 871, baseType: !400, size: 64, offset: 3008)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !470, file: !429, line: 871, baseType: !400, size: 64, offset: 3072)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !470, file: !429, line: 871, baseType: !400, size: 64, offset: 3136)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !470, file: !429, line: 871, baseType: !400, size: 64, offset: 3200)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !470, file: !429, line: 873, baseType: !574, size: 3328, offset: 3264)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 3328, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 52)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !470, file: !429, line: 875, baseType: !578, size: 1280, offset: 6592)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 1280, elements: !589)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !580, line: 22, size: 320, elements: !581)
!580 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!581 = !{!582, !583, !584, !585}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !579, file: !580, line: 23, baseType: !542, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !579, file: !580, line: 24, baseType: !526, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !579, file: !580, line: 26, baseType: !250, size: 128, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !579, file: !580, line: 28, baseType: !586, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !309, line: 20, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !311, line: 26, baseType: !21)
!589 = !{!590}
!590 = !DISubrange(count: 4)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !470, file: !429, line: 877, baseType: !592, size: 64, offset: 7872)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !429, line: 877, flags: DIFlagFwdDecl)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !470, file: !429, line: 880, baseType: !595, size: 1088, offset: 7936)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !596, line: 72, baseType: !597)
!596 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !596, line: 23, size: 1088, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !606, !607, !615, !616, !643, !644, !645}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !597, file: !596, line: 28, baseType: !514, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !597, file: !596, line: 38, baseType: !522, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !597, file: !596, line: 40, baseType: !400, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !597, file: !596, line: 43, baseType: !531, size: 320, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !597, file: !596, line: 44, baseType: !604, size: 64, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !596, line: 44, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !596, line: 48, baseType: !400, size: 64, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !597, file: !596, line: 59, baseType: !608, size: 256, offset: 640)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !609, line: 66, size: 256, elements: !610)
!609 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!610 = !{!611, !612, !613, !614}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !608, file: !609, line: 67, baseType: !520, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !608, file: !609, line: 68, baseType: !542, size: 32, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !608, file: !609, line: 70, baseType: !537, size: 32, offset: 96)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !608, file: !609, line: 72, baseType: !250, size: 128, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !597, file: !596, line: 60, baseType: !422, size: 64, offset: 896)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !597, file: !596, line: 61, baseType: !617, size: 64, offset: 960)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !620, line: 13, size: 1216, elements: !621)
!620 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!621 = !{!622, !623, !624, !625, !626, !627, !628, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !619, file: !620, line: 14, baseType: !422, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !619, file: !620, line: 15, baseType: !400, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !619, file: !620, line: 17, baseType: !400, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !619, file: !620, line: 17, baseType: !400, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !619, file: !620, line: 18, baseType: !400, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !619, file: !620, line: 18, baseType: !400, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !619, file: !620, line: 19, baseType: !629, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !619, file: !620, line: 21, baseType: !386, size: 64, offset: 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !619, file: !620, line: 23, baseType: !386, size: 64, offset: 512)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !619, file: !620, line: 24, baseType: !386, size: 64, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !619, file: !620, line: 25, baseType: !386, size: 64, offset: 640)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !619, file: !620, line: 26, baseType: !386, size: 64, offset: 704)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !619, file: !620, line: 27, baseType: !386, size: 64, offset: 768)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !619, file: !620, line: 28, baseType: !386, size: 64, offset: 832)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !619, file: !620, line: 29, baseType: !386, size: 64, offset: 896)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !619, file: !620, line: 30, baseType: !386, size: 64, offset: 960)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !619, file: !620, line: 31, baseType: !386, size: 64, offset: 1024)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !619, file: !620, line: 32, baseType: !386, size: 64, offset: 1088)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !619, file: !620, line: 33, baseType: !386, size: 64, offset: 1152)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !597, file: !596, line: 63, baseType: !300, size: 32, offset: 1024)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !597, file: !596, line: 69, baseType: !318, size: 16, offset: 1056)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !597, file: !596, line: 70, baseType: !646, size: 16, offset: 1072)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !309, line: 18, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !311, line: 23, baseType: !648)
!648 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !429, line: 882, baseType: !400, size: 64, offset: 9024)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !470, file: !429, line: 885, baseType: !280, size: 32, offset: 9088)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !470, file: !429, line: 886, baseType: !652, size: 64, offset: 9152)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !429, line: 732, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !470, file: !429, line: 901, baseType: !655, size: 64, offset: 9216)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !657, line: 18, flags: DIFlagFwdDecl)
!657 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!658 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !470, file: !429, line: 904, baseType: !434, size: 64, offset: 9280)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !470, file: !429, line: 906, baseType: !660, size: 64, offset: 9344)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !429, line: 906, flags: DIFlagFwdDecl)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !470, file: !429, line: 930, baseType: !300, size: 32, offset: 9408)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !470, file: !429, line: 933, baseType: !300, size: 32, offset: 9440)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !470, file: !429, line: 935, baseType: !665, size: 64, offset: 9472)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !231, line: 103, size: 64, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !665, file: !231, line: 104, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !231, line: 101, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !470, file: !429, line: 940, baseType: !520, size: 64, offset: 9536)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !470, file: !429, line: 942, baseType: !672, size: 256, offset: 9600)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !673, line: 98, size: 256, elements: !674)
!673 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!674 = !{!675, !676, !677}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !672, file: !673, line: 99, baseType: !520, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !672, file: !673, line: 100, baseType: !250, size: 128, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !672, file: !673, line: 101, baseType: !678, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !673, line: 21, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !467, file: !429, line: 986, baseType: !684, offset: 10240)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: -1)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !446, file: !429, line: 640, baseType: !688, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !436, line: 297, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !436, line: 297, size: 64, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !689, file: !436, line: 297, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !506, line: 19, baseType: !400)
!693 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !429, line: 646, baseType: !694, size: 64, offset: 256)
!694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !446, file: !429, line: 646, size: 64, elements: !695)
!695 = !{!696, !699}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !694, file: !429, line: 647, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !429, line: 542, baseType: !400)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !694, file: !429, line: 648, baseType: !698, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !446, file: !429, line: 666, baseType: !21, size: 32, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !446, file: !429, line: 667, baseType: !702, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !429, line: 579, size: 320, elements: !704)
!704 = !{!705}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !703, file: !429, line: 580, baseType: !531, size: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !446, file: !429, line: 670, baseType: !707, size: 8, offset: 448)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !251, line: 35, baseType: !708)
!708 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !446, file: !429, line: 681, baseType: !710, size: 256, offset: 512)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !446, file: !429, line: 678, size: 256, elements: !711)
!711 = !{!712, !720}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !710, file: !429, line: 679, baseType: !713, size: 192, align: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !714, line: 5, size: 192, align: 64, elements: !715)
!714 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!715 = !{!716, !717, !719}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !713, file: !714, line: 6, baseType: !400, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !713, file: !714, line: 7, baseType: !718, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !713, file: !714, line: 8, baseType: !718, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !710, file: !429, line: 680, baseType: !400, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !446, file: !429, line: 689, baseType: !250, size: 128, offset: 768)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !446, file: !429, line: 691, baseType: !723, size: 64, offset: 896)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !429, line: 691, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !446, file: !429, line: 694, baseType: !726, size: 64, offset: 960)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !429, line: 694, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !446, file: !429, line: 697, baseType: !400, size: 64, offset: 1024)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !446, file: !429, line: 699, baseType: !434, size: 64, offset: 1088)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !446, file: !429, line: 700, baseType: !422, size: 64, offset: 1152)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !446, file: !429, line: 711, baseType: !520, size: 64, offset: 1216)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !446, file: !429, line: 717, baseType: !734, size: 64, offset: 1280)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !736, line: 54, flags: DIFlagFwdDecl)
!736 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!737 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !446, file: !429, line: 722, baseType: !738, offset: 1344)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !429, line: 570, elements: !487)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !405, file: !376, line: 90, baseType: !740, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !405, file: !376, line: 91, baseType: !742, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !366, file: !266, line: 120, baseType: !744, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!747, !333}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !749)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !750)
!750 = !{!751, !752, !756, !760, !766, !770}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !749, file: !14, line: 40, baseType: !13, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !749, file: !14, line: 41, baseType: !753, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!707}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !749, file: !14, line: 42, baseType: !757, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!422}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !749, file: !14, line: 43, baseType: !761, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!629, !764}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !749, file: !14, line: 44, baseType: !767, size: 64, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!629}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !749, file: !14, line: 45, baseType: !771, size: 64, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !422}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !366, file: !266, line: 121, baseType: !775, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!629, !333}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !366, file: !266, line: 122, baseType: !779, size: 64, offset: 320)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !333, !782, !789}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !657, line: 23, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !657, line: 21, size: 32, elements: !785)
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !784, file: !657, line: 22, baseType: !787, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !251, line: 37, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !384, line: 49, baseType: !7)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !657, line: 28, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !657, line: 26, size: 32, elements: !792)
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !791, file: !657, line: 27, baseType: !794, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !251, line: 38, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !384, line: 50, baseType: !7)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !265, file: !266, line: 70, baseType: !797, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !799, line: 190, size: 1152, elements: !800)
!799 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!800 = !{!801, !802, !803, !804, !805, !806, !807, !808, !902, !903, !904, !905, !906, !909}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !798, file: !799, line: 191, baseType: !300, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !798, file: !799, line: 192, baseType: !300, size: 32, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !798, file: !799, line: 202, baseType: !797, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !798, file: !799, line: 203, baseType: !269, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !798, file: !799, line: 205, baseType: !713, size: 192, align: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !798, file: !799, line: 207, baseType: !629, size: 64, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !798, file: !799, line: 208, baseType: !7, size: 32, offset: 448)
!808 = !DIDerivedType(tag: DW_TAG_member, scope: !798, file: !799, line: 209, baseType: !809, size: 256, offset: 512)
!809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !798, file: !799, line: 209, size: 256, elements: !810)
!810 = !{!811, !823, !827}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !809, file: !799, line: 210, baseType: !812, size: 256)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !799, line: 153, size: 256, elements: !813)
!813 = !{!814, !815, !819, !822}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !812, file: !799, line: 154, baseType: !400, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !812, file: !799, line: 156, baseType: !816, size: 64, offset: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !714, line: 12, size: 64, elements: !817)
!817 = !{!818}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !816, file: !714, line: 13, baseType: !718, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !812, file: !799, line: 162, baseType: !820, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !799, line: 162, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !812, file: !799, line: 167, baseType: !400, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !809, file: !799, line: 211, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !799, line: 170, size: 64, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !824, file: !799, line: 171, baseType: !797, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !809, file: !799, line: 212, baseType: !828, size: 256)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !799, line: 174, size: 256, elements: !829)
!829 = !{!830, !897, !900, !901}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !828, file: !799, line: 175, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !799, line: 271, size: 768, elements: !834)
!834 = !{!835, !857, !861, !865, !870, !874, !878, !882, !883, !884, !885, !893}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !833, file: !799, line: 276, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!21, !839}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !799, line: 251, size: 1216, elements: !841)
!841 = !{!842, !843, !844, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !840, file: !799, line: 253, baseType: !797, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !840, file: !799, line: 254, baseType: !434, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !840, file: !799, line: 255, baseType: !845, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !736, line: 66, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !840, file: !799, line: 256, baseType: !422, size: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !840, file: !799, line: 259, baseType: !608, size: 256, offset: 256)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !840, file: !799, line: 260, baseType: !608, size: 256, offset: 512)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !840, file: !799, line: 261, baseType: !21, size: 32, offset: 768)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !840, file: !799, line: 262, baseType: !250, size: 128, offset: 832)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !840, file: !799, line: 263, baseType: !350, size: 64, offset: 960)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !840, file: !799, line: 265, baseType: !397, size: 64, offset: 1024)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !840, file: !799, line: 266, baseType: !707, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !840, file: !799, line: 267, baseType: !707, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !840, file: !799, line: 268, baseType: !726, size: 64, offset: 1152)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !833, file: !799, line: 277, baseType: !858, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !839}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !833, file: !799, line: 290, baseType: !862, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!21, !845, !422}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !833, file: !799, line: 292, baseType: !866, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!422, !845, !869}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !833, file: !799, line: 293, baseType: !871, size: 64, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!422, !845, !422, !869}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !833, file: !799, line: 294, baseType: !875, size: 64, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{null, !845, !422}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !833, file: !799, line: 296, baseType: !879, size: 64, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!382, !839, !350, !397, !437}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !833, file: !799, line: 306, baseType: !397, size: 64, offset: 448)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !833, file: !799, line: 313, baseType: !707, size: 8, offset: 512)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !833, file: !799, line: 314, baseType: !879, size: 64, offset: 576)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !833, file: !799, line: 317, baseType: !886, size: 64, offset: 640)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!889, !839, !891}
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !890, line: 59, baseType: !7)
!890 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !799, line: 31, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !833, file: !799, line: 320, baseType: !894, size: 64, offset: 704)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!21, !839, !445}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !828, file: !799, line: 176, baseType: !898, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !799, line: 35, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !828, file: !799, line: 177, baseType: !437, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !828, file: !799, line: 178, baseType: !797, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !798, file: !799, line: 215, baseType: !422, size: 64, offset: 768)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !798, file: !799, line: 221, baseType: !514, size: 64, offset: 832)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !798, file: !799, line: 223, baseType: !320, size: 16, offset: 896)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !798, file: !799, line: 224, baseType: !392, size: 16, offset: 912)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !798, file: !799, line: 225, baseType: !907, size: 64, offset: 960)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !799, line: 36, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !798, file: !799, line: 227, baseType: !457, size: 128, align: 64, offset: 1024)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !265, file: !266, line: 71, baseType: !911, size: 32, offset: 448)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !912, line: 19, size: 32, elements: !913)
!912 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !911, file: !912, line: 20, baseType: !915, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !916, line: 113, baseType: !917)
!916 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !916, line: 111, size: 32, elements: !918)
!918 = !{!919}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !917, file: !916, line: 112, baseType: !300, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !265, file: !266, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !265, file: !266, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !265, file: !266, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !265, file: !266, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !265, file: !266, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !262, file: !6, line: 47, baseType: !245, size: 64, offset: 512)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !262, file: !6, line: 48, baseType: !273, size: 64, offset: 576)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !262, file: !6, line: 49, baseType: !928, size: 64, offset: 640)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !262, file: !6, line: 50, baseType: !931, size: 64, offset: 704)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !933, line: 26, size: 256, elements: !934)
!933 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !932, file: !933, line: 27, baseType: !7, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !932, file: !933, line: 28, baseType: !937, size: 192, offset: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !938, line: 43, size: 192, elements: !939)
!938 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !937, file: !938, line: 44, baseType: !542, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !937, file: !938, line: 45, baseType: !250, size: 128, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !246, file: !6, line: 418, baseType: !943, size: 64, offset: 1408)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !945)
!945 = !{!946, !947, !952, !956, !960, !964}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !944, file: !6, line: 54, baseType: !388, size: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !944, file: !6, line: 55, baseType: !948, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!382, !943, !951, !350}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !944, file: !6, line: 57, baseType: !953, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!382, !943, !951, !269, !397}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !944, file: !6, line: 59, baseType: !957, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !245, !269}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !944, file: !6, line: 60, baseType: !961, size: 64, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!21, !245}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !944, file: !6, line: 61, baseType: !965, size: 64, offset: 384)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !245}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !246, file: !6, line: 419, baseType: !269, size: 64, offset: 1472)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !246, file: !6, line: 420, baseType: !269, size: 64, offset: 1536)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !246, file: !6, line: 421, baseType: !273, size: 64, offset: 1600)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !246, file: !6, line: 424, baseType: !972, size: 64, offset: 1664)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !246, file: !6, line: 425, baseType: !976, size: 64, offset: 1728)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !246, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !246, file: !6, line: 435, baseType: !608, size: 256, offset: 1856)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !246, file: !6, line: 437, baseType: !981, size: 64, offset: 2112)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !983, line: 69, size: 320, elements: !984)
!983 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!984 = !{!985, !986, !987, !1004, !1006, !1010, !1011}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !982, file: !983, line: 70, baseType: !269, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !982, file: !983, line: 71, baseType: !245, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !982, file: !983, line: 72, baseType: !988, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !990)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !983, line: 47, size: 256, elements: !991)
!991 = !{!992, !993, !999, !1003}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !990, file: !983, line: 49, baseType: !7, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !990, file: !983, line: 51, baseType: !994, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!21, !269, !997}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !982)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !990, file: !983, line: 53, baseType: !1000, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!21, !350, !997}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !990, file: !983, line: 55, baseType: !771, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !982, file: !983, line: 73, baseType: !1005, size: 16, offset: 192)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !982, file: !983, line: 74, baseType: !1007, size: 8, offset: 208)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !309, line: 16, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !311, line: 20, baseType: !1009)
!1009 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !982, file: !983, line: 75, baseType: !308, size: 8, offset: 216)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !983, line: 76, baseType: !1012, size: 64, offset: 256)
!1012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !983, line: 76, size: 64, elements: !1013)
!1013 = !{!1014, !1015, !1022}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1012, file: !983, line: 77, baseType: !422, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1012, file: !983, line: 78, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !983, line: 86, size: 128, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1018, file: !983, line: 87, baseType: !7, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1018, file: !983, line: 88, baseType: !350, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1012, file: !983, line: 79, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !983, line: 92, size: 256, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1031, !1032}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1025, file: !983, line: 94, baseType: !7, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1025, file: !983, line: 95, baseType: !7, size: 32, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1025, file: !983, line: 96, baseType: !1030, size: 64, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1025, file: !983, line: 97, baseType: !988, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1025, file: !983, line: 98, baseType: !422, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !246, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !246, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !246, file: !6, line: 442, baseType: !972, size: 64, offset: 2240)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !246, file: !6, line: 443, baseType: !976, size: 64, offset: 2304)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !246, file: !6, line: 444, baseType: !707, size: 8, offset: 2368)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !246, file: !6, line: 451, baseType: !707, size: 8, offset: 2376)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !246, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !246, file: !6, line: 455, baseType: !1041, size: 64, offset: 2432)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1043, line: 23, size: 96, elements: !1044)
!1043 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1042, file: !1043, line: 24, baseType: !21, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1042, file: !1043, line: 24, baseType: !21, size: 32, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1042, file: !1043, line: 24, baseType: !21, size: 32, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !246, file: !6, line: 458, baseType: !1049, size: 64, offset: 2496)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!21}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !246, file: !6, line: 460, baseType: !1053, size: 4032, align: 512, offset: 2560)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1054, size: 4032, elements: !1070)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1055)
!1055 = !{!1056, !1057, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1054, file: !6, line: 363, baseType: !422, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1054, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1054, file: !6, line: 367, baseType: !1059, size: 448, offset: 128)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1059, file: !6, line: 320, baseType: !245, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1059, file: !6, line: 321, baseType: !1063, size: 384, offset: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1064, line: 40, size: 384, elements: !1065)
!1064 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1065 = !{!1066}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1063, file: !1064, line: 41, baseType: !1067, size: 384, align: 64)
!1067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 384, align: 64, elements: !1068)
!1068 = !{!1069}
!1069 = !DISubrange(count: 2)
!1070 = !{!1071}
!1071 = !DISubrange(count: 7)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !246, file: !6, line: 463, baseType: !1073, size: 192, offset: 6592)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1074, line: 8, size: 192, elements: !1075)
!1074 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1075 = !{!1076, !1077, !1079}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1073, file: !1074, line: 10, baseType: !7, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1073, file: !1074, line: 11, baseType: !1078, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1073, file: !1074, line: 12, baseType: !1080, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1082, line: 59, size: 48, elements: !1083)
!1082 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1083 = !{!1084, !1085, !1086, !1087, !1088, !1089}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1081, file: !1082, line: 60, baseType: !646, size: 16)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1081, file: !1082, line: 61, baseType: !646, size: 16, offset: 16)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1081, file: !1082, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1081, file: !1082, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1081, file: !1082, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1081, file: !1082, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !246, file: !6, line: 465, baseType: !400, size: 64, offset: 6784)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !246, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !246, file: !6, line: 470, baseType: !250, size: 128, offset: 6912)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !246, file: !6, line: 471, baseType: !1094, size: 64, offset: 7040)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1096, line: 33, size: 96, elements: !1097)
!1096 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1097 = !{!1098, !1099, !1100, !1101}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1095, file: !1096, line: 37, baseType: !21, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1095, file: !1096, line: 43, baseType: !21, size: 32, offset: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1095, file: !1096, line: 45, baseType: !320, size: 16, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1095, file: !1096, line: 47, baseType: !320, size: 16, offset: 80)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !246, file: !6, line: 476, baseType: !1103, size: 64, offset: 7104)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1105)
!1105 = !{!1106, !1123, !1124, !1125}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1104, file: !6, line: 379, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1109, line: 204, baseType: !1110)
!1109 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1109, line: 197, size: 192, elements: !1111)
!1111 = !{!1112, !1115, !1116, !1117, !1119, !1121}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1110, file: !1109, line: 198, baseType: !1113, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1109, line: 21, baseType: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !311, line: 27, baseType: !7)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1110, file: !1109, line: 199, baseType: !312, size: 8, offset: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1110, file: !1109, line: 200, baseType: !312, size: 8, offset: 40)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1110, file: !1109, line: 201, baseType: !1118, size: 16, offset: 48)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1109, line: 17, baseType: !319)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1110, file: !1109, line: 202, baseType: !1120, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1109, line: 16, baseType: !515)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1110, file: !1109, line: 203, baseType: !1122, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1109, line: 22, baseType: !515)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1104, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1104, file: !6, line: 381, baseType: !350, size: 64, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1104, file: !6, line: 382, baseType: !350, size: 64, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !246, file: !6, line: 477, baseType: !1104, size: 256, offset: 7168)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !246, file: !6, line: 480, baseType: !1128, size: 64, offset: 7424)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !246, file: !6, line: 483, baseType: !1131, size: 64, offset: 7488)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !246, file: !6, line: 488, baseType: !350, size: 64, offset: 7552)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !246, file: !6, line: 492, baseType: !422, size: 64, offset: 7616)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !246, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !246, file: !6, line: 495, baseType: !422, size: 64, offset: 7744)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !246, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !246, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !246, file: !6, line: 500, baseType: !1140, size: 64, offset: 7872)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1142, line: 45, baseType: !1143)
!1142 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !246, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !246, file: !6, line: 504, baseType: !1146, size: 64, offset: 8000)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1149, line: 96, size: 192, elements: !1150)
!1149 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1150 = !{!1151, !1152, !1213, !1216}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1148, file: !1149, line: 97, baseType: !7, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1148, file: !1149, line: 98, baseType: !1153, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1149, line: 24, size: 3072, elements: !1155)
!1155 = !{!1156, !1158, !1159, !1160, !1161, !1175, !1176, !1177, !1178, !1197, !1198, !1199, !1210, !1211, !1212}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1154, file: !1149, line: 26, baseType: !1157, size: 128)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 128, elements: !1068)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1154, file: !1149, line: 27, baseType: !1157, size: 128, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1154, file: !1149, line: 28, baseType: !21, size: 32, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1154, file: !1149, line: 31, baseType: !280, size: 32, align: 512, offset: 512)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1154, file: !1149, line: 32, baseType: !1162, size: 960, offset: 576)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1163, line: 206, size: 960, elements: !1164)
!1163 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1164 = !{!1165, !1166, !1169, !1171, !1172, !1174}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1162, file: !1163, line: 207, baseType: !460, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1162, file: !1163, line: 208, baseType: !1167, size: 256, offset: 64)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1168, size: 256, elements: !589)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1162, file: !1163, line: 209, baseType: !1170, size: 256, offset: 320)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 256, elements: !589)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1162, file: !1163, line: 213, baseType: !386, size: 64, offset: 576)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1162, file: !1163, line: 215, baseType: !1173, size: 256, offset: 640)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 256, elements: !589)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1162, file: !1163, line: 216, baseType: !308, size: 8, offset: 896)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1154, file: !1149, line: 33, baseType: !400, size: 64, offset: 1536)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1154, file: !1149, line: 34, baseType: !400, size: 64, offset: 1600)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1154, file: !1149, line: 35, baseType: !707, size: 8, offset: 1664)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1154, file: !1149, line: 36, baseType: !1179, size: 320, offset: 1728)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1180, line: 11, size: 320, elements: !1181)
!1180 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1181 = !{!1182, !1189, !1190, !1195}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1179, file: !1180, line: 16, baseType: !1183, size: 128)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !251, line: 198, size: 128, elements: !1184)
!1184 = !{!1185, !1187}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1183, file: !251, line: 199, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1183, file: !251, line: 199, baseType: !1188, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1179, file: !1180, line: 17, baseType: !400, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1179, file: !1180, line: 18, baseType: !1191, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !1194}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1179, file: !1180, line: 19, baseType: !1196, size: 32, offset: 256)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !309, line: 21, baseType: !1114)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1154, file: !1149, line: 37, baseType: !672, size: 256, offset: 2048)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1154, file: !1149, line: 38, baseType: !457, size: 128, align: 64, offset: 2304)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1154, file: !1149, line: 39, baseType: !1200, size: 64, offset: 2432)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1149, line: 49, size: 768, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1207, !1208, !1209}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1201, file: !1149, line: 50, baseType: !280, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1201, file: !1149, line: 51, baseType: !1170, size: 256, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1201, file: !1149, line: 53, baseType: !1170, size: 256, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1201, file: !1149, line: 54, baseType: !400, size: 64, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1201, file: !1149, line: 55, baseType: !1200, size: 64, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1201, file: !1149, line: 56, baseType: !21, size: 32, offset: 704)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1201, file: !1149, line: 57, baseType: !21, size: 32, offset: 736)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1154, file: !1149, line: 40, baseType: !400, size: 64, offset: 2496)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1154, file: !1149, line: 42, baseType: !21, size: 32, offset: 2560)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1154, file: !1149, line: 43, baseType: !1147, size: 64, offset: 2624)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1148, file: !1149, line: 99, baseType: !1214, offset: 128)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1215, line: 211, elements: !487)
!1215 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1148, file: !1149, line: 100, baseType: !1217, size: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1149, line: 63, size: 3008, elements: !1219)
!1219 = !{!1220, !1221, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1251}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1218, file: !1149, line: 64, baseType: !1200, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1218, file: !1149, line: 65, baseType: !1222, size: 192, offset: 64)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1200, size: 192, elements: !351)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1218, file: !1149, line: 67, baseType: !21, size: 32, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1218, file: !1149, line: 68, baseType: !608, size: 256, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1218, file: !1149, line: 69, baseType: !280, size: 32, offset: 576)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1218, file: !1149, line: 70, baseType: !608, size: 256, offset: 640)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1218, file: !1149, line: 71, baseType: !400, size: 64, offset: 896)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1218, file: !1149, line: 72, baseType: !400, size: 64, offset: 960)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1218, file: !1149, line: 73, baseType: !400, size: 64, offset: 1024)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1218, file: !1149, line: 74, baseType: !400, size: 64, offset: 1088)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1218, file: !1149, line: 75, baseType: !400, size: 64, offset: 1152)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1218, file: !1149, line: 76, baseType: !400, size: 64, offset: 1216)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1218, file: !1149, line: 77, baseType: !400, size: 64, offset: 1280)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1218, file: !1149, line: 78, baseType: !400, size: 64, offset: 1344)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1218, file: !1149, line: 79, baseType: !707, size: 8, offset: 1408)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1218, file: !1149, line: 80, baseType: !400, size: 64, offset: 1472)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1218, file: !1149, line: 81, baseType: !608, size: 256, offset: 1536)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1218, file: !1149, line: 82, baseType: !932, size: 256, offset: 1792)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1218, file: !1149, line: 84, baseType: !300, size: 32, offset: 2048)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1218, file: !1149, line: 87, baseType: !400, size: 64, offset: 2112)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1218, file: !1149, line: 88, baseType: !400, size: 64, offset: 2176)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1218, file: !1149, line: 89, baseType: !1243, size: 704, offset: 2240)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !673, line: 111, size: 704, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1250}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1243, file: !673, line: 112, baseType: !672, size: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1243, file: !673, line: 113, baseType: !1179, size: 320, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1243, file: !673, line: 116, baseType: !1248, size: 64, offset: 576)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !673, line: 18, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1243, file: !673, line: 117, baseType: !21, size: 32, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1218, file: !1149, line: 90, baseType: !1147, size: 64, offset: 2944)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !246, file: !6, line: 515, baseType: !1253, size: 64, offset: 8064)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1255, line: 117, size: 128, elements: !1256)
!1255 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1256 = !{!1257, !1258, !1259}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1254, file: !1255, line: 118, baseType: !587, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1254, file: !1255, line: 119, baseType: !587, size: 32, offset: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1254, file: !1255, line: 120, baseType: !386, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !246, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !246, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !246, file: !6, line: 520, baseType: !1263, size: 64, offset: 8192)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !246, file: !6, line: 523, baseType: !1265, size: 64, offset: 8256)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !246, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !246, file: !6, line: 525, baseType: !1270, size: 64, offset: 8384)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !246, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !246, file: !6, line: 533, baseType: !422, size: 64, offset: 8512)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !246, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !246, file: !6, line: 535, baseType: !1277, size: 64, offset: 8640)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !246, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !246, file: !6, line: 539, baseType: !21, size: 32, offset: 8736)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !246, file: !6, line: 540, baseType: !1281, size: 64, offset: 8768)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1283, line: 32, size: 64, elements: !1284)
!1283 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1284 = !{!1285, !1286}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1282, file: !1283, line: 33, baseType: !587, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1282, file: !1283, line: 34, baseType: !587, size: 32, offset: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !246, file: !6, line: 563, baseType: !250, size: 128, offset: 8832)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !246, file: !6, line: 565, baseType: !250, size: 128, offset: 8960)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !246, file: !6, line: 568, baseType: !1290, size: 64, offset: 9088)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !246, file: !6, line: 570, baseType: !300, size: 32, offset: 9152)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1296, line: 56, size: 192, elements: !1297)
!1296 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1297 = !{!1298, !1299, !1300, !1301}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1295, file: !1296, line: 57, baseType: !400, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1295, file: !1296, line: 58, baseType: !400, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1295, file: !1296, line: 59, baseType: !1196, size: 32, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1295, file: !1296, line: 61, baseType: !1196, size: 32, offset: 160)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !258)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !386)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !736, line: 746, size: 58368, elements: !1309)
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1388, !1399, !1491, !1495, !1498, !1529, !1530, !1531, !1532, !1543, !1545, !1546, !1547, !1548, !1549, !1550, !1561, !1562, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1579, !1580, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1668, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1710, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1745, !1751, !1755, !1756, !1757, !1760, !1764, !1767, !1774, !1779, !1782, !1785, !1788, !1791, !1794, !1797, !1803, !1804, !1805, !1811, !1812, !1813, !1814, !1815, !1818, !1819, !1820, !1829, !1837, !1838, !1839, !1840, !1841, !1846, !1847, !1848, !1851, !1852, !1855, !1858, !1861, !1864, !1867, !1868, !1954, !1965, !1966, !1967, !1968, !1974, !1979, !1980, !1981, !1984, !1985, !1988, !1991, !1992, !1995, !1996, !1997, !2000, !2001, !2002, !2003, !2004, !2005, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2037, !2040, !2106, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2118, !2190, !2192, !2193, !2194, !2195, !2196, !2197, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2214, !2215, !2216}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1308, file: !736, line: 752, baseType: !1295, size: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1308, file: !736, line: 754, baseType: !7, size: 32, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1308, file: !736, line: 767, baseType: !422, size: 64, offset: 256)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1308, file: !736, line: 768, baseType: !915, size: 32, offset: 320)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1308, file: !736, line: 770, baseType: !7, size: 32, offset: 352)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1308, file: !736, line: 771, baseType: !7, size: 32, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1308, file: !736, line: 774, baseType: !21, size: 32, offset: 416)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1308, file: !736, line: 775, baseType: !1318, size: 128, offset: 448)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1319, line: 58, size: 128, elements: !1320)
!1319 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1320 = !{!1321, !1327, !1332, !1333}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1318, file: !1319, line: 59, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1323, line: 60, size: 64, elements: !1324)
!1323 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1324 = !{!1325}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1322, file: !1323, line: 61, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1318, file: !1319, line: 60, baseType: !1328, size: 32, offset: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1318, file: !1319, line: 60, size: 32, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1328, file: !1319, line: 61, baseType: !7, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1328, file: !1319, line: 62, baseType: !300, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1318, file: !1319, line: 65, baseType: !318, size: 16, offset: 96)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1318, file: !1319, line: 65, baseType: !318, size: 16, offset: 112)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1308, file: !736, line: 776, baseType: !7, size: 32, offset: 576)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1308, file: !736, line: 777, baseType: !400, size: 64, offset: 640)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1308, file: !736, line: 778, baseType: !1307, size: 64, offset: 704)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1308, file: !736, line: 787, baseType: !21, size: 32, offset: 768)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1308, file: !736, line: 788, baseType: !21, size: 32, offset: 800)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1308, file: !736, line: 790, baseType: !21, size: 32, offset: 832)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1308, file: !736, line: 792, baseType: !21, size: 32, offset: 864)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1308, file: !736, line: 793, baseType: !21, size: 32, offset: 896)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1308, file: !736, line: 794, baseType: !21, size: 32, offset: 928)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1308, file: !736, line: 795, baseType: !7, size: 32, offset: 960)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1308, file: !736, line: 797, baseType: !1345, size: 2048, offset: 1024)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !736, line: 551, size: 2048, elements: !1346)
!1346 = !{!1347, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1367, !1370, !1371, !1372}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1345, file: !736, line: 553, baseType: !1348, size: 128)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !736, line: 411, size: 128, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1348, file: !736, line: 412, baseType: !400, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1348, file: !736, line: 413, baseType: !1196, size: 32, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1345, file: !736, line: 554, baseType: !713, size: 192, align: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1345, file: !736, line: 555, baseType: !514, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1345, file: !736, line: 556, baseType: !514, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1345, file: !736, line: 558, baseType: !250, size: 128, offset: 448)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1345, file: !736, line: 559, baseType: !7, size: 32, offset: 576)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1345, file: !736, line: 561, baseType: !514, size: 64, offset: 640)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1345, file: !736, line: 562, baseType: !514, size: 64, offset: 704)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1345, file: !736, line: 563, baseType: !514, size: 64, offset: 768)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1345, file: !736, line: 564, baseType: !514, size: 64, offset: 832)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1345, file: !736, line: 565, baseType: !526, size: 64, offset: 896)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1345, file: !736, line: 566, baseType: !514, size: 64, offset: 960)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1345, file: !736, line: 568, baseType: !514, size: 64, offset: 1024)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1345, file: !736, line: 571, baseType: !21, size: 32, offset: 1088)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1345, file: !736, line: 572, baseType: !1366, size: 64, offset: 1152)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1345, file: !736, line: 574, baseType: !1368, size: 64, offset: 1216)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !736, line: 49, flags: DIFlagFwdDecl)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1345, file: !736, line: 576, baseType: !1368, size: 64, offset: 1280)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1345, file: !736, line: 578, baseType: !400, size: 64, offset: 1344)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1345, file: !736, line: 588, baseType: !1373, size: 512, align: 512, offset: 1536)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !736, line: 497, size: 512, align: 512, elements: !1374)
!1374 = !{!1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1373, file: !736, line: 498, baseType: !514, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1373, file: !736, line: 499, baseType: !514, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1373, file: !736, line: 500, baseType: !514, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1373, file: !736, line: 501, baseType: !1196, size: 32, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1373, file: !736, line: 502, baseType: !1196, size: 32, offset: 224)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1373, file: !736, line: 503, baseType: !400, size: 64, offset: 256)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1373, file: !736, line: 504, baseType: !400, size: 64, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1373, file: !736, line: 505, baseType: !400, size: 64, offset: 384)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1373, file: !736, line: 506, baseType: !1384, size: 64, align: 64, offset: 448)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !736, line: 445, size: 64, align: 64, elements: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1384, file: !736, line: 446, baseType: !7, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1384, file: !736, line: 447, baseType: !7, size: 32, offset: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1308, file: !736, line: 798, baseType: !1389, size: 384, offset: 3072)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !736, line: 592, size: 384, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394, !1395, !1396, !1397}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1389, file: !736, line: 593, baseType: !250, size: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1389, file: !736, line: 594, baseType: !400, size: 64, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1389, file: !736, line: 595, baseType: !400, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1389, file: !736, line: 596, baseType: !7, size: 32, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1389, file: !736, line: 597, baseType: !320, size: 16, offset: 288)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1389, file: !736, line: 598, baseType: !320, size: 16, offset: 304)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1389, file: !736, line: 600, baseType: !1398, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1308, file: !736, line: 799, baseType: !1400, size: 1792, offset: 3456)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !736, line: 610, size: 1792, elements: !1401)
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1488, !1489}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1400, file: !736, line: 611, baseType: !713, size: 192, align: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1400, file: !736, line: 618, baseType: !514, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1400, file: !736, line: 619, baseType: !514, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1400, file: !736, line: 620, baseType: !514, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1400, file: !736, line: 621, baseType: !514, size: 64, offset: 384)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1400, file: !736, line: 622, baseType: !514, size: 64, offset: 448)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1400, file: !736, line: 629, baseType: !526, size: 64, offset: 512)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1400, file: !736, line: 630, baseType: !514, size: 64, offset: 576)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1400, file: !736, line: 631, baseType: !7, size: 32, offset: 640)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1400, file: !736, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1400, file: !736, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1400, file: !736, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1400, file: !736, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1400, file: !736, line: 662, baseType: !1416, size: 512, offset: 704)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !220, line: 118, size: 512, elements: !1417)
!1417 = !{!1418, !1426, !1427, !1432, !1484, !1485, !1486, !1487}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1416, file: !220, line: 119, baseType: !1419, size: 256)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1420, line: 9, size: 256, elements: !1421)
!1420 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1419, file: !1420, line: 10, baseType: !713, size: 192, align: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1419, file: !1420, line: 11, baseType: !1424, size: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1425, line: 29, baseType: !526)
!1425 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1416, file: !220, line: 120, baseType: !1424, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1416, file: !220, line: 121, baseType: !1428, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!219, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1416, file: !220, line: 122, baseType: !1433, size: 64, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !220, line: 159, size: 512, align: 512, elements: !1435)
!1435 = !{!1436, !1461, !1462, !1465, !1470, !1471, !1479, !1483}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1434, file: !220, line: 160, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !220, line: 215, size: 4608, align: 512, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1438, file: !220, line: 216, baseType: !542, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1438, file: !220, line: 217, baseType: !7, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1438, file: !220, line: 218, baseType: !7, size: 32, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1438, file: !220, line: 219, baseType: !7, size: 32, offset: 96)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1438, file: !220, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1438, file: !220, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1438, file: !220, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1438, file: !220, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1438, file: !220, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1438, file: !220, line: 226, baseType: !7, size: 32, offset: 160)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1438, file: !220, line: 227, baseType: !320, size: 16, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1438, file: !220, line: 228, baseType: !320, size: 16, offset: 208)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1438, file: !220, line: 229, baseType: !7, size: 32, offset: 224)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1438, file: !220, line: 235, baseType: !1424, size: 64, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1438, file: !220, line: 236, baseType: !1431, size: 64, offset: 320)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1438, file: !220, line: 237, baseType: !1424, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1438, file: !220, line: 238, baseType: !1431, size: 64, offset: 448)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1438, file: !220, line: 239, baseType: !1458, size: 4096, align: 512, offset: 512)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1434, size: 4096, align: 512, elements: !1459)
!1459 = !{!1460}
!1460 = !DISubrange(count: 8)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1434, file: !220, line: 161, baseType: !7, size: 32, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1434, file: !220, line: 162, baseType: !1463, size: 32, offset: 96)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !251, line: 32, baseType: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !384, line: 96, baseType: !21)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1434, file: !220, line: 163, baseType: !1466, size: 32, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !557, line: 274, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !557, line: 274, size: 32, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1467, file: !557, line: 274, baseType: !556, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1434, file: !220, line: 164, baseType: !1431, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1434, file: !220, line: 165, baseType: !1472, size: 128, offset: 256)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1420, line: 14, size: 128, elements: !1473)
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1472, file: !1420, line: 15, baseType: !1475, size: 128)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !714, line: 26, size: 128, elements: !1476)
!1476 = !{!1477, !1478}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1475, file: !714, line: 27, baseType: !816, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1475, file: !714, line: 28, baseType: !718, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1434, file: !220, line: 166, baseType: !1480, size: 64, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!1424}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1434, file: !220, line: 167, baseType: !1424, size: 64, offset: 448)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1416, file: !220, line: 123, baseType: !308, size: 8, offset: 448)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1416, file: !220, line: 124, baseType: !308, size: 8, offset: 456)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1416, file: !220, line: 125, baseType: !308, size: 8, offset: 464)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1416, file: !220, line: 126, baseType: !308, size: 8, offset: 472)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1400, file: !736, line: 671, baseType: !1416, size: 512, offset: 1216)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1400, file: !736, line: 679, baseType: !1490, size: 64, offset: 1728)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1308, file: !736, line: 800, baseType: !1492, size: 64, offset: 5248)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1494)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !736, line: 800, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1308, file: !736, line: 809, baseType: !1496, size: 64, offset: 5312)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !736, line: 70, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1308, file: !736, line: 825, baseType: !1499, size: 2048, align: 512, offset: 5632)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !736, line: 509, size: 2048, align: 512, elements: !1500)
!1500 = !{!1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1499, file: !736, line: 511, baseType: !514, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1499, file: !736, line: 512, baseType: !514, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1499, file: !736, line: 513, baseType: !514, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1499, file: !736, line: 514, baseType: !514, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1499, file: !736, line: 515, baseType: !514, size: 64, offset: 256)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1499, file: !736, line: 516, baseType: !514, size: 64, offset: 320)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1499, file: !736, line: 518, baseType: !514, size: 64, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1499, file: !736, line: 519, baseType: !514, size: 64, offset: 448)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1499, file: !736, line: 520, baseType: !526, size: 64, offset: 512)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1499, file: !736, line: 522, baseType: !514, size: 64, offset: 576)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1499, file: !736, line: 523, baseType: !514, size: 64, offset: 640)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1499, file: !736, line: 524, baseType: !526, size: 64, offset: 704)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1499, file: !736, line: 526, baseType: !526, size: 64, offset: 768)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1499, file: !736, line: 527, baseType: !514, size: 64, offset: 832)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1499, file: !736, line: 529, baseType: !514, size: 64, offset: 896)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1499, file: !736, line: 530, baseType: !514, size: 64, offset: 960)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1499, file: !736, line: 531, baseType: !514, size: 64, offset: 1024)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1499, file: !736, line: 532, baseType: !514, size: 64, offset: 1088)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1499, file: !736, line: 533, baseType: !514, size: 64, offset: 1152)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1499, file: !736, line: 535, baseType: !514, size: 64, offset: 1216)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1499, file: !736, line: 536, baseType: !514, size: 64, offset: 1280)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1499, file: !736, line: 537, baseType: !514, size: 64, offset: 1344)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1499, file: !736, line: 538, baseType: !514, size: 64, offset: 1408)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1499, file: !736, line: 539, baseType: !514, size: 64, offset: 1472)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1499, file: !736, line: 540, baseType: !514, size: 64, offset: 1536)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1499, file: !736, line: 541, baseType: !514, size: 64, offset: 1600)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1499, file: !736, line: 542, baseType: !514, size: 64, offset: 1664)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1499, file: !736, line: 543, baseType: !514, size: 64, offset: 1728)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1308, file: !736, line: 833, baseType: !7, size: 32, offset: 7680)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1308, file: !736, line: 836, baseType: !7, size: 32, offset: 7712)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1308, file: !736, line: 837, baseType: !21, size: 32, offset: 7744)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1308, file: !736, line: 838, baseType: !1533, size: 64, offset: 7808)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1536, line: 19, baseType: !1537)
!1536 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1536, line: 19, size: 64, elements: !1538)
!1538 = !{!1539}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1537, file: !1536, line: 19, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 64, elements: !1541)
!1541 = !{!1542}
!1542 = !DISubrange(count: 1)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1308, file: !736, line: 839, baseType: !1544, size: 64, offset: 7872)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1308, file: !736, line: 840, baseType: !1535, size: 64, offset: 7936)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1308, file: !736, line: 841, baseType: !422, size: 64, offset: 8000)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1308, file: !736, line: 843, baseType: !320, size: 16, offset: 8064)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1308, file: !736, line: 845, baseType: !320, size: 16, offset: 8080)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1308, file: !736, line: 848, baseType: !21, size: 32, offset: 8096)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1308, file: !736, line: 849, baseType: !1551, size: 32, offset: 8128)
!1551 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !736, line: 718, size: 32, elements: !1552)
!1552 = !{!1553, !1560}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1551, file: !736, line: 724, baseType: !1554, size: 32)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1551, file: !736, line: 719, size: 32, elements: !1555)
!1555 = !{!1556, !1557, !1558, !1559}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1554, file: !736, line: 720, baseType: !308, size: 8)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1554, file: !736, line: 721, baseType: !308, size: 8, offset: 8)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1554, file: !736, line: 722, baseType: !308, size: 8, offset: 16)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1554, file: !736, line: 723, baseType: !308, size: 8, offset: 24)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1551, file: !736, line: 725, baseType: !1196, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1308, file: !736, line: 850, baseType: !250, size: 128, offset: 8192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1308, file: !736, line: 851, baseType: !1563, size: 64, offset: 8320)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !736, line: 60, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1308, file: !736, line: 855, baseType: !400, size: 64, offset: 8384)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1308, file: !736, line: 856, baseType: !308, size: 8, offset: 8448)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1308, file: !736, line: 857, baseType: !308, size: 8, offset: 8456)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1308, file: !736, line: 858, baseType: !21, size: 32, offset: 8480)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1308, file: !736, line: 859, baseType: !250, size: 128, offset: 8512)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1308, file: !736, line: 860, baseType: !21, size: 32, offset: 8640)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1308, file: !736, line: 861, baseType: !250, size: 128, offset: 8704)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1308, file: !736, line: 873, baseType: !1573, size: 256, offset: 8832)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !736, line: 376, size: 256, elements: !1574)
!1574 = !{!1575, !1576, !1577, !1578}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1573, file: !736, line: 381, baseType: !400, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1573, file: !736, line: 384, baseType: !516, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1573, file: !736, line: 389, baseType: !516, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1573, file: !736, line: 392, baseType: !516, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1308, file: !736, line: 875, baseType: !250, size: 128, offset: 9088)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1308, file: !736, line: 877, baseType: !1581, size: 320, offset: 9216)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1582, line: 86, size: 320, elements: !1583)
!1582 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1583 = !{!1584, !1585, !1586}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1581, file: !1582, line: 87, baseType: !21, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1581, file: !1582, line: 88, baseType: !250, size: 128, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1581, file: !1582, line: 89, baseType: !250, size: 128, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1308, file: !736, line: 878, baseType: !713, size: 192, align: 64, offset: 9536)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1308, file: !736, line: 881, baseType: !466, size: 64, offset: 9728)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1308, file: !736, line: 882, baseType: !466, size: 64, offset: 9792)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1308, file: !736, line: 884, baseType: !21, size: 32, offset: 9856)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1308, file: !736, line: 885, baseType: !21, size: 32, offset: 9888)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1308, file: !736, line: 886, baseType: !21, size: 32, offset: 9920)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1308, file: !736, line: 888, baseType: !21, size: 32, offset: 9952)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1308, file: !736, line: 890, baseType: !400, size: 64, offset: 9984)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1308, file: !736, line: 893, baseType: !7, size: 32, offset: 10048)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1308, file: !736, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1308, file: !736, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1308, file: !736, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1308, file: !736, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1308, file: !736, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1308, file: !736, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1308, file: !736, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1308, file: !736, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1308, file: !736, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1308, file: !736, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1308, file: !736, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1308, file: !736, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1308, file: !736, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1308, file: !736, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1308, file: !736, line: 969, baseType: !400, size: 64, offset: 10176)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1308, file: !736, line: 971, baseType: !1612, size: 448, offset: 10240)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !225, line: 25, size: 448, elements: !1613)
!1613 = !{!1614, !1615, !1620}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1612, file: !225, line: 26, baseType: !400, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1612, file: !225, line: 27, baseType: !1616, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!386, !1619}
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !225, line: 28, baseType: !1621, size: 320, offset: 128)
!1621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1612, file: !225, line: 28, size: 320, elements: !1622)
!1622 = !{!1623, !1633, !1658}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1621, file: !225, line: 37, baseType: !1624, size: 320)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1621, file: !225, line: 30, size: 320, elements: !1625)
!1625 = !{!1626, !1628, !1629, !1630, !1631, !1632}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1624, file: !225, line: 31, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1624, file: !225, line: 32, baseType: !1196, size: 32, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1624, file: !225, line: 33, baseType: !1196, size: 32, offset: 96)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1624, file: !225, line: 34, baseType: !1196, size: 32, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1624, file: !225, line: 35, baseType: !514, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1624, file: !225, line: 36, baseType: !1627, size: 64, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1621, file: !225, line: 47, baseType: !1634, size: 192)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1621, file: !225, line: 39, size: 192, elements: !1635)
!1635 = !{!1636, !1637, !1638, !1657}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1634, file: !225, line: 40, baseType: !1463, size: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1634, file: !225, line: 41, baseType: !224, size: 32, offset: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !225, line: 42, baseType: !1639, size: 64, offset: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1634, file: !225, line: 42, size: 64, elements: !1640)
!1640 = !{!1641, !1649}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1639, file: !225, line: 43, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1644, line: 7, size: 128, elements: !1645)
!1644 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1645 = !{!1646, !1648}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1643, file: !1644, line: 8, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !384, line: 93, baseType: !439)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1643, file: !1644, line: 9, baseType: !439, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1639, file: !225, line: 44, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1652, line: 7, size: 64, elements: !1653)
!1652 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1653 = !{!1654, !1656}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1651, file: !1652, line: 8, baseType: !1655, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1652, line: 5, baseType: !587)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1651, file: !1652, line: 9, baseType: !587, size: 32, offset: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1634, file: !225, line: 46, baseType: !514, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1621, file: !225, line: 55, baseType: !1659, size: 256)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1621, file: !225, line: 49, size: 256, elements: !1660)
!1660 = !{!1661, !1664, !1665, !1666, !1667}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1659, file: !225, line: 50, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !225, line: 14, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1659, file: !225, line: 51, baseType: !21, size: 32, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1659, file: !225, line: 52, baseType: !21, size: 32, offset: 96)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1659, file: !225, line: 53, baseType: !400, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1659, file: !225, line: 54, baseType: !400, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1308, file: !736, line: 973, baseType: !1669, size: 32, offset: 10688)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !251, line: 27, baseType: !1670)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !384, line: 28, baseType: !21)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1308, file: !736, line: 974, baseType: !1669, size: 32, offset: 10720)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1308, file: !736, line: 978, baseType: !400, size: 64, offset: 10752)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1308, file: !736, line: 987, baseType: !1307, size: 64, offset: 10816)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1308, file: !736, line: 990, baseType: !1307, size: 64, offset: 10880)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1308, file: !736, line: 995, baseType: !250, size: 128, offset: 10944)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1308, file: !736, line: 996, baseType: !250, size: 128, offset: 11072)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1308, file: !736, line: 997, baseType: !1307, size: 64, offset: 11200)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1308, file: !736, line: 1005, baseType: !250, size: 128, offset: 11264)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1308, file: !736, line: 1006, baseType: !250, size: 128, offset: 11392)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1308, file: !736, line: 1009, baseType: !1681, size: 64, offset: 11520)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1683, line: 59, size: 768, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1684 = !{!1685, !1686, !1687, !1688, !1693, !1694, !1701, !1702}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1682, file: !1683, line: 61, baseType: !915, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1682, file: !1683, line: 62, baseType: !7, size: 32, offset: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1682, file: !1683, line: 63, baseType: !280, size: 32, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1682, file: !1683, line: 65, baseType: !1689, size: 256, offset: 128)
!1689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1690, size: 256, elements: !589)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !251, line: 194, size: 64, elements: !1691)
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1690, file: !251, line: 195, baseType: !1186, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1682, file: !1683, line: 66, baseType: !1690, size: 64, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1682, file: !1683, line: 68, baseType: !1695, size: 192, offset: 448)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1696, line: 41, baseType: !1697)
!1696 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1696, line: 37, size: 192, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1697, file: !1696, line: 38, baseType: !280, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1697, file: !1696, line: 39, baseType: !250, size: 128, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1682, file: !1683, line: 69, baseType: !457, size: 128, align: 64, offset: 640)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1682, file: !1683, line: 70, baseType: !1703, offset: 768)
!1703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1704, elements: !685)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1683, line: 54, size: 128, elements: !1705)
!1705 = !{!1706, !1707}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1704, file: !1683, line: 55, baseType: !21, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1704, file: !1683, line: 56, baseType: !1708, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1683, line: 56, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1308, file: !736, line: 1010, baseType: !1711, size: 512, offset: 11584)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1183, size: 512, elements: !589)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1308, file: !736, line: 1011, baseType: !250, size: 128, offset: 12096)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1308, file: !736, line: 1012, baseType: !250, size: 128, offset: 12224)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1308, file: !736, line: 1014, baseType: !931, size: 64, offset: 12352)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1308, file: !736, line: 1017, baseType: !1078, size: 64, offset: 12416)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1308, file: !736, line: 1020, baseType: !1078, size: 64, offset: 12480)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1308, file: !736, line: 1023, baseType: !422, size: 64, offset: 12544)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1308, file: !736, line: 1025, baseType: !514, size: 64, offset: 12608)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1308, file: !736, line: 1026, baseType: !514, size: 64, offset: 12672)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1308, file: !736, line: 1031, baseType: !514, size: 64, offset: 12736)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1308, file: !736, line: 1032, baseType: !1722, size: 192, offset: 12800)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !736, line: 324, size: 192, elements: !1723)
!1723 = !{!1724, !1725, !1726}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1722, file: !736, line: 326, baseType: !514, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1722, file: !736, line: 327, baseType: !514, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1722, file: !736, line: 328, baseType: !542, size: 32, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1308, file: !736, line: 1041, baseType: !400, size: 64, offset: 12992)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1308, file: !736, line: 1042, baseType: !400, size: 64, offset: 13056)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1308, file: !736, line: 1045, baseType: !514, size: 64, offset: 13120)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1308, file: !736, line: 1048, baseType: !514, size: 64, offset: 13184)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1308, file: !736, line: 1051, baseType: !400, size: 64, offset: 13248)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1308, file: !736, line: 1052, baseType: !400, size: 64, offset: 13312)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1308, file: !736, line: 1055, baseType: !1734, size: 640, offset: 13376)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1735, line: 132, size: 640, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1736 = !{!1737, !1743, !1744}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1734, file: !1735, line: 133, baseType: !1738, size: 576)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1739, size: 576, elements: !351)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1735, line: 117, size: 192, elements: !1740)
!1740 = !{!1741, !1742}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1739, file: !1735, line: 118, baseType: !514, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1739, file: !1735, line: 119, baseType: !1472, size: 128, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1734, file: !1735, line: 134, baseType: !7, size: 32, offset: 576)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1734, file: !1735, line: 135, baseType: !7, size: 32, offset: 608)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1308, file: !736, line: 1058, baseType: !1746, size: 448, offset: 14016)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1735, line: 144, size: 448, elements: !1747)
!1747 = !{!1748, !1749, !1750}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1746, file: !1735, line: 145, baseType: !457, size: 128, align: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1746, file: !1735, line: 146, baseType: !608, size: 256, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1746, file: !1735, line: 147, baseType: !7, size: 32, offset: 384)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1308, file: !736, line: 1064, baseType: !1752, size: 64, offset: 14464)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1754)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !736, line: 1064, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1308, file: !736, line: 1067, baseType: !1752, size: 64, offset: 14528)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1308, file: !736, line: 1070, baseType: !1752, size: 64, offset: 14592)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1308, file: !736, line: 1074, baseType: !1758, size: 64, offset: 14656)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !736, line: 1074, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1308, file: !736, line: 1084, baseType: !1761, size: 128, offset: 14720)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 128, elements: !1762)
!1762 = !{!1763}
!1763 = !DISubrange(count: 16)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1308, file: !736, line: 1086, baseType: !1765, size: 64, offset: 14848)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !736, line: 55, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1308, file: !736, line: 1089, baseType: !1768, size: 64, offset: 14912)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1769, line: 12, size: 64, elements: !1770)
!1769 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1770 = !{!1771}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1768, file: !1769, line: 13, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1769, line: 8, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1308, file: !736, line: 1090, baseType: !1775, size: 128, offset: 14976)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1776, line: 13, size: 128, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1777 = !{!1778}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1775, file: !1776, line: 14, baseType: !250, size: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1308, file: !736, line: 1097, baseType: !1780, size: 64, offset: 15104)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !736, line: 50, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1308, file: !736, line: 1100, baseType: !1783, size: 64, offset: 15168)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !736, line: 1100, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1308, file: !736, line: 1103, baseType: !1786, size: 64, offset: 15232)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !736, line: 53, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1308, file: !736, line: 1107, baseType: !1789, size: 64, offset: 15296)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !736, line: 56, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1308, file: !736, line: 1110, baseType: !1792, size: 64, offset: 15360)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1735, line: 236, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1308, file: !736, line: 1111, baseType: !1795, size: 64, offset: 15424)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !736, line: 67, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1308, file: !736, line: 1112, baseType: !1798, size: 64, offset: 15488)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1799, line: 25, baseType: !1800)
!1799 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1799, line: 23, size: 64, elements: !1801)
!1801 = !{!1802}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1800, file: !1799, line: 24, baseType: !1540, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1308, file: !736, line: 1113, baseType: !1798, size: 64, offset: 15552)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1308, file: !736, line: 1115, baseType: !1798, size: 64, offset: 15616)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1308, file: !736, line: 1116, baseType: !1806, size: 192, offset: 15680)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1807, line: 32, size: 192, elements: !1808)
!1807 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1808 = !{!1809, !1810}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1806, file: !1807, line: 33, baseType: !250, size: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1806, file: !1807, line: 34, baseType: !1798, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1308, file: !736, line: 1117, baseType: !400, size: 64, offset: 15872)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1308, file: !736, line: 1118, baseType: !397, size: 64, offset: 15936)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1308, file: !736, line: 1119, baseType: !7, size: 32, offset: 16000)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1308, file: !736, line: 1121, baseType: !460, size: 64, offset: 16064)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1308, file: !736, line: 1125, baseType: !1816, size: 64, offset: 16128)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !736, line: 43, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1308, file: !736, line: 1127, baseType: !783, size: 32, offset: 16192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1308, file: !736, line: 1128, baseType: !7, size: 32, offset: 16224)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1308, file: !736, line: 1130, baseType: !1821, size: 128, offset: 16256)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1822, line: 37, size: 128, elements: !1823)
!1822 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1823 = !{!1824, !1825, !1826}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1821, file: !1822, line: 38, baseType: !21, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1821, file: !1822, line: 39, baseType: !300, size: 32, offset: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1821, file: !1822, line: 40, baseType: !1827, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1822, line: 24, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1308, file: !736, line: 1131, baseType: !1830, size: 256, offset: 16384)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1831, line: 12, size: 256, elements: !1832)
!1831 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1832 = !{!1833, !1834, !1835, !1836}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1830, file: !1831, line: 13, baseType: !350, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1830, file: !1831, line: 14, baseType: !400, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1830, file: !1831, line: 15, baseType: !400, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1830, file: !1831, line: 16, baseType: !707, size: 8, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1308, file: !736, line: 1134, baseType: !514, size: 64, offset: 16640)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1308, file: !736, line: 1135, baseType: !514, size: 64, offset: 16704)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1308, file: !736, line: 1138, baseType: !280, size: 32, offset: 16768)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1308, file: !736, line: 1141, baseType: !542, size: 32, offset: 16800)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1308, file: !736, line: 1143, baseType: !1842, size: 64, offset: 16832)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !736, line: 735, size: 64, elements: !1843)
!1843 = !{!1844}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1842, file: !736, line: 736, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1308, file: !736, line: 1147, baseType: !1475, size: 128, offset: 16896)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1308, file: !736, line: 1149, baseType: !1307, size: 64, offset: 17024)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1308, file: !736, line: 1151, baseType: !1849, size: 64, offset: 17088)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !736, line: 1151, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1308, file: !736, line: 1188, baseType: !422, size: 64, offset: 17152)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1308, file: !736, line: 1191, baseType: !1853, size: 64, offset: 17216)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !736, line: 44, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1308, file: !736, line: 1194, baseType: !1856, size: 64, offset: 17280)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !736, line: 45, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1308, file: !736, line: 1197, baseType: !1859, size: 64, offset: 17344)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !736, line: 61, flags: DIFlagFwdDecl)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1308, file: !736, line: 1199, baseType: !1862, size: 64, offset: 17408)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !736, line: 52, flags: DIFlagFwdDecl)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1308, file: !736, line: 1202, baseType: !1865, size: 64, offset: 17472)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !736, line: 48, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1308, file: !736, line: 1205, baseType: !400, size: 64, offset: 17536)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1308, file: !736, line: 1206, baseType: !1869, size: 64, offset: 17600)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1807, line: 14, baseType: !1871)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1807, line: 12, size: 384, elements: !1872)
!1872 = !{!1873}
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !1807, line: 13, baseType: !1874, size: 384)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1871, file: !1807, line: 13, size: 384, elements: !1875)
!1875 = !{!1876, !1877, !1878, !1879}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1874, file: !1807, line: 13, baseType: !21, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1874, file: !1807, line: 13, baseType: !21, size: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1874, file: !1807, line: 13, baseType: !21, size: 32, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1874, file: !1807, line: 13, baseType: !1880, size: 256, offset: 128)
!1880 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1881, line: 37, size: 256, elements: !1882)
!1881 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1882 = !{!1883, !1888, !1901, !1907, !1916, !1943, !1948}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1880, file: !1881, line: 42, baseType: !1884, size: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1880, file: !1881, line: 39, size: 64, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1884, file: !1881, line: 40, baseType: !1670, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1884, file: !1881, line: 41, baseType: !788, size: 32, offset: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1880, file: !1881, line: 50, baseType: !1889, size: 192)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1880, file: !1881, line: 45, size: 192, elements: !1890)
!1890 = !{!1891, !1893, !1894, !1900}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1889, file: !1881, line: 46, baseType: !1892, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !384, line: 95, baseType: !21)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1889, file: !1881, line: 47, baseType: !21, size: 32, offset: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1889, file: !1881, line: 48, baseType: !1895, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1881, line: 11, baseType: !1896)
!1896 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1881, line: 8, size: 64, elements: !1897)
!1897 = !{!1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1896, file: !1881, line: 9, baseType: !21, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1896, file: !1881, line: 10, baseType: !422, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1889, file: !1881, line: 49, baseType: !21, size: 32, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1880, file: !1881, line: 57, baseType: !1902, size: 128)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1880, file: !1881, line: 53, size: 128, elements: !1903)
!1903 = !{!1904, !1905, !1906}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1902, file: !1881, line: 54, baseType: !1670, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1902, file: !1881, line: 55, baseType: !788, size: 32, offset: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1902, file: !1881, line: 56, baseType: !1895, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1880, file: !1881, line: 66, baseType: !1908, size: 256)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1880, file: !1881, line: 60, size: 256, elements: !1909)
!1909 = !{!1910, !1911, !1912, !1913, !1915}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1908, file: !1881, line: 61, baseType: !1670, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1908, file: !1881, line: 62, baseType: !788, size: 32, offset: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1908, file: !1881, line: 63, baseType: !21, size: 32, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1908, file: !1881, line: 64, baseType: !1914, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !384, line: 94, baseType: !385)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1908, file: !1881, line: 65, baseType: !1914, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1880, file: !1881, line: 105, baseType: !1917, size: 256)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1880, file: !1881, line: 69, size: 256, elements: !1918)
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1917, file: !1881, line: 70, baseType: !422, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1917, file: !1881, line: 79, baseType: !1921, size: 192, offset: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1917, file: !1881, line: 79, size: 192, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1932, !1937}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1921, file: !1881, line: 81, baseType: !21, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1921, file: !1881, line: 86, baseType: !648, size: 16)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1921, file: !1881, line: 92, baseType: !1926, size: 192)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1921, file: !1881, line: 88, size: 192, elements: !1927)
!1927 = !{!1928, !1930, !1931}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1926, file: !1881, line: 89, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 64, elements: !1459)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1926, file: !1881, line: 90, baseType: !422, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1926, file: !1881, line: 91, baseType: !422, size: 64, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1921, file: !1881, line: 97, baseType: !1933, size: 96)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1921, file: !1881, line: 94, size: 96, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1933, file: !1881, line: 95, baseType: !1929, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1933, file: !1881, line: 96, baseType: !1114, size: 32, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1921, file: !1881, line: 103, baseType: !1938, size: 128)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1921, file: !1881, line: 99, size: 128, elements: !1939)
!1939 = !{!1940, !1941, !1942}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1938, file: !1881, line: 100, baseType: !400, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1938, file: !1881, line: 101, baseType: !1114, size: 32, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1938, file: !1881, line: 102, baseType: !1114, size: 32, offset: 96)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1880, file: !1881, line: 111, baseType: !1944, size: 128)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1880, file: !1881, line: 108, size: 128, elements: !1945)
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1944, file: !1881, line: 109, baseType: !386, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1944, file: !1881, line: 110, baseType: !21, size: 32, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1880, file: !1881, line: 118, baseType: !1949, size: 128)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1880, file: !1881, line: 114, size: 128, elements: !1950)
!1950 = !{!1951, !1952, !1953}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1949, file: !1881, line: 115, baseType: !422, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1949, file: !1881, line: 116, baseType: !21, size: 32, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1949, file: !1881, line: 117, baseType: !7, size: 32, offset: 96)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1308, file: !736, line: 1208, baseType: !1955, size: 448, offset: 17664)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1956, line: 12, size: 448, elements: !1957)
!1956 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1957 = !{!1958, !1959, !1960, !1961, !1962, !1963, !1964}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1955, file: !1956, line: 15, baseType: !514, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1955, file: !1956, line: 17, baseType: !514, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1955, file: !1956, line: 19, baseType: !514, size: 64, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1955, file: !1956, line: 21, baseType: !514, size: 64, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1955, file: !1956, line: 29, baseType: !514, size: 64, offset: 256)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1955, file: !1956, line: 35, baseType: !514, size: 64, offset: 320)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1955, file: !1956, line: 44, baseType: !514, size: 64, offset: 384)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1308, file: !736, line: 1215, baseType: !514, size: 64, offset: 18112)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1308, file: !736, line: 1217, baseType: !514, size: 64, offset: 18176)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1308, file: !736, line: 1219, baseType: !514, size: 64, offset: 18240)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1308, file: !736, line: 1223, baseType: !1969, size: 64, offset: 18304)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1970, line: 99, baseType: !1971)
!1970 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1970, line: 99, size: 64, elements: !1972)
!1972 = !{!1973}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1971, file: !1970, line: 99, baseType: !1540, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1308, file: !736, line: 1225, baseType: !1975, size: 32, offset: 18368)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !557, line: 275, baseType: !1976)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !557, line: 275, size: 32, elements: !1977)
!1977 = !{!1978}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1976, file: !557, line: 275, baseType: !556, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1308, file: !736, line: 1226, baseType: !21, size: 32, offset: 18400)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1308, file: !736, line: 1227, baseType: !21, size: 32, offset: 18432)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1308, file: !736, line: 1231, baseType: !1982, size: 64, offset: 18496)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !736, line: 1231, flags: DIFlagFwdDecl)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1308, file: !736, line: 1233, baseType: !250, size: 128, offset: 18560)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1308, file: !736, line: 1240, baseType: !1986, size: 64, offset: 18688)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !736, line: 62, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1308, file: !736, line: 1242, baseType: !1989, size: 64, offset: 18752)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !736, line: 1242, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1308, file: !736, line: 1244, baseType: !250, size: 128, offset: 18816)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1308, file: !736, line: 1245, baseType: !1993, size: 64, offset: 18944)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !736, line: 51, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1308, file: !736, line: 1246, baseType: !608, size: 256, offset: 19008)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1308, file: !736, line: 1247, baseType: !7, size: 32, offset: 19264)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1308, file: !736, line: 1250, baseType: !1998, size: 64, offset: 19328)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !736, line: 57, flags: DIFlagFwdDecl)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1308, file: !736, line: 1251, baseType: !608, size: 256, offset: 19392)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1308, file: !736, line: 1252, baseType: !250, size: 128, offset: 19648)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1308, file: !736, line: 1259, baseType: !734, size: 64, offset: 19776)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1308, file: !736, line: 1260, baseType: !648, size: 16, offset: 19840)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1308, file: !736, line: 1261, baseType: !648, size: 16, offset: 19856)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1308, file: !736, line: 1314, baseType: !2006, size: 64, offset: 19904)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2008, line: 62, size: 256, align: 256, elements: !2009)
!2008 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2009 = !{!2010, !2011, !2012, !2013, !2014, !2015, !2016}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2007, file: !2008, line: 75, baseType: !1114, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2007, file: !2008, line: 90, baseType: !1114, size: 32, offset: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2007, file: !2008, line: 112, baseType: !515, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2007, file: !2008, line: 132, baseType: !1114, size: 32, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2007, file: !2008, line: 140, baseType: !1114, size: 32, offset: 160)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2007, file: !2008, line: 149, baseType: !1114, size: 32, offset: 192)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2007, file: !2008, line: 154, baseType: !2017, offset: 224)
!2017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, elements: !685)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1308, file: !736, line: 1315, baseType: !1196, size: 32, offset: 19968)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1308, file: !736, line: 1316, baseType: !1196, size: 32, offset: 20000)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1308, file: !736, line: 1321, baseType: !400, size: 64, offset: 20032)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1308, file: !736, line: 1325, baseType: !21, size: 32, offset: 20096)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1308, file: !736, line: 1326, baseType: !21, size: 32, offset: 20128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1308, file: !736, line: 1327, baseType: !21, size: 32, offset: 20160)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1308, file: !736, line: 1328, baseType: !21, size: 32, offset: 20192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1308, file: !736, line: 1329, baseType: !457, size: 128, align: 64, offset: 20224)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1308, file: !736, line: 1332, baseType: !2027, size: 128, offset: 20352)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2028, line: 51, size: 128, elements: !2029)
!2028 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2029 = !{!2030, !2035, !2036}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2027, file: !2028, line: 60, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2032, line: 7, size: 64, elements: !2033)
!2032 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2033 = !{!2034}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2031, file: !2032, line: 12, baseType: !1537, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2027, file: !2028, line: 63, baseType: !707, size: 8, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2027, file: !2028, line: 70, baseType: !707, size: 8, offset: 72)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1308, file: !736, line: 1335, baseType: !2038, size: 64, offset: 20480)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !736, line: 59, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1308, file: !736, line: 1337, baseType: !2041, size: 128, offset: 20544)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2028, line: 39, size: 128, elements: !2042)
!2042 = !{!2043, !2104, !2105}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2041, file: !2028, line: 40, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !429, line: 74, size: 512, align: 128, elements: !2046)
!2046 = !{!2047, !2048, !2098, !2103}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2045, file: !429, line: 75, baseType: !400, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, scope: !2045, file: !429, line: 83, baseType: !2049, size: 320, offset: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2045, file: !429, line: 83, size: 320, elements: !2050)
!2050 = !{!2051, !2072, !2086, !2090, !2097}
!2051 = !DIDerivedType(tag: DW_TAG_member, scope: !2049, file: !429, line: 84, baseType: !2052, size: 320)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2049, file: !429, line: 84, size: 320, elements: !2053)
!2053 = !{!2054, !2065, !2066, !2071}
!2054 = !DIDerivedType(tag: DW_TAG_member, scope: !2052, file: !429, line: 90, baseType: !2055, size: 128)
!2055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2052, file: !429, line: 90, size: 128, elements: !2056)
!2056 = !{!2057, !2058, !2063, !2064}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2055, file: !429, line: 91, baseType: !250, size: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, scope: !2055, file: !429, line: 94, baseType: !2059, size: 128)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2055, file: !429, line: 94, size: 128, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2059, file: !429, line: 96, baseType: !422, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2059, file: !429, line: 98, baseType: !7, size: 32, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2055, file: !429, line: 102, baseType: !250, size: 128)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2055, file: !429, line: 103, baseType: !250, size: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2052, file: !429, line: 106, baseType: !427, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_member, scope: !2052, file: !429, line: 107, baseType: !2067, size: 64, offset: 192)
!2067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2052, file: !429, line: 107, size: 64, elements: !2068)
!2068 = !{!2069, !2070}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2067, file: !429, line: 108, baseType: !400, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2067, file: !429, line: 109, baseType: !400, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2052, file: !429, line: 117, baseType: !400, size: 64, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !2049, file: !429, line: 119, baseType: !2073, size: 320)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2049, file: !429, line: 119, size: 320, elements: !2074)
!2074 = !{!2075, !2076, !2079, !2080, !2081}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2073, file: !429, line: 124, baseType: !400, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2073, file: !429, line: 125, baseType: !2077, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !429, line: 125, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2073, file: !429, line: 126, baseType: !400, size: 64, offset: 128)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2073, file: !429, line: 127, baseType: !400, size: 64, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_member, scope: !2073, file: !429, line: 128, baseType: !2082, size: 64, offset: 256)
!2082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2073, file: !429, line: 128, size: 64, elements: !2083)
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2082, file: !429, line: 133, baseType: !400, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2082, file: !429, line: 138, baseType: !520, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, scope: !2049, file: !429, line: 141, baseType: !2087, size: 64)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2049, file: !429, line: 141, size: 64, elements: !2088)
!2088 = !{!2089}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2087, file: !429, line: 142, baseType: !400, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, scope: !2049, file: !429, line: 144, baseType: !2091, size: 128)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2049, file: !429, line: 144, size: 128, elements: !2092)
!2092 = !{!2093, !2096}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2091, file: !429, line: 146, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !429, line: 146, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2091, file: !429, line: 147, baseType: !422, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2049, file: !429, line: 161, baseType: !457, size: 128, align: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, scope: !2045, file: !429, line: 164, baseType: !2099, size: 32, offset: 384)
!2099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2045, file: !429, line: 164, size: 32, elements: !2100)
!2100 = !{!2101, !2102}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2099, file: !429, line: 169, baseType: !300, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2099, file: !429, line: 177, baseType: !7, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2045, file: !429, line: 181, baseType: !300, size: 32, offset: 416)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2041, file: !2028, line: 42, baseType: !1114, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2041, file: !2028, line: 43, baseType: !1114, size: 32, offset: 96)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1308, file: !736, line: 1340, baseType: !2107, size: 64, offset: 20672)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !736, line: 69, flags: DIFlagFwdDecl)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1308, file: !736, line: 1351, baseType: !21, size: 32, offset: 20736)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1308, file: !736, line: 1352, baseType: !21, size: 32, offset: 20768)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1308, file: !736, line: 1354, baseType: !400, size: 64, offset: 20800)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1308, file: !736, line: 1364, baseType: !514, size: 64, offset: 20864)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1308, file: !736, line: 1365, baseType: !514, size: 64, offset: 20928)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1308, file: !736, line: 1412, baseType: !400, size: 64, offset: 20992)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1308, file: !736, line: 1453, baseType: !2116, size: 64, offset: 21056)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !736, line: 1453, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1308, file: !736, line: 1457, baseType: !2119, size: 64, offset: 21120)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !231, line: 61, size: 576, elements: !2121)
!2121 = !{!2122, !2123, !2142, !2145, !2146, !2179, !2189}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2120, file: !231, line: 62, baseType: !230, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, scope: !2120, file: !231, line: 64, baseType: !2124, size: 192, offset: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2120, file: !231, line: 64, size: 192, elements: !2125)
!2125 = !{!2126, !2137}
!2126 = !DIDerivedType(tag: DW_TAG_member, scope: !2124, file: !231, line: 65, baseType: !2127, size: 192)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2124, file: !231, line: 65, size: 192, elements: !2128)
!2128 = !{!2129, !2136}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2127, file: !231, line: 66, baseType: !2130, size: 128)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2131, line: 50, size: 128, elements: !2132)
!2131 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2132 = !{!2133, !2134, !2135}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2130, file: !2131, line: 52, baseType: !400, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2130, file: !2131, line: 54, baseType: !7, size: 32, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2130, file: !2131, line: 55, baseType: !7, size: 32, offset: 96)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2127, file: !231, line: 67, baseType: !400, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, scope: !2124, file: !231, line: 70, baseType: !2138, size: 192)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2124, file: !231, line: 70, size: 192, elements: !2139)
!2139 = !{!2140, !2141}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2138, file: !231, line: 71, baseType: !457, size: 128, align: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2138, file: !231, line: 72, baseType: !400, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2120, file: !231, line: 76, baseType: !2143, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !231, line: 76, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2120, file: !231, line: 77, baseType: !400, size: 64, offset: 320)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2120, file: !231, line: 79, baseType: !2147, size: 64, offset: 384)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2131, line: 25, size: 256, elements: !2149)
!2149 = !{!2150, !2156, !2160}
!2150 = !DIDerivedType(tag: DW_TAG_member, scope: !2148, file: !2131, line: 26, baseType: !2151, size: 128)
!2151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2148, file: !2131, line: 26, size: 128, elements: !2152)
!2152 = !{!2153, !2155}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2151, file: !2131, line: 27, baseType: !2154, size: 128)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 128, elements: !1762)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2151, file: !2131, line: 28, baseType: !2154, size: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2148, file: !2131, line: 31, baseType: !2157, size: 64, offset: 128)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2159)
!2159 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2131, line: 23, flags: DIFlagFwdDecl)
!2160 = !DIDerivedType(tag: DW_TAG_member, scope: !2148, file: !2131, line: 33, baseType: !2161, size: 64, offset: 192)
!2161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2148, file: !2131, line: 33, size: 64, elements: !2162)
!2162 = !{!2163, !2169, !2174}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2161, file: !2131, line: 38, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2161, file: !2131, line: 34, size: 64, elements: !2165)
!2165 = !{!2166, !2167, !2168}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2164, file: !2131, line: 35, baseType: !587, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2164, file: !2131, line: 36, baseType: !308, size: 8, offset: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2164, file: !2131, line: 37, baseType: !308, size: 8, offset: 40)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2161, file: !2131, line: 42, baseType: !2170, size: 16)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2161, file: !2131, line: 39, size: 16, elements: !2171)
!2171 = !{!2172, !2173}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2170, file: !2131, line: 40, baseType: !308, size: 8)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2170, file: !2131, line: 41, baseType: !308, size: 8, offset: 8)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2161, file: !2131, line: 46, baseType: !2175, size: 16)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2161, file: !2131, line: 43, size: 16, elements: !2176)
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2175, file: !2131, line: 44, baseType: !308, size: 8)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2175, file: !2131, line: 45, baseType: !308, size: 8, offset: 8)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2120, file: !231, line: 81, baseType: !2180, size: 64, offset: 448)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !231, line: 85, size: 384, elements: !2182)
!2182 = !{!2183, !2184, !2185, !2186, !2187, !2188}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2181, file: !231, line: 86, baseType: !2143, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2181, file: !231, line: 87, baseType: !400, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2181, file: !231, line: 88, baseType: !400, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2181, file: !231, line: 89, baseType: !400, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2181, file: !231, line: 90, baseType: !707, size: 8, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2181, file: !231, line: 92, baseType: !2180, size: 64, offset: 320)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2120, file: !231, line: 82, baseType: !7, size: 32, offset: 512)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1308, file: !736, line: 1463, baseType: !2191, offset: 21184)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !736, line: 739, elements: !487)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1308, file: !736, line: 1470, baseType: !457, size: 128, align: 64, offset: 21184)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1308, file: !736, line: 1471, baseType: !915, size: 32, offset: 21312)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1308, file: !736, line: 1472, baseType: !21, size: 32, offset: 21344)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1308, file: !736, line: 1474, baseType: !1307, size: 64, offset: 21376)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1308, file: !736, line: 1475, baseType: !1179, size: 320, offset: 21440)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1308, file: !736, line: 1478, baseType: !2198, size: 64, offset: 21760)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !736, line: 1478, flags: DIFlagFwdDecl)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1308, file: !736, line: 1482, baseType: !915, size: 32, offset: 21824)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1308, file: !736, line: 1489, baseType: !422, size: 64, offset: 21888)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1308, file: !736, line: 1504, baseType: !422, size: 64, offset: 21952)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1308, file: !736, line: 1505, baseType: !515, size: 64, offset: 22016)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1308, file: !736, line: 1506, baseType: !514, size: 64, offset: 22080)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1308, file: !736, line: 1507, baseType: !515, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1308, file: !736, line: 1508, baseType: !515, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1308, file: !736, line: 1509, baseType: !515, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1308, file: !736, line: 1510, baseType: !457, size: 128, align: 64, offset: 22208)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1308, file: !736, line: 1511, baseType: !21, size: 32, offset: 22336)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1308, file: !736, line: 1515, baseType: !2211, size: 64, offset: 22400)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1323, line: 56, size: 64, elements: !2212)
!2212 = !{!2213}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2211, file: !1323, line: 57, baseType: !1326, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1308, file: !736, line: 1518, baseType: !2211, size: 64, offset: 22464)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1308, file: !736, line: 1528, baseType: !457, size: 128, align: 64, offset: 22528)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1308, file: !736, line: 1552, baseType: !2217, size: 35328, offset: 23040)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !238, line: 430, size: 35328, elements: !2218)
!2218 = !{!2219, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2248, !2249, !2250, !2251, !2252, !2253, !2256, !2257, !2258, !2259}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2217, file: !238, line: 432, baseType: !2220, size: 192)
!2220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2221, size: 192, elements: !351)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2222, line: 16, size: 64, elements: !2223)
!2222 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2221, file: !2222, line: 17, baseType: !318, size: 16)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2221, file: !2222, line: 18, baseType: !318, size: 16, offset: 16)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2221, file: !2222, line: 19, baseType: !318, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2221, file: !2222, line: 19, baseType: !318, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2221, file: !2222, line: 19, baseType: !318, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2221, file: !2222, line: 19, baseType: !318, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2221, file: !2222, line: 19, baseType: !318, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2221, file: !2222, line: 20, baseType: !318, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2221, file: !2222, line: 20, baseType: !318, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2221, file: !2222, line: 20, baseType: !318, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2221, file: !2222, line: 20, baseType: !318, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2221, file: !2222, line: 20, baseType: !318, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2221, file: !2222, line: 20, baseType: !318, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2217, file: !238, line: 436, baseType: !400, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2217, file: !238, line: 440, baseType: !320, size: 16, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2217, file: !238, line: 441, baseType: !320, size: 16, offset: 272)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2217, file: !238, line: 442, baseType: !320, size: 16, offset: 288)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2217, file: !238, line: 443, baseType: !320, size: 16, offset: 304)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2217, file: !238, line: 447, baseType: !400, size: 64, offset: 320)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2217, file: !238, line: 448, baseType: !400, size: 64, offset: 384)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2217, file: !238, line: 459, baseType: !2245, size: 256, offset: 448)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2246, size: 256, elements: !589)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !238, line: 428, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2217, file: !238, line: 461, baseType: !400, size: 64, offset: 704)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2217, file: !238, line: 463, baseType: !400, size: 64, offset: 768)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2217, file: !238, line: 465, baseType: !400, size: 64, offset: 832)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2217, file: !238, line: 466, baseType: !400, size: 64, offset: 896)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2217, file: !238, line: 467, baseType: !400, size: 64, offset: 960)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2217, file: !238, line: 473, baseType: !2254, size: 64, offset: 1024)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !238, line: 10, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2217, file: !238, line: 480, baseType: !400, size: 64, offset: 1088)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2217, file: !238, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2217, file: !238, line: 491, baseType: !1196, size: 32, offset: 1184)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2217, file: !238, line: 501, baseType: !2260, size: 33792, offset: 1536)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2261, line: 448, size: 33792, elements: !2262)
!2261 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2262 = !{!2263, !2264, !2265, !2431, !2432, !2438, !2439}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2260, file: !2261, line: 461, baseType: !7, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2260, file: !2261, line: 468, baseType: !400, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2260, file: !2261, line: 476, baseType: !2266, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2261, line: 356, size: 33280, align: 512, elements: !2268)
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2267, file: !2261, line: 358, baseType: !7, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2267, file: !2261, line: 361, baseType: !7, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2267, file: !2261, line: 364, baseType: !514, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2267, file: !2261, line: 367, baseType: !514, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2267, file: !2261, line: 370, baseType: !514, size: 64, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2267, file: !2261, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2267, file: !2261, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2267, file: !2261, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2267, file: !2261, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2267, file: !2261, line: 397, baseType: !2279, size: 32768, offset: 512)
!2279 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2261, line: 348, size: 32768, elements: !2280)
!2280 = !{!2281, !2296, !2335, !2412, !2427}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2279, file: !2261, line: 349, baseType: !2282, size: 896)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2261, line: 12, size: 896, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2295}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2282, file: !2261, line: 13, baseType: !1196, size: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2282, file: !2261, line: 14, baseType: !1196, size: 32, offset: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2282, file: !2261, line: 15, baseType: !1196, size: 32, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2282, file: !2261, line: 16, baseType: !1196, size: 32, offset: 96)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2282, file: !2261, line: 17, baseType: !1196, size: 32, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2282, file: !2261, line: 18, baseType: !1196, size: 32, offset: 160)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2282, file: !2261, line: 19, baseType: !1196, size: 32, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2282, file: !2261, line: 22, baseType: !2292, size: 640, offset: 224)
!2292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1196, size: 640, elements: !2293)
!2293 = !{!2294}
!2294 = !DISubrange(count: 20)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2282, file: !2261, line: 25, baseType: !1196, size: 32, offset: 864)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2279, file: !2261, line: 350, baseType: !2297, size: 4096, align: 128)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2261, line: 34, size: 4096, align: 128, elements: !2298)
!2298 = !{!2299, !2300, !2301, !2302, !2303, !2318, !2319, !2320, !2324, !2326, !2330}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2297, file: !2261, line: 35, baseType: !318, size: 16)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2297, file: !2261, line: 36, baseType: !318, size: 16, offset: 16)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2297, file: !2261, line: 37, baseType: !318, size: 16, offset: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2297, file: !2261, line: 38, baseType: !318, size: 16, offset: 48)
!2303 = !DIDerivedType(tag: DW_TAG_member, scope: !2297, file: !2261, line: 39, baseType: !2304, size: 128, offset: 64)
!2304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2297, file: !2261, line: 39, size: 128, elements: !2305)
!2305 = !{!2306, !2311}
!2306 = !DIDerivedType(tag: DW_TAG_member, scope: !2304, file: !2261, line: 40, baseType: !2307, size: 128)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2304, file: !2261, line: 40, size: 128, elements: !2308)
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2307, file: !2261, line: 41, baseType: !514, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2307, file: !2261, line: 42, baseType: !514, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, scope: !2304, file: !2261, line: 44, baseType: !2312, size: 128)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2304, file: !2261, line: 44, size: 128, elements: !2313)
!2313 = !{!2314, !2315, !2316, !2317}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2312, file: !2261, line: 45, baseType: !1196, size: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2312, file: !2261, line: 46, baseType: !1196, size: 32, offset: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2312, file: !2261, line: 47, baseType: !1196, size: 32, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2312, file: !2261, line: 48, baseType: !1196, size: 32, offset: 96)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2297, file: !2261, line: 51, baseType: !1196, size: 32, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2297, file: !2261, line: 52, baseType: !1196, size: 32, offset: 224)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2297, file: !2261, line: 55, baseType: !2321, size: 1024, offset: 256)
!2321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1196, size: 1024, elements: !2322)
!2322 = !{!2323}
!2323 = !DISubrange(count: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2297, file: !2261, line: 58, baseType: !2325, size: 2048, offset: 1280)
!2325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1196, size: 2048, elements: !355)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2297, file: !2261, line: 60, baseType: !2327, size: 384, offset: 3328)
!2327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1196, size: 384, elements: !2328)
!2328 = !{!2329}
!2329 = !DISubrange(count: 12)
!2330 = !DIDerivedType(tag: DW_TAG_member, scope: !2297, file: !2261, line: 62, baseType: !2331, size: 384, offset: 3712)
!2331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2297, file: !2261, line: 62, size: 384, elements: !2332)
!2332 = !{!2333, !2334}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2331, file: !2261, line: 63, baseType: !2327, size: 384)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2331, file: !2261, line: 64, baseType: !2327, size: 384)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2279, file: !2261, line: 351, baseType: !2336, size: 1088)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2261, line: 79, size: 1088, elements: !2337)
!2337 = !{!2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2411}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2336, file: !2261, line: 80, baseType: !1196, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2336, file: !2261, line: 81, baseType: !1196, size: 32, offset: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2336, file: !2261, line: 82, baseType: !1196, size: 32, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2336, file: !2261, line: 83, baseType: !1196, size: 32, offset: 96)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2336, file: !2261, line: 84, baseType: !1196, size: 32, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2336, file: !2261, line: 85, baseType: !1196, size: 32, offset: 160)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2336, file: !2261, line: 86, baseType: !1196, size: 32, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2336, file: !2261, line: 88, baseType: !2292, size: 640, offset: 224)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2336, file: !2261, line: 89, baseType: !308, size: 8, offset: 864)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2336, file: !2261, line: 90, baseType: !308, size: 8, offset: 872)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2336, file: !2261, line: 91, baseType: !308, size: 8, offset: 880)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2336, file: !2261, line: 92, baseType: !308, size: 8, offset: 888)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2336, file: !2261, line: 93, baseType: !308, size: 8, offset: 896)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2336, file: !2261, line: 94, baseType: !308, size: 8, offset: 904)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2336, file: !2261, line: 95, baseType: !2353, size: 64, offset: 960)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2355, line: 11, size: 128, elements: !2356)
!2355 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2356 = !{!2357, !2358}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2354, file: !2355, line: 12, baseType: !386, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2354, file: !2355, line: 13, baseType: !2359, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2361, line: 103, size: 1344, elements: !2362)
!2361 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2362 = !{!2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2391, !2392, !2393}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2360, file: !2361, line: 109, baseType: !400, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2360, file: !2361, line: 110, baseType: !400, size: 64, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2360, file: !2361, line: 111, baseType: !400, size: 64, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2360, file: !2361, line: 112, baseType: !400, size: 64, offset: 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2360, file: !2361, line: 113, baseType: !400, size: 64, offset: 256)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2360, file: !2361, line: 114, baseType: !400, size: 64, offset: 320)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2360, file: !2361, line: 117, baseType: !400, size: 64, offset: 384)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2360, file: !2361, line: 118, baseType: !400, size: 64, offset: 448)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2360, file: !2361, line: 119, baseType: !400, size: 64, offset: 512)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2360, file: !2361, line: 120, baseType: !400, size: 64, offset: 576)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2360, file: !2361, line: 121, baseType: !400, size: 64, offset: 640)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2360, file: !2361, line: 122, baseType: !400, size: 64, offset: 704)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2360, file: !2361, line: 123, baseType: !400, size: 64, offset: 768)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2360, file: !2361, line: 124, baseType: !400, size: 64, offset: 832)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2360, file: !2361, line: 125, baseType: !400, size: 64, offset: 896)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2360, file: !2361, line: 139, baseType: !400, size: 64, offset: 960)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2360, file: !2361, line: 142, baseType: !400, size: 64, offset: 1024)
!2380 = !DIDerivedType(tag: DW_TAG_member, scope: !2360, file: !2361, line: 144, baseType: !2381, size: 64, offset: 1088)
!2381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2360, file: !2361, line: 144, size: 64, elements: !2382)
!2382 = !{!2383, !2384, !2385}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2381, file: !2361, line: 146, baseType: !318, size: 16)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2381, file: !2361, line: 148, baseType: !514, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2381, file: !2361, line: 150, baseType: !2386, size: 64)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2361, line: 59, size: 64, elements: !2387)
!2387 = !{!2388, !2389, !2390}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2386, file: !2361, line: 61, baseType: !514, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2386, file: !2361, line: 63, baseType: !514, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2386, file: !2361, line: 65, baseType: !514, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2360, file: !2361, line: 153, baseType: !400, size: 64, offset: 1152)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2360, file: !2361, line: 154, baseType: !400, size: 64, offset: 1216)
!2393 = !DIDerivedType(tag: DW_TAG_member, scope: !2360, file: !2361, line: 156, baseType: !2394, size: 64, offset: 1280)
!2394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2360, file: !2361, line: 156, size: 64, elements: !2395)
!2395 = !{!2396, !2397, !2398}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2394, file: !2361, line: 158, baseType: !318, size: 16)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2394, file: !2361, line: 160, baseType: !514, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2394, file: !2361, line: 162, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2361, line: 69, size: 64, elements: !2400)
!2400 = !{!2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2399, file: !2361, line: 71, baseType: !514, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2399, file: !2361, line: 73, baseType: !514, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2399, file: !2361, line: 75, baseType: !514, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2399, file: !2361, line: 77, baseType: !514, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2399, file: !2361, line: 80, baseType: !514, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2399, file: !2361, line: 83, baseType: !514, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2399, file: !2361, line: 86, baseType: !514, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2399, file: !2361, line: 88, baseType: !514, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2399, file: !2361, line: 93, baseType: !514, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2399, file: !2361, line: 100, baseType: !514, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2336, file: !2261, line: 96, baseType: !1196, size: 32, offset: 1024)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2279, file: !2261, line: 352, baseType: !2413, size: 4608, align: 512)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2261, line: 333, size: 4608, align: 512, elements: !2414)
!2414 = !{!2415, !2416, !2425}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2413, file: !2261, line: 334, baseType: !2297, size: 4096, align: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2413, file: !2261, line: 335, baseType: !2417, size: 512, offset: 4096)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2261, line: 312, size: 512, elements: !2418)
!2418 = !{!2419, !2420, !2421}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2417, file: !2261, line: 313, baseType: !514, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2417, file: !2261, line: 314, baseType: !514, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2417, file: !2261, line: 315, baseType: !2422, size: 384, offset: 128)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 384, elements: !2423)
!2423 = !{!2424}
!2424 = !DISubrange(count: 6)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2413, file: !2261, line: 336, baseType: !2426, offset: 4608)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, elements: !685)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2279, file: !2261, line: 353, baseType: !2428, size: 32768)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 32768, elements: !2429)
!2429 = !{!2430}
!2430 = !DISubrange(count: 4096)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2260, file: !2261, line: 484, baseType: !2266, size: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2260, file: !2261, line: 491, baseType: !2433, size: 128, offset: 256)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2261, line: 404, size: 128, elements: !2434)
!2434 = !{!2435, !2436, !2437}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2433, file: !2261, line: 424, baseType: !514, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2433, file: !2261, line: 432, baseType: !7, size: 32, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2433, file: !2261, line: 440, baseType: !7, size: 32, offset: 96)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2260, file: !2261, line: 498, baseType: !2433, size: 128, offset: 384)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2260, file: !2261, line: 508, baseType: !2267, size: 33280, align: 512, offset: 512)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device", file: !2442, line: 93, size: 6400, elements: !2443)
!2442 = !DIFile(filename: "./include/linux/cpuidle.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4e37910f6e1ee8771b4e96ef73e2ef7")
!2443 = !{!2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2467, !2471, !2474, !2477}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !2441, file: !2442, line: 94, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2441, file: !2442, line: 95, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "poll_time_limit", scope: !2441, file: !2442, line: 96, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2441, file: !2442, line: 97, baseType: !7, size: 32, offset: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "next_hrtimer", scope: !2441, file: !2442, line: 98, baseType: !1424, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "last_state_idx", scope: !2441, file: !2442, line: 100, baseType: !21, size: 32, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "last_residency_ns", scope: !2441, file: !2442, line: 101, baseType: !514, size: 64, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "poll_limit_ns", scope: !2441, file: !2442, line: 102, baseType: !514, size: 64, offset: 256)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "forced_idle_latency_limit_ns", scope: !2441, file: !2442, line: 103, baseType: !514, size: 64, offset: 320)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "states_usage", scope: !2441, file: !2442, line: 104, baseType: !2454, size: 5120, offset: 384)
!2454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2455, size: 5120, elements: !2465)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_usage", file: !2442, line: 36, size: 512, elements: !2456)
!2456 = !{!2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !2455, file: !2442, line: 37, baseType: !516, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2455, file: !2442, line: 38, baseType: !516, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2455, file: !2442, line: 39, baseType: !514, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !2455, file: !2442, line: 40, baseType: !516, size: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "below", scope: !2455, file: !2442, line: 41, baseType: !516, size: 64, offset: 256)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "rejected", scope: !2455, file: !2442, line: 42, baseType: !516, size: 64, offset: 320)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_usage", scope: !2455, file: !2442, line: 44, baseType: !516, size: 64, offset: 384)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_time", scope: !2455, file: !2442, line: 45, baseType: !516, size: 64, offset: 448)
!2465 = !{!2466}
!2466 = !DISubrange(count: 10)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "kobjs", scope: !2441, file: !2442, line: 105, baseType: !2468, size: 640, offset: 5504)
!2468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2469, size: 640, elements: !2465)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_kobj", file: !2442, line: 90, flags: DIFlagFwdDecl)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_driver", scope: !2441, file: !2442, line: 106, baseType: !2472, size: 64, offset: 6144)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver_kobj", file: !2442, line: 91, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_dev", scope: !2441, file: !2442, line: 107, baseType: !2475, size: 64, offset: 6208)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device_kobj", file: !2442, line: 89, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !2441, file: !2442, line: 108, baseType: !250, size: 128, offset: 6272)
!2478 = !{!2479, !2481, !2486, !2491, !2493, !2497, !2502, !2507, !2512, !0, !2514, !2516, !2521, !2556, !2558, !2563}
!2479 = !DIGlobalVariableExpression(var: !2480, expr: !DIExpression())
!2480 = distinct !DIGlobalVariable(name: "__param_force", scope: !2, file: !3, line: 22, type: !998, isLocal: true, isDefinition: true, align: 64)
!2481 = !DIGlobalVariableExpression(var: !2482, expr: !DIExpression())
!2482 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_forcetype204", scope: !2, file: !3, line: 22, type: !2483, isLocal: true, isDefinition: true, align: 8)
!2483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 296, elements: !2484)
!2484 = !{!2485}
!2485 = !DISubrange(count: 37)
!2486 = !DIGlobalVariableExpression(var: !2487, expr: !DIExpression())
!2487 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force205", scope: !2, file: !3, line: 23, type: !2488, isLocal: true, isDefinition: true, align: 8)
!2488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 392, elements: !2489)
!2489 = !{!2490}
!2490 = !DISubrange(count: 49)
!2491 = !DIGlobalVariableExpression(var: !2492, expr: !DIExpression())
!2492 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_cpuidle_haltpoll__206_142_haltpoll_init6207", scope: !2, file: !3, line: 142, type: !422, isLocal: true, isDefinition: true)
!2493 = !DIGlobalVariableExpression(var: !2494, expr: !DIExpression())
!2494 = distinct !DIGlobalVariable(name: "__exitcall_haltpoll_exit", scope: !2, file: !3, line: 143, type: !2495, isLocal: true, isDefinition: true)
!2495 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2496, line: 120, baseType: !1290)
!2496 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!2497 = !DIGlobalVariableExpression(var: !2498, expr: !DIExpression())
!2498 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file208", scope: !2, file: !3, line: 144, type: !2499, isLocal: true, isDefinition: true, align: 8)
!2499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 440, elements: !2500)
!2500 = !{!2501}
!2501 = !DISubrange(count: 55)
!2502 = !DIGlobalVariableExpression(var: !2503, expr: !DIExpression())
!2503 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license209", scope: !2, file: !3, line: 144, type: !2504, isLocal: true, isDefinition: true, align: 8)
!2504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 232, elements: !2505)
!2505 = !{!2506}
!2506 = !DISubrange(count: 29)
!2507 = !DIGlobalVariableExpression(var: !2508, expr: !DIExpression())
!2508 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author210", scope: !2, file: !3, line: 145, type: !2509, isLocal: true, isDefinition: true, align: 8)
!2509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 496, elements: !2510)
!2510 = !{!2511}
!2511 = !DISubrange(count: 62)
!2512 = !DIGlobalVariableExpression(var: !2513, expr: !DIExpression())
!2513 = distinct !DIGlobalVariable(name: "force", scope: !2, file: !3, line: 21, type: !707, isLocal: true, isDefinition: true)
!2514 = !DIGlobalVariableExpression(var: !2515, expr: !DIExpression())
!2515 = distinct !DIGlobalVariable(name: "haltpoll_hp_state", scope: !2, file: !3, line: 26, type: !19, isLocal: true, isDefinition: true)
!2516 = !DIGlobalVariableExpression(var: !2517, expr: !DIExpression())
!2517 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !2518, isLocal: true, isDefinition: true)
!2518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 72, elements: !2519)
!2519 = !{!2520}
!2520 = !DISubrange(count: 9)
!2521 = !DIGlobalVariableExpression(var: !2522, expr: !DIExpression())
!2522 = distinct !DIGlobalVariable(name: "haltpoll_driver", scope: !2, file: !3, line: 38, type: !2523, isLocal: true, isDefinition: true)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver", file: !2442, line: 152, size: 8704, elements: !2524)
!2524 = !{!2525, !2526, !2527, !2528, !2551, !2552, !2553, !2555}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2523, file: !2442, line: 153, baseType: !269, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2523, file: !2442, line: 154, baseType: !245, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "bctimer", scope: !2523, file: !2442, line: 157, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2523, file: !2442, line: 159, baseType: !2529, size: 8320, offset: 192)
!2529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2530, size: 8320, elements: !2465)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state", file: !2442, line: 49, size: 832, elements: !2531)
!2531 = !{!2532, !2533, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2546, !2550}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2530, file: !2442, line: 50, baseType: !1761, size: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2530, file: !2442, line: 51, baseType: !2534, size: 256, offset: 128)
!2534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 256, elements: !2322)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency_ns", scope: !2530, file: !2442, line: 53, baseType: !526, size: 64, offset: 384)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency_ns", scope: !2530, file: !2442, line: 54, baseType: !526, size: 64, offset: 448)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2530, file: !2442, line: 55, baseType: !7, size: 32, offset: 512)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency", scope: !2530, file: !2442, line: 56, baseType: !7, size: 32, offset: 544)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "power_usage", scope: !2530, file: !2442, line: 57, baseType: !21, size: 32, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency", scope: !2530, file: !2442, line: 58, baseType: !7, size: 32, offset: 608)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "enter", scope: !2530, file: !2442, line: 60, baseType: !2542, size: 64, offset: 640)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!21, !2440, !2545, !21}
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "enter_dead", scope: !2530, file: !2442, line: 64, baseType: !2547, size: 64, offset: 704)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!21, !2440, !21}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "enter_s2idle", scope: !2530, file: !2442, line: 74, baseType: !2542, size: 64, offset: 768)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2523, file: !2442, line: 160, baseType: !21, size: 32, offset: 8512)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "safe_state_index", scope: !2523, file: !2442, line: 161, baseType: !21, size: 32, offset: 8544)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2523, file: !2442, line: 164, baseType: !2554, size: 64, offset: 8576)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !2523, file: !2442, line: 167, baseType: !269, size: 64, offset: 8640)
!2556 = !DIGlobalVariableExpression(var: !2557, expr: !DIExpression())
!2557 = distinct !DIGlobalVariable(name: "haltpoll_cpuidle_devices", scope: !2, file: !3, line: 25, type: !2440, isLocal: true, isDefinition: true)
!2558 = !DIGlobalVariableExpression(var: !2559, expr: !DIExpression())
!2559 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !2560, isLocal: true, isDefinition: true)
!2560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 192, elements: !2561)
!2561 = !{!2562}
!2562 = !DISubrange(count: 24)
!2563 = !DIGlobalVariableExpression(var: !2564, expr: !DIExpression())
!2564 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !2565, isLocal: true, isDefinition: true)
!2565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 304, elements: !2566)
!2566 = !{!2567}
!2567 = !DISubrange(count: 38)
!2568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 184, elements: !2569)
!2569 = !{!2570}
!2570 = !DISubrange(count: 23)
!2571 = !{i32 7, !"Dwarf Version", i32 5}
!2572 = !{i32 2, !"Debug Info Version", i32 3}
!2573 = !{i32 1, !"wchar_size", i32 2}
!2574 = !{i32 8, !"cf-protection-branch", i32 1}
!2575 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2576 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2577 = !{i32 1, !"Code Model", i32 2}
!2578 = !{i32 1, !"override-stack-alignment", i32 8}
!2579 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2580 = distinct !DISubprogram(name: "haltpoll_exit", scope: !3, file: !3, line: 137, type: !1291, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2581 = !DILocation(line: 139, column: 2, scope: !2580)
!2582 = !DILocation(line: 140, column: 1, scope: !2580)
!2583 = distinct !DISubprogram(name: "haltpoll_uninit", scope: !3, file: !3, line: 86, type: !1291, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2584 = !DILocation(line: 88, column: 6, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 88, column: 6)
!2586 = !DILocation(line: 88, column: 6, scope: !2583)
!2587 = !DILocation(line: 89, column: 22, scope: !2585)
!2588 = !DILocation(line: 89, column: 3, scope: !2585)
!2589 = !DILocation(line: 90, column: 2, scope: !2583)
!2590 = !DILocation(line: 92, column: 14, scope: !2583)
!2591 = !DILocation(line: 92, column: 2, scope: !2583)
!2592 = !DILocation(line: 93, column: 27, scope: !2583)
!2593 = !DILocation(line: 94, column: 1, scope: !2583)
!2594 = distinct !DISubprogram(name: "__initstub__kmod_cpuidle_haltpoll__206_142_haltpoll_init6", scope: !3, file: !3, line: 142, type: !1050, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2595 = !DILocation(line: 142, column: 1, scope: !2594)
!2596 = distinct !DISubprogram(name: "haltpoll_init", scope: !3, file: !3, line: 101, type: !1050, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2597)
!2597 = !{!2598, !2599}
!2598 = !DILocalVariable(name: "ret", scope: !2596, file: !3, line: 103, type: !21)
!2599 = !DILocalVariable(name: "drv", scope: !2596, file: !3, line: 104, type: !2545)
!2600 = !DILocation(line: 103, column: 2, scope: !2596)
!2601 = !DILocation(line: 103, column: 6, scope: !2596)
!2602 = !DILocation(line: 104, column: 2, scope: !2596)
!2603 = !DILocation(line: 104, column: 25, scope: !2596)
!2604 = !DILocation(line: 107, column: 6, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 107, column: 6)
!2606 = !DILocation(line: 107, column: 32, scope: !2605)
!2607 = !DILocation(line: 107, column: 6, scope: !2596)
!2608 = !DILocation(line: 108, column: 3, scope: !2605)
!2609 = !DILocation(line: 110, column: 7, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 110, column: 6)
!2611 = !DILocation(line: 110, column: 28, scope: !2610)
!2612 = !DILocation(line: 110, column: 32, scope: !2610)
!2613 = !DILocation(line: 110, column: 6, scope: !2596)
!2614 = !DILocation(line: 111, column: 3, scope: !2610)
!2615 = !DILocation(line: 113, column: 26, scope: !2596)
!2616 = !DILocation(line: 113, column: 2, scope: !2596)
!2617 = !DILocation(line: 115, column: 32, scope: !2596)
!2618 = !DILocation(line: 115, column: 8, scope: !2596)
!2619 = !DILocation(line: 115, column: 6, scope: !2596)
!2620 = !DILocation(line: 116, column: 6, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 116, column: 6)
!2622 = !DILocation(line: 116, column: 10, scope: !2621)
!2623 = !DILocation(line: 116, column: 6, scope: !2596)
!2624 = !DILocation(line: 117, column: 10, scope: !2621)
!2625 = !DILocation(line: 117, column: 3, scope: !2621)
!2626 = !DILocation(line: 119, column: 29, scope: !2596)
!2627 = !DILocation(line: 119, column: 27, scope: !2596)
!2628 = !DILocation(line: 120, column: 6, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 120, column: 6)
!2630 = !DILocation(line: 120, column: 31, scope: !2629)
!2631 = !DILocation(line: 120, column: 6, scope: !2596)
!2632 = !DILocation(line: 121, column: 29, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 120, column: 40)
!2634 = !DILocation(line: 121, column: 3, scope: !2633)
!2635 = !DILocation(line: 122, column: 3, scope: !2633)
!2636 = !DILocation(line: 125, column: 8, scope: !2596)
!2637 = !DILocation(line: 125, column: 6, scope: !2596)
!2638 = !DILocation(line: 127, column: 6, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 127, column: 6)
!2640 = !DILocation(line: 127, column: 10, scope: !2639)
!2641 = !DILocation(line: 127, column: 6, scope: !2596)
!2642 = !DILocation(line: 128, column: 3, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 127, column: 15)
!2644 = !DILocation(line: 129, column: 2, scope: !2643)
!2645 = !DILocation(line: 130, column: 23, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 129, column: 9)
!2647 = !DILocation(line: 130, column: 21, scope: !2646)
!2648 = !DILocation(line: 131, column: 7, scope: !2646)
!2649 = !DILocation(line: 134, column: 9, scope: !2596)
!2650 = !DILocation(line: 134, column: 2, scope: !2596)
!2651 = !DILocation(line: 135, column: 1, scope: !2596)
!2652 = distinct !DISubprogram(name: "cpuhp_remove_state", scope: !20, file: !20, line: 444, type: !2653, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{null, !19}
!2655 = !{!2656}
!2656 = !DILocalVariable(name: "state", arg: 1, scope: !2652, file: !20, line: 444, type: !19)
!2657 = !DILocation(line: 444, column: 56, scope: !2652)
!2658 = !DILocation(line: 446, column: 23, scope: !2652)
!2659 = !DILocation(line: 446, column: 2, scope: !2652)
!2660 = !DILocation(line: 447, column: 1, scope: !2652)
!2661 = !DISubprogram(name: "cpuidle_unregister_driver", scope: !2442, file: !2442, line: 188, type: !2662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{null, !2545}
!2664 = !DISubprogram(name: "free_percpu", scope: !2665, file: !2665, line: 134, type: !772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2665 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!2666 = !DISubprogram(name: "__cpuhp_remove_state", scope: !20, file: !20, line: 434, type: !2667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{null, !19, !707}
!2669 = distinct !DISubprogram(name: "default_enter_idle", scope: !3, file: !3, line: 28, type: !2543, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2670)
!2670 = !{!2671, !2672, !2673}
!2671 = !DILocalVariable(name: "dev", arg: 1, scope: !2669, file: !3, line: 28, type: !2440)
!2672 = !DILocalVariable(name: "drv", arg: 2, scope: !2669, file: !3, line: 29, type: !2545)
!2673 = !DILocalVariable(name: "index", arg: 3, scope: !2669, file: !3, line: 29, type: !21)
!2674 = !DILocation(line: 28, column: 64, scope: !2669)
!2675 = !DILocation(line: 29, column: 29, scope: !2669)
!2676 = !DILocation(line: 29, column: 38, scope: !2669)
!2677 = !DILocation(line: 31, column: 6, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 31, column: 6)
!2679 = !DILocation(line: 31, column: 6, scope: !2669)
!2680 = !DILocation(line: 32, column: 10, scope: !2678)
!2681 = !DILocation(line: 32, column: 3, scope: !2678)
!2682 = !DILocation(line: 34, column: 2, scope: !2669)
!2683 = !DILocation(line: 35, column: 9, scope: !2669)
!2684 = !DILocation(line: 35, column: 2, scope: !2669)
!2685 = !DILocation(line: 36, column: 1, scope: !2669)
!2686 = distinct !DISubprogram(name: "current_clr_polling_and_test", scope: !2687, file: !2687, line: 69, type: !754, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2687 = !DIFile(filename: "./include/linux/sched/idle.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c48061294cc6ed2b1e8fec5961924d0")
!2688 = !DILocation(line: 71, column: 2, scope: !2686)
!2689 = !DILocation(line: 77, column: 2, scope: !2686)
!2690 = !DILocation(line: 77, column: 2, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2686, file: !2687, line: 77, column: 2)
!2692 = !DILocation(line: 77, column: 2, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2691, file: !2687, line: 77, column: 2)
!2694 = !DILocation(line: 77, column: 2, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2691, file: !2687, line: 77, column: 2)
!2696 = !DILocation(line: 79, column: 9, scope: !2686)
!2697 = !DILocation(line: 79, column: 2, scope: !2686)
!2698 = !DISubprogram(name: "arch_cpu_idle", scope: !2699, file: !2699, line: 192, type: !1291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2699 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!2700 = distinct !DISubprogram(name: "__current_clr_polling", scope: !2687, file: !2687, line: 34, type: !1291, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2701 = !DILocation(line: 37, column: 29, scope: !2700)
!2702 = !DILocation(line: 37, column: 52, scope: !2700)
!2703 = !DILocation(line: 36, column: 2, scope: !2700)
!2704 = !DILocation(line: 38, column: 1, scope: !2700)
!2705 = distinct !DISubprogram(name: "tif_need_resched", scope: !2706, file: !2706, line: 182, type: !754, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2706 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!2707 = !DILocation(line: 185, column: 28, scope: !2705)
!2708 = !DILocation(line: 185, column: 51, scope: !2705)
!2709 = !DILocation(line: 184, column: 9, scope: !2705)
!2710 = !DILocation(line: 184, column: 2, scope: !2705)
!2711 = distinct !DISubprogram(name: "arch_clear_bit", scope: !2712, file: !2712, line: 72, type: !2713, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2717)
!2712 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !386, !2715}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !400)
!2717 = !{!2718, !2719}
!2718 = !DILocalVariable(name: "nr", arg: 1, scope: !2711, file: !2712, line: 72, type: !386)
!2719 = !DILocalVariable(name: "addr", arg: 2, scope: !2711, file: !2712, line: 72, type: !2715)
!2720 = !DILocation(line: 72, column: 21, scope: !2711)
!2721 = !DILocation(line: 72, column: 49, scope: !2711)
!2722 = !DILocation(line: 74, column: 27, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2711, file: !2712, line: 74, column: 6)
!2724 = !DILocation(line: 74, column: 6, scope: !2723)
!2725 = !DILocation(line: 74, column: 6, scope: !2711)
!2726 = !DILocation(line: 76, column: 6, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2723, file: !2712, line: 74, column: 32)
!2728 = !DILocation(line: 77, column: 13, scope: !2727)
!2729 = !DILocation(line: 77, column: 12, scope: !2727)
!2730 = !DILocation(line: 75, column: 3, scope: !2727)
!2731 = !{i64 2148009854, i64 2148009893, i64 2148009914, i64 2148009951, i64 2148009974, i64 2148009844}
!2732 = !DILocation(line: 78, column: 2, scope: !2727)
!2733 = !DILocation(line: 80, column: 8, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2723, file: !2712, line: 78, column: 9)
!2735 = !DILocation(line: 80, column: 32, scope: !2734)
!2736 = !DILocation(line: 79, column: 3, scope: !2734)
!2737 = !{i64 2148010139, i64 2148010178, i64 2148010199, i64 2148010236, i64 2148010259, i64 2148010129}
!2738 = !DILocation(line: 82, column: 1, scope: !2711)
!2739 = distinct !DISubprogram(name: "get_current", scope: !2740, file: !2740, line: 39, type: !2741, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2743)
!2740 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!1307}
!2743 = !{!2744, !2746, !2748}
!2744 = !DILocalVariable(name: "pscr_ret__", scope: !2745, file: !2740, line: 41, type: !1307)
!2745 = distinct !DILexicalBlock(scope: !2739, file: !2740, line: 41, column: 9)
!2746 = !DILocalVariable(name: "__vpp_verify", scope: !2747, file: !2740, line: 41, type: !629)
!2747 = distinct !DILexicalBlock(scope: !2745, file: !2740, line: 41, column: 9)
!2748 = !DILocalVariable(name: "pfo_val__", scope: !2749, file: !2740, line: 41, type: !514)
!2749 = distinct !DILexicalBlock(scope: !2745, file: !2740, line: 41, column: 9)
!2750 = !DILocation(line: 41, column: 9, scope: !2745)
!2751 = !DILocation(line: 41, column: 9, scope: !2747)
!2752 = !DILocation(line: 41, column: 9, scope: !2749)
!2753 = !{i64 2148258100}
!2754 = !DILocation(line: 41, column: 9, scope: !2739)
!2755 = !DILocation(line: 41, column: 2, scope: !2739)
!2756 = distinct !DISubprogram(name: "arch_test_bit", scope: !2712, file: !2712, line: 237, type: !2757, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2761)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!707, !400, !2759}
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2716)
!2761 = !{!2762, !2763}
!2762 = !DILocalVariable(name: "nr", arg: 1, scope: !2756, file: !2712, line: 237, type: !400)
!2763 = !DILocalVariable(name: "addr", arg: 2, scope: !2756, file: !2712, line: 237, type: !2759)
!2764 = !DILocation(line: 237, column: 29, scope: !2756)
!2765 = !DILocation(line: 237, column: 63, scope: !2756)
!2766 = !DILocation(line: 239, column: 30, scope: !2756)
!2767 = !DILocation(line: 239, column: 9, scope: !2756)
!2768 = !DILocation(line: 239, column: 54, scope: !2756)
!2769 = !DILocation(line: 239, column: 58, scope: !2756)
!2770 = !DILocation(line: 239, column: 36, scope: !2756)
!2771 = !DILocation(line: 240, column: 26, scope: !2756)
!2772 = !DILocation(line: 240, column: 30, scope: !2756)
!2773 = !DILocation(line: 240, column: 8, scope: !2756)
!2774 = !DILocation(line: 239, column: 2, scope: !2756)
!2775 = distinct !DISubprogram(name: "constant_test_bit", scope: !2712, file: !2712, line: 204, type: !2776, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!707, !386, !2759}
!2778 = !{!2779, !2780}
!2779 = !DILocalVariable(name: "nr", arg: 1, scope: !2775, file: !2712, line: 204, type: !386)
!2780 = !DILocalVariable(name: "addr", arg: 2, scope: !2775, file: !2712, line: 204, type: !2759)
!2781 = !DILocation(line: 204, column: 52, scope: !2775)
!2782 = !DILocation(line: 204, column: 86, scope: !2775)
!2783 = !DILocation(line: 206, column: 19, scope: !2775)
!2784 = !DILocation(line: 206, column: 22, scope: !2775)
!2785 = !DILocation(line: 206, column: 15, scope: !2775)
!2786 = !DILocation(line: 207, column: 4, scope: !2775)
!2787 = !DILocation(line: 207, column: 9, scope: !2775)
!2788 = !DILocation(line: 207, column: 12, scope: !2775)
!2789 = !DILocation(line: 206, column: 44, scope: !2775)
!2790 = !DILocation(line: 207, column: 37, scope: !2775)
!2791 = !DILocation(line: 206, column: 2, scope: !2775)
!2792 = distinct !DISubprogram(name: "variable_test_bit", scope: !2712, file: !2712, line: 224, type: !2776, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2793)
!2793 = !{!2794, !2795, !2796}
!2794 = !DILocalVariable(name: "nr", arg: 1, scope: !2792, file: !2712, line: 224, type: !386)
!2795 = !DILocalVariable(name: "addr", arg: 2, scope: !2792, file: !2712, line: 224, type: !2759)
!2796 = !DILocalVariable(name: "oldbit", scope: !2792, file: !2712, line: 226, type: !707)
!2797 = !DILocation(line: 224, column: 52, scope: !2792)
!2798 = !DILocation(line: 224, column: 86, scope: !2792)
!2799 = !DILocation(line: 226, column: 2, scope: !2792)
!2800 = !DILocation(line: 226, column: 7, scope: !2792)
!2801 = !DILocation(line: 231, column: 33, scope: !2792)
!2802 = !DILocation(line: 231, column: 46, scope: !2792)
!2803 = !DILocation(line: 228, column: 2, scope: !2792)
!2804 = !{i64 2148022178, i64 2148022252}
!2805 = !DILocation(line: 233, column: 9, scope: !2792)
!2806 = !{i8 0, i8 2}
!2807 = !DILocation(line: 234, column: 1, scope: !2792)
!2808 = !DILocation(line: 233, column: 2, scope: !2792)
!2809 = !DISubprogram(name: "kvm_para_available", scope: !2810, file: !2810, line: 123, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2810 = !DIFile(filename: "./arch/x86/include/asm/kvm_para.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "780f37e3ea06926454ceb60b0563e4b2")
!2811 = distinct !DISubprogram(name: "haltpoll_want", scope: !3, file: !3, line: 96, type: !754, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2812 = !DILocation(line: 98, column: 9, scope: !2811)
!2813 = !DILocation(line: 98, column: 47, scope: !2811)
!2814 = !DILocation(line: 98, column: 50, scope: !2811)
!2815 = !DILocation(line: 98, column: 2, scope: !2811)
!2816 = !DISubprogram(name: "cpuidle_poll_state_init", scope: !2442, file: !2442, line: 279, type: !2662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2817 = !DISubprogram(name: "cpuidle_register_driver", scope: !2442, file: !2442, line: 184, type: !2818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!21, !2545}
!2820 = !DISubprogram(name: "__alloc_percpu", scope: !2665, file: !2665, line: 133, type: !2821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!422, !397, !397}
!2823 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !20, file: !20, line: 283, type: !2824, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2829)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!21, !19, !269, !2826, !2826}
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!21, !7}
!2829 = !{!2830, !2831, !2832, !2833}
!2830 = !DILocalVariable(name: "state", arg: 1, scope: !2823, file: !20, line: 283, type: !19)
!2831 = !DILocalVariable(name: "name", arg: 2, scope: !2823, file: !20, line: 284, type: !269)
!2832 = !DILocalVariable(name: "startup", arg: 3, scope: !2823, file: !20, line: 285, type: !2826)
!2833 = !DILocalVariable(name: "teardown", arg: 4, scope: !2823, file: !20, line: 286, type: !2826)
!2834 = !DILocation(line: 283, column: 54, scope: !2823)
!2835 = !DILocation(line: 284, column: 21, scope: !2823)
!2836 = !DILocation(line: 285, column: 15, scope: !2823)
!2837 = !DILocation(line: 286, column: 15, scope: !2823)
!2838 = !DILocation(line: 288, column: 29, scope: !2823)
!2839 = !DILocation(line: 288, column: 36, scope: !2823)
!2840 = !DILocation(line: 288, column: 48, scope: !2823)
!2841 = !DILocation(line: 288, column: 57, scope: !2823)
!2842 = !DILocation(line: 288, column: 9, scope: !2823)
!2843 = !DILocation(line: 288, column: 2, scope: !2823)
!2844 = distinct !DISubprogram(name: "haltpoll_cpu_online", scope: !3, file: !3, line: 56, type: !2827, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2845)
!2845 = !{!2846, !2847, !2848, !2851}
!2846 = !DILocalVariable(name: "cpu", arg: 1, scope: !2844, file: !3, line: 56, type: !7)
!2847 = !DILocalVariable(name: "dev", scope: !2844, file: !3, line: 58, type: !2440)
!2848 = !DILocalVariable(name: "__vpp_verify", scope: !2849, file: !3, line: 60, type: !629)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 60, column: 8)
!2850 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 60, column: 8)
!2851 = !DILocalVariable(name: "__ptr", scope: !2852, file: !3, line: 60, type: !400)
!2852 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 60, column: 8)
!2853 = !DILocation(line: 56, column: 45, scope: !2844)
!2854 = !DILocation(line: 58, column: 2, scope: !2844)
!2855 = !DILocation(line: 58, column: 25, scope: !2844)
!2856 = !DILocation(line: 60, column: 8, scope: !2850)
!2857 = !DILocation(line: 60, column: 8, scope: !2849)
!2858 = !DILocation(line: 60, column: 8, scope: !2852)
!2859 = !DILocation(line: 60, column: 6, scope: !2844)
!2860 = !DILocation(line: 61, column: 7, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 61, column: 6)
!2862 = !DILocation(line: 61, column: 12, scope: !2861)
!2863 = !DILocation(line: 61, column: 6, scope: !2844)
!2864 = !DILocation(line: 62, column: 14, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 61, column: 24)
!2866 = !DILocation(line: 62, column: 3, scope: !2865)
!2867 = !DILocation(line: 62, column: 8, scope: !2865)
!2868 = !DILocation(line: 62, column: 12, scope: !2865)
!2869 = !DILocation(line: 63, column: 31, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 63, column: 7)
!2871 = !DILocation(line: 63, column: 7, scope: !2870)
!2872 = !DILocation(line: 63, column: 7, scope: !2865)
!2873 = !DILocation(line: 64, column: 4, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 64, column: 4)
!2875 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 63, column: 37)
!2876 = !DILocation(line: 64, column: 4, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 64, column: 4)
!2878 = !DILocation(line: 65, column: 4, scope: !2875)
!2879 = !DILocation(line: 67, column: 24, scope: !2865)
!2880 = !DILocation(line: 67, column: 3, scope: !2865)
!2881 = !DILocation(line: 68, column: 2, scope: !2865)
!2882 = !DILocation(line: 70, column: 2, scope: !2844)
!2883 = !DILocation(line: 71, column: 1, scope: !2844)
!2884 = distinct !DISubprogram(name: "haltpoll_cpu_offline", scope: !3, file: !3, line: 73, type: !2827, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2885)
!2885 = !{!2886, !2887, !2888, !2891}
!2886 = !DILocalVariable(name: "cpu", arg: 1, scope: !2884, file: !3, line: 73, type: !7)
!2887 = !DILocalVariable(name: "dev", scope: !2884, file: !3, line: 75, type: !2440)
!2888 = !DILocalVariable(name: "__vpp_verify", scope: !2889, file: !3, line: 77, type: !629)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 77, column: 8)
!2890 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 77, column: 8)
!2891 = !DILocalVariable(name: "__ptr", scope: !2892, file: !3, line: 77, type: !400)
!2892 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 77, column: 8)
!2893 = !DILocation(line: 73, column: 46, scope: !2884)
!2894 = !DILocation(line: 75, column: 2, scope: !2884)
!2895 = !DILocation(line: 75, column: 25, scope: !2884)
!2896 = !DILocation(line: 77, column: 8, scope: !2890)
!2897 = !DILocation(line: 77, column: 8, scope: !2889)
!2898 = !DILocation(line: 77, column: 8, scope: !2892)
!2899 = !DILocation(line: 77, column: 6, scope: !2884)
!2900 = !DILocation(line: 78, column: 6, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 78, column: 6)
!2902 = !DILocation(line: 78, column: 11, scope: !2901)
!2903 = !DILocation(line: 78, column: 6, scope: !2884)
!2904 = !DILocation(line: 79, column: 25, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 78, column: 23)
!2906 = !DILocation(line: 79, column: 3, scope: !2905)
!2907 = !DILocation(line: 80, column: 29, scope: !2905)
!2908 = !DILocation(line: 80, column: 3, scope: !2905)
!2909 = !DILocation(line: 81, column: 2, scope: !2905)
!2910 = !DILocation(line: 84, column: 1, scope: !2884)
!2911 = !DILocation(line: 83, column: 2, scope: !2884)
!2912 = distinct !DISubprogram(name: "kvm_para_has_hint", scope: !2913, file: !2913, line: 13, type: !2914, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2916)
!2913 = !DIFile(filename: "./include/linux/kvm_para.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6140a9ae936ebae60a506bfa2a09985d")
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!707, !7}
!2916 = !{!2917}
!2917 = !DILocalVariable(name: "feature", arg: 1, scope: !2912, file: !2913, line: 13, type: !7)
!2918 = !DILocation(line: 13, column: 51, scope: !2912)
!2919 = !DILocation(line: 15, column: 12, scope: !2912)
!2920 = !DILocation(line: 15, column: 44, scope: !2912)
!2921 = !DILocation(line: 15, column: 41, scope: !2912)
!2922 = !DILocation(line: 15, column: 34, scope: !2912)
!2923 = !DILocation(line: 15, column: 10, scope: !2912)
!2924 = !DILocation(line: 15, column: 9, scope: !2912)
!2925 = !DILocation(line: 15, column: 2, scope: !2912)
!2926 = !DISubprogram(name: "kvm_arch_para_hints", scope: !2810, file: !2810, line: 125, type: !2927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!7}
!2929 = !DISubprogram(name: "__cpuhp_setup_state", scope: !20, file: !20, line: 263, type: !2930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!21, !19, !269, !707, !2826, !2826, !707}
!2932 = !DISubprogram(name: "cpuidle_register_device", scope: !2442, file: !2442, line: 189, type: !2933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!21, !2440}
!2935 = !DISubprogram(name: "_printk", scope: !2936, file: !2936, line: 153, type: !2937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2936 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!21, !269, null}
!2939 = !DISubprogram(name: "arch_haltpoll_enable", scope: !2940, file: !2940, line: 5, type: !2941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2940 = !DIFile(filename: "./arch/x86/include/asm/cpuidle_haltpoll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97574cbdaafd721bed6e66ecbf2ab179")
!2941 = !DISubroutineType(types: !2942)
!2942 = !{null, !7}
!2943 = !DISubprogram(name: "arch_haltpoll_disable", scope: !2940, file: !2940, line: 6, type: !2941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2944 = !DISubprogram(name: "cpuidle_unregister_device", scope: !2442, file: !2442, line: 190, type: !2945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{null, !2440}
