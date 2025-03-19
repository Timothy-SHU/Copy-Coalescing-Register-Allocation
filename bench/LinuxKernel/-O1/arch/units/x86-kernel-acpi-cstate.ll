; ModuleID = 'arch/x86/kernel/acpi/cstate.c'
source_filename = "arch/x86/kernel/acpi/cstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_processor_power_init_bm_check: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_processor_power_init_bm_check ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_processor_ffh_cstate_probe: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_processor_ffh_cstate_probe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_processor_ffh_cstate_enter: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_processor_ffh_cstate_enter ; .previous"
module asm ".section\09\22.initcall3.init..kmod_cstate__227_237_ffh_cstate_init\22, \22a\22\09\09"
module asm "__initcall__kmod_cstate__227_237_ffh_cstate_init3:\09\09\09"
module asm ".long\09__initstub__kmod_cstate__227_237_ffh_cstate_init3 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.pcpu_hot = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [16 x i8] }
%struct.anon.3 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.19 }
%union.anon.19 = type { i64 }
%struct.anon = type { i8, i8, i8, i8 }
%struct.acpi_power_register = type <{ i8, i16, i8, i8, i8, i8, i64 }>
%struct.cstate_entry = type { [8 x %struct.anon.1] }
%struct.anon.1 = type { i32, i32 }
%struct.acpi_processor_cx = type { i8, i8, i32, i8, i8, i32, i8, [32 x i8] }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.atomic_t }
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
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.15, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.18 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { i64, i64 }
%union.anon.18 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }

@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@__UNIQUE_ID___addressable_acpi_processor_power_init_bm_check224 = internal global ptr @acpi_processor_power_init_bm_check, section ".discard.addressable", align 8, !dbg !0
@cpu_cstate_entry = internal global ptr null, align 8, !dbg !1639
@__UNIQUE_ID___addressable_acpi_processor_ffh_cstate_probe225 = internal global ptr @acpi_processor_ffh_cstate_probe, section ".discard.addressable", align 8, !dbg !1623
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !1625
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__UNIQUE_ID___addressable_acpi_processor_ffh_cstate_enter226 = internal global ptr @acpi_processor_ffh_cstate_enter, section ".discard.addressable", align 8, !dbg !1628
@__UNIQUE_ID___addressable___initstub__kmod_cstate__227_237_ffh_cstate_init3228 = internal global ptr @__initstub__kmod_cstate__227_237_ffh_cstate_init3, section ".discard.addressable", align 8, !dbg !1630
@__exitcall_ffh_cstate_exit = internal global ptr @ffh_cstate_exit, section ".exitcall.exit", align 8, !dbg !1632
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@call_on_cpu.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !1641
@.str.1 = private unnamed_addr constant [70 x i8] c"\014[Firmware Bug]: ACPI MWAIT C-state 0x%x not supported by HW (0x%x)\0A\00", align 1, !dbg !1665
@mwait_supported = internal global [8 x i16] zeroinitializer, align 16, !dbg !1678
@.str.2 = private unnamed_addr constant [50 x i8] c"\017Monitor-Mwait will be used to enter C-%d state\0A\00", align 1, !dbg !1670
@.str.3 = private unnamed_addr constant [20 x i8] c"ACPI FFH MWAIT 0x%x\00", align 1, !dbg !1675
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@mds_idle_clear = external dso_local global %struct.static_key_false, align 8
@mds_clear_cpu_buffers.ds = internal constant i16 24, align 2, !dbg !1681
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_processor_power_init_bm_check224, ptr @__UNIQUE_ID___addressable_acpi_processor_ffh_cstate_probe225, ptr @__UNIQUE_ID___addressable_acpi_processor_ffh_cstate_enter226, ptr @ffh_cstate_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_cstate__227_237_ffh_cstate_init3228, ptr @__exitcall_ffh_cstate_exit], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_processor_power_init_bm_check(ptr noundef %flags, i32 noundef %cpu) #0 align 16 !dbg !1695 {
entry:
  %flags.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %c = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1713, metadata !DIExpression()), !dbg !1721
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1714, metadata !DIExpression()), !dbg !1722
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #13, !dbg !1723
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1715, metadata !DIExpression()), !dbg !1724
  br label %do.body, !dbg !1725

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !1726
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1716, metadata !DIExpression()), !dbg !1726
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1726
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1726
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !1725
  br label %do.cond, !dbg !1726

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1726

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !1727
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1719, metadata !DIExpression()), !dbg !1727
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !1727
  %1 = load i64, ptr %__ptr, align 8, !dbg !1727
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !1727
  %idxprom = zext i32 %2 to i64, !dbg !1727
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1727
  %3 = load i64, ptr %arrayidx, align 8, !dbg !1727
  %add = add i64 %1, %3, !dbg !1727
  %4 = inttoptr i64 %add to ptr, !dbg !1727
  store ptr %4, ptr %tmp1, align 8, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !1725
  %5 = load ptr, ptr %tmp1, align 8, !dbg !1727
  store ptr %5, ptr %tmp, align 8, !dbg !1726
  %6 = load ptr, ptr %tmp, align 8, !dbg !1725
  store ptr %6, ptr %c, align 8, !dbg !1724
  %7 = load ptr, ptr %flags.addr, align 8, !dbg !1728
  %bf.load = load i16, ptr %7, align 1, !dbg !1729
  %bf.clear = and i16 %bf.load, -33, !dbg !1729
  %bf.set = or i16 %bf.clear, 0, !dbg !1729
  store i16 %bf.set, ptr %7, align 1, !dbg !1729
  %call = call i32 @num_online_cpus() #14, !dbg !1730
  %cmp = icmp eq i32 %call, 1, !dbg !1732
  br i1 %cmp, label %if.then, label %if.else, !dbg !1733

if.then:                                          ; preds = %do.end
  %8 = load ptr, ptr %flags.addr, align 8, !dbg !1734
  %bf.load2 = load i16, ptr %8, align 1, !dbg !1735
  %bf.clear3 = and i16 %bf.load2, -33, !dbg !1735
  %bf.set4 = or i16 %bf.clear3, 32, !dbg !1735
  store i16 %bf.set4, ptr %8, align 1, !dbg !1735
  br label %if.end11, !dbg !1734

if.else:                                          ; preds = %do.end
  %9 = load ptr, ptr %c, align 8, !dbg !1736
  %10 = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 0, !dbg !1738
  %x86_vendor = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 2, !dbg !1738
  %11 = load i8, ptr %x86_vendor, align 2, !dbg !1738
  %conv = zext i8 %11 to i32, !dbg !1736
  %cmp5 = icmp eq i32 %conv, 0, !dbg !1739
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !1740

if.then7:                                         ; preds = %if.else
  %12 = load ptr, ptr %flags.addr, align 8, !dbg !1741
  %bf.load8 = load i16, ptr %12, align 1, !dbg !1743
  %bf.clear9 = and i16 %bf.load8, -33, !dbg !1743
  %bf.set10 = or i16 %bf.clear9, 32, !dbg !1743
  store i16 %bf.set10, ptr %12, align 1, !dbg !1743
  br label %if.end, !dbg !1744

if.end:                                           ; preds = %if.then7, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  %13 = load ptr, ptr %c, align 8, !dbg !1745
  %14 = getelementptr inbounds %struct.cpuinfo_x86, ptr %13, i32 0, i32 0, !dbg !1747
  %x86_vendor12 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 2, !dbg !1747
  %15 = load i8, ptr %x86_vendor12, align 2, !dbg !1747
  %conv13 = zext i8 %15 to i32, !dbg !1745
  %cmp14 = icmp eq i32 %conv13, 0, !dbg !1748
  br i1 %cmp14, label %land.lhs.true, label %if.end31, !dbg !1749

land.lhs.true:                                    ; preds = %if.end11
  %16 = load ptr, ptr %c, align 8, !dbg !1750
  %17 = getelementptr inbounds %struct.cpuinfo_x86, ptr %16, i32 0, i32 0, !dbg !1751
  %x86 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 1, !dbg !1751
  %18 = load i8, ptr %x86, align 1, !dbg !1751
  %conv16 = zext i8 %18 to i32, !dbg !1750
  %cmp17 = icmp sgt i32 %conv16, 15, !dbg !1752
  br i1 %cmp17, label %if.then27, label %lor.lhs.false, !dbg !1753

lor.lhs.false:                                    ; preds = %land.lhs.true
  %19 = load ptr, ptr %c, align 8, !dbg !1754
  %20 = getelementptr inbounds %struct.cpuinfo_x86, ptr %19, i32 0, i32 0, !dbg !1755
  %x8619 = getelementptr inbounds %struct.anon, ptr %20, i32 0, i32 1, !dbg !1755
  %21 = load i8, ptr %x8619, align 1, !dbg !1755
  %conv20 = zext i8 %21 to i32, !dbg !1754
  %cmp21 = icmp eq i32 %conv20, 6, !dbg !1756
  br i1 %cmp21, label %land.lhs.true23, label %if.end31, !dbg !1757

land.lhs.true23:                                  ; preds = %lor.lhs.false
  %22 = load ptr, ptr %c, align 8, !dbg !1758
  %23 = getelementptr inbounds %struct.cpuinfo_x86, ptr %22, i32 0, i32 0, !dbg !1759
  %x86_model = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 0, !dbg !1759
  %24 = load i8, ptr %x86_model, align 8, !dbg !1759
  %conv24 = zext i8 %24 to i32, !dbg !1758
  %cmp25 = icmp sge i32 %conv24, 15, !dbg !1760
  br i1 %cmp25, label %if.then27, label %if.end31, !dbg !1761

if.then27:                                        ; preds = %land.lhs.true23, %land.lhs.true
  %25 = load ptr, ptr %flags.addr, align 8, !dbg !1762
  %bf.load28 = load i16, ptr %25, align 1, !dbg !1763
  %bf.clear29 = and i16 %bf.load28, -17, !dbg !1763
  %bf.set30 = or i16 %bf.clear29, 0, !dbg !1763
  store i16 %bf.set30, ptr %25, align 1, !dbg !1763
  br label %if.end31, !dbg !1762

if.end31:                                         ; preds = %if.then27, %land.lhs.true23, %lor.lhs.false, %if.end11
  %26 = load ptr, ptr %c, align 8, !dbg !1764
  %27 = getelementptr inbounds %struct.cpuinfo_x86, ptr %26, i32 0, i32 0, !dbg !1766
  %x86_vendor32 = getelementptr inbounds %struct.anon, ptr %27, i32 0, i32 2, !dbg !1766
  %28 = load i8, ptr %x86_vendor32, align 2, !dbg !1766
  %conv33 = zext i8 %28 to i32, !dbg !1764
  %cmp34 = icmp eq i32 %conv33, 5, !dbg !1767
  br i1 %cmp34, label %if.then36, label %if.end63, !dbg !1768

if.then36:                                        ; preds = %if.end31
  %29 = load ptr, ptr %c, align 8, !dbg !1769
  %30 = getelementptr inbounds %struct.cpuinfo_x86, ptr %29, i32 0, i32 0, !dbg !1772
  %x8637 = getelementptr inbounds %struct.anon, ptr %30, i32 0, i32 1, !dbg !1772
  %31 = load i8, ptr %x8637, align 1, !dbg !1772
  %conv38 = zext i8 %31 to i32, !dbg !1769
  %cmp39 = icmp sgt i32 %conv38, 6, !dbg !1773
  br i1 %cmp39, label %if.then55, label %lor.lhs.false41, !dbg !1774

lor.lhs.false41:                                  ; preds = %if.then36
  %32 = load ptr, ptr %c, align 8, !dbg !1775
  %33 = getelementptr inbounds %struct.cpuinfo_x86, ptr %32, i32 0, i32 0, !dbg !1776
  %x8642 = getelementptr inbounds %struct.anon, ptr %33, i32 0, i32 1, !dbg !1776
  %34 = load i8, ptr %x8642, align 1, !dbg !1776
  %conv43 = zext i8 %34 to i32, !dbg !1775
  %cmp44 = icmp eq i32 %conv43, 6, !dbg !1777
  br i1 %cmp44, label %land.lhs.true46, label %if.end62, !dbg !1778

land.lhs.true46:                                  ; preds = %lor.lhs.false41
  %35 = load ptr, ptr %c, align 8, !dbg !1779
  %36 = getelementptr inbounds %struct.cpuinfo_x86, ptr %35, i32 0, i32 0, !dbg !1780
  %x86_model47 = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 0, !dbg !1780
  %37 = load i8, ptr %x86_model47, align 8, !dbg !1780
  %conv48 = zext i8 %37 to i32, !dbg !1779
  %cmp49 = icmp eq i32 %conv48, 15, !dbg !1781
  br i1 %cmp49, label %land.lhs.true51, label %if.end62, !dbg !1782

land.lhs.true51:                                  ; preds = %land.lhs.true46
  %38 = load ptr, ptr %c, align 8, !dbg !1783
  %x86_stepping = getelementptr inbounds %struct.cpuinfo_x86, ptr %38, i32 0, i32 1, !dbg !1784
  %39 = load i8, ptr %x86_stepping, align 4, !dbg !1784
  %conv52 = zext i8 %39 to i32, !dbg !1783
  %cmp53 = icmp sge i32 %conv52, 14, !dbg !1785
  br i1 %cmp53, label %if.then55, label %if.end62, !dbg !1786

if.then55:                                        ; preds = %land.lhs.true51, %if.then36
  %40 = load ptr, ptr %flags.addr, align 8, !dbg !1787
  %bf.load56 = load i16, ptr %40, align 1, !dbg !1789
  %bf.clear57 = and i16 %bf.load56, -33, !dbg !1789
  %bf.set58 = or i16 %bf.clear57, 32, !dbg !1789
  store i16 %bf.set58, ptr %40, align 1, !dbg !1789
  %41 = load ptr, ptr %flags.addr, align 8, !dbg !1790
  %bf.load59 = load i16, ptr %41, align 1, !dbg !1791
  %bf.clear60 = and i16 %bf.load59, -17, !dbg !1791
  %bf.set61 = or i16 %bf.clear60, 0, !dbg !1791
  store i16 %bf.set61, ptr %41, align 1, !dbg !1791
  br label %if.end62, !dbg !1792

if.end62:                                         ; preds = %if.then55, %land.lhs.true51, %land.lhs.true46, %lor.lhs.false41
  br label %if.end63, !dbg !1793

if.end63:                                         ; preds = %if.end62, %if.end31
  %42 = load ptr, ptr %c, align 8, !dbg !1794
  %43 = getelementptr inbounds %struct.cpuinfo_x86, ptr %42, i32 0, i32 0, !dbg !1796
  %x86_vendor64 = getelementptr inbounds %struct.anon, ptr %43, i32 0, i32 2, !dbg !1796
  %44 = load i8, ptr %x86_vendor64, align 2, !dbg !1796
  %conv65 = zext i8 %44 to i32, !dbg !1794
  %cmp66 = icmp eq i32 %conv65, 10, !dbg !1797
  br i1 %cmp66, label %if.then68, label %if.end75, !dbg !1798

if.then68:                                        ; preds = %if.end63
  %45 = load ptr, ptr %flags.addr, align 8, !dbg !1799
  %bf.load69 = load i16, ptr %45, align 1, !dbg !1801
  %bf.clear70 = and i16 %bf.load69, -33, !dbg !1801
  %bf.set71 = or i16 %bf.clear70, 32, !dbg !1801
  store i16 %bf.set71, ptr %45, align 1, !dbg !1801
  %46 = load ptr, ptr %flags.addr, align 8, !dbg !1802
  %bf.load72 = load i16, ptr %46, align 1, !dbg !1803
  %bf.clear73 = and i16 %bf.load72, -17, !dbg !1803
  %bf.set74 = or i16 %bf.clear73, 0, !dbg !1803
  store i16 %bf.set74, ptr %46, align 1, !dbg !1803
  br label %if.end75, !dbg !1804

if.end75:                                         ; preds = %if.then68, %if.end63
  %47 = load ptr, ptr %c, align 8, !dbg !1805
  %48 = getelementptr inbounds %struct.cpuinfo_x86, ptr %47, i32 0, i32 0, !dbg !1807
  %x86_vendor76 = getelementptr inbounds %struct.anon, ptr %48, i32 0, i32 2, !dbg !1807
  %49 = load i8, ptr %x86_vendor76, align 2, !dbg !1807
  %conv77 = zext i8 %49 to i32, !dbg !1805
  %cmp78 = icmp eq i32 %conv77, 2, !dbg !1808
  br i1 %cmp78, label %land.lhs.true80, label %if.end92, !dbg !1809

land.lhs.true80:                                  ; preds = %if.end75
  %50 = load ptr, ptr %c, align 8, !dbg !1810
  %51 = getelementptr inbounds %struct.cpuinfo_x86, ptr %50, i32 0, i32 0, !dbg !1811
  %x8681 = getelementptr inbounds %struct.anon, ptr %51, i32 0, i32 1, !dbg !1811
  %52 = load i8, ptr %x8681, align 1, !dbg !1811
  %conv82 = zext i8 %52 to i32, !dbg !1810
  %cmp83 = icmp sge i32 %conv82, 23, !dbg !1812
  br i1 %cmp83, label %if.then85, label %if.end92, !dbg !1813

if.then85:                                        ; preds = %land.lhs.true80
  %53 = load ptr, ptr %flags.addr, align 8, !dbg !1814
  %bf.load86 = load i16, ptr %53, align 1, !dbg !1816
  %bf.clear87 = and i16 %bf.load86, -33, !dbg !1816
  %bf.set88 = or i16 %bf.clear87, 32, !dbg !1816
  store i16 %bf.set88, ptr %53, align 1, !dbg !1816
  %54 = load ptr, ptr %flags.addr, align 8, !dbg !1817
  %bf.load89 = load i16, ptr %54, align 1, !dbg !1818
  %bf.clear90 = and i16 %bf.load89, -17, !dbg !1818
  %bf.set91 = or i16 %bf.clear90, 0, !dbg !1818
  store i16 %bf.set91, ptr %54, align 1, !dbg !1818
  br label %if.end92, !dbg !1819

if.end92:                                         ; preds = %if.then85, %land.lhs.true80, %if.end75
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #13, !dbg !1820
  ret void, !dbg !1820
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @num_online_cpus() #3 align 16 !dbg !1821 {
entry:
  %call = call i32 @raw_atomic_read(ptr noundef @__num_online_cpus) #14, !dbg !1824
  ret i32 %call, !dbg !1825
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_processor_ffh_cstate_probe(i32 noundef %cpu, ptr noundef %cx, ptr noundef %reg) #0 align 16 !dbg !1826 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %cx.addr = alloca ptr, align 8
  %reg.addr = alloca ptr, align 8
  %percpu_entry = alloca ptr, align 8
  %c = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %retval2 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %__ptr12 = alloca i64, align 8
  %tmp13 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1852, metadata !DIExpression()), !dbg !1868
  store ptr %cx, ptr %cx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cx.addr, metadata !1853, metadata !DIExpression()), !dbg !1869
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !1854, metadata !DIExpression()), !dbg !1870
  call void @llvm.lifetime.start.p0(i64 8, ptr %percpu_entry) #13, !dbg !1871
  call void @llvm.dbg.declare(metadata ptr %percpu_entry, metadata !1855, metadata !DIExpression()), !dbg !1872
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #13, !dbg !1873
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1856, metadata !DIExpression()), !dbg !1874
  br label %do.body, !dbg !1875

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !1876
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1857, metadata !DIExpression()), !dbg !1876
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1876
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1876
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !1875
  br label %do.cond, !dbg !1876

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1876

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !1877
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1860, metadata !DIExpression()), !dbg !1877
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !1877
  %1 = load i64, ptr %__ptr, align 8, !dbg !1877
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !1877
  %idxprom = zext i32 %2 to i64, !dbg !1877
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1877
  %3 = load i64, ptr %arrayidx, align 8, !dbg !1877
  %add = add i64 %1, %3, !dbg !1877
  %4 = inttoptr i64 %add to ptr, !dbg !1877
  store ptr %4, ptr %tmp1, align 8, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !1875
  %5 = load ptr, ptr %tmp1, align 8, !dbg !1877
  store ptr %5, ptr %tmp, align 8, !dbg !1876
  %6 = load ptr, ptr %tmp, align 8, !dbg !1875
  store ptr %6, ptr %c, align 8, !dbg !1874
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval2) #13, !dbg !1878
  call void @llvm.dbg.declare(metadata ptr %retval2, metadata !1862, metadata !DIExpression()), !dbg !1879
  %7 = load ptr, ptr @cpu_cstate_entry, align 8, !dbg !1880
  %tobool = icmp ne ptr %7, null, !dbg !1880
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1882

lor.lhs.false:                                    ; preds = %do.end
  %8 = load ptr, ptr %c, align 8, !dbg !1883
  %cpuid_level = getelementptr inbounds %struct.cpuinfo_x86, ptr %8, i32 0, i32 9, !dbg !1884
  %9 = load i32, ptr %cpuid_level, align 8, !dbg !1884
  %cmp = icmp slt i32 %9, 5, !dbg !1885
  br i1 %cmp, label %if.then, label %if.end, !dbg !1886

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1887

if.end:                                           ; preds = %lor.lhs.false
  %10 = load ptr, ptr %reg.addr, align 8, !dbg !1888
  %bit_offset = getelementptr inbounds %struct.acpi_power_register, ptr %10, i32 0, i32 4, !dbg !1890
  %11 = load i8, ptr %bit_offset, align 1, !dbg !1890
  %conv = zext i8 %11 to i32, !dbg !1888
  %cmp3 = icmp ne i32 %conv, 2, !dbg !1891
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !1892

if.then5:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1893
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1893

if.end6:                                          ; preds = %if.end
  br label %do.body7, !dbg !1894

do.body7:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify8) #13, !dbg !1895
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify8, metadata !1863, metadata !DIExpression()), !dbg !1895
  store ptr null, ptr %__vpp_verify8, align 8, !dbg !1895
  %12 = load ptr, ptr %__vpp_verify8, align 8, !dbg !1895
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify8) #13, !dbg !1894
  br label %do.cond9, !dbg !1895

do.cond9:                                         ; preds = %do.body7
  br label %do.end10, !dbg !1895

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr12) #13, !dbg !1896
  call void @llvm.dbg.declare(metadata ptr %__ptr12, metadata !1866, metadata !DIExpression()), !dbg !1896
  %13 = load ptr, ptr @cpu_cstate_entry, align 8, !dbg !1896
  %14 = ptrtoint ptr %13 to i64, !dbg !1896
  store i64 %14, ptr %__ptr12, align 8, !dbg !1896
  %15 = load i64, ptr %__ptr12, align 8, !dbg !1896
  %16 = load i32, ptr %cpu.addr, align 4, !dbg !1896
  %idxprom14 = zext i32 %16 to i64, !dbg !1896
  %arrayidx15 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom14, !dbg !1896
  %17 = load i64, ptr %arrayidx15, align 8, !dbg !1896
  %add16 = add i64 %15, %17, !dbg !1896
  %18 = inttoptr i64 %add16 to ptr, !dbg !1896
  store ptr %18, ptr %tmp13, align 8, !dbg !1896
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr12) #13, !dbg !1894
  %19 = load ptr, ptr %tmp13, align 8, !dbg !1896
  store ptr %19, ptr %tmp11, align 8, !dbg !1895
  %20 = load ptr, ptr %tmp11, align 8, !dbg !1894
  store ptr %20, ptr %percpu_entry, align 8, !dbg !1897
  %21 = load ptr, ptr %percpu_entry, align 8, !dbg !1898
  %states = getelementptr inbounds %struct.cstate_entry, ptr %21, i32 0, i32 0, !dbg !1899
  %22 = load ptr, ptr %cx.addr, align 8, !dbg !1900
  %index = getelementptr inbounds %struct.acpi_processor_cx, ptr %22, i32 0, i32 4, !dbg !1901
  %23 = load i8, ptr %index, align 1, !dbg !1901
  %idxprom17 = zext i8 %23 to i64, !dbg !1898
  %arrayidx18 = getelementptr [8 x %struct.anon.1], ptr %states, i64 0, i64 %idxprom17, !dbg !1898
  %eax = getelementptr inbounds %struct.anon.1, ptr %arrayidx18, i32 0, i32 0, !dbg !1902
  store i32 0, ptr %eax, align 4, !dbg !1903
  %24 = load ptr, ptr %percpu_entry, align 8, !dbg !1904
  %states19 = getelementptr inbounds %struct.cstate_entry, ptr %24, i32 0, i32 0, !dbg !1905
  %25 = load ptr, ptr %cx.addr, align 8, !dbg !1906
  %index20 = getelementptr inbounds %struct.acpi_processor_cx, ptr %25, i32 0, i32 4, !dbg !1907
  %26 = load i8, ptr %index20, align 1, !dbg !1907
  %idxprom21 = zext i8 %26 to i64, !dbg !1904
  %arrayidx22 = getelementptr [8 x %struct.anon.1], ptr %states19, i64 0, i64 %idxprom21, !dbg !1904
  %ecx = getelementptr inbounds %struct.anon.1, ptr %arrayidx22, i32 0, i32 1, !dbg !1908
  store i32 0, ptr %ecx, align 4, !dbg !1909
  %27 = load i32, ptr %cpu.addr, align 4, !dbg !1910
  %28 = load ptr, ptr %cx.addr, align 8, !dbg !1911
  %call = call i32 @call_on_cpu(i32 noundef %27, ptr noundef @acpi_processor_ffh_cstate_probe_cpu, ptr noundef %28, i1 noundef zeroext false) #14, !dbg !1912
  %conv23 = sext i32 %call to i64, !dbg !1912
  store i64 %conv23, ptr %retval2, align 8, !dbg !1913
  %29 = load i64, ptr %retval2, align 8, !dbg !1914
  %cmp24 = icmp eq i64 %29, 0, !dbg !1916
  br i1 %cmp24, label %if.then26, label %if.end37, !dbg !1917

if.then26:                                        ; preds = %do.end10
  %30 = load ptr, ptr %cx.addr, align 8, !dbg !1918
  %address = getelementptr inbounds %struct.acpi_processor_cx, ptr %30, i32 0, i32 2, !dbg !1920
  %31 = load i32, ptr %address, align 4, !dbg !1920
  %32 = load ptr, ptr %percpu_entry, align 8, !dbg !1921
  %states27 = getelementptr inbounds %struct.cstate_entry, ptr %32, i32 0, i32 0, !dbg !1922
  %33 = load ptr, ptr %cx.addr, align 8, !dbg !1923
  %index28 = getelementptr inbounds %struct.acpi_processor_cx, ptr %33, i32 0, i32 4, !dbg !1924
  %34 = load i8, ptr %index28, align 1, !dbg !1924
  %idxprom29 = zext i8 %34 to i64, !dbg !1921
  %arrayidx30 = getelementptr [8 x %struct.anon.1], ptr %states27, i64 0, i64 %idxprom29, !dbg !1921
  %eax31 = getelementptr inbounds %struct.anon.1, ptr %arrayidx30, i32 0, i32 0, !dbg !1925
  store i32 %31, ptr %eax31, align 4, !dbg !1926
  %35 = load ptr, ptr %percpu_entry, align 8, !dbg !1927
  %states32 = getelementptr inbounds %struct.cstate_entry, ptr %35, i32 0, i32 0, !dbg !1928
  %36 = load ptr, ptr %cx.addr, align 8, !dbg !1929
  %index33 = getelementptr inbounds %struct.acpi_processor_cx, ptr %36, i32 0, i32 4, !dbg !1930
  %37 = load i8, ptr %index33, align 1, !dbg !1930
  %idxprom34 = zext i8 %37 to i64, !dbg !1927
  %arrayidx35 = getelementptr [8 x %struct.anon.1], ptr %states32, i64 0, i64 %idxprom34, !dbg !1927
  %ecx36 = getelementptr inbounds %struct.anon.1, ptr %arrayidx35, i32 0, i32 1, !dbg !1931
  store i32 1, ptr %ecx36, align 4, !dbg !1932
  br label %if.end37, !dbg !1933

