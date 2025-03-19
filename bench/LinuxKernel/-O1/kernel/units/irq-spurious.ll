; ModuleID = 'kernel/irq/spurious.c'
source_filename = "kernel/irq/spurious.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.15 }
%union.anon.15 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, [1 x %struct.cpumask], i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, %struct.hlist_node, [24 x i8] }
%struct.irq_common_data = type { i32, i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask] }
%struct.irq_data = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
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
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, ptr, ptr, [32 x i8] }

@irq_poll_cpu = internal global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !1169
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@irq_wait_for_poll.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !1174
@.str.1 = private unnamed_addr constant [43 x i8] c"irq poll in progress on cpu %d for irq %d\0A\00", align 1, !dbg !2551
@.str.2 = private unnamed_addr constant [22 x i8] c"kernel/irq/spurious.c\00", align 1, !dbg !2556
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.3 = private unnamed_addr constant [21 x i8] c"\010Disabling IRQ #%d\0A\00", align 1, !dbg !2561
@poll_spurious_irq_timer = internal global %struct.timer_list { %struct.hlist_node { ptr inttoptr (i64 -2401263026318605568 to ptr), ptr null }, i64 0, ptr @poll_spurious_irqs, i32 0 }, align 8, !dbg !2640
@noirqdebug = hidden global i8 0, section ".data..read_mostly", align 1, !dbg !2605
@.str.4 = private unnamed_addr constant [33 x i8] c"\016IRQ lockup detection disabled\0A\00", align 1, !dbg !2566
@__setup_str_noirqdebug_setup = internal constant [11 x i8] c"noirqdebug\00", section ".init.rodata", align 1, !dbg !2642
@__setup_noirqdebug_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_noirqdebug_setup, ptr @noirqdebug_setup, i32 0 }, section ".init.setup", align 8, !dbg !2571
@__param_str_noirqdebug = internal constant [20 x i8] c"spurious.noirqdebug\00", align 16, !dbg !2647
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@__param_noirqdebug = internal constant %struct.kernel_param { ptr @__param_str_noirqdebug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.15 { ptr @noirqdebug } }, section "__param", align 8, !dbg !2582
@__UNIQUE_ID_noirqdebugtype206 = internal constant [34 x i8] c"spurious.parmtype=noirqdebug:bool\00", section ".modinfo", align 1, !dbg !2584
@__UNIQUE_ID_noirqdebug207 = internal constant [64 x i8] c"spurious.parm=noirqdebug:Disable irq lockup detection when true\00", section ".modinfo", align 1, !dbg !2589
@__setup_str_irqfixup_setup = internal constant [9 x i8] c"irqfixup\00", section ".init.rodata", align 1, !dbg !2650
@__setup_irqfixup_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_irqfixup_setup, ptr @irqfixup_setup, i32 0 }, section ".init.setup", align 8, !dbg !2592
@__param_str_irqfixup = internal constant [18 x i8] c"spurious.irqfixup\00", align 16, !dbg !2662
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@irqfixup = internal global i32 0, section ".data..read_mostly", align 4, !dbg !2603
@__param_irqfixup = internal constant %struct.kernel_param { ptr @__param_str_irqfixup, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.15 { ptr @irqfixup } }, section "__param", align 8, !dbg !2594
@__UNIQUE_ID_irqfixuptype208 = internal constant [31 x i8] c"spurious.parmtype=irqfixup:int\00", section ".modinfo", align 1, !dbg !2596
@__setup_str_irqpoll_setup = internal constant [8 x i8] c"irqpoll\00", section ".init.rodata", align 1, !dbg !2667
@__setup_irqpoll_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_irqpoll_setup, ptr @irqpoll_setup, i32 0 }, section ".init.setup", align 8, !dbg !2601
@report_bad_irq.count = internal global i32 100, align 4, !dbg !2607
@irq_poll_active = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !2615
@nr_irqs = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"\013irq event %d: bogus return value %x\0A\00", align 1, !dbg !2617
@.str.6 = private unnamed_addr constant [64 x i8] c"\013irq %d: nobody cared (try booting with the \22irqpoll\22 option)\0A\00", align 1, !dbg !2622
@.str.7 = private unnamed_addr constant [13 x i8] c"\013handlers:\0A\00", align 1, !dbg !2625
@.str.8 = private unnamed_addr constant [13 x i8] c"\013[<%p>] %ps\00", align 1, !dbg !2630
@.str.9 = private unnamed_addr constant [23 x i8] c"\01c threaded [<%p>] %ps\00", align 1, !dbg !2632
@.str.10 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1, !dbg !2637
@.str.11 = private unnamed_addr constant [40 x i8] c"\014Misrouted IRQ fixup support enabled.\0A\00", align 1, !dbg !2655
@.str.12 = private unnamed_addr constant [39 x i8] c"\014This may impact system performance.\0A\00", align 1, !dbg !2660
@.str.13 = private unnamed_addr constant [51 x i8] c"\014Misrouted IRQ fixup and polling support enabled\0A\00", align 1, !dbg !2670
@.str.14 = private unnamed_addr constant [52 x i8] c"\014This may significantly impact system performance\0A\00", align 1, !dbg !2675
@llvm.compiler.used = appending global [8 x ptr] [ptr @__setup_noirqdebug_setup, ptr @__param_noirqdebug, ptr @__UNIQUE_ID_noirqdebugtype206, ptr @__UNIQUE_ID_noirqdebug207, ptr @__setup_irqfixup_setup, ptr @__param_irqfixup, ptr @__UNIQUE_ID_irqfixuptype208, ptr @__setup_irqpoll_setup], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @irq_wait_for_poll(ptr noundef %desc) #0 align 16 !dbg !1176 {
entry:
  %retval = alloca i1, align 1
  %desc.addr = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp17 = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %pscr_ret__41 = alloca i32, align 4
  %__vpp_verify43 = alloca ptr, align 8
  %pfo_val__46 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp69 = alloca i64, align 8
  %tmp78 = alloca i64, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2523, metadata !DIExpression()), !dbg !2687
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #9, !dbg !2688
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !2524, metadata !DIExpression()), !dbg !2688
  %0 = load i32, ptr @irq_poll_cpu, align 4, !dbg !2688
  call void @__this_cpu_preempt_check(ptr noundef @.str) #10, !dbg !2689
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #9, !dbg !2690
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2527, metadata !DIExpression()), !dbg !2690
  br label %do.body, !dbg !2690

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !2691
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2530, metadata !DIExpression()), !dbg !2691
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2691
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !2691
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !2690
  br label %do.cond, !dbg !2691

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2691

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #9, !dbg !2692
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2532, metadata !DIExpression()), !dbg !2692
  %2 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #11, !dbg !2692, !srcloc !2693
  store i32 %2, ptr %pfo_val__, align 4, !dbg !2692
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !2692
  %conv = zext i32 %3 to i64, !dbg !2692
  %conv2 = trunc i64 %conv to i32, !dbg !2692
  store i32 %conv2, ptr %tmp1, align 4, !dbg !2692
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #9, !dbg !2690
  %4 = load i32, ptr %tmp1, align 4, !dbg !2692
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !2690
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !2690
  store i32 %5, ptr %tmp3, align 4, !dbg !2690
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #9, !dbg !2689
  %6 = load i32, ptr %tmp3, align 4, !dbg !2690
  store i32 %6, ptr %tmp, align 4, !dbg !2689
  %7 = load i32, ptr %tmp, align 4, !dbg !2689
  %cmp = icmp eq i32 %0, %7, !dbg !2688
  %lnot = xor i1 %cmp, true, !dbg !2688
  %lnot5 = xor i1 %lnot, true, !dbg !2688
  %frombool = zext i1 %lnot5 to i8, !dbg !2688
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !2688
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #9, !dbg !2694
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !2534, metadata !DIExpression()), !dbg !2694
  %8 = load i8, ptr %__ret_do_once, align 1, !dbg !2694, !range !2695, !noundef !360
  %tobool = trunc i8 %8 to i1, !dbg !2694
  %lnot6 = xor i1 %tobool, true, !dbg !2694
  %lnot7 = xor i1 %lnot6, true, !dbg !2694
  %frombool8 = zext i1 %lnot7 to i8, !dbg !2694
  store i8 %frombool8, ptr %__ret_cond, align 1, !dbg !2694
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #9, !dbg !2694
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !2537, metadata !DIExpression()), !dbg !2694
  store i8 0, ptr %__ret_once, align 1, !dbg !2694
  %9 = load i8, ptr %__ret_cond, align 1, !dbg !2696, !range !2695, !noundef !360
  %tobool9 = trunc i8 %9 to i1, !dbg !2696
  br i1 %tobool9, label %land.rhs, label %land.end, !dbg !2696

land.rhs:                                         ; preds = %do.end
  %10 = load i8, ptr @irq_wait_for_poll.__already_done, align 1, !dbg !2696, !range !2695, !noundef !360
  %tobool11 = trunc i8 %10 to i1, !dbg !2696
  %lnot12 = xor i1 %tobool11, true, !dbg !2696
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %11 = phi i1 [ false, %do.end ], [ %lnot12, %land.rhs ], !dbg !2698
  %lnot13 = xor i1 %11, true, !dbg !2696
  %lnot14 = xor i1 %lnot13, true, !dbg !2696
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !2696
  %conv15 = sext i32 %lnot.ext to i64, !dbg !2696
  %expval = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !2696
  %tobool16 = icmp ne i64 %expval, 0, !dbg !2696
  br i1 %tobool16, label %if.then, label %if.end, !dbg !2694

if.then:                                          ; preds = %land.end
  store i8 1, ptr @irq_wait_for_poll.__already_done, align 1, !dbg !2699
  store i8 1, ptr %__ret_once, align 1, !dbg !2699
  br label %if.end, !dbg !2699

if.end:                                           ; preds = %if.then, %land.end
  %12 = load i8, ptr %__ret_once, align 1, !dbg !2694, !range !2695, !noundef !360
  %tobool18 = trunc i8 %12 to i1, !dbg !2694
  %lnot19 = xor i1 %tobool18, true, !dbg !2694
  %lnot21 = xor i1 %lnot19, true, !dbg !2694
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !2694
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !2694
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !2694
  store i64 %expval24, ptr %tmp17, align 8, !dbg !2696
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #9, !dbg !2701
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #9, !dbg !2701
  %13 = load i64, ptr %tmp17, align 8, !dbg !2694
  %tobool25 = icmp ne i64 %13, 0, !dbg !2701
  br i1 %tobool25, label %if.then26, label %if.end77, !dbg !2688

if.then26:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !2702
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2538, metadata !DIExpression()), !dbg !2702
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !2702
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !2703
  %tobool27 = icmp ne i32 %14, 0, !dbg !2703
  %lnot28 = xor i1 %tobool27, true, !dbg !2703
  %lnot30 = xor i1 %lnot28, true, !dbg !2703
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !2703
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !2703
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !2703
  %tobool34 = icmp ne i64 %expval33, 0, !dbg !2703
  br i1 %tobool34, label %if.then35, label %if.end68, !dbg !2702

if.then35:                                        ; preds = %if.then26
  br label %do.body36, !dbg !2703

do.body36:                                        ; preds = %if.then35
  br label %do.body37, !dbg !2704

do.body37:                                        ; preds = %do.body36
  br label %do.cond38, !dbg !2705

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !2705

do.end39:                                         ; preds = %do.cond38
  call void @__this_cpu_preempt_check(ptr noundef @.str) #10, !dbg !2707
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__41) #9, !dbg !2708
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__41, metadata !2540, metadata !DIExpression()), !dbg !2708
  br label %do.body42, !dbg !2708

do.body42:                                        ; preds = %do.end39
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify43) #9, !dbg !2709
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify43, metadata !2545, metadata !DIExpression()), !dbg !2709
  store ptr null, ptr %__vpp_verify43, align 8, !dbg !2709
  %15 = load ptr, ptr %__vpp_verify43, align 8, !dbg !2709
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify43) #9, !dbg !2708
  br label %do.cond44, !dbg !2709

do.cond44:                                        ; preds = %do.body42
  br label %do.end45, !dbg !2709

do.end45:                                         ; preds = %do.cond44
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__46) #9, !dbg !2710
  call void @llvm.dbg.declare(metadata ptr %pfo_val__46, metadata !2547, metadata !DIExpression()), !dbg !2710
  %16 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #11, !dbg !2710, !srcloc !2711
  store i32 %16, ptr %pfo_val__46, align 4, !dbg !2710
  %17 = load i32, ptr %pfo_val__46, align 4, !dbg !2710
  %conv48 = zext i32 %17 to i64, !dbg !2710
  %conv49 = trunc i64 %conv48 to i32, !dbg !2710
  store i32 %conv49, ptr %tmp47, align 4, !dbg !2710
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__46) #9, !dbg !2708
  %18 = load i32, ptr %tmp47, align 4, !dbg !2710
  store i32 %18, ptr %pscr_ret__41, align 4, !dbg !2708
  %19 = load i32, ptr %pscr_ret__41, align 4, !dbg !2708
  store i32 %19, ptr %tmp50, align 4, !dbg !2708
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__41) #9, !dbg !2707
  %20 = load i32, ptr %tmp50, align 4, !dbg !2708
  store i32 %20, ptr %tmp40, align 4, !dbg !2707
  %21 = load i32, ptr %tmp40, align 4, !dbg !2707
  %22 = load ptr, ptr %desc.addr, align 8, !dbg !2704
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %22, i32 0, i32 1, !dbg !2704
  %irq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 1, !dbg !2704
  %23 = load i32, ptr %irq, align 4, !dbg !2704
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.1, i32 noundef %21, i32 noundef %23) #10, !dbg !2704
  br label %do.body51, !dbg !2704

do.body51:                                        ; preds = %do.end45
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !2712
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2549, metadata !DIExpression()), !dbg !2712
  store i32 2313, ptr %__flags, align 4, !dbg !2712
  br label %do.body52, !dbg !2712

do.body52:                                        ; preds = %do.body51
  br label %do.cond53, !dbg !2713

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !2713

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !2712

do.body55:                                        ; preds = %do.end54
  %24 = load i32, ptr %__flags, align 4, !dbg !2715
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 41, i32 %24, i64 12) #9, !dbg !2715, !srcloc !2717
  br label %do.cond56, !dbg !2715

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !2715

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !2712

do.body58:                                        ; preds = %do.end57
  br label %do.cond59, !dbg !2718

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !2718

do.end60:                                         ; preds = %do.cond59
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !2704
  br label %do.cond61, !dbg !2712

do.cond61:                                        ; preds = %do.end60
  br label %do.end62, !dbg !2712

do.end62:                                         ; preds = %do.cond61
  br label %do.body63, !dbg !2704

do.body63:                                        ; preds = %do.end62
  br label %do.cond64, !dbg !2720

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !2720

do.end65:                                         ; preds = %do.cond64
  br label %do.cond66, !dbg !2704

do.cond66:                                        ; preds = %do.end65
  br label %do.end67, !dbg !2704

do.end67:                                         ; preds = %do.cond66
  br label %if.end68, !dbg !2704

if.end68:                                         ; preds = %do.end67, %if.then26
  %25 = load i32, ptr %__ret_warn_on, align 4, !dbg !2702
  %tobool70 = icmp ne i32 %25, 0, !dbg !2702
  %lnot71 = xor i1 %tobool70, true, !dbg !2702
  %lnot73 = xor i1 %lnot71, true, !dbg !2702
  %lnot.ext74 = zext i1 %lnot73 to i32, !dbg !2702
  %conv75 = sext i32 %lnot.ext74 to i64, !dbg !2702
  %expval76 = call i64 @llvm.expect.i64(i64 %conv75, i64 0), !dbg !2702
  store i64 %expval76, ptr %tmp69, align 8, !dbg !2703
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !2701
  %26 = load i64, ptr %tmp69, align 8, !dbg !2702
  br label %if.end77, !dbg !2701

if.end77:                                         ; preds = %if.end68, %if.end
  %27 = load i8, ptr %__ret_do_once, align 1, !dbg !2688, !range !2695, !noundef !360
  %tobool79 = trunc i8 %27 to i1, !dbg !2688
  %lnot80 = xor i1 %tobool79, true, !dbg !2688
  %lnot82 = xor i1 %lnot80, true, !dbg !2688
  %lnot.ext83 = zext i1 %lnot82 to i32, !dbg !2688
  %conv84 = sext i32 %lnot.ext83 to i64, !dbg !2688
  %expval85 = call i64 @llvm.expect.i64(i64 %conv84, i64 0), !dbg !2688
  store i64 %expval85, ptr %tmp78, align 8, !dbg !2701
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #9, !dbg !2722
  %28 = load i64, ptr %tmp78, align 8, !dbg !2688
  %tobool86 = icmp ne i64 %28, 0, !dbg !2722
  br i1 %tobool86, label %if.then87, label %if.end88, !dbg !2723

if.then87:                                        ; preds = %if.end77
  store i1 false, ptr %retval, align 1, !dbg !2724
  br label %return, !dbg !2724

if.end88:                                         ; preds = %if.end77
  br label %do.body89, !dbg !2725

do.body89:                                        ; preds = %do.cond92, %if.end88
  %29 = load ptr, ptr %desc.addr, align 8, !dbg !2726
  %lock = getelementptr inbounds %struct.irq_desc, ptr %29, i32 0, i32 15, !dbg !2726
  call void @_raw_spin_unlock(ptr noundef %lock) #10, !dbg !2726
  br label %while.cond, !dbg !2728

while.cond:                                       ; preds = %while.body, %do.body89
  %30 = load ptr, ptr %desc.addr, align 8, !dbg !2729
  %irq_data90 = getelementptr inbounds %struct.irq_desc, ptr %30, i32 0, i32 1, !dbg !2730
  %call = call zeroext i1 @irqd_irq_inprogress(ptr noundef %irq_data90) #10, !dbg !2731
  br i1 %call, label %while.body, label %while.end, !dbg !2728

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #10, !dbg !2732
  br label %while.cond, !dbg !2728, !llvm.loop !2733

while.end:                                        ; preds = %while.cond
  %31 = load ptr, ptr %desc.addr, align 8, !dbg !2737
  %lock91 = getelementptr inbounds %struct.irq_desc, ptr %31, i32 0, i32 15, !dbg !2737
  call void @_raw_spin_lock(ptr noundef %lock91) #10, !dbg !2737
  br label %do.cond92, !dbg !2738

do.cond92:                                        ; preds = %while.end
  %32 = load ptr, ptr %desc.addr, align 8, !dbg !2739
  %irq_data93 = getelementptr inbounds %struct.irq_desc, ptr %32, i32 0, i32 1, !dbg !2740
  %call94 = call zeroext i1 @irqd_irq_inprogress(ptr noundef %irq_data93) #10, !dbg !2741
  br i1 %call94, label %do.body89, label %do.end95, !dbg !2738, !llvm.loop !2742

do.end95:                                         ; preds = %do.cond92
  %33 = load ptr, ptr %desc.addr, align 8, !dbg !2744
  %irq_data96 = getelementptr inbounds %struct.irq_desc, ptr %33, i32 0, i32 1, !dbg !2745
  %call97 = call zeroext i1 @irqd_irq_disabled(ptr noundef %irq_data96) #10, !dbg !2746
  br i1 %call97, label %land.end100, label %land.rhs98, !dbg !2747

land.rhs98:                                       ; preds = %do.end95
  %34 = load ptr, ptr %desc.addr, align 8, !dbg !2748
  %action = getelementptr inbounds %struct.irq_desc, ptr %34, i32 0, i32 4, !dbg !2749
  %35 = load ptr, ptr %action, align 16, !dbg !2749
  %tobool99 = icmp ne ptr %35, null, !dbg !2747
  br label %land.end100

land.end100:                                      ; preds = %land.rhs98, %do.end95
  %36 = phi i1 [ false, %do.end95 ], [ %tobool99, %land.rhs98 ], !dbg !2750
  store i1 %36, ptr %retval, align 1, !dbg !2751
  br label %return, !dbg !2751

return:                                           ; preds = %land.end100, %if.then87
  %37 = load i1, ptr %retval, align 1, !dbg !2752
  ret i1 %37, !dbg !2752
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #3 align 16 !dbg !2753 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !2758, metadata !DIExpression()), !dbg !2759
  ret void, !dbg !2760
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2761 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2764 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_irq_inprogress(ptr noundef %d) #6 align 16 !dbg !2769 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2773, metadata !DIExpression()), !dbg !2774
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2775
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2775
  %1 = load ptr, ptr %common, align 8, !dbg !2775
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !2775
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !2775
  %and = and i32 %2, 262144, !dbg !2776
  %tobool = icmp ne i32 %and, 0, !dbg !2775
  ret i1 %tobool, !dbg !2777
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #3 align 16 !dbg !2778 {
entry:
  call void @rep_nop() #10, !dbg !2780
  ret void, !dbg !2781
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2782 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irqd_irq_disabled(ptr noundef %d) #6 align 16 !dbg !2783 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2785, metadata !DIExpression()), !dbg !2786
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2787
  %common = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3, !dbg !2787
  %1 = load ptr, ptr %common, align 8, !dbg !2787
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 0, !dbg !2787
  %2 = load i32, ptr %state_use_accessors, align 8, !dbg !2787
  %and = and i32 %2, 65536, !dbg !2788
  %tobool = icmp ne i32 %and, 0, !dbg !2787
  ret i1 %tobool, !dbg !2789
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @note_interrupt(ptr noundef %desc, i32 noundef %action_ret) #0 align 16 !dbg !2790 {
entry:
  %desc.addr = alloca ptr, align 8
  %action_ret.addr = alloca i32, align 4
  %irq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %handled = alloca i32, align 4
  %ok = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2792, metadata !DIExpression()), !dbg !2803
  store i32 %action_ret, ptr %action_ret.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %action_ret.addr, metadata !2793, metadata !DIExpression()), !dbg !2804
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #9, !dbg !2805
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !2794, metadata !DIExpression()), !dbg !2806
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2807
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6, !dbg !2809
  %1 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 4, !dbg !2809
  %and = and i32 %1, 8, !dbg !2810
  %tobool = icmp ne i32 %and, 0, !dbg !2810
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2811

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !2812
  %call = call zeroext i1 @irq_settings_is_polled(ptr noundef %2) #10, !dbg !2813
  br i1 %call, label %if.then, label %if.end, !dbg !2814

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup103, !dbg !2815

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, ptr %action_ret.addr, align 4, !dbg !2816
  %call1 = call i32 @bad_action_ret(i32 noundef %3) #10, !dbg !2818
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2818
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2819

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !2820
  %5 = load i32, ptr %action_ret.addr, align 4, !dbg !2822
  call void @report_bad_irq(ptr noundef %4, i32 noundef %5) #10, !dbg !2823
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup103, !dbg !2824

if.end4:                                          ; preds = %if.end
  %6 = load i32, ptr %action_ret.addr, align 4, !dbg !2825
  %and5 = and i32 %6, 2, !dbg !2826
  %tobool6 = icmp ne i32 %and5, 0, !dbg !2826
  br i1 %tobool6, label %if.then7, label %if.end25, !dbg !2827

if.then7:                                         ; preds = %if.end4
  %7 = load i32, ptr %action_ret.addr, align 4, !dbg !2828
  %cmp = icmp eq i32 %7, 2, !dbg !2829
  br i1 %cmp, label %if.then8, label %if.else21, !dbg !2830

if.then8:                                         ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 4, ptr %handled) #9, !dbg !2831
  call void @llvm.dbg.declare(metadata ptr %handled, metadata !2795, metadata !DIExpression()), !dbg !2832
  %8 = load ptr, ptr %desc.addr, align 8, !dbg !2833
  %threads_handled_last = getelementptr inbounds %struct.irq_desc, ptr %8, i32 0, i32 14, !dbg !2835
  %9 = load i32, ptr %threads_handled_last, align 32, !dbg !2835
  %and9 = and i32 %9, -2147483648, !dbg !2836
  %tobool10 = icmp ne i32 %and9, 0, !dbg !2836
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !2837

if.then11:                                        ; preds = %if.then8
  %10 = load ptr, ptr %desc.addr, align 8, !dbg !2838
  %threads_handled_last12 = getelementptr inbounds %struct.irq_desc, ptr %10, i32 0, i32 14, !dbg !2840
  %11 = load i32, ptr %threads_handled_last12, align 32, !dbg !2841
  %or = or i32 %11, -2147483648, !dbg !2841
  store i32 %or, ptr %threads_handled_last12, align 32, !dbg !2841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2842

if.end13:                                         ; preds = %if.then8
  %12 = load ptr, ptr %desc.addr, align 8, !dbg !2843
  %threads_handled = getelementptr inbounds %struct.irq_desc, ptr %12, i32 0, i32 13, !dbg !2844
  %call14 = call i32 @atomic_read(ptr noundef %threads_handled) #10, !dbg !2845
  store i32 %call14, ptr %handled, align 4, !dbg !2846
  %13 = load i32, ptr %handled, align 4, !dbg !2847
  %or15 = or i32 %13, -2147483648, !dbg !2847
  store i32 %or15, ptr %handled, align 4, !dbg !2847
  %14 = load i32, ptr %handled, align 4, !dbg !2848
  %15 = load ptr, ptr %desc.addr, align 8, !dbg !2850
  %threads_handled_last16 = getelementptr inbounds %struct.irq_desc, ptr %15, i32 0, i32 14, !dbg !2851
  %16 = load i32, ptr %threads_handled_last16, align 32, !dbg !2851
  %cmp17 = icmp ne i32 %14, %16, !dbg !2852
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !2853

if.then18:                                        ; preds = %if.end13
  store i32 1, ptr %action_ret.addr, align 4, !dbg !2854
  %17 = load i32, ptr %handled, align 4, !dbg !2856
  %18 = load ptr, ptr %desc.addr, align 8, !dbg !2857
  %threads_handled_last19 = getelementptr inbounds %struct.irq_desc, ptr %18, i32 0, i32 14, !dbg !2858
  store i32 %17, ptr %threads_handled_last19, align 32, !dbg !2859
  br label %if.end20, !dbg !2860

if.else:                                          ; preds = %if.end13
  store i32 0, ptr %action_ret.addr, align 4, !dbg !2861
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then18
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2863
  br label %cleanup, !dbg !2863

cleanup:                                          ; preds = %if.end20, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %handled) #9, !dbg !2863
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup103 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end24, !dbg !2864

if.else21:                                        ; preds = %if.then7
  %19 = load ptr, ptr %desc.addr, align 8, !dbg !2865
  %threads_handled_last22 = getelementptr inbounds %struct.irq_desc, ptr %19, i32 0, i32 14, !dbg !2867
  %20 = load i32, ptr %threads_handled_last22, align 32, !dbg !2868
  %and23 = and i32 %20, 2147483647, !dbg !2868
  store i32 %and23, ptr %threads_handled_last22, align 32, !dbg !2868
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %cleanup.cont
  br label %if.end25, !dbg !2869

if.end25:                                         ; preds = %if.end24, %if.end4
  %21 = load i32, ptr %action_ret.addr, align 4, !dbg !2870
  %cmp26 = icmp eq i32 %21, 0, !dbg !2870
  %lnot = xor i1 %cmp26, true, !dbg !2870
  %lnot27 = xor i1 %lnot, true, !dbg !2870
  %lnot.ext = zext i1 %lnot27 to i32, !dbg !2870
  %conv = sext i32 %lnot.ext to i64, !dbg !2870
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2870
  %tobool28 = icmp ne i64 %expval, 0, !dbg !2870
  br i1 %tobool28, label %if.then29, label %if.end37, !dbg !2872

if.then29:                                        ; preds = %if.end25
  %22 = load ptr, ptr %desc.addr, align 8, !dbg !2873
  %last_unhandled = getelementptr inbounds %struct.irq_desc, ptr %22, i32 0, i32 11, !dbg !2873
  %23 = load i64, ptr %last_unhandled, align 16, !dbg !2873
  %add = add i64 %23, 100, !dbg !2873
  %24 = load volatile i64, ptr @jiffies, align 64, !dbg !2873
  %sub = sub i64 %add, %24, !dbg !2873
  %cmp30 = icmp slt i64 %sub, 0, !dbg !2873
  br i1 %cmp30, label %if.then32, label %if.else33, !dbg !2876

if.then32:                                        ; preds = %if.then29
  %25 = load ptr, ptr %desc.addr, align 8, !dbg !2877
  %irqs_unhandled = getelementptr inbounds %struct.irq_desc, ptr %25, i32 0, i32 12, !dbg !2878
  store i32 1, ptr %irqs_unhandled, align 8, !dbg !2879
  br label %if.end35, !dbg !2877

if.else33:                                        ; preds = %if.then29
  %26 = load ptr, ptr %desc.addr, align 8, !dbg !2880
  %irqs_unhandled34 = getelementptr inbounds %struct.irq_desc, ptr %26, i32 0, i32 12, !dbg !2881
  %27 = load i32, ptr %irqs_unhandled34, align 8, !dbg !2882
  %inc = add i32 %27, 1, !dbg !2882
  store i32 %inc, ptr %irqs_unhandled34, align 8, !dbg !2882
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then32
  %28 = load volatile i64, ptr @jiffies, align 64, !dbg !2883
  %29 = load ptr, ptr %desc.addr, align 8, !dbg !2884
  %last_unhandled36 = getelementptr inbounds %struct.irq_desc, ptr %29, i32 0, i32 11, !dbg !2885
  store i64 %28, ptr %last_unhandled36, align 16, !dbg !2886
  br label %if.end37, !dbg !2887

if.end37:                                         ; preds = %if.end35, %if.end25
  %30 = load ptr, ptr %desc.addr, align 8, !dbg !2888
  %call38 = call i32 @irq_desc_get_irq(ptr noundef %30) #10, !dbg !2889
  store i32 %call38, ptr %irq, align 4, !dbg !2890
  %31 = load i32, ptr %irq, align 4, !dbg !2891
  %32 = load ptr, ptr %desc.addr, align 8, !dbg !2891
  %33 = load i32, ptr %action_ret.addr, align 4, !dbg !2891
  %call39 = call i32 @try_misrouted_irq(i32 noundef %31, ptr noundef %32, i32 noundef %33) #10, !dbg !2891
  %tobool40 = icmp ne i32 %call39, 0, !dbg !2891
  %lnot41 = xor i1 %tobool40, true, !dbg !2891
  %lnot43 = xor i1 %lnot41, true, !dbg !2891
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !2891
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !2891
  %expval46 = call i64 @llvm.expect.i64(i64 %conv45, i64 0), !dbg !2891
  %tobool47 = icmp ne i64 %expval46, 0, !dbg !2891
  br i1 %tobool47, label %if.then48, label %if.end56, !dbg !2892

if.then48:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #9, !dbg !2893
  call void @llvm.dbg.declare(metadata ptr %ok, metadata !2800, metadata !DIExpression()), !dbg !2894
  %34 = load i32, ptr %irq, align 4, !dbg !2895
  %call49 = call i32 @misrouted_irq(i32 noundef %34) #10, !dbg !2896
  store i32 %call49, ptr %ok, align 4, !dbg !2894
  %35 = load i32, ptr %action_ret.addr, align 4, !dbg !2897
  %cmp50 = icmp eq i32 %35, 0, !dbg !2899
  br i1 %cmp50, label %if.then52, label %if.end55, !dbg !2900

if.then52:                                        ; preds = %if.then48
  %36 = load i32, ptr %ok, align 4, !dbg !2901
  %37 = load ptr, ptr %desc.addr, align 8, !dbg !2902
  %irqs_unhandled53 = getelementptr inbounds %struct.irq_desc, ptr %37, i32 0, i32 12, !dbg !2903
  %38 = load i32, ptr %irqs_unhandled53, align 8, !dbg !2904
  %sub54 = sub i32 %38, %36, !dbg !2904
  store i32 %sub54, ptr %irqs_unhandled53, align 8, !dbg !2904
  br label %if.end55, !dbg !2902

if.end55:                                         ; preds = %if.then52, %if.then48
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #9, !dbg !2905
  br label %if.end56, !dbg !2906

if.end56:                                         ; preds = %if.end55, %if.end37
  %39 = load ptr, ptr %desc.addr, align 8, !dbg !2907
  %irqs_unhandled57 = getelementptr inbounds %struct.irq_desc, ptr %39, i32 0, i32 12, !dbg !2907
  %40 = load i32, ptr %irqs_unhandled57, align 8, !dbg !2907
  %tobool58 = icmp ne i32 %40, 0, !dbg !2907
  %lnot59 = xor i1 %tobool58, true, !dbg !2907
  %lnot61 = xor i1 %lnot59, true, !dbg !2907
  %lnot63 = xor i1 %lnot61, true, !dbg !2907
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !2907
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !2907
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 1), !dbg !2907
  %tobool67 = icmp ne i64 %expval66, 0, !dbg !2907
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !2909

if.then68:                                        ; preds = %if.end56
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup103, !dbg !2910

if.end69:                                         ; preds = %if.end56
  %41 = load ptr, ptr %desc.addr, align 8, !dbg !2911
  %irq_count = getelementptr inbounds %struct.irq_desc, ptr %41, i32 0, i32 10, !dbg !2912
  %42 = load i32, ptr %irq_count, align 4, !dbg !2913
  %inc70 = add i32 %42, 1, !dbg !2913
  store i32 %inc70, ptr %irq_count, align 4, !dbg !2913
  %43 = load ptr, ptr %desc.addr, align 8, !dbg !2914
  %irq_count71 = getelementptr inbounds %struct.irq_desc, ptr %43, i32 0, i32 10, !dbg !2914
  %44 = load i32, ptr %irq_count71, align 4, !dbg !2914
  %cmp72 = icmp ult i32 %44, 100000, !dbg !2914
  %lnot74 = xor i1 %cmp72, true, !dbg !2914
  %lnot76 = xor i1 %lnot74, true, !dbg !2914
  %lnot.ext77 = zext i1 %lnot76 to i32, !dbg !2914
  %conv78 = sext i32 %lnot.ext77 to i64, !dbg !2914
  %expval79 = call i64 @llvm.expect.i64(i64 %conv78, i64 1), !dbg !2914
  %tobool80 = icmp ne i64 %expval79, 0, !dbg !2914
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !2916

if.then81:                                        ; preds = %if.end69
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup103, !dbg !2917

if.end82:                                         ; preds = %if.end69
  %45 = load ptr, ptr %desc.addr, align 8, !dbg !2918
  %irq_count83 = getelementptr inbounds %struct.irq_desc, ptr %45, i32 0, i32 10, !dbg !2919
  store i32 0, ptr %irq_count83, align 4, !dbg !2920
  %46 = load ptr, ptr %desc.addr, align 8, !dbg !2921
  %irqs_unhandled84 = getelementptr inbounds %struct.irq_desc, ptr %46, i32 0, i32 12, !dbg !2921
  %47 = load i32, ptr %irqs_unhandled84, align 8, !dbg !2921
  %cmp85 = icmp ugt i32 %47, 99900, !dbg !2921
  %lnot87 = xor i1 %cmp85, true, !dbg !2921
  %lnot89 = xor i1 %lnot87, true, !dbg !2921
  %lnot.ext90 = zext i1 %lnot89 to i32, !dbg !2921
  %conv91 = sext i32 %lnot.ext90 to i64, !dbg !2921
  %expval92 = call i64 @llvm.expect.i64(i64 %conv91, i64 0), !dbg !2921
  %tobool93 = icmp ne i64 %expval92, 0, !dbg !2921
  br i1 %tobool93, label %if.then94, label %if.end101, !dbg !2923

