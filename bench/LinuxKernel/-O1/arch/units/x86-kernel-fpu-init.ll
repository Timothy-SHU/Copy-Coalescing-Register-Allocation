; ModuleID = 'arch/x86/kernel/fpu/init.c'
source_filename = "arch/x86/kernel/fpu/init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mxcsr_feature_mask: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mxcsr_feature_mask ; .previous"

%struct.fpu_state_config = type { i32, i32, i64, i64, i64, i64 }
%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.cpuinfo_x86 = type { %union.anon.15, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.17, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.15 = type { i32 }
%union.anon.17 = type { i64, [88 x i8] }
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, i64, i64, %struct.list_head, i32, i64, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i64, [16 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%struct.cpumask = type { [1 x i64] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
%struct.restart_block = type { i64, ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.posix_cputimers_work = type { %struct.callback_head, %struct.mutex, i32 }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x ptr], i64, i64, i64, i64, i64, ptr, i64, i8, i32, [40 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.fpu = type { i32, i64, ptr, ptr, %struct.fpu_state_perm, %struct.fpu_state_perm, %struct.fpstate }
%struct.fpu_state_perm = type { i64, i32, i32 }

@mxcsr_feature_mask = hidden global i32 -1, section ".data..ro_after_init", align 4, !dbg !0
@__UNIQUE_ID___addressable_mxcsr_feature_mask178 = internal global ptr @mxcsr_feature_mask, section ".discard.addressable", align 8, !dbg !1537
@fpu_kernel_cfg = external dso_local global %struct.fpu_state_config, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@cpu_caps_cleared = external dso_local global [24 x i32], align 16
@cpu_caps_set = external dso_local global [24 x i32], align 16
@.str = private unnamed_addr constant [66 x i8] c"\010x86/fpu: Giving up, no FPU found and no math emulation present\0A\00", align 1, !dbg !1539
@.str.1 = private unnamed_addr constant [53 x i8] c"\016x86/fpu: Probing for FPU: FSW=0x%04hx FCW=0x%04hx\0A\00", align 1, !dbg !1544
@init_fpstate = external dso_local global %struct.fpstate, align 64
@fpu__init_system_mxcsr.fxregs = internal global %struct.fxregs_state zeroinitializer, section ".init.data", align 16, !dbg !1549
@fpu_user_cfg = external dso_local global %struct.fpu_state_config, align 8
@arch_task_struct_size = external dso_local global i32, section ".data..read_mostly", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_mxcsr_feature_mask178], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fpu__init_cpu() #0 align 16 !dbg !1565 {
entry:
  call void @fpu__init_cpu_generic() #10, !dbg !1566
  call void @fpu__init_cpu_xstate() #10, !dbg !1567
  ret void, !dbg !1568
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fpu__init_cpu_generic() #0 align 16 !dbg !1569 {
entry:
  %cr0 = alloca i64, align 8
  %cr4_mask = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cr0) #11, !dbg !1573
  call void @llvm.dbg.declare(metadata ptr %cr0, metadata !1571, metadata !DIExpression()), !dbg !1574
  call void @llvm.lifetime.start.p0(i64 8, ptr %cr4_mask) #11, !dbg !1575
  call void @llvm.dbg.declare(metadata ptr %cr4_mask, metadata !1572, metadata !DIExpression()), !dbg !1576
  store i64 0, ptr %cr4_mask, align 8, !dbg !1576
  %0 = load i64, ptr %cr4_mask, align 8, !dbg !1577
  %or = or i64 %0, 512, !dbg !1577
  store i64 %or, ptr %cr4_mask, align 8, !dbg !1577
  %1 = load i64, ptr %cr4_mask, align 8, !dbg !1579
  %or1 = or i64 %1, 1024, !dbg !1579
  store i64 %or1, ptr %cr4_mask, align 8, !dbg !1579
  %2 = load i64, ptr %cr4_mask, align 8, !dbg !1581
  %tobool = icmp ne i64 %2, 0, !dbg !1581
  br i1 %tobool, label %if.then, label %if.end, !dbg !1583

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %cr4_mask, align 8, !dbg !1584
  call void @cr4_set_bits(i64 noundef %3) #10, !dbg !1585
  br label %if.end, !dbg !1585

if.end:                                           ; preds = %if.then, %entry
  %call = call i64 @read_cr0() #10, !dbg !1586
  store i64 %call, ptr %cr0, align 8, !dbg !1587
  %4 = load i64, ptr %cr0, align 8, !dbg !1588
  %and = and i64 %4, -13, !dbg !1588
  store i64 %and, ptr %cr0, align 8, !dbg !1588
  %5 = load i64, ptr %cr0, align 8, !dbg !1589
  call void @write_cr0(i64 noundef %5) #10, !dbg !1590
  call void asm sideeffect "fninit", "~{dirflag},~{fpsr},~{flags}"() #11, !dbg !1591, !srcloc !1592
  call void @llvm.lifetime.end.p0(i64 8, ptr %cr4_mask) #11, !dbg !1593
  call void @llvm.lifetime.end.p0(i64 8, ptr %cr0) #11, !dbg !1593
  ret void, !dbg !1593
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1594 dso_local void @fpu__init_cpu_xstate() #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @fpu__init_system() #2 section ".init.text" align 16 !dbg !1596 {
entry:
  %call = call ptr @get_current() #10, !dbg !1597
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !1598
  %fpu = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !1599
  call void @fpstate_reset(ptr noundef %fpu) #10, !dbg !1600
  call void @fpu__init_system_early_generic() #12, !dbg !1601
  call void @fpu__init_cpu() #10, !dbg !1602
  call void @fpu__init_system_generic() #12, !dbg !1603
  call void @fpu__init_system_xstate_size_legacy() #12, !dbg !1604
  %0 = load i32, ptr @fpu_kernel_cfg, align 8, !dbg !1605
  call void @fpu__init_system_xstate(i32 noundef %0) #10, !dbg !1606
  call void @fpu__init_task_struct_size() #12, !dbg !1607
  ret void, !dbg !1608
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1609 dso_local void @fpstate_reset(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !1614 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #11, !dbg !1627
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1619, metadata !DIExpression()), !dbg !1627
  br label %do.body, !dbg !1627

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !1628
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1621, metadata !DIExpression()), !dbg !1628
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1628
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1628
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !1627
  br label %do.cond, !dbg !1628

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1628

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #11, !dbg !1629
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1625, metadata !DIExpression()), !dbg !1629
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #13, !dbg !1629, !srcloc !1630
  store i64 %1, ptr %pfo_val__, align 8, !dbg !1629
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !1629
  %3 = inttoptr i64 %2 to ptr, !dbg !1629
  store ptr %3, ptr %tmp, align 8, !dbg !1629
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #11, !dbg !1627
  %4 = load ptr, ptr %tmp, align 8, !dbg !1629
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !1627
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !1627
  store ptr %5, ptr %tmp1, align 8, !dbg !1627
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #11, !dbg !1631
  %6 = load ptr, ptr %tmp1, align 8, !dbg !1627
  ret ptr %6, !dbg !1632
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @fpu__init_system_early_generic() #2 section ".init.text" align 16 !dbg !1633 {
entry:
  %tmp = alloca i32, align 4
  br i1 false, label %cond.true, label %cond.false, !dbg !1634

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end12, label %land.lhs.true, !dbg !1636

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 121, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !1636
  br i1 %call, label %if.end12, label %land.lhs.true, !dbg !1634

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %conv = zext i1 icmp ne (i64 ptrtoint (ptr @cpu_caps_cleared to i64), i64 0) to i32, !dbg !1637
  %0 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !1637
  br i1 %0, label %land.lhs.true1, label %cond.false7, !dbg !1637

land.lhs.true1:                                   ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr @cpu_caps_cleared to i64), i64 0), label %land.lhs.true3, label %cond.false7, !dbg !1637

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %1 = load i64, ptr @cpu_caps_cleared, align 16, !dbg !1637
  %2 = call i1 @llvm.is.constant.i64(i64 %1), !dbg !1637
  br i1 %2, label %cond.true4, label %cond.false7, !dbg !1638

cond.true4:                                       ; preds = %land.lhs.true3
  %call5 = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef @cpu_caps_cleared) #10, !dbg !1637
  br i1 %call5, label %if.end12, label %if.then, !dbg !1637

cond.false7:                                      ; preds = %land.lhs.true3, %land.lhs.true1, %land.lhs.true
  %call8 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef @cpu_caps_cleared) #10, !dbg !1637
  br i1 %call8, label %if.end12, label %if.then, !dbg !1638

if.then:                                          ; preds = %cond.false7, %cond.true4
  %call10 = call zeroext i1 @fpu__probe_without_cpuid() #12, !dbg !1639
  br i1 %call10, label %if.then11, label %if.else, !dbg !1642

if.then11:                                        ; preds = %if.then
  br label %do.body, !dbg !1643

do.body:                                          ; preds = %if.then11
  call void @set_bit(i64 noundef 0, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !1644
  call void @set_bit(i64 noundef 0, ptr noundef @cpu_caps_set) #10, !dbg !1644
  br label %do.end, !dbg !1644

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !1644

if.else:                                          ; preds = %if.then
  call void @setup_clear_cpu_cap(i32 noundef 0) #10, !dbg !1646
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  br label %if.end12, !dbg !1647

if.end12:                                         ; preds = %if.end, %cond.false7, %cond.true4, %cond.false, %cond.true
  %call13 = call zeroext i1 @arch_test_bit(i64 noundef 0, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !1648
  br i1 %call13, label %if.end18, label %if.then14, !dbg !1650

if.then14:                                        ; preds = %if.end12
  br label %do.body15, !dbg !1651

do.body15:                                        ; preds = %if.then14
  br label %do.end16, !dbg !1654

do.end16:                                         ; preds = %do.body15
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #12, !dbg !1651
  store i32 %call17, ptr %tmp, align 4, !dbg !1654
  %3 = load i32, ptr %tmp, align 4, !dbg !1651
  br label %for.cond, !dbg !1656

for.cond:                                         ; preds = %for.cond, %do.end16
  call void asm sideeffect "hlt", "~{dirflag},~{fpsr},~{flags}"() #11, !dbg !1657, !srcloc !1660
  br label %for.cond, !dbg !1661, !llvm.loop !1662

if.end18:                                         ; preds = %if.end12
  ret void, !dbg !1666
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @fpu__init_system_generic() #2 section ".init.text" align 16 !dbg !1667 {
entry:
  call void @fpstate_init_user(ptr noundef @init_fpstate) #10, !dbg !1668
  call void @fpu__init_system_mxcsr() #12, !dbg !1669
  ret void, !dbg !1670
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @fpu__init_system_xstate_size_legacy() #2 section ".init.text" align 16 !dbg !1671 {
entry:
  %size = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #11, !dbg !1674
  call void @llvm.dbg.declare(metadata ptr %size, metadata !1673, metadata !DIExpression()), !dbg !1675
  store i32 512, ptr %size, align 4, !dbg !1676
  store i64 3, ptr getelementptr inbounds (%struct.fpu_state_config, ptr @fpu_user_cfg, i32 0, i32 4), align 8, !dbg !1680
  %0 = load i32, ptr %size, align 4, !dbg !1681
  store i32 %0, ptr @fpu_kernel_cfg, align 8, !dbg !1682
  %1 = load i32, ptr %size, align 4, !dbg !1683
  store i32 %1, ptr getelementptr inbounds (%struct.fpu_state_config, ptr @fpu_kernel_cfg, i32 0, i32 1), align 4, !dbg !1684
  %2 = load i32, ptr %size, align 4, !dbg !1685
  store i32 %2, ptr @fpu_user_cfg, align 8, !dbg !1686
  %3 = load i32, ptr %size, align 4, !dbg !1687
  store i32 %3, ptr getelementptr inbounds (%struct.fpu_state_config, ptr @fpu_user_cfg, i32 0, i32 1), align 4, !dbg !1688
  %call = call ptr @get_current() #10, !dbg !1689
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !1690
  %fpu = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !1691
  call void @fpstate_reset(ptr noundef %fpu) #10, !dbg !1692
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #11, !dbg !1693
  ret void, !dbg !1693
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1694 dso_local void @fpu__init_system_xstate(i32 noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @fpu__init_task_struct_size() #2 section ".init.text" align 16 !dbg !1697 {
entry:
  %task_size = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %task_size) #11, !dbg !1700
  call void @llvm.dbg.declare(metadata ptr %task_size, metadata !1699, metadata !DIExpression()), !dbg !1701
  store i32 7296, ptr %task_size, align 4, !dbg !1701
  %0 = load i32, ptr %task_size, align 4, !dbg !1702
  %conv = sext i32 %0 to i64, !dbg !1702
  %sub = sub i64 %conv, 4096, !dbg !1702
  %conv1 = trunc i64 %sub to i32, !dbg !1702
  store i32 %conv1, ptr %task_size, align 4, !dbg !1702
  %1 = load i32, ptr getelementptr inbounds (%struct.fpu_state_config, ptr @fpu_kernel_cfg, i32 0, i32 1), align 4, !dbg !1703
  %2 = load i32, ptr %task_size, align 4, !dbg !1704
  %add = add i32 %2, %1, !dbg !1704
  store i32 %add, ptr %task_size, align 4, !dbg !1704
  br label %do.body, !dbg !1705

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1706

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1706

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !1708

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !1709

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !1709

do.end4:                                          ; preds = %do.cond3
  br label %do.body5, !dbg !1711

do.body5:                                         ; preds = %do.end4
  br label %do.cond6, !dbg !1712

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1712

do.end7:                                          ; preds = %do.cond6
  %3 = load i32, ptr %task_size, align 4, !dbg !1714
  store i32 %3, ptr @arch_task_struct_size, align 4, !dbg !1715
  call void @llvm.lifetime.end.p0(i64 4, ptr %task_size) #11, !dbg !1716
  ret void, !dbg !1716
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cr4_set_bits(i64 noundef %mask) #6 align 16 !dbg !1717 {
entry:
  %mask.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !1722, metadata !DIExpression()), !dbg !1734
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !1735
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1723, metadata !DIExpression()), !dbg !1736
  br label %do.body, !dbg !1737

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1738

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !1739
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1724, metadata !DIExpression()), !dbg !1739
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !1739
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1728, metadata !DIExpression()), !dbg !1739
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1739
  %conv = zext i1 %cmp to i32, !dbg !1739
  store i32 1, ptr %tmp, align 4, !dbg !1739
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !1740
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !1740
  %0 = load i32, ptr %tmp, align 4, !dbg !1739
  %call = call i64 @arch_local_irq_save() #10, !dbg !1740
  store i64 %call, ptr %flags, align 8, !dbg !1740
  br label %do.cond, !dbg !1740

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1740

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !1738

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !1738

do.end3:                                          ; preds = %do.cond2
  %1 = load i64, ptr %mask.addr, align 8, !dbg !1741
  call void @cr4_set_bits_irqsoff(i64 noundef %1) #10, !dbg !1742
  br label %do.body4, !dbg !1743

do.body4:                                         ; preds = %do.end3
  br label %do.body5, !dbg !1744

do.body5:                                         ; preds = %do.body4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy6) #11, !dbg !1745
  call void @llvm.dbg.declare(metadata ptr %__dummy6, metadata !1729, metadata !DIExpression()), !dbg !1745
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy27) #11, !dbg !1745
  call void @llvm.dbg.declare(metadata ptr %__dummy27, metadata !1733, metadata !DIExpression()), !dbg !1745
  %cmp8 = icmp eq ptr %__dummy6, %__dummy27, !dbg !1745
  %conv9 = zext i1 %cmp8 to i32, !dbg !1745
  store i32 1, ptr %tmp10, align 4, !dbg !1745
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy27) #11, !dbg !1746
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy6) #11, !dbg !1746
  %2 = load i32, ptr %tmp10, align 4, !dbg !1745
  br label %do.body11, !dbg !1746

do.body11:                                        ; preds = %do.body5
  br label %do.cond12, !dbg !1747

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1747