if.end37:                                         ; preds = %if.then26, %do.end10
  %38 = load ptr, ptr %c, align 8, !dbg !1934
  %39 = getelementptr inbounds %struct.cpuinfo_x86, ptr %38, i32 0, i32 0, !dbg !1936
  %x86_vendor = getelementptr inbounds %struct.anon, ptr %39, i32 0, i32 2, !dbg !1936
  %40 = load i8, ptr %x86_vendor, align 2, !dbg !1936
  %conv38 = zext i8 %40 to i32, !dbg !1934
  %cmp39 = icmp eq i32 %conv38, 0, !dbg !1937
  br i1 %cmp39, label %land.lhs.true, label %if.end44, !dbg !1938

land.lhs.true:                                    ; preds = %if.end37
  %41 = load ptr, ptr %reg.addr, align 8, !dbg !1939
  %access_size = getelementptr inbounds %struct.acpi_power_register, ptr %41, i32 0, i32 5, !dbg !1940
  %42 = load i8, ptr %access_size, align 1, !dbg !1940
  %conv41 = zext i8 %42 to i32, !dbg !1939
  %and = and i32 %conv41, 2, !dbg !1941
  %tobool42 = icmp ne i32 %and, 0, !dbg !1941
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !1942

if.then43:                                        ; preds = %land.lhs.true
  %43 = load ptr, ptr %cx.addr, align 8, !dbg !1943
  %bm_sts_skip = getelementptr inbounds %struct.acpi_processor_cx, ptr %43, i32 0, i32 6, !dbg !1944
  store i8 1, ptr %bm_sts_skip, align 4, !dbg !1945
  br label %if.end44, !dbg !1943

if.end44:                                         ; preds = %if.then43, %land.lhs.true, %if.end37
  %44 = load i64, ptr %retval2, align 8, !dbg !1946
  %conv45 = trunc i64 %44 to i32, !dbg !1946
  store i32 %conv45, ptr %retval, align 4, !dbg !1947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1947

cleanup:                                          ; preds = %if.end44, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval2) #13, !dbg !1948
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #13, !dbg !1948
  call void @llvm.lifetime.end.p0(i64 8, ptr %percpu_entry) #13, !dbg !1948
  %45 = load i32, ptr %retval, align 4, !dbg !1948
  ret i32 %45, !dbg !1948
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @call_on_cpu(i32 noundef %cpu, ptr noundef %fn, ptr noundef %arg, i1 noundef zeroext %direct) #4 align 16 !dbg !1643 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %fn.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %direct.addr = alloca i8, align 1
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp7 = alloca i64, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1651, metadata !DIExpression()), !dbg !1949
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !1652, metadata !DIExpression()), !dbg !1950
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !1653, metadata !DIExpression()), !dbg !1951
  %frombool = zext i1 %direct to i8
  store i8 %frombool, ptr %direct.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %direct.addr, metadata !1654, metadata !DIExpression()), !dbg !1952
  %0 = load i8, ptr %direct.addr, align 1, !dbg !1953, !range !1954, !noundef !506
  %tobool = trunc i8 %0 to i1, !dbg !1953
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !1955

lor.lhs.false:                                    ; preds = %entry
  %call = call zeroext i1 @is_percpu_thread() #14, !dbg !1956
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !1957

land.lhs.true:                                    ; preds = %lor.lhs.false
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !1958
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !1959
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #13, !dbg !1960
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1655, metadata !DIExpression()), !dbg !1960
  br label %do.body, !dbg !1960

do.body:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !1961
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1659, metadata !DIExpression()), !dbg !1961
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1961
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !1961
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !1960
  br label %do.cond, !dbg !1961

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1961

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !1962
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1661, metadata !DIExpression()), !dbg !1962
  %3 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !1962, !srcloc !1963
  store i32 %3, ptr %pfo_val__, align 4, !dbg !1962
  %4 = load i32, ptr %pfo_val__, align 4, !dbg !1962
  %conv = zext i32 %4 to i64, !dbg !1962
  %conv2 = trunc i64 %conv to i32, !dbg !1962
  store i32 %conv2, ptr %tmp1, align 4, !dbg !1962
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !1960
  %5 = load i32, ptr %tmp1, align 4, !dbg !1962
  store i32 %5, ptr %pscr_ret__, align 4, !dbg !1960
  %6 = load i32, ptr %pscr_ret__, align 4, !dbg !1960
  store i32 %6, ptr %tmp3, align 4, !dbg !1960
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #13, !dbg !1959
  %7 = load i32, ptr %tmp3, align 4, !dbg !1960
  store i32 %7, ptr %tmp, align 4, !dbg !1959
  %8 = load i32, ptr %tmp, align 4, !dbg !1959
  %cmp = icmp eq i32 %1, %8, !dbg !1964
  br i1 %cmp, label %if.then, label %if.end, !dbg !1965

if.then:                                          ; preds = %do.end, %entry
  %9 = load ptr, ptr %fn.addr, align 8, !dbg !1966
  %10 = load ptr, ptr %arg.addr, align 8, !dbg !1967
  %call5 = call i64 %9(ptr noundef %10) #14, !dbg !1966
  %conv6 = trunc i64 %call5 to i32, !dbg !1966
  store i32 %conv6, ptr %retval, align 4, !dbg !1968
  br label %return, !dbg !1968

if.end:                                           ; preds = %do.end, %lor.lhs.false
  %11 = load i32, ptr %cpu.addr, align 4, !dbg !1969
  %12 = load ptr, ptr %fn.addr, align 8, !dbg !1969
  %13 = load ptr, ptr %arg.addr, align 8, !dbg !1969
  %call8 = call i64 @work_on_cpu_key(i32 noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef @call_on_cpu.__key) #14, !dbg !1969
  store i64 %call8, ptr %tmp7, align 8, !dbg !1969
  %14 = load i64, ptr %tmp7, align 8, !dbg !1969
  %conv9 = trunc i64 %14 to i32, !dbg !1971
  store i32 %conv9, ptr %retval, align 4, !dbg !1972
  br label %return, !dbg !1972

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, ptr %retval, align 4, !dbg !1973
  ret i32 %15, !dbg !1973
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @acpi_processor_ffh_cstate_probe_cpu(ptr noundef %_cx) #0 align 16 !dbg !1974 {
entry:
  %_cx.addr = alloca ptr, align 8
  %cx = alloca ptr, align 8
  %retval1 = alloca i64, align 8
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %edx_part = alloca i32, align 4
  %cstate_type = alloca i32, align 4
  %num_cstate_subtype = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  store ptr %_cx, ptr %_cx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_cx.addr, metadata !1976, metadata !DIExpression()), !dbg !1987
  call void @llvm.lifetime.start.p0(i64 8, ptr %cx) #13, !dbg !1988
  call void @llvm.dbg.declare(metadata ptr %cx, metadata !1977, metadata !DIExpression()), !dbg !1989
  %0 = load ptr, ptr %_cx.addr, align 8, !dbg !1990
  store ptr %0, ptr %cx, align 8, !dbg !1989
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #13, !dbg !1991
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !1978, metadata !DIExpression()), !dbg !1992
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #13, !dbg !1993
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !1979, metadata !DIExpression()), !dbg !1994
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #13, !dbg !1993
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !1980, metadata !DIExpression()), !dbg !1995
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #13, !dbg !1993
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !1981, metadata !DIExpression()), !dbg !1996
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #13, !dbg !1993
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !1982, metadata !DIExpression()), !dbg !1997
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx_part) #13, !dbg !1998
  call void @llvm.dbg.declare(metadata ptr %edx_part, metadata !1983, metadata !DIExpression()), !dbg !1999
  call void @llvm.lifetime.start.p0(i64 4, ptr %cstate_type) #13, !dbg !2000
  call void @llvm.dbg.declare(metadata ptr %cstate_type, metadata !1984, metadata !DIExpression()), !dbg !2001
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_cstate_subtype) #13, !dbg !2002
  call void @llvm.dbg.declare(metadata ptr %num_cstate_subtype, metadata !1985, metadata !DIExpression()), !dbg !2003
  call void @cpuid(i32 noundef 5, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #14, !dbg !2004
  %1 = load ptr, ptr %cx, align 8, !dbg !2005
  %address = getelementptr inbounds %struct.acpi_processor_cx, ptr %1, i32 0, i32 2, !dbg !2006
  %2 = load i32, ptr %address, align 4, !dbg !2006
  %shr = lshr i32 %2, 4, !dbg !2007
  %and = and i32 %shr, 15, !dbg !2008
  %add = add i32 %and, 1, !dbg !2009
  store i32 %add, ptr %cstate_type, align 4, !dbg !2010
  %3 = load i32, ptr %edx, align 4, !dbg !2011
  %4 = load i32, ptr %cstate_type, align 4, !dbg !2012
  %mul = mul i32 %4, 4, !dbg !2013
  %shr2 = lshr i32 %3, %mul, !dbg !2014
  store i32 %shr2, ptr %edx_part, align 4, !dbg !2015
  %5 = load i32, ptr %edx_part, align 4, !dbg !2016
  %and3 = and i32 %5, 15, !dbg !2017
  store i32 %and3, ptr %num_cstate_subtype, align 4, !dbg !2018
  store i64 0, ptr %retval1, align 8, !dbg !2019
  %6 = load i32, ptr %num_cstate_subtype, align 4, !dbg !2020
  %cmp = icmp eq i32 %6, 0, !dbg !2022
  br i1 %cmp, label %if.then, label %if.end, !dbg !2023

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2024

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2027

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2027

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %cx, align 8, !dbg !2024
  %address4 = getelementptr inbounds %struct.acpi_processor_cx, ptr %7, i32 0, i32 2, !dbg !2024
  %8 = load i32, ptr %address4, align 4, !dbg !2024
  %9 = load i32, ptr %edx_part, align 4, !dbg !2024
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %8, i32 noundef %9) #16, !dbg !2024
  store i32 %call, ptr %tmp, align 4, !dbg !2027
  %10 = load i32, ptr %tmp, align 4, !dbg !2024
  store i64 -1, ptr %retval1, align 8, !dbg !2029
  br label %out, !dbg !2030

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %ecx, align 4, !dbg !2031
  %and5 = and i32 %11, 1, !dbg !2033
  %tobool = icmp ne i32 %and5, 0, !dbg !2033
  br i1 %tobool, label %lor.lhs.false, label %if.then8, !dbg !2034

lor.lhs.false:                                    ; preds = %if.end
  %12 = load i32, ptr %ecx, align 4, !dbg !2035
  %and6 = and i32 %12, 2, !dbg !2036
  %tobool7 = icmp ne i32 %and6, 0, !dbg !2036
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2037

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  store i64 -1, ptr %retval1, align 8, !dbg !2038
  br label %out, !dbg !2040

if.end9:                                          ; preds = %lor.lhs.false
  %13 = load i32, ptr %cstate_type, align 4, !dbg !2041
  %idxprom = zext i32 %13 to i64, !dbg !2043
  %arrayidx = getelementptr [8 x i16], ptr @mwait_supported, i64 0, i64 %idxprom, !dbg !2043
  %14 = load i16, ptr %arrayidx, align 2, !dbg !2043
  %tobool10 = icmp ne i16 %14, 0, !dbg !2043
  br i1 %tobool10, label %if.end19, label %if.then11, !dbg !2044

if.then11:                                        ; preds = %if.end9
  %15 = load i32, ptr %cstate_type, align 4, !dbg !2045
  %idxprom12 = zext i32 %15 to i64, !dbg !2047
  %arrayidx13 = getelementptr [8 x i16], ptr @mwait_supported, i64 0, i64 %idxprom12, !dbg !2047
  store i16 1, ptr %arrayidx13, align 2, !dbg !2048
  br label %do.body14, !dbg !2049

do.body14:                                        ; preds = %if.then11
  br label %do.cond15, !dbg !2051

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2051

do.end16:                                         ; preds = %do.cond15
  %16 = load ptr, ptr %cx, align 8, !dbg !2049
  %type = getelementptr inbounds %struct.acpi_processor_cx, ptr %16, i32 0, i32 1, !dbg !2049
  %17 = load i8, ptr %type, align 1, !dbg !2049
  %conv = zext i8 %17 to i32, !dbg !2049
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %conv) #16, !dbg !2049
  store i32 %call18, ptr %tmp17, align 4, !dbg !2051
  %18 = load i32, ptr %tmp17, align 4, !dbg !2049
  br label %if.end19, !dbg !2053

if.end19:                                         ; preds = %do.end16, %if.end9
  %19 = load ptr, ptr %cx, align 8, !dbg !2054
  %desc = getelementptr inbounds %struct.acpi_processor_cx, ptr %19, i32 0, i32 7, !dbg !2055
  %arraydecay = getelementptr inbounds [32 x i8], ptr %desc, i64 0, i64 0, !dbg !2054
  %20 = load ptr, ptr %cx, align 8, !dbg !2056
  %address20 = getelementptr inbounds %struct.acpi_processor_cx, ptr %20, i32 0, i32 2, !dbg !2057
  %21 = load i32, ptr %address20, align 4, !dbg !2057
  %call21 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 32, ptr noundef @.str.3, i32 noundef %21) #14, !dbg !2058
  br label %out, !dbg !2058

out:                                              ; preds = %if.end19, %if.then8, %do.end
  call void @llvm.dbg.label(metadata !1986), !dbg !2059
  %22 = load i64, ptr %retval1, align 8, !dbg !2060
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_cstate_subtype) #13, !dbg !2061
  call void @llvm.lifetime.end.p0(i64 4, ptr %cstate_type) #13, !dbg !2061
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx_part) #13, !dbg !2061
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #13, !dbg !2061
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #13, !dbg !2061
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #13, !dbg !2061
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #13, !dbg !2061
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #13, !dbg !2061
  call void @llvm.lifetime.end.p0(i64 8, ptr %cx) #13, !dbg !2061
  ret i64 %22, !dbg !2062
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_processor_ffh_cstate_enter(ptr noundef %cx) #5 section ".cpuidle.text" align 16 !dbg !2063 {
entry:
  %cx.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %percpu_entry = alloca ptr, align 8
  %__vpp_verify5 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %cx, ptr %cx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cx.addr, metadata !2067, metadata !DIExpression()), !dbg !2082
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #13, !dbg !2083
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2068, metadata !DIExpression()), !dbg !2084
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !2085
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #13, !dbg !2086
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2069, metadata !DIExpression()), !dbg !2086
  br label %do.body, !dbg !2086

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2087
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2072, metadata !DIExpression()), !dbg !2087
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2087
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2087
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2086
  br label %do.cond, !dbg !2087

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2087

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !2088
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2074, metadata !DIExpression()), !dbg !2088
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !2088, !srcloc !2089
  store i32 %1, ptr %pfo_val__, align 4, !dbg !2088
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !2088
  %conv = zext i32 %2 to i64, !dbg !2088
  %conv2 = trunc i64 %conv to i32, !dbg !2088
  store i32 %conv2, ptr %tmp1, align 4, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !2086
  %3 = load i32, ptr %tmp1, align 4, !dbg !2088
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !2086
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !2086
  store i32 %4, ptr %tmp3, align 4, !dbg !2086
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #13, !dbg !2085
  %5 = load i32, ptr %tmp3, align 4, !dbg !2086
  store i32 %5, ptr %tmp, align 4, !dbg !2085
  %6 = load i32, ptr %tmp, align 4, !dbg !2085
  store i32 %6, ptr %cpu, align 4, !dbg !2084
  call void @llvm.lifetime.start.p0(i64 8, ptr %percpu_entry) #13, !dbg !2090
  call void @llvm.dbg.declare(metadata ptr %percpu_entry, metadata !2076, metadata !DIExpression()), !dbg !2091
  br label %do.body4, !dbg !2092

do.body4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify5) #13, !dbg !2093
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify5, metadata !2077, metadata !DIExpression()), !dbg !2093
  store ptr null, ptr %__vpp_verify5, align 8, !dbg !2093
  %7 = load ptr, ptr %__vpp_verify5, align 8, !dbg !2093
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify5) #13, !dbg !2092
  br label %do.cond6, !dbg !2093

do.cond6:                                         ; preds = %do.body4
  br label %do.end7, !dbg !2093

do.end7:                                          ; preds = %do.cond6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !2094
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2080, metadata !DIExpression()), !dbg !2094
  %8 = load ptr, ptr @cpu_cstate_entry, align 8, !dbg !2094
  %9 = ptrtoint ptr %8 to i64, !dbg !2094
  store i64 %9, ptr %__ptr, align 8, !dbg !2094
  %10 = load i64, ptr %__ptr, align 8, !dbg !2094
  %11 = load i32, ptr %cpu, align 4, !dbg !2094
  %idxprom = zext i32 %11 to i64, !dbg !2094
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2094
  %12 = load i64, ptr %arrayidx, align 8, !dbg !2094
  %add = add i64 %10, %12, !dbg !2094
  %13 = inttoptr i64 %add to ptr, !dbg !2094
  store ptr %13, ptr %tmp9, align 8, !dbg !2094
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !2092
  %14 = load ptr, ptr %tmp9, align 8, !dbg !2094
  store ptr %14, ptr %tmp8, align 8, !dbg !2093
  %15 = load ptr, ptr %tmp8, align 8, !dbg !2092
  store ptr %15, ptr %percpu_entry, align 8, !dbg !2095
  %16 = load ptr, ptr %percpu_entry, align 8, !dbg !2096
  %states = getelementptr inbounds %struct.cstate_entry, ptr %16, i32 0, i32 0, !dbg !2097
  %17 = load ptr, ptr %cx.addr, align 8, !dbg !2098
  %index = getelementptr inbounds %struct.acpi_processor_cx, ptr %17, i32 0, i32 4, !dbg !2099
  %18 = load i8, ptr %index, align 1, !dbg !2099
  %idxprom10 = zext i8 %18 to i64, !dbg !2096
  %arrayidx11 = getelementptr [8 x %struct.anon.1], ptr %states, i64 0, i64 %idxprom10, !dbg !2096
  %eax = getelementptr inbounds %struct.anon.1, ptr %arrayidx11, i32 0, i32 0, !dbg !2100
  %19 = load i32, ptr %eax, align 4, !dbg !2100
  %conv12 = zext i32 %19 to i64, !dbg !2096
  %20 = load ptr, ptr %percpu_entry, align 8, !dbg !2101
  %states13 = getelementptr inbounds %struct.cstate_entry, ptr %20, i32 0, i32 0, !dbg !2102
  %21 = load ptr, ptr %cx.addr, align 8, !dbg !2103
  %index14 = getelementptr inbounds %struct.acpi_processor_cx, ptr %21, i32 0, i32 4, !dbg !2104
  %22 = load i8, ptr %index14, align 1, !dbg !2104
  %idxprom15 = zext i8 %22 to i64, !dbg !2101
  %arrayidx16 = getelementptr [8 x %struct.anon.1], ptr %states13, i64 0, i64 %idxprom15, !dbg !2101
  %ecx = getelementptr inbounds %struct.anon.1, ptr %arrayidx16, i32 0, i32 1, !dbg !2105
  %23 = load i32, ptr %ecx, align 4, !dbg !2105
  %conv17 = zext i32 %23 to i64, !dbg !2101
  call void @mwait_idle_with_hints(i64 noundef %conv12, i64 noundef %conv17) #14, !dbg !2106
  call void @llvm.lifetime.end.p0(i64 8, ptr %percpu_entry) #13, !dbg !2107
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #13, !dbg !2107
  ret void, !dbg !2107
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #3 align 16 !dbg !2108 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !2113, metadata !DIExpression()), !dbg !2114
  ret void, !dbg !2115
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mwait_idle_with_hints(i64 noundef %eax, i64 noundef %ecx) #3 align 16 !dbg !2116 {
entry:
  %eax.addr = alloca i64, align 8
  %ecx.addr = alloca i64, align 8
  store i64 %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !2121, metadata !DIExpression()), !dbg !2123
  store i64 %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !2122, metadata !DIExpression()), !dbg !2124
  br i1 false, label %cond.true, label %cond.false2, !dbg !2125

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !2127

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %if.then, label %lor.lhs.false, !dbg !2127

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 716, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #14, !dbg !2127
  br i1 %call, label %if.then, label %lor.lhs.false, !dbg !2127

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 716) #14, !dbg !2127
  br i1 %call3, label %if.then, label %lor.lhs.false, !dbg !2125

lor.lhs.false:                                    ; preds = %cond.false2, %cond.false, %cond.true1
  %call4 = call zeroext i1 @current_set_polling_and_test() #14, !dbg !2128
  br i1 %call4, label %if.end26, label %if.then, !dbg !2129

if.then:                                          ; preds = %lor.lhs.false, %cond.false2, %cond.false, %cond.true1
  br i1 false, label %cond.true5, label %cond.false9, !dbg !2130

cond.true5:                                       ; preds = %if.then
  br i1 false, label %cond.true6, label %cond.false7, !dbg !2132

cond.true6:                                       ; preds = %cond.true5
  br i1 true, label %if.then11, label %if.end, !dbg !2132

cond.false7:                                      ; preds = %cond.true5
  %call8 = call zeroext i1 @arch_test_bit(i64 noundef 711, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #14, !dbg !2132
  br i1 %call8, label %if.then11, label %if.end, !dbg !2132

cond.false9:                                      ; preds = %if.then
  %call10 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 711) #14, !dbg !2132
  br i1 %call10, label %if.then11, label %if.end, !dbg !2130

if.then11:                                        ; preds = %cond.false9, %cond.false7, %cond.true6
  br label %do.body, !dbg !2134

do.body:                                          ; preds = %if.then11
  br label %do.body12, !dbg !2136

do.body12:                                        ; preds = %do.body
  br label %do.end, !dbg !2138

do.end:                                           ; preds = %do.body12
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !2136, !srcloc !2140
  br label %do.end13, !dbg !2136

do.end13:                                         ; preds = %do.end
  %call14 = call ptr @get_current() #14, !dbg !2141
  %flags = getelementptr inbounds %struct.thread_info, ptr %call14, i32 0, i32 0, !dbg !2142
  call void @clflush(ptr noundef %flags) #14, !dbg !2143
  br label %do.body15, !dbg !2144

do.body15:                                        ; preds = %do.end13
  br label %do.body16, !dbg !2145

do.body16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !2147

do.end17:                                         ; preds = %do.body16
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !2145, !srcloc !2149
  br label %do.end18, !dbg !2145

do.end18:                                         ; preds = %do.end17
  br label %if.end, !dbg !2150

if.end:                                           ; preds = %do.end18, %cond.false9, %cond.false7, %cond.true6
  %call19 = call ptr @get_current() #14, !dbg !2151
  %flags20 = getelementptr inbounds %struct.thread_info, ptr %call19, i32 0, i32 0, !dbg !2152
  call void @__monitor(ptr noundef %flags20, i64 noundef 0, i64 noundef 0) #14, !dbg !2153
  %call21 = call zeroext i1 @need_resched() #14, !dbg !2154
  br i1 %call21, label %if.end25, label %if.then22, !dbg !2156

if.then22:                                        ; preds = %if.end
  %0 = load i64, ptr %ecx.addr, align 8, !dbg !2157
  %and = and i64 %0, 1, !dbg !2160
  %tobool = icmp ne i64 %and, 0, !dbg !2160
  br i1 %tobool, label %if.then23, label %if.else, !dbg !2161

if.then23:                                        ; preds = %if.then22
  %1 = load i64, ptr %eax.addr, align 8, !dbg !2162
  %2 = load i64, ptr %ecx.addr, align 8, !dbg !2164
  call void @__mwait(i64 noundef %1, i64 noundef %2) #14, !dbg !2165
  br label %if.end24, !dbg !2166

if.else:                                          ; preds = %if.then22
  %3 = load i64, ptr %eax.addr, align 8, !dbg !2167
  %4 = load i64, ptr %ecx.addr, align 8, !dbg !2169
  call void @__sti_mwait(i64 noundef %3, i64 noundef %4) #14, !dbg !2170
  call void @arch_local_irq_disable() #14, !dbg !2171
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then23
  br label %if.end25, !dbg !2172

if.end25:                                         ; preds = %if.end24, %if.end
  br label %if.end26, !dbg !2173

if.end26:                                         ; preds = %if.end25, %lor.lhs.false
  call void @current_clr_polling() #14, !dbg !2174
  ret void, !dbg !2175
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @ffh_cstate_exit() #6 section ".exit.text" align 16 !dbg !2176 {
entry:
  %0 = load ptr, ptr @cpu_cstate_entry, align 8, !dbg !2177
  call void @free_percpu(ptr noundef %0) #14, !dbg !2178
  store ptr null, ptr @cpu_cstate_entry, align 8, !dbg !2179
  ret void, !dbg !2180
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2181 dso_local void @free_percpu(ptr noundef) #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_cstate__227_237_ffh_cstate_init3() #6 section ".init.text" align 16 !dbg !2185 {
entry:
  %call = call i32 @ffh_cstate_init() #16, !dbg !2188
  ret i32 %call, !dbg !2188
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @ffh_cstate_init() #6 section ".init.text" align 16 !dbg !2189 {
entry:
  %retval = alloca i32, align 4
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #13, !dbg !2192
  call void @llvm.dbg.declare(metadata ptr %c, metadata !2191, metadata !DIExpression()), !dbg !2193
  store ptr @boot_cpu_data, ptr %c, align 8, !dbg !2193
  %0 = load ptr, ptr %c, align 8, !dbg !2194
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 0, !dbg !2196
  %x86_vendor = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2, !dbg !2196
  %2 = load i8, ptr %x86_vendor, align 2, !dbg !2196
  %conv = zext i8 %2 to i32, !dbg !2194
  %cmp = icmp ne i32 %conv, 0, !dbg !2197
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2198

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %c, align 8, !dbg !2199
  %4 = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 0, !dbg !2200
  %x86_vendor2 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 2, !dbg !2200
  %5 = load i8, ptr %x86_vendor2, align 2, !dbg !2200
  %conv3 = zext i8 %5 to i32, !dbg !2199
  %cmp4 = icmp ne i32 %conv3, 2, !dbg !2201
  br i1 %cmp4, label %land.lhs.true6, label %if.end, !dbg !2202

land.lhs.true6:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %c, align 8, !dbg !2203
  %7 = getelementptr inbounds %struct.cpuinfo_x86, ptr %6, i32 0, i32 0, !dbg !2204
  %x86_vendor7 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 2, !dbg !2204
  %8 = load i8, ptr %x86_vendor7, align 2, !dbg !2204
  %conv8 = zext i8 %8 to i32, !dbg !2203
  %cmp9 = icmp ne i32 %conv8, 9, !dbg !2205
  br i1 %cmp9, label %if.then, label %if.end, !dbg !2206

if.then:                                          ; preds = %land.lhs.true6
  store i32 -1, ptr %retval, align 4, !dbg !2207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2207

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true, %entry
  %call = call noalias ptr @__alloc_percpu(i64 noundef 64, i64 noundef 4) #17, !dbg !2208
  store ptr %call, ptr @cpu_cstate_entry, align 8, !dbg !2209
  store i32 0, ptr %retval, align 4, !dbg !2210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2210

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #13, !dbg !2211
  %9 = load i32, ptr %retval, align 4, !dbg !2211
  ret i32 %9, !dbg !2211
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !2212 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2219, metadata !DIExpression()), !dbg !2220
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2221
  %call = call i32 @arch_atomic_read(ptr noundef %0) #14, !dbg !2222
  ret i32 %call, !dbg !2223
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !2224 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2227, metadata !DIExpression()), !dbg !2228
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2229
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !2229
  %1 = load volatile i32, ptr %counter, align 4, !dbg !2229
  ret i32 %1, !dbg !2230
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_percpu_thread() #3 align 16 !dbg !2231 {
entry:
  %call = call ptr @get_current() #14, !dbg !2234
  %flags = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 4, !dbg !2235
  %0 = load i32, ptr %flags, align 4, !dbg !2235
  %and = and i32 %0, 67108864, !dbg !2236
  %tobool = icmp ne i32 %and, 0, !dbg !2236
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2237