if.then94:                                        ; preds = %if.end82
  %48 = load ptr, ptr %desc.addr, align 8, !dbg !2924
  %49 = load i32, ptr %action_ret.addr, align 4, !dbg !2926
  call void @__report_bad_irq(ptr noundef %48, i32 noundef %49) #10, !dbg !2927
  br label %do.body, !dbg !2928

do.body:                                          ; preds = %if.then94
  br label %do.cond, !dbg !2930

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2930

do.end:                                           ; preds = %do.cond
  %50 = load i32, ptr %irq, align 4, !dbg !2928
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %50) #12, !dbg !2928
  store i32 %call95, ptr %tmp, align 4, !dbg !2930
  %51 = load i32, ptr %tmp, align 4, !dbg !2928
  %52 = load ptr, ptr %desc.addr, align 8, !dbg !2932
  %core_internal_state__do_not_mess_with_it96 = getelementptr inbounds %struct.irq_desc, ptr %52, i32 0, i32 6, !dbg !2933
  %53 = load i32, ptr %core_internal_state__do_not_mess_with_it96, align 4, !dbg !2934
  %or97 = or i32 %53, 2, !dbg !2934
  store i32 %or97, ptr %core_internal_state__do_not_mess_with_it96, align 4, !dbg !2934
  %54 = load ptr, ptr %desc.addr, align 8, !dbg !2935
  %depth = getelementptr inbounds %struct.irq_desc, ptr %54, i32 0, i32 7, !dbg !2936
  %55 = load i32, ptr %depth, align 64, !dbg !2937
  %inc98 = add i32 %55, 1, !dbg !2937
  store i32 %inc98, ptr %depth, align 64, !dbg !2937
  %56 = load ptr, ptr %desc.addr, align 8, !dbg !2938
  call void @irq_disable(ptr noundef %56) #10, !dbg !2939
  %57 = load volatile i64, ptr @jiffies, align 64, !dbg !2940
  %add99 = add i64 %57, 100, !dbg !2941
  %call100 = call i32 @mod_timer(ptr noundef @poll_spurious_irq_timer, i64 noundef %add99) #10, !dbg !2942
  br label %if.end101, !dbg !2943

if.end101:                                        ; preds = %do.end, %if.end82
  %58 = load ptr, ptr %desc.addr, align 8, !dbg !2944
  %irqs_unhandled102 = getelementptr inbounds %struct.irq_desc, ptr %58, i32 0, i32 12, !dbg !2945
  store i32 0, ptr %irqs_unhandled102, align 8, !dbg !2946
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2947
  br label %cleanup103, !dbg !2947

cleanup103:                                       ; preds = %if.end101, %if.then81, %if.then68, %cleanup, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #9, !dbg !2947
  %cleanup.dest104 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest104, label %unreachable [
    i32 0, label %cleanup.cont105
    i32 1, label %cleanup.cont105
  ]

cleanup.cont105:                                  ; preds = %cleanup103, %cleanup103
  ret void, !dbg !2947

unreachable:                                      ; preds = %cleanup103
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_settings_is_polled(ptr noundef %desc) #6 align 16 !dbg !2948 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2950, metadata !DIExpression()), !dbg !2951
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !2952
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5, !dbg !2953
  %1 = load i32, ptr %status_use_accessors, align 8, !dbg !2953
  %and = and i32 %1, 262144, !dbg !2954
  %tobool = icmp ne i32 %and, 0, !dbg !2952
  ret i1 %tobool, !dbg !2955
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bad_action_ret(i32 noundef %action_ret) #6 align 16 !dbg !2956 {
entry:
  %retval = alloca i32, align 4
  %action_ret.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %action_ret, ptr %action_ret.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %action_ret.addr, metadata !2960, metadata !DIExpression()), !dbg !2962
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #9, !dbg !2963
  call void @llvm.dbg.declare(metadata ptr %r, metadata !2961, metadata !DIExpression()), !dbg !2964
  %0 = load i32, ptr %action_ret.addr, align 4, !dbg !2965
  store i32 %0, ptr %r, align 4, !dbg !2964
  %1 = load i32, ptr %r, align 4, !dbg !2966
  %cmp = icmp ule i32 %1, 3, !dbg !2966
  %lnot = xor i1 %cmp, true, !dbg !2966
  %lnot1 = xor i1 %lnot, true, !dbg !2966
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2966
  %conv = sext i32 %lnot.ext to i64, !dbg !2966
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2966
  %tobool = icmp ne i64 %expval, 0, !dbg !2966
  br i1 %tobool, label %if.then, label %if.end, !dbg !2968

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2969
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2969

if.end:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !2970
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2970

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #9, !dbg !2971
  %2 = load i32, ptr %retval, align 4, !dbg !2971
  ret i32 %2, !dbg !2971
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @report_bad_irq(ptr noundef %desc, i32 noundef %action_ret) #0 align 16 !dbg !2609 {
entry:
  %desc.addr = alloca ptr, align 8
  %action_ret.addr = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !2613, metadata !DIExpression()), !dbg !2972
  store i32 %action_ret, ptr %action_ret.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %action_ret.addr, metadata !2614, metadata !DIExpression()), !dbg !2973
  %0 = load i32, ptr @report_bad_irq.count, align 4, !dbg !2974
  %cmp = icmp sgt i32 %0, 0, !dbg !2976
  br i1 %cmp, label %if.then, label %if.end, !dbg !2977

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @report_bad_irq.count, align 4, !dbg !2978
  %dec = add i32 %1, -1, !dbg !2978
  store i32 %dec, ptr @report_bad_irq.count, align 4, !dbg !2978
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !2980
  %3 = load i32, ptr %action_ret.addr, align 4, !dbg !2981
  call void @__report_bad_irq(ptr noundef %2, i32 noundef %3) #10, !dbg !2982
  br label %if.end, !dbg !2983

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2984
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !2985 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2992, metadata !DIExpression()), !dbg !2993
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2994
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #10, !dbg !2995
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2996
  %call = call i32 @raw_atomic_read(ptr noundef %1) #10, !dbg !2997
  ret i32 %call, !dbg !2998
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @irq_desc_get_irq(ptr noundef %desc) #6 align 16 !dbg !2999 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3003, metadata !DIExpression()), !dbg !3004
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !3005
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, !dbg !3006
  %irq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 1, !dbg !3007
  %1 = load i32, ptr %irq, align 4, !dbg !3007
  ret i32 %1, !dbg !3008
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @try_misrouted_irq(i32 noundef %irq, ptr noundef %desc, i32 noundef %action_ret) #6 align 16 !dbg !3009 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %action_ret.addr = alloca i32, align 4
  %action = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !3013, metadata !DIExpression()), !dbg !3017
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3014, metadata !DIExpression()), !dbg !3018
  store i32 %action_ret, ptr %action_ret.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %action_ret.addr, metadata !3015, metadata !DIExpression()), !dbg !3019
  call void @llvm.lifetime.start.p0(i64 8, ptr %action) #9, !dbg !3020
  call void @llvm.dbg.declare(metadata ptr %action, metadata !3016, metadata !DIExpression()), !dbg !3021
  %0 = load i32, ptr @irqfixup, align 4, !dbg !3022
  %tobool = icmp ne i32 %0, 0, !dbg !3022
  br i1 %tobool, label %if.end, label %if.then, !dbg !3024

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3025
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3025

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %action_ret.addr, align 4, !dbg !3026
  %cmp = icmp eq i32 %1, 0, !dbg !3028
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3029

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3030
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3030

if.end2:                                          ; preds = %if.end
  %2 = load i32, ptr @irqfixup, align 4, !dbg !3031
  %cmp3 = icmp slt i32 %2, 2, !dbg !3033
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !3034

if.then4:                                         ; preds = %if.end2
  store i32 0, ptr %retval, align 4, !dbg !3035
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3035

if.end5:                                          ; preds = %if.end2
  %3 = load i32, ptr %irq.addr, align 4, !dbg !3036
  %tobool6 = icmp ne i32 %3, 0, !dbg !3036
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3038

if.then7:                                         ; preds = %if.end5
  store i32 1, ptr %retval, align 4, !dbg !3039
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3039

if.end8:                                          ; preds = %if.end5
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !3040
  %action9 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 4, !dbg !3041
  %5 = load ptr, ptr %action9, align 16, !dbg !3041
  store ptr %5, ptr %action, align 8, !dbg !3042
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !3043, !srcloc !3044
  %6 = load ptr, ptr %action, align 8, !dbg !3045
  %tobool10 = icmp ne ptr %6, null, !dbg !3045
  br i1 %tobool10, label %land.rhs, label %land.end, !dbg !3046

land.rhs:                                         ; preds = %if.end8
  %7 = load ptr, ptr %action, align 8, !dbg !3047
  %flags = getelementptr inbounds %struct.irqaction, ptr %7, i32 0, i32 8, !dbg !3048
  %8 = load i32, ptr %flags, align 4, !dbg !3048
  %and = and i32 %8, 4096, !dbg !3049
  %tobool11 = icmp ne i32 %and, 0, !dbg !3046
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end8
  %9 = phi i1 [ false, %if.end8 ], [ %tobool11, %land.rhs ], !dbg !3050
  %land.ext = zext i1 %9 to i32, !dbg !3046
  store i32 %land.ext, ptr %retval, align 4, !dbg !3051
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3051

cleanup:                                          ; preds = %land.end, %if.then7, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %action) #9, !dbg !3052
  %10 = load i32, ptr %retval, align 4, !dbg !3052
  ret i32 %10, !dbg !3052
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @misrouted_irq(i32 noundef %irq) #0 align 16 !dbg !3053 {
entry:
  %irq.addr = alloca i32, align 4
  %desc = alloca ptr, align 8
  %i = alloca i32, align 4
  %ok = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !3057, metadata !DIExpression()), !dbg !3069
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #9, !dbg !3070
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !3058, metadata !DIExpression()), !dbg !3071
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !3072
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3059, metadata !DIExpression()), !dbg !3073
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #9, !dbg !3072
  call void @llvm.dbg.declare(metadata ptr %ok, metadata !3060, metadata !DIExpression()), !dbg !3074
  store i32 0, ptr %ok, align 4, !dbg !3074
  %call = call i32 @atomic_inc_return(ptr noundef @irq_poll_active) #10, !dbg !3075
  %cmp = icmp ne i32 %call, 1, !dbg !3077
  br i1 %cmp, label %if.then, label %if.end, !dbg !3078

if.then:                                          ; preds = %entry
  br label %out, !dbg !3079

if.end:                                           ; preds = %entry
  call void @__this_cpu_preempt_check(ptr noundef @.str) #10, !dbg !3080
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #9, !dbg !3081
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3061, metadata !DIExpression()), !dbg !3081
  br label %do.body, !dbg !3081

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !3082
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3064, metadata !DIExpression()), !dbg !3082
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3082
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3082
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !3081
  br label %do.cond, !dbg !3082

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3082

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #9, !dbg !3083
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3066, metadata !DIExpression()), !dbg !3083
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #11, !dbg !3083, !srcloc !3084
  store i32 %1, ptr %pfo_val__, align 4, !dbg !3083
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !3083
  %conv = zext i32 %2 to i64, !dbg !3083
  %conv2 = trunc i64 %conv to i32, !dbg !3083
  store i32 %conv2, ptr %tmp1, align 4, !dbg !3083
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #9, !dbg !3081
  %3 = load i32, ptr %tmp1, align 4, !dbg !3083
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !3081
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !3081
  store i32 %4, ptr %tmp3, align 4, !dbg !3081
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #9, !dbg !3080
  %5 = load i32, ptr %tmp3, align 4, !dbg !3081
  store i32 %5, ptr %tmp, align 4, !dbg !3080
  %6 = load i32, ptr %tmp, align 4, !dbg !3080
  store i32 %6, ptr @irq_poll_cpu, align 4, !dbg !3085
  store i32 0, ptr %i, align 4, !dbg !3086
  %7 = load i32, ptr %i, align 4, !dbg !3086
  %call4 = call ptr @irq_to_desc(i32 noundef %7) #10, !dbg !3086
  store ptr %call4, ptr %desc, align 8, !dbg !3086
  br label %for.cond, !dbg !3086

for.cond:                                         ; preds = %for.inc, %do.end
  %8 = load i32, ptr %i, align 4, !dbg !3088
  %9 = load i32, ptr @nr_irqs, align 4, !dbg !3088
  %cmp5 = icmp slt i32 %8, %9, !dbg !3088
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3086

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %desc, align 8, !dbg !3090
  %tobool = icmp ne ptr %10, null, !dbg !3090
  br i1 %tobool, label %if.else, label %if.then7, !dbg !3088

if.then7:                                         ; preds = %for.body
  br label %if.end19, !dbg !3088

if.else:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !3092
  %tobool8 = icmp ne i32 %11, 0, !dbg !3092
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !3095

if.then9:                                         ; preds = %if.else
  br label %for.inc, !dbg !3096

if.end10:                                         ; preds = %if.else
  %12 = load i32, ptr %i, align 4, !dbg !3097
  %13 = load i32, ptr %irq.addr, align 4, !dbg !3099
  %cmp11 = icmp eq i32 %12, %13, !dbg !3100
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !3101

if.then13:                                        ; preds = %if.end10
  br label %for.inc, !dbg !3102

if.end14:                                         ; preds = %if.end10
  %14 = load ptr, ptr %desc, align 8, !dbg !3103
  %call15 = call i32 @try_one_irq(ptr noundef %14, i1 noundef zeroext false) #10, !dbg !3105
  %tobool16 = icmp ne i32 %call15, 0, !dbg !3105
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !3106

if.then17:                                        ; preds = %if.end14
  store i32 1, ptr %ok, align 4, !dbg !3107
  br label %if.end18, !dbg !3108

if.end18:                                         ; preds = %if.then17, %if.end14
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then7
  br label %for.inc, !dbg !3090

for.inc:                                          ; preds = %if.end19, %if.then13, %if.then9
  %15 = load i32, ptr %i, align 4, !dbg !3088
  %inc = add i32 %15, 1, !dbg !3088
  store i32 %inc, ptr %i, align 4, !dbg !3088
  %16 = load i32, ptr %i, align 4, !dbg !3088
  %call20 = call ptr @irq_to_desc(i32 noundef %16) #10, !dbg !3088
  store ptr %call20, ptr %desc, align 8, !dbg !3088
  br label %for.cond, !dbg !3088, !llvm.loop !3109

for.end:                                          ; preds = %for.cond
  br label %out, !dbg !3110

out:                                              ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !3068), !dbg !3111
  call void @atomic_dec(ptr noundef @irq_poll_active) #10, !dbg !3112
  %17 = load i32, ptr %ok, align 4, !dbg !3113
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #9, !dbg !3114
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !3114
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #9, !dbg !3114
  ret i32 %17, !dbg !3115
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__report_bad_irq(ptr noundef %desc, i32 noundef %action_ret) #0 align 16 !dbg !3116 {
entry:
  %desc.addr = alloca ptr, align 8
  %action_ret.addr = alloca i32, align 4
  %irq = alloca i32, align 4
  %action = alloca ptr, align 8
  %flags = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp14 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %__dummy42 = alloca i64, align 8
  %__dummy243 = alloca i64, align 8
  %tmp46 = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3118, metadata !DIExpression()), !dbg !3131
  store i32 %action_ret, ptr %action_ret.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %action_ret.addr, metadata !3119, metadata !DIExpression()), !dbg !3132
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #9, !dbg !3133
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !3120, metadata !DIExpression()), !dbg !3134
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !3135
  %call = call i32 @irq_desc_get_irq(ptr noundef %0) #10, !dbg !3136
  store i32 %call, ptr %irq, align 4, !dbg !3134
  call void @llvm.lifetime.start.p0(i64 8, ptr %action) #9, !dbg !3137
  call void @llvm.dbg.declare(metadata ptr %action, metadata !3121, metadata !DIExpression()), !dbg !3138
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !3139
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3122, metadata !DIExpression()), !dbg !3140
  %1 = load i32, ptr %action_ret.addr, align 4, !dbg !3141
  %call1 = call i32 @bad_action_ret(i32 noundef %1) #10, !dbg !3143
  %tobool = icmp ne i32 %call1, 0, !dbg !3143
  br i1 %tobool, label %if.then, label %if.else, !dbg !3144

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3145

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !3148

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3148

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %irq, align 4, !dbg !3145
  %3 = load i32, ptr %action_ret.addr, align 4, !dbg !3145
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %2, i32 noundef %3) #12, !dbg !3145
  store i32 %call2, ptr %tmp, align 4, !dbg !3148
  %4 = load i32, ptr %tmp, align 4, !dbg !3145
  br label %if.end, !dbg !3150

if.else:                                          ; preds = %entry
  br label %do.body3, !dbg !3151

do.body3:                                         ; preds = %if.else
  br label %do.cond4, !dbg !3154

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !3154

do.end5:                                          ; preds = %do.cond4
  %5 = load i32, ptr %irq, align 4, !dbg !3151
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %5) #12, !dbg !3151
  store i32 %call7, ptr %tmp6, align 4, !dbg !3154
  %6 = load i32, ptr %tmp6, align 4, !dbg !3151
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.end
  call void @dump_stack() #12, !dbg !3156
  br label %do.body8, !dbg !3157

do.body8:                                         ; preds = %if.end
  br label %do.cond9, !dbg !3159

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !3159

do.end10:                                         ; preds = %do.cond9
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #12, !dbg !3157
  store i32 %call12, ptr %tmp11, align 4, !dbg !3159
  %7 = load i32, ptr %tmp11, align 4, !dbg !3157
  br label %do.body13, !dbg !3161

do.body13:                                        ; preds = %do.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !3162
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3123, metadata !DIExpression()), !dbg !3162
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !3162
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3126, metadata !DIExpression()), !dbg !3162
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3162
  %conv = zext i1 %cmp to i32, !dbg !3162
  store i32 1, ptr %tmp14, align 4, !dbg !3162
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !3163
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !3163
  %8 = load i32, ptr %tmp14, align 4, !dbg !3162
  %9 = load ptr, ptr %desc.addr, align 8, !dbg !3163
  %lock = getelementptr inbounds %struct.irq_desc, ptr %9, i32 0, i32 15, !dbg !3163
  %call15 = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #10, !dbg !3163
  store i64 %call15, ptr %flags, align 8, !dbg !3163
  br label %do.cond16, !dbg !3163

do.cond16:                                        ; preds = %do.body13
  br label %do.end17, !dbg !3163

do.end17:                                         ; preds = %do.cond16
  %10 = load ptr, ptr %desc.addr, align 8, !dbg !3164
  %action18 = getelementptr inbounds %struct.irq_desc, ptr %10, i32 0, i32 4, !dbg !3164
  %11 = load ptr, ptr %action18, align 16, !dbg !3164
  store ptr %11, ptr %action, align 8, !dbg !3164
  br label %for.cond, !dbg !3164

for.cond:                                         ; preds = %for.inc, %do.end17
  %12 = load ptr, ptr %action, align 8, !dbg !3166
  %tobool19 = icmp ne ptr %12, null, !dbg !3164
  br i1 %tobool19, label %for.body, label %for.end, !dbg !3164

for.body:                                         ; preds = %for.cond
  br label %do.body20, !dbg !3168

do.body20:                                        ; preds = %for.body
  br label %do.cond21, !dbg !3171

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !3171

do.end22:                                         ; preds = %do.cond21
  %13 = load ptr, ptr %action, align 8, !dbg !3168
  %handler = getelementptr inbounds %struct.irqaction, ptr %13, i32 0, i32 0, !dbg !3168
  %14 = load ptr, ptr %handler, align 64, !dbg !3168
  %15 = load ptr, ptr %action, align 8, !dbg !3168
  %handler24 = getelementptr inbounds %struct.irqaction, ptr %15, i32 0, i32 0, !dbg !3168
  %16 = load ptr, ptr %handler24, align 64, !dbg !3168
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, ptr noundef %14, ptr noundef %16) #12, !dbg !3168
  store i32 %call25, ptr %tmp23, align 4, !dbg !3171
  %17 = load i32, ptr %tmp23, align 4, !dbg !3168
  %18 = load ptr, ptr %action, align 8, !dbg !3173
  %thread_fn = getelementptr inbounds %struct.irqaction, ptr %18, i32 0, i32 4, !dbg !3175
  %19 = load ptr, ptr %thread_fn, align 32, !dbg !3175
  %tobool26 = icmp ne ptr %19, null, !dbg !3173
  br i1 %tobool26, label %if.then27, label %if.end35, !dbg !3176

if.then27:                                        ; preds = %do.end22
  br label %do.body28, !dbg !3177

do.body28:                                        ; preds = %if.then27
  br label %do.cond29, !dbg !3179

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !3179

do.end30:                                         ; preds = %do.cond29
  %20 = load ptr, ptr %action, align 8, !dbg !3177
  %thread_fn32 = getelementptr inbounds %struct.irqaction, ptr %20, i32 0, i32 4, !dbg !3177
  %21 = load ptr, ptr %thread_fn32, align 32, !dbg !3177
  %22 = load ptr, ptr %action, align 8, !dbg !3177
  %thread_fn33 = getelementptr inbounds %struct.irqaction, ptr %22, i32 0, i32 4, !dbg !3177
  %23 = load ptr, ptr %thread_fn33, align 32, !dbg !3177
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, ptr noundef %21, ptr noundef %23) #12, !dbg !3177
  store i32 %call34, ptr %tmp31, align 4, !dbg !3179
  %24 = load i32, ptr %tmp31, align 4, !dbg !3177
  br label %if.end35, !dbg !3181

if.end35:                                         ; preds = %do.end30, %do.end22
  br label %do.body36, !dbg !3182

do.body36:                                        ; preds = %if.end35
  br label %do.cond37, !dbg !3184

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !3184

do.end38:                                         ; preds = %do.cond37
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10) #12, !dbg !3182
  store i32 %call40, ptr %tmp39, align 4, !dbg !3184
  %25 = load i32, ptr %tmp39, align 4, !dbg !3182
  br label %for.inc, !dbg !3186

for.inc:                                          ; preds = %do.end38
  %26 = load ptr, ptr %action, align 8, !dbg !3166
  %next = getelementptr inbounds %struct.irqaction, ptr %26, i32 0, i32 3, !dbg !3166
  %27 = load ptr, ptr %next, align 8, !dbg !3166
  store ptr %27, ptr %action, align 8, !dbg !3166
  br label %for.cond, !dbg !3166, !llvm.loop !3187

for.end:                                          ; preds = %for.cond
  br label %do.body41, !dbg !3189

do.body41:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy42) #9, !dbg !3190
  call void @llvm.dbg.declare(metadata ptr %__dummy42, metadata !3127, metadata !DIExpression()), !dbg !3190
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy243) #9, !dbg !3190
  call void @llvm.dbg.declare(metadata ptr %__dummy243, metadata !3130, metadata !DIExpression()), !dbg !3190
  %cmp44 = icmp eq ptr %__dummy42, %__dummy243, !dbg !3190
  %conv45 = zext i1 %cmp44 to i32, !dbg !3190
  store i32 1, ptr %tmp46, align 4, !dbg !3190
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy243) #9, !dbg !3191
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy42) #9, !dbg !3191
  %28 = load i32, ptr %tmp46, align 4, !dbg !3190
  %29 = load ptr, ptr %desc.addr, align 8, !dbg !3191
  %lock47 = getelementptr inbounds %struct.irq_desc, ptr %29, i32 0, i32 15, !dbg !3191
  %30 = load i64, ptr %flags, align 8, !dbg !3191
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock47, i64 noundef %30) #10, !dbg !3191
  br label %do.cond48, !dbg !3191

do.cond48:                                        ; preds = %do.body41
  br label %do.end49, !dbg !3191

do.end49:                                         ; preds = %do.cond48
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !3192
  call void @llvm.lifetime.end.p0(i64 8, ptr %action) #9, !dbg !3192
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #9, !dbg !3192
  ret void, !dbg !3192
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3193 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3197 dso_local void @irq_disable(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3198 dso_local i32 @mod_timer(ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @noirqdebug_setup(ptr noundef %str) #0 align 16 !dbg !3201 {
entry:
  %str.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !3203, metadata !DIExpression()), !dbg !3204
  store i8 1, ptr @noirqdebug, align 1, !dbg !3205
  br label %do.body, !dbg !3206

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3208

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #12, !dbg !3206
  store i32 %call, ptr %tmp, align 4, !dbg !3208
  %0 = load i32, ptr %tmp, align 4, !dbg !3206
  ret i32 1, !dbg !3210
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @irqfixup_setup(ptr noundef %str) #8 section ".init.text" align 16 !dbg !3211 {
entry:
  %str.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !3213, metadata !DIExpression()), !dbg !3214
  store i32 1, ptr @irqfixup, align 4, !dbg !3215
  br label %do.body, !dbg !3216

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3218

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.11) #12, !dbg !3216
  store i32 %call, ptr %tmp, align 4, !dbg !3218
  %0 = load i32, ptr %tmp, align 4, !dbg !3216
  br label %do.body1, !dbg !3220

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !3222

do.end2:                                          ; preds = %do.body1
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12) #12, !dbg !3220
  store i32 %call4, ptr %tmp3, align 4, !dbg !3222
  %1 = load i32, ptr %tmp3, align 4, !dbg !3220
  ret i32 1, !dbg !3224
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @irqpoll_setup(ptr noundef %str) #8 section ".init.text" align 16 !dbg !3225 {
entry:
  %str.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !3227, metadata !DIExpression()), !dbg !3228
  store i32 2, ptr @irqfixup, align 4, !dbg !3229
  br label %do.body, !dbg !3230

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3232

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #12, !dbg !3230
  store i32 %call, ptr %tmp, align 4, !dbg !3232
  %0 = load i32, ptr %tmp, align 4, !dbg !3230
  br label %do.body1, !dbg !3234

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !3236

do.end2:                                          ; preds = %do.body1
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14) #12, !dbg !3234
  store i32 %call4, ptr %tmp3, align 4, !dbg !3236
  %1 = load i32, ptr %tmp3, align 4, !dbg !3234
  ret i32 1, !dbg !3238
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #3 align 16 !dbg !3239 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !3240, !srcloc !3241
  ret void, !dbg !3242
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !3243 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3251, metadata !DIExpression()), !dbg !3253
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3252, metadata !DIExpression()), !dbg !3254
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3255
  %1 = load i64, ptr %size.addr, align 8, !dbg !3256
  %conv = trunc i64 %1 to i32, !dbg !3256
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #10, !dbg !3257
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3258
  %3 = load i64, ptr %size.addr, align 8, !dbg !3258
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #10, !dbg !3258
  ret void, !dbg !3259
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !3260 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3263, metadata !DIExpression()), !dbg !3264
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3265
  %call = call i32 @arch_atomic_read(ptr noundef %0) #10, !dbg !3266
  ret i32 %call, !dbg !3267
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !3268 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3273, metadata !DIExpression()), !dbg !3275
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3274, metadata !DIExpression()), !dbg !3276
  ret i1 true, !dbg !3277
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !3278 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3283, metadata !DIExpression()), !dbg !3286
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3284, metadata !DIExpression()), !dbg !3287
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3285, metadata !DIExpression()), !dbg !3288
  ret void, !dbg !3289
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !3290 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3293, metadata !DIExpression()), !dbg !3294
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3295
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3295
  %1 = load volatile i32, ptr %counter, align 4, !dbg !3295
  ret i32 %1, !dbg !3296
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_inc_return(ptr noundef %v) #3 align 16 !dbg !3297 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3302, metadata !DIExpression()), !dbg !3303
  br label %do.body, !dbg !3304

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3305

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3307
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !3308
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3309
  %call = call i32 @raw_atomic_inc_return(ptr noundef %1) #10, !dbg !3310
  ret i32 %call, !dbg !3311
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3312 dso_local ptr @irq_to_desc(i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @try_one_irq(ptr noundef %desc, i1 noundef zeroext %force) #0 align 16 !dbg !3316 {
entry:
  %desc.addr = alloca ptr, align 8
  %force.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %action = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3320, metadata !DIExpression()), !dbg !3325
  %frombool = zext i1 %force to i8
  store i8 %frombool, ptr %force.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %force.addr, metadata !3321, metadata !DIExpression()), !dbg !3326
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !3327
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3322, metadata !DIExpression()), !dbg !3328
  store i32 0, ptr %ret, align 4, !dbg !3328
  call void @llvm.lifetime.start.p0(i64 8, ptr %action) #9, !dbg !3329
  call void @llvm.dbg.declare(metadata ptr %action, metadata !3323, metadata !DIExpression()), !dbg !3330
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !3331
  %lock = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 15, !dbg !3331
  call void @_raw_spin_lock(ptr noundef %lock) #10, !dbg !3331
  %1 = load ptr, ptr %desc.addr, align 8, !dbg !3332
  %call = call zeroext i1 @irq_settings_is_per_cpu(ptr noundef %1) #10, !dbg !3334
  br i1 %call, label %if.then, label %lor.lhs.false, !dbg !3335

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !3336
  %call1 = call zeroext i1 @irq_settings_is_nested_thread(ptr noundef %2) #10, !dbg !3337
  br i1 %call1, label %if.then, label %lor.lhs.false2, !dbg !3338

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !3339
  %call3 = call zeroext i1 @irq_settings_is_polled(ptr noundef %3) #10, !dbg !3340
  br i1 %call3, label %if.then, label %if.end, !dbg !3341

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  br label %out, !dbg !3342

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !3343
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 1, !dbg !3345
  %call4 = call zeroext i1 @irqd_irq_disabled(ptr noundef %irq_data) #10, !dbg !3346
  br i1 %call4, label %land.lhs.true, label %if.end6, !dbg !3347

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8, ptr %force.addr, align 1, !dbg !3348, !range !2695, !noundef !360
  %tobool = trunc i8 %5 to i1, !dbg !3348
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !3349

if.then5:                                         ; preds = %land.lhs.true
  br label %out, !dbg !3350

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !3351
  %action7 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 4, !dbg !3352
  %7 = load ptr, ptr %action7, align 16, !dbg !3352
  store ptr %7, ptr %action, align 8, !dbg !3353
  %8 = load ptr, ptr %action, align 8, !dbg !3354
  %tobool8 = icmp ne ptr %8, null, !dbg !3354
  br i1 %tobool8, label %lor.lhs.false9, label %if.then15, !dbg !3356

lor.lhs.false9:                                   ; preds = %if.end6
  %9 = load ptr, ptr %action, align 8, !dbg !3357
  %flags = getelementptr inbounds %struct.irqaction, ptr %9, i32 0, i32 8, !dbg !3358
  %10 = load i32, ptr %flags, align 4, !dbg !3358
  %and = and i32 %10, 128, !dbg !3359
  %tobool10 = icmp ne i32 %and, 0, !dbg !3359
  br i1 %tobool10, label %lor.lhs.false11, label %if.then15, !dbg !3360

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %11 = load ptr, ptr %action, align 8, !dbg !3361
  %flags12 = getelementptr inbounds %struct.irqaction, ptr %11, i32 0, i32 8, !dbg !3362
  %12 = load i32, ptr %flags12, align 4, !dbg !3362
  %and13 = and i32 %12, 512, !dbg !3363
  %tobool14 = icmp ne i32 %and13, 0, !dbg !3363
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !3364

if.then15:                                        ; preds = %lor.lhs.false11, %lor.lhs.false9, %if.end6
  br label %out, !dbg !3365

if.end16:                                         ; preds = %lor.lhs.false11
  %13 = load ptr, ptr %desc.addr, align 8, !dbg !3366
  %irq_data17 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 1, !dbg !3368
  %call18 = call zeroext i1 @irqd_irq_inprogress(ptr noundef %irq_data17) #10, !dbg !3369
  br i1 %call18, label %if.then19, label %if.end20, !dbg !3370

if.then19:                                        ; preds = %if.end16
  %14 = load ptr, ptr %desc.addr, align 8, !dbg !3371
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %14, i32 0, i32 6, !dbg !3373
  %15 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 4, !dbg !3374
  %or = or i32 %15, 512, !dbg !3374
  store i32 %or, ptr %core_internal_state__do_not_mess_with_it, align 4, !dbg !3374
  br label %out, !dbg !3375

if.end20:                                         ; preds = %if.end16
  %16 = load ptr, ptr %desc.addr, align 8, !dbg !3376
  %core_internal_state__do_not_mess_with_it21 = getelementptr inbounds %struct.irq_desc, ptr %16, i32 0, i32 6, !dbg !3377
  %17 = load i32, ptr %core_internal_state__do_not_mess_with_it21, align 4, !dbg !3378
  %or22 = or i32 %17, 8, !dbg !3378
  store i32 %or22, ptr %core_internal_state__do_not_mess_with_it21, align 4, !dbg !3378
  br label %do.body, !dbg !3379

do.body:                                          ; preds = %land.end, %if.end20
  %18 = load ptr, ptr %desc.addr, align 8, !dbg !3380
  %call23 = call i32 @handle_irq_event(ptr noundef %18) #10, !dbg !3383
  %cmp = icmp eq i32 %call23, 1, !dbg !3384
  br i1 %cmp, label %if.then24, label %if.end25, !dbg !3385

if.then24:                                        ; preds = %do.body
  store i32 1, ptr %ret, align 4, !dbg !3386
  br label %if.end25, !dbg !3387

if.end25:                                         ; preds = %if.then24, %do.body
  %19 = load ptr, ptr %desc.addr, align 8, !dbg !3388
  %action26 = getelementptr inbounds %struct.irq_desc, ptr %19, i32 0, i32 4, !dbg !3389
  %20 = load ptr, ptr %action26, align 16, !dbg !3389
  store ptr %20, ptr %action, align 8, !dbg !3390
  br label %do.cond, !dbg !3391

do.cond:                                          ; preds = %if.end25
  %21 = load ptr, ptr %desc.addr, align 8, !dbg !3392
  %core_internal_state__do_not_mess_with_it27 = getelementptr inbounds %struct.irq_desc, ptr %21, i32 0, i32 6, !dbg !3393
  %22 = load i32, ptr %core_internal_state__do_not_mess_with_it27, align 4, !dbg !3393
  %and28 = and i32 %22, 512, !dbg !3394
  %tobool29 = icmp ne i32 %and28, 0, !dbg !3394
  br i1 %tobool29, label %land.rhs, label %land.end, !dbg !3395

land.rhs:                                         ; preds = %do.cond
  %23 = load ptr, ptr %action, align 8, !dbg !3396
  %tobool30 = icmp ne ptr %23, null, !dbg !3395
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %24 = phi i1 [ false, %do.cond ], [ %tobool30, %land.rhs ], !dbg !3397
  br i1 %24, label %do.body, label %do.end, !dbg !3391, !llvm.loop !3398