do.end13:                                         ; preds = %do.cond12
  %3 = load i64, ptr %flags, align 8, !dbg !1746
  call void @arch_local_irq_restore(i64 noundef %3) #10, !dbg !1746
  br label %do.cond14, !dbg !1746

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !1746

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !1744

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !1744

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !1749
  ret void, !dbg !1749
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @read_cr0() #6 align 16 !dbg !1750 {
entry:
  %call = call i64 @native_read_cr0() #10, !dbg !1754
  ret i64 %call, !dbg !1755
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @write_cr0(i64 noundef %x) #6 align 16 !dbg !1756 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1758, metadata !DIExpression()), !dbg !1759
  %0 = load i64, ptr %x.addr, align 8, !dbg !1760
  call void @native_write_cr0(i64 noundef %0) #10, !dbg !1761
  ret void, !dbg !1762
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #3 align 16 !dbg !1763 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !1767
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1766, metadata !DIExpression()), !dbg !1768
  %call = call i64 @arch_local_save_flags() #10, !dbg !1769
  store i64 %call, ptr %flags, align 8, !dbg !1768
  call void @arch_local_irq_disable() #10, !dbg !1770
  %0 = load i64, ptr %flags, align 8, !dbg !1771
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !1772
  ret i64 %0, !dbg !1773
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cr4_set_bits_irqsoff(i64 noundef %mask) #6 align 16 !dbg !1774 {
entry:
  %mask.addr = alloca i64, align 8
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !1776, metadata !DIExpression()), !dbg !1777
  %0 = load i64, ptr %mask.addr, align 8, !dbg !1778
  call void @cr4_update_irqsoff(i64 noundef %0, i64 noundef 0) #10, !dbg !1779
  ret void, !dbg !1780
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #3 align 16 !dbg !1781 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1783, metadata !DIExpression()), !dbg !1784
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1785
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #10, !dbg !1787
  %tobool = icmp ne i32 %call, 0, !dbg !1787
  br i1 %tobool, label %if.end, label %if.then, !dbg !1788

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #10, !dbg !1789
  br label %if.end, !dbg !1789

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1790
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #3 align 16 !dbg !1791 {
entry:
  %call = call i64 @native_save_fl() #10, !dbg !1792
  ret i64 %call, !dbg !1793
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #3 align 16 !dbg !1794 {
entry:
  call void @native_irq_disable() #10, !dbg !1795
  ret void, !dbg !1796
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #3 align 16 !dbg !1797 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !1800
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1799, metadata !DIExpression()), !dbg !1801
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #11, !dbg !1802, !srcloc !1803
  %0 = load i64, ptr %flags, align 8, !dbg !1804
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !1805
  ret i64 %0, !dbg !1806
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #3 align 16 !dbg !1807 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !1808, !srcloc !1809
  ret void, !dbg !1810
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1811 dso_local void @cr4_update_irqsoff(i64 noundef, i64 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #3 align 16 !dbg !1814 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1818, metadata !DIExpression()), !dbg !1819
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1820
  %and = and i64 %0, 512, !dbg !1821
  %tobool = icmp ne i64 %and, 0, !dbg !1822
  %lnot = xor i1 %tobool, true, !dbg !1822
  %lnot.ext = zext i1 %lnot to i32, !dbg !1822
  ret i32 %lnot.ext, !dbg !1823
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #3 align 16 !dbg !1824 {
entry:
  call void @native_irq_enable() #10, !dbg !1825
  ret void, !dbg !1826
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #3 align 16 !dbg !1827 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !1828, !srcloc !1829
  ret void, !dbg !1830
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_cr0() #6 align 16 !dbg !1831 {
entry:
  %val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !1834
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1833, metadata !DIExpression()), !dbg !1835
  %0 = call i64 asm sideeffect "mov %cr0,$0\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) inttoptr (i64 4096 to ptr)) #11, !dbg !1836, !srcloc !1837
  store i64 %0, ptr %val, align 8, !dbg !1836
  %1 = load i64, ptr %val, align 8, !dbg !1838
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !1839
  ret i64 %1, !dbg !1840
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1841 dso_local void @native_write_cr0(i64 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1842 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1850, metadata !DIExpression()), !dbg !1852
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1851, metadata !DIExpression()), !dbg !1853
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1854
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1855
  br i1 %1, label %cond.true, label %cond.false, !dbg !1855

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1856
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1857
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !1858
  %conv = zext i1 %call to i32, !dbg !1858
  br label %cond.end, !dbg !1855

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1859
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1860
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #10, !dbg !1861
  %conv2 = zext i1 %call1 to i32, !dbg !1861
  br label %cond.end, !dbg !1855

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1855
  %tobool = icmp ne i32 %cond, 0, !dbg !1855
  ret i1 %tobool, !dbg !1862
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1863 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1866, metadata !DIExpression()), !dbg !1871
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1867, metadata !DIExpression()), !dbg !1872
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !1873
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1868, metadata !DIExpression()), !dbg !1874
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1875
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1876
  %div = udiv i64 %1, 64, !dbg !1876
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1877
  store ptr %add.ptr, ptr %p, align 8, !dbg !1874
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !1878
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1869, metadata !DIExpression()), !dbg !1879
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1880
  %rem = urem i64 %2, 64, !dbg !1880
  %shl = shl i64 1, %rem, !dbg !1880
  store i64 %shl, ptr %mask, align 8, !dbg !1879
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !1881
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1870, metadata !DIExpression()), !dbg !1882
  %3 = load ptr, ptr %p, align 8, !dbg !1883
  %4 = load i64, ptr %3, align 8, !dbg !1884
  store i64 %4, ptr %val, align 8, !dbg !1882
  %5 = load i64, ptr %val, align 8, !dbg !1885
  %6 = load i64, ptr %mask, align 8, !dbg !1886
  %and = and i64 %5, %6, !dbg !1887
  %tobool = icmp ne i64 %and, 0, !dbg !1888
  %lnot = xor i1 %tobool, true, !dbg !1888
  %lnot1 = xor i1 %lnot, true, !dbg !1889
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !1890
  ret i1 %lnot1, !dbg !1891
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1892 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1895, metadata !DIExpression()), !dbg !1897
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1896, metadata !DIExpression()), !dbg !1898
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1899
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1900
  %div = udiv i64 %1, 64, !dbg !1900
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1901
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !1902
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1903
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1904
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !1905
  ret i1 %call, !dbg !1906
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @fpu__probe_without_cpuid() #2 section ".init.text" align 16 !dbg !1907 {
entry:
  %cr0 = alloca i64, align 8
  %fsw = alloca i16, align 2
  %fcw = alloca i16, align 2
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cr0) #11, !dbg !1914
  call void @llvm.dbg.declare(metadata ptr %cr0, metadata !1911, metadata !DIExpression()), !dbg !1915
  call void @llvm.lifetime.start.p0(i64 2, ptr %fsw) #11, !dbg !1916
  call void @llvm.dbg.declare(metadata ptr %fsw, metadata !1912, metadata !DIExpression()), !dbg !1917
  call void @llvm.lifetime.start.p0(i64 2, ptr %fcw) #11, !dbg !1916
  call void @llvm.dbg.declare(metadata ptr %fcw, metadata !1913, metadata !DIExpression()), !dbg !1918
  store i16 -1, ptr %fcw, align 2, !dbg !1919
  store i16 -1, ptr %fsw, align 2, !dbg !1920
  %call = call i64 @read_cr0() #10, !dbg !1921
  store i64 %call, ptr %cr0, align 8, !dbg !1922
  %0 = load i64, ptr %cr0, align 8, !dbg !1923
  %and = and i64 %0, -13, !dbg !1923
  store i64 %and, ptr %cr0, align 8, !dbg !1923
  %1 = load i64, ptr %cr0, align 8, !dbg !1924
  call void @write_cr0(i64 noundef %1) #10, !dbg !1925
  call void asm sideeffect "fninit ; fnstsw $0 ; fnstcw $1", "=*m,=*m,*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %fsw, ptr elementtype(i16) %fcw, ptr elementtype(i16) %fsw, ptr elementtype(i16) %fcw) #11, !dbg !1926, !srcloc !1927
  br label %do.body, !dbg !1928

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1930

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1930

do.end:                                           ; preds = %do.cond
  %2 = load i16, ptr %fsw, align 2, !dbg !1928
  %conv = zext i16 %2 to i32, !dbg !1928
  %3 = load i16, ptr %fcw, align 2, !dbg !1928
  %conv1 = zext i16 %3 to i32, !dbg !1928
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %conv, i32 noundef %conv1) #12, !dbg !1928
  store i32 %call2, ptr %tmp, align 4, !dbg !1930
  %4 = load i32, ptr %tmp, align 4, !dbg !1928
  %5 = load i16, ptr %fsw, align 2, !dbg !1932
  %conv3 = zext i16 %5 to i32, !dbg !1932
  %cmp = icmp eq i32 %conv3, 0, !dbg !1933
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1934

land.rhs:                                         ; preds = %do.end
  %6 = load i16, ptr %fcw, align 2, !dbg !1935
  %conv5 = zext i16 %6 to i32, !dbg !1935
  %and6 = and i32 %conv5, 4159, !dbg !1936
  %cmp7 = icmp eq i32 %and6, 63, !dbg !1937
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %7 = phi i1 [ false, %do.end ], [ %cmp7, %land.rhs ], !dbg !1938
  call void @llvm.lifetime.end.p0(i64 2, ptr %fcw) #11, !dbg !1939
  call void @llvm.lifetime.end.p0(i64 2, ptr %fsw) #11, !dbg !1939
  call void @llvm.lifetime.end.p0(i64 8, ptr %cr0) #11, !dbg !1939
  ret i1 %7, !dbg !1940
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1941 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1947, metadata !DIExpression()), !dbg !1949
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1948, metadata !DIExpression()), !dbg !1950
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1951
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1952
  %div = sdiv i64 %1, 64, !dbg !1952
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1953
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !1954
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1955
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1956
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !1957
  ret void, !dbg !1958
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1959 dso_local void @setup_clear_cpu_cap(i32 noundef) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1961 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1967 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1971, metadata !DIExpression()), !dbg !1973
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1972, metadata !DIExpression()), !dbg !1974
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1975
  %and = and i64 %0, 63, !dbg !1976
  %shl = shl i64 1, %and, !dbg !1977
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1978
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1979
  %shr = ashr i64 %2, 6, !dbg !1980
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1978
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1978
  %and1 = and i64 %shl, %3, !dbg !1981
  %cmp = icmp ne i64 %and1, 0, !dbg !1982
  ret i1 %cmp, !dbg !1983
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1984 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1986, metadata !DIExpression()), !dbg !1989
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1987, metadata !DIExpression()), !dbg !1990
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !1991
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1988, metadata !DIExpression()), !dbg !1992
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1993
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1994
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !1995, !srcloc !1996
  %3 = icmp ult i8 %2, 2, !dbg !1995
  call void @llvm.assume(i1 %3), !dbg !1995
  store i8 %2, ptr %oldbit, align 1, !dbg !1995
  %4 = load i8, ptr %oldbit, align 1, !dbg !1997, !range !1998, !noundef !448
  %tobool = trunc i8 %4 to i1, !dbg !1997
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !1999
  ret i1 %tobool, !dbg !2000
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !2001 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2009, metadata !DIExpression()), !dbg !2011
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2010, metadata !DIExpression()), !dbg !2012
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2013
  %1 = load i64, ptr %size.addr, align 8, !dbg !2014
  %conv = trunc i64 %1 to i32, !dbg !2014
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #10, !dbg !2015
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2016
  %3 = load i64, ptr %size.addr, align 8, !dbg !2016
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #10, !dbg !2016
  ret void, !dbg !2017
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !2018 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2023, metadata !DIExpression()), !dbg !2025
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2024, metadata !DIExpression()), !dbg !2026
  ret i1 true, !dbg !2027
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !2028 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2033, metadata !DIExpression()), !dbg !2036
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2034, metadata !DIExpression()), !dbg !2037
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2035, metadata !DIExpression()), !dbg !2038
  ret void, !dbg !2039
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !2040 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2042, metadata !DIExpression()), !dbg !2044
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2043, metadata !DIExpression()), !dbg !2045
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2046
  %1 = load i64, ptr %size.addr, align 8, !dbg !2047
  %conv = trunc i64 %1 to i32, !dbg !2047
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !2048
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2049
  %3 = load i64, ptr %size.addr, align 8, !dbg !2049
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #10, !dbg !2049
  ret void, !dbg !2050
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !2051 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2053, metadata !DIExpression()), !dbg !2055
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2054, metadata !DIExpression()), !dbg !2056
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2057
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2059
  br i1 %1, label %if.then, label %if.else, !dbg !2060

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !2061
  %3 = load i64, ptr %nr.addr, align 8, !dbg !2061
  %shr = ashr i64 %3, 3, !dbg !2061
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !2061
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2063
  %and = and i64 %4, 7, !dbg !2063
  %sh_prom = trunc i64 %and to i32, !dbg !2063
  %shl = shl i32 1, %sh_prom, !dbg !2063
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #11, !dbg !2064, !srcloc !2065
  br label %if.end, !dbg !2066

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2067
  %6 = load i64, ptr %nr.addr, align 8, !dbg !2069
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #11, !dbg !2070, !srcloc !2071
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2072
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !2073 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2075, metadata !DIExpression()), !dbg !2077
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2076, metadata !DIExpression()), !dbg !2078
  ret i1 true, !dbg !2079
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2080 dso_local void @fpstate_init_user(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @fpu__init_system_mxcsr() #2 section ".init.text" align 16 !dbg !1551 {
entry:
  %mask = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #11, !dbg !2083
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1555, metadata !DIExpression()), !dbg !2084
  store i32 0, ptr %mask, align 4, !dbg !2084
  call void asm sideeffect "fxsave $0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.fxregs_state) @fpu__init_system_mxcsr.fxregs, ptr elementtype(%struct.fxregs_state) @fpu__init_system_mxcsr.fxregs) #11, !dbg !2085, !srcloc !2088
  %0 = load i32, ptr getelementptr inbounds (%struct.fxregs_state, ptr @fpu__init_system_mxcsr.fxregs, i32 0, i32 6), align 4, !dbg !2089
  store i32 %0, ptr %mask, align 4, !dbg !2090
  %1 = load i32, ptr %mask, align 4, !dbg !2091
  %cmp = icmp eq i32 %1, 0, !dbg !2093
  br i1 %cmp, label %if.then, label %if.end, !dbg !2094