land.rhs:                                         ; preds = %entry
  %call1 = call ptr @get_current() #14, !dbg !2238
  %nr_cpus_allowed = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 27, !dbg !2239
  %1 = load i32, ptr %nr_cpus_allowed, align 8, !dbg !2239
  %cmp = icmp eq i32 %1, 1, !dbg !2240
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !2241
  ret i1 %2, !dbg !2242
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2243 dso_local i64 @work_on_cpu_key(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !2247 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #13, !dbg !2258
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2252, metadata !DIExpression()), !dbg !2258
  br label %do.body, !dbg !2258

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2259
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2254, metadata !DIExpression()), !dbg !2259
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2259
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2259
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !2258
  br label %do.cond, !dbg !2259

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2259

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #13, !dbg !2260
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2256, metadata !DIExpression()), !dbg !2260
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #18, !dbg !2260, !srcloc !2261
  store i64 %1, ptr %pfo_val__, align 8, !dbg !2260
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !2260
  %3 = inttoptr i64 %2 to ptr, !dbg !2260
  store ptr %3, ptr %tmp, align 8, !dbg !2260
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #13, !dbg !2258
  %4 = load ptr, ptr %tmp, align 8, !dbg !2260
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !2258
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !2258
  store ptr %5, ptr %tmp1, align 8, !dbg !2258
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #13, !dbg !2262
  %6 = load ptr, ptr %tmp1, align 8, !dbg !2258
  ret ptr %6, !dbg !2263
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid(i32 noundef %op, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 align 16 !dbg !2264 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !2270, metadata !DIExpression()), !dbg !2275
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !2271, metadata !DIExpression()), !dbg !2276
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !2272, metadata !DIExpression()), !dbg !2277
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !2273, metadata !DIExpression()), !dbg !2278
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !2274, metadata !DIExpression()), !dbg !2279
  %0 = load i32, ptr %op.addr, align 4, !dbg !2280
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !2281
  store i32 %0, ptr %1, align 4, !dbg !2282
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !2283
  store i32 0, ptr %2, align 4, !dbg !2284
  %3 = load ptr, ptr %eax.addr, align 8, !dbg !2285
  %4 = load ptr, ptr %ebx.addr, align 8, !dbg !2286
  %5 = load ptr, ptr %ecx.addr, align 8, !dbg !2287
  %6 = load ptr, ptr %edx.addr, align 8, !dbg !2288
  call void @native_cpuid(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #14, !dbg !2289
  ret void, !dbg !2290
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2291 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2295 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 align 16 !dbg !2299 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !2303, metadata !DIExpression()), !dbg !2307
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !2304, metadata !DIExpression()), !dbg !2308
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !2305, metadata !DIExpression()), !dbg !2309
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !2306, metadata !DIExpression()), !dbg !2310
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !2311
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !2312
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !2313
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !2314
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !2315
  %5 = load i32, ptr %4, align 4, !dbg !2316
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !2317
  %7 = load i32, ptr %6, align 4, !dbg !2318
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #13, !dbg !2319, !srcloc !2320
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !2319
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !2319
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !2319
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !2319
  store i32 %asmresult, ptr %0, align 4, !dbg !2319
  store i32 %asmresult1, ptr %1, align 4, !dbg !2319
  store i32 %asmresult2, ptr %2, align 4, !dbg !2319
  store i32 %asmresult3, ptr %3, align 4, !dbg !2319
  ret void, !dbg !2321
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !2322 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2330, metadata !DIExpression()), !dbg !2332
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2331, metadata !DIExpression()), !dbg !2333
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2334
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2335
  br i1 %1, label %cond.true, label %cond.false, !dbg !2335

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2336
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2337
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !2338
  %conv = zext i1 %call to i32, !dbg !2338
  br label %cond.end, !dbg !2335

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2339
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2340
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !2341
  %conv2 = zext i1 %call1 to i32, !dbg !2341
  br label %cond.end, !dbg !2335

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2335
  %tobool = icmp ne i32 %cond, 0, !dbg !2335
  ret i1 %tobool, !dbg !2342
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #3 align 16 !dbg !2343 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !2348, metadata !DIExpression()), !dbg !2351
  %0 = load i16, ptr %bit.addr, align 2, !dbg !2352
  %1 = load i16, ptr %bit.addr, align 2, !dbg !2353
  %conv = zext i16 %1 to i32, !dbg !2353
  %and = and i32 %conv, 7, !dbg !2354
  %shl = shl i32 1, %and, !dbg !2355
  %2 = load i16, ptr %bit.addr, align 2, !dbg !2356
  %conv1 = zext i16 %2 to i32, !dbg !2356
  %shr = ashr i32 %conv1, 3, !dbg !2357
  %idxprom = sext i32 %shr to i64, !dbg !2358
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !2358
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #13
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !2359, !srcloc !2360

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !2359

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !2349), !dbg !2361
  store i1 true, ptr %retval, align 1, !dbg !2362
  br label %return, !dbg !2362

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !2350), !dbg !2363
  store i1 false, ptr %retval, align 1, !dbg !2364
  br label %return, !dbg !2364

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !2365
  ret i1 %3, !dbg !2365
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @current_set_polling_and_test() #3 align 16 !dbg !2366 {
entry:
  call void @__current_set_polling() #14, !dbg !2368
  br label %do.body, !dbg !2369

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2370

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2372

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2370

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2374

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2370

do.end4:                                          ; preds = %do.end3
  %call = call zeroext i1 @tif_need_resched() #14, !dbg !2376
  %lnot = xor i1 %call, true, !dbg !2376
  %lnot5 = xor i1 %lnot, true, !dbg !2376
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !2376
  %conv = sext i32 %lnot.ext to i64, !dbg !2376
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2376
  %tobool = icmp ne i64 %expval, 0, !dbg !2376
  ret i1 %tobool, !dbg !2377
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clflush(ptr noundef %__p) #3 align 16 !dbg !2378 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__p.addr, metadata !2385, metadata !DIExpression()), !dbg !2386
  %0 = load ptr, ptr %__p.addr, align 8, !dbg !2387
  call void asm sideeffect "clflush $0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %0, ptr elementtype(i8) %0) #13, !dbg !2388, !srcloc !2389
  ret void, !dbg !2390
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__monitor(ptr noundef %eax, i64 noundef %ecx, i64 noundef %edx) #3 align 16 !dbg !2391 {
entry:
  %eax.addr = alloca ptr, align 8
  %ecx.addr = alloca i64, align 8
  %edx.addr = alloca i64, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !2395, metadata !DIExpression()), !dbg !2398
  store i64 %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !2396, metadata !DIExpression()), !dbg !2399
  store i64 %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !2397, metadata !DIExpression()), !dbg !2400
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !2401
  %1 = load i64, ptr %ecx.addr, align 8, !dbg !2402
  %2 = load i64, ptr %edx.addr, align 8, !dbg !2403
  call void asm sideeffect ".byte 0x0f, 0x01, 0xc8;", "{ax},{cx},{dx},~{dirflag},~{fpsr},~{flags}"(ptr %0, i64 %1, i64 %2) #13, !dbg !2404, !srcloc !2405
  ret void, !dbg !2406
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @need_resched() #3 align 16 !dbg !2407 {
entry:
  %call = call zeroext i1 @tif_need_resched() #14, !dbg !2408
  %lnot = xor i1 %call, true, !dbg !2408
  %lnot1 = xor i1 %lnot, true, !dbg !2408
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2408
  %conv = sext i32 %lnot.ext to i64, !dbg !2408
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2408
  %tobool = icmp ne i64 %expval, 0, !dbg !2408
  ret i1 %tobool, !dbg !2409
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__mwait(i64 noundef %eax, i64 noundef %ecx) #3 align 16 !dbg !2410 {
entry:
  %eax.addr = alloca i64, align 8
  %ecx.addr = alloca i64, align 8
  store i64 %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !2412, metadata !DIExpression()), !dbg !2414
  store i64 %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !2413, metadata !DIExpression()), !dbg !2415
  call void @mds_idle_clear_cpu_buffers() #14, !dbg !2416
  %0 = load i64, ptr %eax.addr, align 8, !dbg !2417
  %1 = load i64, ptr %ecx.addr, align 8, !dbg !2418
  call void asm sideeffect ".byte 0x0f, 0x01, 0xc9;", "{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #13, !dbg !2419, !srcloc !2420
  ret void, !dbg !2421
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__sti_mwait(i64 noundef %eax, i64 noundef %ecx) #3 align 16 !dbg !2422 {
entry:
  %eax.addr = alloca i64, align 8
  %ecx.addr = alloca i64, align 8
  store i64 %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !2424, metadata !DIExpression()), !dbg !2426
  store i64 %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !2425, metadata !DIExpression()), !dbg !2427
  call void @mds_idle_clear_cpu_buffers() #14, !dbg !2428
  %0 = load i64, ptr %eax.addr, align 8, !dbg !2429
  %1 = load i64, ptr %ecx.addr, align 8, !dbg !2430
  call void asm sideeffect "sti; .byte 0x0f, 0x01, 0xc9;", "{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #13, !dbg !2431, !srcloc !2432
  ret void, !dbg !2433
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #3 align 16 !dbg !2434 {
entry:
  call void @native_irq_disable() #14, !dbg !2436
  ret void, !dbg !2437
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @current_clr_polling() #3 align 16 !dbg !2438 {
entry:
  call void @__current_clr_polling() #14, !dbg !2439
  br label %do.body, !dbg !2440

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2441

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2443

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !2441, !srcloc !2445
  br label %do.end2, !dbg !2441

do.end2:                                          ; preds = %do.end
  br label %do.body3, !dbg !2446

do.body3:                                         ; preds = %do.end2
  %call = call zeroext i1 @tif_need_resched() #14, !dbg !2447
  br i1 %call, label %if.then, label %if.end, !dbg !2450

if.then:                                          ; preds = %do.body3
  call void @set_preempt_need_resched() #14, !dbg !2447
  br label %if.end, !dbg !2447

if.end:                                           ; preds = %if.then, %do.body3
  br label %do.end4, !dbg !2450

do.end4:                                          ; preds = %if.end
  ret void, !dbg !2451
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !2452 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2456, metadata !DIExpression()), !dbg !2458
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2457, metadata !DIExpression()), !dbg !2459
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2460
  %and = and i64 %0, 63, !dbg !2461
  %shl = shl i64 1, %and, !dbg !2462
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !2463
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2464
  %shr = ashr i64 %2, 6, !dbg !2465
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !2463
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !2463
  %and1 = and i64 %shl, %3, !dbg !2466
  %cmp = icmp ne i64 %and1, 0, !dbg !2467
  ret i1 %cmp, !dbg !2468
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !2469 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2471, metadata !DIExpression()), !dbg !2474
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2472, metadata !DIExpression()), !dbg !2475
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !2476
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !2473, metadata !DIExpression()), !dbg !2477
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2478
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2479
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !2480, !srcloc !2481
  %3 = icmp ult i8 %2, 2, !dbg !2480
  call void @llvm.assume(i1 %3), !dbg !2480
  store i8 %2, ptr %oldbit, align 1, !dbg !2480
  %4 = load i8, ptr %oldbit, align 1, !dbg !2482, !range !1954, !noundef !506
  %tobool = trunc i8 %4 to i1, !dbg !2482
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !2483
  ret i1 %tobool, !dbg !2484
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__current_set_polling() #3 align 16 !dbg !2485 {
entry:
  %call = call ptr @get_current() #14, !dbg !2486
  %flags = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 0, !dbg !2487
  call void @arch_set_bit(i64 noundef 21, ptr noundef %flags) #14, !dbg !2488
  ret void, !dbg !2489
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tif_need_resched() #3 align 16 !dbg !2490 {
entry:
  %call = call ptr @get_current() #14, !dbg !2492
  %flags = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 0, !dbg !2493
  %call1 = call zeroext i1 @arch_test_bit(i64 noundef 3, ptr noundef %flags) #14, !dbg !2494
  ret i1 %call1, !dbg !2495
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !2496 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2501, metadata !DIExpression()), !dbg !2503
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2502, metadata !DIExpression()), !dbg !2504
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2505
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2507
  br i1 %1, label %if.then, label %if.else, !dbg !2508

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !2509
  %3 = load i64, ptr %nr.addr, align 8, !dbg !2509
  %shr = ashr i64 %3, 3, !dbg !2509
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !2509
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2511
  %and = and i64 %4, 7, !dbg !2511
  %sh_prom = trunc i64 %and to i32, !dbg !2511
  %shl = shl i32 1, %sh_prom, !dbg !2511
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #13, !dbg !2512, !srcloc !2513
  br label %if.end, !dbg !2514

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2515
  %6 = load i64, ptr %nr.addr, align 8, !dbg !2517
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #13, !dbg !2518, !srcloc !2519
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2520
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mds_idle_clear_cpu_buffers() #3 align 16 !dbg !2521 {
entry:
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #13, !dbg !2526
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !2523, metadata !DIExpression()), !dbg !2526
  %call = call zeroext i1 @arch_static_branch_jump(ptr noundef @mds_idle_clear, i1 noundef zeroext true) #14, !dbg !2527
  %lnot = xor i1 %call, true, !dbg !2527
  %frombool = zext i1 %lnot to i8, !dbg !2527
  store i8 %frombool, ptr %branch, align 1, !dbg !2527
  %0 = load i8, ptr %branch, align 1, !dbg !2526, !range !1954, !noundef !506
  %tobool = trunc i8 %0 to i1, !dbg !2526
  %lnot1 = xor i1 %tobool, true, !dbg !2526
  %lnot2 = xor i1 %lnot1, true, !dbg !2526
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2526
  %conv = sext i32 %lnot.ext to i64, !dbg !2526
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2526
  store i64 %expval, ptr %tmp, align 8, !dbg !2530
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #13, !dbg !2531
  %1 = load i64, ptr %tmp, align 8, !dbg !2526
  %tobool3 = icmp ne i64 %1, 0, !dbg !2531
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2532

if.then:                                          ; preds = %entry
  call void @mds_clear_cpu_buffers() #14, !dbg !2533
  br label %if.end, !dbg !2533

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2534
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch_jump(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !2535 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2561, metadata !DIExpression()), !dbg !2564
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !2562, metadata !DIExpression()), !dbg !2565
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2566
  %1 = load i8, ptr %branch.addr, align 1, !dbg !2567, !range !1954, !noundef !506
  %tobool = trunc i8 %1 to i1, !dbg !2567
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i1 %tobool) #13
          to label %asm.fallthrough [label %l_yes], !dbg !2568, !srcloc !2569

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2570
  br label %return, !dbg !2570

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !2563), !dbg !2571
  store i1 true, ptr %retval, align 1, !dbg !2572
  br label %return, !dbg !2572

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !2573
  ret i1 %2, !dbg !2573
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mds_clear_cpu_buffers() #3 align 16 !dbg !1683 {
entry:
  call void asm sideeffect "verw $0", "*m,~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) @mds_clear_cpu_buffers.ds) #13, !dbg !2574, !srcloc !2575
  ret void, !dbg !2576
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #3 align 16 !dbg !2577 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !2578, !srcloc !2579
  ret void, !dbg !2580
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__current_clr_polling() #3 align 16 !dbg !2581 {
entry:
  %call = call ptr @get_current() #14, !dbg !2582
  %flags = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 0, !dbg !2583
  call void @arch_clear_bit(i64 noundef 21, ptr noundef %flags) #14, !dbg !2584
  ret void, !dbg !2585
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_preempt_need_resched() #3 align 16 !dbg !2586 {
entry:
  %pto_val__ = alloca i32, align 4
  br label %do.body, !dbg !2591

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #13, !dbg !2592
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !2589, metadata !DIExpression()), !dbg !2592
  store i32 2147483647, ptr %pto_val__, align 4, !dbg !2592
  %0 = load i32, ptr %pto_val__, align 4, !dbg !2592
  call void asm "andl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), i32 %0, ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !2592, !srcloc !2593
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #13, !dbg !2591
  br label %do.end, !dbg !2592