do.end:                                           ; preds = %land.end
  %25 = load ptr, ptr %desc.addr, align 8, !dbg !3400
  %core_internal_state__do_not_mess_with_it31 = getelementptr inbounds %struct.irq_desc, ptr %25, i32 0, i32 6, !dbg !3401
  %26 = load i32, ptr %core_internal_state__do_not_mess_with_it31, align 4, !dbg !3402
  %and32 = and i32 %26, -9, !dbg !3402
  store i32 %and32, ptr %core_internal_state__do_not_mess_with_it31, align 4, !dbg !3402
  br label %out, !dbg !3400

out:                                              ; preds = %do.end, %if.then19, %if.then15, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !3324), !dbg !3403
  %27 = load ptr, ptr %desc.addr, align 8, !dbg !3404
  %lock33 = getelementptr inbounds %struct.irq_desc, ptr %27, i32 0, i32 15, !dbg !3404
  call void @_raw_spin_unlock(ptr noundef %lock33) #10, !dbg !3404
  %28 = load i32, ptr %ret, align 4, !dbg !3405
  %cmp34 = icmp eq i32 %28, 1, !dbg !3406
  %conv = zext i1 %cmp34 to i32, !dbg !3406
  call void @llvm.lifetime.end.p0(i64 8, ptr %action) #9, !dbg !3407
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !3407
  ret i32 %conv, !dbg !3408
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #3 align 16 !dbg !3409 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3413, metadata !DIExpression()), !dbg !3414
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3415
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #10, !dbg !3416
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3417
  call void @raw_atomic_dec(ptr noundef %1) #10, !dbg !3418
  ret void, !dbg !3419
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !3420 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3422, metadata !DIExpression()), !dbg !3424
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3423, metadata !DIExpression()), !dbg !3425
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3426
  %1 = load i64, ptr %size.addr, align 8, !dbg !3427
  %conv = trunc i64 %1 to i32, !dbg !3427
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !3428
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3429
  %3 = load i64, ptr %size.addr, align 8, !dbg !3429
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #10, !dbg !3429
  ret void, !dbg !3430
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_inc_return(ptr noundef %v) #3 align 16 !dbg !3431 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3433, metadata !DIExpression()), !dbg !3434
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3435
  %call = call i32 @raw_atomic_add_return(i32 noundef 1, ptr noundef %0) #10, !dbg !3436
  ret i32 %call, !dbg !3437
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !3438 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3440, metadata !DIExpression()), !dbg !3442
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3441, metadata !DIExpression()), !dbg !3443
  ret i1 true, !dbg !3444
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_add_return(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !3445 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3449, metadata !DIExpression()), !dbg !3451
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3450, metadata !DIExpression()), !dbg !3452
  %0 = load i32, ptr %i.addr, align 4, !dbg !3453
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3454
  %call = call i32 @arch_atomic_add_return(i32 noundef %0, ptr noundef %1) #10, !dbg !3455
  ret i32 %call, !dbg !3456
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !3457 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3459, metadata !DIExpression()), !dbg !3463
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3460, metadata !DIExpression()), !dbg !3464
  %0 = load i32, ptr %i.addr, align 4, !dbg !3465
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #9, !dbg !3466
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3461, metadata !DIExpression()), !dbg !3466
  %1 = load i32, ptr %i.addr, align 4, !dbg !3466
  store i32 %1, ptr %__ret, align 4, !dbg !3466
  %2 = load i32, ptr %__ret, align 4, !dbg !3466
  %3 = load ptr, ptr %v.addr, align 8, !dbg !3466
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !3466
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #9, !dbg !3466, !srcloc !3467
  store i32 %4, ptr %__ret, align 4, !dbg !3466
  %5 = load i32, ptr %__ret, align 4, !dbg !3466
  store i32 %5, ptr %tmp, align 4, !dbg !3466
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #9, !dbg !3468
  %6 = load i32, ptr %tmp, align 4, !dbg !3466
  %add = add i32 %0, %6, !dbg !3469
  ret i32 %add, !dbg !3470
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_settings_is_per_cpu(ptr noundef %desc) #6 align 16 !dbg !3471 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3473, metadata !DIExpression()), !dbg !3474
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !3475
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5, !dbg !3476
  %1 = load i32, ptr %status_use_accessors, align 8, !dbg !3476
  %and = and i32 %1, 512, !dbg !3477
  %tobool = icmp ne i32 %and, 0, !dbg !3475
  ret i1 %tobool, !dbg !3478
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @irq_settings_is_nested_thread(ptr noundef %desc) #6 align 16 !dbg !3479 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !3481, metadata !DIExpression()), !dbg !3482
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !3483
  %status_use_accessors = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5, !dbg !3484
  %1 = load i32, ptr %status_use_accessors, align 8, !dbg !3484
  %and = and i32 %1, 32768, !dbg !3485
  %tobool = icmp ne i32 %and, 0, !dbg !3483
  ret i1 %tobool, !dbg !3486
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3487 dso_local i32 @handle_irq_event(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #3 align 16 !dbg !3490 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3492, metadata !DIExpression()), !dbg !3493
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3494
  call void @arch_atomic_dec(ptr noundef %0) #10, !dbg !3495
  ret void, !dbg !3496
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #3 align 16 !dbg !3497 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3499, metadata !DIExpression()), !dbg !3500
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3501
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3502
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #9, !dbg !3503, !srcloc !3504
  ret void, !dbg !3505
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3506 dso_local void @dump_stack() #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3507 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3510 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @poll_spurious_irqs(ptr noundef %unused) #0 align 16 !dbg !3513 {
entry:
  %unused.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !3515, metadata !DIExpression()), !dbg !3531
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #9, !dbg !3532
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !3516, metadata !DIExpression()), !dbg !3533
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !3534
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3517, metadata !DIExpression()), !dbg !3535
  %call = call i32 @atomic_inc_return(ptr noundef @irq_poll_active) #10, !dbg !3536
  %cmp = icmp ne i32 %call, 1, !dbg !3538
  br i1 %cmp, label %if.then, label %if.end, !dbg !3539

if.then:                                          ; preds = %entry
  br label %out, !dbg !3540

if.end:                                           ; preds = %entry
  call void @__this_cpu_preempt_check(ptr noundef @.str) #10, !dbg !3541
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #9, !dbg !3542
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3518, metadata !DIExpression()), !dbg !3542
  br label %do.body, !dbg !3542

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !3543
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3521, metadata !DIExpression()), !dbg !3543
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3543
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3543
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !3542
  br label %do.cond, !dbg !3543

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3543

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #9, !dbg !3544
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3523, metadata !DIExpression()), !dbg !3544
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #11, !dbg !3544, !srcloc !3545
  store i32 %1, ptr %pfo_val__, align 4, !dbg !3544
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !3544
  %conv = zext i32 %2 to i64, !dbg !3544
  %conv2 = trunc i64 %conv to i32, !dbg !3544
  store i32 %conv2, ptr %tmp1, align 4, !dbg !3544
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #9, !dbg !3542
  %3 = load i32, ptr %tmp1, align 4, !dbg !3544
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !3542
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !3542
  store i32 %4, ptr %tmp3, align 4, !dbg !3542
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #9, !dbg !3541
  %5 = load i32, ptr %tmp3, align 4, !dbg !3542
  store i32 %5, ptr %tmp, align 4, !dbg !3541
  %6 = load i32, ptr %tmp, align 4, !dbg !3541
  store i32 %6, ptr @irq_poll_cpu, align 4, !dbg !3546
  store i32 0, ptr %i, align 4, !dbg !3547
  %7 = load i32, ptr %i, align 4, !dbg !3547
  %call4 = call ptr @irq_to_desc(i32 noundef %7) #10, !dbg !3547
  store ptr %call4, ptr %desc, align 8, !dbg !3547
  br label %for.cond, !dbg !3547

for.cond:                                         ; preds = %for.inc, %do.end
  %8 = load i32, ptr %i, align 4, !dbg !3548
  %9 = load i32, ptr @nr_irqs, align 4, !dbg !3548
  %cmp5 = icmp slt i32 %8, %9, !dbg !3548
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3547

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %desc, align 8, !dbg !3549
  %tobool = icmp ne ptr %10, null, !dbg !3549
  br i1 %tobool, label %if.else, label %if.then7, !dbg !3548

if.then7:                                         ; preds = %for.body
  br label %if.end21, !dbg !3548

if.else:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #9, !dbg !3550
  call void @llvm.dbg.declare(metadata ptr %state, metadata !3525, metadata !DIExpression()), !dbg !3551
  %11 = load i32, ptr %i, align 4, !dbg !3552
  %tobool8 = icmp ne i32 %11, 0, !dbg !3552
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !3554

if.then9:                                         ; preds = %if.else
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3555

if.end10:                                         ; preds = %if.else
  %12 = load ptr, ptr %desc, align 8, !dbg !3556
  %core_internal_state__do_not_mess_with_it = getelementptr inbounds %struct.irq_desc, ptr %12, i32 0, i32 6, !dbg !3557
  %13 = load i32, ptr %core_internal_state__do_not_mess_with_it, align 4, !dbg !3557
  store i32 %13, ptr %state, align 4, !dbg !3558
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !3559, !srcloc !3560
  %14 = load i32, ptr %state, align 4, !dbg !3561
  %and = and i32 %14, 2, !dbg !3563
  %tobool11 = icmp ne i32 %and, 0, !dbg !3563
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !3564

if.then12:                                        ; preds = %if.end10
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3565

if.end13:                                         ; preds = %if.end10
  br label %do.body14, !dbg !3566

do.body14:                                        ; preds = %if.end13
  call void @arch_local_irq_disable() #10, !dbg !3567
  br label %do.cond15, !dbg !3567

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !3567

do.end16:                                         ; preds = %do.cond15
  %15 = load ptr, ptr %desc, align 8, !dbg !3569
  %call17 = call i32 @try_one_irq(ptr noundef %15, i1 noundef zeroext true) #10, !dbg !3570
  br label %do.body18, !dbg !3571

do.body18:                                        ; preds = %do.end16
  call void @arch_local_irq_enable() #10, !dbg !3572
  br label %do.cond19, !dbg !3572

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !3572

do.end20:                                         ; preds = %do.cond19
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3574
  br label %cleanup, !dbg !3574

cleanup:                                          ; preds = %do.end20, %if.then12, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #9, !dbg !3574
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end21

if.end21:                                         ; preds = %cleanup.cont, %if.then7
  br label %for.inc, !dbg !3549

for.inc:                                          ; preds = %if.end21, %cleanup
  %16 = load i32, ptr %i, align 4, !dbg !3548
  %inc = add i32 %16, 1, !dbg !3548
  store i32 %inc, ptr %i, align 4, !dbg !3548
  %17 = load i32, ptr %i, align 4, !dbg !3548
  %call22 = call ptr @irq_to_desc(i32 noundef %17) #10, !dbg !3548
  store ptr %call22, ptr %desc, align 8, !dbg !3548
  br label %for.cond, !dbg !3548, !llvm.loop !3575

for.end:                                          ; preds = %for.cond
  br label %out, !dbg !3576