if.then:                                          ; preds = %entry
  store i32 65471, ptr %mask, align 4, !dbg !2095
  br label %if.end, !dbg !2096

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %mask, align 4, !dbg !2097
  %3 = load i32, ptr @mxcsr_feature_mask, align 4, !dbg !2098
  %and = and i32 %3, %2, !dbg !2098
  store i32 %and, ptr @mxcsr_feature_mask, align 4, !dbg !2098
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #11, !dbg !2099
  ret void, !dbg !2099
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noredzone }
attributes #11 = { nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563}
!llvm.ident = !{!1564}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mxcsr_feature_mask", scope: !2, file: !3, line: 96, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/fpu/.init.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/fpu/init\22 -D KBUILD_BASENAME=\22init\22 -D KBUILD_MODNAME=\22init\22 -D __KBUILD_MODNAME=kmod_init -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/fpu/init.ll arch/x86/kernel/fpu/init.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !52, globals: !1536, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/fpu/init.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6dc0d12b40359ed3f6a51b78f26dd133")
!4 = !{!5, !11, !17, !24, !29}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !12, line: 16, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "TT_NONE", value: 0)
!15 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!16 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !18, line: 51, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!21 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!22 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!23 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 10, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "false", value: 0)
!28 = !DIEnumerator(name: "true", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xfeature", file: !30, line: 102, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!32 = !DIEnumerator(name: "XFEATURE_FP", value: 0)
!33 = !DIEnumerator(name: "XFEATURE_SSE", value: 1)
!34 = !DIEnumerator(name: "XFEATURE_YMM", value: 2)
!35 = !DIEnumerator(name: "XFEATURE_BNDREGS", value: 3)
!36 = !DIEnumerator(name: "XFEATURE_BNDCSR", value: 4)
!37 = !DIEnumerator(name: "XFEATURE_OPMASK", value: 5)
!38 = !DIEnumerator(name: "XFEATURE_ZMM_Hi256", value: 6)
!39 = !DIEnumerator(name: "XFEATURE_Hi16_ZMM", value: 7)
!40 = !DIEnumerator(name: "XFEATURE_PT_UNIMPLEMENTED_SO_FAR", value: 8)
!41 = !DIEnumerator(name: "XFEATURE_PKRU", value: 9)
!42 = !DIEnumerator(name: "XFEATURE_PASID", value: 10)
!43 = !DIEnumerator(name: "XFEATURE_CET_USER", value: 11)
!44 = !DIEnumerator(name: "XFEATURE_CET_KERNEL_UNUSED", value: 12)
!45 = !DIEnumerator(name: "XFEATURE_RSRVD_COMP_13", value: 13)
!46 = !DIEnumerator(name: "XFEATURE_RSRVD_COMP_14", value: 14)
!47 = !DIEnumerator(name: "XFEATURE_LBR", value: 15)
!48 = !DIEnumerator(name: "XFEATURE_RSRVD_COMP_16", value: 16)
!49 = !DIEnumerator(name: "XFEATURE_XTILE_CFG", value: 17)
!50 = !DIEnumerator(name: "XFEATURE_XTILE_DATA", value: 18)
!51 = !DIEnumerator(name: "XFEATURE_MAX", value: 19)
!52 = !{!53, !54, !55, !56, !65, !86, !1528, !1529, !1530, !1532, !1534}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !58, line: 746, size: 58368, elements: !59)
!58 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!59 = !{!60, !73, !74, !75, !87, !88, !89, !90, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !182, !193, !320, !324, !327, !358, !359, !360, !361, !372, !374, !375, !376, !377, !378, !379, !390, !391, !394, !395, !396, !397, !398, !399, !400, !401, !408, !409, !416, !417, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !696, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !752, !754, !755, !756, !768, !770, !771, !772, !773, !774, !775, !781, !782, !783, !784, !785, !786, !787, !801, !807, !811, !812, !813, !816, !821, !824, !831, !836, !839, !842, !845, !848, !851, !854, !860, !861, !862, !868, !869, !873, !874, !875, !878, !886, !887, !896, !907, !908, !909, !910, !911, !916, !917, !918, !921, !922, !925, !928, !931, !934, !937, !938, !1025, !1036, !1037, !1038, !1039, !1045, !1050, !1051, !1052, !1055, !1056, !1059, !1062, !1063, !1066, !1067, !1068, !1071, !1072, !1073, !1076, !1077, !1078, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1110, !1113, !1181, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1193, !1265, !1267, !1268, !1269, !1270, !1271, !1283, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1300, !1301, !1302}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !57, file: !58, line: 752, baseType: !61, size: 192)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !62, line: 56, size: 192, elements: !63)
!62 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!63 = !{!64, !66, !67, !72}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !61, file: !62, line: 57, baseType: !65, size: 64)
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !61, file: !62, line: 58, baseType: !65, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !61, file: !62, line: 59, baseType: !68, size: 32, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !69, line: 21, baseType: !70)
!69 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !71, line: 27, baseType: !7)
!71 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!72 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !61, file: !62, line: 61, baseType: !68, size: 32, offset: 160)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !57, file: !58, line: 754, baseType: !7, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !57, file: !58, line: 767, baseType: !53, size: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !57, file: !58, line: 768, baseType: !76, size: 32, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !77, line: 113, baseType: !78)
!77 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !77, line: 111, size: 32, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !78, file: !77, line: 112, baseType: !81, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !82, line: 174, baseType: !83)
!82 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !82, line: 172, size: 32, elements: !84)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !83, file: !82, line: 173, baseType: !86, size: 32)
!86 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !57, file: !58, line: 770, baseType: !7, size: 32, offset: 352)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !57, file: !58, line: 771, baseType: !7, size: 32, offset: 384)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !57, file: !58, line: 774, baseType: !86, size: 32, offset: 416)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !57, file: !58, line: 775, baseType: !91, size: 128, offset: 448)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !92, line: 58, size: 128, elements: !93)
!92 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!93 = !{!94, !100, !105, !109}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !91, file: !92, line: 59, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !96, line: 60, size: 64, elements: !97)
!96 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !95, file: !96, line: 61, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !92, line: 60, baseType: !101, size: 32, offset: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !91, file: !92, line: 60, size: 32, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !101, file: !92, line: 61, baseType: !7, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !101, file: !92, line: 62, baseType: !81, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !91, file: !92, line: 65, baseType: !106, size: 16, offset: 96)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !69, line: 19, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !71, line: 24, baseType: !108)
!108 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !91, file: !92, line: 65, baseType: !106, size: 16, offset: 112)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !57, file: !58, line: 776, baseType: !7, size: 32, offset: 576)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !57, file: !58, line: 777, baseType: !65, size: 64, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !57, file: !58, line: 778, baseType: !56, size: 64, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !57, file: !58, line: 787, baseType: !86, size: 32, offset: 768)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !57, file: !58, line: 788, baseType: !86, size: 32, offset: 800)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !57, file: !58, line: 790, baseType: !86, size: 32, offset: 832)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !57, file: !58, line: 792, baseType: !86, size: 32, offset: 864)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !57, file: !58, line: 793, baseType: !86, size: 32, offset: 896)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !57, file: !58, line: 794, baseType: !86, size: 32, offset: 928)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !57, file: !58, line: 795, baseType: !7, size: 32, offset: 960)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !57, file: !58, line: 797, baseType: !121, size: 2048, offset: 1024)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !58, line: 551, size: 2048, elements: !122)
!122 = !{!123, !128, !136, !140, !141, !147, !148, !149, !150, !151, !152, !156, !157, !158, !159, !161, !164, !165, !166}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !121, file: !58, line: 553, baseType: !124, size: 128)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !58, line: 411, size: 128, elements: !125)
!125 = !{!126, !127}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !124, file: !58, line: 412, baseType: !65, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !124, file: !58, line: 413, baseType: !68, size: 32, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !121, file: !58, line: 554, baseType: !129, size: 192, align: 64, offset: 128)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !130, line: 5, size: 192, align: 64, elements: !131)
!130 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!131 = !{!132, !133, !135}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !129, file: !130, line: 6, baseType: !65, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !129, file: !130, line: 7, baseType: !134, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !129, file: !130, line: 8, baseType: !134, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !121, file: !58, line: 555, baseType: !137, size: 64, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !69, line: 23, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !71, line: 31, baseType: !139)
!139 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !121, file: !58, line: 556, baseType: !137, size: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !121, file: !58, line: 558, baseType: !142, size: 128, offset: 448)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !82, line: 190, size: 128, elements: !143)
!143 = !{!144, !146}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !142, file: !82, line: 191, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !142, file: !82, line: 191, baseType: !145, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !121, file: !58, line: 559, baseType: !7, size: 32, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !121, file: !58, line: 561, baseType: !137, size: 64, offset: 640)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !121, file: !58, line: 562, baseType: !137, size: 64, offset: 704)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !121, file: !58, line: 563, baseType: !137, size: 64, offset: 768)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !121, file: !58, line: 564, baseType: !137, size: 64, offset: 832)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !121, file: !58, line: 565, baseType: !153, size: 64, offset: 896)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !69, line: 22, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !71, line: 30, baseType: !155)
!155 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !121, file: !58, line: 566, baseType: !137, size: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !121, file: !58, line: 568, baseType: !137, size: 64, offset: 1024)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !121, file: !58, line: 571, baseType: !86, size: 32, offset: 1088)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !121, file: !58, line: 572, baseType: !160, size: 64, offset: 1152)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !121, file: !58, line: 574, baseType: !162, size: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !58, line: 49, flags: DIFlagFwdDecl)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !121, file: !58, line: 576, baseType: !162, size: 64, offset: 1280)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !121, file: !58, line: 578, baseType: !65, size: 64, offset: 1344)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !121, file: !58, line: 588, baseType: !167, size: 512, align: 512, offset: 1536)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !58, line: 497, size: 512, align: 512, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !167, file: !58, line: 498, baseType: !137, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !167, file: !58, line: 499, baseType: !137, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !167, file: !58, line: 500, baseType: !137, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !167, file: !58, line: 501, baseType: !68, size: 32, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !167, file: !58, line: 502, baseType: !68, size: 32, offset: 224)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !167, file: !58, line: 503, baseType: !65, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !167, file: !58, line: 504, baseType: !65, size: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !167, file: !58, line: 505, baseType: !65, size: 64, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !167, file: !58, line: 506, baseType: !178, size: 64, align: 64, offset: 448)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !58, line: 445, size: 64, align: 64, elements: !179)
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !178, file: !58, line: 446, baseType: !7, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !178, file: !58, line: 447, baseType: !7, size: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !57, file: !58, line: 798, baseType: !183, size: 384, offset: 3072)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !58, line: 592, size: 384, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !183, file: !58, line: 593, baseType: !142, size: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !183, file: !58, line: 594, baseType: !65, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !183, file: !58, line: 595, baseType: !65, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !183, file: !58, line: 596, baseType: !7, size: 32, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !183, file: !58, line: 597, baseType: !108, size: 16, offset: 288)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !183, file: !58, line: 598, baseType: !108, size: 16, offset: 304)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !183, file: !58, line: 600, baseType: !192, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !57, file: !58, line: 799, baseType: !194, size: 1792, offset: 3456)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !58, line: 610, size: 1792, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !317, !318}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !194, file: !58, line: 611, baseType: !129, size: 192, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !194, file: !58, line: 618, baseType: !137, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !194, file: !58, line: 619, baseType: !137, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !194, file: !58, line: 620, baseType: !137, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !194, file: !58, line: 621, baseType: !137, size: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !194, file: !58, line: 622, baseType: !137, size: 64, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !194, file: !58, line: 629, baseType: !153, size: 64, offset: 512)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !194, file: !58, line: 630, baseType: !137, size: 64, offset: 576)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !194, file: !58, line: 631, baseType: !7, size: 32, offset: 640)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !194, file: !58, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !194, file: !58, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !194, file: !58, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !194, file: !58, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !194, file: !58, line: 662, baseType: !210, size: 512, offset: 704)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !211)
!211 = !{!212, !220, !221, !226, !313, !314, !315, !316}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !210, file: !6, line: 119, baseType: !213, size: 256)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !214, line: 9, size: 256, elements: !215)
!214 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!215 = !{!216, !217}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !213, file: !214, line: 10, baseType: !129, size: 192, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !213, file: !214, line: 11, baseType: !218, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !219, line: 29, baseType: !153)
!219 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !210, file: !6, line: 120, baseType: !218, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !210, file: !6, line: 121, baseType: !222, size: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!5, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !210, file: !6, line: 122, baseType: !227, size: 64, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !229)
!229 = !{!230, !281, !282, !286, !296, !297, !308, !312}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !228, file: !6, line: 160, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !233)
!233 = !{!234, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !232, file: !6, line: 216, baseType: !235, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !236, line: 23, baseType: !237)
!236 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !236, line: 14, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !237, file: !236, line: 15, baseType: !240, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !241, line: 44, baseType: !242)
!241 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !241, line: 14, size: 32, elements: !243)
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !242, file: !241, line: 15, baseType: !245, size: 32)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !241, line: 15, size: 32, elements: !246)
!246 = !{!247, !248, !256}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !245, file: !241, line: 16, baseType: !81, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !241, line: 24, baseType: !249, size: 16)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !245, file: !241, line: 24, size: 16, elements: !250)
!250 = !{!251, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !249, file: !241, line: 25, baseType: !252, size: 8)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !69, line: 17, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !71, line: 21, baseType: !254)
!254 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !249, file: !241, line: 26, baseType: !252, size: 8, offset: 8)
!256 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !241, line: 28, baseType: !257, size: 32)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !245, file: !241, line: 28, size: 32, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !257, file: !241, line: 29, baseType: !106, size: 16)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !257, file: !241, line: 30, baseType: !106, size: 16, offset: 16)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !232, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !232, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !232, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !232, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !232, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !232, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !232, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !232, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !232, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !232, file: !6, line: 227, baseType: !108, size: 16, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !232, file: !6, line: 228, baseType: !108, size: 16, offset: 208)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !232, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !232, file: !6, line: 235, baseType: !218, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !232, file: !6, line: 236, baseType: !225, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !232, file: !6, line: 237, baseType: !218, size: 64, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !232, file: !6, line: 238, baseType: !225, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !232, file: !6, line: 239, baseType: !278, size: 4096, align: 512, offset: 512)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 4096, align: 512, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 8)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !228, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !228, file: !6, line: 162, baseType: !283, size: 32, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !82, line: 32, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !285, line: 96, baseType: !86)
!285 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!286 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !228, file: !6, line: 163, baseType: !287, size: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !288, line: 274, baseType: !289)
!288 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !288, line: 274, size: 32, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !289, file: !288, line: 274, baseType: !292, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !288, line: 69, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !288, line: 64, size: 32, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !293, file: !288, line: 65, baseType: !7, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !228, file: !6, line: 164, baseType: !225, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !228, file: !6, line: 165, baseType: !298, size: 128, offset: 256)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !214, line: 14, size: 128, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !298, file: !214, line: 15, baseType: !301, size: 128)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !130, line: 26, size: 128, elements: !302)
!302 = !{!303, !307}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !301, file: !130, line: 27, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !130, line: 12, size: 64, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !304, file: !130, line: 13, baseType: !134, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !301, file: !130, line: 28, baseType: !134, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !228, file: !6, line: 166, baseType: !309, size: 64, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!218}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !228, file: !6, line: 167, baseType: !218, size: 64, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !210, file: !6, line: 123, baseType: !252, size: 8, offset: 448)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !210, file: !6, line: 124, baseType: !252, size: 8, offset: 456)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !210, file: !6, line: 125, baseType: !252, size: 8, offset: 464)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !210, file: !6, line: 126, baseType: !252, size: 8, offset: 472)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !194, file: !58, line: 671, baseType: !210, size: 512, offset: 1216)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !194, file: !58, line: 679, baseType: !319, size: 64, offset: 1728)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !57, file: !58, line: 800, baseType: !321, size: 64, offset: 5248)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !58, line: 800, flags: DIFlagFwdDecl)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !57, file: !58, line: 809, baseType: !325, size: 64, offset: 5312)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !58, line: 70, flags: DIFlagFwdDecl)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !57, file: !58, line: 825, baseType: !328, size: 2048, align: 512, offset: 5632)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !58, line: 509, size: 2048, align: 512, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !328, file: !58, line: 511, baseType: !137, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !328, file: !58, line: 512, baseType: !137, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !328, file: !58, line: 513, baseType: !137, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !328, file: !58, line: 514, baseType: !137, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !328, file: !58, line: 515, baseType: !137, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !328, file: !58, line: 516, baseType: !137, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !328, file: !58, line: 518, baseType: !137, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !328, file: !58, line: 519, baseType: !137, size: 64, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !328, file: !58, line: 520, baseType: !153, size: 64, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !328, file: !58, line: 522, baseType: !137, size: 64, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !328, file: !58, line: 523, baseType: !137, size: 64, offset: 640)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !328, file: !58, line: 524, baseType: !153, size: 64, offset: 704)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !328, file: !58, line: 526, baseType: !153, size: 64, offset: 768)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !328, file: !58, line: 527, baseType: !137, size: 64, offset: 832)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !328, file: !58, line: 529, baseType: !137, size: 64, offset: 896)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !328, file: !58, line: 530, baseType: !137, size: 64, offset: 960)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !328, file: !58, line: 531, baseType: !137, size: 64, offset: 1024)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !328, file: !58, line: 532, baseType: !137, size: 64, offset: 1088)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !328, file: !58, line: 533, baseType: !137, size: 64, offset: 1152)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !328, file: !58, line: 535, baseType: !137, size: 64, offset: 1216)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !328, file: !58, line: 536, baseType: !137, size: 64, offset: 1280)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !328, file: !58, line: 537, baseType: !137, size: 64, offset: 1344)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !328, file: !58, line: 538, baseType: !137, size: 64, offset: 1408)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !328, file: !58, line: 539, baseType: !137, size: 64, offset: 1472)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !328, file: !58, line: 540, baseType: !137, size: 64, offset: 1536)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !328, file: !58, line: 541, baseType: !137, size: 64, offset: 1600)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !328, file: !58, line: 542, baseType: !137, size: 64, offset: 1664)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !328, file: !58, line: 543, baseType: !137, size: 64, offset: 1728)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !57, file: !58, line: 833, baseType: !7, size: 32, offset: 7680)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !57, file: !58, line: 836, baseType: !7, size: 32, offset: 7712)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !57, file: !58, line: 837, baseType: !86, size: 32, offset: 7744)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !57, file: !58, line: 838, baseType: !362, size: 64, offset: 7808)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !365, line: 19, baseType: !366)
!365 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !365, line: 19, size: 64, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !366, file: !365, line: 19, baseType: !369, size: 64)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 64, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 1)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !57, file: !58, line: 839, baseType: !373, size: 64, offset: 7872)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !57, file: !58, line: 840, baseType: !364, size: 64, offset: 7936)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !57, file: !58, line: 841, baseType: !53, size: 64, offset: 8000)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !57, file: !58, line: 843, baseType: !108, size: 16, offset: 8064)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !57, file: !58, line: 845, baseType: !108, size: 16, offset: 8080)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !57, file: !58, line: 848, baseType: !86, size: 32, offset: 8096)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !57, file: !58, line: 849, baseType: !380, size: 32, offset: 8128)
!380 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !58, line: 718, size: 32, elements: !381)
!381 = !{!382, !389}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !380, file: !58, line: 724, baseType: !383, size: 32)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !58, line: 719, size: 32, elements: !384)
!384 = !{!385, !386, !387, !388}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !383, file: !58, line: 720, baseType: !252, size: 8)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !383, file: !58, line: 721, baseType: !252, size: 8, offset: 8)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !383, file: !58, line: 722, baseType: !252, size: 8, offset: 16)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !383, file: !58, line: 723, baseType: !252, size: 8, offset: 24)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !380, file: !58, line: 725, baseType: !68, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !57, file: !58, line: 850, baseType: !142, size: 128, offset: 8192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !57, file: !58, line: 851, baseType: !392, size: 64, offset: 8320)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !58, line: 60, flags: DIFlagFwdDecl)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !57, file: !58, line: 855, baseType: !65, size: 64, offset: 8384)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !57, file: !58, line: 856, baseType: !252, size: 8, offset: 8448)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !57, file: !58, line: 857, baseType: !252, size: 8, offset: 8456)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !57, file: !58, line: 858, baseType: !86, size: 32, offset: 8480)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !57, file: !58, line: 859, baseType: !142, size: 128, offset: 8512)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !57, file: !58, line: 860, baseType: !86, size: 32, offset: 8640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !57, file: !58, line: 861, baseType: !142, size: 128, offset: 8704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !57, file: !58, line: 873, baseType: !402, size: 256, offset: 8832)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !58, line: 376, size: 256, elements: !403)
!403 = !{!404, !405, !406, !407}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !402, file: !58, line: 381, baseType: !65, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !402, file: !58, line: 384, baseType: !139, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !402, file: !58, line: 389, baseType: !139, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !402, file: !58, line: 392, baseType: !139, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !57, file: !58, line: 875, baseType: !142, size: 128, offset: 9088)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !57, file: !58, line: 877, baseType: !410, size: 320, offset: 9216)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !411, line: 86, size: 320, elements: !412)
!411 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!412 = !{!413, !414, !415}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !410, file: !411, line: 87, baseType: !86, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !410, file: !411, line: 88, baseType: !142, size: 128, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !410, file: !411, line: 89, baseType: !142, size: 128, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !57, file: !58, line: 878, baseType: !129, size: 192, align: 64, offset: 9536)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !57, file: !58, line: 881, baseType: !418, size: 64, offset: 9728)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !420, line: 733, size: 10240, elements: !421)
!420 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!421 = !{!422, !612}
!422 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !420, line: 734, baseType: !423, size: 10240)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !419, file: !420, line: 734, size: 10240, elements: !424)
!424 = !{!425, !429, !451, !458, !459, !460, !461, !462, !463, !471, !472, !473, !479, !480, !487, !488, !489, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !530, !544, !547, !579, !580, !581, !584, !587, !588, !591, !592, !593, !599, !600}
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !420, line: 739, baseType: !426, size: 512, align: 512)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !423, file: !420, line: 739, size: 512, align: 512, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !426, file: !420, line: 747, baseType: !81, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !423, file: !420, line: 750, baseType: !430, size: 128, offset: 512)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !431, line: 218, size: 128, elements: !432)
!431 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!432 = !{!433, !449, !450}
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !431, line: 219, baseType: !434, size: 32)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !431, line: 219, size: 32, elements: !435)
!435 = !{!436, !445}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !434, file: !431, line: 220, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !438, line: 29, baseType: !439)
!438 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !438, line: 17, size: 32, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !438, line: 18, baseType: !442, size: 32)
!442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !439, file: !438, line: 18, size: 32, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !442, file: !438, line: 19, baseType: !237, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !434, file: !431, line: 221, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !431, line: 197, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 197, elements: !448)
!448 = !{}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !430, file: !431, line: 223, baseType: !7, size: 32, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !430, file: !431, line: 224, baseType: !53, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !423, file: !420, line: 752, baseType: !452, size: 64, offset: 640)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!65, !455, !65, !65, !65, !65}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !457, line: 537, flags: DIFlagFwdDecl)
!457 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !423, file: !420, line: 756, baseType: !65, size: 64, offset: 704)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !423, file: !420, line: 757, baseType: !65, size: 64, offset: 768)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !423, file: !420, line: 760, baseType: !65, size: 64, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !423, file: !420, line: 761, baseType: !65, size: 64, offset: 896)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !423, file: !420, line: 763, baseType: !65, size: 64, offset: 960)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !423, file: !420, line: 764, baseType: !464, size: 64, offset: 1024)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !457, line: 299, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !457, line: 299, size: 64, elements: !467)
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !466, file: !457, line: 299, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !470, line: 18, baseType: !65)
!470 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!471 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !423, file: !420, line: 773, baseType: !81, size: 32, offset: 1088)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !423, file: !420, line: 785, baseType: !81, size: 32, offset: 1120)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !423, file: !420, line: 795, baseType: !474, size: 64, offset: 1152)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !420, line: 726, size: 128, elements: !476)
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !475, file: !420, line: 727, baseType: !137, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !475, file: !420, line: 728, baseType: !86, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !423, file: !420, line: 801, baseType: !65, size: 64, offset: 1216)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !423, file: !420, line: 804, baseType: !481, size: 64, offset: 1280)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !482, line: 13, baseType: !483)
!482 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !82, line: 181, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !82, line: 179, size: 64, elements: !485)
!485 = !{!486}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !484, file: !82, line: 180, baseType: !153, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !423, file: !420, line: 806, baseType: !86, size: 32, offset: 1344)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !423, file: !420, line: 808, baseType: !437, size: 32, offset: 1376)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !423, file: !420, line: 823, baseType: !490, size: 320, offset: 1408)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !491, line: 48, size: 320, elements: !492)
!491 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!492 = !{!493, !494, !495, !500, !501}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !490, file: !491, line: 49, baseType: !481, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !490, file: !491, line: 55, baseType: !481, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !490, file: !491, line: 57, baseType: !496, size: 32, offset: 128)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !497, line: 15, size: 32, elements: !498)
!497 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !496, file: !497, line: 20, baseType: !81, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !490, file: !491, line: 59, baseType: !235, size: 32, offset: 160)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !490, file: !491, line: 60, baseType: !142, size: 128, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !423, file: !420, line: 825, baseType: !142, size: 128, offset: 1728)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !423, file: !420, line: 845, baseType: !86, size: 32, offset: 1856)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !423, file: !420, line: 849, baseType: !65, size: 64, offset: 1920)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !423, file: !420, line: 850, baseType: !65, size: 64, offset: 1984)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !423, file: !420, line: 852, baseType: !65, size: 64, offset: 2048)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !423, file: !420, line: 853, baseType: !65, size: 64, offset: 2112)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !423, file: !420, line: 854, baseType: !483, size: 64, offset: 2176)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !423, file: !420, line: 855, baseType: !65, size: 64, offset: 2240)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !423, file: !420, line: 856, baseType: !65, size: 64, offset: 2304)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !423, file: !420, line: 857, baseType: !65, size: 64, offset: 2368)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !423, file: !420, line: 858, baseType: !65, size: 64, offset: 2432)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !423, file: !420, line: 865, baseType: !292, size: 32, offset: 2496)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !423, file: !420, line: 867, baseType: !437, size: 32, offset: 2528)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !423, file: !420, line: 869, baseType: !65, size: 64, offset: 2560)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !423, file: !420, line: 869, baseType: !65, size: 64, offset: 2624)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !423, file: !420, line: 869, baseType: !65, size: 64, offset: 2688)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !423, file: !420, line: 869, baseType: !65, size: 64, offset: 2752)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !423, file: !420, line: 870, baseType: !65, size: 64, offset: 2816)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !423, file: !420, line: 870, baseType: !65, size: 64, offset: 2880)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !423, file: !420, line: 870, baseType: !65, size: 64, offset: 2944)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !423, file: !420, line: 871, baseType: !65, size: 64, offset: 3008)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !423, file: !420, line: 871, baseType: !65, size: 64, offset: 3072)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !423, file: !420, line: 871, baseType: !65, size: 64, offset: 3136)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !423, file: !420, line: 871, baseType: !65, size: 64, offset: 3200)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !423, file: !420, line: 873, baseType: !527, size: 3328, offset: 3264)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 3328, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 52)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !423, file: !420, line: 875, baseType: !531, size: 1280, offset: 6592)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 1280, elements: !542)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !533, line: 22, size: 320, elements: !534)
!533 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!534 = !{!535, !536, !537, !538}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !532, file: !533, line: 23, baseType: !235, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !532, file: !533, line: 24, baseType: !153, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !532, file: !533, line: 26, baseType: !142, size: 128, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !532, file: !533, line: 28, baseType: !539, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !69, line: 20, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !71, line: 26, baseType: !86)
!542 = !{!543}
!543 = !DISubrange(count: 4)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !423, file: !420, line: 877, baseType: !545, size: 64, offset: 7872)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !420, line: 877, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !423, file: !420, line: 880, baseType: !548, size: 1088, offset: 7936)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !549, line: 72, baseType: !550)
!549 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !549, line: 23, size: 1088, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !559, !560, !568, !569, !573, !574, !575}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !550, file: !549, line: 28, baseType: !137, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !550, file: !549, line: 38, baseType: !483, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !550, file: !549, line: 40, baseType: !65, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !550, file: !549, line: 43, baseType: !490, size: 320, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !550, file: !549, line: 44, baseType: !557, size: 64, offset: 512)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !549, line: 44, flags: DIFlagFwdDecl)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !550, file: !549, line: 48, baseType: !65, size: 64, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !550, file: !549, line: 59, baseType: !561, size: 256, offset: 640)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !562, line: 66, size: 256, elements: !563)
!562 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!563 = !{!564, !565, !566, !567}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !561, file: !562, line: 67, baseType: !481, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !561, file: !562, line: 68, baseType: !235, size: 32, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !561, file: !562, line: 70, baseType: !496, size: 32, offset: 96)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !561, file: !562, line: 72, baseType: !142, size: 128, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !550, file: !549, line: 60, baseType: !53, size: 64, offset: 896)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !550, file: !549, line: 61, baseType: !570, size: 64, offset: 960)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !549, line: 61, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !550, file: !549, line: 63, baseType: !81, size: 32, offset: 1024)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !550, file: !549, line: 69, baseType: !106, size: 16, offset: 1056)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !550, file: !549, line: 70, baseType: !576, size: 16, offset: 1072)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !69, line: 18, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !71, line: 23, baseType: !578)
!578 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !423, file: !420, line: 882, baseType: !65, size: 64, offset: 9024)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !423, file: !420, line: 885, baseType: !437, size: 32, offset: 9088)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !423, file: !420, line: 886, baseType: !582, size: 64, offset: 9152)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !420, line: 732, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !423, file: !420, line: 901, baseType: !585, size: 64, offset: 9216)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !420, line: 901, flags: DIFlagFwdDecl)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !423, file: !420, line: 904, baseType: !455, size: 64, offset: 9280)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !423, file: !420, line: 906, baseType: !589, size: 64, offset: 9344)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !420, line: 906, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !423, file: !420, line: 930, baseType: !81, size: 32, offset: 9408)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !423, file: !420, line: 933, baseType: !81, size: 32, offset: 9440)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !423, file: !420, line: 935, baseType: !594, size: 64, offset: 9472)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !18, line: 103, size: 64, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !594, file: !18, line: 104, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !18, line: 101, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !423, file: !420, line: 940, baseType: !481, size: 64, offset: 9536)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !423, file: !420, line: 942, baseType: !601, size: 256, offset: 9600)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !602, line: 98, size: 256, elements: !603)
!602 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!603 = !{!604, !605, !606}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !601, file: !602, line: 99, baseType: !481, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !601, file: !602, line: 100, baseType: !142, size: 128, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !601, file: !602, line: 101, baseType: !607, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !602, line: 21, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !419, file: !420, line: 986, baseType: !613, offset: 10240)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: -1)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !57, file: !58, line: 882, baseType: !418, size: 64, offset: 9792)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !57, file: !58, line: 884, baseType: !86, size: 32, offset: 9856)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !57, file: !58, line: 885, baseType: !86, size: 32, offset: 9888)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !57, file: !58, line: 886, baseType: !86, size: 32, offset: 9920)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !57, file: !58, line: 888, baseType: !86, size: 32, offset: 9952)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !57, file: !58, line: 890, baseType: !65, size: 64, offset: 9984)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !57, file: !58, line: 893, baseType: !7, size: 32, offset: 10048)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !57, file: !58, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !57, file: !58, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !57, file: !58, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !57, file: !58, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !57, file: !58, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !57, file: !58, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !57, file: !58, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !57, file: !58, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !57, file: !58, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !57, file: !58, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !57, file: !58, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !57, file: !58, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !57, file: !58, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !57, file: !58, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !57, file: !58, line: 969, baseType: !65, size: 64, offset: 10176)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !57, file: !58, line: 971, baseType: !639, size: 448, offset: 10240)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 448, elements: !640)
!640 = !{!641, !642, !648}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !639, file: !12, line: 26, baseType: !65, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !639, file: !12, line: 27, baseType: !643, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!646, !647}
!646 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !12, line: 28, baseType: !649, size: 320, offset: 128)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !639, file: !12, line: 28, size: 320, elements: !650)
!650 = !{!651, !661, !686}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !649, file: !12, line: 37, baseType: !652, size: 320)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !12, line: 30, size: 320, elements: !653)
!653 = !{!654, !656, !657, !658, !659, !660}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !652, file: !12, line: 31, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !652, file: !12, line: 32, baseType: !68, size: 32, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !12, line: 33, baseType: !68, size: 32, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !652, file: !12, line: 34, baseType: !68, size: 32, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !652, file: !12, line: 35, baseType: !137, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !652, file: !12, line: 36, baseType: !655, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !649, file: !12, line: 47, baseType: !662, size: 192)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !12, line: 39, size: 192, elements: !663)
!663 = !{!664, !665, !666, !685}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !662, file: !12, line: 40, baseType: !283, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !662, file: !12, line: 41, baseType: !11, size: 32, offset: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !12, line: 42, baseType: !667, size: 64, offset: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !662, file: !12, line: 42, size: 64, elements: !668)
!668 = !{!669, !677}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !667, file: !12, line: 43, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !672, line: 7, size: 128, elements: !673)
!672 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!673 = !{!674, !676}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !671, file: !672, line: 8, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !285, line: 93, baseType: !155)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !671, file: !672, line: 9, baseType: !155, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !667, file: !12, line: 44, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !680, line: 7, size: 64, elements: !681)
!680 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!681 = !{!682, !684}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !679, file: !680, line: 8, baseType: !683, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !680, line: 5, baseType: !540)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !679, file: !680, line: 9, baseType: !540, size: 32, offset: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !662, file: !12, line: 46, baseType: !137, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !649, file: !12, line: 55, baseType: !687, size: 256)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !12, line: 49, size: 256, elements: !688)
!688 = !{!689, !692, !693, !694, !695}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !687, file: !12, line: 50, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !687, file: !12, line: 51, baseType: !86, size: 32, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !687, file: !12, line: 52, baseType: !86, size: 32, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !687, file: !12, line: 53, baseType: !65, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !687, file: !12, line: 54, baseType: !65, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !57, file: !58, line: 973, baseType: !697, size: 32, offset: 10688)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !82, line: 27, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !285, line: 28, baseType: !86)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !57, file: !58, line: 974, baseType: !697, size: 32, offset: 10720)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !57, file: !58, line: 978, baseType: !65, size: 64, offset: 10752)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !57, file: !58, line: 987, baseType: !56, size: 64, offset: 10816)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !57, file: !58, line: 990, baseType: !56, size: 64, offset: 10880)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !57, file: !58, line: 995, baseType: !142, size: 128, offset: 10944)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !57, file: !58, line: 996, baseType: !142, size: 128, offset: 11072)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !57, file: !58, line: 997, baseType: !56, size: 64, offset: 11200)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !57, file: !58, line: 1005, baseType: !142, size: 128, offset: 11264)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !57, file: !58, line: 1006, baseType: !142, size: 128, offset: 11392)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !57, file: !58, line: 1009, baseType: !709, size: 64, offset: 11520)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !711, line: 59, size: 768, elements: !712)
!711 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!712 = !{!713, !714, !715, !716, !727, !728, !735, !744}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !710, file: !711, line: 61, baseType: !76, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !710, file: !711, line: 62, baseType: !7, size: 32, offset: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !710, file: !711, line: 63, baseType: !437, size: 32, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !710, file: !711, line: 65, baseType: !717, size: 256, offset: 128)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 256, elements: !542)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !82, line: 194, size: 64, elements: !719)
!719 = !{!720}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !718, file: !82, line: 195, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !82, line: 198, size: 128, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !722, file: !82, line: 199, baseType: !721, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !722, file: !82, line: 199, baseType: !726, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !710, file: !711, line: 66, baseType: !718, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !710, file: !711, line: 68, baseType: !729, size: 192, offset: 448)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !730, line: 41, baseType: !731)
!730 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !730, line: 37, size: 192, elements: !732)
!732 = !{!733, !734}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !731, file: !730, line: 38, baseType: !437, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !731, file: !730, line: 39, baseType: !142, size: 128, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !710, file: !711, line: 69, baseType: !736, size: 128, align: 64, offset: 640)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !82, line: 232, size: 128, align: 64, elements: !737)
!737 = !{!738, !740}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !736, file: !82, line: 233, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !736, file: !82, line: 234, baseType: !741, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !739}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !710, file: !711, line: 70, baseType: !745, offset: 768)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, elements: !614)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !711, line: 54, size: 128, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !746, file: !711, line: 55, baseType: !86, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !746, file: !711, line: 56, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !711, line: 56, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !57, file: !58, line: 1010, baseType: !753, size: 512, offset: 11584)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 512, elements: !542)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !57, file: !58, line: 1011, baseType: !142, size: 128, offset: 12096)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !57, file: !58, line: 1012, baseType: !142, size: 128, offset: 12224)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !57, file: !58, line: 1014, baseType: !757, size: 64, offset: 12352)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !759, line: 26, size: 256, elements: !760)
!759 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !758, file: !759, line: 27, baseType: !7, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !758, file: !759, line: 28, baseType: !763, size: 192, offset: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !764, line: 43, size: 192, elements: !765)
!764 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !763, file: !764, line: 44, baseType: !235, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !763, file: !764, line: 45, baseType: !142, size: 128, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !57, file: !58, line: 1017, baseType: !769, size: 64, offset: 12416)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !57, file: !58, line: 1020, baseType: !769, size: 64, offset: 12480)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !57, file: !58, line: 1023, baseType: !53, size: 64, offset: 12544)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !57, file: !58, line: 1025, baseType: !137, size: 64, offset: 12608)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !57, file: !58, line: 1026, baseType: !137, size: 64, offset: 12672)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !57, file: !58, line: 1031, baseType: !137, size: 64, offset: 12736)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !57, file: !58, line: 1032, baseType: !776, size: 192, offset: 12800)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !58, line: 324, size: 192, elements: !777)
!777 = !{!778, !779, !780}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !776, file: !58, line: 326, baseType: !137, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !776, file: !58, line: 327, baseType: !137, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !776, file: !58, line: 328, baseType: !235, size: 32, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !57, file: !58, line: 1041, baseType: !65, size: 64, offset: 12992)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !57, file: !58, line: 1042, baseType: !65, size: 64, offset: 13056)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !57, file: !58, line: 1045, baseType: !137, size: 64, offset: 13120)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !57, file: !58, line: 1048, baseType: !137, size: 64, offset: 13184)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !57, file: !58, line: 1051, baseType: !65, size: 64, offset: 13248)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !57, file: !58, line: 1052, baseType: !65, size: 64, offset: 13312)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !57, file: !58, line: 1055, baseType: !788, size: 640, offset: 13376)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !789, line: 132, size: 640, elements: !790)
!789 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!790 = !{!791, !799, !800}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !788, file: !789, line: 133, baseType: !792, size: 576)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 576, elements: !797)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !789, line: 117, size: 192, elements: !794)
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !793, file: !789, line: 118, baseType: !137, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !793, file: !789, line: 119, baseType: !298, size: 128, offset: 64)
!797 = !{!798}
!798 = !DISubrange(count: 3)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !788, file: !789, line: 134, baseType: !7, size: 32, offset: 576)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !788, file: !789, line: 135, baseType: !7, size: 32, offset: 608)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !57, file: !58, line: 1058, baseType: !802, size: 448, offset: 14016)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !789, line: 144, size: 448, elements: !803)
!803 = !{!804, !805, !806}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !802, file: !789, line: 145, baseType: !736, size: 128, align: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !802, file: !789, line: 146, baseType: !561, size: 256, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !802, file: !789, line: 147, baseType: !7, size: 32, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !57, file: !58, line: 1064, baseType: !808, size: 64, offset: 14464)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !810)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !58, line: 1064, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !57, file: !58, line: 1067, baseType: !808, size: 64, offset: 14528)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !57, file: !58, line: 1070, baseType: !808, size: 64, offset: 14592)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !57, file: !58, line: 1074, baseType: !814, size: 64, offset: 14656)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !58, line: 1074, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !57, file: !58, line: 1084, baseType: !817, size: 128, offset: 14720)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 128, elements: !819)
!818 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!819 = !{!820}
!820 = !DISubrange(count: 16)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !57, file: !58, line: 1086, baseType: !822, size: 64, offset: 14848)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !58, line: 55, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !57, file: !58, line: 1089, baseType: !825, size: 64, offset: 14912)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !826, line: 12, size: 64, elements: !827)
!826 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!827 = !{!828}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !825, file: !826, line: 13, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !826, line: 8, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !57, file: !58, line: 1090, baseType: !832, size: 128, offset: 14976)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !833, line: 13, size: 128, elements: !834)
!833 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!834 = !{!835}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !832, file: !833, line: 14, baseType: !142, size: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !57, file: !58, line: 1097, baseType: !837, size: 64, offset: 15104)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !58, line: 50, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !57, file: !58, line: 1100, baseType: !840, size: 64, offset: 15168)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !58, line: 1100, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !57, file: !58, line: 1103, baseType: !843, size: 64, offset: 15232)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !58, line: 53, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !57, file: !58, line: 1107, baseType: !846, size: 64, offset: 15296)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !58, line: 56, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !57, file: !58, line: 1110, baseType: !849, size: 64, offset: 15360)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !789, line: 236, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !57, file: !58, line: 1111, baseType: !852, size: 64, offset: 15424)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !58, line: 67, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !57, file: !58, line: 1112, baseType: !855, size: 64, offset: 15488)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !856, line: 25, baseType: !857)
!856 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !856, line: 23, size: 64, elements: !858)
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !857, file: !856, line: 24, baseType: !369, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !57, file: !58, line: 1113, baseType: !855, size: 64, offset: 15552)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !57, file: !58, line: 1115, baseType: !855, size: 64, offset: 15616)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !57, file: !58, line: 1116, baseType: !863, size: 192, offset: 15680)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !864, line: 32, size: 192, elements: !865)
!864 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !863, file: !864, line: 33, baseType: !142, size: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !863, file: !864, line: 34, baseType: !855, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !57, file: !58, line: 1117, baseType: !65, size: 64, offset: 15872)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !57, file: !58, line: 1118, baseType: !870, size: 64, offset: 15936)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !82, line: 61, baseType: !871)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !285, line: 72, baseType: !872)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !285, line: 16, baseType: !65)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !57, file: !58, line: 1119, baseType: !7, size: 32, offset: 16000)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !57, file: !58, line: 1121, baseType: !739, size: 64, offset: 16064)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !57, file: !58, line: 1125, baseType: !876, size: 64, offset: 16128)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !58, line: 43, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !57, file: !58, line: 1127, baseType: !879, size: 32, offset: 16192)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !880, line: 23, baseType: !881)
!880 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !880, line: 21, size: 32, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !881, file: !880, line: 22, baseType: !884, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !82, line: 37, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !285, line: 49, baseType: !7)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !57, file: !58, line: 1128, baseType: !7, size: 32, offset: 16224)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !57, file: !58, line: 1130, baseType: !888, size: 128, offset: 16256)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !889, line: 37, size: 128, elements: !890)
!889 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!890 = !{!891, !892, !893}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !888, file: !889, line: 38, baseType: !86, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !888, file: !889, line: 39, baseType: !81, size: 32, offset: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !888, file: !889, line: 40, baseType: !894, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !889, line: 24, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !57, file: !58, line: 1131, baseType: !897, size: 256, offset: 16384)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !898, line: 12, size: 256, elements: !899)
!898 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!899 = !{!900, !902, !903, !904}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !897, file: !898, line: 13, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !897, file: !898, line: 14, baseType: !65, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !897, file: !898, line: 15, baseType: !65, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !897, file: !898, line: 16, baseType: !905, size: 8, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !82, line: 35, baseType: !906)
!906 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !57, file: !58, line: 1134, baseType: !137, size: 64, offset: 16640)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !57, file: !58, line: 1135, baseType: !137, size: 64, offset: 16704)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !57, file: !58, line: 1138, baseType: !437, size: 32, offset: 16768)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !57, file: !58, line: 1141, baseType: !235, size: 32, offset: 16800)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !57, file: !58, line: 1143, baseType: !912, size: 64, offset: 16832)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !58, line: 735, size: 64, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !912, file: !58, line: 736, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !57, file: !58, line: 1147, baseType: !301, size: 128, offset: 16896)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !57, file: !58, line: 1149, baseType: !56, size: 64, offset: 17024)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !57, file: !58, line: 1151, baseType: !919, size: 64, offset: 17088)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !58, line: 1151, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !57, file: !58, line: 1188, baseType: !53, size: 64, offset: 17152)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !57, file: !58, line: 1191, baseType: !923, size: 64, offset: 17216)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !58, line: 44, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !57, file: !58, line: 1194, baseType: !926, size: 64, offset: 17280)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !58, line: 45, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !57, file: !58, line: 1197, baseType: !929, size: 64, offset: 17344)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !58, line: 61, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !57, file: !58, line: 1199, baseType: !932, size: 64, offset: 17408)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !58, line: 52, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !57, file: !58, line: 1202, baseType: !935, size: 64, offset: 17472)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !58, line: 48, flags: DIFlagFwdDecl)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !57, file: !58, line: 1205, baseType: !65, size: 64, offset: 17536)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !57, file: !58, line: 1206, baseType: !939, size: 64, offset: 17600)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !864, line: 14, baseType: !941)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !864, line: 12, size: 384, elements: !942)
!942 = !{!943}
!943 = !DIDerivedType(tag: DW_TAG_member, scope: !941, file: !864, line: 13, baseType: !944, size: 384)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !941, file: !864, line: 13, size: 384, elements: !945)
!945 = !{!946, !947, !948, !949}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !944, file: !864, line: 13, baseType: !86, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !944, file: !864, line: 13, baseType: !86, size: 32, offset: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !944, file: !864, line: 13, baseType: !86, size: 32, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !944, file: !864, line: 13, baseType: !950, size: 256, offset: 128)
!950 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !951, line: 37, size: 256, elements: !952)
!951 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!952 = !{!953, !958, !971, !977, !987, !1014, !1019}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !950, file: !951, line: 42, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !950, file: !951, line: 39, size: 64, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !954, file: !951, line: 40, baseType: !698, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !954, file: !951, line: 41, baseType: !885, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !950, file: !951, line: 50, baseType: !959, size: 192)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !950, file: !951, line: 45, size: 192, elements: !960)
!960 = !{!961, !963, !964, !970}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !959, file: !951, line: 46, baseType: !962, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !285, line: 95, baseType: !86)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !959, file: !951, line: 47, baseType: !86, size: 32, offset: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !959, file: !951, line: 48, baseType: !965, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !951, line: 11, baseType: !966)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !951, line: 8, size: 64, elements: !967)
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !966, file: !951, line: 9, baseType: !86, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !966, file: !951, line: 10, baseType: !53, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !959, file: !951, line: 49, baseType: !86, size: 32, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !950, file: !951, line: 57, baseType: !972, size: 128)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !950, file: !951, line: 53, size: 128, elements: !973)
!973 = !{!974, !975, !976}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !972, file: !951, line: 54, baseType: !698, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !972, file: !951, line: 55, baseType: !885, size: 32, offset: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !972, file: !951, line: 56, baseType: !965, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !950, file: !951, line: 66, baseType: !978, size: 256)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !950, file: !951, line: 60, size: 256, elements: !979)
!979 = !{!980, !981, !982, !983, !986}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !978, file: !951, line: 61, baseType: !698, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !978, file: !951, line: 62, baseType: !885, size: 32, offset: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !978, file: !951, line: 63, baseType: !86, size: 32, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !978, file: !951, line: 64, baseType: !984, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !285, line: 94, baseType: !985)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !285, line: 15, baseType: !646)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !978, file: !951, line: 65, baseType: !984, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !950, file: !951, line: 105, baseType: !988, size: 256)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !950, file: !951, line: 69, size: 256, elements: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !988, file: !951, line: 70, baseType: !53, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !988, file: !951, line: 79, baseType: !992, size: 192, offset: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !951, line: 79, size: 192, elements: !993)
!993 = !{!994, !995, !996, !1003, !1008}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !992, file: !951, line: 81, baseType: !86, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !992, file: !951, line: 86, baseType: !578, size: 16)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !992, file: !951, line: 92, baseType: !997, size: 192)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !951, line: 88, size: 192, elements: !998)
!998 = !{!999, !1001, !1002}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !997, file: !951, line: 89, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 64, elements: !279)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !997, file: !951, line: 90, baseType: !53, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !997, file: !951, line: 91, baseType: !53, size: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !992, file: !951, line: 97, baseType: !1004, size: 96)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !951, line: 94, size: 96, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1004, file: !951, line: 95, baseType: !1000, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1004, file: !951, line: 96, baseType: !70, size: 32, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !992, file: !951, line: 103, baseType: !1009, size: 128)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !951, line: 99, size: 128, elements: !1010)
!1010 = !{!1011, !1012, !1013}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1009, file: !951, line: 100, baseType: !65, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1009, file: !951, line: 101, baseType: !70, size: 32, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1009, file: !951, line: 102, baseType: !70, size: 32, offset: 96)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !950, file: !951, line: 111, baseType: !1015, size: 128)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !950, file: !951, line: 108, size: 128, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1015, file: !951, line: 109, baseType: !646, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1015, file: !951, line: 110, baseType: !86, size: 32, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !950, file: !951, line: 118, baseType: !1020, size: 128)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !950, file: !951, line: 114, size: 128, elements: !1021)
!1021 = !{!1022, !1023, !1024}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1020, file: !951, line: 115, baseType: !53, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1020, file: !951, line: 116, baseType: !86, size: 32, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1020, file: !951, line: 117, baseType: !7, size: 32, offset: 96)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !57, file: !58, line: 1208, baseType: !1026, size: 448, offset: 17664)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1027, line: 12, size: 448, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1026, file: !1027, line: 15, baseType: !137, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1026, file: !1027, line: 17, baseType: !137, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1026, file: !1027, line: 19, baseType: !137, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1026, file: !1027, line: 21, baseType: !137, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1026, file: !1027, line: 29, baseType: !137, size: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1026, file: !1027, line: 35, baseType: !137, size: 64, offset: 320)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1026, file: !1027, line: 44, baseType: !137, size: 64, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !57, file: !58, line: 1215, baseType: !137, size: 64, offset: 18112)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !57, file: !58, line: 1217, baseType: !137, size: 64, offset: 18176)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !57, file: !58, line: 1219, baseType: !137, size: 64, offset: 18240)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !57, file: !58, line: 1223, baseType: !1040, size: 64, offset: 18304)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1041, line: 99, baseType: !1042)
!1041 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1041, line: 99, size: 64, elements: !1043)
!1043 = !{!1044}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1042, file: !1041, line: 99, baseType: !369, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !57, file: !58, line: 1225, baseType: !1046, size: 32, offset: 18368)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !288, line: 275, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !288, line: 275, size: 32, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1047, file: !288, line: 275, baseType: !292, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !57, file: !58, line: 1226, baseType: !86, size: 32, offset: 18400)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !57, file: !58, line: 1227, baseType: !86, size: 32, offset: 18432)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !57, file: !58, line: 1231, baseType: !1053, size: 64, offset: 18496)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !58, line: 1231, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !57, file: !58, line: 1233, baseType: !142, size: 128, offset: 18560)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !57, file: !58, line: 1240, baseType: !1057, size: 64, offset: 18688)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !58, line: 62, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !57, file: !58, line: 1242, baseType: !1060, size: 64, offset: 18752)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !58, line: 1242, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !57, file: !58, line: 1244, baseType: !142, size: 128, offset: 18816)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !57, file: !58, line: 1245, baseType: !1064, size: 64, offset: 18944)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !58, line: 51, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !57, file: !58, line: 1246, baseType: !561, size: 256, offset: 19008)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !57, file: !58, line: 1247, baseType: !7, size: 32, offset: 19264)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !57, file: !58, line: 1250, baseType: !1069, size: 64, offset: 19328)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !58, line: 57, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !57, file: !58, line: 1251, baseType: !561, size: 256, offset: 19392)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !57, file: !58, line: 1252, baseType: !142, size: 128, offset: 19648)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !57, file: !58, line: 1259, baseType: !1074, size: 64, offset: 19776)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !420, line: 717, flags: DIFlagFwdDecl)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !57, file: !58, line: 1260, baseType: !578, size: 16, offset: 19840)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !57, file: !58, line: 1261, baseType: !578, size: 16, offset: 19856)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !57, file: !58, line: 1314, baseType: !1079, size: 64, offset: 19904)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1081, line: 62, size: 256, align: 256, elements: !1082)
!1081 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1088, !1089}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1080, file: !1081, line: 75, baseType: !70, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1080, file: !1081, line: 90, baseType: !70, size: 32, offset: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1080, file: !1081, line: 112, baseType: !138, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1080, file: !1081, line: 132, baseType: !70, size: 32, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1080, file: !1081, line: 140, baseType: !70, size: 32, offset: 160)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1080, file: !1081, line: 149, baseType: !70, size: 32, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1080, file: !1081, line: 154, baseType: !1090, offset: 224)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, elements: !614)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !57, file: !58, line: 1315, baseType: !68, size: 32, offset: 19968)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !57, file: !58, line: 1316, baseType: !68, size: 32, offset: 20000)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !57, file: !58, line: 1321, baseType: !65, size: 64, offset: 20032)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !57, file: !58, line: 1325, baseType: !86, size: 32, offset: 20096)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !57, file: !58, line: 1326, baseType: !86, size: 32, offset: 20128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !57, file: !58, line: 1327, baseType: !86, size: 32, offset: 20160)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !57, file: !58, line: 1328, baseType: !86, size: 32, offset: 20192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !57, file: !58, line: 1329, baseType: !736, size: 128, align: 64, offset: 20224)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !57, file: !58, line: 1332, baseType: !1100, size: 128, offset: 20352)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1101, line: 51, size: 128, elements: !1102)
!1101 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1102 = !{!1103, !1108, !1109}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1100, file: !1101, line: 60, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1105, line: 7, size: 64, elements: !1106)
!1105 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1104, file: !1105, line: 12, baseType: !366, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1100, file: !1101, line: 63, baseType: !905, size: 8, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1100, file: !1101, line: 70, baseType: !905, size: 8, offset: 72)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !57, file: !58, line: 1335, baseType: !1111, size: 64, offset: 20480)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !58, line: 59, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !57, file: !58, line: 1337, baseType: !1114, size: 128, offset: 20544)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1101, line: 39, size: 128, elements: !1115)
!1115 = !{!1116, !1179, !1180}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1114, file: !1101, line: 40, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !420, line: 74, size: 512, align: 128, elements: !1119)
!1119 = !{!1120, !1121, !1173, !1178}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1118, file: !420, line: 75, baseType: !65, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1118, file: !420, line: 83, baseType: !1122, size: 320, offset: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1118, file: !420, line: 83, size: 320, elements: !1123)
!1123 = !{!1124, !1147, !1161, !1165, !1172}
!1124 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !420, line: 84, baseType: !1125, size: 320)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !420, line: 84, size: 320, elements: !1126)
!1126 = !{!1127, !1138, !1141, !1146}
!1127 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !420, line: 90, baseType: !1128, size: 128)
!1128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !420, line: 90, size: 128, elements: !1129)
!1129 = !{!1130, !1131, !1136, !1137}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1128, file: !420, line: 91, baseType: !142, size: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1128, file: !420, line: 94, baseType: !1132, size: 128)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1128, file: !420, line: 94, size: 128, elements: !1133)
!1133 = !{!1134, !1135}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1132, file: !420, line: 96, baseType: !53, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1132, file: !420, line: 98, baseType: !7, size: 32, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1128, file: !420, line: 102, baseType: !142, size: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1128, file: !420, line: 103, baseType: !142, size: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1125, file: !420, line: 106, baseType: !1139, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !420, line: 32, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !420, line: 107, baseType: !1142, size: 64, offset: 192)
!1142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !420, line: 107, size: 64, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1142, file: !420, line: 108, baseType: !65, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1142, file: !420, line: 109, baseType: !65, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1125, file: !420, line: 117, baseType: !65, size: 64, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !420, line: 119, baseType: !1148, size: 320)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !420, line: 119, size: 320, elements: !1149)
!1149 = !{!1150, !1151, !1154, !1155, !1156}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1148, file: !420, line: 124, baseType: !65, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1148, file: !420, line: 125, baseType: !1152, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !420, line: 125, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1148, file: !420, line: 126, baseType: !65, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1148, file: !420, line: 127, baseType: !65, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1148, file: !420, line: 128, baseType: !1157, size: 64, offset: 256)
!1157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1148, file: !420, line: 128, size: 64, elements: !1158)
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1157, file: !420, line: 133, baseType: !65, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1157, file: !420, line: 138, baseType: !481, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !420, line: 141, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !420, line: 141, size: 64, elements: !1163)
!1163 = !{!1164}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1162, file: !420, line: 142, baseType: !65, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !420, line: 144, baseType: !1166, size: 128)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !420, line: 144, size: 128, elements: !1167)
!1167 = !{!1168, !1171}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1166, file: !420, line: 146, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !420, line: 146, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1166, file: !420, line: 147, baseType: !53, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1122, file: !420, line: 161, baseType: !736, size: 128, align: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1118, file: !420, line: 164, baseType: !1174, size: 32, offset: 384)
!1174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1118, file: !420, line: 164, size: 32, elements: !1175)
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1174, file: !420, line: 169, baseType: !81, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1174, file: !420, line: 177, baseType: !7, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1118, file: !420, line: 181, baseType: !81, size: 32, offset: 416)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1114, file: !1101, line: 42, baseType: !70, size: 32, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1114, file: !1101, line: 43, baseType: !70, size: 32, offset: 96)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !57, file: !58, line: 1340, baseType: !1182, size: 64, offset: 20672)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !58, line: 69, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !57, file: !58, line: 1351, baseType: !86, size: 32, offset: 20736)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !57, file: !58, line: 1352, baseType: !86, size: 32, offset: 20768)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !57, file: !58, line: 1354, baseType: !65, size: 64, offset: 20800)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !57, file: !58, line: 1364, baseType: !137, size: 64, offset: 20864)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !57, file: !58, line: 1365, baseType: !137, size: 64, offset: 20928)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !57, file: !58, line: 1412, baseType: !65, size: 64, offset: 20992)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !57, file: !58, line: 1453, baseType: !1191, size: 64, offset: 21056)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !58, line: 1453, flags: DIFlagFwdDecl)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !57, file: !58, line: 1457, baseType: !1194, size: 64, offset: 21120)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !18, line: 61, size: 576, elements: !1196)
!1196 = !{!1197, !1198, !1217, !1220, !1221, !1254, !1264}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1195, file: !18, line: 62, baseType: !17, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1195, file: !18, line: 64, baseType: !1199, size: 192, offset: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1195, file: !18, line: 64, size: 192, elements: !1200)
!1200 = !{!1201, !1212}
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !18, line: 65, baseType: !1202, size: 192)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1199, file: !18, line: 65, size: 192, elements: !1203)
!1203 = !{!1204, !1211}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1202, file: !18, line: 66, baseType: !1205, size: 128)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1206, line: 50, size: 128, elements: !1207)
!1206 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1207 = !{!1208, !1209, !1210}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1205, file: !1206, line: 52, baseType: !65, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1205, file: !1206, line: 54, baseType: !7, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1205, file: !1206, line: 55, baseType: !7, size: 32, offset: 96)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1202, file: !18, line: 67, baseType: !65, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !18, line: 70, baseType: !1213, size: 192)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1199, file: !18, line: 70, size: 192, elements: !1214)
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1213, file: !18, line: 71, baseType: !736, size: 128, align: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1213, file: !18, line: 72, baseType: !65, size: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1195, file: !18, line: 76, baseType: !1218, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !18, line: 76, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1195, file: !18, line: 77, baseType: !65, size: 64, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1195, file: !18, line: 79, baseType: !1222, size: 64, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1206, line: 25, size: 256, elements: !1224)
!1224 = !{!1225, !1231, !1235}
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1206, line: 26, baseType: !1226, size: 128)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1223, file: !1206, line: 26, size: 128, elements: !1227)
!1227 = !{!1228, !1230}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1226, file: !1206, line: 27, baseType: !1229, size: 128)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 128, elements: !819)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1226, file: !1206, line: 28, baseType: !1229, size: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1223, file: !1206, line: 31, baseType: !1232, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1234)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1206, line: 23, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1206, line: 33, baseType: !1236, size: 64, offset: 192)
!1236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1223, file: !1206, line: 33, size: 64, elements: !1237)
!1237 = !{!1238, !1244, !1249}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1236, file: !1206, line: 38, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1236, file: !1206, line: 34, size: 64, elements: !1240)
!1240 = !{!1241, !1242, !1243}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1239, file: !1206, line: 35, baseType: !540, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1239, file: !1206, line: 36, baseType: !252, size: 8, offset: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1239, file: !1206, line: 37, baseType: !252, size: 8, offset: 40)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1236, file: !1206, line: 42, baseType: !1245, size: 16)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1236, file: !1206, line: 39, size: 16, elements: !1246)
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1245, file: !1206, line: 40, baseType: !252, size: 8)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1245, file: !1206, line: 41, baseType: !252, size: 8, offset: 8)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1236, file: !1206, line: 46, baseType: !1250, size: 16)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1236, file: !1206, line: 43, size: 16, elements: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1250, file: !1206, line: 44, baseType: !252, size: 8)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1250, file: !1206, line: 45, baseType: !252, size: 8, offset: 8)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1195, file: !18, line: 81, baseType: !1255, size: 64, offset: 448)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !18, line: 85, size: 384, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1256, file: !18, line: 86, baseType: !1218, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1256, file: !18, line: 87, baseType: !65, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1256, file: !18, line: 88, baseType: !65, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1256, file: !18, line: 89, baseType: !65, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1256, file: !18, line: 90, baseType: !905, size: 8, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1256, file: !18, line: 92, baseType: !1255, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1195, file: !18, line: 82, baseType: !7, size: 32, offset: 512)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !57, file: !58, line: 1463, baseType: !1266, offset: 21184)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !58, line: 739, elements: !448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !57, file: !58, line: 1470, baseType: !736, size: 128, align: 64, offset: 21184)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !57, file: !58, line: 1471, baseType: !76, size: 32, offset: 21312)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !57, file: !58, line: 1472, baseType: !86, size: 32, offset: 21344)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !57, file: !58, line: 1474, baseType: !56, size: 64, offset: 21376)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !57, file: !58, line: 1475, baseType: !1272, size: 320, offset: 21440)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1273, line: 11, size: 320, elements: !1274)
!1273 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1274 = !{!1275, !1276, !1277, !1282}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1272, file: !1273, line: 16, baseType: !722, size: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1272, file: !1273, line: 17, baseType: !65, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1272, file: !1273, line: 18, baseType: !1278, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{null, !1281}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1272, file: !1273, line: 19, baseType: !68, size: 32, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !57, file: !58, line: 1478, baseType: !1284, size: 64, offset: 21760)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !58, line: 1478, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !57, file: !58, line: 1482, baseType: !76, size: 32, offset: 21824)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !57, file: !58, line: 1489, baseType: !53, size: 64, offset: 21888)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !57, file: !58, line: 1504, baseType: !53, size: 64, offset: 21952)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !57, file: !58, line: 1505, baseType: !138, size: 64, offset: 22016)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !57, file: !58, line: 1506, baseType: !137, size: 64, offset: 22080)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !57, file: !58, line: 1507, baseType: !138, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !57, file: !58, line: 1508, baseType: !138, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !57, file: !58, line: 1509, baseType: !138, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !57, file: !58, line: 1510, baseType: !736, size: 128, align: 64, offset: 22208)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !57, file: !58, line: 1511, baseType: !86, size: 32, offset: 22336)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !57, file: !58, line: 1515, baseType: !1297, size: 64, offset: 22400)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !96, line: 56, size: 64, elements: !1298)
!1298 = !{!1299}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1297, file: !96, line: 57, baseType: !99, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !57, file: !58, line: 1518, baseType: !1297, size: 64, offset: 22464)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !57, file: !58, line: 1528, baseType: !736, size: 128, align: 64, offset: 22528)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !57, file: !58, line: 1552, baseType: !1303, size: 35328, offset: 23040)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1304, line: 430, size: 35328, elements: !1305)
!1304 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1305 = !{!1306, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1335, !1336, !1337, !1338, !1339, !1340, !1343, !1344, !1345, !1346}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1303, file: !1304, line: 432, baseType: !1307, size: 192)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1308, size: 192, elements: !797)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1309, line: 16, size: 64, elements: !1310)
!1309 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1308, file: !1309, line: 17, baseType: !106, size: 16)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1308, file: !1309, line: 18, baseType: !106, size: 16, offset: 16)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1308, file: !1309, line: 19, baseType: !106, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1308, file: !1309, line: 19, baseType: !106, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1308, file: !1309, line: 19, baseType: !106, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1308, file: !1309, line: 19, baseType: !106, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1308, file: !1309, line: 19, baseType: !106, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1308, file: !1309, line: 20, baseType: !106, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1308, file: !1309, line: 20, baseType: !106, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1308, file: !1309, line: 20, baseType: !106, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1308, file: !1309, line: 20, baseType: !106, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1308, file: !1309, line: 20, baseType: !106, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1308, file: !1309, line: 20, baseType: !106, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1303, file: !1304, line: 436, baseType: !65, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1303, file: !1304, line: 440, baseType: !108, size: 16, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1303, file: !1304, line: 441, baseType: !108, size: 16, offset: 272)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1303, file: !1304, line: 442, baseType: !108, size: 16, offset: 288)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1303, file: !1304, line: 443, baseType: !108, size: 16, offset: 304)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1303, file: !1304, line: 447, baseType: !65, size: 64, offset: 320)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1303, file: !1304, line: 448, baseType: !65, size: 64, offset: 384)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1303, file: !1304, line: 459, baseType: !1332, size: 256, offset: 448)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1333, size: 256, elements: !542)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1304, line: 428, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1303, file: !1304, line: 461, baseType: !65, size: 64, offset: 704)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1303, file: !1304, line: 463, baseType: !65, size: 64, offset: 768)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1303, file: !1304, line: 465, baseType: !65, size: 64, offset: 832)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1303, file: !1304, line: 466, baseType: !65, size: 64, offset: 896)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1303, file: !1304, line: 467, baseType: !65, size: 64, offset: 960)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1303, file: !1304, line: 473, baseType: !1341, size: 64, offset: 1024)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1304, line: 10, flags: DIFlagFwdDecl)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1303, file: !1304, line: 480, baseType: !65, size: 64, offset: 1088)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1303, file: !1304, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1303, file: !1304, line: 491, baseType: !68, size: 32, offset: 1184)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1303, file: !1304, line: 501, baseType: !1347, size: 33792, offset: 1536)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !30, line: 448, size: 33792, elements: !1348)
!1348 = !{!1349, !1350, !1351, !1519, !1520, !1526, !1527}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1347, file: !30, line: 461, baseType: !7, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1347, file: !30, line: 468, baseType: !65, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1347, file: !30, line: 476, baseType: !1352, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !30, line: 356, size: 33280, align: 512, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1353, file: !30, line: 358, baseType: !7, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1353, file: !30, line: 361, baseType: !7, size: 32, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1353, file: !30, line: 364, baseType: !137, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1353, file: !30, line: 367, baseType: !137, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1353, file: !30, line: 370, baseType: !137, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1353, file: !30, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1353, file: !30, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1353, file: !30, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1353, file: !30, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1353, file: !30, line: 397, baseType: !1365, size: 32768, offset: 512)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !30, line: 348, size: 32768, elements: !1366)
!1366 = !{!1367, !1382, !1423, !1500, !1515}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1365, file: !30, line: 349, baseType: !1368, size: 896)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !30, line: 12, size: 896, elements: !1369)
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1381}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1368, file: !30, line: 13, baseType: !68, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1368, file: !30, line: 14, baseType: !68, size: 32, offset: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1368, file: !30, line: 15, baseType: !68, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1368, file: !30, line: 16, baseType: !68, size: 32, offset: 96)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1368, file: !30, line: 17, baseType: !68, size: 32, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1368, file: !30, line: 18, baseType: !68, size: 32, offset: 160)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1368, file: !30, line: 19, baseType: !68, size: 32, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1368, file: !30, line: 22, baseType: !1378, size: 640, offset: 224)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 640, elements: !1379)
!1379 = !{!1380}
!1380 = !DISubrange(count: 20)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1368, file: !30, line: 25, baseType: !68, size: 32, offset: 864)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1365, file: !30, line: 350, baseType: !1383, size: 4096, align: 128)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !30, line: 34, size: 4096, align: 128, elements: !1384)
!1384 = !{!1385, !1386, !1387, !1388, !1389, !1404, !1405, !1406, !1410, !1414, !1418}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1383, file: !30, line: 35, baseType: !106, size: 16)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1383, file: !30, line: 36, baseType: !106, size: 16, offset: 16)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1383, file: !30, line: 37, baseType: !106, size: 16, offset: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1383, file: !30, line: 38, baseType: !106, size: 16, offset: 48)
!1389 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !30, line: 39, baseType: !1390, size: 128, offset: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !30, line: 39, size: 128, elements: !1391)
!1391 = !{!1392, !1397}
!1392 = !DIDerivedType(tag: DW_TAG_member, scope: !1390, file: !30, line: 40, baseType: !1393, size: 128)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1390, file: !30, line: 40, size: 128, elements: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1393, file: !30, line: 41, baseType: !137, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1393, file: !30, line: 42, baseType: !137, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1390, file: !30, line: 44, baseType: !1398, size: 128)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1390, file: !30, line: 44, size: 128, elements: !1399)
!1399 = !{!1400, !1401, !1402, !1403}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1398, file: !30, line: 45, baseType: !68, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1398, file: !30, line: 46, baseType: !68, size: 32, offset: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1398, file: !30, line: 47, baseType: !68, size: 32, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1398, file: !30, line: 48, baseType: !68, size: 32, offset: 96)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1383, file: !30, line: 51, baseType: !68, size: 32, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1383, file: !30, line: 52, baseType: !68, size: 32, offset: 224)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1383, file: !30, line: 55, baseType: !1407, size: 1024, offset: 256)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 1024, elements: !1408)
!1408 = !{!1409}
!1409 = !DISubrange(count: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1383, file: !30, line: 58, baseType: !1411, size: 2048, offset: 1280)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2048, elements: !1412)
!1412 = !{!1413}
!1413 = !DISubrange(count: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1383, file: !30, line: 60, baseType: !1415, size: 384, offset: 3328)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 384, elements: !1416)
!1416 = !{!1417}
!1417 = !DISubrange(count: 12)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1383, file: !30, line: 62, baseType: !1419, size: 384, offset: 3712)
!1419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1383, file: !30, line: 62, size: 384, elements: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1419, file: !30, line: 63, baseType: !1415, size: 384)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1419, file: !30, line: 64, baseType: !1415, size: 384)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1365, file: !30, line: 351, baseType: !1424, size: 1088)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !30, line: 79, size: 1088, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1499}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1424, file: !30, line: 80, baseType: !68, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1424, file: !30, line: 81, baseType: !68, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1424, file: !30, line: 82, baseType: !68, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1424, file: !30, line: 83, baseType: !68, size: 32, offset: 96)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1424, file: !30, line: 84, baseType: !68, size: 32, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1424, file: !30, line: 85, baseType: !68, size: 32, offset: 160)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1424, file: !30, line: 86, baseType: !68, size: 32, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1424, file: !30, line: 88, baseType: !1378, size: 640, offset: 224)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1424, file: !30, line: 89, baseType: !252, size: 8, offset: 864)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1424, file: !30, line: 90, baseType: !252, size: 8, offset: 872)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1424, file: !30, line: 91, baseType: !252, size: 8, offset: 880)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1424, file: !30, line: 92, baseType: !252, size: 8, offset: 888)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1424, file: !30, line: 93, baseType: !252, size: 8, offset: 896)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1424, file: !30, line: 94, baseType: !252, size: 8, offset: 904)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1424, file: !30, line: 95, baseType: !1441, size: 64, offset: 960)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1443, line: 11, size: 128, elements: !1444)
!1443 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1442, file: !1443, line: 12, baseType: !646, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1442, file: !1443, line: 13, baseType: !1447, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1449, line: 103, size: 1344, elements: !1450)
!1449 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1479, !1480, !1481}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1448, file: !1449, line: 109, baseType: !65, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1448, file: !1449, line: 110, baseType: !65, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1448, file: !1449, line: 111, baseType: !65, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1448, file: !1449, line: 112, baseType: !65, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1448, file: !1449, line: 113, baseType: !65, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1448, file: !1449, line: 114, baseType: !65, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1448, file: !1449, line: 117, baseType: !65, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1448, file: !1449, line: 118, baseType: !65, size: 64, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1448, file: !1449, line: 119, baseType: !65, size: 64, offset: 512)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1448, file: !1449, line: 120, baseType: !65, size: 64, offset: 576)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1448, file: !1449, line: 121, baseType: !65, size: 64, offset: 640)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1448, file: !1449, line: 122, baseType: !65, size: 64, offset: 704)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1448, file: !1449, line: 123, baseType: !65, size: 64, offset: 768)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1448, file: !1449, line: 124, baseType: !65, size: 64, offset: 832)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1448, file: !1449, line: 125, baseType: !65, size: 64, offset: 896)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1448, file: !1449, line: 139, baseType: !65, size: 64, offset: 960)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1448, file: !1449, line: 142, baseType: !65, size: 64, offset: 1024)
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !1449, line: 144, baseType: !1469, size: 64, offset: 1088)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !1449, line: 144, size: 64, elements: !1470)
!1470 = !{!1471, !1472, !1473}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1469, file: !1449, line: 146, baseType: !106, size: 16)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1469, file: !1449, line: 148, baseType: !137, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1469, file: !1449, line: 150, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1449, line: 59, size: 64, elements: !1475)
!1475 = !{!1476, !1477, !1478}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1474, file: !1449, line: 61, baseType: !137, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1474, file: !1449, line: 63, baseType: !137, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1474, file: !1449, line: 65, baseType: !137, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1448, file: !1449, line: 153, baseType: !65, size: 64, offset: 1152)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1448, file: !1449, line: 154, baseType: !65, size: 64, offset: 1216)
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !1449, line: 156, baseType: !1482, size: 64, offset: 1280)
!1482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !1449, line: 156, size: 64, elements: !1483)
!1483 = !{!1484, !1485, !1486}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1482, file: !1449, line: 158, baseType: !106, size: 16)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1482, file: !1449, line: 160, baseType: !137, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1482, file: !1449, line: 162, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1449, line: 69, size: 64, elements: !1488)
!1488 = !{!1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1487, file: !1449, line: 71, baseType: !137, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1487, file: !1449, line: 73, baseType: !137, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1487, file: !1449, line: 75, baseType: !137, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1487, file: !1449, line: 77, baseType: !137, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1487, file: !1449, line: 80, baseType: !137, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1487, file: !1449, line: 83, baseType: !137, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1487, file: !1449, line: 86, baseType: !137, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1487, file: !1449, line: 88, baseType: !137, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1487, file: !1449, line: 93, baseType: !137, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1487, file: !1449, line: 100, baseType: !137, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1424, file: !30, line: 96, baseType: !68, size: 32, offset: 1024)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1365, file: !30, line: 352, baseType: !1501, size: 4608, align: 512)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !30, line: 333, size: 4608, align: 512, elements: !1502)
!1502 = !{!1503, !1504, !1513}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1501, file: !30, line: 334, baseType: !1383, size: 4096, align: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1501, file: !30, line: 335, baseType: !1505, size: 512, offset: 4096)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !30, line: 312, size: 512, elements: !1506)
!1506 = !{!1507, !1508, !1509}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1505, file: !30, line: 313, baseType: !137, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1505, file: !30, line: 314, baseType: !137, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1505, file: !30, line: 315, baseType: !1510, size: 384, offset: 128)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 384, elements: !1511)
!1511 = !{!1512}
!1512 = !DISubrange(count: 6)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1501, file: !30, line: 336, baseType: !1514, offset: 4608)
!1514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, elements: !614)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1365, file: !30, line: 353, baseType: !1516, size: 32768)
!1516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 32768, elements: !1517)
!1517 = !{!1518}
!1518 = !DISubrange(count: 4096)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1347, file: !30, line: 484, baseType: !1352, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1347, file: !30, line: 491, baseType: !1521, size: 128, offset: 256)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !30, line: 404, size: 128, elements: !1522)
!1522 = !{!1523, !1524, !1525}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1521, file: !30, line: 424, baseType: !137, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1521, file: !30, line: 432, baseType: !7, size: 32, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1521, file: !30, line: 440, baseType: !7, size: 32, offset: 96)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1347, file: !30, line: 498, baseType: !1521, size: 128, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1347, file: !30, line: 508, baseType: !1353, size: 33280, align: 512, offset: 512)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !82, line: 42, baseType: !65)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !818)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !646)
!1536 = !{!0, !1537, !1539, !1544, !1549}
!1537 = !DIGlobalVariableExpression(var: !1538, expr: !DIExpression())
!1538 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mxcsr_feature_mask178", scope: !2, file: !3, line: 97, type: !53, isLocal: true, isDefinition: true)
!1539 = !DIGlobalVariableExpression(var: !1540, expr: !DIExpression())
!1540 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !1541, isLocal: true, isDefinition: true)
!1541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 528, elements: !1542)
!1542 = !{!1543}
!1543 = !DISubrange(count: 66)
!1544 = !DIGlobalVariableExpression(var: !1545, expr: !DIExpression())
!1545 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !1546, isLocal: true, isDefinition: true)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 424, elements: !1547)
!1547 = !{!1548}
!1548 = !DISubrange(count: 53)
!1549 = !DIGlobalVariableExpression(var: !1550, expr: !DIExpression())
!1550 = distinct !DIGlobalVariable(name: "fxregs", scope: !1551, file: !3, line: 105, type: !1383, isLocal: true, isDefinition: true)
!1551 = distinct !DISubprogram(name: "fpu__init_system_mxcsr", scope: !3, file: !3, line: 99, type: !1552, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1554)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null}
!1554 = !{!1555}
!1555 = !DILocalVariable(name: "mask", scope: !1551, file: !3, line: 101, type: !7)
!1556 = !{i32 7, !"Dwarf Version", i32 5}
!1557 = !{i32 2, !"Debug Info Version", i32 3}
!1558 = !{i32 1, !"wchar_size", i32 2}
!1559 = !{i32 8, !"cf-protection-branch", i32 1}
!1560 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1561 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1562 = !{i32 1, !"Code Model", i32 2}
!1563 = !{i32 1, !"override-stack-alignment", i32 8}
!1564 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1565 = distinct !DISubprogram(name: "fpu__init_cpu", scope: !3, file: !3, line: 50, type: !1552, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1566 = !DILocation(line: 52, column: 2, scope: !1565)
!1567 = !DILocation(line: 53, column: 2, scope: !1565)
!1568 = !DILocation(line: 54, column: 1, scope: !1565)
!1569 = distinct !DISubprogram(name: "fpu__init_cpu_generic", scope: !3, file: !3, line: 20, type: !1552, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1570)
!1570 = !{!1571, !1572}
!1571 = !DILocalVariable(name: "cr0", scope: !1569, file: !3, line: 22, type: !65)
!1572 = !DILocalVariable(name: "cr4_mask", scope: !1569, file: !3, line: 23, type: !65)
!1573 = !DILocation(line: 22, column: 2, scope: !1569)
!1574 = !DILocation(line: 22, column: 16, scope: !1569)
!1575 = !DILocation(line: 23, column: 2, scope: !1569)
!1576 = !DILocation(line: 23, column: 16, scope: !1569)
!1577 = !DILocation(line: 26, column: 12, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 25, column: 6)
!1579 = !DILocation(line: 28, column: 12, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 27, column: 6)
!1581 = !DILocation(line: 29, column: 6, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 29, column: 6)
!1583 = !DILocation(line: 29, column: 6, scope: !1569)
!1584 = !DILocation(line: 30, column: 16, scope: !1582)
!1585 = !DILocation(line: 30, column: 3, scope: !1582)
!1586 = !DILocation(line: 32, column: 8, scope: !1569)
!1587 = !DILocation(line: 32, column: 6, scope: !1569)
!1588 = !DILocation(line: 33, column: 6, scope: !1569)
!1589 = !DILocation(line: 36, column: 12, scope: !1569)
!1590 = !DILocation(line: 36, column: 2, scope: !1569)
!1591 = !DILocation(line: 44, column: 3, scope: !1569)
!1592 = !{i64 986}
!1593 = !DILocation(line: 45, column: 1, scope: !1569)
!1594 = !DISubprogram(name: "fpu__init_cpu_xstate", scope: !1595, file: !1595, line: 54, type: !1552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1595 = !DIFile(filename: "arch/x86/kernel/fpu/xstate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85473f77f0706e565168985886d520eb")
!1596 = distinct !DISubprogram(name: "fpu__init_system", scope: !3, file: !3, line: 214, type: !1552, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1597 = !DILocation(line: 216, column: 17, scope: !1596)
!1598 = !DILocation(line: 216, column: 26, scope: !1596)
!1599 = !DILocation(line: 216, column: 33, scope: !1596)
!1600 = !DILocation(line: 216, column: 2, scope: !1596)
!1601 = !DILocation(line: 217, column: 2, scope: !1596)
!1602 = !DILocation(line: 223, column: 2, scope: !1596)
!1603 = !DILocation(line: 225, column: 2, scope: !1596)
!1604 = !DILocation(line: 226, column: 2, scope: !1596)
!1605 = !DILocation(line: 227, column: 41, scope: !1596)
!1606 = !DILocation(line: 227, column: 2, scope: !1596)
!1607 = !DILocation(line: 228, column: 2, scope: !1596)
!1608 = !DILocation(line: 229, column: 1, scope: !1596)
!1609 = !DISubprogram(name: "fpstate_reset", scope: !1610, file: !1610, line: 26, type: !1611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1610 = !DIFile(filename: "arch/x86/kernel/fpu/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64a68e595d8dee7f95a00f7be469efe1")
!1611 = !DISubroutineType(types: !1612)
!1612 = !{null, !1613}
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1614 = distinct !DISubprogram(name: "get_current", scope: !1615, file: !1615, line: 39, type: !1616, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1618)
!1615 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!56}
!1618 = !{!1619, !1621, !1625}
!1619 = !DILocalVariable(name: "pscr_ret__", scope: !1620, file: !1615, line: 41, type: !56)
!1620 = distinct !DILexicalBlock(scope: !1614, file: !1615, line: 41, column: 9)
!1621 = !DILocalVariable(name: "__vpp_verify", scope: !1622, file: !1615, line: 41, type: !1623)
!1622 = distinct !DILexicalBlock(scope: !1620, file: !1615, line: 41, column: 9)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1625 = !DILocalVariable(name: "pfo_val__", scope: !1626, file: !1615, line: 41, type: !137)
!1626 = distinct !DILexicalBlock(scope: !1620, file: !1615, line: 41, column: 9)
!1627 = !DILocation(line: 41, column: 9, scope: !1620)
!1628 = !DILocation(line: 41, column: 9, scope: !1622)
!1629 = !DILocation(line: 41, column: 9, scope: !1626)
!1630 = !{i64 2148257101}
!1631 = !DILocation(line: 41, column: 9, scope: !1614)
!1632 = !DILocation(line: 41, column: 2, scope: !1614)
!1633 = distinct !DISubprogram(name: "fpu__init_system_early_generic", scope: !3, file: !3, line: 74, type: !1552, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1634 = !DILocation(line: 76, column: 39, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 76, column: 6)
!1636 = !DILocation(line: 76, column: 7, scope: !1635)
!1637 = !DILocation(line: 77, column: 7, scope: !1635)
!1638 = !DILocation(line: 76, column: 6, scope: !1633)
!1639 = !DILocation(line: 78, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 78, column: 7)
!1641 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 77, column: 69)
!1642 = !DILocation(line: 78, column: 7, scope: !1641)
!1643 = !DILocation(line: 79, column: 4, scope: !1640)
!1644 = !DILocation(line: 79, column: 4, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 79, column: 4)
!1646 = !DILocation(line: 81, column: 4, scope: !1640)
!1647 = !DILocation(line: 82, column: 2, scope: !1641)
!1648 = !DILocation(line: 85, column: 7, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 85, column: 6)
!1650 = !DILocation(line: 85, column: 6, scope: !1633)
!1651 = !DILocation(line: 86, column: 3, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 86, column: 3)
!1653 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 85, column: 54)
!1654 = !DILocation(line: 86, column: 3, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 86, column: 3)
!1656 = !DILocation(line: 87, column: 3, scope: !1653)
!1657 = !DILocation(line: 88, column: 4, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 87, column: 3)
!1659 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 87, column: 3)
!1660 = !{i64 2034}
!1661 = !DILocation(line: 87, column: 3, scope: !1658)
!1662 = distinct !{!1662, !1663, !1664, !1665}
!1663 = !DILocation(line: 87, column: 3, scope: !1659)
!1664 = !DILocation(line: 88, column: 22, scope: !1659)
!1665 = !{!"llvm.loop.unroll.disable"}
!1666 = !DILocation(line: 91, column: 1, scope: !1633)
!1667 = distinct !DISubprogram(name: "fpu__init_system_generic", scope: !3, file: !3, line: 125, type: !1552, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1668 = !DILocation(line: 131, column: 2, scope: !1667)
!1669 = !DILocation(line: 133, column: 2, scope: !1667)
!1670 = !DILocation(line: 134, column: 1, scope: !1667)
!1671 = distinct !DISubprogram(name: "fpu__init_system_xstate_size_legacy", scope: !3, file: !3, line: 185, type: !1552, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1672)
!1672 = !{!1673}
!1673 = !DILocalVariable(name: "size", scope: !1671, file: !3, line: 187, type: !7)
!1674 = !DILocation(line: 187, column: 2, scope: !1671)
!1675 = !DILocation(line: 187, column: 15, scope: !1671)
!1676 = !DILocation(line: 196, column: 8, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 195, column: 52)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 195, column: 13)
!1679 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 193, column: 6)
!1680 = !DILocation(line: 197, column: 32, scope: !1677)
!1681 = !DILocation(line: 203, column: 28, scope: !1671)
!1682 = !DILocation(line: 203, column: 26, scope: !1671)
!1683 = !DILocation(line: 204, column: 32, scope: !1671)
!1684 = !DILocation(line: 204, column: 30, scope: !1671)
!1685 = !DILocation(line: 205, column: 26, scope: !1671)
!1686 = !DILocation(line: 205, column: 24, scope: !1671)
!1687 = !DILocation(line: 206, column: 30, scope: !1671)
!1688 = !DILocation(line: 206, column: 28, scope: !1671)
!1689 = !DILocation(line: 207, column: 17, scope: !1671)
!1690 = !DILocation(line: 207, column: 26, scope: !1671)
!1691 = !DILocation(line: 207, column: 33, scope: !1671)
!1692 = !DILocation(line: 207, column: 2, scope: !1671)
!1693 = !DILocation(line: 208, column: 1, scope: !1671)
!1694 = !DISubprogram(name: "fpu__init_system_xstate", scope: !1595, file: !1595, line: 55, type: !1695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null, !7}
!1697 = distinct !DISubprogram(name: "fpu__init_task_struct_size", scope: !3, file: !3, line: 149, type: !1552, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1698)
!1698 = !{!1699}
!1699 = !DILocalVariable(name: "task_size", scope: !1697, file: !3, line: 151, type: !86)
!1700 = !DILocation(line: 151, column: 2, scope: !1697)
!1701 = !DILocation(line: 151, column: 6, scope: !1697)
!1702 = !DILocation(line: 157, column: 12, scope: !1697)
!1703 = !DILocation(line: 163, column: 30, scope: !1697)
!1704 = !DILocation(line: 163, column: 12, scope: !1697)
!1705 = !DILocation(line: 172, column: 2, scope: !1697)
!1706 = !DILocation(line: 172, column: 2, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 172, column: 2)
!1708 = !DILocation(line: 173, column: 2, scope: !1697)
!1709 = !DILocation(line: 173, column: 2, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 173, column: 2)
!1711 = !DILocation(line: 174, column: 2, scope: !1697)
!1712 = !DILocation(line: 174, column: 2, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 174, column: 2)
!1714 = !DILocation(line: 176, column: 26, scope: !1697)
!1715 = !DILocation(line: 176, column: 24, scope: !1697)
!1716 = !DILocation(line: 177, column: 1, scope: !1697)
!1717 = distinct !DISubprogram(name: "cr4_set_bits", scope: !1718, file: !1718, line: 41, type: !1719, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1721)
!1718 = !DIFile(filename: "./arch/x86/include/asm/tlbflush.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "855d4064bc03d0e3d0f10fca91c7b33f")
!1719 = !DISubroutineType(types: !1720)
!1720 = !{null, !65}
!1721 = !{!1722, !1723, !1724, !1728, !1729, !1733}
!1722 = !DILocalVariable(name: "mask", arg: 1, scope: !1717, file: !1718, line: 41, type: !65)
!1723 = !DILocalVariable(name: "flags", scope: !1717, file: !1718, line: 43, type: !65)
!1724 = !DILocalVariable(name: "__dummy", scope: !1725, file: !1718, line: 45, type: !65)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !1718, line: 45, column: 2)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !1718, line: 45, column: 2)
!1727 = distinct !DILexicalBlock(scope: !1717, file: !1718, line: 45, column: 2)
!1728 = !DILocalVariable(name: "__dummy2", scope: !1725, file: !1718, line: 45, type: !65)
!1729 = !DILocalVariable(name: "__dummy", scope: !1730, file: !1718, line: 47, type: !65)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !1718, line: 47, column: 2)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !1718, line: 47, column: 2)
!1732 = distinct !DILexicalBlock(scope: !1717, file: !1718, line: 47, column: 2)
!1733 = !DILocalVariable(name: "__dummy2", scope: !1730, file: !1718, line: 47, type: !65)
!1734 = !DILocation(line: 41, column: 47, scope: !1717)
!1735 = !DILocation(line: 43, column: 2, scope: !1717)
!1736 = !DILocation(line: 43, column: 16, scope: !1717)
!1737 = !DILocation(line: 45, column: 2, scope: !1717)
!1738 = !DILocation(line: 45, column: 2, scope: !1727)
!1739 = !DILocation(line: 45, column: 2, scope: !1725)
!1740 = !DILocation(line: 45, column: 2, scope: !1726)
!1741 = !DILocation(line: 46, column: 23, scope: !1717)
!1742 = !DILocation(line: 46, column: 2, scope: !1717)
!1743 = !DILocation(line: 47, column: 2, scope: !1717)
!1744 = !DILocation(line: 47, column: 2, scope: !1732)
!1745 = !DILocation(line: 47, column: 2, scope: !1730)
!1746 = !DILocation(line: 47, column: 2, scope: !1731)
!1747 = !DILocation(line: 47, column: 2, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1731, file: !1718, line: 47, column: 2)
!1749 = !DILocation(line: 48, column: 1, scope: !1717)
!1750 = distinct !DISubprogram(name: "read_cr0", scope: !1751, file: !1751, line: 132, type: !1752, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1751 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!65}
!1754 = !DILocation(line: 134, column: 9, scope: !1750)
!1755 = !DILocation(line: 134, column: 2, scope: !1750)
!1756 = distinct !DISubprogram(name: "write_cr0", scope: !1751, file: !1751, line: 137, type: !1719, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1757)
!1757 = !{!1758}
!1758 = !DILocalVariable(name: "x", arg: 1, scope: !1756, file: !1751, line: 137, type: !65)
!1759 = !DILocation(line: 137, column: 44, scope: !1756)
!1760 = !DILocation(line: 139, column: 19, scope: !1756)
!1761 = !DILocation(line: 139, column: 2, scope: !1756)
!1762 = !DILocation(line: 140, column: 1, scope: !1756)
!1763 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !1764, file: !1764, line: 101, type: !1752, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1765)
!1764 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1765 = !{!1766}
!1766 = !DILocalVariable(name: "flags", scope: !1763, file: !1764, line: 103, type: !65)
!1767 = !DILocation(line: 103, column: 2, scope: !1763)
!1768 = !DILocation(line: 103, column: 16, scope: !1763)
!1769 = !DILocation(line: 103, column: 24, scope: !1763)
!1770 = !DILocation(line: 104, column: 2, scope: !1763)
!1771 = !DILocation(line: 105, column: 9, scope: !1763)
!1772 = !DILocation(line: 106, column: 1, scope: !1763)
!1773 = !DILocation(line: 105, column: 2, scope: !1763)
!1774 = distinct !DISubprogram(name: "cr4_set_bits_irqsoff", scope: !1718, file: !1718, line: 29, type: !1719, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1775)
!1775 = !{!1776}
!1776 = !DILocalVariable(name: "mask", arg: 1, scope: !1774, file: !1718, line: 29, type: !65)
!1777 = !DILocation(line: 29, column: 55, scope: !1774)
!1778 = !DILocation(line: 31, column: 21, scope: !1774)
!1779 = !DILocation(line: 31, column: 2, scope: !1774)
!1780 = !DILocation(line: 32, column: 1, scope: !1774)
!1781 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !1764, file: !1764, line: 132, type: !1719, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1782)
!1782 = !{!1783}
!1783 = !DILocalVariable(name: "flags", arg: 1, scope: !1781, file: !1764, line: 132, type: !65)
!1784 = !DILocation(line: 132, column: 66, scope: !1781)
!1785 = !DILocation(line: 134, column: 32, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1781, file: !1764, line: 134, column: 6)
!1787 = !DILocation(line: 134, column: 7, scope: !1786)
!1788 = !DILocation(line: 134, column: 6, scope: !1781)
!1789 = !DILocation(line: 135, column: 3, scope: !1786)
!1790 = !DILocation(line: 136, column: 1, scope: !1781)
!1791 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1764, file: !1764, line: 65, type: !1752, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1792 = !DILocation(line: 67, column: 9, scope: !1791)
!1793 = !DILocation(line: 67, column: 2, scope: !1791)
!1794 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !1764, file: !1764, line: 70, type: !1552, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1795 = !DILocation(line: 72, column: 2, scope: !1794)
!1796 = !DILocation(line: 73, column: 1, scope: !1794)
!1797 = distinct !DISubprogram(name: "native_save_fl", scope: !1764, file: !1764, line: 17, type: !1752, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1798)
!1798 = !{!1799}
!1799 = !DILocalVariable(name: "flags", scope: !1797, file: !1764, line: 19, type: !65)
!1800 = !DILocation(line: 19, column: 2, scope: !1797)
!1801 = !DILocation(line: 19, column: 16, scope: !1797)
!1802 = !DILocation(line: 26, column: 2, scope: !1797)
!1803 = !{i64 1871535, i64 1871556}
!1804 = !DILocation(line: 32, column: 9, scope: !1797)
!1805 = !DILocation(line: 33, column: 1, scope: !1797)
!1806 = !DILocation(line: 32, column: 2, scope: !1797)
!1807 = distinct !DISubprogram(name: "native_irq_disable", scope: !1764, file: !1764, line: 35, type: !1552, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1808 = !DILocation(line: 37, column: 2, scope: !1807)
!1809 = !{i64 1871739}
!1810 = !DILocation(line: 38, column: 1, scope: !1807)
!1811 = !DISubprogram(name: "cr4_update_irqsoff", scope: !1718, file: !1718, line: 25, type: !1812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{null, !65, !65}
!1814 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1764, file: !1764, line: 120, type: !1815, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!86, !65}
!1817 = !{!1818}
!1818 = !DILocalVariable(name: "flags", arg: 1, scope: !1814, file: !1764, line: 120, type: !65)
!1819 = !DILocation(line: 120, column: 67, scope: !1814)
!1820 = !DILocation(line: 122, column: 11, scope: !1814)
!1821 = !DILocation(line: 122, column: 17, scope: !1814)
!1822 = !DILocation(line: 122, column: 9, scope: !1814)
!1823 = !DILocation(line: 122, column: 2, scope: !1814)
!1824 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !1764, file: !1764, line: 75, type: !1552, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1825 = !DILocation(line: 77, column: 2, scope: !1824)
!1826 = !DILocation(line: 78, column: 1, scope: !1824)
!1827 = distinct !DISubprogram(name: "native_irq_enable", scope: !1764, file: !1764, line: 40, type: !1552, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1828 = !DILocation(line: 42, column: 2, scope: !1827)
!1829 = !{i64 1871831}
!1830 = !DILocation(line: 43, column: 1, scope: !1827)
!1831 = distinct !DISubprogram(name: "native_read_cr0", scope: !1751, file: !1751, line: 26, type: !1752, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1832)
!1832 = !{!1833}
!1833 = !DILocalVariable(name: "val", scope: !1831, file: !1751, line: 28, type: !65)
!1834 = !DILocation(line: 28, column: 2, scope: !1831)
!1835 = !DILocation(line: 28, column: 16, scope: !1831)
!1836 = !DILocation(line: 29, column: 2, scope: !1831)
!1837 = !{i64 1856153, i64 1856168}
!1838 = !DILocation(line: 30, column: 9, scope: !1831)
!1839 = !DILocation(line: 31, column: 1, scope: !1831)
!1840 = !DILocation(line: 30, column: 2, scope: !1831)
!1841 = !DISubprogram(name: "native_write_cr0", scope: !1751, file: !1751, line: 24, type: !1719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1842 = distinct !DISubprogram(name: "arch_test_bit", scope: !1843, file: !1843, line: 237, type: !1844, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1849)
!1843 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!905, !65, !1846}
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1848)
!1848 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !65)
!1849 = !{!1850, !1851}
!1850 = !DILocalVariable(name: "nr", arg: 1, scope: !1842, file: !1843, line: 237, type: !65)
!1851 = !DILocalVariable(name: "addr", arg: 2, scope: !1842, file: !1843, line: 237, type: !1846)
!1852 = !DILocation(line: 237, column: 29, scope: !1842)
!1853 = !DILocation(line: 237, column: 63, scope: !1842)
!1854 = !DILocation(line: 239, column: 30, scope: !1842)
!1855 = !DILocation(line: 239, column: 9, scope: !1842)
!1856 = !DILocation(line: 239, column: 54, scope: !1842)
!1857 = !DILocation(line: 239, column: 58, scope: !1842)
!1858 = !DILocation(line: 239, column: 36, scope: !1842)
!1859 = !DILocation(line: 240, column: 26, scope: !1842)
!1860 = !DILocation(line: 240, column: 30, scope: !1842)
!1861 = !DILocation(line: 240, column: 8, scope: !1842)
!1862 = !DILocation(line: 239, column: 2, scope: !1842)
!1863 = distinct !DISubprogram(name: "const_test_bit", scope: !1864, file: !1864, line: 166, type: !1844, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1865)
!1864 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!1865 = !{!1866, !1867, !1868, !1869, !1870}
!1866 = !DILocalVariable(name: "nr", arg: 1, scope: !1863, file: !1864, line: 166, type: !65)
!1867 = !DILocalVariable(name: "addr", arg: 2, scope: !1863, file: !1864, line: 166, type: !1846)
!1868 = !DILocalVariable(name: "p", scope: !1863, file: !1864, line: 168, type: !1530)
!1869 = !DILocalVariable(name: "mask", scope: !1863, file: !1864, line: 169, type: !65)
!1870 = !DILocalVariable(name: "val", scope: !1863, file: !1864, line: 170, type: !65)
!1871 = !DILocation(line: 166, column: 30, scope: !1863)
!1872 = !DILocation(line: 166, column: 64, scope: !1863)
!1873 = !DILocation(line: 168, column: 2, scope: !1863)
!1874 = !DILocation(line: 168, column: 23, scope: !1863)
!1875 = !DILocation(line: 168, column: 50, scope: !1863)
!1876 = !DILocation(line: 168, column: 57, scope: !1863)
!1877 = !DILocation(line: 168, column: 55, scope: !1863)
!1878 = !DILocation(line: 169, column: 2, scope: !1863)
!1879 = !DILocation(line: 169, column: 16, scope: !1863)
!1880 = !DILocation(line: 169, column: 23, scope: !1863)
!1881 = !DILocation(line: 170, column: 2, scope: !1863)
!1882 = !DILocation(line: 170, column: 16, scope: !1863)
!1883 = !DILocation(line: 170, column: 23, scope: !1863)
!1884 = !DILocation(line: 170, column: 22, scope: !1863)
!1885 = !DILocation(line: 172, column: 12, scope: !1863)
!1886 = !DILocation(line: 172, column: 18, scope: !1863)
!1887 = !DILocation(line: 172, column: 16, scope: !1863)
!1888 = !DILocation(line: 172, column: 10, scope: !1863)
!1889 = !DILocation(line: 172, column: 9, scope: !1863)
!1890 = !DILocation(line: 173, column: 1, scope: !1863)
!1891 = !DILocation(line: 172, column: 2, scope: !1863)
!1892 = distinct !DISubprogram(name: "_test_bit", scope: !1893, file: !1893, line: 139, type: !1844, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1894)
!1893 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!1894 = !{!1895, !1896}
!1895 = !DILocalVariable(name: "nr", arg: 1, scope: !1892, file: !1893, line: 139, type: !65)
!1896 = !DILocalVariable(name: "addr", arg: 2, scope: !1892, file: !1893, line: 139, type: !1846)
!1897 = !DILocation(line: 139, column: 25, scope: !1892)
!1898 = !DILocation(line: 139, column: 59, scope: !1892)
!1899 = !DILocation(line: 141, column: 25, scope: !1892)
!1900 = !DILocation(line: 141, column: 32, scope: !1892)
!1901 = !DILocation(line: 141, column: 30, scope: !1892)
!1902 = !DILocation(line: 141, column: 2, scope: !1892)
!1903 = !DILocation(line: 142, column: 23, scope: !1892)
!1904 = !DILocation(line: 142, column: 27, scope: !1892)
!1905 = !DILocation(line: 142, column: 9, scope: !1892)
!1906 = !DILocation(line: 142, column: 2, scope: !1892)
!1907 = distinct !DISubprogram(name: "fpu__probe_without_cpuid", scope: !3, file: !3, line: 56, type: !1908, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!905}
!1910 = !{!1911, !1912, !1913}
!1911 = !DILocalVariable(name: "cr0", scope: !1907, file: !3, line: 58, type: !65)
!1912 = !DILocalVariable(name: "fsw", scope: !1907, file: !3, line: 59, type: !106)
!1913 = !DILocalVariable(name: "fcw", scope: !1907, file: !3, line: 59, type: !106)
!1914 = !DILocation(line: 58, column: 2, scope: !1907)
!1915 = !DILocation(line: 58, column: 16, scope: !1907)
!1916 = !DILocation(line: 59, column: 2, scope: !1907)
!1917 = !DILocation(line: 59, column: 6, scope: !1907)
!1918 = !DILocation(line: 59, column: 11, scope: !1907)
!1919 = !DILocation(line: 61, column: 12, scope: !1907)
!1920 = !DILocation(line: 61, column: 6, scope: !1907)
!1921 = !DILocation(line: 63, column: 8, scope: !1907)
!1922 = !DILocation(line: 63, column: 6, scope: !1907)
!1923 = !DILocation(line: 64, column: 6, scope: !1907)
!1924 = !DILocation(line: 65, column: 12, scope: !1907)
!1925 = !DILocation(line: 65, column: 2, scope: !1907)
!1926 = !DILocation(line: 67, column: 2, scope: !1907)
!1927 = !{i64 1360}
!1928 = !DILocation(line: 69, column: 2, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 69, column: 2)
!1930 = !DILocation(line: 69, column: 2, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 69, column: 2)
!1932 = !DILocation(line: 71, column: 9, scope: !1907)
!1933 = !DILocation(line: 71, column: 13, scope: !1907)
!1934 = !DILocation(line: 71, column: 18, scope: !1907)
!1935 = !DILocation(line: 71, column: 22, scope: !1907)
!1936 = !DILocation(line: 71, column: 26, scope: !1907)
!1937 = !DILocation(line: 71, column: 36, scope: !1907)
!1938 = !DILocation(line: 0, scope: !1907)
!1939 = !DILocation(line: 72, column: 1, scope: !1907)
!1940 = !DILocation(line: 71, column: 2, scope: !1907)
!1941 = distinct !DISubprogram(name: "set_bit", scope: !1942, file: !1942, line: 26, type: !1943, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1946)
!1942 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !646, !1945}
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1946 = !{!1947, !1948}
!1947 = !DILocalVariable(name: "nr", arg: 1, scope: !1941, file: !1942, line: 26, type: !646)
!1948 = !DILocalVariable(name: "addr", arg: 2, scope: !1941, file: !1942, line: 26, type: !1945)
!1949 = !DILocation(line: 26, column: 42, scope: !1941)
!1950 = !DILocation(line: 26, column: 70, scope: !1941)
!1951 = !DILocation(line: 28, column: 26, scope: !1941)
!1952 = !DILocation(line: 28, column: 33, scope: !1941)
!1953 = !DILocation(line: 28, column: 31, scope: !1941)
!1954 = !DILocation(line: 28, column: 2, scope: !1941)
!1955 = !DILocation(line: 29, column: 15, scope: !1941)
!1956 = !DILocation(line: 29, column: 19, scope: !1941)
!1957 = !DILocation(line: 29, column: 2, scope: !1941)
!1958 = !DILocation(line: 30, column: 1, scope: !1941)
!1959 = !DISubprogram(name: "setup_clear_cpu_cap", scope: !1960, file: !1960, line: 150, type: !1695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1960 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!1961 = !DISubprogram(name: "_printk", scope: !1962, file: !1962, line: 153, type: !1963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1962 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!86, !1965, null}
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!1967 = distinct !DISubprogram(name: "constant_test_bit", scope: !1843, file: !1843, line: 204, type: !1968, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1970)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!905, !646, !1846}
!1970 = !{!1971, !1972}
!1971 = !DILocalVariable(name: "nr", arg: 1, scope: !1967, file: !1843, line: 204, type: !646)
!1972 = !DILocalVariable(name: "addr", arg: 2, scope: !1967, file: !1843, line: 204, type: !1846)
!1973 = !DILocation(line: 204, column: 52, scope: !1967)
!1974 = !DILocation(line: 204, column: 86, scope: !1967)
!1975 = !DILocation(line: 206, column: 19, scope: !1967)
!1976 = !DILocation(line: 206, column: 22, scope: !1967)
!1977 = !DILocation(line: 206, column: 15, scope: !1967)
!1978 = !DILocation(line: 207, column: 4, scope: !1967)
!1979 = !DILocation(line: 207, column: 9, scope: !1967)
!1980 = !DILocation(line: 207, column: 12, scope: !1967)
!1981 = !DILocation(line: 206, column: 44, scope: !1967)
!1982 = !DILocation(line: 207, column: 37, scope: !1967)
!1983 = !DILocation(line: 206, column: 2, scope: !1967)
!1984 = distinct !DISubprogram(name: "variable_test_bit", scope: !1843, file: !1843, line: 224, type: !1968, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1985)
!1985 = !{!1986, !1987, !1988}
!1986 = !DILocalVariable(name: "nr", arg: 1, scope: !1984, file: !1843, line: 224, type: !646)
!1987 = !DILocalVariable(name: "addr", arg: 2, scope: !1984, file: !1843, line: 224, type: !1846)
!1988 = !DILocalVariable(name: "oldbit", scope: !1984, file: !1843, line: 226, type: !905)
!1989 = !DILocation(line: 224, column: 52, scope: !1984)
!1990 = !DILocation(line: 224, column: 86, scope: !1984)
!1991 = !DILocation(line: 226, column: 2, scope: !1984)
!1992 = !DILocation(line: 226, column: 7, scope: !1984)
!1993 = !DILocation(line: 231, column: 33, scope: !1984)
!1994 = !DILocation(line: 231, column: 46, scope: !1984)
!1995 = !DILocation(line: 228, column: 2, scope: !1984)
!1996 = !{i64 2147960564, i64 2147960638}
!1997 = !DILocation(line: 233, column: 9, scope: !1984)
!1998 = !{i8 0, i8 2}
!1999 = !DILocation(line: 234, column: 1, scope: !1984)
!2000 = !DILocation(line: 233, column: 2, scope: !1984)
!2001 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2002, file: !2002, line: 66, type: !2003, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2008)
!2002 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2003 = !DISubroutineType(types: !2004)
!2004 = !{null, !2005, !870}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2007)
!2007 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2008 = !{!2009, !2010}
!2009 = !DILocalVariable(name: "v", arg: 1, scope: !2001, file: !2002, line: 66, type: !2005)
!2010 = !DILocalVariable(name: "size", arg: 2, scope: !2001, file: !2002, line: 66, type: !870)
!2011 = !DILocation(line: 66, column: 73, scope: !2001)
!2012 = !DILocation(line: 66, column: 83, scope: !2001)
!2013 = !DILocation(line: 68, column: 19, scope: !2001)
!2014 = !DILocation(line: 68, column: 22, scope: !2001)
!2015 = !DILocation(line: 68, column: 2, scope: !2001)
!2016 = !DILocation(line: 69, column: 2, scope: !2001)
!2017 = !DILocation(line: 70, column: 1, scope: !2001)
!2018 = distinct !DISubprogram(name: "kasan_check_read", scope: !2019, file: !2019, line: 40, type: !2020, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2022)
!2019 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!905, !2005, !7}
!2022 = !{!2023, !2024}
!2023 = !DILocalVariable(name: "p", arg: 1, scope: !2018, file: !2019, line: 40, type: !2005)
!2024 = !DILocalVariable(name: "size", arg: 2, scope: !2018, file: !2019, line: 40, type: !7)
!2025 = !DILocation(line: 40, column: 58, scope: !2018)
!2026 = !DILocation(line: 40, column: 74, scope: !2018)
!2027 = !DILocation(line: 42, column: 2, scope: !2018)
!2028 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2029, file: !2029, line: 229, type: !2030, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2032)
!2029 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !2005, !870, !86}
!2032 = !{!2033, !2034, !2035}
!2033 = !DILocalVariable(name: "ptr", arg: 1, scope: !2028, file: !2029, line: 229, type: !2005)
!2034 = !DILocalVariable(name: "size", arg: 2, scope: !2028, file: !2029, line: 229, type: !870)
!2035 = !DILocalVariable(name: "type", arg: 3, scope: !2028, file: !2029, line: 230, type: !86)
!2036 = !DILocation(line: 229, column: 60, scope: !2028)
!2037 = !DILocation(line: 229, column: 72, scope: !2028)
!2038 = !DILocation(line: 230, column: 15, scope: !2028)
!2039 = !DILocation(line: 230, column: 23, scope: !2028)
!2040 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2002, file: !2002, line: 80, type: !2003, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2041)
!2041 = !{!2042, !2043}
!2042 = !DILocalVariable(name: "v", arg: 1, scope: !2040, file: !2002, line: 80, type: !2005)
!2043 = !DILocalVariable(name: "size", arg: 2, scope: !2040, file: !2002, line: 80, type: !870)
!2044 = !DILocation(line: 80, column: 74, scope: !2040)
!2045 = !DILocation(line: 80, column: 84, scope: !2040)
!2046 = !DILocation(line: 82, column: 20, scope: !2040)
!2047 = !DILocation(line: 82, column: 23, scope: !2040)
!2048 = !DILocation(line: 82, column: 2, scope: !2040)
!2049 = !DILocation(line: 83, column: 2, scope: !2040)
!2050 = !DILocation(line: 84, column: 1, scope: !2040)
!2051 = distinct !DISubprogram(name: "arch_set_bit", scope: !1843, file: !1843, line: 52, type: !1943, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2052)
!2052 = !{!2053, !2054}
!2053 = !DILocalVariable(name: "nr", arg: 1, scope: !2051, file: !1843, line: 52, type: !646)
!2054 = !DILocalVariable(name: "addr", arg: 2, scope: !2051, file: !1843, line: 52, type: !1945)
!2055 = !DILocation(line: 52, column: 19, scope: !2051)
!2056 = !DILocation(line: 52, column: 47, scope: !2051)
!2057 = !DILocation(line: 54, column: 27, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2051, file: !1843, line: 54, column: 6)
!2059 = !DILocation(line: 54, column: 6, scope: !2058)
!2060 = !DILocation(line: 54, column: 6, scope: !2051)
!2061 = !DILocation(line: 56, column: 6, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2058, file: !1843, line: 54, column: 32)
!2063 = !DILocation(line: 57, column: 12, scope: !2062)
!2064 = !DILocation(line: 55, column: 3, scope: !2062)
!2065 = !{i64 2147946952, i64 2147946991, i64 2147947012, i64 2147947049, i64 2147947072, i64 2147946942}
!2066 = !DILocation(line: 59, column: 2, scope: !2062)
!2067 = !DILocation(line: 61, column: 8, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2058, file: !1843, line: 59, column: 9)
!2069 = !DILocation(line: 61, column: 32, scope: !2068)
!2070 = !DILocation(line: 60, column: 3, scope: !2068)
!2071 = !{i64 2147947237, i64 2147947276, i64 2147947297, i64 2147947334, i64 2147947357, i64 2147947227}
!2072 = !DILocation(line: 63, column: 1, scope: !2051)
!2073 = distinct !DISubprogram(name: "kasan_check_write", scope: !2019, file: !2019, line: 44, type: !2020, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2074)
!2074 = !{!2075, !2076}
!2075 = !DILocalVariable(name: "p", arg: 1, scope: !2073, file: !2019, line: 44, type: !2005)
!2076 = !DILocalVariable(name: "size", arg: 2, scope: !2073, file: !2019, line: 44, type: !7)
!2077 = !DILocation(line: 44, column: 59, scope: !2073)
!2078 = !DILocation(line: 44, column: 75, scope: !2073)
!2079 = !DILocation(line: 46, column: 2, scope: !2073)
!2080 = !DISubprogram(name: "fpstate_init_user", scope: !1610, file: !1610, line: 25, type: !2081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{null, !1352}
!2083 = !DILocation(line: 101, column: 2, scope: !1551)
!2084 = !DILocation(line: 101, column: 15, scope: !1551)
!2085 = !DILocation(line: 107, column: 3, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 103, column: 38)
!2087 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 103, column: 6)
!2088 = !{i64 2455}
!2089 = !DILocation(line: 109, column: 17, scope: !2086)
!2090 = !DILocation(line: 109, column: 8, scope: !2086)
!2091 = !DILocation(line: 116, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 116, column: 7)
!2093 = !DILocation(line: 116, column: 12, scope: !2092)
!2094 = !DILocation(line: 116, column: 7, scope: !2086)
!2095 = !DILocation(line: 117, column: 9, scope: !2092)
!2096 = !DILocation(line: 117, column: 4, scope: !2092)
!2097 = !DILocation(line: 119, column: 24, scope: !1551)
!2098 = !DILocation(line: 119, column: 21, scope: !1551)
!2099 = !DILocation(line: 120, column: 1, scope: !1551)