do.end:                                           ; preds = %do.body
  ret void, !dbg !2594
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !2595 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2597, metadata !DIExpression()), !dbg !2599
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2598, metadata !DIExpression()), !dbg !2600
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2601
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2603
  br i1 %1, label %if.then, label %if.else, !dbg !2604

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !2605
  %3 = load i64, ptr %nr.addr, align 8, !dbg !2605
  %shr = ashr i64 %3, 3, !dbg !2605
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !2605
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2607
  %and = and i64 %4, 7, !dbg !2607
  %sh_prom = trunc i64 %and to i32, !dbg !2607
  %shl = shl i32 1, %sh_prom, !dbg !2607
  %not = xor i32 %shl, -1, !dbg !2608
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #13, !dbg !2609, !srcloc !2610
  br label %if.end, !dbg !2611

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2612
  %6 = load i64, ptr %nr.addr, align 8, !dbg !2614
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #13, !dbg !2615, !srcloc !2616
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2617
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2618 dso_local noalias ptr @__alloc_percpu(i64 noundef, i64 noundef) #12

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { nounwind memory(read) }
attributes #16 = { cold noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693}
!llvm.ident = !{!1694}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_processor_power_init_bm_check224", scope: !2, file: !3, line: 106, type: !115, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/acpi/.cstate.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/acpi/cstate\22 -D KBUILD_BASENAME=\22cstate\22 -D KBUILD_MODNAME=\22cstate\22 -D __KBUILD_MODNAME=kmod_cstate -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/acpi/cstate.ll arch/x86/kernel/acpi/cstate.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !1622, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/acpi/cstate.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e15807ca5cb64117cb859d1e41b5c282")
!4 = !{!5, !11, !16, !22}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!15 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !17, line: 16, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "TT_NONE", value: 0)
!20 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!21 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !23, line: 51, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!26 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!27 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!28 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!29 = !{!30, !115, !70, !116, !127, !51, !128, !131, !132, !1614, !1615, !1616, !1618, !1620, !111}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !32, line: 83, size: 2368, elements: !33)
!32 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!33 = !{!34, !49, !50, !52, !56, !57, !58, !59, !60, !61, !62, !71, !76, !80, !81, !82, !83, !84, !85, !86, !87, !92, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !110, !112, !114}
!34 = !DIDerivedType(tag: DW_TAG_member, scope: !31, file: !32, line: 84, baseType: !35, size: 32)
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !31, file: !32, line: 84, size: 32, elements: !36)
!36 = !{!37, !47}
!37 = !DIDerivedType(tag: DW_TAG_member, scope: !35, file: !32, line: 90, baseType: !38, size: 32)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !32, line: 90, size: 32, elements: !39)
!39 = !{!40, !44, !45, !46}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !38, file: !32, line: 91, baseType: !41, size: 8)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !42, line: 21, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!43 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !38, file: !32, line: 93, baseType: !41, size: 8, offset: 8)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !38, file: !32, line: 95, baseType: !41, size: 8, offset: 16)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !38, file: !32, line: 96, baseType: !41, size: 8, offset: 24)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !35, file: !32, line: 99, baseType: !48, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !42, line: 27, baseType: !7)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !31, file: !32, line: 101, baseType: !41, size: 8, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !31, file: !32, line: 104, baseType: !51, size: 32, offset: 64)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !31, file: !32, line: 107, baseType: !53, size: 160, offset: 96)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 160, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 5)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !31, file: !32, line: 109, baseType: !41, size: 8, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !31, file: !32, line: 110, baseType: !41, size: 8, offset: 264)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !31, file: !32, line: 112, baseType: !41, size: 8, offset: 272)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !31, file: !32, line: 113, baseType: !41, size: 8, offset: 280)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !31, file: !32, line: 115, baseType: !48, size: 32, offset: 288)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !31, file: !32, line: 117, baseType: !51, size: 32, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, scope: !31, file: !32, line: 123, baseType: !63, size: 768, offset: 384)
!63 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !31, file: !32, line: 123, size: 768, elements: !64)
!64 = !{!65, !69}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !63, file: !32, line: 124, baseType: !66, size: 768)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 768, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 24)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !63, file: !32, line: 125, baseType: !70, size: 64)
!70 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !31, file: !32, line: 127, baseType: !72, size: 128, offset: 1152)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 128, elements: !74)
!73 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !{!75}
!75 = !DISubrange(count: 16)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !31, file: !32, line: 128, baseType: !77, size: 512, offset: 1280)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 512, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !31, file: !32, line: 130, baseType: !7, size: 32, offset: 1792)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !31, file: !32, line: 131, baseType: !51, size: 32, offset: 1824)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !31, file: !32, line: 133, baseType: !51, size: 32, offset: 1856)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !31, file: !32, line: 134, baseType: !51, size: 32, offset: 1888)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !31, file: !32, line: 135, baseType: !51, size: 32, offset: 1920)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !31, file: !32, line: 136, baseType: !51, size: 32, offset: 1952)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !31, file: !32, line: 137, baseType: !70, size: 64, offset: 1984)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !31, file: !32, line: 139, baseType: !88, size: 64, offset: 2048)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !89, line: 23, baseType: !90)
!89 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !42, line: 31, baseType: !91)
!91 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !31, file: !32, line: 141, baseType: !93, size: 16, offset: 2112)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !89, line: 19, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !42, line: 24, baseType: !95)
!95 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !31, file: !32, line: 142, baseType: !93, size: 16, offset: 2128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !31, file: !32, line: 143, baseType: !93, size: 16, offset: 2144)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !31, file: !32, line: 144, baseType: !93, size: 16, offset: 2160)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !31, file: !32, line: 146, baseType: !93, size: 16, offset: 2176)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !31, file: !32, line: 148, baseType: !93, size: 16, offset: 2192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !31, file: !32, line: 150, baseType: !93, size: 16, offset: 2208)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !31, file: !32, line: 152, baseType: !93, size: 16, offset: 2224)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !31, file: !32, line: 153, baseType: !93, size: 16, offset: 2240)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !31, file: !32, line: 154, baseType: !93, size: 16, offset: 2256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !31, file: !32, line: 156, baseType: !93, size: 16, offset: 2272)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !31, file: !32, line: 158, baseType: !107, size: 8, offset: 2288)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !108, line: 35, baseType: !109)
!108 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!109 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !31, file: !32, line: 159, baseType: !111, size: 32, offset: 2304)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !89, line: 21, baseType: !48)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !31, file: !32, line: 161, baseType: !113, size: 8, offset: 2336)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !89, line: 17, baseType: !41)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !31, file: !32, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cstate_entry", file: !3, line: 110, size: 512, elements: !118)
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !117, file: !3, line: 114, baseType: !120, size: 512)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 512, elements: !125)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !117, file: !3, line: 111, size: 64, elements: !122)
!122 = !{!123, !124}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !121, file: !3, line: 112, baseType: !7, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "ecx", scope: !121, file: !3, line: 113, baseType: !7, size: 32, offset: 32)
!125 = !{!126}
!126 = !DISubrange(count: 8)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !134, line: 746, size: 58368, elements: !135)
!134 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!135 = !{!136, !144, !145, !146, !156, !157, !158, !159, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !245, !256, !378, !382, !385, !416, !417, !418, !419, !430, !432, !433, !434, !435, !436, !437, !448, !449, !452, !453, !454, !455, !456, !457, !458, !459, !466, !467, !474, !475, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !777, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !833, !835, !836, !837, !849, !850, !851, !852, !853, !854, !855, !861, !862, !863, !864, !865, !866, !867, !881, !887, !891, !892, !893, !896, !897, !900, !907, !912, !915, !918, !921, !924, !927, !930, !936, !937, !938, !944, !945, !949, !950, !951, !954, !962, !963, !972, !981, !982, !983, !984, !985, !990, !991, !992, !995, !996, !999, !1002, !1005, !1008, !1011, !1012, !1099, !1110, !1111, !1112, !1113, !1119, !1124, !1125, !1126, !1129, !1130, !1133, !1136, !1137, !1140, !1141, !1142, !1145, !1146, !1147, !1150, !1151, !1152, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1184, !1187, !1256, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1268, !1340, !1342, !1343, !1344, !1345, !1346, !1358, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1388, !1389, !1390}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !133, file: !134, line: 752, baseType: !137, size: 192)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !138, line: 56, size: 192, elements: !139)
!138 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!139 = !{!140, !141, !142, !143}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !138, line: 57, baseType: !70, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !137, file: !138, line: 58, baseType: !70, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !137, file: !138, line: 59, baseType: !111, size: 32, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !137, file: !138, line: 61, baseType: !111, size: 32, offset: 160)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !133, file: !134, line: 754, baseType: !7, size: 32, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !133, file: !134, line: 767, baseType: !115, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !133, file: !134, line: 768, baseType: !147, size: 32, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !148, line: 113, baseType: !149)
!148 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !148, line: 111, size: 32, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !149, file: !148, line: 112, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !108, line: 174, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 172, size: 32, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !153, file: !108, line: 173, baseType: !51, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !134, line: 770, baseType: !7, size: 32, offset: 352)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !133, file: !134, line: 771, baseType: !7, size: 32, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !133, file: !134, line: 774, baseType: !51, size: 32, offset: 416)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !133, file: !134, line: 775, baseType: !160, size: 128, offset: 448)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !161, line: 58, size: 128, elements: !162)
!161 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!162 = !{!163, !169, !174, !175}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !160, file: !161, line: 59, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !165, line: 60, size: 64, elements: !166)
!165 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!166 = !{!167}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !165, line: 61, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !161, line: 60, baseType: !170, size: 32, offset: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !161, line: 60, size: 32, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !170, file: !161, line: 61, baseType: !7, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !170, file: !161, line: 62, baseType: !152, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !160, file: !161, line: 65, baseType: !93, size: 16, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !160, file: !161, line: 65, baseType: !93, size: 16, offset: 112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !133, file: !134, line: 776, baseType: !7, size: 32, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !133, file: !134, line: 777, baseType: !70, size: 64, offset: 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !133, file: !134, line: 778, baseType: !132, size: 64, offset: 704)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !133, file: !134, line: 787, baseType: !51, size: 32, offset: 768)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !133, file: !134, line: 788, baseType: !51, size: 32, offset: 800)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !133, file: !134, line: 790, baseType: !51, size: 32, offset: 832)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !133, file: !134, line: 792, baseType: !51, size: 32, offset: 864)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !133, file: !134, line: 793, baseType: !51, size: 32, offset: 896)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !133, file: !134, line: 794, baseType: !51, size: 32, offset: 928)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !133, file: !134, line: 795, baseType: !7, size: 32, offset: 960)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !133, file: !134, line: 797, baseType: !187, size: 2048, offset: 1024)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !134, line: 551, size: 2048, elements: !188)
!188 = !{!189, !194, !202, !203, !204, !210, !211, !212, !213, !214, !215, !219, !220, !221, !222, !224, !227, !228, !229}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !187, file: !134, line: 553, baseType: !190, size: 128)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !134, line: 411, size: 128, elements: !191)
!191 = !{!192, !193}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !190, file: !134, line: 412, baseType: !70, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !190, file: !134, line: 413, baseType: !111, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !187, file: !134, line: 554, baseType: !195, size: 192, align: 64, offset: 128)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !196, line: 5, size: 192, align: 64, elements: !197)
!196 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!197 = !{!198, !199, !201}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !195, file: !196, line: 6, baseType: !70, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !195, file: !196, line: 7, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !195, file: !196, line: 8, baseType: !200, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !187, file: !134, line: 555, baseType: !88, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !187, file: !134, line: 556, baseType: !88, size: 64, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !187, file: !134, line: 558, baseType: !205, size: 128, offset: 448)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !108, line: 190, size: 128, elements: !206)
!206 = !{!207, !209}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !108, line: 191, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !205, file: !108, line: 191, baseType: !208, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !187, file: !134, line: 559, baseType: !7, size: 32, offset: 576)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !187, file: !134, line: 561, baseType: !88, size: 64, offset: 640)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !187, file: !134, line: 562, baseType: !88, size: 64, offset: 704)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !187, file: !134, line: 563, baseType: !88, size: 64, offset: 768)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !187, file: !134, line: 564, baseType: !88, size: 64, offset: 832)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !187, file: !134, line: 565, baseType: !216, size: 64, offset: 896)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !89, line: 22, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !42, line: 30, baseType: !218)
!218 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !187, file: !134, line: 566, baseType: !88, size: 64, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !187, file: !134, line: 568, baseType: !88, size: 64, offset: 1024)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !187, file: !134, line: 571, baseType: !51, size: 32, offset: 1088)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !187, file: !134, line: 572, baseType: !223, size: 64, offset: 1152)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !187, file: !134, line: 574, baseType: !225, size: 64, offset: 1216)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !134, line: 49, flags: DIFlagFwdDecl)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !187, file: !134, line: 576, baseType: !225, size: 64, offset: 1280)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !187, file: !134, line: 578, baseType: !70, size: 64, offset: 1344)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !187, file: !134, line: 588, baseType: !230, size: 512, align: 512, offset: 1536)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !134, line: 497, size: 512, align: 512, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !230, file: !134, line: 498, baseType: !88, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !230, file: !134, line: 499, baseType: !88, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !230, file: !134, line: 500, baseType: !88, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !230, file: !134, line: 501, baseType: !111, size: 32, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !230, file: !134, line: 502, baseType: !111, size: 32, offset: 224)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !230, file: !134, line: 503, baseType: !70, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !230, file: !134, line: 504, baseType: !70, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !230, file: !134, line: 505, baseType: !70, size: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !230, file: !134, line: 506, baseType: !241, size: 64, align: 64, offset: 448)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !134, line: 445, size: 64, align: 64, elements: !242)
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !241, file: !134, line: 446, baseType: !7, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !241, file: !134, line: 447, baseType: !7, size: 32, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !133, file: !134, line: 798, baseType: !246, size: 384, offset: 3072)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !134, line: 592, size: 384, elements: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !246, file: !134, line: 593, baseType: !205, size: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !246, file: !134, line: 594, baseType: !70, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !246, file: !134, line: 595, baseType: !70, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !246, file: !134, line: 596, baseType: !7, size: 32, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !246, file: !134, line: 597, baseType: !95, size: 16, offset: 288)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !246, file: !134, line: 598, baseType: !95, size: 16, offset: 304)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !246, file: !134, line: 600, baseType: !255, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !133, file: !134, line: 799, baseType: !257, size: 1792, offset: 3456)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !134, line: 610, size: 1792, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !375, !376}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !257, file: !134, line: 611, baseType: !195, size: 192, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !257, file: !134, line: 618, baseType: !88, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !257, file: !134, line: 619, baseType: !88, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !257, file: !134, line: 620, baseType: !88, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !257, file: !134, line: 621, baseType: !88, size: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !257, file: !134, line: 622, baseType: !88, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !257, file: !134, line: 629, baseType: !216, size: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !257, file: !134, line: 630, baseType: !88, size: 64, offset: 576)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !134, line: 631, baseType: !7, size: 32, offset: 640)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !257, file: !134, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !257, file: !134, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !257, file: !134, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !257, file: !134, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !257, file: !134, line: 662, baseType: !273, size: 512, offset: 704)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !274)
!274 = !{!275, !283, !284, !289, !371, !372, !373, !374}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !273, file: !12, line: 119, baseType: !276, size: 256)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !277, line: 9, size: 256, elements: !278)
!277 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !276, file: !277, line: 10, baseType: !195, size: 192, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !276, file: !277, line: 11, baseType: !281, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !282, line: 29, baseType: !216)
!282 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !273, file: !12, line: 120, baseType: !281, size: 64, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !273, file: !12, line: 121, baseType: !285, size: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!11, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !273, file: !12, line: 122, baseType: !290, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !292)
!292 = !{!293, !339, !340, !344, !354, !355, !366, !370}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !291, file: !12, line: 160, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 215, size: 4608, align: 512, elements: !296)
!296 = !{!297, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !295, file: !12, line: 216, baseType: !298, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !299, line: 23, baseType: !300)
!299 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !299, line: 14, size: 32, elements: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !300, file: !299, line: 15, baseType: !303, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !304, line: 44, baseType: !305)
!304 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !304, line: 14, size: 32, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !304, line: 15, baseType: !308, size: 32)
!308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !304, line: 15, size: 32, elements: !309)
!309 = !{!310, !311, !316}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !308, file: !304, line: 16, baseType: !152, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, scope: !308, file: !304, line: 24, baseType: !312, size: 16)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !308, file: !304, line: 24, size: 16, elements: !313)
!313 = !{!314, !315}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !312, file: !304, line: 25, baseType: !113, size: 8)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !312, file: !304, line: 26, baseType: !113, size: 8, offset: 8)
!316 = !DIDerivedType(tag: DW_TAG_member, scope: !308, file: !304, line: 28, baseType: !317, size: 32)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !308, file: !304, line: 28, size: 32, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !317, file: !304, line: 29, baseType: !93, size: 16)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !317, file: !304, line: 30, baseType: !93, size: 16, offset: 16)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !295, file: !12, line: 217, baseType: !7, size: 32, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !295, file: !12, line: 218, baseType: !7, size: 32, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !295, file: !12, line: 219, baseType: !7, size: 32, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !295, file: !12, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !295, file: !12, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !295, file: !12, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !295, file: !12, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !295, file: !12, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !295, file: !12, line: 226, baseType: !7, size: 32, offset: 160)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !295, file: !12, line: 227, baseType: !95, size: 16, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !295, file: !12, line: 228, baseType: !95, size: 16, offset: 208)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !295, file: !12, line: 229, baseType: !7, size: 32, offset: 224)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !295, file: !12, line: 235, baseType: !281, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !295, file: !12, line: 236, baseType: !288, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !295, file: !12, line: 237, baseType: !281, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !295, file: !12, line: 238, baseType: !288, size: 64, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !295, file: !12, line: 239, baseType: !338, size: 4096, align: 512, offset: 512)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 4096, align: 512, elements: !125)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !291, file: !12, line: 161, baseType: !7, size: 32, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !291, file: !12, line: 162, baseType: !341, size: 32, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !108, line: 32, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !343, line: 96, baseType: !51)
!343 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!344 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !291, file: !12, line: 163, baseType: !345, size: 32, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !346, line: 274, baseType: !347)
!346 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !346, line: 274, size: 32, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !347, file: !346, line: 274, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !346, line: 69, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !346, line: 64, size: 32, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !351, file: !346, line: 65, baseType: !7, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !291, file: !12, line: 164, baseType: !288, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !291, file: !12, line: 165, baseType: !356, size: 128, offset: 256)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !277, line: 14, size: 128, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !356, file: !277, line: 15, baseType: !359, size: 128)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !196, line: 26, size: 128, elements: !360)
!360 = !{!361, !365}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !359, file: !196, line: 27, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !196, line: 12, size: 64, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !362, file: !196, line: 13, baseType: !200, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !359, file: !196, line: 28, baseType: !200, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !291, file: !12, line: 166, baseType: !367, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!281}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !291, file: !12, line: 167, baseType: !281, size: 64, offset: 448)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !273, file: !12, line: 123, baseType: !113, size: 8, offset: 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !273, file: !12, line: 124, baseType: !113, size: 8, offset: 456)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !273, file: !12, line: 125, baseType: !113, size: 8, offset: 464)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !273, file: !12, line: 126, baseType: !113, size: 8, offset: 472)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !257, file: !134, line: 671, baseType: !273, size: 512, offset: 1216)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !257, file: !134, line: 679, baseType: !377, size: 64, offset: 1728)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !133, file: !134, line: 800, baseType: !379, size: 64, offset: 5248)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !134, line: 800, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !133, file: !134, line: 809, baseType: !383, size: 64, offset: 5312)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !134, line: 70, flags: DIFlagFwdDecl)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !133, file: !134, line: 825, baseType: !386, size: 2048, align: 512, offset: 5632)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !134, line: 509, size: 2048, align: 512, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !386, file: !134, line: 511, baseType: !88, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !386, file: !134, line: 512, baseType: !88, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !386, file: !134, line: 513, baseType: !88, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !386, file: !134, line: 514, baseType: !88, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !386, file: !134, line: 515, baseType: !88, size: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !386, file: !134, line: 516, baseType: !88, size: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !386, file: !134, line: 518, baseType: !88, size: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !386, file: !134, line: 519, baseType: !88, size: 64, offset: 448)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !386, file: !134, line: 520, baseType: !216, size: 64, offset: 512)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !386, file: !134, line: 522, baseType: !88, size: 64, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !386, file: !134, line: 523, baseType: !88, size: 64, offset: 640)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !386, file: !134, line: 524, baseType: !216, size: 64, offset: 704)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !386, file: !134, line: 526, baseType: !216, size: 64, offset: 768)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !386, file: !134, line: 527, baseType: !88, size: 64, offset: 832)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !386, file: !134, line: 529, baseType: !88, size: 64, offset: 896)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !386, file: !134, line: 530, baseType: !88, size: 64, offset: 960)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !386, file: !134, line: 531, baseType: !88, size: 64, offset: 1024)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !386, file: !134, line: 532, baseType: !88, size: 64, offset: 1088)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !386, file: !134, line: 533, baseType: !88, size: 64, offset: 1152)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !386, file: !134, line: 535, baseType: !88, size: 64, offset: 1216)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !386, file: !134, line: 536, baseType: !88, size: 64, offset: 1280)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !386, file: !134, line: 537, baseType: !88, size: 64, offset: 1344)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !386, file: !134, line: 538, baseType: !88, size: 64, offset: 1408)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !386, file: !134, line: 539, baseType: !88, size: 64, offset: 1472)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !386, file: !134, line: 540, baseType: !88, size: 64, offset: 1536)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !386, file: !134, line: 541, baseType: !88, size: 64, offset: 1600)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !386, file: !134, line: 542, baseType: !88, size: 64, offset: 1664)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !386, file: !134, line: 543, baseType: !88, size: 64, offset: 1728)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !133, file: !134, line: 833, baseType: !7, size: 32, offset: 7680)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !133, file: !134, line: 836, baseType: !7, size: 32, offset: 7712)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !133, file: !134, line: 837, baseType: !51, size: 32, offset: 7744)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !133, file: !134, line: 838, baseType: !420, size: 64, offset: 7808)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !423, line: 19, baseType: !424)
!423 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !423, line: 19, size: 64, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !424, file: !423, line: 19, baseType: !427, size: 64)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 64, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 1)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !133, file: !134, line: 839, baseType: !431, size: 64, offset: 7872)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !133, file: !134, line: 840, baseType: !422, size: 64, offset: 7936)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !133, file: !134, line: 841, baseType: !115, size: 64, offset: 8000)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !133, file: !134, line: 843, baseType: !95, size: 16, offset: 8064)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !133, file: !134, line: 845, baseType: !95, size: 16, offset: 8080)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !133, file: !134, line: 848, baseType: !51, size: 32, offset: 8096)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !133, file: !134, line: 849, baseType: !438, size: 32, offset: 8128)
!438 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !134, line: 718, size: 32, elements: !439)
!439 = !{!440, !447}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !438, file: !134, line: 724, baseType: !441, size: 32)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !438, file: !134, line: 719, size: 32, elements: !442)
!442 = !{!443, !444, !445, !446}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !441, file: !134, line: 720, baseType: !113, size: 8)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !441, file: !134, line: 721, baseType: !113, size: 8, offset: 8)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !441, file: !134, line: 722, baseType: !113, size: 8, offset: 16)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !441, file: !134, line: 723, baseType: !113, size: 8, offset: 24)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !438, file: !134, line: 725, baseType: !111, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !133, file: !134, line: 850, baseType: !205, size: 128, offset: 8192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !133, file: !134, line: 851, baseType: !450, size: 64, offset: 8320)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !134, line: 60, flags: DIFlagFwdDecl)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !133, file: !134, line: 855, baseType: !70, size: 64, offset: 8384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !133, file: !134, line: 856, baseType: !113, size: 8, offset: 8448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !133, file: !134, line: 857, baseType: !113, size: 8, offset: 8456)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !133, file: !134, line: 858, baseType: !51, size: 32, offset: 8480)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !133, file: !134, line: 859, baseType: !205, size: 128, offset: 8512)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !133, file: !134, line: 860, baseType: !51, size: 32, offset: 8640)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !133, file: !134, line: 861, baseType: !205, size: 128, offset: 8704)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !133, file: !134, line: 873, baseType: !460, size: 256, offset: 8832)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !134, line: 376, size: 256, elements: !461)
!461 = !{!462, !463, !464, !465}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !460, file: !134, line: 381, baseType: !70, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !460, file: !134, line: 384, baseType: !91, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !460, file: !134, line: 389, baseType: !91, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !460, file: !134, line: 392, baseType: !91, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !133, file: !134, line: 875, baseType: !205, size: 128, offset: 9088)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !133, file: !134, line: 877, baseType: !468, size: 320, offset: 9216)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !469, line: 86, size: 320, elements: !470)
!469 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!470 = !{!471, !472, !473}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !468, file: !469, line: 87, baseType: !51, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !468, file: !469, line: 88, baseType: !205, size: 128, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !468, file: !469, line: 89, baseType: !205, size: 128, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !133, file: !134, line: 878, baseType: !195, size: 192, align: 64, offset: 9536)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !133, file: !134, line: 881, baseType: !476, size: 64, offset: 9728)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !478, line: 733, size: 10240, elements: !479)
!478 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!479 = !{!480, !694}
!480 = !DIDerivedType(tag: DW_TAG_member, scope: !477, file: !478, line: 734, baseType: !481, size: 10240)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !477, file: !478, line: 734, size: 10240, elements: !482)
!482 = !{!483, !487, !509, !516, !517, !518, !519, !520, !521, !529, !530, !531, !537, !538, !545, !546, !547, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !588, !602, !605, !661, !662, !663, !666, !669, !670, !673, !674, !675, !681, !682}
!483 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !478, line: 739, baseType: !484, size: 512, align: 512)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !481, file: !478, line: 739, size: 512, align: 512, elements: !485)
!485 = !{!486}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !484, file: !478, line: 747, baseType: !152, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !481, file: !478, line: 750, baseType: !488, size: 128, offset: 512)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !489, line: 218, size: 128, elements: !490)
!489 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!490 = !{!491, !507, !508}
!491 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !489, line: 219, baseType: !492, size: 32)
!492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !488, file: !489, line: 219, size: 32, elements: !493)
!493 = !{!494, !503}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !492, file: !489, line: 220, baseType: !495, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !496, line: 29, baseType: !497)
!496 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !496, line: 17, size: 32, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, scope: !497, file: !496, line: 18, baseType: !500, size: 32)
!500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !497, file: !496, line: 18, size: 32, elements: !501)
!501 = !{!502}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !500, file: !496, line: 19, baseType: !300, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !492, file: !489, line: 221, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !489, line: 197, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 197, elements: !506)
!506 = !{}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !488, file: !489, line: 223, baseType: !7, size: 32, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !488, file: !489, line: 224, baseType: !115, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !481, file: !478, line: 752, baseType: !510, size: 64, offset: 640)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!70, !513, !70, !70, !70, !70}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !515, line: 537, flags: DIFlagFwdDecl)
!515 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !481, file: !478, line: 756, baseType: !70, size: 64, offset: 704)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !481, file: !478, line: 757, baseType: !70, size: 64, offset: 768)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !481, file: !478, line: 760, baseType: !70, size: 64, offset: 832)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !481, file: !478, line: 761, baseType: !70, size: 64, offset: 896)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !481, file: !478, line: 763, baseType: !70, size: 64, offset: 960)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !481, file: !478, line: 764, baseType: !522, size: 64, offset: 1024)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !515, line: 299, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !515, line: 299, size: 64, elements: !525)
!525 = !{!526}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !524, file: !515, line: 299, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !528, line: 18, baseType: !70)
!528 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!529 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !481, file: !478, line: 773, baseType: !152, size: 32, offset: 1088)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !481, file: !478, line: 785, baseType: !152, size: 32, offset: 1120)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !481, file: !478, line: 795, baseType: !532, size: 64, offset: 1152)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !478, line: 726, size: 128, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !533, file: !478, line: 727, baseType: !88, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !533, file: !478, line: 728, baseType: !51, size: 32, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !481, file: !478, line: 801, baseType: !70, size: 64, offset: 1216)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !481, file: !478, line: 804, baseType: !539, size: 64, offset: 1280)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !540, line: 13, baseType: !541)
!540 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !108, line: 181, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 179, size: 64, elements: !543)
!543 = !{!544}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !542, file: !108, line: 180, baseType: !216, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !481, file: !478, line: 806, baseType: !51, size: 32, offset: 1344)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !481, file: !478, line: 808, baseType: !495, size: 32, offset: 1376)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !481, file: !478, line: 823, baseType: !548, size: 320, offset: 1408)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !549, line: 48, size: 320, elements: !550)
!549 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!550 = !{!551, !552, !553, !558, !559}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !548, file: !549, line: 49, baseType: !539, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !548, file: !549, line: 55, baseType: !539, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !548, file: !549, line: 57, baseType: !554, size: 32, offset: 128)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !555, line: 15, size: 32, elements: !556)
!555 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !554, file: !555, line: 20, baseType: !152, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !548, file: !549, line: 59, baseType: !298, size: 32, offset: 160)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !548, file: !549, line: 60, baseType: !205, size: 128, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !481, file: !478, line: 825, baseType: !205, size: 128, offset: 1728)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !481, file: !478, line: 845, baseType: !51, size: 32, offset: 1856)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !481, file: !478, line: 849, baseType: !70, size: 64, offset: 1920)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !481, file: !478, line: 850, baseType: !70, size: 64, offset: 1984)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !481, file: !478, line: 852, baseType: !70, size: 64, offset: 2048)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !481, file: !478, line: 853, baseType: !70, size: 64, offset: 2112)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !481, file: !478, line: 854, baseType: !541, size: 64, offset: 2176)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !481, file: !478, line: 855, baseType: !70, size: 64, offset: 2240)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !481, file: !478, line: 856, baseType: !70, size: 64, offset: 2304)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !481, file: !478, line: 857, baseType: !70, size: 64, offset: 2368)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !481, file: !478, line: 858, baseType: !70, size: 64, offset: 2432)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !481, file: !478, line: 865, baseType: !350, size: 32, offset: 2496)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !481, file: !478, line: 867, baseType: !495, size: 32, offset: 2528)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !481, file: !478, line: 869, baseType: !70, size: 64, offset: 2560)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !481, file: !478, line: 869, baseType: !70, size: 64, offset: 2624)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !481, file: !478, line: 869, baseType: !70, size: 64, offset: 2688)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !481, file: !478, line: 869, baseType: !70, size: 64, offset: 2752)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !481, file: !478, line: 870, baseType: !70, size: 64, offset: 2816)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !481, file: !478, line: 870, baseType: !70, size: 64, offset: 2880)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !481, file: !478, line: 870, baseType: !70, size: 64, offset: 2944)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !481, file: !478, line: 871, baseType: !70, size: 64, offset: 3008)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !481, file: !478, line: 871, baseType: !70, size: 64, offset: 3072)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !481, file: !478, line: 871, baseType: !70, size: 64, offset: 3136)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !481, file: !478, line: 871, baseType: !70, size: 64, offset: 3200)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !481, file: !478, line: 873, baseType: !585, size: 3328, offset: 3264)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 3328, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 52)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !481, file: !478, line: 875, baseType: !589, size: 1280, offset: 6592)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 1280, elements: !600)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !591, line: 22, size: 320, elements: !592)
!591 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!592 = !{!593, !594, !595, !596}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !590, file: !591, line: 23, baseType: !298, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !590, file: !591, line: 24, baseType: !216, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !590, file: !591, line: 26, baseType: !205, size: 128, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !590, file: !591, line: 28, baseType: !597, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !89, line: 20, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !42, line: 26, baseType: !51)
!600 = !{!601}
!601 = !DISubrange(count: 4)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !481, file: !478, line: 877, baseType: !603, size: 64, offset: 7872)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !478, line: 877, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !481, file: !478, line: 880, baseType: !606, size: 1088, offset: 7936)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !607, line: 72, baseType: !608)
!607 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !607, line: 23, size: 1088, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !617, !618, !626, !627, !655, !656, !657}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !608, file: !607, line: 28, baseType: !88, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !608, file: !607, line: 38, baseType: !541, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !608, file: !607, line: 40, baseType: !70, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !608, file: !607, line: 43, baseType: !548, size: 320, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !608, file: !607, line: 44, baseType: !615, size: 64, offset: 512)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !607, line: 44, flags: DIFlagFwdDecl)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !607, line: 48, baseType: !70, size: 64, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !608, file: !607, line: 59, baseType: !619, size: 256, offset: 640)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !620, line: 66, size: 256, elements: !621)
!620 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!621 = !{!622, !623, !624, !625}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !619, file: !620, line: 67, baseType: !539, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !619, file: !620, line: 68, baseType: !298, size: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !619, file: !620, line: 70, baseType: !554, size: 32, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !619, file: !620, line: 72, baseType: !205, size: 128, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !608, file: !607, line: 60, baseType: !115, size: 64, offset: 896)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !608, file: !607, line: 61, baseType: !628, size: 64, offset: 960)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !631, line: 13, size: 1216, elements: !632)
!631 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!632 = !{!633, !634, !635, !636, !637, !638, !639, !642, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !630, file: !631, line: 14, baseType: !115, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !630, file: !631, line: 15, baseType: !70, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !630, file: !631, line: 17, baseType: !70, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !630, file: !631, line: 17, baseType: !70, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !630, file: !631, line: 18, baseType: !70, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !630, file: !631, line: 18, baseType: !70, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !630, file: !631, line: 19, baseType: !640, size: 64, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !630, file: !631, line: 21, baseType: !643, size: 64, offset: 448)
!643 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !630, file: !631, line: 23, baseType: !643, size: 64, offset: 512)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !630, file: !631, line: 24, baseType: !643, size: 64, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !630, file: !631, line: 25, baseType: !643, size: 64, offset: 640)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !630, file: !631, line: 26, baseType: !643, size: 64, offset: 704)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !630, file: !631, line: 27, baseType: !643, size: 64, offset: 768)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !630, file: !631, line: 28, baseType: !643, size: 64, offset: 832)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !630, file: !631, line: 29, baseType: !643, size: 64, offset: 896)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !630, file: !631, line: 30, baseType: !643, size: 64, offset: 960)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !630, file: !631, line: 31, baseType: !643, size: 64, offset: 1024)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !630, file: !631, line: 32, baseType: !643, size: 64, offset: 1088)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !630, file: !631, line: 33, baseType: !643, size: 64, offset: 1152)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !608, file: !607, line: 63, baseType: !152, size: 32, offset: 1024)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !608, file: !607, line: 69, baseType: !93, size: 16, offset: 1056)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !608, file: !607, line: 70, baseType: !658, size: 16, offset: 1072)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !89, line: 18, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !42, line: 23, baseType: !660)
!660 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !481, file: !478, line: 882, baseType: !70, size: 64, offset: 9024)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !481, file: !478, line: 885, baseType: !495, size: 32, offset: 9088)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !481, file: !478, line: 886, baseType: !664, size: 64, offset: 9152)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !478, line: 732, flags: DIFlagFwdDecl)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !481, file: !478, line: 901, baseType: !667, size: 64, offset: 9216)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !478, line: 901, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !481, file: !478, line: 904, baseType: !513, size: 64, offset: 9280)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !481, file: !478, line: 906, baseType: !671, size: 64, offset: 9344)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !478, line: 906, flags: DIFlagFwdDecl)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !481, file: !478, line: 930, baseType: !152, size: 32, offset: 9408)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !481, file: !478, line: 933, baseType: !152, size: 32, offset: 9440)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !481, file: !478, line: 935, baseType: !676, size: 64, offset: 9472)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !23, line: 103, size: 64, elements: !677)
!677 = !{!678}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !676, file: !23, line: 104, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !23, line: 101, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !481, file: !478, line: 940, baseType: !539, size: 64, offset: 9536)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !481, file: !478, line: 942, baseType: !683, size: 256, offset: 9600)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !684, line: 98, size: 256, elements: !685)
!684 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!685 = !{!686, !687, !688}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !683, file: !684, line: 99, baseType: !539, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !683, file: !684, line: 100, baseType: !205, size: 128, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !683, file: !684, line: 101, baseType: !689, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !684, line: 21, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !477, file: !478, line: 986, baseType: !695, offset: 10240)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, elements: !696)
!696 = !{!697}
!697 = !DISubrange(count: -1)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !133, file: !134, line: 882, baseType: !476, size: 64, offset: 9792)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !133, file: !134, line: 884, baseType: !51, size: 32, offset: 9856)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !133, file: !134, line: 885, baseType: !51, size: 32, offset: 9888)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !133, file: !134, line: 886, baseType: !51, size: 32, offset: 9920)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !133, file: !134, line: 888, baseType: !51, size: 32, offset: 9952)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !133, file: !134, line: 890, baseType: !70, size: 64, offset: 9984)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !133, file: !134, line: 893, baseType: !7, size: 32, offset: 10048)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !133, file: !134, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !133, file: !134, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !133, file: !134, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !133, file: !134, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !133, file: !134, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !133, file: !134, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !133, file: !134, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !133, file: !134, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !133, file: !134, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !133, file: !134, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !133, file: !134, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !133, file: !134, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !133, file: !134, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !133, file: !134, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !133, file: !134, line: 969, baseType: !70, size: 64, offset: 10176)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !133, file: !134, line: 971, baseType: !721, size: 448, offset: 10240)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !17, line: 25, size: 448, elements: !722)
!722 = !{!723, !724, !729}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !721, file: !17, line: 26, baseType: !70, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !721, file: !17, line: 27, baseType: !725, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!643, !728}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !721, file: !17, line: 28, baseType: !730, size: 320, offset: 128)
!730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !721, file: !17, line: 28, size: 320, elements: !731)
!731 = !{!732, !742, !767}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !730, file: !17, line: 37, baseType: !733, size: 320)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !730, file: !17, line: 30, size: 320, elements: !734)
!734 = !{!735, !737, !738, !739, !740, !741}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !733, file: !17, line: 31, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !733, file: !17, line: 32, baseType: !111, size: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !17, line: 33, baseType: !111, size: 32, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !733, file: !17, line: 34, baseType: !111, size: 32, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !733, file: !17, line: 35, baseType: !88, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !733, file: !17, line: 36, baseType: !736, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !730, file: !17, line: 47, baseType: !743, size: 192)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !730, file: !17, line: 39, size: 192, elements: !744)
!744 = !{!745, !746, !747, !766}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !743, file: !17, line: 40, baseType: !341, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !743, file: !17, line: 41, baseType: !16, size: 32, offset: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !17, line: 42, baseType: !748, size: 64, offset: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !743, file: !17, line: 42, size: 64, elements: !749)
!749 = !{!750, !758}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !748, file: !17, line: 43, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !753, line: 7, size: 128, elements: !754)
!753 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!754 = !{!755, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !752, file: !753, line: 8, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !343, line: 93, baseType: !218)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !752, file: !753, line: 9, baseType: !218, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !748, file: !17, line: 44, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !761, line: 7, size: 64, elements: !762)
!761 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!762 = !{!763, !765}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !760, file: !761, line: 8, baseType: !764, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !761, line: 5, baseType: !598)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !760, file: !761, line: 9, baseType: !598, size: 32, offset: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !743, file: !17, line: 46, baseType: !88, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !730, file: !17, line: 55, baseType: !768, size: 256)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !730, file: !17, line: 49, size: 256, elements: !769)
!769 = !{!770, !773, !774, !775, !776}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !768, file: !17, line: 50, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !17, line: 14, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !768, file: !17, line: 51, baseType: !51, size: 32, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !768, file: !17, line: 52, baseType: !51, size: 32, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !768, file: !17, line: 53, baseType: !70, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !768, file: !17, line: 54, baseType: !70, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !133, file: !134, line: 973, baseType: !778, size: 32, offset: 10688)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !108, line: 27, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !343, line: 28, baseType: !51)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !133, file: !134, line: 974, baseType: !778, size: 32, offset: 10720)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !133, file: !134, line: 978, baseType: !70, size: 64, offset: 10752)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !133, file: !134, line: 987, baseType: !132, size: 64, offset: 10816)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !133, file: !134, line: 990, baseType: !132, size: 64, offset: 10880)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !133, file: !134, line: 995, baseType: !205, size: 128, offset: 10944)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !133, file: !134, line: 996, baseType: !205, size: 128, offset: 11072)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !133, file: !134, line: 997, baseType: !132, size: 64, offset: 11200)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !133, file: !134, line: 1005, baseType: !205, size: 128, offset: 11264)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !133, file: !134, line: 1006, baseType: !205, size: 128, offset: 11392)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !133, file: !134, line: 1009, baseType: !790, size: 64, offset: 11520)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !792, line: 59, size: 768, elements: !793)
!792 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!793 = !{!794, !795, !796, !797, !808, !809, !816, !825}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !791, file: !792, line: 61, baseType: !147, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !791, file: !792, line: 62, baseType: !7, size: 32, offset: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !791, file: !792, line: 63, baseType: !495, size: 32, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !791, file: !792, line: 65, baseType: !798, size: 256, offset: 128)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !799, size: 256, elements: !600)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !108, line: 194, size: 64, elements: !800)
!800 = !{!801}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !799, file: !108, line: 195, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !108, line: 198, size: 128, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !803, file: !108, line: 199, baseType: !802, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !803, file: !108, line: 199, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !791, file: !792, line: 66, baseType: !799, size: 64, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !791, file: !792, line: 68, baseType: !810, size: 192, offset: 448)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !811, line: 41, baseType: !812)
!811 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !811, line: 37, size: 192, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !812, file: !811, line: 38, baseType: !495, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !812, file: !811, line: 39, baseType: !205, size: 128, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !791, file: !792, line: 69, baseType: !817, size: 128, align: 64, offset: 640)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !108, line: 232, size: 128, align: 64, elements: !818)
!818 = !{!819, !821}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !817, file: !108, line: 233, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !817, file: !108, line: 234, baseType: !822, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !820}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !791, file: !792, line: 70, baseType: !826, offset: 768)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, elements: !696)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !792, line: 54, size: 128, elements: !828)
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !827, file: !792, line: 55, baseType: !51, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !827, file: !792, line: 56, baseType: !831, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !792, line: 56, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !133, file: !134, line: 1010, baseType: !834, size: 512, offset: 11584)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 512, elements: !600)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !133, file: !134, line: 1011, baseType: !205, size: 128, offset: 12096)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !133, file: !134, line: 1012, baseType: !205, size: 128, offset: 12224)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !133, file: !134, line: 1014, baseType: !838, size: 64, offset: 12352)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !840, line: 26, size: 256, elements: !841)
!840 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !839, file: !840, line: 27, baseType: !7, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !839, file: !840, line: 28, baseType: !844, size: 192, offset: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !845, line: 43, size: 192, elements: !846)
!845 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !844, file: !845, line: 44, baseType: !298, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !844, file: !845, line: 45, baseType: !205, size: 128, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !133, file: !134, line: 1017, baseType: !127, size: 64, offset: 12416)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !133, file: !134, line: 1020, baseType: !127, size: 64, offset: 12480)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !133, file: !134, line: 1023, baseType: !115, size: 64, offset: 12544)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !133, file: !134, line: 1025, baseType: !88, size: 64, offset: 12608)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !133, file: !134, line: 1026, baseType: !88, size: 64, offset: 12672)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !133, file: !134, line: 1031, baseType: !88, size: 64, offset: 12736)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !133, file: !134, line: 1032, baseType: !856, size: 192, offset: 12800)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !134, line: 324, size: 192, elements: !857)
!857 = !{!858, !859, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !856, file: !134, line: 326, baseType: !88, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !856, file: !134, line: 327, baseType: !88, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !856, file: !134, line: 328, baseType: !298, size: 32, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !133, file: !134, line: 1041, baseType: !70, size: 64, offset: 12992)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !133, file: !134, line: 1042, baseType: !70, size: 64, offset: 13056)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !133, file: !134, line: 1045, baseType: !88, size: 64, offset: 13120)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !133, file: !134, line: 1048, baseType: !88, size: 64, offset: 13184)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !133, file: !134, line: 1051, baseType: !70, size: 64, offset: 13248)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !133, file: !134, line: 1052, baseType: !70, size: 64, offset: 13312)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !133, file: !134, line: 1055, baseType: !868, size: 640, offset: 13376)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !869, line: 132, size: 640, elements: !870)
!869 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!870 = !{!871, !879, !880}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !868, file: !869, line: 133, baseType: !872, size: 576)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !873, size: 576, elements: !877)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !869, line: 117, size: 192, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !873, file: !869, line: 118, baseType: !88, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !873, file: !869, line: 119, baseType: !356, size: 128, offset: 64)
!877 = !{!878}
!878 = !DISubrange(count: 3)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !868, file: !869, line: 134, baseType: !7, size: 32, offset: 576)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !868, file: !869, line: 135, baseType: !7, size: 32, offset: 608)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !133, file: !134, line: 1058, baseType: !882, size: 448, offset: 14016)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !869, line: 144, size: 448, elements: !883)
!883 = !{!884, !885, !886}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !882, file: !869, line: 145, baseType: !817, size: 128, align: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !882, file: !869, line: 146, baseType: !619, size: 256, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !882, file: !869, line: 147, baseType: !7, size: 32, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !133, file: !134, line: 1064, baseType: !888, size: 64, offset: 14464)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !890)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !134, line: 1064, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !133, file: !134, line: 1067, baseType: !888, size: 64, offset: 14528)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !133, file: !134, line: 1070, baseType: !888, size: 64, offset: 14592)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !133, file: !134, line: 1074, baseType: !894, size: 64, offset: 14656)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !134, line: 1074, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !133, file: !134, line: 1084, baseType: !72, size: 128, offset: 14720)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !133, file: !134, line: 1086, baseType: !898, size: 64, offset: 14848)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !134, line: 55, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !133, file: !134, line: 1089, baseType: !901, size: 64, offset: 14912)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !902, line: 12, size: 64, elements: !903)
!902 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !901, file: !902, line: 13, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !902, line: 8, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !133, file: !134, line: 1090, baseType: !908, size: 128, offset: 14976)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !909, line: 13, size: 128, elements: !910)
!909 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!910 = !{!911}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !908, file: !909, line: 14, baseType: !205, size: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !133, file: !134, line: 1097, baseType: !913, size: 64, offset: 15104)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !134, line: 50, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !133, file: !134, line: 1100, baseType: !916, size: 64, offset: 15168)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !134, line: 1100, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !133, file: !134, line: 1103, baseType: !919, size: 64, offset: 15232)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !134, line: 53, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !133, file: !134, line: 1107, baseType: !922, size: 64, offset: 15296)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !134, line: 56, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !133, file: !134, line: 1110, baseType: !925, size: 64, offset: 15360)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !869, line: 236, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !133, file: !134, line: 1111, baseType: !928, size: 64, offset: 15424)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !134, line: 67, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !133, file: !134, line: 1112, baseType: !931, size: 64, offset: 15488)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !932, line: 25, baseType: !933)
!932 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !932, line: 23, size: 64, elements: !934)
!934 = !{!935}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !933, file: !932, line: 24, baseType: !427, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !133, file: !134, line: 1113, baseType: !931, size: 64, offset: 15552)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !133, file: !134, line: 1115, baseType: !931, size: 64, offset: 15616)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !133, file: !134, line: 1116, baseType: !939, size: 192, offset: 15680)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !940, line: 32, size: 192, elements: !941)
!940 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !939, file: !940, line: 33, baseType: !205, size: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !939, file: !940, line: 34, baseType: !931, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !133, file: !134, line: 1117, baseType: !70, size: 64, offset: 15872)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !133, file: !134, line: 1118, baseType: !946, size: 64, offset: 15936)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 61, baseType: !947)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !343, line: 72, baseType: !948)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !343, line: 16, baseType: !70)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !133, file: !134, line: 1119, baseType: !7, size: 32, offset: 16000)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !133, file: !134, line: 1121, baseType: !820, size: 64, offset: 16064)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !133, file: !134, line: 1125, baseType: !952, size: 64, offset: 16128)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !134, line: 43, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !133, file: !134, line: 1127, baseType: !955, size: 32, offset: 16192)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !956, line: 23, baseType: !957)
!956 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !956, line: 21, size: 32, elements: !958)
!958 = !{!959}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !957, file: !956, line: 22, baseType: !960, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !108, line: 37, baseType: !961)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !343, line: 49, baseType: !7)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !133, file: !134, line: 1128, baseType: !7, size: 32, offset: 16224)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !133, file: !134, line: 1130, baseType: !964, size: 128, offset: 16256)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !965, line: 37, size: 128, elements: !966)
!965 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!966 = !{!967, !968, !969}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !964, file: !965, line: 38, baseType: !51, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !964, file: !965, line: 39, baseType: !152, size: 32, offset: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !964, file: !965, line: 40, baseType: !970, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !965, line: 24, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !133, file: !134, line: 1131, baseType: !973, size: 256, offset: 16384)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !974, line: 12, size: 256, elements: !975)
!974 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!975 = !{!976, !978, !979, !980}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !973, file: !974, line: 13, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !973, file: !974, line: 14, baseType: !70, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !973, file: !974, line: 15, baseType: !70, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !973, file: !974, line: 16, baseType: !107, size: 8, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !133, file: !134, line: 1134, baseType: !88, size: 64, offset: 16640)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !133, file: !134, line: 1135, baseType: !88, size: 64, offset: 16704)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !133, file: !134, line: 1138, baseType: !495, size: 32, offset: 16768)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !133, file: !134, line: 1141, baseType: !298, size: 32, offset: 16800)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !133, file: !134, line: 1143, baseType: !986, size: 64, offset: 16832)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !134, line: 735, size: 64, elements: !987)
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !986, file: !134, line: 736, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !133, file: !134, line: 1147, baseType: !359, size: 128, offset: 16896)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !133, file: !134, line: 1149, baseType: !132, size: 64, offset: 17024)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !133, file: !134, line: 1151, baseType: !993, size: 64, offset: 17088)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !134, line: 1151, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !133, file: !134, line: 1188, baseType: !115, size: 64, offset: 17152)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !133, file: !134, line: 1191, baseType: !997, size: 64, offset: 17216)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !134, line: 44, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !133, file: !134, line: 1194, baseType: !1000, size: 64, offset: 17280)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !134, line: 45, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !133, file: !134, line: 1197, baseType: !1003, size: 64, offset: 17344)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !134, line: 61, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !133, file: !134, line: 1199, baseType: !1006, size: 64, offset: 17408)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !134, line: 52, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !133, file: !134, line: 1202, baseType: !1009, size: 64, offset: 17472)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !134, line: 48, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !133, file: !134, line: 1205, baseType: !70, size: 64, offset: 17536)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !133, file: !134, line: 1206, baseType: !1013, size: 64, offset: 17600)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !940, line: 14, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !940, line: 12, size: 384, elements: !1016)
!1016 = !{!1017}
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !940, line: 13, baseType: !1018, size: 384)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !940, line: 13, size: 384, elements: !1019)
!1019 = !{!1020, !1021, !1022, !1023}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1018, file: !940, line: 13, baseType: !51, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1018, file: !940, line: 13, baseType: !51, size: 32, offset: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1018, file: !940, line: 13, baseType: !51, size: 32, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1018, file: !940, line: 13, baseType: !1024, size: 256, offset: 128)
!1024 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1025, line: 37, size: 256, elements: !1026)
!1025 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1026 = !{!1027, !1032, !1045, !1051, !1061, !1088, !1093}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1024, file: !1025, line: 42, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !1025, line: 39, size: 64, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1028, file: !1025, line: 40, baseType: !779, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1028, file: !1025, line: 41, baseType: !961, size: 32, offset: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1024, file: !1025, line: 50, baseType: !1033, size: 192)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !1025, line: 45, size: 192, elements: !1034)
!1034 = !{!1035, !1037, !1038, !1044}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1033, file: !1025, line: 46, baseType: !1036, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !343, line: 95, baseType: !51)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1033, file: !1025, line: 47, baseType: !51, size: 32, offset: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1033, file: !1025, line: 48, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1025, line: 11, baseType: !1040)
!1040 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1025, line: 8, size: 64, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1040, file: !1025, line: 9, baseType: !51, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1040, file: !1025, line: 10, baseType: !115, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1033, file: !1025, line: 49, baseType: !51, size: 32, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1024, file: !1025, line: 57, baseType: !1046, size: 128)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !1025, line: 53, size: 128, elements: !1047)
!1047 = !{!1048, !1049, !1050}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1046, file: !1025, line: 54, baseType: !779, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1046, file: !1025, line: 55, baseType: !961, size: 32, offset: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1046, file: !1025, line: 56, baseType: !1039, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1024, file: !1025, line: 66, baseType: !1052, size: 256)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !1025, line: 60, size: 256, elements: !1053)
!1053 = !{!1054, !1055, !1056, !1057, !1060}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1052, file: !1025, line: 61, baseType: !779, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1052, file: !1025, line: 62, baseType: !961, size: 32, offset: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1052, file: !1025, line: 63, baseType: !51, size: 32, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1052, file: !1025, line: 64, baseType: !1058, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !343, line: 94, baseType: !1059)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !343, line: 15, baseType: !643)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1052, file: !1025, line: 65, baseType: !1058, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1024, file: !1025, line: 105, baseType: !1062, size: 256)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !1025, line: 69, size: 256, elements: !1063)
!1063 = !{!1064, !1065}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1062, file: !1025, line: 70, baseType: !115, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !1025, line: 79, baseType: !1066, size: 192, offset: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1062, file: !1025, line: 79, size: 192, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1077, !1082}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1066, file: !1025, line: 81, baseType: !51, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1066, file: !1025, line: 86, baseType: !660, size: 16)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1066, file: !1025, line: 92, baseType: !1071, size: 192)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1066, file: !1025, line: 88, size: 192, elements: !1072)
!1072 = !{!1073, !1075, !1076}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1071, file: !1025, line: 89, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !125)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1071, file: !1025, line: 90, baseType: !115, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1071, file: !1025, line: 91, baseType: !115, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1066, file: !1025, line: 97, baseType: !1078, size: 96)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1066, file: !1025, line: 94, size: 96, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1078, file: !1025, line: 95, baseType: !1074, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1078, file: !1025, line: 96, baseType: !48, size: 32, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1066, file: !1025, line: 103, baseType: !1083, size: 128)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1066, file: !1025, line: 99, size: 128, elements: !1084)
!1084 = !{!1085, !1086, !1087}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1083, file: !1025, line: 100, baseType: !70, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1083, file: !1025, line: 101, baseType: !48, size: 32, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1083, file: !1025, line: 102, baseType: !48, size: 32, offset: 96)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1024, file: !1025, line: 111, baseType: !1089, size: 128)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !1025, line: 108, size: 128, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1089, file: !1025, line: 109, baseType: !643, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1089, file: !1025, line: 110, baseType: !51, size: 32, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1024, file: !1025, line: 118, baseType: !1094, size: 128)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !1025, line: 114, size: 128, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1094, file: !1025, line: 115, baseType: !115, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1094, file: !1025, line: 116, baseType: !51, size: 32, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1094, file: !1025, line: 117, baseType: !7, size: 32, offset: 96)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !133, file: !134, line: 1208, baseType: !1100, size: 448, offset: 17664)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1101, line: 12, size: 448, elements: !1102)
!1101 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1102 = !{!1103, !1104, !1105, !1106, !1107, !1108, !1109}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1100, file: !1101, line: 15, baseType: !88, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1100, file: !1101, line: 17, baseType: !88, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1100, file: !1101, line: 19, baseType: !88, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1100, file: !1101, line: 21, baseType: !88, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1100, file: !1101, line: 29, baseType: !88, size: 64, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1100, file: !1101, line: 35, baseType: !88, size: 64, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1100, file: !1101, line: 44, baseType: !88, size: 64, offset: 384)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !133, file: !134, line: 1215, baseType: !88, size: 64, offset: 18112)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !133, file: !134, line: 1217, baseType: !88, size: 64, offset: 18176)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !133, file: !134, line: 1219, baseType: !88, size: 64, offset: 18240)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !133, file: !134, line: 1223, baseType: !1114, size: 64, offset: 18304)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1115, line: 99, baseType: !1116)
!1115 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1115, line: 99, size: 64, elements: !1117)
!1117 = !{!1118}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1116, file: !1115, line: 99, baseType: !427, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !133, file: !134, line: 1225, baseType: !1120, size: 32, offset: 18368)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !346, line: 275, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !346, line: 275, size: 32, elements: !1122)
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1121, file: !346, line: 275, baseType: !350, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !133, file: !134, line: 1226, baseType: !51, size: 32, offset: 18400)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !133, file: !134, line: 1227, baseType: !51, size: 32, offset: 18432)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !133, file: !134, line: 1231, baseType: !1127, size: 64, offset: 18496)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !134, line: 1231, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !133, file: !134, line: 1233, baseType: !205, size: 128, offset: 18560)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !133, file: !134, line: 1240, baseType: !1131, size: 64, offset: 18688)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !134, line: 62, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !133, file: !134, line: 1242, baseType: !1134, size: 64, offset: 18752)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !134, line: 1242, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !133, file: !134, line: 1244, baseType: !205, size: 128, offset: 18816)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !133, file: !134, line: 1245, baseType: !1138, size: 64, offset: 18944)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !134, line: 51, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !133, file: !134, line: 1246, baseType: !619, size: 256, offset: 19008)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !133, file: !134, line: 1247, baseType: !7, size: 32, offset: 19264)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !133, file: !134, line: 1250, baseType: !1143, size: 64, offset: 19328)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !134, line: 57, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !133, file: !134, line: 1251, baseType: !619, size: 256, offset: 19392)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !133, file: !134, line: 1252, baseType: !205, size: 128, offset: 19648)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !133, file: !134, line: 1259, baseType: !1148, size: 64, offset: 19776)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !478, line: 717, flags: DIFlagFwdDecl)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !133, file: !134, line: 1260, baseType: !660, size: 16, offset: 19840)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !133, file: !134, line: 1261, baseType: !660, size: 16, offset: 19856)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !133, file: !134, line: 1314, baseType: !1153, size: 64, offset: 19904)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1155, line: 62, size: 256, align: 256, elements: !1156)
!1155 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1156 = !{!1157, !1158, !1159, !1160, !1161, !1162, !1163}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1154, file: !1155, line: 75, baseType: !48, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1154, file: !1155, line: 90, baseType: !48, size: 32, offset: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1154, file: !1155, line: 112, baseType: !90, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1154, file: !1155, line: 132, baseType: !48, size: 32, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1154, file: !1155, line: 140, baseType: !48, size: 32, offset: 160)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1154, file: !1155, line: 149, baseType: !48, size: 32, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1154, file: !1155, line: 154, baseType: !1164, offset: 224)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, elements: !696)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !133, file: !134, line: 1315, baseType: !111, size: 32, offset: 19968)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !133, file: !134, line: 1316, baseType: !111, size: 32, offset: 20000)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !133, file: !134, line: 1321, baseType: !70, size: 64, offset: 20032)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !133, file: !134, line: 1325, baseType: !51, size: 32, offset: 20096)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !133, file: !134, line: 1326, baseType: !51, size: 32, offset: 20128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !133, file: !134, line: 1327, baseType: !51, size: 32, offset: 20160)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !133, file: !134, line: 1328, baseType: !51, size: 32, offset: 20192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !133, file: !134, line: 1329, baseType: !817, size: 128, align: 64, offset: 20224)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !133, file: !134, line: 1332, baseType: !1174, size: 128, offset: 20352)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1175, line: 51, size: 128, elements: !1176)
!1175 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1176 = !{!1177, !1182, !1183}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1174, file: !1175, line: 60, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1179, line: 7, size: 64, elements: !1180)
!1179 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1180 = !{!1181}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1178, file: !1179, line: 12, baseType: !424, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1174, file: !1175, line: 63, baseType: !107, size: 8, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1174, file: !1175, line: 70, baseType: !107, size: 8, offset: 72)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !133, file: !134, line: 1335, baseType: !1185, size: 64, offset: 20480)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !134, line: 59, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !133, file: !134, line: 1337, baseType: !1188, size: 128, offset: 20544)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1175, line: 39, size: 128, elements: !1189)
!1189 = !{!1190, !1254, !1255}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1188, file: !1175, line: 40, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !478, line: 74, size: 512, align: 128, elements: !1193)
!1193 = !{!1194, !1195, !1248, !1253}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1192, file: !478, line: 75, baseType: !70, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !478, line: 83, baseType: !1196, size: 320, offset: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !478, line: 83, size: 320, elements: !1197)
!1197 = !{!1198, !1222, !1236, !1240, !1247}
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !478, line: 84, baseType: !1199, size: 320)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !478, line: 84, size: 320, elements: !1200)
!1200 = !{!1201, !1212, !1216, !1221}
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !478, line: 90, baseType: !1202, size: 128)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !478, line: 90, size: 128, elements: !1203)
!1203 = !{!1204, !1205, !1210, !1211}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1202, file: !478, line: 91, baseType: !205, size: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !478, line: 94, baseType: !1206, size: 128)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !478, line: 94, size: 128, elements: !1207)
!1207 = !{!1208, !1209}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1206, file: !478, line: 96, baseType: !115, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1206, file: !478, line: 98, baseType: !7, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1202, file: !478, line: 102, baseType: !205, size: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1202, file: !478, line: 103, baseType: !205, size: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1199, file: !478, line: 106, baseType: !1213, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !1215, line: 351, flags: DIFlagFwdDecl)
!1215 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !478, line: 107, baseType: !1217, size: 64, offset: 192)
!1217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !478, line: 107, size: 64, elements: !1218)
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1217, file: !478, line: 108, baseType: !70, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1217, file: !478, line: 109, baseType: !70, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1199, file: !478, line: 117, baseType: !70, size: 64, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !478, line: 119, baseType: !1223, size: 320)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !478, line: 119, size: 320, elements: !1224)
!1224 = !{!1225, !1226, !1229, !1230, !1231}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1223, file: !478, line: 124, baseType: !70, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1223, file: !478, line: 125, baseType: !1227, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !478, line: 125, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1223, file: !478, line: 126, baseType: !70, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1223, file: !478, line: 127, baseType: !70, size: 64, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !478, line: 128, baseType: !1232, size: 64, offset: 256)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1223, file: !478, line: 128, size: 64, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1232, file: !478, line: 133, baseType: !70, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1232, file: !478, line: 138, baseType: !539, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !478, line: 141, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !478, line: 141, size: 64, elements: !1238)
!1238 = !{!1239}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1237, file: !478, line: 142, baseType: !70, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !478, line: 144, baseType: !1241, size: 128)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !478, line: 144, size: 128, elements: !1242)
!1242 = !{!1243, !1246}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1241, file: !478, line: 146, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !478, line: 146, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1241, file: !478, line: 147, baseType: !115, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1196, file: !478, line: 161, baseType: !817, size: 128, align: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !478, line: 164, baseType: !1249, size: 32, offset: 384)
!1249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !478, line: 164, size: 32, elements: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1249, file: !478, line: 169, baseType: !152, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1249, file: !478, line: 177, baseType: !7, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1192, file: !478, line: 181, baseType: !152, size: 32, offset: 416)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1188, file: !1175, line: 42, baseType: !48, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1188, file: !1175, line: 43, baseType: !48, size: 32, offset: 96)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !133, file: !134, line: 1340, baseType: !1257, size: 64, offset: 20672)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !134, line: 69, flags: DIFlagFwdDecl)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !133, file: !134, line: 1351, baseType: !51, size: 32, offset: 20736)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !133, file: !134, line: 1352, baseType: !51, size: 32, offset: 20768)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !133, file: !134, line: 1354, baseType: !70, size: 64, offset: 20800)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !133, file: !134, line: 1364, baseType: !88, size: 64, offset: 20864)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !133, file: !134, line: 1365, baseType: !88, size: 64, offset: 20928)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !133, file: !134, line: 1412, baseType: !70, size: 64, offset: 20992)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !133, file: !134, line: 1453, baseType: !1266, size: 64, offset: 21056)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !134, line: 1453, flags: DIFlagFwdDecl)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !133, file: !134, line: 1457, baseType: !1269, size: 64, offset: 21120)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !23, line: 61, size: 576, elements: !1271)
!1271 = !{!1272, !1273, !1292, !1295, !1296, !1329, !1339}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1270, file: !23, line: 62, baseType: !22, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !23, line: 64, baseType: !1274, size: 192, offset: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !23, line: 64, size: 192, elements: !1275)
!1275 = !{!1276, !1287}
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !23, line: 65, baseType: !1277, size: 192)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !23, line: 65, size: 192, elements: !1278)
!1278 = !{!1279, !1286}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1277, file: !23, line: 66, baseType: !1280, size: 128)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1281, line: 50, size: 128, elements: !1282)
!1281 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1282 = !{!1283, !1284, !1285}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1280, file: !1281, line: 52, baseType: !70, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1280, file: !1281, line: 54, baseType: !7, size: 32, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1280, file: !1281, line: 55, baseType: !7, size: 32, offset: 96)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1277, file: !23, line: 67, baseType: !70, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !23, line: 70, baseType: !1288, size: 192)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !23, line: 70, size: 192, elements: !1289)
!1289 = !{!1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1288, file: !23, line: 71, baseType: !817, size: 128, align: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1288, file: !23, line: 72, baseType: !70, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1270, file: !23, line: 76, baseType: !1293, size: 64, offset: 256)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !23, line: 76, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1270, file: !23, line: 77, baseType: !70, size: 64, offset: 320)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1270, file: !23, line: 79, baseType: !1297, size: 64, offset: 384)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1281, line: 25, size: 256, elements: !1299)
!1299 = !{!1300, !1306, !1310}
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !1281, line: 26, baseType: !1301, size: 128)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1298, file: !1281, line: 26, size: 128, elements: !1302)
!1302 = !{!1303, !1305}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1301, file: !1281, line: 27, baseType: !1304, size: 128)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 128, elements: !74)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1301, file: !1281, line: 28, baseType: !1304, size: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1298, file: !1281, line: 31, baseType: !1307, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1309)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1281, line: 23, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !1281, line: 33, baseType: !1311, size: 64, offset: 192)
!1311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1298, file: !1281, line: 33, size: 64, elements: !1312)
!1312 = !{!1313, !1319, !1324}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1311, file: !1281, line: 38, baseType: !1314, size: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1311, file: !1281, line: 34, size: 64, elements: !1315)
!1315 = !{!1316, !1317, !1318}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1314, file: !1281, line: 35, baseType: !598, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1314, file: !1281, line: 36, baseType: !113, size: 8, offset: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1314, file: !1281, line: 37, baseType: !113, size: 8, offset: 40)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1311, file: !1281, line: 42, baseType: !1320, size: 16)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1311, file: !1281, line: 39, size: 16, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1320, file: !1281, line: 40, baseType: !113, size: 8)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1320, file: !1281, line: 41, baseType: !113, size: 8, offset: 8)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1311, file: !1281, line: 46, baseType: !1325, size: 16)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1311, file: !1281, line: 43, size: 16, elements: !1326)
!1326 = !{!1327, !1328}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1325, file: !1281, line: 44, baseType: !113, size: 8)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1325, file: !1281, line: 45, baseType: !113, size: 8, offset: 8)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1270, file: !23, line: 81, baseType: !1330, size: 64, offset: 448)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !23, line: 85, size: 384, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1331, file: !23, line: 86, baseType: !1293, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1331, file: !23, line: 87, baseType: !70, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1331, file: !23, line: 88, baseType: !70, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1331, file: !23, line: 89, baseType: !70, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1331, file: !23, line: 90, baseType: !107, size: 8, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1331, file: !23, line: 92, baseType: !1330, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1270, file: !23, line: 82, baseType: !7, size: 32, offset: 512)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !133, file: !134, line: 1463, baseType: !1341, offset: 21184)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !134, line: 739, elements: !506)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !133, file: !134, line: 1470, baseType: !817, size: 128, align: 64, offset: 21184)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !133, file: !134, line: 1471, baseType: !147, size: 32, offset: 21312)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !133, file: !134, line: 1472, baseType: !51, size: 32, offset: 21344)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !133, file: !134, line: 1474, baseType: !132, size: 64, offset: 21376)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !133, file: !134, line: 1475, baseType: !1347, size: 320, offset: 21440)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1348, line: 11, size: 320, elements: !1349)
!1348 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1349 = !{!1350, !1351, !1352, !1357}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1347, file: !1348, line: 16, baseType: !803, size: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1347, file: !1348, line: 17, baseType: !70, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1347, file: !1348, line: 18, baseType: !1353, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{null, !1356}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1347, file: !1348, line: 19, baseType: !111, size: 32, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !133, file: !134, line: 1478, baseType: !1359, size: 64, offset: 21760)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1361, line: 49, size: 512, elements: !1362)
!1361 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1369, !1370, !1371, !1373}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1360, file: !1361, line: 50, baseType: !1359, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1360, file: !1361, line: 51, baseType: !115, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1360, file: !1361, line: 52, baseType: !70, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1360, file: !1361, line: 53, baseType: !70, size: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1360, file: !1361, line: 54, baseType: !1368, size: 64, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !1360, file: !1361, line: 56, baseType: !7, size: 32, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1360, file: !1361, line: 58, baseType: !7, size: 32, offset: 352)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1360, file: !1361, line: 59, baseType: !1372, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !108, line: 159, baseType: !88)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1360, file: !1361, line: 60, baseType: !640, size: 64, offset: 448)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !133, file: !134, line: 1482, baseType: !147, size: 32, offset: 21824)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !133, file: !134, line: 1489, baseType: !115, size: 64, offset: 21888)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !133, file: !134, line: 1504, baseType: !115, size: 64, offset: 21952)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !133, file: !134, line: 1505, baseType: !90, size: 64, offset: 22016)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !133, file: !134, line: 1506, baseType: !88, size: 64, offset: 22080)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !133, file: !134, line: 1507, baseType: !90, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !133, file: !134, line: 1508, baseType: !90, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !133, file: !134, line: 1509, baseType: !90, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !133, file: !134, line: 1510, baseType: !817, size: 128, align: 64, offset: 22208)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !133, file: !134, line: 1511, baseType: !51, size: 32, offset: 22336)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !133, file: !134, line: 1515, baseType: !1385, size: 64, offset: 22400)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !165, line: 56, size: 64, elements: !1386)
!1386 = !{!1387}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1385, file: !165, line: 57, baseType: !168, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !133, file: !134, line: 1518, baseType: !1385, size: 64, offset: 22464)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !133, file: !134, line: 1528, baseType: !817, size: 128, align: 64, offset: 22528)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !133, file: !134, line: 1552, baseType: !1391, size: 35328, offset: 23040)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !32, line: 430, size: 35328, elements: !1392)
!1392 = !{!1393, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1422, !1423, !1424, !1425, !1426, !1427, !1430, !1431, !1432, !1433}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1391, file: !32, line: 432, baseType: !1394, size: 192)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1395, size: 192, elements: !877)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1396, line: 16, size: 64, elements: !1397)
!1396 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1397 = !{!1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1395, file: !1396, line: 17, baseType: !93, size: 16)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1395, file: !1396, line: 18, baseType: !93, size: 16, offset: 16)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1395, file: !1396, line: 19, baseType: !93, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1395, file: !1396, line: 19, baseType: !93, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1395, file: !1396, line: 19, baseType: !93, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1395, file: !1396, line: 19, baseType: !93, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1395, file: !1396, line: 19, baseType: !93, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1395, file: !1396, line: 20, baseType: !93, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1395, file: !1396, line: 20, baseType: !93, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1395, file: !1396, line: 20, baseType: !93, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1395, file: !1396, line: 20, baseType: !93, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1395, file: !1396, line: 20, baseType: !93, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1395, file: !1396, line: 20, baseType: !93, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1391, file: !32, line: 436, baseType: !70, size: 64, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1391, file: !32, line: 440, baseType: !95, size: 16, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1391, file: !32, line: 441, baseType: !95, size: 16, offset: 272)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1391, file: !32, line: 442, baseType: !95, size: 16, offset: 288)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1391, file: !32, line: 443, baseType: !95, size: 16, offset: 304)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1391, file: !32, line: 447, baseType: !70, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1391, file: !32, line: 448, baseType: !70, size: 64, offset: 384)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1391, file: !32, line: 459, baseType: !1419, size: 256, offset: 448)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1420, size: 256, elements: !600)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !32, line: 428, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1391, file: !32, line: 461, baseType: !70, size: 64, offset: 704)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1391, file: !32, line: 463, baseType: !70, size: 64, offset: 768)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1391, file: !32, line: 465, baseType: !70, size: 64, offset: 832)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1391, file: !32, line: 466, baseType: !70, size: 64, offset: 896)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1391, file: !32, line: 467, baseType: !70, size: 64, offset: 960)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1391, file: !32, line: 473, baseType: !1428, size: 64, offset: 1024)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !32, line: 10, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1391, file: !32, line: 480, baseType: !70, size: 64, offset: 1088)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1391, file: !32, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1391, file: !32, line: 491, baseType: !111, size: 32, offset: 1184)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1391, file: !32, line: 501, baseType: !1434, size: 33792, offset: 1536)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1435, line: 448, size: 33792, elements: !1436)
!1435 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1436 = !{!1437, !1438, !1439, !1605, !1606, !1612, !1613}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1434, file: !1435, line: 461, baseType: !7, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1434, file: !1435, line: 468, baseType: !70, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1434, file: !1435, line: 476, baseType: !1440, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1435, line: 356, size: 33280, align: 512, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1441, file: !1435, line: 358, baseType: !7, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1441, file: !1435, line: 361, baseType: !7, size: 32, offset: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1441, file: !1435, line: 364, baseType: !88, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1441, file: !1435, line: 367, baseType: !88, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1441, file: !1435, line: 370, baseType: !88, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1441, file: !1435, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1441, file: !1435, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1441, file: !1435, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1441, file: !1435, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1441, file: !1435, line: 397, baseType: !1453, size: 32768, offset: 512)
!1453 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1435, line: 348, size: 32768, elements: !1454)
!1454 = !{!1455, !1470, !1509, !1586, !1601}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1453, file: !1435, line: 349, baseType: !1456, size: 896)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1435, line: 12, size: 896, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1469}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1456, file: !1435, line: 13, baseType: !111, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1456, file: !1435, line: 14, baseType: !111, size: 32, offset: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1456, file: !1435, line: 15, baseType: !111, size: 32, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1456, file: !1435, line: 16, baseType: !111, size: 32, offset: 96)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1456, file: !1435, line: 17, baseType: !111, size: 32, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1456, file: !1435, line: 18, baseType: !111, size: 32, offset: 160)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1456, file: !1435, line: 19, baseType: !111, size: 32, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1456, file: !1435, line: 22, baseType: !1466, size: 640, offset: 224)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 640, elements: !1467)
!1467 = !{!1468}
!1468 = !DISubrange(count: 20)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1456, file: !1435, line: 25, baseType: !111, size: 32, offset: 864)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1453, file: !1435, line: 350, baseType: !1471, size: 4096, align: 128)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1435, line: 34, size: 4096, align: 128, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1492, !1493, !1494, !1498, !1500, !1504}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1471, file: !1435, line: 35, baseType: !93, size: 16)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1471, file: !1435, line: 36, baseType: !93, size: 16, offset: 16)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1471, file: !1435, line: 37, baseType: !93, size: 16, offset: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1471, file: !1435, line: 38, baseType: !93, size: 16, offset: 48)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1471, file: !1435, line: 39, baseType: !1478, size: 128, offset: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1471, file: !1435, line: 39, size: 128, elements: !1479)
!1479 = !{!1480, !1485}
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !1435, line: 40, baseType: !1481, size: 128)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !1435, line: 40, size: 128, elements: !1482)
!1482 = !{!1483, !1484}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1481, file: !1435, line: 41, baseType: !88, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1481, file: !1435, line: 42, baseType: !88, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !1435, line: 44, baseType: !1486, size: 128)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !1435, line: 44, size: 128, elements: !1487)
!1487 = !{!1488, !1489, !1490, !1491}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1486, file: !1435, line: 45, baseType: !111, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1486, file: !1435, line: 46, baseType: !111, size: 32, offset: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1486, file: !1435, line: 47, baseType: !111, size: 32, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1486, file: !1435, line: 48, baseType: !111, size: 32, offset: 96)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1471, file: !1435, line: 51, baseType: !111, size: 32, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1471, file: !1435, line: 52, baseType: !111, size: 32, offset: 224)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1471, file: !1435, line: 55, baseType: !1495, size: 1024, offset: 256)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 1024, elements: !1496)
!1496 = !{!1497}
!1497 = !DISubrange(count: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1471, file: !1435, line: 58, baseType: !1499, size: 2048, offset: 1280)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 2048, elements: !78)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1471, file: !1435, line: 60, baseType: !1501, size: 384, offset: 3328)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 384, elements: !1502)
!1502 = !{!1503}
!1503 = !DISubrange(count: 12)
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1471, file: !1435, line: 62, baseType: !1505, size: 384, offset: 3712)
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1471, file: !1435, line: 62, size: 384, elements: !1506)
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1505, file: !1435, line: 63, baseType: !1501, size: 384)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1505, file: !1435, line: 64, baseType: !1501, size: 384)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1453, file: !1435, line: 351, baseType: !1510, size: 1088)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1435, line: 79, size: 1088, elements: !1511)
!1511 = !{!1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1585}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1510, file: !1435, line: 80, baseType: !111, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1510, file: !1435, line: 81, baseType: !111, size: 32, offset: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1510, file: !1435, line: 82, baseType: !111, size: 32, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1510, file: !1435, line: 83, baseType: !111, size: 32, offset: 96)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1510, file: !1435, line: 84, baseType: !111, size: 32, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1510, file: !1435, line: 85, baseType: !111, size: 32, offset: 160)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1510, file: !1435, line: 86, baseType: !111, size: 32, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1510, file: !1435, line: 88, baseType: !1466, size: 640, offset: 224)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1510, file: !1435, line: 89, baseType: !113, size: 8, offset: 864)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1510, file: !1435, line: 90, baseType: !113, size: 8, offset: 872)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1510, file: !1435, line: 91, baseType: !113, size: 8, offset: 880)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1510, file: !1435, line: 92, baseType: !113, size: 8, offset: 888)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1510, file: !1435, line: 93, baseType: !113, size: 8, offset: 896)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1510, file: !1435, line: 94, baseType: !113, size: 8, offset: 904)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1510, file: !1435, line: 95, baseType: !1527, size: 64, offset: 960)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1529, line: 11, size: 128, elements: !1530)
!1529 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1528, file: !1529, line: 12, baseType: !643, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1528, file: !1529, line: 13, baseType: !1533, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1535, line: 103, size: 1344, elements: !1536)
!1535 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1536 = !{!1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1565, !1566, !1567}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1534, file: !1535, line: 109, baseType: !70, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1534, file: !1535, line: 110, baseType: !70, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1534, file: !1535, line: 111, baseType: !70, size: 64, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1534, file: !1535, line: 112, baseType: !70, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1534, file: !1535, line: 113, baseType: !70, size: 64, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1534, file: !1535, line: 114, baseType: !70, size: 64, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1534, file: !1535, line: 117, baseType: !70, size: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1534, file: !1535, line: 118, baseType: !70, size: 64, offset: 448)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1534, file: !1535, line: 119, baseType: !70, size: 64, offset: 512)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1534, file: !1535, line: 120, baseType: !70, size: 64, offset: 576)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1534, file: !1535, line: 121, baseType: !70, size: 64, offset: 640)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1534, file: !1535, line: 122, baseType: !70, size: 64, offset: 704)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1534, file: !1535, line: 123, baseType: !70, size: 64, offset: 768)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1534, file: !1535, line: 124, baseType: !70, size: 64, offset: 832)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1534, file: !1535, line: 125, baseType: !70, size: 64, offset: 896)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1534, file: !1535, line: 139, baseType: !70, size: 64, offset: 960)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1534, file: !1535, line: 142, baseType: !70, size: 64, offset: 1024)
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1534, file: !1535, line: 144, baseType: !1555, size: 64, offset: 1088)
!1555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1534, file: !1535, line: 144, size: 64, elements: !1556)
!1556 = !{!1557, !1558, !1559}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1555, file: !1535, line: 146, baseType: !93, size: 16)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1555, file: !1535, line: 148, baseType: !88, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1555, file: !1535, line: 150, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1535, line: 59, size: 64, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1560, file: !1535, line: 61, baseType: !88, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1560, file: !1535, line: 63, baseType: !88, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1560, file: !1535, line: 65, baseType: !88, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1534, file: !1535, line: 153, baseType: !70, size: 64, offset: 1152)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1534, file: !1535, line: 154, baseType: !70, size: 64, offset: 1216)
!1567 = !DIDerivedType(tag: DW_TAG_member, scope: !1534, file: !1535, line: 156, baseType: !1568, size: 64, offset: 1280)
!1568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1534, file: !1535, line: 156, size: 64, elements: !1569)
!1569 = !{!1570, !1571, !1572}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1568, file: !1535, line: 158, baseType: !93, size: 16)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1568, file: !1535, line: 160, baseType: !88, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1568, file: !1535, line: 162, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1535, line: 69, size: 64, elements: !1574)
!1574 = !{!1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1573, file: !1535, line: 71, baseType: !88, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1573, file: !1535, line: 73, baseType: !88, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1573, file: !1535, line: 75, baseType: !88, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1573, file: !1535, line: 77, baseType: !88, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1573, file: !1535, line: 80, baseType: !88, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1573, file: !1535, line: 83, baseType: !88, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1573, file: !1535, line: 86, baseType: !88, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1573, file: !1535, line: 88, baseType: !88, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1573, file: !1535, line: 93, baseType: !88, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1573, file: !1535, line: 100, baseType: !88, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1510, file: !1435, line: 96, baseType: !111, size: 32, offset: 1024)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1453, file: !1435, line: 352, baseType: !1587, size: 4608, align: 512)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1435, line: 333, size: 4608, align: 512, elements: !1588)
!1588 = !{!1589, !1590, !1599}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1587, file: !1435, line: 334, baseType: !1471, size: 4096, align: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1587, file: !1435, line: 335, baseType: !1591, size: 512, offset: 4096)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1435, line: 312, size: 512, elements: !1592)
!1592 = !{!1593, !1594, !1595}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1591, file: !1435, line: 313, baseType: !88, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1591, file: !1435, line: 314, baseType: !88, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1591, file: !1435, line: 315, baseType: !1596, size: 384, offset: 128)
!1596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 384, elements: !1597)
!1597 = !{!1598}
!1598 = !DISubrange(count: 6)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1587, file: !1435, line: 336, baseType: !1600, offset: 4608)
!1600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, elements: !696)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1453, file: !1435, line: 353, baseType: !1602, size: 32768)
!1602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 32768, elements: !1603)
!1603 = !{!1604}
!1604 = !DISubrange(count: 4096)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1434, file: !1435, line: 484, baseType: !1440, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1434, file: !1435, line: 491, baseType: !1607, size: 128, offset: 256)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1435, line: 404, size: 128, elements: !1608)
!1608 = !{!1609, !1610, !1611}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1607, file: !1435, line: 424, baseType: !88, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1607, file: !1435, line: 432, baseType: !7, size: 32, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1607, file: !1435, line: 440, baseType: !7, size: 32, offset: 96)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1434, file: !1435, line: 498, baseType: !1607, size: 128, offset: 384)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1434, file: !1435, line: 508, baseType: !1441, size: 33280, align: 512, offset: 512)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !73)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !643)
!1622 = !{!0, !1623, !1625, !1628, !1630, !1632, !1639, !1641, !1665, !1670, !1675, !1678, !1681}
!1623 = !DIGlobalVariableExpression(var: !1624, expr: !DIExpression())
!1624 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_processor_ffh_cstate_probe225", scope: !2, file: !3, line: 205, type: !115, isLocal: true, isDefinition: true)
!1625 = !DIGlobalVariableExpression(var: !1626, expr: !DIExpression())
!1626 = distinct !DIGlobalVariable(scope: null, file: !3, line: 209, type: !1627, isLocal: true, isDefinition: true)
!1627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 40, elements: !54)
!1628 = !DIGlobalVariableExpression(var: !1629, expr: !DIExpression())
!1629 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_processor_ffh_cstate_enter226", scope: !2, file: !3, line: 216, type: !115, isLocal: true, isDefinition: true)
!1630 = !DIGlobalVariableExpression(var: !1631, expr: !DIExpression())
!1631 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_cstate__227_237_ffh_cstate_init3228", scope: !2, file: !3, line: 237, type: !115, isLocal: true, isDefinition: true)
!1632 = !DIGlobalVariableExpression(var: !1633, expr: !DIExpression())
!1633 = distinct !DIGlobalVariable(name: "__exitcall_ffh_cstate_exit", scope: !2, file: !3, line: 238, type: !1634, isLocal: true, isDefinition: true)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !1635, line: 120, baseType: !1636)
!1635 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null}
!1639 = !DIGlobalVariableExpression(var: !1640, expr: !DIExpression())
!1640 = distinct !DIGlobalVariable(name: "cpu_cstate_entry", scope: !2, file: !3, line: 116, type: !116, isLocal: true, isDefinition: true)
!1641 = !DIGlobalVariableExpression(var: !1642, expr: !DIExpression())
!1642 = distinct !DIGlobalVariable(name: "__key", scope: !1643, file: !1644, line: 310, type: !1663, isLocal: true, isDefinition: true)
!1643 = distinct !DISubprogram(name: "call_on_cpu", scope: !1644, file: !1644, line: 305, type: !1645, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1650)
!1644 = !DIFile(filename: "./include/acpi/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5439c2680e180b2809cf646c46c358d2")
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!51, !51, !1647, !115, !107}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!643, !115}
!1650 = !{!1651, !1652, !1653, !1654, !1655, !1659, !1661}
!1651 = !DILocalVariable(name: "cpu", arg: 1, scope: !1643, file: !1644, line: 305, type: !51)
!1652 = !DILocalVariable(name: "fn", arg: 2, scope: !1643, file: !1644, line: 305, type: !1647)
!1653 = !DILocalVariable(name: "arg", arg: 3, scope: !1643, file: !1644, line: 305, type: !115)
!1654 = !DILocalVariable(name: "direct", arg: 4, scope: !1643, file: !1644, line: 306, type: !107)
!1655 = !DILocalVariable(name: "pscr_ret__", scope: !1656, file: !1644, line: 308, type: !51)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !1644, line: 308, column: 46)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !1644, line: 308, column: 46)
!1658 = distinct !DILexicalBlock(scope: !1643, file: !1644, line: 308, column: 6)
!1659 = !DILocalVariable(name: "__vpp_verify", scope: !1660, file: !1644, line: 308, type: !640)
!1660 = distinct !DILexicalBlock(scope: !1656, file: !1644, line: 308, column: 46)
!1661 = !DILocalVariable(name: "pfo_val__", scope: !1662, file: !1644, line: 308, type: !111)
!1662 = distinct !DILexicalBlock(scope: !1656, file: !1644, line: 308, column: 46)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1664, line: 206, elements: !506)
!1664 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1665 = !DIGlobalVariableExpression(var: !1666, expr: !DIExpression())
!1666 = distinct !DIGlobalVariable(scope: null, file: !3, line: 142, type: !1667, isLocal: true, isDefinition: true)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 560, elements: !1668)
!1668 = !{!1669}
!1669 = !DISubrange(count: 70)
!1670 = !DIGlobalVariableExpression(var: !1671, expr: !DIExpression())
!1671 = distinct !DIGlobalVariable(scope: null, file: !3, line: 157, type: !1672, isLocal: true, isDefinition: true)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 400, elements: !1673)
!1673 = !{!1674}
!1674 = !DISubrange(count: 50)
!1675 = !DIGlobalVariableExpression(var: !1676, expr: !DIExpression())
!1676 = distinct !DIGlobalVariable(scope: null, file: !3, line: 162, type: !1677, isLocal: true, isDefinition: true)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 160, elements: !1467)
!1678 = !DIGlobalVariableExpression(var: !1679, expr: !DIExpression())
!1679 = distinct !DIGlobalVariable(name: "mwait_supported", scope: !2, file: !3, line: 118, type: !1680, isLocal: true, isDefinition: true)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 128, elements: !125)
!1681 = !DIGlobalVariableExpression(var: !1682, expr: !DIExpression())
!1682 = distinct !DIGlobalVariable(name: "ds", scope: !1683, file: !1684, line: 608, type: !1685, isLocal: true, isDefinition: true)
!1683 = distinct !DISubprogram(name: "mds_clear_cpu_buffers", scope: !1684, file: !1684, line: 606, type: !1637, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1684 = !DIFile(filename: "./arch/x86/include/asm/nospec-branch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f9617eaa9a9e58d8d33cc8c440e36ce0")
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!1686 = !{i32 7, !"Dwarf Version", i32 5}
!1687 = !{i32 2, !"Debug Info Version", i32 3}
!1688 = !{i32 1, !"wchar_size", i32 2}
!1689 = !{i32 8, !"cf-protection-branch", i32 1}
!1690 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1691 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1692 = !{i32 1, !"Code Model", i32 2}
!1693 = !{i32 1, !"override-stack-alignment", i32 8}
!1694 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1695 = distinct !DISubprogram(name: "acpi_processor_power_init_bm_check", scope: !3, file: !3, line: 29, type: !1696, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1712)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{null, !1698, !7}
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_flags", file: !1644, line: 209, size: 16, elements: !1700)
!1700 = !{!1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1699, file: !1644, line: 210, baseType: !113, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1699, file: !1644, line: 211, baseType: !113, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !1699, file: !1644, line: 212, baseType: !113, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1699, file: !1644, line: 213, baseType: !113, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "bm_control", scope: !1699, file: !1644, line: 214, baseType: !113, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "bm_check", scope: !1699, file: !1644, line: 215, baseType: !113, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "has_cst", scope: !1699, file: !1644, line: 216, baseType: !113, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "has_lpi", scope: !1699, file: !1644, line: 217, baseType: !113, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "power_setup_done", scope: !1699, file: !1644, line: 218, baseType: !113, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "bm_rld_set", scope: !1699, file: !1644, line: 219, baseType: !113, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "need_hotplug_init", scope: !1699, file: !1644, line: 220, baseType: !113, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1712 = !{!1713, !1714, !1715, !1716, !1719}
!1713 = !DILocalVariable(name: "flags", arg: 1, scope: !1695, file: !3, line: 29, type: !1698)
!1714 = !DILocalVariable(name: "cpu", arg: 2, scope: !1695, file: !3, line: 30, type: !7)
!1715 = !DILocalVariable(name: "c", scope: !1695, file: !3, line: 32, type: !30)
!1716 = !DILocalVariable(name: "__vpp_verify", scope: !1717, file: !3, line: 32, type: !640)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 32, column: 27)
!1718 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 32, column: 27)
!1719 = !DILocalVariable(name: "__ptr", scope: !1720, file: !3, line: 32, type: !70)
!1720 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 32, column: 27)
!1721 = !DILocation(line: 29, column: 70, scope: !1695)
!1722 = !DILocation(line: 30, column: 19, scope: !1695)
!1723 = !DILocation(line: 32, column: 2, scope: !1695)
!1724 = !DILocation(line: 32, column: 22, scope: !1695)
!1725 = !DILocation(line: 32, column: 27, scope: !1718)
!1726 = !DILocation(line: 32, column: 27, scope: !1717)
!1727 = !DILocation(line: 32, column: 27, scope: !1720)
!1728 = !DILocation(line: 34, column: 2, scope: !1695)
!1729 = !DILocation(line: 34, column: 18, scope: !1695)
!1730 = !DILocation(line: 35, column: 6, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 35, column: 6)
!1732 = !DILocation(line: 35, column: 24, scope: !1731)
!1733 = !DILocation(line: 35, column: 6, scope: !1695)
!1734 = !DILocation(line: 36, column: 3, scope: !1731)
!1735 = !DILocation(line: 36, column: 19, scope: !1731)
!1736 = !DILocation(line: 37, column: 11, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 37, column: 11)
!1738 = !DILocation(line: 37, column: 14, scope: !1737)
!1739 = !DILocation(line: 37, column: 25, scope: !1737)
!1740 = !DILocation(line: 37, column: 11, scope: !1731)
!1741 = !DILocation(line: 43, column: 3, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 37, column: 46)
!1743 = !DILocation(line: 43, column: 19, scope: !1742)
!1744 = !DILocation(line: 44, column: 2, scope: !1742)
!1745 = !DILocation(line: 52, column: 6, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 52, column: 6)
!1747 = !DILocation(line: 52, column: 9, scope: !1746)
!1748 = !DILocation(line: 52, column: 20, scope: !1746)
!1749 = !DILocation(line: 52, column: 40, scope: !1746)
!1750 = !DILocation(line: 53, column: 7, scope: !1746)
!1751 = !DILocation(line: 53, column: 10, scope: !1746)
!1752 = !DILocation(line: 53, column: 14, scope: !1746)
!1753 = !DILocation(line: 53, column: 20, scope: !1746)
!1754 = !DILocation(line: 53, column: 24, scope: !1746)
!1755 = !DILocation(line: 53, column: 27, scope: !1746)
!1756 = !DILocation(line: 53, column: 31, scope: !1746)
!1757 = !DILocation(line: 53, column: 36, scope: !1746)
!1758 = !DILocation(line: 53, column: 39, scope: !1746)
!1759 = !DILocation(line: 53, column: 42, scope: !1746)
!1760 = !DILocation(line: 53, column: 52, scope: !1746)
!1761 = !DILocation(line: 52, column: 6, scope: !1695)
!1762 = !DILocation(line: 54, column: 4, scope: !1746)
!1763 = !DILocation(line: 54, column: 22, scope: !1746)
!1764 = !DILocation(line: 56, column: 6, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 56, column: 6)
!1766 = !DILocation(line: 56, column: 9, scope: !1765)
!1767 = !DILocation(line: 56, column: 20, scope: !1765)
!1768 = !DILocation(line: 56, column: 6, scope: !1695)
!1769 = !DILocation(line: 57, column: 7, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 57, column: 7)
!1771 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 56, column: 43)
!1772 = !DILocation(line: 57, column: 10, scope: !1770)
!1773 = !DILocation(line: 57, column: 14, scope: !1770)
!1774 = !DILocation(line: 57, column: 18, scope: !1770)
!1775 = !DILocation(line: 57, column: 22, scope: !1770)
!1776 = !DILocation(line: 57, column: 25, scope: !1770)
!1777 = !DILocation(line: 57, column: 29, scope: !1770)
!1778 = !DILocation(line: 57, column: 34, scope: !1770)
!1779 = !DILocation(line: 57, column: 37, scope: !1770)
!1780 = !DILocation(line: 57, column: 40, scope: !1770)
!1781 = !DILocation(line: 57, column: 50, scope: !1770)
!1782 = !DILocation(line: 57, column: 58, scope: !1770)
!1783 = !DILocation(line: 58, column: 7, scope: !1770)
!1784 = !DILocation(line: 58, column: 10, scope: !1770)
!1785 = !DILocation(line: 58, column: 23, scope: !1770)
!1786 = !DILocation(line: 57, column: 7, scope: !1771)
!1787 = !DILocation(line: 66, column: 4, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 58, column: 33)
!1789 = !DILocation(line: 66, column: 20, scope: !1788)
!1790 = !DILocation(line: 72, column: 4, scope: !1788)
!1791 = !DILocation(line: 72, column: 22, scope: !1788)
!1792 = !DILocation(line: 73, column: 3, scope: !1788)
!1793 = !DILocation(line: 74, column: 2, scope: !1771)
!1794 = !DILocation(line: 76, column: 6, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 76, column: 6)
!1796 = !DILocation(line: 76, column: 9, scope: !1795)
!1797 = !DILocation(line: 76, column: 20, scope: !1795)
!1798 = !DILocation(line: 76, column: 6, scope: !1695)
!1799 = !DILocation(line: 82, column: 3, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 76, column: 43)
!1801 = !DILocation(line: 82, column: 19, scope: !1800)
!1802 = !DILocation(line: 88, column: 3, scope: !1800)
!1803 = !DILocation(line: 88, column: 21, scope: !1800)
!1804 = !DILocation(line: 89, column: 2, scope: !1800)
!1805 = !DILocation(line: 90, column: 6, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 90, column: 6)
!1807 = !DILocation(line: 90, column: 9, scope: !1806)
!1808 = !DILocation(line: 90, column: 20, scope: !1806)
!1809 = !DILocation(line: 90, column: 38, scope: !1806)
!1810 = !DILocation(line: 90, column: 41, scope: !1806)
!1811 = !DILocation(line: 90, column: 44, scope: !1806)
!1812 = !DILocation(line: 90, column: 48, scope: !1806)
!1813 = !DILocation(line: 90, column: 6, scope: !1695)
!1814 = !DILocation(line: 97, column: 3, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 90, column: 57)
!1816 = !DILocation(line: 97, column: 19, scope: !1815)
!1817 = !DILocation(line: 103, column: 3, scope: !1815)
!1818 = !DILocation(line: 103, column: 21, scope: !1815)
!1819 = !DILocation(line: 104, column: 2, scope: !1815)
!1820 = !DILocation(line: 105, column: 1, scope: !1695)
!1821 = distinct !DISubprogram(name: "num_online_cpus", scope: !423, file: !423, line: 1072, type: !1822, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!7}
!1824 = !DILocation(line: 1074, column: 9, scope: !1821)
!1825 = !DILocation(line: 1074, column: 2, scope: !1821)
!1826 = distinct !DISubprogram(name: "acpi_processor_ffh_cstate_probe", scope: !3, file: !3, line: 168, type: !1827, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1851)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!51, !7, !1829, !1841}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_cx", file: !1644, line: 68, size: 416, elements: !1831)
!1831 = !{!1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1830, file: !1644, line: 69, baseType: !113, size: 8)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1830, file: !1644, line: 70, baseType: !113, size: 8, offset: 8)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1830, file: !1644, line: 71, baseType: !111, size: 32, offset: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !1830, file: !1644, line: 72, baseType: !113, size: 8, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1830, file: !1644, line: 73, baseType: !113, size: 8, offset: 72)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1830, file: !1644, line: 74, baseType: !111, size: 32, offset: 96)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "bm_sts_skip", scope: !1830, file: !1644, line: 75, baseType: !113, size: 8, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1830, file: !1644, line: 76, baseType: !1840, size: 256, offset: 136)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 256, elements: !1496)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_power_register", file: !1644, line: 58, size: 120, elements: !1843)
!1843 = !{!1844, !1845, !1846, !1847, !1848, !1849, !1850}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !1842, file: !1644, line: 59, baseType: !113, size: 8)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1842, file: !1644, line: 60, baseType: !93, size: 16, offset: 8)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1842, file: !1644, line: 61, baseType: !113, size: 8, offset: 24)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !1842, file: !1644, line: 62, baseType: !113, size: 8, offset: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1842, file: !1644, line: 63, baseType: !113, size: 8, offset: 40)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !1842, file: !1644, line: 64, baseType: !113, size: 8, offset: 48)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1842, file: !1644, line: 65, baseType: !88, size: 64, offset: 56)
!1851 = !{!1852, !1853, !1854, !1855, !1856, !1857, !1860, !1862, !1863, !1866}
!1852 = !DILocalVariable(name: "cpu", arg: 1, scope: !1826, file: !3, line: 168, type: !7)
!1853 = !DILocalVariable(name: "cx", arg: 2, scope: !1826, file: !3, line: 169, type: !1829)
!1854 = !DILocalVariable(name: "reg", arg: 3, scope: !1826, file: !3, line: 169, type: !1841)
!1855 = !DILocalVariable(name: "percpu_entry", scope: !1826, file: !3, line: 171, type: !116)
!1856 = !DILocalVariable(name: "c", scope: !1826, file: !3, line: 172, type: !30)
!1857 = !DILocalVariable(name: "__vpp_verify", scope: !1858, file: !3, line: 172, type: !640)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 172, column: 27)
!1859 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 172, column: 27)
!1860 = !DILocalVariable(name: "__ptr", scope: !1861, file: !3, line: 172, type: !70)
!1861 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 172, column: 27)
!1862 = !DILocalVariable(name: "retval", scope: !1826, file: !3, line: 173, type: !643)
!1863 = !DILocalVariable(name: "__vpp_verify", scope: !1864, file: !3, line: 181, type: !640)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 181, column: 17)
!1865 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 181, column: 17)
!1866 = !DILocalVariable(name: "__ptr", scope: !1867, file: !3, line: 181, type: !70)
!1867 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 181, column: 17)
!1868 = !DILocation(line: 168, column: 50, scope: !1826)
!1869 = !DILocation(line: 169, column: 29, scope: !1826)
!1870 = !DILocation(line: 169, column: 61, scope: !1826)
!1871 = !DILocation(line: 171, column: 2, scope: !1826)
!1872 = !DILocation(line: 171, column: 23, scope: !1826)
!1873 = !DILocation(line: 172, column: 2, scope: !1826)
!1874 = !DILocation(line: 172, column: 22, scope: !1826)
!1875 = !DILocation(line: 172, column: 27, scope: !1859)
!1876 = !DILocation(line: 172, column: 27, scope: !1858)
!1877 = !DILocation(line: 172, column: 27, scope: !1861)
!1878 = !DILocation(line: 173, column: 2, scope: !1826)
!1879 = !DILocation(line: 173, column: 7, scope: !1826)
!1880 = !DILocation(line: 175, column: 7, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 175, column: 6)
!1882 = !DILocation(line: 175, column: 24, scope: !1881)
!1883 = !DILocation(line: 175, column: 27, scope: !1881)
!1884 = !DILocation(line: 175, column: 30, scope: !1881)
!1885 = !DILocation(line: 175, column: 42, scope: !1881)
!1886 = !DILocation(line: 175, column: 6, scope: !1826)
!1887 = !DILocation(line: 176, column: 3, scope: !1881)
!1888 = !DILocation(line: 178, column: 6, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 178, column: 6)
!1890 = !DILocation(line: 178, column: 11, scope: !1889)
!1891 = !DILocation(line: 178, column: 22, scope: !1889)
!1892 = !DILocation(line: 178, column: 6, scope: !1826)
!1893 = !DILocation(line: 179, column: 3, scope: !1889)
!1894 = !DILocation(line: 181, column: 17, scope: !1865)
!1895 = !DILocation(line: 181, column: 17, scope: !1864)
!1896 = !DILocation(line: 181, column: 17, scope: !1867)
!1897 = !DILocation(line: 181, column: 15, scope: !1826)
!1898 = !DILocation(line: 182, column: 2, scope: !1826)
!1899 = !DILocation(line: 182, column: 16, scope: !1826)
!1900 = !DILocation(line: 182, column: 23, scope: !1826)
!1901 = !DILocation(line: 182, column: 27, scope: !1826)
!1902 = !DILocation(line: 182, column: 34, scope: !1826)
!1903 = !DILocation(line: 182, column: 38, scope: !1826)
!1904 = !DILocation(line: 183, column: 2, scope: !1826)
!1905 = !DILocation(line: 183, column: 16, scope: !1826)
!1906 = !DILocation(line: 183, column: 23, scope: !1826)
!1907 = !DILocation(line: 183, column: 27, scope: !1826)
!1908 = !DILocation(line: 183, column: 34, scope: !1826)
!1909 = !DILocation(line: 183, column: 38, scope: !1826)
!1910 = !DILocation(line: 187, column: 23, scope: !1826)
!1911 = !DILocation(line: 187, column: 65, scope: !1826)
!1912 = !DILocation(line: 187, column: 11, scope: !1826)
!1913 = !DILocation(line: 187, column: 9, scope: !1826)
!1914 = !DILocation(line: 189, column: 6, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 189, column: 6)
!1916 = !DILocation(line: 189, column: 13, scope: !1915)
!1917 = !DILocation(line: 189, column: 6, scope: !1826)
!1918 = !DILocation(line: 191, column: 41, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 189, column: 19)
!1920 = !DILocation(line: 191, column: 45, scope: !1919)
!1921 = !DILocation(line: 191, column: 3, scope: !1919)
!1922 = !DILocation(line: 191, column: 17, scope: !1919)
!1923 = !DILocation(line: 191, column: 24, scope: !1919)
!1924 = !DILocation(line: 191, column: 28, scope: !1919)
!1925 = !DILocation(line: 191, column: 35, scope: !1919)
!1926 = !DILocation(line: 191, column: 39, scope: !1919)
!1927 = !DILocation(line: 192, column: 3, scope: !1919)
!1928 = !DILocation(line: 192, column: 17, scope: !1919)
!1929 = !DILocation(line: 192, column: 24, scope: !1919)
!1930 = !DILocation(line: 192, column: 28, scope: !1919)
!1931 = !DILocation(line: 192, column: 35, scope: !1919)
!1932 = !DILocation(line: 192, column: 39, scope: !1919)
!1933 = !DILocation(line: 193, column: 2, scope: !1919)
!1934 = !DILocation(line: 200, column: 7, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 200, column: 6)
!1936 = !DILocation(line: 200, column: 10, scope: !1935)
!1937 = !DILocation(line: 200, column: 21, scope: !1935)
!1938 = !DILocation(line: 200, column: 42, scope: !1935)
!1939 = !DILocation(line: 200, column: 47, scope: !1935)
!1940 = !DILocation(line: 200, column: 52, scope: !1935)
!1941 = !DILocation(line: 200, column: 64, scope: !1935)
!1942 = !DILocation(line: 200, column: 6, scope: !1826)
!1943 = !DILocation(line: 201, column: 3, scope: !1935)
!1944 = !DILocation(line: 201, column: 7, scope: !1935)
!1945 = !DILocation(line: 201, column: 19, scope: !1935)
!1946 = !DILocation(line: 203, column: 9, scope: !1826)
!1947 = !DILocation(line: 203, column: 2, scope: !1826)
!1948 = !DILocation(line: 204, column: 1, scope: !1826)
!1949 = !DILocation(line: 305, column: 35, scope: !1643)
!1950 = !DILocation(line: 305, column: 47, scope: !1643)
!1951 = !DILocation(line: 305, column: 66, scope: !1643)
!1952 = !DILocation(line: 306, column: 15, scope: !1643)
!1953 = !DILocation(line: 308, column: 6, scope: !1658)
!1954 = !{i8 0, i8 2}
!1955 = !DILocation(line: 308, column: 13, scope: !1658)
!1956 = !DILocation(line: 308, column: 17, scope: !1658)
!1957 = !DILocation(line: 308, column: 36, scope: !1658)
!1958 = !DILocation(line: 308, column: 39, scope: !1658)
!1959 = !DILocation(line: 308, column: 46, scope: !1657)
!1960 = !DILocation(line: 308, column: 46, scope: !1656)
!1961 = !DILocation(line: 308, column: 46, scope: !1660)
!1962 = !DILocation(line: 308, column: 46, scope: !1662)
!1963 = !{i64 2153885426}
!1964 = !DILocation(line: 308, column: 43, scope: !1658)
!1965 = !DILocation(line: 308, column: 6, scope: !1643)
!1966 = !DILocation(line: 309, column: 10, scope: !1658)
!1967 = !DILocation(line: 309, column: 13, scope: !1658)
!1968 = !DILocation(line: 309, column: 3, scope: !1658)
!1969 = !DILocation(line: 310, column: 9, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1643, file: !1644, line: 310, column: 9)
!1971 = !DILocation(line: 310, column: 9, scope: !1643)
!1972 = !DILocation(line: 310, column: 2, scope: !1643)
!1973 = !DILocation(line: 311, column: 1, scope: !1643)
!1974 = distinct !DISubprogram(name: "acpi_processor_ffh_cstate_probe_cpu", scope: !3, file: !3, line: 122, type: !1648, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1975)
!1975 = !{!1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986}
!1976 = !DILocalVariable(name: "_cx", arg: 1, scope: !1974, file: !3, line: 122, type: !115)
!1977 = !DILocalVariable(name: "cx", scope: !1974, file: !3, line: 124, type: !1829)
!1978 = !DILocalVariable(name: "retval", scope: !1974, file: !3, line: 125, type: !643)
!1979 = !DILocalVariable(name: "eax", scope: !1974, file: !3, line: 126, type: !7)
!1980 = !DILocalVariable(name: "ebx", scope: !1974, file: !3, line: 126, type: !7)
!1981 = !DILocalVariable(name: "ecx", scope: !1974, file: !3, line: 126, type: !7)
!1982 = !DILocalVariable(name: "edx", scope: !1974, file: !3, line: 126, type: !7)
!1983 = !DILocalVariable(name: "edx_part", scope: !1974, file: !3, line: 127, type: !7)
!1984 = !DILocalVariable(name: "cstate_type", scope: !1974, file: !3, line: 128, type: !7)
!1985 = !DILocalVariable(name: "num_cstate_subtype", scope: !1974, file: !3, line: 129, type: !7)
!1986 = !DILabel(scope: !1974, name: "out", file: !3, line: 164)
!1987 = !DILocation(line: 122, column: 55, scope: !1974)
!1988 = !DILocation(line: 124, column: 2, scope: !1974)
!1989 = !DILocation(line: 124, column: 28, scope: !1974)
!1990 = !DILocation(line: 124, column: 33, scope: !1974)
!1991 = !DILocation(line: 125, column: 2, scope: !1974)
!1992 = !DILocation(line: 125, column: 7, scope: !1974)
!1993 = !DILocation(line: 126, column: 2, scope: !1974)
!1994 = !DILocation(line: 126, column: 15, scope: !1974)
!1995 = !DILocation(line: 126, column: 20, scope: !1974)
!1996 = !DILocation(line: 126, column: 25, scope: !1974)
!1997 = !DILocation(line: 126, column: 30, scope: !1974)
!1998 = !DILocation(line: 127, column: 2, scope: !1974)
!1999 = !DILocation(line: 127, column: 15, scope: !1974)
!2000 = !DILocation(line: 128, column: 2, scope: !1974)
!2001 = !DILocation(line: 128, column: 15, scope: !1974)
!2002 = !DILocation(line: 129, column: 2, scope: !1974)
!2003 = !DILocation(line: 129, column: 15, scope: !1974)
!2004 = !DILocation(line: 131, column: 2, scope: !1974)
!2005 = !DILocation(line: 134, column: 18, scope: !1974)
!2006 = !DILocation(line: 134, column: 22, scope: !1974)
!2007 = !DILocation(line: 134, column: 30, scope: !1974)
!2008 = !DILocation(line: 134, column: 54, scope: !1974)
!2009 = !DILocation(line: 135, column: 23, scope: !1974)
!2010 = !DILocation(line: 134, column: 14, scope: !1974)
!2011 = !DILocation(line: 136, column: 13, scope: !1974)
!2012 = !DILocation(line: 136, column: 21, scope: !1974)
!2013 = !DILocation(line: 136, column: 33, scope: !1974)
!2014 = !DILocation(line: 136, column: 17, scope: !1974)
!2015 = !DILocation(line: 136, column: 11, scope: !1974)
!2016 = !DILocation(line: 137, column: 23, scope: !1974)
!2017 = !DILocation(line: 137, column: 32, scope: !1974)
!2018 = !DILocation(line: 137, column: 21, scope: !1974)
!2019 = !DILocation(line: 139, column: 9, scope: !1974)
!2020 = !DILocation(line: 141, column: 6, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 141, column: 6)
!2022 = !DILocation(line: 141, column: 25, scope: !2021)
!2023 = !DILocation(line: 141, column: 6, scope: !1974)
!2024 = !DILocation(line: 142, column: 3, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 142, column: 3)
!2026 = distinct !DILexicalBlock(scope: !2021, file: !3, line: 141, column: 31)
!2027 = !DILocation(line: 142, column: 3, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 142, column: 3)
!2029 = !DILocation(line: 144, column: 10, scope: !2026)
!2030 = !DILocation(line: 145, column: 3, scope: !2026)
!2031 = !DILocation(line: 149, column: 8, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 149, column: 6)
!2033 = !DILocation(line: 149, column: 12, scope: !2032)
!2034 = !DILocation(line: 149, column: 47, scope: !2032)
!2035 = !DILocation(line: 150, column: 8, scope: !2032)
!2036 = !DILocation(line: 150, column: 12, scope: !2032)
!2037 = !DILocation(line: 149, column: 6, scope: !1974)
!2038 = !DILocation(line: 151, column: 10, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 150, column: 43)
!2040 = !DILocation(line: 152, column: 3, scope: !2039)
!2041 = !DILocation(line: 155, column: 23, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 155, column: 6)
!2043 = !DILocation(line: 155, column: 7, scope: !2042)
!2044 = !DILocation(line: 155, column: 6, scope: !1974)
!2045 = !DILocation(line: 156, column: 19, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 155, column: 37)
!2047 = !DILocation(line: 156, column: 3, scope: !2046)
!2048 = !DILocation(line: 156, column: 32, scope: !2046)
!2049 = !DILocation(line: 157, column: 3, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 157, column: 3)
!2051 = !DILocation(line: 157, column: 3, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 157, column: 3)
!2053 = !DILocation(line: 160, column: 2, scope: !2046)
!2054 = !DILocation(line: 161, column: 11, scope: !1974)
!2055 = !DILocation(line: 161, column: 15, scope: !1974)
!2056 = !DILocation(line: 163, column: 4, scope: !1974)
!2057 = !DILocation(line: 163, column: 8, scope: !1974)
!2058 = !DILocation(line: 161, column: 2, scope: !1974)
!2059 = !DILocation(line: 164, column: 1, scope: !1974)
!2060 = !DILocation(line: 165, column: 9, scope: !1974)
!2061 = !DILocation(line: 166, column: 1, scope: !1974)
!2062 = !DILocation(line: 165, column: 2, scope: !1974)
!2063 = distinct !DISubprogram(name: "acpi_processor_ffh_cstate_enter", scope: !3, file: !3, line: 207, type: !2064, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{null, !1829}
!2066 = !{!2067, !2068, !2069, !2072, !2074, !2076, !2077, !2080}
!2067 = !DILocalVariable(name: "cx", arg: 1, scope: !2063, file: !3, line: 207, type: !1829)
!2068 = !DILocalVariable(name: "cpu", scope: !2063, file: !3, line: 209, type: !7)
!2069 = !DILocalVariable(name: "pscr_ret__", scope: !2070, file: !3, line: 209, type: !51)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 209, column: 21)
!2071 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 209, column: 21)
!2072 = !DILocalVariable(name: "__vpp_verify", scope: !2073, file: !3, line: 209, type: !640)
!2073 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 209, column: 21)
!2074 = !DILocalVariable(name: "pfo_val__", scope: !2075, file: !3, line: 209, type: !111)
!2075 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 209, column: 21)
!2076 = !DILocalVariable(name: "percpu_entry", scope: !2063, file: !3, line: 210, type: !116)
!2077 = !DILocalVariable(name: "__vpp_verify", scope: !2078, file: !3, line: 212, type: !640)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 212, column: 17)
!2079 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 212, column: 17)
!2080 = !DILocalVariable(name: "__ptr", scope: !2081, file: !3, line: 212, type: !70)
!2081 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 212, column: 17)
!2082 = !DILocation(line: 207, column: 74, scope: !2063)
!2083 = !DILocation(line: 209, column: 2, scope: !2063)
!2084 = !DILocation(line: 209, column: 15, scope: !2063)
!2085 = !DILocation(line: 209, column: 21, scope: !2071)
!2086 = !DILocation(line: 209, column: 21, scope: !2070)
!2087 = !DILocation(line: 209, column: 21, scope: !2073)
!2088 = !DILocation(line: 209, column: 21, scope: !2075)
!2089 = !{i64 2153928856}
!2090 = !DILocation(line: 210, column: 2, scope: !2063)
!2091 = !DILocation(line: 210, column: 23, scope: !2063)
!2092 = !DILocation(line: 212, column: 17, scope: !2079)
!2093 = !DILocation(line: 212, column: 17, scope: !2078)
!2094 = !DILocation(line: 212, column: 17, scope: !2081)
!2095 = !DILocation(line: 212, column: 15, scope: !2063)
!2096 = !DILocation(line: 213, column: 24, scope: !2063)
!2097 = !DILocation(line: 213, column: 38, scope: !2063)
!2098 = !DILocation(line: 213, column: 45, scope: !2063)
!2099 = !DILocation(line: 213, column: 49, scope: !2063)
!2100 = !DILocation(line: 213, column: 56, scope: !2063)
!2101 = !DILocation(line: 214, column: 24, scope: !2063)
!2102 = !DILocation(line: 214, column: 38, scope: !2063)
!2103 = !DILocation(line: 214, column: 45, scope: !2063)
!2104 = !DILocation(line: 214, column: 49, scope: !2063)
!2105 = !DILocation(line: 214, column: 56, scope: !2063)
!2106 = !DILocation(line: 213, column: 2, scope: !2063)
!2107 = !DILocation(line: 215, column: 1, scope: !2063)
!2108 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !2109, file: !2109, line: 313, type: !2110, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2112)
!2109 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !1616}
!2112 = !{!2113}
!2113 = !DILocalVariable(name: "op", arg: 1, scope: !2108, file: !2109, line: 313, type: !1616)
!2114 = !DILocation(line: 313, column: 66, scope: !2108)
!2115 = !DILocation(line: 313, column: 72, scope: !2108)
!2116 = distinct !DISubprogram(name: "mwait_idle_with_hints", scope: !2117, file: !2117, line: 108, type: !2118, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2120)
!2117 = !DIFile(filename: "./arch/x86/include/asm/mwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7c52f6b66d0f35fe461fc5329e919046")
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !70, !70}
!2120 = !{!2121, !2122}
!2121 = !DILocalVariable(name: "eax", arg: 1, scope: !2116, file: !2117, line: 108, type: !70)
!2122 = !DILocalVariable(name: "ecx", arg: 2, scope: !2116, file: !2117, line: 108, type: !70)
!2123 = !DILocation(line: 108, column: 65, scope: !2116)
!2124 = !DILocation(line: 108, column: 84, scope: !2116)
!2125 = !DILocation(line: 110, column: 42, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2116, file: !2117, line: 110, column: 6)
!2127 = !DILocation(line: 110, column: 6, scope: !2126)
!2128 = !DILocation(line: 110, column: 46, scope: !2126)
!2129 = !DILocation(line: 110, column: 6, scope: !2116)
!2130 = !DILocation(line: 111, column: 7, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2126, file: !2117, line: 110, column: 78)
!2132 = !DILocation(line: 111, column: 7, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2131, file: !2117, line: 111, column: 7)
!2134 = !DILocation(line: 112, column: 4, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2133, file: !2117, line: 111, column: 52)
!2136 = !DILocation(line: 112, column: 4, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2135, file: !2117, line: 112, column: 4)
!2138 = !DILocation(line: 112, column: 4, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2137, file: !2117, line: 112, column: 4)
!2140 = !{i64 2153917476}
!2141 = !DILocation(line: 113, column: 21, scope: !2135)
!2142 = !DILocation(line: 113, column: 44, scope: !2135)
!2143 = !DILocation(line: 113, column: 4, scope: !2135)
!2144 = !DILocation(line: 114, column: 4, scope: !2135)
!2145 = !DILocation(line: 114, column: 4, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2135, file: !2117, line: 114, column: 4)
!2147 = !DILocation(line: 114, column: 4, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2146, file: !2117, line: 114, column: 4)
!2149 = !{i64 2153917610}
!2150 = !DILocation(line: 115, column: 3, scope: !2135)
!2151 = !DILocation(line: 117, column: 22, scope: !2131)
!2152 = !DILocation(line: 117, column: 45, scope: !2131)
!2153 = !DILocation(line: 117, column: 3, scope: !2131)
!2154 = !DILocation(line: 119, column: 8, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2131, file: !2117, line: 119, column: 7)
!2156 = !DILocation(line: 119, column: 7, scope: !2131)
!2157 = !DILocation(line: 120, column: 8, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !2117, line: 120, column: 8)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !2117, line: 119, column: 24)
!2160 = !DILocation(line: 120, column: 12, scope: !2158)
!2161 = !DILocation(line: 120, column: 8, scope: !2159)
!2162 = !DILocation(line: 121, column: 13, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2158, file: !2117, line: 120, column: 17)
!2164 = !DILocation(line: 121, column: 18, scope: !2163)
!2165 = !DILocation(line: 121, column: 5, scope: !2163)
!2166 = !DILocation(line: 122, column: 4, scope: !2163)
!2167 = !DILocation(line: 123, column: 17, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2158, file: !2117, line: 122, column: 11)
!2169 = !DILocation(line: 123, column: 22, scope: !2168)
!2170 = !DILocation(line: 123, column: 5, scope: !2168)
!2171 = !DILocation(line: 124, column: 5, scope: !2168)
!2172 = !DILocation(line: 126, column: 3, scope: !2159)
!2173 = !DILocation(line: 127, column: 2, scope: !2131)
!2174 = !DILocation(line: 128, column: 2, scope: !2116)
!2175 = !DILocation(line: 129, column: 1, scope: !2116)
!2176 = distinct !DISubprogram(name: "ffh_cstate_exit", scope: !3, file: !3, line: 231, type: !1637, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2177 = !DILocation(line: 233, column: 14, scope: !2176)
!2178 = !DILocation(line: 233, column: 2, scope: !2176)
!2179 = !DILocation(line: 234, column: 19, scope: !2176)
!2180 = !DILocation(line: 235, column: 1, scope: !2176)
!2181 = !DISubprogram(name: "free_percpu", scope: !2182, file: !2182, line: 134, type: !2183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2182 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!2183 = !DISubroutineType(types: !2184)
!2184 = !{null, !115}
!2185 = distinct !DISubprogram(name: "__initstub__kmod_cstate__227_237_ffh_cstate_init3", scope: !3, file: !3, line: 237, type: !2186, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!51}
!2188 = !DILocation(line: 237, column: 1, scope: !2185)
!2189 = distinct !DISubprogram(name: "ffh_cstate_init", scope: !3, file: !3, line: 218, type: !2186, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2190)
!2190 = !{!2191}
!2191 = !DILocalVariable(name: "c", scope: !2189, file: !3, line: 220, type: !30)
!2192 = !DILocation(line: 220, column: 2, scope: !2189)
!2193 = !DILocation(line: 220, column: 22, scope: !2189)
!2194 = !DILocation(line: 222, column: 6, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 222, column: 6)
!2196 = !DILocation(line: 222, column: 9, scope: !2195)
!2197 = !DILocation(line: 222, column: 20, scope: !2195)
!2198 = !DILocation(line: 222, column: 40, scope: !2195)
!2199 = !DILocation(line: 223, column: 6, scope: !2195)
!2200 = !DILocation(line: 223, column: 9, scope: !2195)
!2201 = !DILocation(line: 223, column: 20, scope: !2195)
!2202 = !DILocation(line: 223, column: 38, scope: !2195)
!2203 = !DILocation(line: 224, column: 6, scope: !2195)
!2204 = !DILocation(line: 224, column: 9, scope: !2195)
!2205 = !DILocation(line: 224, column: 20, scope: !2195)
!2206 = !DILocation(line: 222, column: 6, scope: !2189)
!2207 = !DILocation(line: 225, column: 3, scope: !2195)
!2208 = !DILocation(line: 227, column: 21, scope: !2189)
!2209 = !DILocation(line: 227, column: 19, scope: !2189)
!2210 = !DILocation(line: 228, column: 2, scope: !2189)
!2211 = !DILocation(line: 229, column: 1, scope: !2189)
!2212 = distinct !DISubprogram(name: "raw_atomic_read", scope: !2213, file: !2213, line: 442, type: !2214, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2218)
!2213 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!51, !2216}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!2218 = !{!2219}
!2219 = !DILocalVariable(name: "v", arg: 1, scope: !2212, file: !2213, line: 442, type: !2216)
!2220 = !DILocation(line: 442, column: 33, scope: !2212)
!2221 = !DILocation(line: 444, column: 26, scope: !2212)
!2222 = !DILocation(line: 444, column: 9, scope: !2212)
!2223 = !DILocation(line: 444, column: 2, scope: !2212)
!2224 = distinct !DISubprogram(name: "arch_atomic_read", scope: !2225, file: !2225, line: 17, type: !2214, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2226)
!2225 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!2226 = !{!2227}
!2227 = !DILocalVariable(name: "v", arg: 1, scope: !2224, file: !2225, line: 17, type: !2216)
!2228 = !DILocation(line: 17, column: 61, scope: !2224)
!2229 = !DILocation(line: 23, column: 9, scope: !2224)
!2230 = !DILocation(line: 23, column: 2, scope: !2224)
!2231 = distinct !DISubprogram(name: "is_percpu_thread", scope: !134, file: !134, line: 1795, type: !2232, scopeLine: 1796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!107}
!2234 = !DILocation(line: 1798, column: 10, scope: !2231)
!2235 = !DILocation(line: 1798, column: 19, scope: !2231)
!2236 = !DILocation(line: 1798, column: 25, scope: !2231)
!2237 = !DILocation(line: 1798, column: 46, scope: !2231)
!2238 = !DILocation(line: 1799, column: 4, scope: !2231)
!2239 = !DILocation(line: 1799, column: 13, scope: !2231)
!2240 = !DILocation(line: 1799, column: 30, scope: !2231)
!2241 = !DILocation(line: 0, scope: !2231)
!2242 = !DILocation(line: 1798, column: 2, scope: !2231)
!2243 = !DISubprogram(name: "work_on_cpu_key", scope: !684, file: !684, line: 704, type: !2244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!643, !51, !1647, !115, !2246}
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!2247 = distinct !DISubprogram(name: "get_current", scope: !2248, file: !2248, line: 39, type: !2249, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2251)
!2248 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!132}
!2251 = !{!2252, !2254, !2256}
!2252 = !DILocalVariable(name: "pscr_ret__", scope: !2253, file: !2248, line: 41, type: !132)
!2253 = distinct !DILexicalBlock(scope: !2247, file: !2248, line: 41, column: 9)
!2254 = !DILocalVariable(name: "__vpp_verify", scope: !2255, file: !2248, line: 41, type: !640)
!2255 = distinct !DILexicalBlock(scope: !2253, file: !2248, line: 41, column: 9)
!2256 = !DILocalVariable(name: "pfo_val__", scope: !2257, file: !2248, line: 41, type: !88)
!2257 = distinct !DILexicalBlock(scope: !2253, file: !2248, line: 41, column: 9)
!2258 = !DILocation(line: 41, column: 9, scope: !2253)
!2259 = !DILocation(line: 41, column: 9, scope: !2255)
!2260 = !DILocation(line: 41, column: 9, scope: !2257)
!2261 = !{i64 2148488201}
!2262 = !DILocation(line: 41, column: 9, scope: !2247)
!2263 = !DILocation(line: 41, column: 2, scope: !2247)
!2264 = distinct !DISubprogram(name: "cpuid", scope: !2265, file: !2265, line: 72, type: !2266, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2269)
!2265 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!2266 = !DISubroutineType(types: !2267)
!2267 = !{null, !7, !2268, !2268, !2268, !2268}
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2269 = !{!2270, !2271, !2272, !2273, !2274}
!2270 = !DILocalVariable(name: "op", arg: 1, scope: !2264, file: !2265, line: 72, type: !7)
!2271 = !DILocalVariable(name: "eax", arg: 2, scope: !2264, file: !2265, line: 73, type: !2268)
!2272 = !DILocalVariable(name: "ebx", arg: 3, scope: !2264, file: !2265, line: 73, type: !2268)
!2273 = !DILocalVariable(name: "ecx", arg: 4, scope: !2264, file: !2265, line: 74, type: !2268)
!2274 = !DILocalVariable(name: "edx", arg: 5, scope: !2264, file: !2265, line: 74, type: !2268)
!2275 = !DILocation(line: 72, column: 39, scope: !2264)
!2276 = !DILocation(line: 73, column: 19, scope: !2264)
!2277 = !DILocation(line: 73, column: 38, scope: !2264)
!2278 = !DILocation(line: 74, column: 19, scope: !2264)
!2279 = !DILocation(line: 74, column: 38, scope: !2264)
!2280 = !DILocation(line: 76, column: 9, scope: !2264)
!2281 = !DILocation(line: 76, column: 3, scope: !2264)
!2282 = !DILocation(line: 76, column: 7, scope: !2264)
!2283 = !DILocation(line: 77, column: 3, scope: !2264)
!2284 = !DILocation(line: 77, column: 7, scope: !2264)
!2285 = !DILocation(line: 78, column: 10, scope: !2264)
!2286 = !DILocation(line: 78, column: 15, scope: !2264)
!2287 = !DILocation(line: 78, column: 20, scope: !2264)
!2288 = !DILocation(line: 78, column: 25, scope: !2264)
!2289 = !DILocation(line: 78, column: 2, scope: !2264)
!2290 = !DILocation(line: 79, column: 1, scope: !2264)
!2291 = !DISubprogram(name: "_printk", scope: !2292, file: !2292, line: 153, type: !2293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2292 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!51, !1616, null}
!2295 = !DISubprogram(name: "snprintf", scope: !2296, file: !2296, line: 12, type: !2297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2296 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!51, !977, !946, !1616, null}
!2299 = distinct !DISubprogram(name: "native_cpuid", scope: !2265, file: !2265, line: 30, type: !2300, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{null, !2268, !2268, !2268, !2268}
!2302 = !{!2303, !2304, !2305, !2306}
!2303 = !DILocalVariable(name: "eax", arg: 1, scope: !2299, file: !2265, line: 30, type: !2268)
!2304 = !DILocalVariable(name: "ebx", arg: 2, scope: !2299, file: !2265, line: 30, type: !2268)
!2305 = !DILocalVariable(name: "ecx", arg: 3, scope: !2299, file: !2265, line: 31, type: !2268)
!2306 = !DILocalVariable(name: "edx", arg: 4, scope: !2299, file: !2265, line: 31, type: !2268)
!2307 = !DILocation(line: 30, column: 47, scope: !2299)
!2308 = !DILocation(line: 30, column: 66, scope: !2299)
!2309 = !DILocation(line: 31, column: 19, scope: !2299)
!2310 = !DILocation(line: 31, column: 38, scope: !2299)
!2311 = !DILocation(line: 35, column: 15, scope: !2299)
!2312 = !DILocation(line: 36, column: 15, scope: !2299)
!2313 = !DILocation(line: 37, column: 15, scope: !2299)
!2314 = !DILocation(line: 38, column: 15, scope: !2299)
!2315 = !DILocation(line: 39, column: 14, scope: !2299)
!2316 = !DILocation(line: 39, column: 13, scope: !2299)
!2317 = !DILocation(line: 39, column: 26, scope: !2299)
!2318 = !DILocation(line: 39, column: 25, scope: !2299)
!2319 = !DILocation(line: 34, column: 2, scope: !2299)
!2320 = !{i64 1346689}
!2321 = !DILocation(line: 41, column: 1, scope: !2299)
!2322 = distinct !DISubprogram(name: "arch_test_bit", scope: !2323, file: !2323, line: 237, type: !2324, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2329)
!2323 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!107, !70, !2326}
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2328)
!2328 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!2329 = !{!2330, !2331}
!2330 = !DILocalVariable(name: "nr", arg: 1, scope: !2322, file: !2323, line: 237, type: !70)
!2331 = !DILocalVariable(name: "addr", arg: 2, scope: !2322, file: !2323, line: 237, type: !2326)
!2332 = !DILocation(line: 237, column: 29, scope: !2322)
!2333 = !DILocation(line: 237, column: 63, scope: !2322)
!2334 = !DILocation(line: 239, column: 30, scope: !2322)
!2335 = !DILocation(line: 239, column: 9, scope: !2322)
!2336 = !DILocation(line: 239, column: 54, scope: !2322)
!2337 = !DILocation(line: 239, column: 58, scope: !2322)
!2338 = !DILocation(line: 239, column: 36, scope: !2322)
!2339 = !DILocation(line: 240, column: 26, scope: !2322)
!2340 = !DILocation(line: 240, column: 30, scope: !2322)
!2341 = !DILocation(line: 240, column: 8, scope: !2322)
!2342 = !DILocation(line: 239, column: 2, scope: !2322)
!2343 = distinct !DISubprogram(name: "_static_cpu_has", scope: !2344, file: !2344, line: 173, type: !2345, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2347)
!2344 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!107, !93}
!2347 = !{!2348, !2349, !2350}
!2348 = !DILocalVariable(name: "bit", arg: 1, scope: !2343, file: !2344, line: 173, type: !93)
!2349 = !DILabel(scope: !2343, name: "t_yes", file: !2344, line: 187)
!2350 = !DILabel(scope: !2343, name: "t_no", file: !2344, line: 189)
!2351 = !DILocation(line: 173, column: 49, scope: !2343)
!2352 = !DILocation(line: 183, column: 24, scope: !2343)
!2353 = !DILocation(line: 184, column: 30, scope: !2343)
!2354 = !DILocation(line: 184, column: 34, scope: !2343)
!2355 = !DILocation(line: 184, column: 26, scope: !2343)
!2356 = !DILocation(line: 185, column: 70, scope: !2343)
!2357 = !DILocation(line: 185, column: 74, scope: !2343)
!2358 = !DILocation(line: 185, column: 25, scope: !2343)
!2359 = !DILocation(line: 175, column: 2, scope: !2343)
!2360 = !{i64 2149634644, i64 2149634677, i64 2149634683, i64 2149634699, i64 2149634718, i64 2149634749, i64 2149635702, i64 2149634291, i64 2149635708, i64 2149635756, i64 2149635820, i64 2149635884, i64 2149635941, i64 2149636148, i64 2149636196, i64 2149636260, i64 2149636324, i64 2149636381, i64 2149634409, i64 2149634434, i64 2149636591, i64 2149636719, i64 2149636652, i64 2149636733, i64 2149636747, i64 2149636863, i64 2149636808, i64 2149636877, i64 2149634568, i64 1109420, i64 1109460, i64 1109469, i64 1109519, i64 1109540, i64 1109560}
!2361 = !DILocation(line: 187, column: 1, scope: !2343)
!2362 = !DILocation(line: 188, column: 2, scope: !2343)
!2363 = !DILocation(line: 189, column: 1, scope: !2343)
!2364 = !DILocation(line: 190, column: 2, scope: !2343)
!2365 = !DILocation(line: 191, column: 1, scope: !2343)
!2366 = distinct !DISubprogram(name: "current_set_polling_and_test", scope: !2367, file: !2367, line: 56, type: !2232, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2367 = !DIFile(filename: "./include/linux/sched/idle.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c48061294cc6ed2b1e8fec5961924d0")
!2368 = !DILocation(line: 58, column: 2, scope: !2366)
!2369 = !DILocation(line: 64, column: 2, scope: !2366)
!2370 = !DILocation(line: 64, column: 2, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2366, file: !2367, line: 64, column: 2)
!2372 = !DILocation(line: 64, column: 2, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2371, file: !2367, line: 64, column: 2)
!2374 = !DILocation(line: 64, column: 2, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2371, file: !2367, line: 64, column: 2)
!2376 = !DILocation(line: 66, column: 9, scope: !2366)
!2377 = !DILocation(line: 66, column: 2, scope: !2366)
!2378 = distinct !DISubprogram(name: "clflush", scope: !2379, file: !2379, line: 178, type: !2380, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2384)
!2379 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !2382}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2384 = !{!2385}
!2385 = !DILocalVariable(name: "__p", arg: 1, scope: !2378, file: !2379, line: 178, type: !2382)
!2386 = !DILocation(line: 178, column: 52, scope: !2378)
!2387 = !DILocation(line: 180, column: 62, scope: !2378)
!2388 = !DILocation(line: 180, column: 2, scope: !2378)
!2389 = !{i64 2066137}
!2390 = !DILocation(line: 181, column: 1, scope: !2378)
!2391 = distinct !DISubprogram(name: "__monitor", scope: !2117, file: !2117, line: 29, type: !2392, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !640, !70, !70}
!2394 = !{!2395, !2396, !2397}
!2395 = !DILocalVariable(name: "eax", arg: 1, scope: !2391, file: !2117, line: 29, type: !640)
!2396 = !DILocalVariable(name: "ecx", arg: 2, scope: !2391, file: !2117, line: 29, type: !70)
!2397 = !DILocalVariable(name: "edx", arg: 3, scope: !2391, file: !2117, line: 30, type: !70)
!2398 = !DILocation(line: 29, column: 51, scope: !2391)
!2399 = !DILocation(line: 29, column: 70, scope: !2391)
!2400 = !DILocation(line: 30, column: 23, scope: !2391)
!2401 = !DILocation(line: 34, column: 16, scope: !2391)
!2402 = !DILocation(line: 34, column: 27, scope: !2391)
!2403 = !DILocation(line: 34, column: 37, scope: !2391)
!2404 = !DILocation(line: 33, column: 2, scope: !2391)
!2405 = !{i64 6403636}
!2406 = !DILocation(line: 35, column: 1, scope: !2391)
!2407 = distinct !DISubprogram(name: "need_resched", scope: !134, file: !134, line: 2260, type: !2232, scopeLine: 2261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2408 = !DILocation(line: 2262, column: 9, scope: !2407)
!2409 = !DILocation(line: 2262, column: 2, scope: !2407)
!2410 = distinct !DISubprogram(name: "__mwait", scope: !2117, file: !2117, line: 45, type: !2118, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2411)
!2411 = !{!2412, !2413}
!2412 = !DILocalVariable(name: "eax", arg: 1, scope: !2410, file: !2117, line: 45, type: !70)
!2413 = !DILocalVariable(name: "ecx", arg: 2, scope: !2410, file: !2117, line: 45, type: !70)
!2414 = !DILocation(line: 45, column: 51, scope: !2410)
!2415 = !DILocation(line: 45, column: 70, scope: !2410)
!2416 = !DILocation(line: 47, column: 2, scope: !2410)
!2417 = !DILocation(line: 51, column: 16, scope: !2410)
!2418 = !DILocation(line: 51, column: 27, scope: !2410)
!2419 = !DILocation(line: 50, column: 2, scope: !2410)
!2420 = !{i64 6404084}
!2421 = !DILocation(line: 52, column: 1, scope: !2410)
!2422 = distinct !DISubprogram(name: "__sti_mwait", scope: !2117, file: !2117, line: 90, type: !2118, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2423)
!2423 = !{!2424, !2425}
!2424 = !DILocalVariable(name: "eax", arg: 1, scope: !2422, file: !2117, line: 90, type: !70)
!2425 = !DILocalVariable(name: "ecx", arg: 2, scope: !2422, file: !2117, line: 90, type: !70)
!2426 = !DILocation(line: 90, column: 55, scope: !2422)
!2427 = !DILocation(line: 90, column: 74, scope: !2422)
!2428 = !DILocation(line: 92, column: 2, scope: !2422)
!2429 = !DILocation(line: 95, column: 16, scope: !2422)
!2430 = !DILocation(line: 95, column: 27, scope: !2422)
!2431 = !DILocation(line: 94, column: 2, scope: !2422)
!2432 = !{i64 6405687}
!2433 = !DILocation(line: 96, column: 1, scope: !2422)
!2434 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2435, file: !2435, line: 70, type: !1637, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2435 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!2436 = !DILocation(line: 72, column: 2, scope: !2434)
!2437 = !DILocation(line: 73, column: 1, scope: !2434)
!2438 = distinct !DISubprogram(name: "current_clr_polling", scope: !2367, file: !2367, line: 96, type: !1637, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2439 = !DILocation(line: 98, column: 2, scope: !2438)
!2440 = !DILocation(line: 106, column: 2, scope: !2438)
!2441 = !DILocation(line: 106, column: 2, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2438, file: !2367, line: 106, column: 2)
!2443 = !DILocation(line: 106, column: 2, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2442, file: !2367, line: 106, column: 2)
!2445 = !{i64 2152408266}
!2446 = !DILocation(line: 108, column: 2, scope: !2438)
!2447 = !DILocation(line: 108, column: 2, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !2367, line: 108, column: 2)
!2449 = distinct !DILexicalBlock(scope: !2438, file: !2367, line: 108, column: 2)
!2450 = !DILocation(line: 108, column: 2, scope: !2449)
!2451 = !DILocation(line: 109, column: 1, scope: !2438)
!2452 = distinct !DISubprogram(name: "constant_test_bit", scope: !2323, file: !2323, line: 204, type: !2453, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!107, !643, !2326}
!2455 = !{!2456, !2457}
!2456 = !DILocalVariable(name: "nr", arg: 1, scope: !2452, file: !2323, line: 204, type: !643)
!2457 = !DILocalVariable(name: "addr", arg: 2, scope: !2452, file: !2323, line: 204, type: !2326)
!2458 = !DILocation(line: 204, column: 52, scope: !2452)
!2459 = !DILocation(line: 204, column: 86, scope: !2452)
!2460 = !DILocation(line: 206, column: 19, scope: !2452)
!2461 = !DILocation(line: 206, column: 22, scope: !2452)
!2462 = !DILocation(line: 206, column: 15, scope: !2452)
!2463 = !DILocation(line: 207, column: 4, scope: !2452)
!2464 = !DILocation(line: 207, column: 9, scope: !2452)
!2465 = !DILocation(line: 207, column: 12, scope: !2452)
!2466 = !DILocation(line: 206, column: 44, scope: !2452)
!2467 = !DILocation(line: 207, column: 37, scope: !2452)
!2468 = !DILocation(line: 206, column: 2, scope: !2452)
!2469 = distinct !DISubprogram(name: "variable_test_bit", scope: !2323, file: !2323, line: 224, type: !2453, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2470)
!2470 = !{!2471, !2472, !2473}
!2471 = !DILocalVariable(name: "nr", arg: 1, scope: !2469, file: !2323, line: 224, type: !643)
!2472 = !DILocalVariable(name: "addr", arg: 2, scope: !2469, file: !2323, line: 224, type: !2326)
!2473 = !DILocalVariable(name: "oldbit", scope: !2469, file: !2323, line: 226, type: !107)
!2474 = !DILocation(line: 224, column: 52, scope: !2469)
!2475 = !DILocation(line: 224, column: 86, scope: !2469)
!2476 = !DILocation(line: 226, column: 2, scope: !2469)
!2477 = !DILocation(line: 226, column: 7, scope: !2469)
!2478 = !DILocation(line: 231, column: 33, scope: !2469)
!2479 = !DILocation(line: 231, column: 46, scope: !2469)
!2480 = !DILocation(line: 228, column: 2, scope: !2469)
!2481 = !{i64 2147804842, i64 2147804916}
!2482 = !DILocation(line: 233, column: 9, scope: !2469)
!2483 = !DILocation(line: 234, column: 1, scope: !2469)
!2484 = !DILocation(line: 233, column: 2, scope: !2469)
!2485 = distinct !DISubprogram(name: "__current_set_polling", scope: !2367, file: !2367, line: 28, type: !1637, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2486 = !DILocation(line: 31, column: 27, scope: !2485)
!2487 = !DILocation(line: 31, column: 50, scope: !2485)
!2488 = !DILocation(line: 30, column: 2, scope: !2485)
!2489 = !DILocation(line: 32, column: 1, scope: !2485)
!2490 = distinct !DISubprogram(name: "tif_need_resched", scope: !2491, file: !2491, line: 182, type: !2232, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2491 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!2492 = !DILocation(line: 185, column: 28, scope: !2490)
!2493 = !DILocation(line: 185, column: 51, scope: !2490)
!2494 = !DILocation(line: 184, column: 9, scope: !2490)
!2495 = !DILocation(line: 184, column: 2, scope: !2490)
!2496 = distinct !DISubprogram(name: "arch_set_bit", scope: !2323, file: !2323, line: 52, type: !2497, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2500)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !643, !2499}
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2500 = !{!2501, !2502}
!2501 = !DILocalVariable(name: "nr", arg: 1, scope: !2496, file: !2323, line: 52, type: !643)
!2502 = !DILocalVariable(name: "addr", arg: 2, scope: !2496, file: !2323, line: 52, type: !2499)
!2503 = !DILocation(line: 52, column: 19, scope: !2496)
!2504 = !DILocation(line: 52, column: 47, scope: !2496)
!2505 = !DILocation(line: 54, column: 27, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2496, file: !2323, line: 54, column: 6)
!2507 = !DILocation(line: 54, column: 6, scope: !2506)
!2508 = !DILocation(line: 54, column: 6, scope: !2496)
!2509 = !DILocation(line: 56, column: 6, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2506, file: !2323, line: 54, column: 32)
!2511 = !DILocation(line: 57, column: 12, scope: !2510)
!2512 = !DILocation(line: 55, column: 3, scope: !2510)
!2513 = !{i64 2147791230, i64 2147791269, i64 2147791290, i64 2147791327, i64 2147791350, i64 2147791220}
!2514 = !DILocation(line: 59, column: 2, scope: !2510)
!2515 = !DILocation(line: 61, column: 8, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2506, file: !2323, line: 59, column: 9)
!2517 = !DILocation(line: 61, column: 32, scope: !2516)
!2518 = !DILocation(line: 60, column: 3, scope: !2516)
!2519 = !{i64 2147791515, i64 2147791554, i64 2147791575, i64 2147791612, i64 2147791635, i64 2147791505}
!2520 = !DILocation(line: 63, column: 1, scope: !2496)
!2521 = distinct !DISubprogram(name: "mds_idle_clear_cpu_buffers", scope: !1684, file: !1684, line: 627, type: !1637, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2522)
!2522 = !{!2523}
!2523 = !DILocalVariable(name: "branch", scope: !2524, file: !1684, line: 629, type: !107)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !1684, line: 629, column: 6)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !1684, line: 629, column: 6)
!2526 = !DILocation(line: 629, column: 6, scope: !2524)
!2527 = !DILocation(line: 629, column: 6, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !1684, line: 629, column: 6)
!2529 = distinct !DILexicalBlock(scope: !2524, file: !1684, line: 629, column: 6)
!2530 = !DILocation(line: 629, column: 6, scope: !2529)
!2531 = !DILocation(line: 629, column: 6, scope: !2525)
!2532 = !DILocation(line: 629, column: 6, scope: !2521)
!2533 = !DILocation(line: 630, column: 3, scope: !2525)
!2534 = !DILocation(line: 631, column: 1, scope: !2521)
!2535 = distinct !DISubprogram(name: "arch_static_branch_jump", scope: !2536, file: !2536, line: 53, type: !2537, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2560)
!2536 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!107, !2539, !2559}
!2539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2540)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2542, line: 85, size: 128, elements: !2543)
!2542 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2543 = !{!2544, !2545}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2541, file: !2542, line: 86, baseType: !152, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, scope: !2541, file: !2542, line: 101, baseType: !2546, size: 64, offset: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2541, file: !2542, line: 101, size: 64, elements: !2547)
!2547 = !{!2548, !2549, !2556}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2546, file: !2542, line: 102, baseType: !70, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2546, file: !2542, line: 103, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2542, line: 117, size: 128, elements: !2552)
!2552 = !{!2553, !2554, !2555}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2551, file: !2542, line: 118, baseType: !598, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2551, file: !2542, line: 119, baseType: !598, size: 32, offset: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2551, file: !2542, line: 120, baseType: !643, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2546, file: !2542, line: 104, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2542, line: 104, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!2560 = !{!2561, !2562, !2563}
!2561 = !DILocalVariable(name: "key", arg: 1, scope: !2535, file: !2536, line: 53, type: !2539)
!2562 = !DILocalVariable(name: "branch", arg: 2, scope: !2535, file: !2536, line: 53, type: !2559)
!2563 = !DILabel(scope: !2535, name: "l_yes", file: !2536, line: 61)
!2564 = !DILocation(line: 53, column: 79, scope: !2535)
!2565 = !DILocation(line: 53, column: 95, scope: !2535)
!2566 = !DILocation(line: 58, column: 13, scope: !2535)
!2567 = !DILocation(line: 58, column: 24, scope: !2535)
!2568 = !DILocation(line: 55, column: 2, scope: !2535)
!2569 = !{i64 1259589, i64 1259612, i64 2148744359, i64 2148744380, i64 2148744406, i64 2148744439, i64 2148744473, i64 2148744497}
!2570 = !DILocation(line: 60, column: 2, scope: !2535)
!2571 = !DILocation(line: 61, column: 1, scope: !2535)
!2572 = !DILocation(line: 62, column: 2, scope: !2535)
!2573 = !DILocation(line: 63, column: 1, scope: !2535)
!2574 = !DILocation(line: 619, column: 2, scope: !1683)
!2575 = !{i64 1241320}
!2576 = !DILocation(line: 620, column: 1, scope: !1683)
!2577 = distinct !DISubprogram(name: "native_irq_disable", scope: !2435, file: !2435, line: 35, type: !1637, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2578 = !DILocation(line: 37, column: 2, scope: !2577)
!2579 = !{i64 2078798}
!2580 = !DILocation(line: 38, column: 1, scope: !2577)
!2581 = distinct !DISubprogram(name: "__current_clr_polling", scope: !2367, file: !2367, line: 34, type: !1637, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2582 = !DILocation(line: 37, column: 29, scope: !2581)
!2583 = !DILocation(line: 37, column: 52, scope: !2581)
!2584 = !DILocation(line: 36, column: 2, scope: !2581)
!2585 = !DILocation(line: 38, column: 1, scope: !2581)
!2586 = distinct !DISubprogram(name: "set_preempt_need_resched", scope: !2587, file: !2587, line: 59, type: !1637, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2588)
!2587 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!2588 = !{!2589}
!2589 = !DILocalVariable(name: "pto_val__", scope: !2590, file: !2587, line: 61, type: !111)
!2590 = distinct !DILexicalBlock(scope: !2586, file: !2587, line: 61, column: 2)
!2591 = !DILocation(line: 61, column: 2, scope: !2586)
!2592 = !DILocation(line: 61, column: 2, scope: !2590)
!2593 = !{i64 2149648585}
!2594 = !DILocation(line: 62, column: 1, scope: !2586)
!2595 = distinct !DISubprogram(name: "arch_clear_bit", scope: !2323, file: !2323, line: 72, type: !2497, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2596)
!2596 = !{!2597, !2598}
!2597 = !DILocalVariable(name: "nr", arg: 1, scope: !2595, file: !2323, line: 72, type: !643)
!2598 = !DILocalVariable(name: "addr", arg: 2, scope: !2595, file: !2323, line: 72, type: !2499)
!2599 = !DILocation(line: 72, column: 21, scope: !2595)
!2600 = !DILocation(line: 72, column: 49, scope: !2595)
!2601 = !DILocation(line: 74, column: 27, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2595, file: !2323, line: 74, column: 6)
!2603 = !DILocation(line: 74, column: 6, scope: !2602)
!2604 = !DILocation(line: 74, column: 6, scope: !2595)
!2605 = !DILocation(line: 76, column: 6, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2602, file: !2323, line: 74, column: 32)
!2607 = !DILocation(line: 77, column: 13, scope: !2606)
!2608 = !DILocation(line: 77, column: 12, scope: !2606)
!2609 = !DILocation(line: 75, column: 3, scope: !2606)
!2610 = !{i64 2147792518, i64 2147792557, i64 2147792578, i64 2147792615, i64 2147792638, i64 2147792508}
!2611 = !DILocation(line: 78, column: 2, scope: !2606)
!2612 = !DILocation(line: 80, column: 8, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2602, file: !2323, line: 78, column: 9)
!2614 = !DILocation(line: 80, column: 32, scope: !2613)
!2615 = !DILocation(line: 79, column: 3, scope: !2613)
!2616 = !{i64 2147792803, i64 2147792842, i64 2147792863, i64 2147792900, i64 2147792923, i64 2147792793}
!2617 = !DILocation(line: 82, column: 1, scope: !2595)
!2618 = !DISubprogram(name: "__alloc_percpu", scope: !2182, file: !2182, line: 133, type: !2619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!115, !946, !946}