out:                                              ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !3530), !dbg !3577
  call void @atomic_dec(ptr noundef @irq_poll_active) #10, !dbg !3578
  %18 = load volatile i64, ptr @jiffies, align 64, !dbg !3579
  %add = add i64 %18, 100, !dbg !3580
  %call23 = call i32 @mod_timer(ptr noundef @poll_spurious_irq_timer, i64 noundef %add) #10, !dbg !3581
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !3582
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #9, !dbg !3582
  ret void, !dbg !3582

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #3 align 16 !dbg !3583 {
entry:
  call void @native_irq_disable() #10, !dbg !3585
  ret void, !dbg !3586
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #3 align 16 !dbg !3587 {
entry:
  call void @native_irq_enable() #10, !dbg !3588
  ret void, !dbg !3589
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #3 align 16 !dbg !3590 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !3591, !srcloc !3592
  ret void, !dbg !3593
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #3 align 16 !dbg !3594 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !3595, !srcloc !3596
  ret void, !dbg !3597
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { nounwind memory(read) }
attributes #12 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685}
!llvm.ident = !{!2686}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "irq_poll_cpu", scope: !2, file: !3, line: 22, type: !117, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/irq/.spurious.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/irq/spurious\22 -D KBUILD_BASENAME=\22spurious\22 -D KBUILD_MODNAME=\22spurious\22 -D __KBUILD_MODNAME=kmod_spurious -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/irq/spurious.ll kernel/irq/spurious.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !115, globals: !1168, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/irq/spurious.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d26edfa13bea7387e08c90816d2844e8")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !50, !55, !69, !96}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 10, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "false", value: 0)
!54 = !DIEnumerator(name: "true", value: 1)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 60, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "kernel/irq/internals.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1a83a6391bcc5e0feb0932e94d9f4c16")
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!58 = !DIEnumerator(name: "IRQS_AUTODETECT", value: 1)
!59 = !DIEnumerator(name: "IRQS_SPURIOUS_DISABLED", value: 2)
!60 = !DIEnumerator(name: "IRQS_POLL_INPROGRESS", value: 8)
!61 = !DIEnumerator(name: "IRQS_ONESHOT", value: 32)
!62 = !DIEnumerator(name: "IRQS_REPLAY", value: 64)
!63 = !DIEnumerator(name: "IRQS_WAITING", value: 128)
!64 = !DIEnumerator(name: "IRQS_PENDING", value: 512)
!65 = !DIEnumerator(name: "IRQS_SUSPENDED", value: 2048)
!66 = !DIEnumerator(name: "IRQS_TIMINGS", value: 4096)
!67 = !DIEnumerator(name: "IRQS_NMI", value: 8192)
!68 = !DIEnumerator(name: "IRQS_SYSFS", value: 16384)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 227, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce91671074049198389009db13b88160")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!72 = !DIEnumerator(name: "IRQD_TRIGGER_MASK", value: 15)
!73 = !DIEnumerator(name: "IRQD_SETAFFINITY_PENDING", value: 256)
!74 = !DIEnumerator(name: "IRQD_ACTIVATED", value: 512)
!75 = !DIEnumerator(name: "IRQD_NO_BALANCING", value: 1024)
!76 = !DIEnumerator(name: "IRQD_PER_CPU", value: 2048)
!77 = !DIEnumerator(name: "IRQD_AFFINITY_SET", value: 4096)
!78 = !DIEnumerator(name: "IRQD_LEVEL", value: 8192)
!79 = !DIEnumerator(name: "IRQD_WAKEUP_STATE", value: 16384)
!80 = !DIEnumerator(name: "IRQD_MOVE_PCNTXT", value: 32768)
!81 = !DIEnumerator(name: "IRQD_IRQ_DISABLED", value: 65536)
!82 = !DIEnumerator(name: "IRQD_IRQ_MASKED", value: 131072)
!83 = !DIEnumerator(name: "IRQD_IRQ_INPROGRESS", value: 262144)
!84 = !DIEnumerator(name: "IRQD_WAKEUP_ARMED", value: 524288)
!85 = !DIEnumerator(name: "IRQD_FORWARDED_TO_VCPU", value: 1048576)
!86 = !DIEnumerator(name: "IRQD_AFFINITY_MANAGED", value: 2097152)
!87 = !DIEnumerator(name: "IRQD_IRQ_STARTED", value: 4194304)
!88 = !DIEnumerator(name: "IRQD_MANAGED_SHUTDOWN", value: 8388608)
!89 = !DIEnumerator(name: "IRQD_SINGLE_TARGET", value: 16777216)
!90 = !DIEnumerator(name: "IRQD_DEFAULT_TRIGGER_SET", value: 33554432)
!91 = !DIEnumerator(name: "IRQD_CAN_RESERVE", value: 67108864)
!92 = !DIEnumerator(name: "IRQD_HANDLE_ENFORCE_IRQCTX", value: 134217728)
!93 = !DIEnumerator(name: "IRQD_AFFINITY_ON_ACTIVATE", value: 268435456)
!94 = !DIEnumerator(name: "IRQD_IRQ_ENABLED_ON_SUSPEND", value: 536870912)
!95 = !DIEnumerator(name: "IRQD_RESEND_WHEN_IN_PROGRESS", value: 1073741824)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !97, line: 6, baseType: !7, size: 32, elements: !98)
!97 = !DIFile(filename: "kernel/irq/settings.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "472defa47e63f7ff01ae8d2992e315d8")
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!99 = !DIEnumerator(name: "_IRQ_DEFAULT_INIT_FLAGS", value: 0)
!100 = !DIEnumerator(name: "_IRQ_PER_CPU", value: 512)
!101 = !DIEnumerator(name: "_IRQ_LEVEL", value: 256)
!102 = !DIEnumerator(name: "_IRQ_NOPROBE", value: 1024)
!103 = !DIEnumerator(name: "_IRQ_NOREQUEST", value: 2048)
!104 = !DIEnumerator(name: "_IRQ_NOTHREAD", value: 65536)
!105 = !DIEnumerator(name: "_IRQ_NOAUTOEN", value: 4096)
!106 = !DIEnumerator(name: "_IRQ_MOVE_PCNTXT", value: 16384)
!107 = !DIEnumerator(name: "_IRQ_NO_BALANCING", value: 8192)
!108 = !DIEnumerator(name: "_IRQ_NESTED_THREAD", value: 32768)
!109 = !DIEnumerator(name: "_IRQ_PER_CPU_DEVID", value: 131072)
!110 = !DIEnumerator(name: "_IRQ_IS_POLLED", value: 262144)
!111 = !DIEnumerator(name: "_IRQ_DISABLE_UNLAZY", value: 524288)
!112 = !DIEnumerator(name: "_IRQ_HIDDEN", value: 1048576)
!113 = !DIEnumerator(name: "_IRQ_NO_DEBUG", value: 2097152)
!114 = !DIEnumerator(name: "_IRQF_MODIFY_MASK", value: 2096911)
!115 = !{!116, !118, !117, !119, !120, !121, !1165}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!119 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !44, line: 402, size: 9216, align: 512, elements: !123)
!123 = !{!124, !125, !132, !137, !814, !840, !841, !842, !843, !847, !850, !851, !852, !905, !906, !907, !908, !909, !910, !911, !912, !920, !924, !944, !961, !962, !963, !964, !973, !997, !998, !1001, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1015, !1016, !1123, !1131, !1132, !1133, !1135, !1139, !1140, !1144, !1145, !1146, !1147, !1149, !1150, !1151, !1158, !1159, !1160, !1164}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !122, file: !44, line: 403, baseType: !43, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !122, file: !44, line: 406, baseType: !126, size: 128, offset: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !127, line: 190, size: 128, elements: !128)
!127 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!128 = !{!129, !131}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !126, file: !127, line: 191, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !126, file: !127, line: 191, baseType: !130, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !122, file: !44, line: 409, baseType: !133, size: 448, offset: 192)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 448, elements: !135)
!134 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!135 = !{!136}
!136 = !DISubrange(count: 56)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !122, file: !44, line: 417, baseType: !138, size: 768, offset: 640)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !44, line: 45, size: 768, elements: !139)
!139 = !{!140, !797, !798, !799, !802}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !138, file: !44, line: 46, baseType: !141, size: 512)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !142, line: 64, size: 512, elements: !143)
!142 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!143 = !{!144, !147, !148, !150, !239, !668, !782, !792, !793, !794, !795, !796}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !141, file: !142, line: 65, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !141, file: !142, line: 66, baseType: !126, size: 128, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !141, file: !142, line: 67, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !141, file: !142, line: 68, baseType: !151, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !142, line: 168, size: 768, elements: !153)
!153 = !{!154, !155, !198, !199}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !152, file: !142, line: 169, baseType: !126, size: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !152, file: !142, line: 170, baseType: !156, size: 32, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !157, line: 29, baseType: !158)
!157 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !157, line: 17, size: 32, elements: !159)
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !157, line: 18, baseType: !161, size: 32)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !158, file: !157, line: 18, size: 32, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !161, file: !157, line: 19, baseType: !164, size: 32)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !165, line: 14, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!166 = !{!167}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !164, file: !165, line: 15, baseType: !168, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !169, line: 44, baseType: !170)
!169 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !169, line: 14, size: 32, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, scope: !170, file: !169, line: 15, baseType: !173, size: 32)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !170, file: !169, line: 15, size: 32, elements: !174)
!174 = !{!175, !180, !190}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !173, file: !169, line: 16, baseType: !176, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !127, line: 174, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 172, size: 32, elements: !178)
!178 = !{!179}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !177, file: !127, line: 173, baseType: !117, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !169, line: 24, baseType: !181, size: 16)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !169, line: 24, size: 16, elements: !182)
!182 = !{!183, !189}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !181, file: !169, line: 25, baseType: !184, size: 8)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !185, line: 17, baseType: !186)
!185 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !187, line: 21, baseType: !188)
!187 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!188 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !181, file: !169, line: 26, baseType: !184, size: 8, offset: 8)
!190 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !169, line: 28, baseType: !191, size: 32)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !169, line: 28, size: 32, elements: !192)
!192 = !{!193, !197}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !191, file: !169, line: 29, baseType: !194, size: 16)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !185, line: 19, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !187, line: 24, baseType: !196)
!196 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !191, file: !169, line: 30, baseType: !194, size: 16, offset: 16)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !152, file: !142, line: 171, baseType: !141, size: 512, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !152, file: !142, line: 172, baseType: !200, size: 64, offset: 704)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !142, line: 133, size: 192, elements: !203)
!203 = !{!204, !211, !216}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !202, file: !142, line: 134, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!117, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !142, line: 135, baseType: !212, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!145, !209}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !202, file: !142, line: 136, baseType: !217, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!117, !209, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !142, line: 125, size: 20736, elements: !223)
!223 = !{!224, !229, !233, !234, !238}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !222, file: !142, line: 126, baseType: !225, size: 192)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 192, elements: !227)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!227 = !{!228}
!228 = !DISubrange(count: 3)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !222, file: !142, line: 127, baseType: !230, size: 4096, offset: 192)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 4096, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !222, file: !142, line: 128, baseType: !117, size: 32, offset: 4288)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !222, file: !142, line: 129, baseType: !235, size: 16384, offset: 4320)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 16384, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 2048)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !222, file: !142, line: 130, baseType: !117, size: 32, offset: 20704)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !141, file: !142, line: 69, baseType: !240, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !142, line: 116, size: 384, elements: !243)
!243 = !{!244, !248, !275, !614, !645, !649}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !242, file: !142, line: 117, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !149}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !242, file: !142, line: 118, baseType: !249, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !252, line: 254, size: 128, elements: !253)
!252 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!253 = !{!254, !268}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !251, file: !252, line: 255, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !149, !262, !226}
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !127, line: 66, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !260, line: 73, baseType: !261)
!260 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !260, line: 15, baseType: !120)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !252, line: 30, size: 128, elements: !264)
!264 = !{!265, !266}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !263, file: !252, line: 31, baseType: !145, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !263, file: !252, line: 32, baseType: !267, size: 16, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !127, line: 24, baseType: !196)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !251, file: !252, line: 256, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!258, !149, !262, !145, !272}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 61, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !260, line: 72, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !260, line: 16, baseType: !119)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !242, file: !142, line: 119, baseType: !276, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !252, line: 84, size: 320, elements: !280)
!280 = !{!281, !282, !286, !610, !612}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !279, file: !252, line: 85, baseType: !145, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !279, file: !252, line: 86, baseType: !283, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!267, !149, !262, !117}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !279, file: !252, line: 88, baseType: !287, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!267, !149, !290, !117}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !252, line: 175, size: 512, elements: !292)
!292 = !{!293, !294, !295, !296, !303, !313, !314}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !291, file: !252, line: 176, baseType: !263, size: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !291, file: !252, line: 177, baseType: !272, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !291, file: !252, line: 178, baseType: !118, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !291, file: !252, line: 179, baseType: !297, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !302, line: 32, flags: DIFlagFwdDecl)
!302 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!303 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !291, file: !252, line: 180, baseType: !304, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!258, !307, !149, !290, !226, !310, !272}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !309, line: 537, flags: DIFlagFwdDecl)
!309 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !127, line: 52, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !260, line: 88, baseType: !312)
!312 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !291, file: !252, line: 182, baseType: !304, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !291, file: !252, line: 184, baseType: !315, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!117, !307, !149, !290, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !302, line: 625, size: 1344, elements: !320)
!320 = !{!321, !338, !559, !565, !572, !573, !578, !581, !593, !594, !597, !601, !602, !603, !604, !605, !608}
!321 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !302, line: 628, baseType: !322, size: 128)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !319, file: !302, line: 628, size: 128, elements: !323)
!323 = !{!324, !329}
!324 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !302, line: 629, baseType: !325, size: 128)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !302, line: 629, size: 128, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !325, file: !302, line: 631, baseType: !119, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !325, file: !302, line: 632, baseType: !119, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !322, file: !302, line: 635, baseType: !330, size: 128, align: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !127, line: 232, size: 128, align: 64, elements: !331)
!331 = !{!332, !334}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !127, line: 233, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !330, file: !127, line: 234, baseType: !335, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !333}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !319, file: !302, line: 639, baseType: !339, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !302, line: 733, size: 10240, elements: !341)
!341 = !{!342, !555}
!342 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !302, line: 734, baseType: !343, size: 10240)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !340, file: !302, line: 734, size: 10240, elements: !344)
!344 = !{!345, !349, !363, !367, !368, !369, !370, !371, !372, !380, !381, !382, !391, !392, !401, !402, !403, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !450, !464, !467, !522, !523, !524, !527, !530, !531, !534, !535, !536, !542, !543}
!345 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !302, line: 739, baseType: !346, size: 512, align: 512)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !343, file: !302, line: 739, size: 512, align: 512, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !346, file: !302, line: 747, baseType: !176, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !343, file: !302, line: 750, baseType: !350, size: 128, offset: 512)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !351, line: 218, size: 128, elements: !352)
!351 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!352 = !{!353, !361, !362}
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !351, line: 219, baseType: !354, size: 32)
!354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !351, line: 219, size: 32, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !354, file: !351, line: 220, baseType: !156, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !354, file: !351, line: 221, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !351, line: 197, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 197, elements: !360)
!360 = !{}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !350, file: !351, line: 223, baseType: !7, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !350, file: !351, line: 224, baseType: !118, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !343, file: !302, line: 752, baseType: !364, size: 64, offset: 640)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!119, !307, !119, !119, !119, !119}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !343, file: !302, line: 756, baseType: !119, size: 64, offset: 704)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !343, file: !302, line: 757, baseType: !119, size: 64, offset: 768)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !343, file: !302, line: 760, baseType: !119, size: 64, offset: 832)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !343, file: !302, line: 761, baseType: !119, size: 64, offset: 896)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !343, file: !302, line: 763, baseType: !119, size: 64, offset: 960)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !343, file: !302, line: 764, baseType: !373, size: 64, offset: 1024)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !309, line: 299, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !309, line: 299, size: 64, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !375, file: !309, line: 299, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !379, line: 18, baseType: !119)
!379 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!380 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !343, file: !302, line: 773, baseType: !176, size: 32, offset: 1088)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !343, file: !302, line: 785, baseType: !176, size: 32, offset: 1120)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !343, file: !302, line: 795, baseType: !383, size: 64, offset: 1152)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !302, line: 726, size: 128, elements: !385)
!385 = !{!386, !390}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !384, file: !302, line: 727, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !185, line: 23, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !187, line: 31, baseType: !389)
!389 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !384, file: !302, line: 728, baseType: !117, size: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !343, file: !302, line: 801, baseType: !119, size: 64, offset: 1216)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !343, file: !302, line: 804, baseType: !393, size: 64, offset: 1280)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !394, line: 13, baseType: !395)
!394 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !127, line: 181, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 179, size: 64, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !396, file: !127, line: 180, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !185, line: 22, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !187, line: 30, baseType: !312)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !343, file: !302, line: 806, baseType: !117, size: 32, offset: 1344)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !343, file: !302, line: 808, baseType: !156, size: 32, offset: 1376)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !343, file: !302, line: 823, baseType: !404, size: 320, offset: 1408)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !405, line: 48, size: 320, elements: !406)
!405 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!406 = !{!407, !408, !409, !414, !416}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !404, file: !405, line: 49, baseType: !393, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !404, file: !405, line: 55, baseType: !393, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !404, file: !405, line: 57, baseType: !410, size: 32, offset: 128)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !411, line: 15, size: 32, elements: !412)
!411 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !410, file: !411, line: 20, baseType: !176, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !404, file: !405, line: 59, baseType: !415, size: 32, offset: 160)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !165, line: 23, baseType: !164)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !404, file: !405, line: 60, baseType: !126, size: 128, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !343, file: !302, line: 825, baseType: !126, size: 128, offset: 1728)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !343, file: !302, line: 845, baseType: !117, size: 32, offset: 1856)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !343, file: !302, line: 849, baseType: !119, size: 64, offset: 1920)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !343, file: !302, line: 850, baseType: !119, size: 64, offset: 1984)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !343, file: !302, line: 852, baseType: !119, size: 64, offset: 2048)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !343, file: !302, line: 853, baseType: !119, size: 64, offset: 2112)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !343, file: !302, line: 854, baseType: !395, size: 64, offset: 2176)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !343, file: !302, line: 855, baseType: !119, size: 64, offset: 2240)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !343, file: !302, line: 856, baseType: !119, size: 64, offset: 2304)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !343, file: !302, line: 857, baseType: !119, size: 64, offset: 2368)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !343, file: !302, line: 858, baseType: !119, size: 64, offset: 2432)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !343, file: !302, line: 865, baseType: !429, size: 32, offset: 2496)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !430, line: 69, baseType: !431)
!430 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !430, line: 64, size: 32, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !431, file: !430, line: 65, baseType: !7, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !343, file: !302, line: 867, baseType: !156, size: 32, offset: 2528)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !343, file: !302, line: 869, baseType: !119, size: 64, offset: 2560)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !343, file: !302, line: 869, baseType: !119, size: 64, offset: 2624)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !343, file: !302, line: 869, baseType: !119, size: 64, offset: 2688)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !343, file: !302, line: 869, baseType: !119, size: 64, offset: 2752)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !343, file: !302, line: 870, baseType: !119, size: 64, offset: 2816)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !343, file: !302, line: 870, baseType: !119, size: 64, offset: 2880)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !343, file: !302, line: 870, baseType: !119, size: 64, offset: 2944)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !343, file: !302, line: 871, baseType: !119, size: 64, offset: 3008)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !343, file: !302, line: 871, baseType: !119, size: 64, offset: 3072)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !343, file: !302, line: 871, baseType: !119, size: 64, offset: 3136)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !343, file: !302, line: 871, baseType: !119, size: 64, offset: 3200)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !343, file: !302, line: 873, baseType: !447, size: 3328, offset: 3264)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 3328, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 52)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !343, file: !302, line: 875, baseType: !451, size: 1280, offset: 6592)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 1280, elements: !462)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !453, line: 22, size: 320, elements: !454)
!453 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!454 = !{!455, !456, !457, !458}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !452, file: !453, line: 23, baseType: !415, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !452, file: !453, line: 24, baseType: !399, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !452, file: !453, line: 26, baseType: !126, size: 128, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !452, file: !453, line: 28, baseType: !459, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !185, line: 20, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !187, line: 26, baseType: !117)
!462 = !{!463}
!463 = !DISubrange(count: 4)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !343, file: !302, line: 877, baseType: !465, size: 64, offset: 7872)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !302, line: 877, flags: DIFlagFwdDecl)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !343, file: !302, line: 880, baseType: !468, size: 1088, offset: 7936)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !469, line: 72, baseType: !470)
!469 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !469, line: 23, size: 1088, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !479, !480, !488, !489, !516, !517, !518}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !470, file: !469, line: 28, baseType: !387, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !470, file: !469, line: 38, baseType: !395, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !470, file: !469, line: 40, baseType: !119, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !470, file: !469, line: 43, baseType: !404, size: 320, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !470, file: !469, line: 44, baseType: !477, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !469, line: 44, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !469, line: 48, baseType: !119, size: 64, offset: 576)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !470, file: !469, line: 59, baseType: !481, size: 256, offset: 640)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !482, line: 66, size: 256, elements: !483)
!482 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!483 = !{!484, !485, !486, !487}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !481, file: !482, line: 67, baseType: !393, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !481, file: !482, line: 68, baseType: !415, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !481, file: !482, line: 70, baseType: !410, size: 32, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !481, file: !482, line: 72, baseType: !126, size: 128, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !470, file: !469, line: 60, baseType: !118, size: 64, offset: 896)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !470, file: !469, line: 61, baseType: !490, size: 64, offset: 960)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !493, line: 13, size: 1216, elements: !494)
!493 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!494 = !{!495, !496, !497, !498, !499, !500, !501, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !492, file: !493, line: 14, baseType: !118, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !492, file: !493, line: 15, baseType: !119, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !492, file: !493, line: 17, baseType: !119, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !492, file: !493, line: 17, baseType: !119, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !492, file: !493, line: 18, baseType: !119, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !492, file: !493, line: 18, baseType: !119, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !492, file: !493, line: 19, baseType: !502, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !492, file: !493, line: 21, baseType: !120, size: 64, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !492, file: !493, line: 23, baseType: !120, size: 64, offset: 512)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !492, file: !493, line: 24, baseType: !120, size: 64, offset: 576)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !492, file: !493, line: 25, baseType: !120, size: 64, offset: 640)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !492, file: !493, line: 26, baseType: !120, size: 64, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !492, file: !493, line: 27, baseType: !120, size: 64, offset: 768)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !492, file: !493, line: 28, baseType: !120, size: 64, offset: 832)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !492, file: !493, line: 29, baseType: !120, size: 64, offset: 896)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !492, file: !493, line: 30, baseType: !120, size: 64, offset: 960)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !492, file: !493, line: 31, baseType: !120, size: 64, offset: 1024)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !492, file: !493, line: 32, baseType: !120, size: 64, offset: 1088)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !492, file: !493, line: 33, baseType: !120, size: 64, offset: 1152)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !470, file: !469, line: 63, baseType: !176, size: 32, offset: 1024)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !470, file: !469, line: 69, baseType: !194, size: 16, offset: 1056)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !470, file: !469, line: 70, baseType: !519, size: 16, offset: 1072)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !185, line: 18, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !187, line: 23, baseType: !521)
!521 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !302, line: 882, baseType: !119, size: 64, offset: 9024)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !343, file: !302, line: 885, baseType: !156, size: 32, offset: 9088)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !343, file: !302, line: 886, baseType: !525, size: 64, offset: 9152)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !302, line: 732, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !343, file: !302, line: 901, baseType: !528, size: 64, offset: 9216)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !302, line: 901, flags: DIFlagFwdDecl)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !343, file: !302, line: 904, baseType: !307, size: 64, offset: 9280)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !343, file: !302, line: 906, baseType: !532, size: 64, offset: 9344)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !302, line: 906, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !343, file: !302, line: 930, baseType: !176, size: 32, offset: 9408)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !343, file: !302, line: 933, baseType: !176, size: 32, offset: 9440)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !343, file: !302, line: 935, baseType: !537, size: 64, offset: 9472)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !31, line: 103, size: 64, elements: !538)
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !537, file: !31, line: 104, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !31, line: 101, flags: DIFlagFwdDecl)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !343, file: !302, line: 940, baseType: !393, size: 64, offset: 9536)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !343, file: !302, line: 942, baseType: !544, size: 256, offset: 9600)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !545, line: 98, size: 256, elements: !546)
!545 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!546 = !{!547, !548, !549}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !544, file: !545, line: 99, baseType: !393, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !544, file: !545, line: 100, baseType: !126, size: 128, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !544, file: !545, line: 101, baseType: !550, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !545, line: 21, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !554}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !340, file: !302, line: 986, baseType: !556, offset: 10240)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: -1)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !319, file: !302, line: 640, baseType: !560, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !309, line: 297, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !309, line: 297, size: 64, elements: !562)
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !561, file: !309, line: 297, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !379, line: 19, baseType: !119)
!565 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !302, line: 646, baseType: !566, size: 64, offset: 256)
!566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !319, file: !302, line: 646, size: 64, elements: !567)
!567 = !{!568, !571}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !566, file: !302, line: 647, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !302, line: 542, baseType: !119)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !566, file: !302, line: 648, baseType: !570, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !319, file: !302, line: 666, baseType: !117, size: 32, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !319, file: !302, line: 667, baseType: !574, size: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !302, line: 579, size: 320, elements: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !575, file: !302, line: 580, baseType: !404, size: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !319, file: !302, line: 670, baseType: !579, size: 8, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !127, line: 35, baseType: !580)
!580 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !319, file: !302, line: 681, baseType: !582, size: 256, offset: 512)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !319, file: !302, line: 678, size: 256, elements: !583)
!583 = !{!584, !592}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !582, file: !302, line: 679, baseType: !585, size: 192, align: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !586, line: 5, size: 192, align: 64, elements: !587)
!586 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!587 = !{!588, !589, !591}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !585, file: !586, line: 6, baseType: !119, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !585, file: !586, line: 7, baseType: !590, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !585, file: !586, line: 8, baseType: !590, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !582, file: !302, line: 680, baseType: !119, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !319, file: !302, line: 689, baseType: !126, size: 128, offset: 768)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !319, file: !302, line: 691, baseType: !595, size: 64, offset: 896)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !302, line: 691, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !319, file: !302, line: 694, baseType: !598, size: 64, offset: 960)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !302, line: 694, flags: DIFlagFwdDecl)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !319, file: !302, line: 697, baseType: !119, size: 64, offset: 1024)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !319, file: !302, line: 699, baseType: !307, size: 64, offset: 1088)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !319, file: !302, line: 700, baseType: !118, size: 64, offset: 1152)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !319, file: !302, line: 711, baseType: !393, size: 64, offset: 1216)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !319, file: !302, line: 717, baseType: !606, size: 64, offset: 1280)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !302, line: 717, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !319, file: !302, line: 722, baseType: !609, offset: 1344)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !302, line: 570, elements: !360)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !279, file: !252, line: 90, baseType: !611, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !279, file: !252, line: 91, baseType: !613, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !242, file: !142, line: 120, baseType: !615, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!618, !209}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !38, line: 39, size: 384, elements: !621)
!621 = !{!622, !623, !627, !631, !637, !641}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !620, file: !38, line: 40, baseType: !37, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !620, file: !38, line: 41, baseType: !624, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!579}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !620, file: !38, line: 42, baseType: !628, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!118}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !620, file: !38, line: 43, baseType: !632, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!502, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !38, line: 19, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !620, file: !38, line: 44, baseType: !638, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!502}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !620, file: !38, line: 45, baseType: !642, size: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !118}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !242, file: !142, line: 121, baseType: !646, size: 64, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!502, !209}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !242, file: !142, line: 122, baseType: !650, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !209, !653, !661}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !655, line: 23, baseType: !656)
!655 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !655, line: 21, size: 32, elements: !657)
!657 = !{!658}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !656, file: !655, line: 22, baseType: !659, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !127, line: 37, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !260, line: 49, baseType: !7)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !655, line: 28, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !655, line: 26, size: 32, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !663, file: !655, line: 27, baseType: !666, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !127, line: 38, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !260, line: 50, baseType: !7)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !141, file: !142, line: 70, baseType: !669, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !671, line: 190, size: 1152, elements: !672)
!671 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !774, !775, !776, !777, !778, !781}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !670, file: !671, line: 191, baseType: !176, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !670, file: !671, line: 192, baseType: !176, size: 32, offset: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !670, file: !671, line: 202, baseType: !669, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !670, file: !671, line: 203, baseType: !145, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !670, file: !671, line: 205, baseType: !585, size: 192, align: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !670, file: !671, line: 207, baseType: !502, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !670, file: !671, line: 208, baseType: !7, size: 32, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !670, file: !671, line: 209, baseType: !681, size: 256, offset: 512)
!681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !670, file: !671, line: 209, size: 256, elements: !682)
!682 = !{!683, !695, !699}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !681, file: !671, line: 210, baseType: !684, size: 256)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !671, line: 153, size: 256, elements: !685)
!685 = !{!686, !687, !691, !694}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !684, file: !671, line: 154, baseType: !119, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !684, file: !671, line: 156, baseType: !688, size: 64, offset: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !586, line: 12, size: 64, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !688, file: !586, line: 13, baseType: !590, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !684, file: !671, line: 162, baseType: !692, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !671, line: 162, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !684, file: !671, line: 167, baseType: !119, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !681, file: !671, line: 211, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !671, line: 170, size: 64, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !696, file: !671, line: 171, baseType: !669, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !681, file: !671, line: 212, baseType: !700, size: 256)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !671, line: 174, size: 256, elements: !701)
!701 = !{!702, !769, !772, !773}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !700, file: !671, line: 175, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !671, line: 271, size: 768, elements: !706)
!706 = !{!707, !729, !733, !737, !742, !746, !750, !754, !755, !756, !757, !765}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !705, file: !671, line: 276, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!117, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !671, line: 251, size: 1216, elements: !713)
!713 = !{!714, !715, !716, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !712, file: !671, line: 253, baseType: !669, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !712, file: !671, line: 254, baseType: !307, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !712, file: !671, line: 255, baseType: !717, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !70, line: 27, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !712, file: !671, line: 256, baseType: !118, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !712, file: !671, line: 259, baseType: !481, size: 256, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !712, file: !671, line: 260, baseType: !481, size: 256, offset: 512)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !712, file: !671, line: 261, baseType: !117, size: 32, offset: 768)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !712, file: !671, line: 262, baseType: !126, size: 128, offset: 832)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !712, file: !671, line: 263, baseType: !226, size: 64, offset: 960)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !712, file: !671, line: 265, baseType: !272, size: 64, offset: 1024)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !712, file: !671, line: 266, baseType: !579, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !712, file: !671, line: 267, baseType: !579, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !712, file: !671, line: 268, baseType: !598, size: 64, offset: 1152)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !705, file: !671, line: 277, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !711}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !705, file: !671, line: 290, baseType: !734, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!117, !717, !118}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !705, file: !671, line: 292, baseType: !738, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!118, !717, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !705, file: !671, line: 293, baseType: !743, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!118, !717, !118, !741}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !705, file: !671, line: 294, baseType: !747, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !717, !118}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !705, file: !671, line: 296, baseType: !751, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!258, !711, !226, !272, !310}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !705, file: !671, line: 306, baseType: !272, size: 64, offset: 448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !705, file: !671, line: 313, baseType: !579, size: 8, offset: 512)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !705, file: !671, line: 314, baseType: !751, size: 64, offset: 576)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !705, file: !671, line: 317, baseType: !758, size: 64, offset: 640)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!761, !711, !763}
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !762, line: 59, baseType: !7)
!762 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !671, line: 31, flags: DIFlagFwdDecl)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !705, file: !671, line: 320, baseType: !766, size: 64, offset: 704)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!117, !711, !318}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !700, file: !671, line: 176, baseType: !770, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !671, line: 35, flags: DIFlagFwdDecl)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !700, file: !671, line: 177, baseType: !310, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !700, file: !671, line: 178, baseType: !669, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !670, file: !671, line: 215, baseType: !118, size: 64, offset: 768)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !670, file: !671, line: 221, baseType: !387, size: 64, offset: 832)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !671, line: 223, baseType: !196, size: 16, offset: 896)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !670, file: !671, line: 224, baseType: !267, size: 16, offset: 912)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !670, file: !671, line: 225, baseType: !779, size: 64, offset: 960)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !671, line: 36, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !670, file: !671, line: 227, baseType: !330, size: 128, align: 64, offset: 1024)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !141, file: !142, line: 71, baseType: !783, size: 32, offset: 448)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !784, line: 19, size: 32, elements: !785)
!784 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !783, file: !784, line: 20, baseType: !787, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !788, line: 113, baseType: !789)
!788 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !788, line: 111, size: 32, elements: !790)
!790 = !{!791}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !789, file: !788, line: 112, baseType: !176, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !141, file: !142, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !141, file: !142, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !141, file: !142, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !141, file: !142, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !141, file: !142, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !138, file: !44, line: 47, baseType: !121, size: 64, offset: 512)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !138, file: !44, line: 48, baseType: !149, size: 64, offset: 576)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !138, file: !44, line: 49, baseType: !800, size: 64, offset: 640)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !44, line: 49, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !138, file: !44, line: 50, baseType: !803, size: 64, offset: 704)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !805, line: 26, size: 256, elements: !806)
!805 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !804, file: !805, line: 27, baseType: !7, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !804, file: !805, line: 28, baseType: !809, size: 192, offset: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !810, line: 43, size: 192, elements: !811)
!810 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !809, file: !810, line: 44, baseType: !415, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !809, file: !810, line: 45, baseType: !126, size: 128, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !122, file: !44, line: 418, baseType: !815, size: 64, offset: 1408)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !44, line: 53, size: 448, elements: !817)
!817 = !{!818, !819, !824, !828, !832, !836}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !816, file: !44, line: 54, baseType: !263, size: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !816, file: !44, line: 55, baseType: !820, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!258, !815, !823, !226}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !816, file: !44, line: 57, baseType: !825, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!258, !815, !823, !145, !272}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !816, file: !44, line: 59, baseType: !829, size: 64, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !121, !145}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !816, file: !44, line: 60, baseType: !833, size: 64, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!117, !121}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !816, file: !44, line: 61, baseType: !837, size: 64, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !121}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !122, file: !44, line: 419, baseType: !145, size: 64, offset: 1472)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !122, file: !44, line: 420, baseType: !145, size: 64, offset: 1536)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !122, file: !44, line: 421, baseType: !149, size: 64, offset: 1600)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !122, file: !44, line: 424, baseType: !844, size: 64, offset: 1664)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !846)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !44, line: 424, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !122, file: !44, line: 425, baseType: !848, size: 64, offset: 1728)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !122, file: !44, line: 426, baseType: !7, size: 32, offset: 1792)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !122, file: !44, line: 435, baseType: !481, size: 256, offset: 1856)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !122, file: !44, line: 437, baseType: !853, size: 64, offset: 2112)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !855, line: 69, size: 320, elements: !856)
!855 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!856 = !{!857, !858, !859, !876, !878, !882, !883}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !854, file: !855, line: 70, baseType: !145, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !854, file: !855, line: 71, baseType: !121, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !854, file: !855, line: 72, baseType: !860, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !855, line: 47, size: 256, elements: !863)
!863 = !{!864, !865, !871, !875}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !862, file: !855, line: 49, baseType: !7, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !862, file: !855, line: 51, baseType: !866, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!117, !145, !869}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !862, file: !855, line: 53, baseType: !872, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!117, !226, !869}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !862, file: !855, line: 55, baseType: !642, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !854, file: !855, line: 73, baseType: !877, size: 16, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !854, file: !855, line: 74, baseType: !879, size: 8, offset: 208)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !185, line: 16, baseType: !880)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !187, line: 20, baseType: !881)
!881 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !854, file: !855, line: 75, baseType: !184, size: 8, offset: 216)
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !854, file: !855, line: 76, baseType: !884, size: 64, offset: 256)
!884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !854, file: !855, line: 76, size: 64, elements: !885)
!885 = !{!886, !887, !894}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !884, file: !855, line: 77, baseType: !118, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !884, file: !855, line: 78, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !855, line: 86, size: 128, elements: !891)
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !890, file: !855, line: 87, baseType: !7, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !890, file: !855, line: 88, baseType: !226, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !884, file: !855, line: 79, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !855, line: 92, size: 256, elements: !898)
!898 = !{!899, !900, !901, !903, !904}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !897, file: !855, line: 94, baseType: !7, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !897, file: !855, line: 95, baseType: !7, size: 32, offset: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !897, file: !855, line: 96, baseType: !902, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !897, file: !855, line: 97, baseType: !860, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !897, file: !855, line: 98, baseType: !118, size: 64, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !122, file: !44, line: 438, baseType: !7, size: 32, offset: 2176)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !122, file: !44, line: 441, baseType: !7, size: 32, offset: 2208)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !122, file: !44, line: 442, baseType: !844, size: 64, offset: 2240)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !122, file: !44, line: 443, baseType: !848, size: 64, offset: 2304)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !122, file: !44, line: 444, baseType: !579, size: 8, offset: 2368)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !122, file: !44, line: 451, baseType: !579, size: 8, offset: 2376)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !122, file: !44, line: 454, baseType: !7, size: 32, offset: 2400)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !122, file: !44, line: 455, baseType: !913, size: 64, offset: 2432)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !915, line: 23, size: 96, elements: !916)
!915 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !914, file: !915, line: 24, baseType: !117, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !914, file: !915, line: 24, baseType: !117, size: 32, offset: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !914, file: !915, line: 24, baseType: !117, size: 32, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !122, file: !44, line: 458, baseType: !921, size: 64, offset: 2496)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!117}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !122, file: !44, line: 460, baseType: !925, size: 4032, align: 512, offset: 2560)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !926, size: 4032, elements: !942)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !44, line: 362, size: 576, elements: !927)
!927 = !{!928, !929, !930}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !926, file: !44, line: 363, baseType: !118, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !926, file: !44, line: 364, baseType: !7, size: 32, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !926, file: !44, line: 367, baseType: !931, size: 448, offset: 128)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !44, line: 319, size: 448, elements: !932)
!932 = !{!933, !934}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !931, file: !44, line: 320, baseType: !121, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !931, file: !44, line: 321, baseType: !935, size: 384, offset: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !936, line: 40, size: 384, elements: !937)
!936 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!937 = !{!938}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !935, file: !936, line: 41, baseType: !939, size: 384, align: 64)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 384, align: 64, elements: !940)
!940 = !{!941}
!941 = !DISubrange(count: 2)
!942 = !{!943}
!943 = !DISubrange(count: 7)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !122, file: !44, line: 463, baseType: !945, size: 192, offset: 6592)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !946, line: 8, size: 192, elements: !947)
!946 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!947 = !{!948, !949, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !945, file: !946, line: 10, baseType: !7, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !945, file: !946, line: 11, baseType: !116, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !945, file: !946, line: 12, baseType: !951, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !953, line: 59, size: 48, elements: !954)
!953 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!954 = !{!955, !956, !957, !958, !959, !960}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !952, file: !953, line: 60, baseType: !519, size: 16)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !952, file: !953, line: 61, baseType: !519, size: 16, offset: 16)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !952, file: !953, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !952, file: !953, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !952, file: !953, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !952, file: !953, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !122, file: !44, line: 465, baseType: !119, size: 64, offset: 6784)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !122, file: !44, line: 469, baseType: !7, size: 32, offset: 6848)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !122, file: !44, line: 470, baseType: !126, size: 128, offset: 6912)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !122, file: !44, line: 471, baseType: !965, size: 64, offset: 7040)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !967, line: 33, size: 96, elements: !968)
!967 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!968 = !{!969, !970, !971, !972}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !966, file: !967, line: 37, baseType: !117, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !966, file: !967, line: 43, baseType: !117, size: 32, offset: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !966, file: !967, line: 45, baseType: !196, size: 16, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !966, file: !967, line: 47, baseType: !196, size: 16, offset: 80)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !122, file: !44, line: 476, baseType: !974, size: 64, offset: 7104)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !44, line: 378, size: 256, elements: !976)
!976 = !{!977, !994, !995, !996}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !975, file: !44, line: 379, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !980, line: 204, baseType: !981)
!980 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !980, line: 197, size: 192, elements: !982)
!982 = !{!983, !986, !987, !988, !990, !992}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !981, file: !980, line: 198, baseType: !984, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !980, line: 21, baseType: !985)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !187, line: 27, baseType: !7)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !981, file: !980, line: 199, baseType: !188, size: 8, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !981, file: !980, line: 200, baseType: !188, size: 8, offset: 40)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !981, file: !980, line: 201, baseType: !989, size: 16, offset: 48)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !980, line: 17, baseType: !195)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !981, file: !980, line: 202, baseType: !991, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !980, line: 16, baseType: !388)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !981, file: !980, line: 203, baseType: !993, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !980, line: 22, baseType: !388)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !975, file: !44, line: 380, baseType: !7, size: 32, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !975, file: !44, line: 381, baseType: !226, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !975, file: !44, line: 382, baseType: !226, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !122, file: !44, line: 477, baseType: !975, size: 256, offset: 7168)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !122, file: !44, line: 480, baseType: !999, size: 64, offset: 7424)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !44, line: 480, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !122, file: !44, line: 483, baseType: !1002, size: 64, offset: 7488)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !44, line: 483, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !122, file: !44, line: 488, baseType: !226, size: 64, offset: 7552)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !122, file: !44, line: 492, baseType: !118, size: 64, offset: 7616)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !122, file: !44, line: 493, baseType: !7, size: 32, offset: 7680)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !122, file: !44, line: 495, baseType: !118, size: 64, offset: 7744)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !122, file: !44, line: 496, baseType: !7, size: 32, offset: 7808)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !122, file: !44, line: 499, baseType: !7, size: 32, offset: 7840)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !122, file: !44, line: 500, baseType: !1011, size: 64, offset: 7872)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1013, line: 45, baseType: !1014)
!1013 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !122, file: !44, line: 503, baseType: !7, size: 32, offset: 7936)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !122, file: !44, line: 504, baseType: !1017, size: 64, offset: 8000)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1020, line: 96, size: 192, elements: !1021)
!1020 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1021 = !{!1022, !1023, !1084, !1087}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1019, file: !1020, line: 97, baseType: !7, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1019, file: !1020, line: 98, baseType: !1024, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1020, line: 24, size: 3072, elements: !1026)
!1026 = !{!1027, !1029, !1030, !1031, !1032, !1046, !1047, !1048, !1049, !1068, !1069, !1070, !1081, !1082, !1083}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1025, file: !1020, line: 26, baseType: !1028, size: 128)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 128, elements: !940)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1025, file: !1020, line: 27, baseType: !1028, size: 128, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1025, file: !1020, line: 28, baseType: !117, size: 32, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1025, file: !1020, line: 31, baseType: !156, size: 32, align: 512, offset: 512)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1025, file: !1020, line: 32, baseType: !1033, size: 960, offset: 576)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1034, line: 206, size: 960, elements: !1035)
!1034 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1035 = !{!1036, !1037, !1040, !1042, !1043, !1045}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1033, file: !1034, line: 207, baseType: !333, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1033, file: !1034, line: 208, baseType: !1038, size: 256, offset: 64)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 256, elements: !462)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1033, file: !1034, line: 209, baseType: !1041, size: 256, offset: 320)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 256, elements: !462)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1033, file: !1034, line: 213, baseType: !120, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1033, file: !1034, line: 215, baseType: !1044, size: 256, offset: 640)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 256, elements: !462)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1033, file: !1034, line: 216, baseType: !184, size: 8, offset: 896)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1025, file: !1020, line: 33, baseType: !119, size: 64, offset: 1536)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1025, file: !1020, line: 34, baseType: !119, size: 64, offset: 1600)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1025, file: !1020, line: 35, baseType: !579, size: 8, offset: 1664)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1025, file: !1020, line: 36, baseType: !1050, size: 320, offset: 1728)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1051, line: 11, size: 320, elements: !1052)
!1051 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1052 = !{!1053, !1060, !1061, !1066}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1050, file: !1051, line: 16, baseType: !1054, size: 128)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !127, line: 198, size: 128, elements: !1055)
!1055 = !{!1056, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1054, file: !127, line: 199, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1054, file: !127, line: 199, baseType: !1059, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1050, file: !1051, line: 17, baseType: !119, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1050, file: !1051, line: 18, baseType: !1062, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !1065}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1050, file: !1051, line: 19, baseType: !1067, size: 32, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !185, line: 21, baseType: !985)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1025, file: !1020, line: 37, baseType: !544, size: 256, offset: 2048)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1025, file: !1020, line: 38, baseType: !330, size: 128, align: 64, offset: 2304)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1025, file: !1020, line: 39, baseType: !1071, size: 64, offset: 2432)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1020, line: 49, size: 768, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1072, file: !1020, line: 50, baseType: !156, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1072, file: !1020, line: 51, baseType: !1041, size: 256, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1072, file: !1020, line: 53, baseType: !1041, size: 256, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1072, file: !1020, line: 54, baseType: !119, size: 64, offset: 576)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1072, file: !1020, line: 55, baseType: !1071, size: 64, offset: 640)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1072, file: !1020, line: 56, baseType: !117, size: 32, offset: 704)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1072, file: !1020, line: 57, baseType: !117, size: 32, offset: 736)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1025, file: !1020, line: 40, baseType: !119, size: 64, offset: 2496)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1025, file: !1020, line: 42, baseType: !117, size: 32, offset: 2560)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1025, file: !1020, line: 43, baseType: !1018, size: 64, offset: 2624)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1019, file: !1020, line: 99, baseType: !1085, offset: 128)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1086, line: 211, elements: !360)
!1086 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1019, file: !1020, line: 100, baseType: !1088, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1020, line: 63, size: 3008, elements: !1090)
!1090 = !{!1091, !1092, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1122}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1089, file: !1020, line: 64, baseType: !1071, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1089, file: !1020, line: 65, baseType: !1093, size: 192, offset: 64)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 192, elements: !227)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1089, file: !1020, line: 67, baseType: !117, size: 32, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1089, file: !1020, line: 68, baseType: !481, size: 256, offset: 320)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1089, file: !1020, line: 69, baseType: !156, size: 32, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1089, file: !1020, line: 70, baseType: !481, size: 256, offset: 640)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1089, file: !1020, line: 71, baseType: !119, size: 64, offset: 896)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1089, file: !1020, line: 72, baseType: !119, size: 64, offset: 960)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1089, file: !1020, line: 73, baseType: !119, size: 64, offset: 1024)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1089, file: !1020, line: 74, baseType: !119, size: 64, offset: 1088)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1089, file: !1020, line: 75, baseType: !119, size: 64, offset: 1152)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1089, file: !1020, line: 76, baseType: !119, size: 64, offset: 1216)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1089, file: !1020, line: 77, baseType: !119, size: 64, offset: 1280)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1089, file: !1020, line: 78, baseType: !119, size: 64, offset: 1344)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1089, file: !1020, line: 79, baseType: !579, size: 8, offset: 1408)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1089, file: !1020, line: 80, baseType: !119, size: 64, offset: 1472)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1089, file: !1020, line: 81, baseType: !481, size: 256, offset: 1536)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1089, file: !1020, line: 82, baseType: !804, size: 256, offset: 1792)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1089, file: !1020, line: 84, baseType: !176, size: 32, offset: 2048)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1089, file: !1020, line: 87, baseType: !119, size: 64, offset: 2112)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1089, file: !1020, line: 88, baseType: !119, size: 64, offset: 2176)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1089, file: !1020, line: 89, baseType: !1114, size: 704, offset: 2240)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !545, line: 111, size: 704, elements: !1115)
!1115 = !{!1116, !1117, !1118, !1121}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1114, file: !545, line: 112, baseType: !544, size: 256)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1114, file: !545, line: 113, baseType: !1050, size: 320, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1114, file: !545, line: 116, baseType: !1119, size: 64, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !545, line: 18, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1114, file: !545, line: 117, baseType: !117, size: 32, offset: 640)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1089, file: !1020, line: 90, baseType: !1018, size: 64, offset: 2944)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !122, file: !44, line: 515, baseType: !1124, size: 64, offset: 8064)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1126, line: 117, size: 128, elements: !1127)
!1126 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1127 = !{!1128, !1129, !1130}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1125, file: !1126, line: 118, baseType: !460, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1125, file: !1126, line: 119, baseType: !460, size: 32, offset: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1125, file: !1126, line: 120, baseType: !120, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !122, file: !44, line: 516, baseType: !7, size: 32, offset: 8128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !122, file: !44, line: 519, baseType: !7, size: 32, offset: 8160)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !122, file: !44, line: 520, baseType: !1134, size: 64, offset: 8192)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !122, file: !44, line: 523, baseType: !1136, size: 64, offset: 8256)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !44, line: 523, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !122, file: !44, line: 524, baseType: !7, size: 32, offset: 8320)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !122, file: !44, line: 525, baseType: !1141, size: 64, offset: 8384)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !44, line: 525, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !122, file: !44, line: 526, baseType: !7, size: 32, offset: 8448)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !122, file: !44, line: 533, baseType: !118, size: 64, offset: 8512)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !122, file: !44, line: 534, baseType: !7, size: 32, offset: 8576)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !122, file: !44, line: 535, baseType: !1148, size: 64, offset: 8640)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !122, file: !44, line: 536, baseType: !7, size: 32, offset: 8704)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !122, file: !44, line: 539, baseType: !117, size: 32, offset: 8736)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !122, file: !44, line: 540, baseType: !1152, size: 64, offset: 8768)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1154, line: 32, size: 64, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1153, file: !1154, line: 33, baseType: !460, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1153, file: !1154, line: 34, baseType: !460, size: 32, offset: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !122, file: !44, line: 563, baseType: !126, size: 128, offset: 8832)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !122, file: !44, line: 565, baseType: !126, size: 128, offset: 8960)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !122, file: !44, line: 568, baseType: !1161, size: 64, offset: 9088)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !122, file: !44, line: 570, baseType: !176, size: 32, offset: 9152)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1167)
!1167 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !117)
!1168 = !{!1169, !1174, !2551, !2556, !2561, !2566, !2571, !2582, !2584, !2589, !2592, !2594, !2596, !2601, !2603, !0, !2605, !2607, !2615, !2617, !2622, !2625, !2630, !2632, !2637, !2640, !2642, !2647, !2650, !2655, !2660, !2662, !2667, !2670, !2675}
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression())
!1170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !1171, isLocal: true, isDefinition: true)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 40, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 5)
!1174 = !DIGlobalVariableExpression(var: !1175, expr: !DIExpression())
!1175 = distinct !DIGlobalVariable(name: "__already_done", scope: !1176, file: !3, line: 39, type: !579, isLocal: true, isDefinition: true)
!1176 = distinct !DISubprogram(name: "irq_wait_for_poll", scope: !3, file: !3, line: 36, type: !1177, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2522)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!579, !1179}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !1181, line: 55, size: 3584, align: 512, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "435ffcdb49377a4c91932ebe21d66dca")
!1182 = !{!1183, !1203, !1296, !1297, !1303, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2488, !2489, !2490, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !1180, file: !1181, line: 56, baseType: !1184, size: 320)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !70, line: 147, size: 320, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1192, !1202}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !1184, file: !70, line: 148, baseType: !7, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1184, file: !70, line: 150, baseType: !7, size: 32, offset: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !1184, file: !70, line: 152, baseType: !118, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !1184, file: !70, line: 153, baseType: !1190, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !70, line: 129, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !1184, file: !70, line: 155, baseType: !1193, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1194, line: 913, baseType: !1195)
!1194 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1196, size: 64, elements: !1200)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1194, line: 19, size: 64, elements: !1197)
!1197 = !{!1198}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1196, file: !1194, line: 19, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, elements: !1200)
!1200 = !{!1201}
!1201 = !DISubrange(count: 1)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "effective_affinity", scope: !1184, file: !70, line: 158, baseType: !1193, size: 64, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !1180, file: !1181, line: 57, baseType: !1204, size: 448, offset: 320)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !70, line: 179, size: 448, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209, !1211, !1290, !1294, !1295}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !1204, file: !70, line: 180, baseType: !1067, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1204, file: !70, line: 181, baseType: !7, size: 32, offset: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !1204, file: !70, line: 182, baseType: !119, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1204, file: !70, line: 183, baseType: !1210, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !1204, file: !70, line: 184, baseType: !1212, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !70, line: 501, size: 2112, elements: !1214)
!1214 = !{!1215, !1216, !1221, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1238, !1242, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1257, !1258, !1259, !1265, !1266, !1271, !1275, !1279, !1283, !1287, !1288, !1289}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1213, file: !70, line: 502, baseType: !145, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !1213, file: !70, line: 503, baseType: !1217, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!7, !1220}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !1213, file: !70, line: 504, baseType: !1222, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !1220}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !1213, file: !70, line: 505, baseType: !1222, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !1213, file: !70, line: 506, baseType: !1222, size: 64, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !1213, file: !70, line: 508, baseType: !1222, size: 64, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !1213, file: !70, line: 509, baseType: !1222, size: 64, offset: 384)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !1213, file: !70, line: 510, baseType: !1222, size: 64, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !1213, file: !70, line: 511, baseType: !1222, size: 64, offset: 512)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !1213, file: !70, line: 512, baseType: !1222, size: 64, offset: 576)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !1213, file: !70, line: 514, baseType: !1233, size: 64, offset: 640)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!117, !1220, !1236, !579}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !1213, file: !70, line: 515, baseType: !1239, size: 64, offset: 704)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!117, !1220}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !1213, file: !70, line: 516, baseType: !1243, size: 64, offset: 768)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!117, !1220, !7}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !1213, file: !70, line: 517, baseType: !1243, size: 64, offset: 832)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !1213, file: !70, line: 519, baseType: !1222, size: 64, offset: 896)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !1213, file: !70, line: 520, baseType: !1222, size: 64, offset: 960)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !1213, file: !70, line: 526, baseType: !1222, size: 64, offset: 1024)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !1213, file: !70, line: 527, baseType: !1222, size: 64, offset: 1088)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !1213, file: !70, line: 528, baseType: !1222, size: 64, offset: 1152)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !1213, file: !70, line: 530, baseType: !1222, size: 64, offset: 1216)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !1213, file: !70, line: 532, baseType: !1254, size: 64, offset: 1280)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{null, !1220, !717}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !1213, file: !70, line: 533, baseType: !1239, size: 64, offset: 1344)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !1213, file: !70, line: 534, baseType: !1222, size: 64, offset: 1408)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !1213, file: !70, line: 536, baseType: !1260, size: 64, offset: 1472)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !1220, !1263}
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !70, line: 29, flags: DIFlagFwdDecl)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !1213, file: !70, line: 537, baseType: !1260, size: 64, offset: 1536)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !1213, file: !70, line: 539, baseType: !1267, size: 64, offset: 1600)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!117, !1220, !5, !1270}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !1213, file: !70, line: 540, baseType: !1272, size: 64, offset: 1664)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!117, !1220, !5, !579}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !1213, file: !70, line: 542, baseType: !1276, size: 64, offset: 1728)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!117, !1220, !118}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !1213, file: !70, line: 544, baseType: !1280, size: 64, offset: 1792)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !1220, !7}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !1213, file: !70, line: 545, baseType: !1284, size: 64, offset: 1856)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !1220, !1236}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !1213, file: !70, line: 547, baseType: !1239, size: 64, offset: 1920)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !1213, file: !70, line: 548, baseType: !1222, size: 64, offset: 1984)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1213, file: !70, line: 550, baseType: !119, size: 64, offset: 2048)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1204, file: !70, line: 185, baseType: !1291, size: 64, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1293, line: 13, flags: DIFlagFwdDecl)
!1293 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !1204, file: !70, line: 187, baseType: !1220, size: 64, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !1204, file: !70, line: 189, baseType: !118, size: 64, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !1180, file: !1181, line: 58, baseType: !902, size: 64, offset: 768)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !1180, file: !1181, line: 59, baseType: !1298, size: 64, offset: 832)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !1299, line: 12, baseType: !1300)
!1299 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !1179}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1180, file: !1181, line: 60, baseType: !1304, size: 64, offset: 896)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !6, line: 118, size: 1024, align: 512, elements: !1306)
!1306 = !{!1307, !1313, !1314, !1315, !1316, !1317, !2466, !2467, !2468, !2469, !2470, !2471, !2472}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1305, file: !6, line: 119, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !6, line: 100, baseType: !1309)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!1312, !117, !118}
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !14, line: 17, baseType: !13)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !1305, file: !6, line: 120, baseType: !118, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !1305, file: !6, line: 121, baseType: !118, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1305, file: !6, line: 122, baseType: !1304, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !1305, file: !6, line: 123, baseType: !1308, size: 64, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1305, file: !6, line: 124, baseType: !1318, size: 64, offset: 320)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1320, line: 746, size: 58368, elements: !1321)
!1320 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1321 = !{!1322, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1407, !1418, !1510, !1514, !1517, !1548, !1549, !1550, !1551, !1555, !1557, !1558, !1559, !1560, !1561, !1562, !1573, !1574, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1591, !1592, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1680, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1722, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1757, !1763, !1767, !1768, !1769, !1772, !1776, !1779, !1786, !1791, !1794, !1797, !1800, !1803, !1806, !1809, !1815, !1816, !1817, !1823, !1824, !1825, !1826, !1827, !1830, !1831, !1832, !1841, !1849, !1850, !1851, !1852, !1853, !1858, !1859, !1860, !1863, !1864, !1867, !1870, !1873, !1876, !1879, !1880, !1966, !1977, !1978, !1979, !1980, !1986, !1991, !1992, !1993, !1996, !1997, !2000, !2003, !2004, !2007, !2008, !2009, !2012, !2013, !2014, !2015, !2016, !2017, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2049, !2052, !2118, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2130, !2202, !2204, !2205, !2206, !2207, !2208, !2209, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2239, !2240, !2241}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1319, file: !1320, line: 752, baseType: !1323, size: 192)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1324, line: 56, size: 192, elements: !1325)
!1324 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1325 = !{!1326, !1327, !1328, !1329}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1323, file: !1324, line: 57, baseType: !119, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1323, file: !1324, line: 58, baseType: !119, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1323, file: !1324, line: 59, baseType: !1067, size: 32, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1323, file: !1324, line: 61, baseType: !1067, size: 32, offset: 160)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1319, file: !1320, line: 754, baseType: !7, size: 32, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1319, file: !1320, line: 767, baseType: !118, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1319, file: !1320, line: 768, baseType: !787, size: 32, offset: 320)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1319, file: !1320, line: 770, baseType: !7, size: 32, offset: 352)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1319, file: !1320, line: 771, baseType: !7, size: 32, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1319, file: !1320, line: 774, baseType: !117, size: 32, offset: 416)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1319, file: !1320, line: 775, baseType: !1337, size: 128, offset: 448)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1338, line: 58, size: 128, elements: !1339)
!1338 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1339 = !{!1340, !1346, !1351, !1352}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1337, file: !1338, line: 59, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1342, line: 60, size: 64, elements: !1343)
!1342 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1343 = !{!1344}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1341, file: !1342, line: 61, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !1338, line: 60, baseType: !1347, size: 32, offset: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1337, file: !1338, line: 60, size: 32, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1347, file: !1338, line: 61, baseType: !7, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1347, file: !1338, line: 62, baseType: !176, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1337, file: !1338, line: 65, baseType: !194, size: 16, offset: 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1337, file: !1338, line: 65, baseType: !194, size: 16, offset: 112)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1319, file: !1320, line: 776, baseType: !7, size: 32, offset: 576)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1319, file: !1320, line: 777, baseType: !119, size: 64, offset: 640)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1319, file: !1320, line: 778, baseType: !1318, size: 64, offset: 704)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1319, file: !1320, line: 787, baseType: !117, size: 32, offset: 768)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1319, file: !1320, line: 788, baseType: !117, size: 32, offset: 800)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1319, file: !1320, line: 790, baseType: !117, size: 32, offset: 832)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1319, file: !1320, line: 792, baseType: !117, size: 32, offset: 864)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1319, file: !1320, line: 793, baseType: !117, size: 32, offset: 896)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1319, file: !1320, line: 794, baseType: !117, size: 32, offset: 928)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1319, file: !1320, line: 795, baseType: !7, size: 32, offset: 960)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1319, file: !1320, line: 797, baseType: !1364, size: 2048, offset: 1024)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1320, line: 551, size: 2048, elements: !1365)
!1365 = !{!1366, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1386, !1389, !1390, !1391}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1364, file: !1320, line: 553, baseType: !1367, size: 128)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1320, line: 411, size: 128, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1367, file: !1320, line: 412, baseType: !119, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1367, file: !1320, line: 413, baseType: !1067, size: 32, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1364, file: !1320, line: 554, baseType: !585, size: 192, align: 64, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1364, file: !1320, line: 555, baseType: !387, size: 64, offset: 320)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1364, file: !1320, line: 556, baseType: !387, size: 64, offset: 384)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1364, file: !1320, line: 558, baseType: !126, size: 128, offset: 448)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1364, file: !1320, line: 559, baseType: !7, size: 32, offset: 576)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1364, file: !1320, line: 561, baseType: !387, size: 64, offset: 640)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1364, file: !1320, line: 562, baseType: !387, size: 64, offset: 704)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1364, file: !1320, line: 563, baseType: !387, size: 64, offset: 768)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1364, file: !1320, line: 564, baseType: !387, size: 64, offset: 832)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1364, file: !1320, line: 565, baseType: !399, size: 64, offset: 896)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1364, file: !1320, line: 566, baseType: !387, size: 64, offset: 960)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1364, file: !1320, line: 568, baseType: !387, size: 64, offset: 1024)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1364, file: !1320, line: 571, baseType: !117, size: 32, offset: 1088)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1364, file: !1320, line: 572, baseType: !1385, size: 64, offset: 1152)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1364, file: !1320, line: 574, baseType: !1387, size: 64, offset: 1216)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1320, line: 49, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1364, file: !1320, line: 576, baseType: !1387, size: 64, offset: 1280)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1364, file: !1320, line: 578, baseType: !119, size: 64, offset: 1344)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1364, file: !1320, line: 588, baseType: !1392, size: 512, align: 512, offset: 1536)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1320, line: 497, size: 512, align: 512, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1392, file: !1320, line: 498, baseType: !387, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1392, file: !1320, line: 499, baseType: !387, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1392, file: !1320, line: 500, baseType: !387, size: 64, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1392, file: !1320, line: 501, baseType: !1067, size: 32, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1392, file: !1320, line: 502, baseType: !1067, size: 32, offset: 224)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1392, file: !1320, line: 503, baseType: !119, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1392, file: !1320, line: 504, baseType: !119, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1392, file: !1320, line: 505, baseType: !119, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1392, file: !1320, line: 506, baseType: !1403, size: 64, align: 64, offset: 448)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1320, line: 445, size: 64, align: 64, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1403, file: !1320, line: 446, baseType: !7, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1403, file: !1320, line: 447, baseType: !7, size: 32, offset: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1319, file: !1320, line: 798, baseType: !1408, size: 384, offset: 3072)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1320, line: 592, size: 384, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1416}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1408, file: !1320, line: 593, baseType: !126, size: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1408, file: !1320, line: 594, baseType: !119, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1408, file: !1320, line: 595, baseType: !119, size: 64, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1408, file: !1320, line: 596, baseType: !7, size: 32, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1408, file: !1320, line: 597, baseType: !196, size: 16, offset: 288)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1408, file: !1320, line: 598, baseType: !196, size: 16, offset: 304)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1408, file: !1320, line: 600, baseType: !1417, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1319, file: !1320, line: 799, baseType: !1419, size: 1792, offset: 3456)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1320, line: 610, size: 1792, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1507, !1508}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1419, file: !1320, line: 611, baseType: !585, size: 192, align: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1419, file: !1320, line: 618, baseType: !387, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1419, file: !1320, line: 619, baseType: !387, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1419, file: !1320, line: 620, baseType: !387, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1419, file: !1320, line: 621, baseType: !387, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1419, file: !1320, line: 622, baseType: !387, size: 64, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1419, file: !1320, line: 629, baseType: !399, size: 64, offset: 512)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1419, file: !1320, line: 630, baseType: !387, size: 64, offset: 576)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1419, file: !1320, line: 631, baseType: !7, size: 32, offset: 640)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1419, file: !1320, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1419, file: !1320, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1419, file: !1320, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1419, file: !1320, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1419, file: !1320, line: 662, baseType: !1435, size: 512, offset: 704)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1436)
!1436 = !{!1437, !1445, !1446, !1451, !1503, !1504, !1505, !1506}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1435, file: !20, line: 119, baseType: !1438, size: 256)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1439, line: 9, size: 256, elements: !1440)
!1439 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1438, file: !1439, line: 10, baseType: !585, size: 192, align: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1438, file: !1439, line: 11, baseType: !1443, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1444, line: 29, baseType: !399)
!1444 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1435, file: !20, line: 120, baseType: !1443, size: 64, offset: 256)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1435, file: !20, line: 121, baseType: !1447, size: 64, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!19, !1450}
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1435, file: !20, line: 122, baseType: !1452, size: 64, offset: 384)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1454)
!1454 = !{!1455, !1480, !1481, !1484, !1489, !1490, !1498, !1502}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1453, file: !20, line: 160, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 215, size: 4608, align: 512, elements: !1458)
!1458 = !{!1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1457, file: !20, line: 216, baseType: !415, size: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1457, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1457, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1457, file: !20, line: 219, baseType: !7, size: 32, offset: 96)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1457, file: !20, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1457, file: !20, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1457, file: !20, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1457, file: !20, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1457, file: !20, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1457, file: !20, line: 226, baseType: !7, size: 32, offset: 160)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1457, file: !20, line: 227, baseType: !196, size: 16, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1457, file: !20, line: 228, baseType: !196, size: 16, offset: 208)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1457, file: !20, line: 229, baseType: !7, size: 32, offset: 224)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1457, file: !20, line: 235, baseType: !1443, size: 64, offset: 256)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1457, file: !20, line: 236, baseType: !1450, size: 64, offset: 320)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1457, file: !20, line: 237, baseType: !1443, size: 64, offset: 384)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1457, file: !20, line: 238, baseType: !1450, size: 64, offset: 448)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1457, file: !20, line: 239, baseType: !1477, size: 4096, align: 512, offset: 512)
!1477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1453, size: 4096, align: 512, elements: !1478)
!1478 = !{!1479}
!1479 = !DISubrange(count: 8)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1453, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1453, file: !20, line: 162, baseType: !1482, size: 32, offset: 96)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !127, line: 32, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !260, line: 96, baseType: !117)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1453, file: !20, line: 163, baseType: !1485, size: 32, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !430, line: 274, baseType: !1486)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !430, line: 274, size: 32, elements: !1487)
!1487 = !{!1488}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1486, file: !430, line: 274, baseType: !429, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1453, file: !20, line: 164, baseType: !1450, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1453, file: !20, line: 165, baseType: !1491, size: 128, offset: 256)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1439, line: 14, size: 128, elements: !1492)
!1492 = !{!1493}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1491, file: !1439, line: 15, baseType: !1494, size: 128)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !586, line: 26, size: 128, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1494, file: !586, line: 27, baseType: !688, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1494, file: !586, line: 28, baseType: !590, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1453, file: !20, line: 166, baseType: !1499, size: 64, offset: 384)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!1443}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1453, file: !20, line: 167, baseType: !1443, size: 64, offset: 448)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1435, file: !20, line: 123, baseType: !184, size: 8, offset: 448)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1435, file: !20, line: 124, baseType: !184, size: 8, offset: 456)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1435, file: !20, line: 125, baseType: !184, size: 8, offset: 464)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1435, file: !20, line: 126, baseType: !184, size: 8, offset: 472)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1419, file: !1320, line: 671, baseType: !1435, size: 512, offset: 1216)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1419, file: !1320, line: 679, baseType: !1509, size: 64, offset: 1728)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1319, file: !1320, line: 800, baseType: !1511, size: 64, offset: 5248)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1513)
!1513 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1320, line: 800, flags: DIFlagFwdDecl)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1319, file: !1320, line: 809, baseType: !1515, size: 64, offset: 5312)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1320, line: 70, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1319, file: !1320, line: 825, baseType: !1518, size: 2048, align: 512, offset: 5632)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1320, line: 509, size: 2048, align: 512, elements: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1518, file: !1320, line: 511, baseType: !387, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1518, file: !1320, line: 512, baseType: !387, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1518, file: !1320, line: 513, baseType: !387, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1518, file: !1320, line: 514, baseType: !387, size: 64, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1518, file: !1320, line: 515, baseType: !387, size: 64, offset: 256)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1518, file: !1320, line: 516, baseType: !387, size: 64, offset: 320)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1518, file: !1320, line: 518, baseType: !387, size: 64, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1518, file: !1320, line: 519, baseType: !387, size: 64, offset: 448)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1518, file: !1320, line: 520, baseType: !399, size: 64, offset: 512)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1518, file: !1320, line: 522, baseType: !387, size: 64, offset: 576)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1518, file: !1320, line: 523, baseType: !387, size: 64, offset: 640)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1518, file: !1320, line: 524, baseType: !399, size: 64, offset: 704)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1518, file: !1320, line: 526, baseType: !399, size: 64, offset: 768)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1518, file: !1320, line: 527, baseType: !387, size: 64, offset: 832)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1518, file: !1320, line: 529, baseType: !387, size: 64, offset: 896)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1518, file: !1320, line: 530, baseType: !387, size: 64, offset: 960)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1518, file: !1320, line: 531, baseType: !387, size: 64, offset: 1024)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1518, file: !1320, line: 532, baseType: !387, size: 64, offset: 1088)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1518, file: !1320, line: 533, baseType: !387, size: 64, offset: 1152)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1518, file: !1320, line: 535, baseType: !387, size: 64, offset: 1216)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1518, file: !1320, line: 536, baseType: !387, size: 64, offset: 1280)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1518, file: !1320, line: 537, baseType: !387, size: 64, offset: 1344)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1518, file: !1320, line: 538, baseType: !387, size: 64, offset: 1408)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1518, file: !1320, line: 539, baseType: !387, size: 64, offset: 1472)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1518, file: !1320, line: 540, baseType: !387, size: 64, offset: 1536)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1518, file: !1320, line: 541, baseType: !387, size: 64, offset: 1600)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1518, file: !1320, line: 542, baseType: !387, size: 64, offset: 1664)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1518, file: !1320, line: 543, baseType: !387, size: 64, offset: 1728)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1319, file: !1320, line: 833, baseType: !7, size: 32, offset: 7680)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1319, file: !1320, line: 836, baseType: !7, size: 32, offset: 7712)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1319, file: !1320, line: 837, baseType: !117, size: 32, offset: 7744)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1319, file: !1320, line: 838, baseType: !1552, size: 64, offset: 7808)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1554)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1194, line: 19, baseType: !1196)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1319, file: !1320, line: 839, baseType: !1556, size: 64, offset: 7872)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1319, file: !1320, line: 840, baseType: !1554, size: 64, offset: 7936)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1319, file: !1320, line: 841, baseType: !118, size: 64, offset: 8000)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1319, file: !1320, line: 843, baseType: !196, size: 16, offset: 8064)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1319, file: !1320, line: 845, baseType: !196, size: 16, offset: 8080)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1319, file: !1320, line: 848, baseType: !117, size: 32, offset: 8096)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1319, file: !1320, line: 849, baseType: !1563, size: 32, offset: 8128)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1320, line: 718, size: 32, elements: !1564)
!1564 = !{!1565, !1572}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1563, file: !1320, line: 724, baseType: !1566, size: 32)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !1320, line: 719, size: 32, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1571}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1566, file: !1320, line: 720, baseType: !184, size: 8)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1566, file: !1320, line: 721, baseType: !184, size: 8, offset: 8)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1566, file: !1320, line: 722, baseType: !184, size: 8, offset: 16)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1566, file: !1320, line: 723, baseType: !184, size: 8, offset: 24)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1563, file: !1320, line: 725, baseType: !1067, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1319, file: !1320, line: 850, baseType: !126, size: 128, offset: 8192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1319, file: !1320, line: 851, baseType: !1575, size: 64, offset: 8320)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1320, line: 60, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1319, file: !1320, line: 855, baseType: !119, size: 64, offset: 8384)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1319, file: !1320, line: 856, baseType: !184, size: 8, offset: 8448)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1319, file: !1320, line: 857, baseType: !184, size: 8, offset: 8456)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1319, file: !1320, line: 858, baseType: !117, size: 32, offset: 8480)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1319, file: !1320, line: 859, baseType: !126, size: 128, offset: 8512)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1319, file: !1320, line: 860, baseType: !117, size: 32, offset: 8640)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1319, file: !1320, line: 861, baseType: !126, size: 128, offset: 8704)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1319, file: !1320, line: 873, baseType: !1585, size: 256, offset: 8832)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1320, line: 376, size: 256, elements: !1586)
!1586 = !{!1587, !1588, !1589, !1590}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1585, file: !1320, line: 381, baseType: !119, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1585, file: !1320, line: 384, baseType: !389, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1585, file: !1320, line: 389, baseType: !389, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1585, file: !1320, line: 392, baseType: !389, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1319, file: !1320, line: 875, baseType: !126, size: 128, offset: 9088)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1319, file: !1320, line: 877, baseType: !1593, size: 320, offset: 9216)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1594, line: 86, size: 320, elements: !1595)
!1594 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1595 = !{!1596, !1597, !1598}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1593, file: !1594, line: 87, baseType: !117, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1593, file: !1594, line: 88, baseType: !126, size: 128, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1593, file: !1594, line: 89, baseType: !126, size: 128, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1319, file: !1320, line: 878, baseType: !585, size: 192, align: 64, offset: 9536)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1319, file: !1320, line: 881, baseType: !339, size: 64, offset: 9728)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1319, file: !1320, line: 882, baseType: !339, size: 64, offset: 9792)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1319, file: !1320, line: 884, baseType: !117, size: 32, offset: 9856)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1319, file: !1320, line: 885, baseType: !117, size: 32, offset: 9888)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1319, file: !1320, line: 886, baseType: !117, size: 32, offset: 9920)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1319, file: !1320, line: 888, baseType: !117, size: 32, offset: 9952)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1319, file: !1320, line: 890, baseType: !119, size: 64, offset: 9984)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1319, file: !1320, line: 893, baseType: !7, size: 32, offset: 10048)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1319, file: !1320, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1319, file: !1320, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1319, file: !1320, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1319, file: !1320, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1319, file: !1320, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1319, file: !1320, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1319, file: !1320, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1319, file: !1320, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1319, file: !1320, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1319, file: !1320, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1319, file: !1320, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1319, file: !1320, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1319, file: !1320, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1319, file: !1320, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1319, file: !1320, line: 969, baseType: !119, size: 64, offset: 10176)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1319, file: !1320, line: 971, baseType: !1624, size: 448, offset: 10240)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 448, elements: !1625)
!1625 = !{!1626, !1627, !1632}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1624, file: !25, line: 26, baseType: !119, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1624, file: !25, line: 27, baseType: !1628, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!120, !1631}
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !25, line: 28, baseType: !1633, size: 320, offset: 128)
!1633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !25, line: 28, size: 320, elements: !1634)
!1634 = !{!1635, !1645, !1670}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1633, file: !25, line: 37, baseType: !1636, size: 320)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1633, file: !25, line: 30, size: 320, elements: !1637)
!1637 = !{!1638, !1640, !1641, !1642, !1643, !1644}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1636, file: !25, line: 31, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1636, file: !25, line: 32, baseType: !1067, size: 32, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1636, file: !25, line: 33, baseType: !1067, size: 32, offset: 96)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1636, file: !25, line: 34, baseType: !1067, size: 32, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1636, file: !25, line: 35, baseType: !387, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1636, file: !25, line: 36, baseType: !1639, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1633, file: !25, line: 47, baseType: !1646, size: 192)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1633, file: !25, line: 39, size: 192, elements: !1647)
!1647 = !{!1648, !1649, !1650, !1669}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1646, file: !25, line: 40, baseType: !1482, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1646, file: !25, line: 41, baseType: !24, size: 32, offset: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !25, line: 42, baseType: !1651, size: 64, offset: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1646, file: !25, line: 42, size: 64, elements: !1652)
!1652 = !{!1653, !1661}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1651, file: !25, line: 43, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1656, line: 7, size: 128, elements: !1657)
!1656 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1657 = !{!1658, !1660}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1655, file: !1656, line: 8, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !260, line: 93, baseType: !312)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1655, file: !1656, line: 9, baseType: !312, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1651, file: !25, line: 44, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1664, line: 7, size: 64, elements: !1665)
!1664 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1665 = !{!1666, !1668}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1663, file: !1664, line: 8, baseType: !1667, size: 32)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1664, line: 5, baseType: !460)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1663, file: !1664, line: 9, baseType: !460, size: 32, offset: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1646, file: !25, line: 46, baseType: !387, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1633, file: !25, line: 55, baseType: !1671, size: 256)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1633, file: !25, line: 49, size: 256, elements: !1672)
!1672 = !{!1673, !1676, !1677, !1678, !1679}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1671, file: !25, line: 50, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1671, file: !25, line: 51, baseType: !117, size: 32, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1671, file: !25, line: 52, baseType: !117, size: 32, offset: 96)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1671, file: !25, line: 53, baseType: !119, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1671, file: !25, line: 54, baseType: !119, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1319, file: !1320, line: 973, baseType: !1681, size: 32, offset: 10688)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !127, line: 27, baseType: !1682)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !260, line: 28, baseType: !117)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1319, file: !1320, line: 974, baseType: !1681, size: 32, offset: 10720)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1319, file: !1320, line: 978, baseType: !119, size: 64, offset: 10752)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1319, file: !1320, line: 987, baseType: !1318, size: 64, offset: 10816)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1319, file: !1320, line: 990, baseType: !1318, size: 64, offset: 10880)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1319, file: !1320, line: 995, baseType: !126, size: 128, offset: 10944)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1319, file: !1320, line: 996, baseType: !126, size: 128, offset: 11072)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1319, file: !1320, line: 997, baseType: !1318, size: 64, offset: 11200)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1319, file: !1320, line: 1005, baseType: !126, size: 128, offset: 11264)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1319, file: !1320, line: 1006, baseType: !126, size: 128, offset: 11392)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1319, file: !1320, line: 1009, baseType: !1693, size: 64, offset: 11520)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1695, line: 59, size: 768, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1696 = !{!1697, !1698, !1699, !1700, !1705, !1706, !1713, !1714}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1694, file: !1695, line: 61, baseType: !787, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1694, file: !1695, line: 62, baseType: !7, size: 32, offset: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1694, file: !1695, line: 63, baseType: !156, size: 32, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1694, file: !1695, line: 65, baseType: !1701, size: 256, offset: 128)
!1701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1702, size: 256, elements: !462)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !127, line: 194, size: 64, elements: !1703)
!1703 = !{!1704}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1702, file: !127, line: 195, baseType: !1057, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1694, file: !1695, line: 66, baseType: !1702, size: 64, offset: 384)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1694, file: !1695, line: 68, baseType: !1707, size: 192, offset: 448)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1708, line: 41, baseType: !1709)
!1708 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1708, line: 37, size: 192, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1709, file: !1708, line: 38, baseType: !156, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1709, file: !1708, line: 39, baseType: !126, size: 128, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1694, file: !1695, line: 69, baseType: !330, size: 128, align: 64, offset: 640)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1694, file: !1695, line: 70, baseType: !1715, offset: 768)
!1715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1716, elements: !557)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1695, line: 54, size: 128, elements: !1717)
!1717 = !{!1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1716, file: !1695, line: 55, baseType: !117, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1716, file: !1695, line: 56, baseType: !1720, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1695, line: 56, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1319, file: !1320, line: 1010, baseType: !1723, size: 512, offset: 11584)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1054, size: 512, elements: !462)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1319, file: !1320, line: 1011, baseType: !126, size: 128, offset: 12096)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1319, file: !1320, line: 1012, baseType: !126, size: 128, offset: 12224)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1319, file: !1320, line: 1014, baseType: !803, size: 64, offset: 12352)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1319, file: !1320, line: 1017, baseType: !116, size: 64, offset: 12416)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1319, file: !1320, line: 1020, baseType: !116, size: 64, offset: 12480)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1319, file: !1320, line: 1023, baseType: !118, size: 64, offset: 12544)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1319, file: !1320, line: 1025, baseType: !387, size: 64, offset: 12608)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1319, file: !1320, line: 1026, baseType: !387, size: 64, offset: 12672)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1319, file: !1320, line: 1031, baseType: !387, size: 64, offset: 12736)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1319, file: !1320, line: 1032, baseType: !1734, size: 192, offset: 12800)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1320, line: 324, size: 192, elements: !1735)
!1735 = !{!1736, !1737, !1738}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1734, file: !1320, line: 326, baseType: !387, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1734, file: !1320, line: 327, baseType: !387, size: 64, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1734, file: !1320, line: 328, baseType: !415, size: 32, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1319, file: !1320, line: 1041, baseType: !119, size: 64, offset: 12992)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1319, file: !1320, line: 1042, baseType: !119, size: 64, offset: 13056)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1319, file: !1320, line: 1045, baseType: !387, size: 64, offset: 13120)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1319, file: !1320, line: 1048, baseType: !387, size: 64, offset: 13184)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1319, file: !1320, line: 1051, baseType: !119, size: 64, offset: 13248)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1319, file: !1320, line: 1052, baseType: !119, size: 64, offset: 13312)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1319, file: !1320, line: 1055, baseType: !1746, size: 640, offset: 13376)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1747, line: 132, size: 640, elements: !1748)
!1747 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1748 = !{!1749, !1755, !1756}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1746, file: !1747, line: 133, baseType: !1750, size: 576)
!1750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1751, size: 576, elements: !227)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1747, line: 117, size: 192, elements: !1752)
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1751, file: !1747, line: 118, baseType: !387, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1751, file: !1747, line: 119, baseType: !1491, size: 128, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1746, file: !1747, line: 134, baseType: !7, size: 32, offset: 576)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1746, file: !1747, line: 135, baseType: !7, size: 32, offset: 608)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1319, file: !1320, line: 1058, baseType: !1758, size: 448, offset: 14016)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1747, line: 144, size: 448, elements: !1759)
!1759 = !{!1760, !1761, !1762}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1758, file: !1747, line: 145, baseType: !330, size: 128, align: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1758, file: !1747, line: 146, baseType: !481, size: 256, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1758, file: !1747, line: 147, baseType: !7, size: 32, offset: 384)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1319, file: !1320, line: 1064, baseType: !1764, size: 64, offset: 14464)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1766)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1320, line: 1064, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1319, file: !1320, line: 1067, baseType: !1764, size: 64, offset: 14528)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1319, file: !1320, line: 1070, baseType: !1764, size: 64, offset: 14592)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1319, file: !1320, line: 1074, baseType: !1770, size: 64, offset: 14656)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1320, line: 1074, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1319, file: !1320, line: 1084, baseType: !1773, size: 128, offset: 14720)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 128, elements: !1774)
!1774 = !{!1775}
!1775 = !DISubrange(count: 16)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1319, file: !1320, line: 1086, baseType: !1777, size: 64, offset: 14848)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1320, line: 55, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1319, file: !1320, line: 1089, baseType: !1780, size: 64, offset: 14912)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1781, line: 12, size: 64, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1782 = !{!1783}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1780, file: !1781, line: 13, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1781, line: 8, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1319, file: !1320, line: 1090, baseType: !1787, size: 128, offset: 14976)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1788, line: 13, size: 128, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1789 = !{!1790}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1787, file: !1788, line: 14, baseType: !126, size: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1319, file: !1320, line: 1097, baseType: !1792, size: 64, offset: 15104)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1320, line: 50, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1319, file: !1320, line: 1100, baseType: !1795, size: 64, offset: 15168)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1320, line: 1100, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1319, file: !1320, line: 1103, baseType: !1798, size: 64, offset: 15232)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1320, line: 53, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1319, file: !1320, line: 1107, baseType: !1801, size: 64, offset: 15296)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1320, line: 56, flags: DIFlagFwdDecl)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1319, file: !1320, line: 1110, baseType: !1804, size: 64, offset: 15360)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1747, line: 236, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1319, file: !1320, line: 1111, baseType: !1807, size: 64, offset: 15424)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1320, line: 67, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1319, file: !1320, line: 1112, baseType: !1810, size: 64, offset: 15488)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1811, line: 25, baseType: !1812)
!1811 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1811, line: 23, size: 64, elements: !1813)
!1813 = !{!1814}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1812, file: !1811, line: 24, baseType: !1199, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1319, file: !1320, line: 1113, baseType: !1810, size: 64, offset: 15552)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1319, file: !1320, line: 1115, baseType: !1810, size: 64, offset: 15616)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1319, file: !1320, line: 1116, baseType: !1818, size: 192, offset: 15680)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1819, line: 32, size: 192, elements: !1820)
!1819 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1818, file: !1819, line: 33, baseType: !126, size: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1818, file: !1819, line: 34, baseType: !1810, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1319, file: !1320, line: 1117, baseType: !119, size: 64, offset: 15872)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1319, file: !1320, line: 1118, baseType: !272, size: 64, offset: 15936)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1319, file: !1320, line: 1119, baseType: !7, size: 32, offset: 16000)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1319, file: !1320, line: 1121, baseType: !333, size: 64, offset: 16064)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1319, file: !1320, line: 1125, baseType: !1828, size: 64, offset: 16128)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1320, line: 43, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1319, file: !1320, line: 1127, baseType: !654, size: 32, offset: 16192)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1319, file: !1320, line: 1128, baseType: !7, size: 32, offset: 16224)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1319, file: !1320, line: 1130, baseType: !1833, size: 128, offset: 16256)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1834, line: 37, size: 128, elements: !1835)
!1834 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1835 = !{!1836, !1837, !1838}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1833, file: !1834, line: 38, baseType: !117, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1833, file: !1834, line: 39, baseType: !176, size: 32, offset: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1833, file: !1834, line: 40, baseType: !1839, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1834, line: 24, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1319, file: !1320, line: 1131, baseType: !1842, size: 256, offset: 16384)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1843, line: 12, size: 256, elements: !1844)
!1843 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1844 = !{!1845, !1846, !1847, !1848}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1842, file: !1843, line: 13, baseType: !226, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1842, file: !1843, line: 14, baseType: !119, size: 64, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1842, file: !1843, line: 15, baseType: !119, size: 64, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1842, file: !1843, line: 16, baseType: !579, size: 8, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1319, file: !1320, line: 1134, baseType: !387, size: 64, offset: 16640)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1319, file: !1320, line: 1135, baseType: !387, size: 64, offset: 16704)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1319, file: !1320, line: 1138, baseType: !156, size: 32, offset: 16768)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1319, file: !1320, line: 1141, baseType: !415, size: 32, offset: 16800)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1319, file: !1320, line: 1143, baseType: !1854, size: 64, offset: 16832)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1320, line: 735, size: 64, elements: !1855)
!1855 = !{!1856}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1854, file: !1320, line: 736, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1319, file: !1320, line: 1147, baseType: !1494, size: 128, offset: 16896)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1319, file: !1320, line: 1149, baseType: !1318, size: 64, offset: 17024)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1319, file: !1320, line: 1151, baseType: !1861, size: 64, offset: 17088)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1320, line: 1151, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1319, file: !1320, line: 1188, baseType: !118, size: 64, offset: 17152)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1319, file: !1320, line: 1191, baseType: !1865, size: 64, offset: 17216)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1320, line: 44, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1319, file: !1320, line: 1194, baseType: !1868, size: 64, offset: 17280)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1320, line: 45, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1319, file: !1320, line: 1197, baseType: !1871, size: 64, offset: 17344)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1320, line: 61, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1319, file: !1320, line: 1199, baseType: !1874, size: 64, offset: 17408)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1320, line: 52, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1319, file: !1320, line: 1202, baseType: !1877, size: 64, offset: 17472)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1320, line: 48, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1319, file: !1320, line: 1205, baseType: !119, size: 64, offset: 17536)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1319, file: !1320, line: 1206, baseType: !1881, size: 64, offset: 17600)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1819, line: 14, baseType: !1883)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1819, line: 12, size: 384, elements: !1884)
!1884 = !{!1885}
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1883, file: !1819, line: 13, baseType: !1886, size: 384)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !1819, line: 13, size: 384, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1886, file: !1819, line: 13, baseType: !117, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1886, file: !1819, line: 13, baseType: !117, size: 32, offset: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1886, file: !1819, line: 13, baseType: !117, size: 32, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1886, file: !1819, line: 13, baseType: !1892, size: 256, offset: 128)
!1892 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1893, line: 37, size: 256, elements: !1894)
!1893 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1894 = !{!1895, !1900, !1913, !1919, !1928, !1955, !1960}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1892, file: !1893, line: 42, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1893, line: 39, size: 64, elements: !1897)
!1897 = !{!1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1896, file: !1893, line: 40, baseType: !1682, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1896, file: !1893, line: 41, baseType: !660, size: 32, offset: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1892, file: !1893, line: 50, baseType: !1901, size: 192)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1893, line: 45, size: 192, elements: !1902)
!1902 = !{!1903, !1905, !1906, !1912}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1901, file: !1893, line: 46, baseType: !1904, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !260, line: 95, baseType: !117)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1901, file: !1893, line: 47, baseType: !117, size: 32, offset: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1901, file: !1893, line: 48, baseType: !1907, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1893, line: 11, baseType: !1908)
!1908 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1893, line: 8, size: 64, elements: !1909)
!1909 = !{!1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1908, file: !1893, line: 9, baseType: !117, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1908, file: !1893, line: 10, baseType: !118, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1901, file: !1893, line: 49, baseType: !117, size: 32, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1892, file: !1893, line: 57, baseType: !1914, size: 128)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1893, line: 53, size: 128, elements: !1915)
!1915 = !{!1916, !1917, !1918}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1914, file: !1893, line: 54, baseType: !1682, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1914, file: !1893, line: 55, baseType: !660, size: 32, offset: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1914, file: !1893, line: 56, baseType: !1907, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1892, file: !1893, line: 66, baseType: !1920, size: 256)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1893, line: 60, size: 256, elements: !1921)
!1921 = !{!1922, !1923, !1924, !1925, !1927}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1920, file: !1893, line: 61, baseType: !1682, size: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1920, file: !1893, line: 62, baseType: !660, size: 32, offset: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1920, file: !1893, line: 63, baseType: !117, size: 32, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1920, file: !1893, line: 64, baseType: !1926, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !260, line: 94, baseType: !261)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1920, file: !1893, line: 65, baseType: !1926, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1892, file: !1893, line: 105, baseType: !1929, size: 256)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1893, line: 69, size: 256, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1929, file: !1893, line: 70, baseType: !118, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, scope: !1929, file: !1893, line: 79, baseType: !1933, size: 192, offset: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1929, file: !1893, line: 79, size: 192, elements: !1934)
!1934 = !{!1935, !1936, !1937, !1944, !1949}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1933, file: !1893, line: 81, baseType: !117, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1933, file: !1893, line: 86, baseType: !521, size: 16)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1933, file: !1893, line: 92, baseType: !1938, size: 192)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1933, file: !1893, line: 88, size: 192, elements: !1939)
!1939 = !{!1940, !1942, !1943}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1938, file: !1893, line: 89, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 64, elements: !1478)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1938, file: !1893, line: 90, baseType: !118, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1938, file: !1893, line: 91, baseType: !118, size: 64, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1933, file: !1893, line: 97, baseType: !1945, size: 96)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1933, file: !1893, line: 94, size: 96, elements: !1946)
!1946 = !{!1947, !1948}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1945, file: !1893, line: 95, baseType: !1941, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1945, file: !1893, line: 96, baseType: !985, size: 32, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1933, file: !1893, line: 103, baseType: !1950, size: 128)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1933, file: !1893, line: 99, size: 128, elements: !1951)
!1951 = !{!1952, !1953, !1954}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1950, file: !1893, line: 100, baseType: !119, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1950, file: !1893, line: 101, baseType: !985, size: 32, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1950, file: !1893, line: 102, baseType: !985, size: 32, offset: 96)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1892, file: !1893, line: 111, baseType: !1956, size: 128)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1893, line: 108, size: 128, elements: !1957)
!1957 = !{!1958, !1959}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1956, file: !1893, line: 109, baseType: !120, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1956, file: !1893, line: 110, baseType: !117, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1892, file: !1893, line: 118, baseType: !1961, size: 128)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1892, file: !1893, line: 114, size: 128, elements: !1962)
!1962 = !{!1963, !1964, !1965}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1961, file: !1893, line: 115, baseType: !118, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1961, file: !1893, line: 116, baseType: !117, size: 32, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1961, file: !1893, line: 117, baseType: !7, size: 32, offset: 96)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1319, file: !1320, line: 1208, baseType: !1967, size: 448, offset: 17664)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1968, line: 12, size: 448, elements: !1969)
!1968 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1969 = !{!1970, !1971, !1972, !1973, !1974, !1975, !1976}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1967, file: !1968, line: 15, baseType: !387, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1967, file: !1968, line: 17, baseType: !387, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1967, file: !1968, line: 19, baseType: !387, size: 64, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1967, file: !1968, line: 21, baseType: !387, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1967, file: !1968, line: 29, baseType: !387, size: 64, offset: 256)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1967, file: !1968, line: 35, baseType: !387, size: 64, offset: 320)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1967, file: !1968, line: 44, baseType: !387, size: 64, offset: 384)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1319, file: !1320, line: 1215, baseType: !387, size: 64, offset: 18112)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1319, file: !1320, line: 1217, baseType: !387, size: 64, offset: 18176)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1319, file: !1320, line: 1219, baseType: !387, size: 64, offset: 18240)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1319, file: !1320, line: 1223, baseType: !1981, size: 64, offset: 18304)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1982, line: 99, baseType: !1983)
!1982 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1982, line: 99, size: 64, elements: !1984)
!1984 = !{!1985}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1983, file: !1982, line: 99, baseType: !1199, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1319, file: !1320, line: 1225, baseType: !1987, size: 32, offset: 18368)
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !430, line: 275, baseType: !1988)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !430, line: 275, size: 32, elements: !1989)
!1989 = !{!1990}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1988, file: !430, line: 275, baseType: !429, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1319, file: !1320, line: 1226, baseType: !117, size: 32, offset: 18400)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1319, file: !1320, line: 1227, baseType: !117, size: 32, offset: 18432)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1319, file: !1320, line: 1231, baseType: !1994, size: 64, offset: 18496)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1320, line: 1231, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1319, file: !1320, line: 1233, baseType: !126, size: 128, offset: 18560)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1319, file: !1320, line: 1240, baseType: !1998, size: 64, offset: 18688)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1320, line: 62, flags: DIFlagFwdDecl)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1319, file: !1320, line: 1242, baseType: !2001, size: 64, offset: 18752)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1320, line: 1242, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1319, file: !1320, line: 1244, baseType: !126, size: 128, offset: 18816)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1319, file: !1320, line: 1245, baseType: !2005, size: 64, offset: 18944)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1320, line: 51, flags: DIFlagFwdDecl)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1319, file: !1320, line: 1246, baseType: !481, size: 256, offset: 19008)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1319, file: !1320, line: 1247, baseType: !7, size: 32, offset: 19264)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1319, file: !1320, line: 1250, baseType: !2010, size: 64, offset: 19328)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1320, line: 57, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1319, file: !1320, line: 1251, baseType: !481, size: 256, offset: 19392)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1319, file: !1320, line: 1252, baseType: !126, size: 128, offset: 19648)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1319, file: !1320, line: 1259, baseType: !606, size: 64, offset: 19776)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1319, file: !1320, line: 1260, baseType: !521, size: 16, offset: 19840)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1319, file: !1320, line: 1261, baseType: !521, size: 16, offset: 19856)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1319, file: !1320, line: 1314, baseType: !2018, size: 64, offset: 19904)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2020, line: 62, size: 256, align: 256, elements: !2021)
!2020 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2021 = !{!2022, !2023, !2024, !2025, !2026, !2027, !2028}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2019, file: !2020, line: 75, baseType: !985, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2019, file: !2020, line: 90, baseType: !985, size: 32, offset: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2019, file: !2020, line: 112, baseType: !388, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2019, file: !2020, line: 132, baseType: !985, size: 32, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2019, file: !2020, line: 140, baseType: !985, size: 32, offset: 160)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2019, file: !2020, line: 149, baseType: !985, size: 32, offset: 192)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2019, file: !2020, line: 154, baseType: !2029, offset: 224)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, elements: !557)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1319, file: !1320, line: 1315, baseType: !1067, size: 32, offset: 19968)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1319, file: !1320, line: 1316, baseType: !1067, size: 32, offset: 20000)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1319, file: !1320, line: 1321, baseType: !119, size: 64, offset: 20032)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1319, file: !1320, line: 1325, baseType: !117, size: 32, offset: 20096)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1319, file: !1320, line: 1326, baseType: !117, size: 32, offset: 20128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1319, file: !1320, line: 1327, baseType: !117, size: 32, offset: 20160)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1319, file: !1320, line: 1328, baseType: !117, size: 32, offset: 20192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1319, file: !1320, line: 1329, baseType: !330, size: 128, align: 64, offset: 20224)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1319, file: !1320, line: 1332, baseType: !2039, size: 128, offset: 20352)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2040, line: 51, size: 128, elements: !2041)
!2040 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2041 = !{!2042, !2047, !2048}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2039, file: !2040, line: 60, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2044, line: 7, size: 64, elements: !2045)
!2044 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2045 = !{!2046}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2043, file: !2044, line: 12, baseType: !1196, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2039, file: !2040, line: 63, baseType: !579, size: 8, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2039, file: !2040, line: 70, baseType: !579, size: 8, offset: 72)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1319, file: !1320, line: 1335, baseType: !2050, size: 64, offset: 20480)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1320, line: 59, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1319, file: !1320, line: 1337, baseType: !2053, size: 128, offset: 20544)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2040, line: 39, size: 128, elements: !2054)
!2054 = !{!2055, !2116, !2117}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2053, file: !2040, line: 40, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !302, line: 74, size: 512, align: 128, elements: !2058)
!2058 = !{!2059, !2060, !2110, !2115}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2057, file: !302, line: 75, baseType: !119, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, scope: !2057, file: !302, line: 83, baseType: !2061, size: 320, offset: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2057, file: !302, line: 83, size: 320, elements: !2062)
!2062 = !{!2063, !2084, !2098, !2102, !2109}
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !302, line: 84, baseType: !2064, size: 320)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !302, line: 84, size: 320, elements: !2065)
!2065 = !{!2066, !2077, !2078, !2083}
!2066 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !302, line: 90, baseType: !2067, size: 128)
!2067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !302, line: 90, size: 128, elements: !2068)
!2068 = !{!2069, !2070, !2075, !2076}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2067, file: !302, line: 91, baseType: !126, size: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, scope: !2067, file: !302, line: 94, baseType: !2071, size: 128)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2067, file: !302, line: 94, size: 128, elements: !2072)
!2072 = !{!2073, !2074}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2071, file: !302, line: 96, baseType: !118, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2071, file: !302, line: 98, baseType: !7, size: 32, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2067, file: !302, line: 102, baseType: !126, size: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2067, file: !302, line: 103, baseType: !126, size: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2064, file: !302, line: 106, baseType: !300, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !302, line: 107, baseType: !2079, size: 64, offset: 192)
!2079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !302, line: 107, size: 64, elements: !2080)
!2080 = !{!2081, !2082}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2079, file: !302, line: 108, baseType: !119, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2079, file: !302, line: 109, baseType: !119, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2064, file: !302, line: 117, baseType: !119, size: 64, offset: 256)
!2084 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !302, line: 119, baseType: !2085, size: 320)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !302, line: 119, size: 320, elements: !2086)
!2086 = !{!2087, !2088, !2091, !2092, !2093}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2085, file: !302, line: 124, baseType: !119, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2085, file: !302, line: 125, baseType: !2089, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !302, line: 125, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2085, file: !302, line: 126, baseType: !119, size: 64, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2085, file: !302, line: 127, baseType: !119, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, scope: !2085, file: !302, line: 128, baseType: !2094, size: 64, offset: 256)
!2094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2085, file: !302, line: 128, size: 64, elements: !2095)
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2094, file: !302, line: 133, baseType: !119, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2094, file: !302, line: 138, baseType: !393, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !302, line: 141, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !302, line: 141, size: 64, elements: !2100)
!2100 = !{!2101}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2099, file: !302, line: 142, baseType: !119, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !302, line: 144, baseType: !2103, size: 128)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !302, line: 144, size: 128, elements: !2104)
!2104 = !{!2105, !2108}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2103, file: !302, line: 146, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !302, line: 146, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2103, file: !302, line: 147, baseType: !118, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2061, file: !302, line: 161, baseType: !330, size: 128, align: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, scope: !2057, file: !302, line: 164, baseType: !2111, size: 32, offset: 384)
!2111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2057, file: !302, line: 164, size: 32, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2111, file: !302, line: 169, baseType: !176, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2111, file: !302, line: 177, baseType: !7, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2057, file: !302, line: 181, baseType: !176, size: 32, offset: 416)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2053, file: !2040, line: 42, baseType: !985, size: 32, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2053, file: !2040, line: 43, baseType: !985, size: 32, offset: 96)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1319, file: !1320, line: 1340, baseType: !2119, size: 64, offset: 20672)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1320, line: 69, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1319, file: !1320, line: 1351, baseType: !117, size: 32, offset: 20736)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1319, file: !1320, line: 1352, baseType: !117, size: 32, offset: 20768)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1319, file: !1320, line: 1354, baseType: !119, size: 64, offset: 20800)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1319, file: !1320, line: 1364, baseType: !387, size: 64, offset: 20864)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1319, file: !1320, line: 1365, baseType: !387, size: 64, offset: 20928)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1319, file: !1320, line: 1412, baseType: !119, size: 64, offset: 20992)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1319, file: !1320, line: 1453, baseType: !2128, size: 64, offset: 21056)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1320, line: 1453, flags: DIFlagFwdDecl)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1319, file: !1320, line: 1457, baseType: !2131, size: 64, offset: 21120)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !31, line: 61, size: 576, elements: !2133)
!2133 = !{!2134, !2135, !2154, !2157, !2158, !2191, !2201}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2132, file: !31, line: 62, baseType: !30, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, scope: !2132, file: !31, line: 64, baseType: !2136, size: 192, offset: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2132, file: !31, line: 64, size: 192, elements: !2137)
!2137 = !{!2138, !2149}
!2138 = !DIDerivedType(tag: DW_TAG_member, scope: !2136, file: !31, line: 65, baseType: !2139, size: 192)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2136, file: !31, line: 65, size: 192, elements: !2140)
!2140 = !{!2141, !2148}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2139, file: !31, line: 66, baseType: !2142, size: 128)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2143, line: 50, size: 128, elements: !2144)
!2143 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2144 = !{!2145, !2146, !2147}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2142, file: !2143, line: 52, baseType: !119, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2142, file: !2143, line: 54, baseType: !7, size: 32, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2142, file: !2143, line: 55, baseType: !7, size: 32, offset: 96)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2139, file: !31, line: 67, baseType: !119, size: 64, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, scope: !2136, file: !31, line: 70, baseType: !2150, size: 192)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2136, file: !31, line: 70, size: 192, elements: !2151)
!2151 = !{!2152, !2153}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2150, file: !31, line: 71, baseType: !330, size: 128, align: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2150, file: !31, line: 72, baseType: !119, size: 64, offset: 128)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2132, file: !31, line: 76, baseType: !2155, size: 64, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !31, line: 76, flags: DIFlagFwdDecl)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2132, file: !31, line: 77, baseType: !119, size: 64, offset: 320)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2132, file: !31, line: 79, baseType: !2159, size: 64, offset: 384)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2143, line: 25, size: 256, elements: !2161)
!2161 = !{!2162, !2168, !2172}
!2162 = !DIDerivedType(tag: DW_TAG_member, scope: !2160, file: !2143, line: 26, baseType: !2163, size: 128)
!2163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2160, file: !2143, line: 26, size: 128, elements: !2164)
!2164 = !{!2165, !2167}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2163, file: !2143, line: 27, baseType: !2166, size: 128)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 128, elements: !1774)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2163, file: !2143, line: 28, baseType: !2166, size: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2160, file: !2143, line: 31, baseType: !2169, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2171)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2143, line: 23, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, scope: !2160, file: !2143, line: 33, baseType: !2173, size: 64, offset: 192)
!2173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2160, file: !2143, line: 33, size: 64, elements: !2174)
!2174 = !{!2175, !2181, !2186}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2173, file: !2143, line: 38, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2173, file: !2143, line: 34, size: 64, elements: !2177)
!2177 = !{!2178, !2179, !2180}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2176, file: !2143, line: 35, baseType: !460, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2176, file: !2143, line: 36, baseType: !184, size: 8, offset: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2176, file: !2143, line: 37, baseType: !184, size: 8, offset: 40)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2173, file: !2143, line: 42, baseType: !2182, size: 16)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2173, file: !2143, line: 39, size: 16, elements: !2183)
!2183 = !{!2184, !2185}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2182, file: !2143, line: 40, baseType: !184, size: 8)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2182, file: !2143, line: 41, baseType: !184, size: 8, offset: 8)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2173, file: !2143, line: 46, baseType: !2187, size: 16)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2173, file: !2143, line: 43, size: 16, elements: !2188)
!2188 = !{!2189, !2190}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2187, file: !2143, line: 44, baseType: !184, size: 8)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2187, file: !2143, line: 45, baseType: !184, size: 8, offset: 8)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2132, file: !31, line: 81, baseType: !2192, size: 64, offset: 448)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !31, line: 85, size: 384, elements: !2194)
!2194 = !{!2195, !2196, !2197, !2198, !2199, !2200}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2193, file: !31, line: 86, baseType: !2155, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2193, file: !31, line: 87, baseType: !119, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2193, file: !31, line: 88, baseType: !119, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2193, file: !31, line: 89, baseType: !119, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2193, file: !31, line: 90, baseType: !579, size: 8, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2193, file: !31, line: 92, baseType: !2192, size: 64, offset: 320)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2132, file: !31, line: 82, baseType: !7, size: 32, offset: 512)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1319, file: !1320, line: 1463, baseType: !2203, offset: 21184)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1320, line: 739, elements: !360)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1319, file: !1320, line: 1470, baseType: !330, size: 128, align: 64, offset: 21184)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1319, file: !1320, line: 1471, baseType: !787, size: 32, offset: 21312)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1319, file: !1320, line: 1472, baseType: !117, size: 32, offset: 21344)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1319, file: !1320, line: 1474, baseType: !1318, size: 64, offset: 21376)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1319, file: !1320, line: 1475, baseType: !1050, size: 320, offset: 21440)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1319, file: !1320, line: 1478, baseType: !2210, size: 64, offset: 21760)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2212, line: 49, size: 512, elements: !2213)
!2212 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2213 = !{!2214, !2215, !2216, !2217, !2218, !2220, !2221, !2222, !2224}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2211, file: !2212, line: 50, baseType: !2210, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2211, file: !2212, line: 51, baseType: !118, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2211, file: !2212, line: 52, baseType: !119, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2211, file: !2212, line: 53, baseType: !119, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2211, file: !2212, line: 54, baseType: !2219, size: 64, offset: 256)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2211, file: !2212, line: 56, baseType: !7, size: 32, offset: 320)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2211, file: !2212, line: 58, baseType: !7, size: 32, offset: 352)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2211, file: !2212, line: 59, baseType: !2223, size: 64, offset: 384)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !127, line: 159, baseType: !387)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2211, file: !2212, line: 60, baseType: !502, size: 64, offset: 448)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1319, file: !1320, line: 1482, baseType: !787, size: 32, offset: 21824)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1319, file: !1320, line: 1489, baseType: !118, size: 64, offset: 21888)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1319, file: !1320, line: 1504, baseType: !118, size: 64, offset: 21952)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1319, file: !1320, line: 1505, baseType: !388, size: 64, offset: 22016)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1319, file: !1320, line: 1506, baseType: !387, size: 64, offset: 22080)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1319, file: !1320, line: 1507, baseType: !388, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1319, file: !1320, line: 1508, baseType: !388, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1319, file: !1320, line: 1509, baseType: !388, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1319, file: !1320, line: 1510, baseType: !330, size: 128, align: 64, offset: 22208)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1319, file: !1320, line: 1511, baseType: !117, size: 32, offset: 22336)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1319, file: !1320, line: 1515, baseType: !2236, size: 64, offset: 22400)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1342, line: 56, size: 64, elements: !2237)
!2237 = !{!2238}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2236, file: !1342, line: 57, baseType: !1345, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1319, file: !1320, line: 1518, baseType: !2236, size: 64, offset: 22464)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1319, file: !1320, line: 1528, baseType: !330, size: 128, align: 64, offset: 22528)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1319, file: !1320, line: 1552, baseType: !2242, size: 35328, offset: 23040)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2243, line: 430, size: 35328, elements: !2244)
!2243 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2244 = !{!2245, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2274, !2275, !2276, !2277, !2278, !2279, !2282, !2283, !2284, !2285}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2242, file: !2243, line: 432, baseType: !2246, size: 192)
!2246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2247, size: 192, elements: !227)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2248, line: 16, size: 64, elements: !2249)
!2248 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2249 = !{!2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2247, file: !2248, line: 17, baseType: !194, size: 16)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2247, file: !2248, line: 18, baseType: !194, size: 16, offset: 16)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2247, file: !2248, line: 19, baseType: !194, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2247, file: !2248, line: 19, baseType: !194, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2247, file: !2248, line: 19, baseType: !194, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2247, file: !2248, line: 19, baseType: !194, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2247, file: !2248, line: 19, baseType: !194, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2247, file: !2248, line: 20, baseType: !194, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2247, file: !2248, line: 20, baseType: !194, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2247, file: !2248, line: 20, baseType: !194, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2247, file: !2248, line: 20, baseType: !194, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2247, file: !2248, line: 20, baseType: !194, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2247, file: !2248, line: 20, baseType: !194, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2242, file: !2243, line: 436, baseType: !119, size: 64, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2242, file: !2243, line: 440, baseType: !196, size: 16, offset: 256)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2242, file: !2243, line: 441, baseType: !196, size: 16, offset: 272)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2242, file: !2243, line: 442, baseType: !196, size: 16, offset: 288)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2242, file: !2243, line: 443, baseType: !196, size: 16, offset: 304)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2242, file: !2243, line: 447, baseType: !119, size: 64, offset: 320)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2242, file: !2243, line: 448, baseType: !119, size: 64, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2242, file: !2243, line: 459, baseType: !2271, size: 256, offset: 448)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2272, size: 256, elements: !462)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2243, line: 428, flags: DIFlagFwdDecl)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2242, file: !2243, line: 461, baseType: !119, size: 64, offset: 704)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2242, file: !2243, line: 463, baseType: !119, size: 64, offset: 768)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2242, file: !2243, line: 465, baseType: !119, size: 64, offset: 832)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2242, file: !2243, line: 466, baseType: !119, size: 64, offset: 896)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2242, file: !2243, line: 467, baseType: !119, size: 64, offset: 960)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2242, file: !2243, line: 473, baseType: !2280, size: 64, offset: 1024)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2243, line: 10, flags: DIFlagFwdDecl)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2242, file: !2243, line: 480, baseType: !119, size: 64, offset: 1088)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2242, file: !2243, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2242, file: !2243, line: 491, baseType: !1067, size: 32, offset: 1184)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2242, file: !2243, line: 501, baseType: !2286, size: 33792, offset: 1536)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2287, line: 448, size: 33792, elements: !2288)
!2287 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2288 = !{!2289, !2290, !2291, !2457, !2458, !2464, !2465}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2286, file: !2287, line: 461, baseType: !7, size: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2286, file: !2287, line: 468, baseType: !119, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2286, file: !2287, line: 476, baseType: !2292, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2287, line: 356, size: 33280, align: 512, elements: !2294)
!2294 = !{!2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2293, file: !2287, line: 358, baseType: !7, size: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2293, file: !2287, line: 361, baseType: !7, size: 32, offset: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2293, file: !2287, line: 364, baseType: !387, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2293, file: !2287, line: 367, baseType: !387, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2293, file: !2287, line: 370, baseType: !387, size: 64, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2293, file: !2287, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2293, file: !2287, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2293, file: !2287, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2293, file: !2287, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2293, file: !2287, line: 397, baseType: !2305, size: 32768, offset: 512)
!2305 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2287, line: 348, size: 32768, elements: !2306)
!2306 = !{!2307, !2322, !2361, !2438, !2453}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2305, file: !2287, line: 349, baseType: !2308, size: 896)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2287, line: 12, size: 896, elements: !2309)
!2309 = !{!2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2321}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2308, file: !2287, line: 13, baseType: !1067, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2308, file: !2287, line: 14, baseType: !1067, size: 32, offset: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2308, file: !2287, line: 15, baseType: !1067, size: 32, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2308, file: !2287, line: 16, baseType: !1067, size: 32, offset: 96)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2308, file: !2287, line: 17, baseType: !1067, size: 32, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2308, file: !2287, line: 18, baseType: !1067, size: 32, offset: 160)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2308, file: !2287, line: 19, baseType: !1067, size: 32, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2308, file: !2287, line: 22, baseType: !2318, size: 640, offset: 224)
!2318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1067, size: 640, elements: !2319)
!2319 = !{!2320}
!2320 = !DISubrange(count: 20)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2308, file: !2287, line: 25, baseType: !1067, size: 32, offset: 864)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2305, file: !2287, line: 350, baseType: !2323, size: 4096, align: 128)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2287, line: 34, size: 4096, align: 128, elements: !2324)
!2324 = !{!2325, !2326, !2327, !2328, !2329, !2344, !2345, !2346, !2350, !2352, !2356}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2323, file: !2287, line: 35, baseType: !194, size: 16)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2323, file: !2287, line: 36, baseType: !194, size: 16, offset: 16)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2323, file: !2287, line: 37, baseType: !194, size: 16, offset: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2323, file: !2287, line: 38, baseType: !194, size: 16, offset: 48)
!2329 = !DIDerivedType(tag: DW_TAG_member, scope: !2323, file: !2287, line: 39, baseType: !2330, size: 128, offset: 64)
!2330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2323, file: !2287, line: 39, size: 128, elements: !2331)
!2331 = !{!2332, !2337}
!2332 = !DIDerivedType(tag: DW_TAG_member, scope: !2330, file: !2287, line: 40, baseType: !2333, size: 128)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2330, file: !2287, line: 40, size: 128, elements: !2334)
!2334 = !{!2335, !2336}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2333, file: !2287, line: 41, baseType: !387, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2333, file: !2287, line: 42, baseType: !387, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, scope: !2330, file: !2287, line: 44, baseType: !2338, size: 128)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2330, file: !2287, line: 44, size: 128, elements: !2339)
!2339 = !{!2340, !2341, !2342, !2343}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2338, file: !2287, line: 45, baseType: !1067, size: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2338, file: !2287, line: 46, baseType: !1067, size: 32, offset: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2338, file: !2287, line: 47, baseType: !1067, size: 32, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2338, file: !2287, line: 48, baseType: !1067, size: 32, offset: 96)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2323, file: !2287, line: 51, baseType: !1067, size: 32, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2323, file: !2287, line: 52, baseType: !1067, size: 32, offset: 224)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2323, file: !2287, line: 55, baseType: !2347, size: 1024, offset: 256)
!2347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1067, size: 1024, elements: !2348)
!2348 = !{!2349}
!2349 = !DISubrange(count: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2323, file: !2287, line: 58, baseType: !2351, size: 2048, offset: 1280)
!2351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1067, size: 2048, elements: !231)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2323, file: !2287, line: 60, baseType: !2353, size: 384, offset: 3328)
!2353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1067, size: 384, elements: !2354)
!2354 = !{!2355}
!2355 = !DISubrange(count: 12)
!2356 = !DIDerivedType(tag: DW_TAG_member, scope: !2323, file: !2287, line: 62, baseType: !2357, size: 384, offset: 3712)
!2357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2323, file: !2287, line: 62, size: 384, elements: !2358)
!2358 = !{!2359, !2360}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2357, file: !2287, line: 63, baseType: !2353, size: 384)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2357, file: !2287, line: 64, baseType: !2353, size: 384)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2305, file: !2287, line: 351, baseType: !2362, size: 1088)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2287, line: 79, size: 1088, elements: !2363)
!2363 = !{!2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2437}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2362, file: !2287, line: 80, baseType: !1067, size: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2362, file: !2287, line: 81, baseType: !1067, size: 32, offset: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2362, file: !2287, line: 82, baseType: !1067, size: 32, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2362, file: !2287, line: 83, baseType: !1067, size: 32, offset: 96)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2362, file: !2287, line: 84, baseType: !1067, size: 32, offset: 128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2362, file: !2287, line: 85, baseType: !1067, size: 32, offset: 160)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2362, file: !2287, line: 86, baseType: !1067, size: 32, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2362, file: !2287, line: 88, baseType: !2318, size: 640, offset: 224)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2362, file: !2287, line: 89, baseType: !184, size: 8, offset: 864)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2362, file: !2287, line: 90, baseType: !184, size: 8, offset: 872)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2362, file: !2287, line: 91, baseType: !184, size: 8, offset: 880)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2362, file: !2287, line: 92, baseType: !184, size: 8, offset: 888)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2362, file: !2287, line: 93, baseType: !184, size: 8, offset: 896)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2362, file: !2287, line: 94, baseType: !184, size: 8, offset: 904)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2362, file: !2287, line: 95, baseType: !2379, size: 64, offset: 960)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2381, line: 11, size: 128, elements: !2382)
!2381 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2382 = !{!2383, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2380, file: !2381, line: 12, baseType: !120, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2380, file: !2381, line: 13, baseType: !2385, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2387, line: 103, size: 1344, elements: !2388)
!2387 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2388 = !{!2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2417, !2418, !2419}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2386, file: !2387, line: 109, baseType: !119, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2386, file: !2387, line: 110, baseType: !119, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2386, file: !2387, line: 111, baseType: !119, size: 64, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2386, file: !2387, line: 112, baseType: !119, size: 64, offset: 192)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2386, file: !2387, line: 113, baseType: !119, size: 64, offset: 256)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2386, file: !2387, line: 114, baseType: !119, size: 64, offset: 320)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2386, file: !2387, line: 117, baseType: !119, size: 64, offset: 384)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2386, file: !2387, line: 118, baseType: !119, size: 64, offset: 448)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2386, file: !2387, line: 119, baseType: !119, size: 64, offset: 512)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2386, file: !2387, line: 120, baseType: !119, size: 64, offset: 576)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2386, file: !2387, line: 121, baseType: !119, size: 64, offset: 640)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2386, file: !2387, line: 122, baseType: !119, size: 64, offset: 704)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2386, file: !2387, line: 123, baseType: !119, size: 64, offset: 768)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2386, file: !2387, line: 124, baseType: !119, size: 64, offset: 832)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2386, file: !2387, line: 125, baseType: !119, size: 64, offset: 896)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2386, file: !2387, line: 139, baseType: !119, size: 64, offset: 960)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2386, file: !2387, line: 142, baseType: !119, size: 64, offset: 1024)
!2406 = !DIDerivedType(tag: DW_TAG_member, scope: !2386, file: !2387, line: 144, baseType: !2407, size: 64, offset: 1088)
!2407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2386, file: !2387, line: 144, size: 64, elements: !2408)
!2408 = !{!2409, !2410, !2411}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2407, file: !2387, line: 146, baseType: !194, size: 16)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2407, file: !2387, line: 148, baseType: !387, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2407, file: !2387, line: 150, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2387, line: 59, size: 64, elements: !2413)
!2413 = !{!2414, !2415, !2416}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2412, file: !2387, line: 61, baseType: !387, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2412, file: !2387, line: 63, baseType: !387, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2412, file: !2387, line: 65, baseType: !387, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2386, file: !2387, line: 153, baseType: !119, size: 64, offset: 1152)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2386, file: !2387, line: 154, baseType: !119, size: 64, offset: 1216)
!2419 = !DIDerivedType(tag: DW_TAG_member, scope: !2386, file: !2387, line: 156, baseType: !2420, size: 64, offset: 1280)
!2420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2386, file: !2387, line: 156, size: 64, elements: !2421)
!2421 = !{!2422, !2423, !2424}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2420, file: !2387, line: 158, baseType: !194, size: 16)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2420, file: !2387, line: 160, baseType: !387, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2420, file: !2387, line: 162, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2387, line: 69, size: 64, elements: !2426)
!2426 = !{!2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2425, file: !2387, line: 71, baseType: !387, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2425, file: !2387, line: 73, baseType: !387, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2425, file: !2387, line: 75, baseType: !387, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2425, file: !2387, line: 77, baseType: !387, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2425, file: !2387, line: 80, baseType: !387, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2425, file: !2387, line: 83, baseType: !387, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2425, file: !2387, line: 86, baseType: !387, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2425, file: !2387, line: 88, baseType: !387, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2425, file: !2387, line: 93, baseType: !387, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2425, file: !2387, line: 100, baseType: !387, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2362, file: !2287, line: 96, baseType: !1067, size: 32, offset: 1024)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2305, file: !2287, line: 352, baseType: !2439, size: 4608, align: 512)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2287, line: 333, size: 4608, align: 512, elements: !2440)
!2440 = !{!2441, !2442, !2451}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2439, file: !2287, line: 334, baseType: !2323, size: 4096, align: 128)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2439, file: !2287, line: 335, baseType: !2443, size: 512, offset: 4096)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2287, line: 312, size: 512, elements: !2444)
!2444 = !{!2445, !2446, !2447}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2443, file: !2287, line: 313, baseType: !387, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2443, file: !2287, line: 314, baseType: !387, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2443, file: !2287, line: 315, baseType: !2448, size: 384, offset: 128)
!2448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 384, elements: !2449)
!2449 = !{!2450}
!2450 = !DISubrange(count: 6)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2439, file: !2287, line: 336, baseType: !2452, offset: 4608)
!2452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, elements: !557)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2305, file: !2287, line: 353, baseType: !2454, size: 32768)
!2454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 32768, elements: !2455)
!2455 = !{!2456}
!2456 = !DISubrange(count: 4096)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2286, file: !2287, line: 484, baseType: !2292, size: 64, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2286, file: !2287, line: 491, baseType: !2459, size: 128, offset: 256)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2287, line: 404, size: 128, elements: !2460)
!2460 = !{!2461, !2462, !2463}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2459, file: !2287, line: 424, baseType: !387, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2459, file: !2287, line: 432, baseType: !7, size: 32, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2459, file: !2287, line: 440, baseType: !7, size: 32, offset: 96)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2286, file: !2287, line: 498, baseType: !2459, size: 128, offset: 384)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2286, file: !2287, line: 508, baseType: !2293, size: 33280, align: 512, offset: 512)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1305, file: !6, line: 125, baseType: !1304, size: 64, offset: 384)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1305, file: !6, line: 126, baseType: !7, size: 32, offset: 448)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1305, file: !6, line: 127, baseType: !7, size: 32, offset: 480)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !1305, file: !6, line: 128, baseType: !119, size: 64, offset: 512)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !1305, file: !6, line: 129, baseType: !119, size: 64, offset: 576)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1305, file: !6, line: 130, baseType: !145, size: 64, offset: 640)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1305, file: !6, line: 131, baseType: !2473, size: 64, offset: 704)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !1181, line: 14, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !1180, file: !1181, line: 61, baseType: !7, size: 32, offset: 960)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !1180, file: !1181, line: 62, baseType: !7, size: 32, offset: 992)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1180, file: !1181, line: 63, baseType: !7, size: 32, offset: 1024)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !1180, file: !1181, line: 64, baseType: !7, size: 32, offset: 1056)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !1180, file: !1181, line: 65, baseType: !7, size: 32, offset: 1088)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !1180, file: !1181, line: 66, baseType: !7, size: 32, offset: 1120)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !1180, file: !1181, line: 67, baseType: !119, size: 64, offset: 1152)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !1180, file: !1181, line: 68, baseType: !7, size: 32, offset: 1216)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !1180, file: !1181, line: 69, baseType: !176, size: 32, offset: 1248)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !1180, file: !1181, line: 70, baseType: !117, size: 32, offset: 1280)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1180, file: !1181, line: 71, baseType: !415, size: 32, offset: 1312)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !1180, file: !1181, line: 72, baseType: !2487, size: 64, offset: 1344)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !1180, file: !1181, line: 73, baseType: !1236, size: 64, offset: 1408)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_hint", scope: !1180, file: !1181, line: 75, baseType: !1236, size: 64, offset: 1472)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "affinity_notify", scope: !1180, file: !1181, line: 76, baseType: !2491, size: 64, offset: 1536)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_notify", file: !6, line: 261, size: 448, elements: !2493)
!2493 = !{!2494, !2495, !2496, !2497, !2501}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2492, file: !6, line: 262, baseType: !7, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2492, file: !6, line: 263, baseType: !783, size: 32, offset: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2492, file: !6, line: 264, baseType: !544, size: 256, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2492, file: !6, line: 265, baseType: !2498, size: 64, offset: 320)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{null, !2491, !1552}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2492, file: !6, line: 266, baseType: !2502, size: 64, offset: 384)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{null, !2505}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mask", scope: !1180, file: !1181, line: 78, baseType: !1193, size: 64, offset: 1600)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !1180, file: !1181, line: 81, baseType: !119, size: 64, offset: 1664)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !1180, file: !1181, line: 82, baseType: !176, size: 32, offset: 1728)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !1180, file: !1181, line: 83, baseType: !1707, size: 192, offset: 1792)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !1180, file: !1181, line: 85, baseType: !7, size: 32, offset: 1984)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !1180, file: !1181, line: 86, baseType: !7, size: 32, offset: 2016)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !1180, file: !1181, line: 87, baseType: !7, size: 32, offset: 2048)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !1180, file: !1181, line: 88, baseType: !7, size: 32, offset: 2080)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1180, file: !1181, line: 91, baseType: !2473, size: 64, offset: 2112)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1180, file: !1181, line: 98, baseType: !330, size: 128, align: 64, offset: 2176)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1180, file: !1181, line: 99, baseType: !141, size: 512, offset: 2304)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !1180, file: !1181, line: 101, baseType: !481, size: 256, offset: 2816)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !1180, file: !1181, line: 102, baseType: !117, size: 32, offset: 3072)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1180, file: !1181, line: 103, baseType: !121, size: 64, offset: 3136)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1180, file: !1181, line: 104, baseType: !145, size: 64, offset: 3200)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "resend_node", scope: !1180, file: !1181, line: 106, baseType: !1054, size: 128, offset: 3264)
!2522 = !{!2523, !2524, !2527, !2530, !2532, !2534, !2537, !2538, !2540, !2545, !2547, !2549}
!2523 = !DILocalVariable(name: "desc", arg: 1, scope: !1176, file: !3, line: 36, type: !1179)
!2524 = !DILocalVariable(name: "__ret_do_once", scope: !2525, file: !3, line: 39, type: !579)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 39, column: 6)
!2526 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 39, column: 6)
!2527 = !DILocalVariable(name: "pscr_ret__", scope: !2528, file: !3, line: 39, type: !117)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 39, column: 6)
!2529 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 39, column: 6)
!2530 = !DILocalVariable(name: "__vpp_verify", scope: !2531, file: !3, line: 39, type: !502)
!2531 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 39, column: 6)
!2532 = !DILocalVariable(name: "pfo_val__", scope: !2533, file: !3, line: 39, type: !1067)
!2533 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 39, column: 6)
!2534 = !DILocalVariable(name: "__ret_cond", scope: !2535, file: !3, line: 39, type: !579)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 39, column: 6)
!2536 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 39, column: 6)
!2537 = !DILocalVariable(name: "__ret_once", scope: !2535, file: !3, line: 39, type: !579)
!2538 = !DILocalVariable(name: "__ret_warn_on", scope: !2539, file: !3, line: 39, type: !117)
!2539 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 39, column: 6)
!2540 = !DILocalVariable(name: "pscr_ret__", scope: !2541, file: !3, line: 39, type: !117)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 39, column: 6)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 39, column: 6)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 39, column: 6)
!2544 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 39, column: 6)
!2545 = !DILocalVariable(name: "__vpp_verify", scope: !2546, file: !3, line: 39, type: !502)
!2546 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 39, column: 6)
!2547 = !DILocalVariable(name: "pfo_val__", scope: !2548, file: !3, line: 39, type: !1067)
!2548 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 39, column: 6)
!2549 = !DILocalVariable(name: "__flags", scope: !2550, file: !3, line: 39, type: !117)
!2550 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 39, column: 6)
!2551 = !DIGlobalVariableExpression(var: !2552, expr: !DIExpression())
!2552 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !2553, isLocal: true, isDefinition: true)
!2553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 344, elements: !2554)
!2554 = !{!2555}
!2555 = !DISubrange(count: 43)
!2556 = !DIGlobalVariableExpression(var: !2557, expr: !DIExpression())
!2557 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !2558, isLocal: true, isDefinition: true)
!2558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 176, elements: !2559)
!2559 = !{!2560}
!2560 = !DISubrange(count: 22)
!2561 = !DIGlobalVariableExpression(var: !2562, expr: !DIExpression())
!2562 = distinct !DIGlobalVariable(scope: null, file: !3, line: 423, type: !2563, isLocal: true, isDefinition: true)
!2563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 168, elements: !2564)
!2564 = !{!2565}
!2565 = !DISubrange(count: 21)
!2566 = !DIGlobalVariableExpression(var: !2567, expr: !DIExpression())
!2567 = distinct !DIGlobalVariable(scope: null, file: !3, line: 439, type: !2568, isLocal: true, isDefinition: true)
!2568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 264, elements: !2569)
!2569 = !{!2570}
!2570 = !DISubrange(count: 33)
!2571 = !DIGlobalVariableExpression(var: !2572, expr: !DIExpression())
!2572 = distinct !DIGlobalVariable(name: "__setup_noirqdebug_setup", scope: !2, file: !3, line: 444, type: !2573, isLocal: true, isDefinition: true, align: 64)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !2574, line: 324, size: 192, elements: !2575)
!2574 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!2575 = !{!2576, !2577, !2581}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2573, file: !2574, line: 325, baseType: !145, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !2573, file: !2574, line: 326, baseType: !2578, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!117, !226}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !2573, file: !2574, line: 327, baseType: !117, size: 32, offset: 128)
!2582 = !DIGlobalVariableExpression(var: !2583, expr: !DIExpression())
!2583 = distinct !DIGlobalVariable(name: "__param_noirqdebug", scope: !2, file: !3, line: 445, type: !870, isLocal: true, isDefinition: true, align: 64)
!2584 = !DIGlobalVariableExpression(var: !2585, expr: !DIExpression())
!2585 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_noirqdebugtype206", scope: !2, file: !3, line: 445, type: !2586, isLocal: true, isDefinition: true, align: 8)
!2586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 272, elements: !2587)
!2587 = !{!2588}
!2588 = !DISubrange(count: 34)
!2589 = !DIGlobalVariableExpression(var: !2590, expr: !DIExpression())
!2590 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_noirqdebug207", scope: !2, file: !3, line: 446, type: !2591, isLocal: true, isDefinition: true, align: 8)
!2591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 512, elements: !231)
!2592 = !DIGlobalVariableExpression(var: !2593, expr: !DIExpression())
!2593 = distinct !DIGlobalVariable(name: "__setup_irqfixup_setup", scope: !2, file: !3, line: 461, type: !2573, isLocal: true, isDefinition: true, align: 64)
!2594 = !DIGlobalVariableExpression(var: !2595, expr: !DIExpression())
!2595 = distinct !DIGlobalVariable(name: "__param_irqfixup", scope: !2, file: !3, line: 462, type: !870, isLocal: true, isDefinition: true, align: 64)
!2596 = !DIGlobalVariableExpression(var: !2597, expr: !DIExpression())
!2597 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_irqfixuptype208", scope: !2, file: !3, line: 462, type: !2598, isLocal: true, isDefinition: true, align: 8)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 248, elements: !2599)
!2599 = !{!2600}
!2600 = !DISubrange(count: 31)
!2601 = !DIGlobalVariableExpression(var: !2602, expr: !DIExpression())
!2602 = distinct !DIGlobalVariable(name: "__setup_irqpoll_setup", scope: !2, file: !3, line: 478, type: !2573, isLocal: true, isDefinition: true, align: 64)
!2603 = !DIGlobalVariableExpression(var: !2604, expr: !DIExpression())
!2604 = distinct !DIGlobalVariable(name: "irqfixup", scope: !2, file: !3, line: 17, type: !117, isLocal: true, isDefinition: true)
!2605 = !DIGlobalVariableExpression(var: !2606, expr: !DIExpression())
!2606 = distinct !DIGlobalVariable(name: "noirqdebug", scope: !2, file: !3, line: 434, type: !579, isLocal: false, isDefinition: true)
!2607 = !DIGlobalVariableExpression(var: !2608, expr: !DIExpression())
!2608 = distinct !DIGlobalVariable(name: "count", scope: !2609, file: !3, line: 227, type: !117, isLocal: true, isDefinition: true)
!2609 = distinct !DISubprogram(name: "report_bad_irq", scope: !3, file: !3, line: 225, type: !2610, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{null, !1179, !1312}
!2612 = !{!2613, !2614}
!2613 = !DILocalVariable(name: "desc", arg: 1, scope: !2609, file: !3, line: 225, type: !1179)
!2614 = !DILocalVariable(name: "action_ret", arg: 2, scope: !2609, file: !3, line: 225, type: !1312)
!2615 = !DIGlobalVariableExpression(var: !2616, expr: !DIExpression())
!2616 = distinct !DIGlobalVariable(name: "irq_poll_active", scope: !2, file: !3, line: 23, type: !176, isLocal: true, isDefinition: true)
!2617 = !DIGlobalVariableExpression(var: !2618, expr: !DIExpression())
!2618 = distinct !DIGlobalVariable(scope: null, file: !3, line: 199, type: !2619, isLocal: true, isDefinition: true)
!2619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 312, elements: !2620)
!2620 = !{!2621}
!2621 = !DISubrange(count: 39)
!2622 = !DIGlobalVariableExpression(var: !2623, expr: !DIExpression())
!2623 = distinct !DIGlobalVariable(scope: null, file: !3, line: 202, type: !2624, isLocal: true, isDefinition: true)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 512, elements: !231)
!2625 = !DIGlobalVariableExpression(var: !2626, expr: !DIExpression())
!2626 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !2627, isLocal: true, isDefinition: true)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 104, elements: !2628)
!2628 = !{!2629}
!2629 = !DISubrange(count: 13)
!2630 = !DIGlobalVariableExpression(var: !2631, expr: !DIExpression())
!2631 = distinct !DIGlobalVariable(scope: null, file: !3, line: 216, type: !2627, isLocal: true, isDefinition: true)
!2632 = !DIGlobalVariableExpression(var: !2633, expr: !DIExpression())
!2633 = distinct !DIGlobalVariable(scope: null, file: !3, line: 218, type: !2634, isLocal: true, isDefinition: true)
!2634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 184, elements: !2635)
!2635 = !{!2636}
!2636 = !DISubrange(count: 23)
!2637 = !DIGlobalVariableExpression(var: !2638, expr: !DIExpression())
!2638 = distinct !DIGlobalVariable(scope: null, file: !3, line: 220, type: !2639, isLocal: true, isDefinition: true)
!2639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 32, elements: !462)
!2640 = !DIGlobalVariableExpression(var: !2641, expr: !DIExpression())
!2641 = distinct !DIGlobalVariable(name: "poll_spurious_irq_timer", scope: !2, file: !3, line: 21, type: !1050, isLocal: true, isDefinition: true)
!2642 = !DIGlobalVariableExpression(var: !2643, expr: !DIExpression())
!2643 = distinct !DIGlobalVariable(name: "__setup_str_noirqdebug_setup", scope: !2, file: !3, line: 444, type: !2644, isLocal: true, isDefinition: true, align: 8)
!2644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 88, elements: !2645)
!2645 = !{!2646}
!2646 = !DISubrange(count: 11)
!2647 = !DIGlobalVariableExpression(var: !2648, expr: !DIExpression())
!2648 = distinct !DIGlobalVariable(name: "__param_str_noirqdebug", scope: !2, file: !3, line: 445, type: !2649, isLocal: true, isDefinition: true)
!2649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 160, elements: !2319)
!2650 = !DIGlobalVariableExpression(var: !2651, expr: !DIExpression())
!2651 = distinct !DIGlobalVariable(name: "__setup_str_irqfixup_setup", scope: !2, file: !3, line: 461, type: !2652, isLocal: true, isDefinition: true, align: 8)
!2652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 72, elements: !2653)
!2653 = !{!2654}
!2654 = !DISubrange(count: 9)
!2655 = !DIGlobalVariableExpression(var: !2656, expr: !DIExpression())
!2656 = distinct !DIGlobalVariable(scope: null, file: !3, line: 455, type: !2657, isLocal: true, isDefinition: true)
!2657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 320, elements: !2658)
!2658 = !{!2659}
!2659 = !DISubrange(count: 40)
!2660 = !DIGlobalVariableExpression(var: !2661, expr: !DIExpression())
!2661 = distinct !DIGlobalVariable(scope: null, file: !3, line: 456, type: !2619, isLocal: true, isDefinition: true)
!2662 = !DIGlobalVariableExpression(var: !2663, expr: !DIExpression())
!2663 = distinct !DIGlobalVariable(name: "__param_str_irqfixup", scope: !2, file: !3, line: 462, type: !2664, isLocal: true, isDefinition: true)
!2664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 144, elements: !2665)
!2665 = !{!2666}
!2666 = !DISubrange(count: 18)
!2667 = !DIGlobalVariableExpression(var: !2668, expr: !DIExpression())
!2668 = distinct !DIGlobalVariable(name: "__setup_str_irqpoll_setup", scope: !2, file: !3, line: 478, type: !2669, isLocal: true, isDefinition: true, align: 8)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 64, elements: !1478)
!2670 = !DIGlobalVariableExpression(var: !2671, expr: !DIExpression())
!2671 = distinct !DIGlobalVariable(scope: null, file: !3, line: 471, type: !2672, isLocal: true, isDefinition: true)
!2672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 408, elements: !2673)
!2673 = !{!2674}
!2674 = !DISubrange(count: 51)
!2675 = !DIGlobalVariableExpression(var: !2676, expr: !DIExpression())
!2676 = distinct !DIGlobalVariable(scope: null, file: !3, line: 473, type: !2677, isLocal: true, isDefinition: true)
!2677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 416, elements: !448)
!2678 = !{i32 7, !"Dwarf Version", i32 5}
!2679 = !{i32 2, !"Debug Info Version", i32 3}
!2680 = !{i32 1, !"wchar_size", i32 2}
!2681 = !{i32 8, !"cf-protection-branch", i32 1}
!2682 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2683 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2684 = !{i32 1, !"Code Model", i32 2}
!2685 = !{i32 1, !"override-stack-alignment", i32 8}
!2686 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2687 = !DILocation(line: 36, column: 41, scope: !1176)
!2688 = !DILocation(line: 39, column: 6, scope: !2525)
!2689 = !DILocation(line: 39, column: 6, scope: !2529)
!2690 = !DILocation(line: 39, column: 6, scope: !2528)
!2691 = !DILocation(line: 39, column: 6, scope: !2531)
!2692 = !DILocation(line: 39, column: 6, scope: !2533)
!2693 = !{i64 2153078519}
!2694 = !DILocation(line: 39, column: 6, scope: !2535)
!2695 = !{i8 0, i8 2}
!2696 = !DILocation(line: 39, column: 6, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 39, column: 6)
!2698 = !DILocation(line: 0, scope: !2697)
!2699 = !DILocation(line: 39, column: 6, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 39, column: 6)
!2701 = !DILocation(line: 39, column: 6, scope: !2536)
!2702 = !DILocation(line: 39, column: 6, scope: !2539)
!2703 = !DILocation(line: 39, column: 6, scope: !2544)
!2704 = !DILocation(line: 39, column: 6, scope: !2543)
!2705 = !DILocation(line: 39, column: 6, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 39, column: 6)
!2707 = !DILocation(line: 39, column: 6, scope: !2542)
!2708 = !DILocation(line: 39, column: 6, scope: !2541)
!2709 = !DILocation(line: 39, column: 6, scope: !2546)
!2710 = !DILocation(line: 39, column: 6, scope: !2548)
!2711 = !{i64 2153083995}
!2712 = !DILocation(line: 39, column: 6, scope: !2550)
!2713 = !DILocation(line: 39, column: 6, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 39, column: 6)
!2715 = !DILocation(line: 39, column: 6, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 39, column: 6)
!2717 = !{i64 2153084914, i64 2153084943, i64 2153084989, i64 2153085047, i64 2153085101, i64 2153085155, i64 2153085210, i64 2153085241, i64 2153085549, i64 2153085555, i64 2153085602, i64 2153085625, i64 2153085651}
!2718 = !DILocation(line: 39, column: 6, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 39, column: 6)
!2720 = !DILocation(line: 39, column: 6, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 39, column: 6)
!2722 = !DILocation(line: 39, column: 6, scope: !2526)
!2723 = !DILocation(line: 39, column: 6, scope: !1176)
!2724 = !DILocation(line: 42, column: 3, scope: !2526)
!2725 = !DILocation(line: 45, column: 2, scope: !1176)
!2726 = !DILocation(line: 46, column: 3, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 45, column: 5)
!2728 = !DILocation(line: 47, column: 3, scope: !2727)
!2729 = !DILocation(line: 47, column: 31, scope: !2727)
!2730 = !DILocation(line: 47, column: 37, scope: !2727)
!2731 = !DILocation(line: 47, column: 10, scope: !2727)
!2732 = !DILocation(line: 48, column: 4, scope: !2727)
!2733 = distinct !{!2733, !2728, !2734, !2735, !2736}
!2734 = !DILocation(line: 48, column: 14, scope: !2727)
!2735 = !{!"llvm.loop.mustprogress"}
!2736 = !{!"llvm.loop.unroll.disable"}
!2737 = !DILocation(line: 49, column: 3, scope: !2727)
!2738 = !DILocation(line: 50, column: 2, scope: !2727)
!2739 = !DILocation(line: 50, column: 32, scope: !1176)
!2740 = !DILocation(line: 50, column: 38, scope: !1176)
!2741 = !DILocation(line: 50, column: 11, scope: !1176)
!2742 = distinct !{!2742, !2725, !2743, !2735, !2736}
!2743 = !DILocation(line: 50, column: 47, scope: !1176)
!2744 = !DILocation(line: 52, column: 29, scope: !1176)
!2745 = !DILocation(line: 52, column: 35, scope: !1176)
!2746 = !DILocation(line: 52, column: 10, scope: !1176)
!2747 = !DILocation(line: 52, column: 45, scope: !1176)
!2748 = !DILocation(line: 52, column: 48, scope: !1176)
!2749 = !DILocation(line: 52, column: 54, scope: !1176)
!2750 = !DILocation(line: 0, scope: !1176)
!2751 = !DILocation(line: 52, column: 2, scope: !1176)
!2752 = !DILocation(line: 56, column: 1, scope: !1176)
!2753 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !2754, file: !2754, line: 313, type: !2755, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2757)
!2754 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!2755 = !DISubroutineType(types: !2756)
!2756 = !{null, !145}
!2757 = !{!2758}
!2758 = !DILocalVariable(name: "op", arg: 1, scope: !2753, file: !2754, line: 313, type: !145)
!2759 = !DILocation(line: 313, column: 66, scope: !2753)
!2760 = !DILocation(line: 313, column: 72, scope: !2753)
!2761 = !DISubprogram(name: "__warn_printk", scope: !967, file: !967, line: 93, type: !2762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{null, !145, null}
!2764 = !DISubprogram(name: "_raw_spin_unlock", scope: !2765, file: !2765, line: 39, type: !2766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2765 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2766 = !DISubroutineType(types: !2767)
!2767 = !{null, !2768}
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!2769 = distinct !DISubprogram(name: "irqd_irq_inprogress", scope: !70, file: !70, line: 356, type: !2770, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!579, !1220}
!2772 = !{!2773}
!2773 = !DILocalVariable(name: "d", arg: 1, scope: !2769, file: !70, line: 356, type: !1220)
!2774 = !DILocation(line: 356, column: 57, scope: !2769)
!2775 = !DILocation(line: 358, column: 9, scope: !2769)
!2776 = !DILocation(line: 358, column: 28, scope: !2769)
!2777 = !DILocation(line: 358, column: 2, scope: !2769)
!2778 = distinct !DISubprogram(name: "cpu_relax", scope: !2779, file: !2779, line: 16, type: !1162, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2779 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!2780 = !DILocation(line: 18, column: 2, scope: !2778)
!2781 = !DILocation(line: 19, column: 1, scope: !2778)
!2782 = !DISubprogram(name: "_raw_spin_lock", scope: !2765, file: !2765, line: 22, type: !2766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2783 = distinct !DISubprogram(name: "irqd_irq_disabled", scope: !70, file: !70, line: 346, type: !2770, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2784)
!2784 = !{!2785}
!2785 = !DILocalVariable(name: "d", arg: 1, scope: !2783, file: !70, line: 346, type: !1220)
!2786 = !DILocation(line: 346, column: 55, scope: !2783)
!2787 = !DILocation(line: 348, column: 9, scope: !2783)
!2788 = !DILocation(line: 348, column: 28, scope: !2783)
!2789 = !DILocation(line: 348, column: 2, scope: !2783)
!2790 = distinct !DISubprogram(name: "note_interrupt", scope: !3, file: !3, line: 272, type: !2610, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2791)
!2791 = !{!2792, !2793, !2794, !2795, !2800}
!2792 = !DILocalVariable(name: "desc", arg: 1, scope: !2790, file: !3, line: 272, type: !1179)
!2793 = !DILocalVariable(name: "action_ret", arg: 2, scope: !2790, file: !3, line: 272, type: !1312)
!2794 = !DILocalVariable(name: "irq", scope: !2790, file: !3, line: 274, type: !7)
!2795 = !DILocalVariable(name: "handled", scope: !2796, file: !3, line: 313, type: !117)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 312, column: 38)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 312, column: 7)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 305, column: 36)
!2799 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 305, column: 6)
!2800 = !DILocalVariable(name: "ok", scope: !2801, file: !3, line: 401, type: !117)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 400, column: 58)
!2802 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 400, column: 6)
!2803 = !DILocation(line: 272, column: 38, scope: !2790)
!2804 = !DILocation(line: 272, column: 56, scope: !2790)
!2805 = !DILocation(line: 274, column: 2, scope: !2790)
!2806 = !DILocation(line: 274, column: 15, scope: !2790)
!2807 = !DILocation(line: 276, column: 6, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 276, column: 6)
!2809 = !DILocation(line: 276, column: 12, scope: !2808)
!2810 = !DILocation(line: 276, column: 19, scope: !2808)
!2811 = !DILocation(line: 276, column: 42, scope: !2808)
!2812 = !DILocation(line: 277, column: 29, scope: !2808)
!2813 = !DILocation(line: 277, column: 6, scope: !2808)
!2814 = !DILocation(line: 276, column: 6, scope: !2790)
!2815 = !DILocation(line: 278, column: 3, scope: !2808)
!2816 = !DILocation(line: 280, column: 21, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 280, column: 6)
!2818 = !DILocation(line: 280, column: 6, scope: !2817)
!2819 = !DILocation(line: 280, column: 6, scope: !2790)
!2820 = !DILocation(line: 281, column: 18, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 280, column: 34)
!2822 = !DILocation(line: 281, column: 24, scope: !2821)
!2823 = !DILocation(line: 281, column: 3, scope: !2821)
!2824 = !DILocation(line: 282, column: 3, scope: !2821)
!2825 = !DILocation(line: 305, column: 6, scope: !2799)
!2826 = !DILocation(line: 305, column: 17, scope: !2799)
!2827 = !DILocation(line: 305, column: 6, scope: !2790)
!2828 = !DILocation(line: 312, column: 7, scope: !2797)
!2829 = !DILocation(line: 312, column: 18, scope: !2797)
!2830 = !DILocation(line: 312, column: 7, scope: !2798)
!2831 = !DILocation(line: 313, column: 4, scope: !2796)
!2832 = !DILocation(line: 313, column: 8, scope: !2796)
!2833 = !DILocation(line: 322, column: 10, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 322, column: 8)
!2835 = !DILocation(line: 322, column: 16, scope: !2834)
!2836 = !DILocation(line: 322, column: 37, scope: !2834)
!2837 = !DILocation(line: 322, column: 8, scope: !2796)
!2838 = !DILocation(line: 323, column: 5, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 322, column: 59)
!2840 = !DILocation(line: 323, column: 11, scope: !2839)
!2841 = !DILocation(line: 323, column: 32, scope: !2839)
!2842 = !DILocation(line: 324, column: 5, scope: !2839)
!2843 = !DILocation(line: 338, column: 27, scope: !2796)
!2844 = !DILocation(line: 338, column: 33, scope: !2796)
!2845 = !DILocation(line: 338, column: 14, scope: !2796)
!2846 = !DILocation(line: 338, column: 12, scope: !2796)
!2847 = !DILocation(line: 339, column: 12, scope: !2796)
!2848 = !DILocation(line: 340, column: 8, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 340, column: 8)
!2850 = !DILocation(line: 340, column: 19, scope: !2849)
!2851 = !DILocation(line: 340, column: 25, scope: !2849)
!2852 = !DILocation(line: 340, column: 16, scope: !2849)
!2853 = !DILocation(line: 340, column: 8, scope: !2796)
!2854 = !DILocation(line: 341, column: 16, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 340, column: 47)
!2856 = !DILocation(line: 350, column: 34, scope: !2855)
!2857 = !DILocation(line: 350, column: 5, scope: !2855)
!2858 = !DILocation(line: 350, column: 11, scope: !2855)
!2859 = !DILocation(line: 350, column: 32, scope: !2855)
!2860 = !DILocation(line: 351, column: 4, scope: !2855)
!2861 = !DILocation(line: 361, column: 16, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 351, column: 11)
!2863 = !DILocation(line: 363, column: 3, scope: !2797)
!2864 = !DILocation(line: 363, column: 3, scope: !2796)
!2865 = !DILocation(line: 381, column: 4, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 363, column: 10)
!2867 = !DILocation(line: 381, column: 10, scope: !2866)
!2868 = !DILocation(line: 381, column: 31, scope: !2866)
!2869 = !DILocation(line: 383, column: 2, scope: !2798)
!2870 = !DILocation(line: 385, column: 6, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 385, column: 6)
!2872 = !DILocation(line: 385, column: 6, scope: !2790)
!2873 = !DILocation(line: 392, column: 7, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 392, column: 7)
!2875 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 385, column: 40)
!2876 = !DILocation(line: 392, column: 7, scope: !2875)
!2877 = !DILocation(line: 393, column: 4, scope: !2874)
!2878 = !DILocation(line: 393, column: 10, scope: !2874)
!2879 = !DILocation(line: 393, column: 25, scope: !2874)
!2880 = !DILocation(line: 395, column: 4, scope: !2874)
!2881 = !DILocation(line: 395, column: 10, scope: !2874)
!2882 = !DILocation(line: 395, column: 24, scope: !2874)
!2883 = !DILocation(line: 396, column: 26, scope: !2875)
!2884 = !DILocation(line: 396, column: 3, scope: !2875)
!2885 = !DILocation(line: 396, column: 9, scope: !2875)
!2886 = !DILocation(line: 396, column: 24, scope: !2875)
!2887 = !DILocation(line: 397, column: 2, scope: !2875)
!2888 = !DILocation(line: 399, column: 25, scope: !2790)
!2889 = !DILocation(line: 399, column: 8, scope: !2790)
!2890 = !DILocation(line: 399, column: 6, scope: !2790)
!2891 = !DILocation(line: 400, column: 6, scope: !2802)
!2892 = !DILocation(line: 400, column: 6, scope: !2790)
!2893 = !DILocation(line: 401, column: 3, scope: !2801)
!2894 = !DILocation(line: 401, column: 7, scope: !2801)
!2895 = !DILocation(line: 401, column: 26, scope: !2801)
!2896 = !DILocation(line: 401, column: 12, scope: !2801)
!2897 = !DILocation(line: 402, column: 7, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 402, column: 7)
!2899 = !DILocation(line: 402, column: 18, scope: !2898)
!2900 = !DILocation(line: 402, column: 7, scope: !2801)
!2901 = !DILocation(line: 403, column: 28, scope: !2898)
!2902 = !DILocation(line: 403, column: 4, scope: !2898)
!2903 = !DILocation(line: 403, column: 10, scope: !2898)
!2904 = !DILocation(line: 403, column: 25, scope: !2898)
!2905 = !DILocation(line: 404, column: 2, scope: !2802)
!2906 = !DILocation(line: 404, column: 2, scope: !2801)
!2907 = !DILocation(line: 406, column: 6, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 406, column: 6)
!2909 = !DILocation(line: 406, column: 6, scope: !2790)
!2910 = !DILocation(line: 407, column: 3, scope: !2908)
!2911 = !DILocation(line: 410, column: 2, scope: !2790)
!2912 = !DILocation(line: 410, column: 8, scope: !2790)
!2913 = !DILocation(line: 410, column: 17, scope: !2790)
!2914 = !DILocation(line: 411, column: 6, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 411, column: 6)
!2916 = !DILocation(line: 411, column: 6, scope: !2790)
!2917 = !DILocation(line: 412, column: 3, scope: !2915)
!2918 = !DILocation(line: 414, column: 2, scope: !2790)
!2919 = !DILocation(line: 414, column: 8, scope: !2790)
!2920 = !DILocation(line: 414, column: 18, scope: !2790)
!2921 = !DILocation(line: 415, column: 6, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 415, column: 6)
!2923 = !DILocation(line: 415, column: 6, scope: !2790)
!2924 = !DILocation(line: 419, column: 20, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 415, column: 46)
!2926 = !DILocation(line: 419, column: 26, scope: !2925)
!2927 = !DILocation(line: 419, column: 3, scope: !2925)
!2928 = !DILocation(line: 423, column: 3, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 423, column: 3)
!2930 = !DILocation(line: 423, column: 3, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 423, column: 3)
!2932 = !DILocation(line: 424, column: 3, scope: !2925)
!2933 = !DILocation(line: 424, column: 9, scope: !2925)
!2934 = !DILocation(line: 424, column: 16, scope: !2925)
!2935 = !DILocation(line: 425, column: 3, scope: !2925)
!2936 = !DILocation(line: 425, column: 9, scope: !2925)
!2937 = !DILocation(line: 425, column: 14, scope: !2925)
!2938 = !DILocation(line: 426, column: 15, scope: !2925)
!2939 = !DILocation(line: 426, column: 3, scope: !2925)
!2940 = !DILocation(line: 429, column: 6, scope: !2925)
!2941 = !DILocation(line: 429, column: 14, scope: !2925)
!2942 = !DILocation(line: 428, column: 3, scope: !2925)
!2943 = !DILocation(line: 430, column: 2, scope: !2925)
!2944 = !DILocation(line: 431, column: 2, scope: !2790)
!2945 = !DILocation(line: 431, column: 8, scope: !2790)
!2946 = !DILocation(line: 431, column: 23, scope: !2790)
!2947 = !DILocation(line: 432, column: 1, scope: !2790)
!2948 = distinct !DISubprogram(name: "irq_settings_is_polled", scope: !97, file: !97, line: 160, type: !1177, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2949)
!2949 = !{!2950}
!2950 = !DILocalVariable(name: "desc", arg: 1, scope: !2948, file: !97, line: 160, type: !1179)
!2951 = !DILocation(line: 160, column: 60, scope: !2948)
!2952 = !DILocation(line: 162, column: 9, scope: !2948)
!2953 = !DILocation(line: 162, column: 15, scope: !2948)
!2954 = !DILocation(line: 162, column: 36, scope: !2948)
!2955 = !DILocation(line: 162, column: 2, scope: !2948)
!2956 = distinct !DISubprogram(name: "bad_action_ret", scope: !3, file: !3, line: 175, type: !2957, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!117, !1312}
!2959 = !{!2960, !2961}
!2960 = !DILocalVariable(name: "action_ret", arg: 1, scope: !2956, file: !3, line: 175, type: !1312)
!2961 = !DILocalVariable(name: "r", scope: !2956, file: !3, line: 177, type: !7)
!2962 = !DILocation(line: 175, column: 46, scope: !2956)
!2963 = !DILocation(line: 177, column: 2, scope: !2956)
!2964 = !DILocation(line: 177, column: 15, scope: !2956)
!2965 = !DILocation(line: 177, column: 19, scope: !2956)
!2966 = !DILocation(line: 179, column: 6, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 179, column: 6)
!2968 = !DILocation(line: 179, column: 6, scope: !2956)
!2969 = !DILocation(line: 180, column: 3, scope: !2967)
!2970 = !DILocation(line: 181, column: 2, scope: !2956)
!2971 = !DILocation(line: 182, column: 1, scope: !2956)
!2972 = !DILocation(line: 225, column: 45, scope: !2609)
!2973 = !DILocation(line: 225, column: 63, scope: !2609)
!2974 = !DILocation(line: 229, column: 6, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 229, column: 6)
!2976 = !DILocation(line: 229, column: 12, scope: !2975)
!2977 = !DILocation(line: 229, column: 6, scope: !2609)
!2978 = !DILocation(line: 230, column: 8, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 229, column: 17)
!2980 = !DILocation(line: 231, column: 20, scope: !2979)
!2981 = !DILocation(line: 231, column: 26, scope: !2979)
!2982 = !DILocation(line: 231, column: 3, scope: !2979)
!2983 = !DILocation(line: 232, column: 2, scope: !2979)
!2984 = !DILocation(line: 233, column: 1, scope: !2609)
!2985 = distinct !DISubprogram(name: "atomic_read", scope: !2986, file: !2986, line: 30, type: !2987, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2991)
!2986 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!117, !2989}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!2991 = !{!2992}
!2992 = !DILocalVariable(name: "v", arg: 1, scope: !2985, file: !2986, line: 30, type: !2989)
!2993 = !DILocation(line: 30, column: 29, scope: !2985)
!2994 = !DILocation(line: 32, column: 25, scope: !2985)
!2995 = !DILocation(line: 32, column: 2, scope: !2985)
!2996 = !DILocation(line: 33, column: 25, scope: !2985)
!2997 = !DILocation(line: 33, column: 9, scope: !2985)
!2998 = !DILocation(line: 33, column: 2, scope: !2985)
!2999 = distinct !DISubprogram(name: "irq_desc_get_irq", scope: !1181, file: !1181, line: 130, type: !3000, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3002)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!7, !1179}
!3002 = !{!3003}
!3003 = !DILocalVariable(name: "desc", arg: 1, scope: !2999, file: !1181, line: 130, type: !1179)
!3004 = !DILocation(line: 130, column: 62, scope: !2999)
!3005 = !DILocation(line: 132, column: 9, scope: !2999)
!3006 = !DILocation(line: 132, column: 15, scope: !2999)
!3007 = !DILocation(line: 132, column: 24, scope: !2999)
!3008 = !DILocation(line: 132, column: 2, scope: !2999)
!3009 = distinct !DISubprogram(name: "try_misrouted_irq", scope: !3, file: !3, line: 236, type: !3010, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!117, !7, !1179, !1312}
!3012 = !{!3013, !3014, !3015, !3016}
!3013 = !DILocalVariable(name: "irq", arg: 1, scope: !3009, file: !3, line: 236, type: !7)
!3014 = !DILocalVariable(name: "desc", arg: 2, scope: !3009, file: !3, line: 236, type: !1179)
!3015 = !DILocalVariable(name: "action_ret", arg: 3, scope: !3009, file: !3, line: 237, type: !1312)
!3016 = !DILocalVariable(name: "action", scope: !3009, file: !3, line: 239, type: !1304)
!3017 = !DILocation(line: 236, column: 32, scope: !3009)
!3018 = !DILocation(line: 236, column: 54, scope: !3009)
!3019 = !DILocation(line: 237, column: 17, scope: !3009)
!3020 = !DILocation(line: 239, column: 2, scope: !3009)
!3021 = !DILocation(line: 239, column: 20, scope: !3009)
!3022 = !DILocation(line: 241, column: 7, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 241, column: 6)
!3024 = !DILocation(line: 241, column: 6, scope: !3009)
!3025 = !DILocation(line: 242, column: 3, scope: !3023)
!3026 = !DILocation(line: 245, column: 6, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 245, column: 6)
!3028 = !DILocation(line: 245, column: 17, scope: !3027)
!3029 = !DILocation(line: 245, column: 6, scope: !3009)
!3030 = !DILocation(line: 246, column: 3, scope: !3027)
!3031 = !DILocation(line: 253, column: 6, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 253, column: 6)
!3033 = !DILocation(line: 253, column: 15, scope: !3032)
!3034 = !DILocation(line: 253, column: 6, scope: !3009)
!3035 = !DILocation(line: 254, column: 3, scope: !3032)
!3036 = !DILocation(line: 256, column: 7, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 256, column: 6)
!3038 = !DILocation(line: 256, column: 6, scope: !3009)
!3039 = !DILocation(line: 257, column: 3, scope: !3037)
!3040 = !DILocation(line: 265, column: 11, scope: !3009)
!3041 = !DILocation(line: 265, column: 17, scope: !3009)
!3042 = !DILocation(line: 265, column: 9, scope: !3009)
!3043 = !DILocation(line: 266, column: 2, scope: !3009)
!3044 = !{i64 2153096648}
!3045 = !DILocation(line: 267, column: 9, scope: !3009)
!3046 = !DILocation(line: 267, column: 16, scope: !3009)
!3047 = !DILocation(line: 267, column: 20, scope: !3009)
!3048 = !DILocation(line: 267, column: 28, scope: !3009)
!3049 = !DILocation(line: 267, column: 34, scope: !3009)
!3050 = !DILocation(line: 0, scope: !3009)
!3051 = !DILocation(line: 267, column: 2, scope: !3009)
!3052 = !DILocation(line: 268, column: 1, scope: !3009)
!3053 = distinct !DISubprogram(name: "misrouted_irq", scope: !3, file: !3, line: 118, type: !3054, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3056)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!117, !117}
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3064, !3066, !3068}
!3057 = !DILocalVariable(name: "irq", arg: 1, scope: !3053, file: !3, line: 118, type: !117)
!3058 = !DILocalVariable(name: "desc", scope: !3053, file: !3, line: 120, type: !1179)
!3059 = !DILocalVariable(name: "i", scope: !3053, file: !3, line: 121, type: !117)
!3060 = !DILocalVariable(name: "ok", scope: !3053, file: !3, line: 121, type: !117)
!3061 = !DILocalVariable(name: "pscr_ret__", scope: !3062, file: !3, line: 126, type: !117)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 126, column: 17)
!3063 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 126, column: 17)
!3064 = !DILocalVariable(name: "__vpp_verify", scope: !3065, file: !3, line: 126, type: !502)
!3065 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 126, column: 17)
!3066 = !DILocalVariable(name: "pfo_val__", scope: !3067, file: !3, line: 126, type: !1067)
!3067 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 126, column: 17)
!3068 = !DILabel(scope: !3053, name: "out", file: !3, line: 138)
!3069 = !DILocation(line: 118, column: 30, scope: !3053)
!3070 = !DILocation(line: 120, column: 2, scope: !3053)
!3071 = !DILocation(line: 120, column: 19, scope: !3053)
!3072 = !DILocation(line: 121, column: 2, scope: !3053)
!3073 = !DILocation(line: 121, column: 6, scope: !3053)
!3074 = !DILocation(line: 121, column: 9, scope: !3053)
!3075 = !DILocation(line: 123, column: 6, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 123, column: 6)
!3077 = !DILocation(line: 123, column: 42, scope: !3076)
!3078 = !DILocation(line: 123, column: 6, scope: !3053)
!3079 = !DILocation(line: 124, column: 3, scope: !3076)
!3080 = !DILocation(line: 126, column: 17, scope: !3063)
!3081 = !DILocation(line: 126, column: 17, scope: !3062)
!3082 = !DILocation(line: 126, column: 17, scope: !3065)
!3083 = !DILocation(line: 126, column: 17, scope: !3067)
!3084 = !{i64 2153088912}
!3085 = !DILocation(line: 126, column: 15, scope: !3053)
!3086 = !DILocation(line: 128, column: 2, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 128, column: 2)
!3088 = !DILocation(line: 128, column: 2, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 128, column: 2)
!3090 = !DILocation(line: 128, column: 2, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 128, column: 2)
!3092 = !DILocation(line: 129, column: 8, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 129, column: 7)
!3094 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 128, column: 29)
!3095 = !DILocation(line: 129, column: 7, scope: !3094)
!3096 = !DILocation(line: 130, column: 5, scope: !3093)
!3097 = !DILocation(line: 132, column: 7, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 132, column: 7)
!3099 = !DILocation(line: 132, column: 12, scope: !3098)
!3100 = !DILocation(line: 132, column: 9, scope: !3098)
!3101 = !DILocation(line: 132, column: 7, scope: !3094)
!3102 = !DILocation(line: 133, column: 4, scope: !3098)
!3103 = !DILocation(line: 135, column: 19, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 135, column: 7)
!3105 = !DILocation(line: 135, column: 7, scope: !3104)
!3106 = !DILocation(line: 135, column: 7, scope: !3094)
!3107 = !DILocation(line: 136, column: 7, scope: !3104)
!3108 = !DILocation(line: 136, column: 4, scope: !3104)
!3109 = distinct !{!3109, !3086, !3110, !2735, !2736}
!3110 = !DILocation(line: 137, column: 2, scope: !3087)
!3111 = !DILocation(line: 138, column: 1, scope: !3053)
!3112 = !DILocation(line: 139, column: 2, scope: !3053)
!3113 = !DILocation(line: 141, column: 9, scope: !3053)
!3114 = !DILocation(line: 142, column: 1, scope: !3053)
!3115 = !DILocation(line: 141, column: 2, scope: !3053)
!3116 = distinct !DISubprogram(name: "__report_bad_irq", scope: !3, file: !3, line: 192, type: !2610, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3117)
!3117 = !{!3118, !3119, !3120, !3121, !3122, !3123, !3126, !3127, !3130}
!3118 = !DILocalVariable(name: "desc", arg: 1, scope: !3116, file: !3, line: 192, type: !1179)
!3119 = !DILocalVariable(name: "action_ret", arg: 2, scope: !3116, file: !3, line: 192, type: !1312)
!3120 = !DILocalVariable(name: "irq", scope: !3116, file: !3, line: 194, type: !7)
!3121 = !DILocalVariable(name: "action", scope: !3116, file: !3, line: 195, type: !1304)
!3122 = !DILocalVariable(name: "flags", scope: !3116, file: !3, line: 196, type: !119)
!3123 = !DILocalVariable(name: "__dummy", scope: !3124, file: !3, line: 214, type: !119)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 214, column: 2)
!3125 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 214, column: 2)
!3126 = !DILocalVariable(name: "__dummy2", scope: !3124, file: !3, line: 214, type: !119)
!3127 = !DILocalVariable(name: "__dummy", scope: !3128, file: !3, line: 222, type: !119)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 222, column: 2)
!3129 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 222, column: 2)
!3130 = !DILocalVariable(name: "__dummy2", scope: !3128, file: !3, line: 222, type: !119)
!3131 = !DILocation(line: 192, column: 47, scope: !3116)
!3132 = !DILocation(line: 192, column: 65, scope: !3116)
!3133 = !DILocation(line: 194, column: 2, scope: !3116)
!3134 = !DILocation(line: 194, column: 15, scope: !3116)
!3135 = !DILocation(line: 194, column: 38, scope: !3116)
!3136 = !DILocation(line: 194, column: 21, scope: !3116)
!3137 = !DILocation(line: 195, column: 2, scope: !3116)
!3138 = !DILocation(line: 195, column: 20, scope: !3116)
!3139 = !DILocation(line: 196, column: 2, scope: !3116)
!3140 = !DILocation(line: 196, column: 16, scope: !3116)
!3141 = !DILocation(line: 198, column: 21, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 198, column: 6)
!3143 = !DILocation(line: 198, column: 6, scope: !3142)
!3144 = !DILocation(line: 198, column: 6, scope: !3116)
!3145 = !DILocation(line: 199, column: 3, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 199, column: 3)
!3147 = distinct !DILexicalBlock(scope: !3142, file: !3, line: 198, column: 34)
!3148 = !DILocation(line: 199, column: 3, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 199, column: 3)
!3150 = !DILocation(line: 201, column: 2, scope: !3147)
!3151 = !DILocation(line: 202, column: 3, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 202, column: 3)
!3153 = distinct !DILexicalBlock(scope: !3142, file: !3, line: 201, column: 9)
!3154 = !DILocation(line: 202, column: 3, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 202, column: 3)
!3156 = !DILocation(line: 205, column: 2, scope: !3116)
!3157 = !DILocation(line: 206, column: 2, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 206, column: 2)
!3159 = !DILocation(line: 206, column: 2, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 206, column: 2)
!3161 = !DILocation(line: 214, column: 2, scope: !3116)
!3162 = !DILocation(line: 214, column: 2, scope: !3124)
!3163 = !DILocation(line: 214, column: 2, scope: !3125)
!3164 = !DILocation(line: 215, column: 2, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 215, column: 2)
!3166 = !DILocation(line: 215, column: 2, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 215, column: 2)
!3168 = !DILocation(line: 216, column: 3, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 216, column: 3)
!3170 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 215, column: 40)
!3171 = !DILocation(line: 216, column: 3, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 216, column: 3)
!3173 = !DILocation(line: 217, column: 7, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 217, column: 7)
!3175 = !DILocation(line: 217, column: 15, scope: !3174)
!3176 = !DILocation(line: 217, column: 7, scope: !3170)
!3177 = !DILocation(line: 218, column: 4, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 218, column: 4)
!3179 = !DILocation(line: 218, column: 4, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 218, column: 4)
!3181 = !DILocation(line: 218, column: 4, scope: !3174)
!3182 = !DILocation(line: 220, column: 3, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 220, column: 3)
!3184 = !DILocation(line: 220, column: 3, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 220, column: 3)
!3186 = !DILocation(line: 221, column: 2, scope: !3170)
!3187 = distinct !{!3187, !3164, !3188, !2735, !2736}
!3188 = !DILocation(line: 221, column: 2, scope: !3165)
!3189 = !DILocation(line: 222, column: 2, scope: !3116)
!3190 = !DILocation(line: 222, column: 2, scope: !3128)
!3191 = !DILocation(line: 222, column: 2, scope: !3129)
!3192 = !DILocation(line: 223, column: 1, scope: !3116)
!3193 = !DISubprogram(name: "_printk", scope: !3194, file: !3194, line: 153, type: !3195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3194 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!117, !145, null}
!3197 = !DISubprogram(name: "irq_disable", scope: !56, file: !56, line: 94, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3198 = !DISubprogram(name: "mod_timer", scope: !1051, file: !1051, line: 172, type: !3199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!117, !1065, !119}
!3201 = distinct !DISubprogram(name: "noirqdebug_setup", scope: !3, file: !3, line: 436, type: !2579, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3202)
!3202 = !{!3203}
!3203 = !DILocalVariable(name: "str", arg: 1, scope: !3201, file: !3, line: 436, type: !226)
!3204 = !DILocation(line: 436, column: 28, scope: !3201)
!3205 = !DILocation(line: 438, column: 13, scope: !3201)
!3206 = !DILocation(line: 439, column: 2, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 439, column: 2)
!3208 = !DILocation(line: 439, column: 2, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 439, column: 2)
!3210 = !DILocation(line: 441, column: 2, scope: !3201)
!3211 = distinct !DISubprogram(name: "irqfixup_setup", scope: !3, file: !3, line: 448, type: !2579, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3212)
!3212 = !{!3213}
!3213 = !DILocalVariable(name: "str", arg: 1, scope: !3211, file: !3, line: 448, type: !226)
!3214 = !DILocation(line: 448, column: 40, scope: !3211)
!3215 = !DILocation(line: 454, column: 11, scope: !3211)
!3216 = !DILocation(line: 455, column: 2, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 455, column: 2)
!3218 = !DILocation(line: 455, column: 2, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 455, column: 2)
!3220 = !DILocation(line: 456, column: 2, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 456, column: 2)
!3222 = !DILocation(line: 456, column: 2, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 456, column: 2)
!3224 = !DILocation(line: 458, column: 2, scope: !3211)
!3225 = distinct !DISubprogram(name: "irqpoll_setup", scope: !3, file: !3, line: 464, type: !2579, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3226)
!3226 = !{!3227}
!3227 = !DILocalVariable(name: "str", arg: 1, scope: !3225, file: !3, line: 464, type: !226)
!3228 = !DILocation(line: 464, column: 39, scope: !3225)
!3229 = !DILocation(line: 470, column: 11, scope: !3225)
!3230 = !DILocation(line: 471, column: 2, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 471, column: 2)
!3232 = !DILocation(line: 471, column: 2, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 471, column: 2)
!3234 = !DILocation(line: 473, column: 2, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 473, column: 2)
!3236 = !DILocation(line: 473, column: 2, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 473, column: 2)
!3238 = !DILocation(line: 475, column: 2, scope: !3225)
!3239 = distinct !DISubprogram(name: "rep_nop", scope: !2779, file: !2779, line: 11, type: !1162, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3240 = !DILocation(line: 13, column: 2, scope: !3239)
!3241 = !{i64 1807649}
!3242 = !DILocation(line: 14, column: 1, scope: !3239)
!3243 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3244, file: !3244, line: 66, type: !3245, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3250)
!3244 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3245 = !DISubroutineType(types: !3246)
!3246 = !{null, !3247, !272}
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3249)
!3249 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3250 = !{!3251, !3252}
!3251 = !DILocalVariable(name: "v", arg: 1, scope: !3243, file: !3244, line: 66, type: !3247)
!3252 = !DILocalVariable(name: "size", arg: 2, scope: !3243, file: !3244, line: 66, type: !272)
!3253 = !DILocation(line: 66, column: 73, scope: !3243)
!3254 = !DILocation(line: 66, column: 83, scope: !3243)
!3255 = !DILocation(line: 68, column: 19, scope: !3243)
!3256 = !DILocation(line: 68, column: 22, scope: !3243)
!3257 = !DILocation(line: 68, column: 2, scope: !3243)
!3258 = !DILocation(line: 69, column: 2, scope: !3243)
!3259 = !DILocation(line: 70, column: 1, scope: !3243)
!3260 = distinct !DISubprogram(name: "raw_atomic_read", scope: !3261, file: !3261, line: 442, type: !2987, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3262)
!3261 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!3262 = !{!3263}
!3263 = !DILocalVariable(name: "v", arg: 1, scope: !3260, file: !3261, line: 442, type: !2989)
!3264 = !DILocation(line: 442, column: 33, scope: !3260)
!3265 = !DILocation(line: 444, column: 26, scope: !3260)
!3266 = !DILocation(line: 444, column: 9, scope: !3260)
!3267 = !DILocation(line: 444, column: 2, scope: !3260)
!3268 = distinct !DISubprogram(name: "kasan_check_read", scope: !3269, file: !3269, line: 40, type: !3270, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3272)
!3269 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!579, !3247, !7}
!3272 = !{!3273, !3274}
!3273 = !DILocalVariable(name: "p", arg: 1, scope: !3268, file: !3269, line: 40, type: !3247)
!3274 = !DILocalVariable(name: "size", arg: 2, scope: !3268, file: !3269, line: 40, type: !7)
!3275 = !DILocation(line: 40, column: 58, scope: !3268)
!3276 = !DILocation(line: 40, column: 74, scope: !3268)
!3277 = !DILocation(line: 42, column: 2, scope: !3268)
!3278 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3279, file: !3279, line: 229, type: !3280, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3282)
!3279 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3280 = !DISubroutineType(types: !3281)
!3281 = !{null, !3247, !272, !117}
!3282 = !{!3283, !3284, !3285}
!3283 = !DILocalVariable(name: "ptr", arg: 1, scope: !3278, file: !3279, line: 229, type: !3247)
!3284 = !DILocalVariable(name: "size", arg: 2, scope: !3278, file: !3279, line: 229, type: !272)
!3285 = !DILocalVariable(name: "type", arg: 3, scope: !3278, file: !3279, line: 230, type: !117)
!3286 = !DILocation(line: 229, column: 60, scope: !3278)
!3287 = !DILocation(line: 229, column: 72, scope: !3278)
!3288 = !DILocation(line: 230, column: 15, scope: !3278)
!3289 = !DILocation(line: 230, column: 23, scope: !3278)
!3290 = distinct !DISubprogram(name: "arch_atomic_read", scope: !3291, file: !3291, line: 17, type: !2987, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3292)
!3291 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!3292 = !{!3293}
!3293 = !DILocalVariable(name: "v", arg: 1, scope: !3290, file: !3291, line: 17, type: !2989)
!3294 = !DILocation(line: 17, column: 61, scope: !3290)
!3295 = !DILocation(line: 23, column: 9, scope: !3290)
!3296 = !DILocation(line: 23, column: 2, scope: !3290)
!3297 = distinct !DISubprogram(name: "atomic_inc_return", scope: !2986, file: !2986, line: 450, type: !3298, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3301)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!117, !3300}
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!3301 = !{!3302}
!3302 = !DILocalVariable(name: "v", arg: 1, scope: !3297, file: !2986, line: 450, type: !3300)
!3303 = !DILocation(line: 450, column: 29, scope: !3297)
!3304 = !DILocation(line: 452, column: 2, scope: !3297)
!3305 = !DILocation(line: 452, column: 2, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3297, file: !2986, line: 452, column: 2)
!3307 = !DILocation(line: 453, column: 31, scope: !3297)
!3308 = !DILocation(line: 453, column: 2, scope: !3297)
!3309 = !DILocation(line: 454, column: 31, scope: !3297)
!3310 = !DILocation(line: 454, column: 9, scope: !3297)
!3311 = !DILocation(line: 454, column: 2, scope: !3297)
!3312 = !DISubprogram(name: "irq_to_desc", scope: !3313, file: !3313, line: 9, type: !3314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3313 = !DIFile(filename: "./include/linux/irqnr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "590ce9d10c77e92ba5c0ad662f4e1272")
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!1179, !7}
!3316 = distinct !DISubprogram(name: "try_one_irq", scope: !3, file: !3, line: 62, type: !3317, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3319)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!117, !1179, !579}
!3319 = !{!3320, !3321, !3322, !3323, !3324}
!3320 = !DILocalVariable(name: "desc", arg: 1, scope: !3316, file: !3, line: 62, type: !1179)
!3321 = !DILocalVariable(name: "force", arg: 2, scope: !3316, file: !3, line: 62, type: !579)
!3322 = !DILocalVariable(name: "ret", scope: !3316, file: !3, line: 64, type: !1312)
!3323 = !DILocalVariable(name: "action", scope: !3316, file: !3, line: 65, type: !1304)
!3324 = !DILabel(scope: !3316, name: "out", file: !3, line: 113)
!3325 = !DILocation(line: 62, column: 41, scope: !3316)
!3326 = !DILocation(line: 62, column: 52, scope: !3316)
!3327 = !DILocation(line: 64, column: 2, scope: !3316)
!3328 = !DILocation(line: 64, column: 14, scope: !3316)
!3329 = !DILocation(line: 65, column: 2, scope: !3316)
!3330 = !DILocation(line: 65, column: 20, scope: !3316)
!3331 = !DILocation(line: 67, column: 2, scope: !3316)
!3332 = !DILocation(line: 73, column: 30, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 73, column: 6)
!3334 = !DILocation(line: 73, column: 6, scope: !3333)
!3335 = !DILocation(line: 73, column: 36, scope: !3333)
!3336 = !DILocation(line: 74, column: 36, scope: !3333)
!3337 = !DILocation(line: 74, column: 6, scope: !3333)
!3338 = !DILocation(line: 74, column: 42, scope: !3333)
!3339 = !DILocation(line: 75, column: 29, scope: !3333)
!3340 = !DILocation(line: 75, column: 6, scope: !3333)
!3341 = !DILocation(line: 73, column: 6, scope: !3316)
!3342 = !DILocation(line: 76, column: 3, scope: !3333)
!3343 = !DILocation(line: 82, column: 25, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 82, column: 6)
!3345 = !DILocation(line: 82, column: 31, scope: !3344)
!3346 = !DILocation(line: 82, column: 6, scope: !3344)
!3347 = !DILocation(line: 82, column: 41, scope: !3344)
!3348 = !DILocation(line: 82, column: 45, scope: !3344)
!3349 = !DILocation(line: 82, column: 6, scope: !3316)
!3350 = !DILocation(line: 83, column: 3, scope: !3344)
!3351 = !DILocation(line: 89, column: 11, scope: !3316)
!3352 = !DILocation(line: 89, column: 17, scope: !3316)
!3353 = !DILocation(line: 89, column: 9, scope: !3316)
!3354 = !DILocation(line: 90, column: 7, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 90, column: 6)
!3356 = !DILocation(line: 90, column: 14, scope: !3355)
!3357 = !DILocation(line: 90, column: 19, scope: !3355)
!3358 = !DILocation(line: 90, column: 27, scope: !3355)
!3359 = !DILocation(line: 90, column: 33, scope: !3355)
!3360 = !DILocation(line: 90, column: 48, scope: !3355)
!3361 = !DILocation(line: 91, column: 7, scope: !3355)
!3362 = !DILocation(line: 91, column: 15, scope: !3355)
!3363 = !DILocation(line: 91, column: 21, scope: !3355)
!3364 = !DILocation(line: 90, column: 6, scope: !3316)
!3365 = !DILocation(line: 92, column: 3, scope: !3355)
!3366 = !DILocation(line: 95, column: 27, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 95, column: 6)
!3368 = !DILocation(line: 95, column: 33, scope: !3367)
!3369 = !DILocation(line: 95, column: 6, scope: !3367)
!3370 = !DILocation(line: 95, column: 6, scope: !3316)
!3371 = !DILocation(line: 100, column: 3, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 95, column: 44)
!3373 = !DILocation(line: 100, column: 9, scope: !3372)
!3374 = !DILocation(line: 100, column: 16, scope: !3372)
!3375 = !DILocation(line: 101, column: 3, scope: !3372)
!3376 = !DILocation(line: 105, column: 2, scope: !3316)
!3377 = !DILocation(line: 105, column: 8, scope: !3316)
!3378 = !DILocation(line: 105, column: 15, scope: !3316)
!3379 = !DILocation(line: 106, column: 2, scope: !3316)
!3380 = !DILocation(line: 107, column: 24, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 107, column: 7)
!3382 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 106, column: 5)
!3383 = !DILocation(line: 107, column: 7, scope: !3381)
!3384 = !DILocation(line: 107, column: 30, scope: !3381)
!3385 = !DILocation(line: 107, column: 7, scope: !3382)
!3386 = !DILocation(line: 108, column: 8, scope: !3381)
!3387 = !DILocation(line: 108, column: 4, scope: !3381)
!3388 = !DILocation(line: 110, column: 12, scope: !3382)
!3389 = !DILocation(line: 110, column: 18, scope: !3382)
!3390 = !DILocation(line: 110, column: 10, scope: !3382)
!3391 = !DILocation(line: 111, column: 2, scope: !3382)
!3392 = !DILocation(line: 111, column: 12, scope: !3316)
!3393 = !DILocation(line: 111, column: 18, scope: !3316)
!3394 = !DILocation(line: 111, column: 25, scope: !3316)
!3395 = !DILocation(line: 111, column: 41, scope: !3316)
!3396 = !DILocation(line: 111, column: 44, scope: !3316)
!3397 = !DILocation(line: 0, scope: !3316)
!3398 = distinct !{!3398, !3379, !3399, !2735, !2736}
!3399 = !DILocation(line: 111, column: 50, scope: !3316)
!3400 = !DILocation(line: 112, column: 2, scope: !3316)
!3401 = !DILocation(line: 112, column: 8, scope: !3316)
!3402 = !DILocation(line: 112, column: 15, scope: !3316)
!3403 = !DILocation(line: 113, column: 1, scope: !3316)
!3404 = !DILocation(line: 114, column: 2, scope: !3316)
!3405 = !DILocation(line: 115, column: 9, scope: !3316)
!3406 = !DILocation(line: 115, column: 13, scope: !3316)
!3407 = !DILocation(line: 116, column: 1, scope: !3316)
!3408 = !DILocation(line: 115, column: 2, scope: !3316)
!3409 = distinct !DISubprogram(name: "atomic_dec", scope: !2986, file: !2986, line: 590, type: !3410, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3412)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{null, !3300}
!3412 = !{!3413}
!3413 = !DILocalVariable(name: "v", arg: 1, scope: !3409, file: !2986, line: 590, type: !3300)
!3414 = !DILocation(line: 590, column: 22, scope: !3409)
!3415 = !DILocation(line: 592, column: 31, scope: !3409)
!3416 = !DILocation(line: 592, column: 2, scope: !3409)
!3417 = !DILocation(line: 593, column: 17, scope: !3409)
!3418 = !DILocation(line: 593, column: 2, scope: !3409)
!3419 = !DILocation(line: 594, column: 1, scope: !3409)
!3420 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3244, file: !3244, line: 94, type: !3245, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3421)
!3421 = !{!3422, !3423}
!3422 = !DILocalVariable(name: "v", arg: 1, scope: !3420, file: !3244, line: 94, type: !3247)
!3423 = !DILocalVariable(name: "size", arg: 2, scope: !3420, file: !3244, line: 94, type: !272)
!3424 = !DILocation(line: 94, column: 79, scope: !3420)
!3425 = !DILocation(line: 94, column: 89, scope: !3420)
!3426 = !DILocation(line: 96, column: 20, scope: !3420)
!3427 = !DILocation(line: 96, column: 23, scope: !3420)
!3428 = !DILocation(line: 96, column: 2, scope: !3420)
!3429 = !DILocation(line: 97, column: 2, scope: !3420)
!3430 = !DILocation(line: 98, column: 1, scope: !3420)
!3431 = distinct !DISubprogram(name: "raw_atomic_inc_return", scope: !3261, file: !3261, line: 996, type: !3298, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3432)
!3432 = !{!3433}
!3433 = !DILocalVariable(name: "v", arg: 1, scope: !3431, file: !3261, line: 996, type: !3300)
!3434 = !DILocation(line: 996, column: 33, scope: !3431)
!3435 = !DILocation(line: 1007, column: 34, scope: !3431)
!3436 = !DILocation(line: 1007, column: 9, scope: !3431)
!3437 = !DILocation(line: 1007, column: 2, scope: !3431)
!3438 = distinct !DISubprogram(name: "kasan_check_write", scope: !3269, file: !3269, line: 44, type: !3270, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3439)
!3439 = !{!3440, !3441}
!3440 = !DILocalVariable(name: "p", arg: 1, scope: !3438, file: !3269, line: 44, type: !3247)
!3441 = !DILocalVariable(name: "size", arg: 2, scope: !3438, file: !3269, line: 44, type: !7)
!3442 = !DILocation(line: 44, column: 59, scope: !3438)
!3443 = !DILocation(line: 44, column: 75, scope: !3438)
!3444 = !DILocation(line: 46, column: 2, scope: !3438)
!3445 = distinct !DISubprogram(name: "raw_atomic_add_return", scope: !3261, file: !3261, line: 548, type: !3446, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!117, !117, !3300}
!3448 = !{!3449, !3450}
!3449 = !DILocalVariable(name: "i", arg: 1, scope: !3445, file: !3261, line: 548, type: !117)
!3450 = !DILocalVariable(name: "v", arg: 2, scope: !3445, file: !3261, line: 548, type: !3300)
!3451 = !DILocation(line: 548, column: 27, scope: !3445)
!3452 = !DILocation(line: 548, column: 40, scope: !3445)
!3453 = !DILocation(line: 551, column: 32, scope: !3445)
!3454 = !DILocation(line: 551, column: 35, scope: !3445)
!3455 = !DILocation(line: 551, column: 9, scope: !3445)
!3456 = !DILocation(line: 551, column: 2, scope: !3445)
!3457 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !3291, file: !3291, line: 83, type: !3446, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3458)
!3458 = !{!3459, !3460, !3461}
!3459 = !DILocalVariable(name: "i", arg: 1, scope: !3457, file: !3291, line: 83, type: !117)
!3460 = !DILocalVariable(name: "v", arg: 2, scope: !3457, file: !3291, line: 83, type: !3300)
!3461 = !DILocalVariable(name: "__ret", scope: !3462, file: !3291, line: 85, type: !117)
!3462 = distinct !DILexicalBlock(scope: !3457, file: !3291, line: 85, column: 13)
!3463 = !DILocation(line: 83, column: 55, scope: !3457)
!3464 = !DILocation(line: 83, column: 68, scope: !3457)
!3465 = !DILocation(line: 85, column: 9, scope: !3457)
!3466 = !DILocation(line: 85, column: 13, scope: !3462)
!3467 = !{i64 2148672046, i64 2148672085, i64 2148672106, i64 2148672143, i64 2148672166, i64 2148672175}
!3468 = !DILocation(line: 85, column: 13, scope: !3457)
!3469 = !DILocation(line: 85, column: 11, scope: !3457)
!3470 = !DILocation(line: 85, column: 2, scope: !3457)
!3471 = distinct !DISubprogram(name: "irq_settings_is_per_cpu", scope: !97, file: !97, line: 48, type: !1177, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3472)
!3472 = !{!3473}
!3473 = !DILocalVariable(name: "desc", arg: 1, scope: !3471, file: !97, line: 48, type: !1179)
!3474 = !DILocation(line: 48, column: 61, scope: !3471)
!3475 = !DILocation(line: 50, column: 9, scope: !3471)
!3476 = !DILocation(line: 50, column: 15, scope: !3471)
!3477 = !DILocation(line: 50, column: 36, scope: !3471)
!3478 = !DILocation(line: 50, column: 2, scope: !3471)
!3479 = distinct !DISubprogram(name: "irq_settings_is_nested_thread", scope: !97, file: !97, line: 155, type: !1177, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3480)
!3480 = !{!3481}
!3481 = !DILocalVariable(name: "desc", arg: 1, scope: !3479, file: !97, line: 155, type: !1179)
!3482 = !DILocation(line: 155, column: 67, scope: !3479)
!3483 = !DILocation(line: 157, column: 9, scope: !3479)
!3484 = !DILocation(line: 157, column: 15, scope: !3479)
!3485 = !DILocation(line: 157, column: 36, scope: !3479)
!3486 = !DILocation(line: 157, column: 2, scope: !3479)
!3487 = !DISubprogram(name: "handle_irq_event", scope: !56, file: !56, line: 113, type: !3488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!1312, !1179}
!3490 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !3261, file: !3261, line: 1194, type: !3410, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3491)
!3491 = !{!3492}
!3492 = !DILocalVariable(name: "v", arg: 1, scope: !3490, file: !3261, line: 1194, type: !3300)
!3493 = !DILocation(line: 1194, column: 26, scope: !3490)
!3494 = !DILocation(line: 1197, column: 18, scope: !3490)
!3495 = !DILocation(line: 1197, column: 2, scope: !3490)
!3496 = !DILocation(line: 1201, column: 1, scope: !3490)
!3497 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !3291, file: !3291, line: 58, type: !3410, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3498)
!3498 = !{!3499}
!3499 = !DILocalVariable(name: "v", arg: 1, scope: !3497, file: !3291, line: 58, type: !3300)
!3500 = !DILocation(line: 58, column: 55, scope: !3497)
!3501 = !DILocation(line: 61, column: 16, scope: !3497)
!3502 = !DILocation(line: 61, column: 19, scope: !3497)
!3503 = !DILocation(line: 60, column: 2, scope: !3497)
!3504 = !{i64 2148664333, i64 2148664372, i64 2148664393, i64 2148664430, i64 2148664453, i64 2148664323}
!3505 = !DILocation(line: 62, column: 1, scope: !3497)
!3506 = !DISubprogram(name: "dump_stack", scope: !3194, file: !3194, line: 193, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3507 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !2765, file: !2765, line: 32, type: !3508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!119, !2768}
!3510 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !2765, file: !2765, line: 43, type: !3511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{null, !2768, !119}
!3513 = distinct !DISubprogram(name: "poll_spurious_irqs", scope: !3, file: !3, line: 144, type: !1063, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3514)
!3514 = !{!3515, !3516, !3517, !3518, !3521, !3523, !3525, !3530}
!3515 = !DILocalVariable(name: "unused", arg: 1, scope: !3513, file: !3, line: 144, type: !1065)
!3516 = !DILocalVariable(name: "desc", scope: !3513, file: !3, line: 146, type: !1179)
!3517 = !DILocalVariable(name: "i", scope: !3513, file: !3, line: 147, type: !117)
!3518 = !DILocalVariable(name: "pscr_ret__", scope: !3519, file: !3, line: 151, type: !117)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !3, line: 151, column: 17)
!3520 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 151, column: 17)
!3521 = !DILocalVariable(name: "__vpp_verify", scope: !3522, file: !3, line: 151, type: !502)
!3522 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 151, column: 17)
!3523 = !DILocalVariable(name: "pfo_val__", scope: !3524, file: !3, line: 151, type: !1067)
!3524 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 151, column: 17)
!3525 = !DILocalVariable(name: "state", scope: !3526, file: !3, line: 154, type: !7)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 153, column: 29)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 153, column: 2)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 153, column: 2)
!3529 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 153, column: 2)
!3530 = !DILabel(scope: !3513, name: "out", file: !3, line: 169)
!3531 = !DILocation(line: 144, column: 51, scope: !3513)
!3532 = !DILocation(line: 146, column: 2, scope: !3513)
!3533 = !DILocation(line: 146, column: 19, scope: !3513)
!3534 = !DILocation(line: 147, column: 2, scope: !3513)
!3535 = !DILocation(line: 147, column: 6, scope: !3513)
!3536 = !DILocation(line: 149, column: 6, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 149, column: 6)
!3538 = !DILocation(line: 149, column: 42, scope: !3537)
!3539 = !DILocation(line: 149, column: 6, scope: !3513)
!3540 = !DILocation(line: 150, column: 3, scope: !3537)
!3541 = !DILocation(line: 151, column: 17, scope: !3520)
!3542 = !DILocation(line: 151, column: 17, scope: !3519)
!3543 = !DILocation(line: 151, column: 17, scope: !3522)
!3544 = !DILocation(line: 151, column: 17, scope: !3524)
!3545 = !{i64 2153092489}
!3546 = !DILocation(line: 151, column: 15, scope: !3513)
!3547 = !DILocation(line: 153, column: 2, scope: !3529)
!3548 = !DILocation(line: 153, column: 2, scope: !3528)
!3549 = !DILocation(line: 153, column: 2, scope: !3527)
!3550 = !DILocation(line: 154, column: 3, scope: !3526)
!3551 = !DILocation(line: 154, column: 16, scope: !3526)
!3552 = !DILocation(line: 156, column: 8, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 156, column: 7)
!3554 = !DILocation(line: 156, column: 7, scope: !3526)
!3555 = !DILocation(line: 157, column: 5, scope: !3553)
!3556 = !DILocation(line: 160, column: 11, scope: !3526)
!3557 = !DILocation(line: 160, column: 17, scope: !3526)
!3558 = !DILocation(line: 160, column: 9, scope: !3526)
!3559 = !DILocation(line: 161, column: 3, scope: !3526)
!3560 = !{i64 2153093486}
!3561 = !DILocation(line: 162, column: 9, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 162, column: 7)
!3563 = !DILocation(line: 162, column: 15, scope: !3562)
!3564 = !DILocation(line: 162, column: 7, scope: !3526)
!3565 = !DILocation(line: 163, column: 4, scope: !3562)
!3566 = !DILocation(line: 165, column: 3, scope: !3526)
!3567 = !DILocation(line: 165, column: 3, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 165, column: 3)
!3569 = !DILocation(line: 166, column: 15, scope: !3526)
!3570 = !DILocation(line: 166, column: 3, scope: !3526)
!3571 = !DILocation(line: 167, column: 3, scope: !3526)
!3572 = !DILocation(line: 167, column: 3, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 167, column: 3)
!3574 = !DILocation(line: 168, column: 2, scope: !3527)
!3575 = distinct !{!3575, !3547, !3576, !2735, !2736}
!3576 = !DILocation(line: 168, column: 2, scope: !3529)
!3577 = !DILocation(line: 169, column: 1, scope: !3513)
!3578 = !DILocation(line: 170, column: 2, scope: !3513)
!3579 = !DILocation(line: 172, column: 5, scope: !3513)
!3580 = !DILocation(line: 172, column: 13, scope: !3513)
!3581 = !DILocation(line: 171, column: 2, scope: !3513)
!3582 = !DILocation(line: 173, column: 1, scope: !3513)
!3583 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !3584, file: !3584, line: 70, type: !1162, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3584 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!3585 = !DILocation(line: 72, column: 2, scope: !3583)
!3586 = !DILocation(line: 73, column: 1, scope: !3583)
!3587 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !3584, file: !3584, line: 75, type: !1162, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3588 = !DILocation(line: 77, column: 2, scope: !3587)
!3589 = !DILocation(line: 78, column: 1, scope: !3587)
!3590 = distinct !DISubprogram(name: "native_irq_disable", scope: !3584, file: !3584, line: 35, type: !1162, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3591 = !DILocation(line: 37, column: 2, scope: !3590)
!3592 = !{i64 1765989}
!3593 = !DILocation(line: 38, column: 1, scope: !3590)
!3594 = distinct !DISubprogram(name: "native_irq_enable", scope: !3584, file: !3584, line: 40, type: !1162, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3595 = !DILocation(line: 42, column: 2, scope: !3594)
!3596 = !{i64 1766081}
!3597 = !DILocation(line: 43, column: 1, scope: !3594)
