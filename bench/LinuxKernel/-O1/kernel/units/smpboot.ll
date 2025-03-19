; ModuleID = 'kernel/smpboot.c'
source_filename = "kernel/smpboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_smpboot_register_percpu_thread: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad smpboot_register_percpu_thread ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_smpboot_unregister_percpu_thread: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad smpboot_unregister_percpu_thread ; .previous"

%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.cpumask = type { [1 x i64] }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.15 }
%union.anon.15 = type { i64 }
%struct.smp_hotplug_thread = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
%struct.smpboot_thread_data = type { i32, i32, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, i64, i64, %struct.list_head, i32, i64, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i64, [16 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
%struct.restart_block = type { i64, ptr, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }

@idle_threads = internal global ptr null, section ".data..percpu", align 8, !dbg !0
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !1585
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@smpboot_threads_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @smpboot_threads_lock, i64 16), ptr getelementptr (i8, ptr @smpboot_threads_lock, i64 16) } }, align 8, !dbg !1599
@hotplug_threads = internal global %struct.list_head { ptr @hotplug_threads, ptr @hotplug_threads }, align 8, !dbg !1601
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__UNIQUE_ID___addressable_smpboot_register_percpu_thread239 = internal global ptr @smpboot_register_percpu_thread, section ".discard.addressable", align 8, !dbg !1590
@__UNIQUE_ID___addressable_smpboot_unregister_percpu_thread240 = internal global ptr @smpboot_unregister_percpu_thread, section ".discard.addressable", align 8, !dbg !1592
@.str.1 = private unnamed_addr constant [38 x i8] c"\013SMP: fork_idle() failed for CPU %u\0A\00", align 1, !dbg !1594
@.str.2 = private unnamed_addr constant [17 x i8] c"kernel/smpboot.c\00", align 1, !dbg !1603
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1608
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@smpboot_thread_fn.__UNIQUE_ID___addressable___SCK__preempt_schedule230 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !1613
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@smpboot_thread_fn.__UNIQUE_ID___addressable___SCK__preempt_schedule232 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !1659
@smpboot_thread_fn.__UNIQUE_ID___addressable___SCK__preempt_schedule234 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !1661
@smpboot_thread_fn.__UNIQUE_ID___addressable___SCK__preempt_schedule236 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !1663
@smpboot_thread_fn.__UNIQUE_ID___addressable___SCK__preempt_schedule238 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !1665
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_smpboot_register_percpu_thread239, ptr @__UNIQUE_ID___addressable_smpboot_unregister_percpu_thread240, ptr @smpboot_thread_fn.__UNIQUE_ID___addressable___SCK__preempt_schedule230, ptr @smpboot_thread_fn.__UNIQUE_ID___addressable___SCK__preempt_schedule232, ptr @smpboot_thread_fn.__UNIQUE_ID___addressable___SCK__preempt_schedule234, ptr @smpboot_thread_fn.__UNIQUE_ID___addressable___SCK__preempt_schedule236, ptr @smpboot_thread_fn.__UNIQUE_ID___addressable___SCK__preempt_schedule238], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @idle_thread_get(i32 noundef %cpu) #0 align 16 !dbg !1677 {
entry:
  %retval = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %tsk = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1681, metadata !DIExpression()), !dbg !1688
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsk) #18, !dbg !1689
  call void @llvm.dbg.declare(metadata ptr %tsk, metadata !1682, metadata !DIExpression()), !dbg !1690
  br label %do.body, !dbg !1691

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1692
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1683, metadata !DIExpression()), !dbg !1692
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1692
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1692
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1691
  br label %do.cond, !dbg !1692

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1692

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !1693
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1686, metadata !DIExpression()), !dbg !1693
  store i64 ptrtoint (ptr @idle_threads to i64), ptr %__ptr, align 8, !dbg !1693
  %1 = load i64, ptr %__ptr, align 8, !dbg !1693
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !1693
  %idxprom = zext i32 %2 to i64, !dbg !1693
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1693
  %3 = load i64, ptr %arrayidx, align 8, !dbg !1693
  %add = add i64 %1, %3, !dbg !1693
  %4 = inttoptr i64 %add to ptr, !dbg !1693
  store ptr %4, ptr %tmp1, align 8, !dbg !1693
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !1691
  %5 = load ptr, ptr %tmp1, align 8, !dbg !1693
  store ptr %5, ptr %tmp, align 8, !dbg !1692
  %6 = load ptr, ptr %tmp, align 8, !dbg !1691
  %7 = load ptr, ptr %6, align 8, !dbg !1694
  store ptr %7, ptr %tsk, align 8, !dbg !1690
  %8 = load ptr, ptr %tsk, align 8, !dbg !1695
  %tobool = icmp ne ptr %8, null, !dbg !1695
  br i1 %tobool, label %if.end, label %if.then, !dbg !1697

if.then:                                          ; preds = %do.end
  %call = call ptr @ERR_PTR(i64 noundef -12) #19, !dbg !1698
  store ptr %call, ptr %retval, align 8, !dbg !1699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1699

if.end:                                           ; preds = %do.end
  %9 = load ptr, ptr %tsk, align 8, !dbg !1700
  store ptr %9, ptr %retval, align 8, !dbg !1701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1701

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsk) #18, !dbg !1702
  %10 = load ptr, ptr %retval, align 8, !dbg !1702
  ret ptr %10, !dbg !1702
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !1703 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !1708, metadata !DIExpression()), !dbg !1709
  %0 = load i64, ptr %error.addr, align 8, !dbg !1710
  %1 = inttoptr i64 %0 to ptr, !dbg !1711
  ret ptr %1, !dbg !1712
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @idle_thread_set_boot_cpu() #4 section ".init.text" align 16 !dbg !1713 {
entry:
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify4 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %call = call ptr @get_current() #19, !dbg !1729
  br label %do.body, !dbg !1730

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1731
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1717, metadata !DIExpression()), !dbg !1731
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1731
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1731
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1730
  br label %do.end, !dbg !1731

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !1732
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1720, metadata !DIExpression()), !dbg !1732
  store i64 ptrtoint (ptr @idle_threads to i64), ptr %__ptr, align 8, !dbg !1732
  %1 = load i64, ptr %__ptr, align 8, !dbg !1732
  call void @__this_cpu_preempt_check(ptr noundef @.str) #19, !dbg !1733
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #18, !dbg !1734
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1722, metadata !DIExpression()), !dbg !1734
  br label %do.body3, !dbg !1734

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify4) #18, !dbg !1735
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify4, metadata !1725, metadata !DIExpression()), !dbg !1735
  store ptr null, ptr %__vpp_verify4, align 8, !dbg !1735
  %2 = load ptr, ptr %__vpp_verify4, align 8, !dbg !1735
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify4) #18, !dbg !1734
  br label %do.cond, !dbg !1735

do.cond:                                          ; preds = %do.body3
  br label %do.end5, !dbg !1735

do.end5:                                          ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #18, !dbg !1736
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1727, metadata !DIExpression()), !dbg !1736
  %3 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #20, !dbg !1736, !srcloc !1737
  store i32 %3, ptr %pfo_val__, align 4, !dbg !1736
  %4 = load i32, ptr %pfo_val__, align 4, !dbg !1736
  %conv = zext i32 %4 to i64, !dbg !1736
  %conv7 = trunc i64 %conv to i32, !dbg !1736
  store i32 %conv7, ptr %tmp6, align 4, !dbg !1736
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #18, !dbg !1734
  %5 = load i32, ptr %tmp6, align 4, !dbg !1736
  store i32 %5, ptr %pscr_ret__, align 4, !dbg !1734
  %6 = load i32, ptr %pscr_ret__, align 4, !dbg !1734
  store i32 %6, ptr %tmp8, align 4, !dbg !1734
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #18, !dbg !1733
  %7 = load i32, ptr %tmp8, align 4, !dbg !1734
  store i32 %7, ptr %tmp2, align 4, !dbg !1733
  %8 = load i32, ptr %tmp2, align 4, !dbg !1733
  %idxprom = sext i32 %8 to i64, !dbg !1732
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1732
  %9 = load i64, ptr %arrayidx, align 8, !dbg !1732
  %add = add i64 %1, %9, !dbg !1732
  %10 = inttoptr i64 %add to ptr, !dbg !1732
  store ptr %10, ptr %tmp1, align 8, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !1730
  %11 = load ptr, ptr %tmp1, align 8, !dbg !1732
  store ptr %11, ptr %tmp, align 8, !dbg !1731
  %12 = load ptr, ptr %tmp, align 8, !dbg !1730
  store ptr %call, ptr %12, align 8, !dbg !1738
  ret void, !dbg !1739
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !1740 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #18, !dbg !1751
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1745, metadata !DIExpression()), !dbg !1751
  br label %do.body, !dbg !1751

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1752
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1747, metadata !DIExpression()), !dbg !1752
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1752
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1752
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1751
  br label %do.cond, !dbg !1752

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1752

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #18, !dbg !1753
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1749, metadata !DIExpression()), !dbg !1753
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #21, !dbg !1753, !srcloc !1754
  store i64 %1, ptr %pfo_val__, align 8, !dbg !1753
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !1753
  %3 = inttoptr i64 %2 to ptr, !dbg !1753
  store ptr %3, ptr %tmp, align 8, !dbg !1753
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #18, !dbg !1751
  %4 = load ptr, ptr %tmp, align 8, !dbg !1753
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !1751
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !1751
  store ptr %5, ptr %tmp1, align 8, !dbg !1751
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #18, !dbg !1755
  %6 = load ptr, ptr %tmp1, align 8, !dbg !1751
  ret ptr %6, !dbg !1756
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #5 align 16 !dbg !1757 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1762, metadata !DIExpression()), !dbg !1763
  ret void, !dbg !1764
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @idle_threads_init() #4 section ".init.text" align 16 !dbg !1765 {
entry:
  %cpu = alloca i32, align 4
  %boot_cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #18, !dbg !1776
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !1767, metadata !DIExpression()), !dbg !1777
  call void @llvm.lifetime.start.p0(i64 4, ptr %boot_cpu) #18, !dbg !1776
  call void @llvm.dbg.declare(metadata ptr %boot_cpu, metadata !1768, metadata !DIExpression()), !dbg !1778
  call void @__this_cpu_preempt_check(ptr noundef @.str) #19, !dbg !1779
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #18, !dbg !1780
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1769, metadata !DIExpression()), !dbg !1780
  br label %do.body, !dbg !1780

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1781
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1772, metadata !DIExpression()), !dbg !1781
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1781
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1781
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1780
  br label %do.cond, !dbg !1781

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1781

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #18, !dbg !1782
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1774, metadata !DIExpression()), !dbg !1782
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #20, !dbg !1782, !srcloc !1783
  store i32 %1, ptr %pfo_val__, align 4, !dbg !1782
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !1782
  %conv = zext i32 %2 to i64, !dbg !1782
  %conv2 = trunc i64 %conv to i32, !dbg !1782
  store i32 %conv2, ptr %tmp1, align 4, !dbg !1782
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #18, !dbg !1780
  %3 = load i32, ptr %tmp1, align 4, !dbg !1782
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !1780
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !1780
  store i32 %4, ptr %tmp3, align 4, !dbg !1780
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #18, !dbg !1779
  %5 = load i32, ptr %tmp3, align 4, !dbg !1780
  store i32 %5, ptr %tmp, align 4, !dbg !1779
  %6 = load i32, ptr %tmp, align 4, !dbg !1779
  store i32 %6, ptr %boot_cpu, align 4, !dbg !1784
  store i32 0, ptr %cpu, align 4, !dbg !1785
  br label %for.cond, !dbg !1785

for.cond:                                         ; preds = %for.inc, %do.end
  %7 = load i32, ptr %cpu, align 4, !dbg !1787
  %conv4 = zext i32 %7 to i64, !dbg !1787
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv4) #19, !dbg !1787
  %conv5 = trunc i64 %call to i32, !dbg !1787
  store i32 %conv5, ptr %cpu, align 4, !dbg !1787
  %8 = load i32, ptr %cpu, align 4, !dbg !1787
  %cmp = icmp ult i32 %8, 64, !dbg !1787
  br i1 %cmp, label %for.body, label %for.end, !dbg !1785

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %cpu, align 4, !dbg !1789
  %10 = load i32, ptr %boot_cpu, align 4, !dbg !1792
  %cmp7 = icmp ne i32 %9, %10, !dbg !1793
  br i1 %cmp7, label %if.then, label %if.end, !dbg !1794

if.then:                                          ; preds = %for.body
  %11 = load i32, ptr %cpu, align 4, !dbg !1795
  call void @idle_init(i32 noundef %11) #19, !dbg !1796
  br label %if.end, !dbg !1796

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !1797

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %cpu, align 4, !dbg !1787
  %inc = add i32 %12, 1, !dbg !1787
  store i32 %inc, ptr %cpu, align 4, !dbg !1787
  br label %for.cond, !dbg !1787, !llvm.loop !1798

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %boot_cpu) #18, !dbg !1802
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #18, !dbg !1802
  ret void, !dbg !1802
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #3 align 16 !dbg !1803 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1810, metadata !DIExpression()), !dbg !1816
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1811, metadata !DIExpression()), !dbg !1817
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !1812, metadata !DIExpression()), !dbg !1818
  %0 = load i64, ptr %size.addr, align 8, !dbg !1819
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1819
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !1819

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1819
  %cmp = icmp ule i64 %2, 64, !dbg !1819
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !1819

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !1819
  %cmp2 = icmp ugt i64 %3, 0, !dbg !1819
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !1820

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #18, !dbg !1821
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1813, metadata !DIExpression()), !dbg !1822
  %4 = load i64, ptr %offset.addr, align 8, !dbg !1823
  %5 = load i64, ptr %size.addr, align 8, !dbg !1823
  %cmp3 = icmp uge i64 %4, %5, !dbg !1823
  %lnot = xor i1 %cmp3, true, !dbg !1823
  %lnot4 = xor i1 %lnot, true, !dbg !1823
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1823
  %conv = sext i32 %lnot.ext to i64, !dbg !1823
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1823
  %tobool = icmp ne i64 %expval, 0, !dbg !1823
  br i1 %tobool, label %if.then5, label %if.end, !dbg !1825

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1826
  store i64 %6, ptr %retval, align 8, !dbg !1827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1827

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !1828
  %8 = load i64, ptr %7, align 8, !dbg !1829
  %9 = load i64, ptr %offset.addr, align 8, !dbg !1830
  %shl = shl i64 1, %9, !dbg !1830
  %sub = sub i64 -1, %shl, !dbg !1830
  %add = add i64 %sub, 1, !dbg !1830
  %10 = load i64, ptr %size.addr, align 8, !dbg !1830
  %sub6 = sub i64 %10, 1, !dbg !1830
  %sub7 = sub i64 63, %sub6, !dbg !1830
  %shr = lshr i64 -1, %sub7, !dbg !1830
  %and = and i64 %add, %shr, !dbg !1830
  %add8 = add i64 0, %and, !dbg !1830
  %and9 = and i64 %8, %add8, !dbg !1831
  store i64 %and9, ptr %val, align 8, !dbg !1832
  %11 = load i64, ptr %val, align 8, !dbg !1833
  %tobool10 = icmp ne i64 %11, 0, !dbg !1833
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !1833

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !1834
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !1834
  br i1 %13, label %cond.true11, label %cond.false, !dbg !1834

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !1834
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !1834
  %cast = trunc i64 %15 to i32, !dbg !1834
  %conv12 = sext i32 %cast to i64, !dbg !1834
  br label %cond.end, !dbg !1834

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !1834
  %call = call i64 @variable__ffs(i64 noundef %16) #19, !dbg !1834
  br label %cond.end, !dbg !1834

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !1834
  br label %cond.end14, !dbg !1833

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !1835
  br label %cond.end14, !dbg !1833

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !1833
  store i64 %cond15, ptr %retval, align 8, !dbg !1836
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1836

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #18, !dbg !1837
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !1838
  %19 = load i64, ptr %size.addr, align 8, !dbg !1839
  %20 = load i64, ptr %offset.addr, align 8, !dbg !1840
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #19, !dbg !1841
  store i64 %call17, ptr %retval, align 8, !dbg !1842
  br label %return, !dbg !1842

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !1843
  ret i64 %21, !dbg !1843
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @idle_init(i32 noundef %cpu) #5 align 16 !dbg !1844 {
entry:
  %cpu.addr = alloca i32, align 4
  %tsk = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %tmp7 = alloca i32, align 4
  %__vpp_verify10 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %__ptr14 = alloca i64, align 8
  %tmp15 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1846, metadata !DIExpression()), !dbg !1861
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsk) #18, !dbg !1862
  call void @llvm.dbg.declare(metadata ptr %tsk, metadata !1847, metadata !DIExpression()), !dbg !1863
  br label %do.body, !dbg !1864

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1865
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1848, metadata !DIExpression()), !dbg !1865
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1865
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1865
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1864
  br label %do.cond, !dbg !1865

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1865

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !1866
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1851, metadata !DIExpression()), !dbg !1866
  store i64 ptrtoint (ptr @idle_threads to i64), ptr %__ptr, align 8, !dbg !1866
  %1 = load i64, ptr %__ptr, align 8, !dbg !1866
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !1866
  %idxprom = zext i32 %2 to i64, !dbg !1866
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1866
  %3 = load i64, ptr %arrayidx, align 8, !dbg !1866
  %add = add i64 %1, %3, !dbg !1866
  %4 = inttoptr i64 %add to ptr, !dbg !1866
  store ptr %4, ptr %tmp1, align 8, !dbg !1866
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !1864
  %5 = load ptr, ptr %tmp1, align 8, !dbg !1866
  store ptr %5, ptr %tmp, align 8, !dbg !1865
  %6 = load ptr, ptr %tmp, align 8, !dbg !1864
  %7 = load ptr, ptr %6, align 8, !dbg !1867
  store ptr %7, ptr %tsk, align 8, !dbg !1863
  %8 = load ptr, ptr %tsk, align 8, !dbg !1868
  %tobool = icmp ne ptr %8, null, !dbg !1868
  br i1 %tobool, label %if.end19, label %if.then, !dbg !1869

if.then:                                          ; preds = %do.end
  %9 = load i32, ptr %cpu.addr, align 4, !dbg !1870
  %call = call ptr @fork_idle(i32 noundef %9) #19, !dbg !1871
  store ptr %call, ptr %tsk, align 8, !dbg !1872
  %10 = load ptr, ptr %tsk, align 8, !dbg !1873
  %call2 = call zeroext i1 @IS_ERR(ptr noundef %10) #19, !dbg !1874
  br i1 %call2, label %if.then3, label %if.else, !dbg !1875

if.then3:                                         ; preds = %if.then
  br label %do.body4, !dbg !1876

do.body4:                                         ; preds = %if.then3
  br label %do.cond5, !dbg !1878

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1878

do.end6:                                          ; preds = %do.cond5
  %11 = load i32, ptr %cpu.addr, align 4, !dbg !1876
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %11) #22, !dbg !1876
  store i32 %call8, ptr %tmp7, align 4, !dbg !1878
  %12 = load i32, ptr %tmp7, align 4, !dbg !1876
  br label %if.end, !dbg !1880

if.else:                                          ; preds = %if.then
  %13 = load ptr, ptr %tsk, align 8, !dbg !1881
  br label %do.body9, !dbg !1882

do.body9:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify10) #18, !dbg !1883
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify10, metadata !1853, metadata !DIExpression()), !dbg !1883
  store ptr null, ptr %__vpp_verify10, align 8, !dbg !1883
  %14 = load ptr, ptr %__vpp_verify10, align 8, !dbg !1883
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify10) #18, !dbg !1882
  br label %do.cond11, !dbg !1883

do.cond11:                                        ; preds = %do.body9
  br label %do.end12, !dbg !1883

do.end12:                                         ; preds = %do.cond11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr14) #18, !dbg !1884
  call void @llvm.dbg.declare(metadata ptr %__ptr14, metadata !1859, metadata !DIExpression()), !dbg !1884
  store i64 ptrtoint (ptr @idle_threads to i64), ptr %__ptr14, align 8, !dbg !1884
  %15 = load i64, ptr %__ptr14, align 8, !dbg !1884
  %16 = load i32, ptr %cpu.addr, align 4, !dbg !1884
  %idxprom16 = zext i32 %16 to i64, !dbg !1884
  %arrayidx17 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom16, !dbg !1884
  %17 = load i64, ptr %arrayidx17, align 8, !dbg !1884
  %add18 = add i64 %15, %17, !dbg !1884
  %18 = inttoptr i64 %add18 to ptr, !dbg !1884
  store ptr %18, ptr %tmp15, align 8, !dbg !1884
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr14) #18, !dbg !1882
  %19 = load ptr, ptr %tmp15, align 8, !dbg !1884
  store ptr %19, ptr %tmp13, align 8, !dbg !1883
  %20 = load ptr, ptr %tmp13, align 8, !dbg !1882
  store ptr %13, ptr %20, align 8, !dbg !1885
  br label %if.end

if.end:                                           ; preds = %do.end12, %do.end6
  br label %if.end19, !dbg !1886

if.end19:                                         ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsk) #18, !dbg !1887
  ret void, !dbg !1887
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @smpboot_create_threads(i32 noundef %cpu) #0 align 16 !dbg !1888 {
entry:
  %cpu.addr = alloca i32, align 4
  %cur = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1890, metadata !DIExpression()), !dbg !1899
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #18, !dbg !1900
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !1891, metadata !DIExpression()), !dbg !1901
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !1902
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1892, metadata !DIExpression()), !dbg !1903
  store i32 0, ptr %ret, align 4, !dbg !1903
  call void @mutex_lock(ptr noundef @smpboot_threads_lock) #19, !dbg !1904
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1893, metadata !DIExpression()), !dbg !1905
  %0 = load ptr, ptr @hotplug_threads, align 8, !dbg !1905
  store ptr %0, ptr %__mptr, align 8, !dbg !1905
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1905
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !1905
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1905
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !1906
  %2 = load ptr, ptr %tmp, align 8, !dbg !1905
  store ptr %2, ptr %cur, align 8, !dbg !1906
  br label %for.cond, !dbg !1906

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %cur, align 8, !dbg !1907
  %list = getelementptr inbounds %struct.smp_hotplug_thread, ptr %3, i32 0, i32 1, !dbg !1907
  %cmp = icmp eq ptr %list, @hotplug_threads, !dbg !1907
  %lnot = xor i1 %cmp, true, !dbg !1907
  br i1 %lnot, label %for.body, label %for.end, !dbg !1906

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cur, align 8, !dbg !1908
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !1910
  %call = call i32 @__smpboot_create_thread(ptr noundef %4, i32 noundef %5) #19, !dbg !1911
  store i32 %call, ptr %ret, align 4, !dbg !1912
  %6 = load i32, ptr %ret, align 4, !dbg !1913
  %tobool = icmp ne i32 %6, 0, !dbg !1913
  br i1 %tobool, label %if.then, label %if.end, !dbg !1915

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !1916

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1917

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #18, !dbg !1918
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !1896, metadata !DIExpression()), !dbg !1918
  %7 = load ptr, ptr %cur, align 8, !dbg !1918
  %list2 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %7, i32 0, i32 1, !dbg !1918
  %next = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 0, !dbg !1918
  %8 = load ptr, ptr %next, align 8, !dbg !1918
  store ptr %8, ptr %__mptr1, align 8, !dbg !1918
  %9 = load ptr, ptr %__mptr1, align 8, !dbg !1918
  %add.ptr4 = getelementptr i8, ptr %9, i64 -8, !dbg !1918
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !1918
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #18, !dbg !1907
  %10 = load ptr, ptr %tmp3, align 8, !dbg !1918
  store ptr %10, ptr %cur, align 8, !dbg !1907
  br label %for.cond, !dbg !1907, !llvm.loop !1919

for.end:                                          ; preds = %if.then, %for.cond
  call void @mutex_unlock(ptr noundef @smpboot_threads_lock) #19, !dbg !1921
  %11 = load i32, ptr %ret, align 4, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !1923
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #18, !dbg !1923
  ret i32 %11, !dbg !1924
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1925 dso_local void @mutex_lock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__smpboot_create_thread(ptr noundef %ht, i32 noundef %cpu) #0 align 16 !dbg !1929 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %tsk = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %td = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify16 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %__ptr20 = alloca i64, align 8
  %tmp22 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp49 = alloca i64, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !1933, metadata !DIExpression()), !dbg !1955
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1934, metadata !DIExpression()), !dbg !1956
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsk) #18, !dbg !1957
  call void @llvm.dbg.declare(metadata ptr %tsk, metadata !1935, metadata !DIExpression()), !dbg !1958
  br label %do.body, !dbg !1959

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1960
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1936, metadata !DIExpression()), !dbg !1960
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1960
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1960
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1959
  br label %do.cond, !dbg !1960

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1960

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !1961
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1939, metadata !DIExpression()), !dbg !1961
  %1 = load ptr, ptr %ht.addr, align 8, !dbg !1961
  %store = getelementptr inbounds %struct.smp_hotplug_thread, ptr %1, i32 0, i32 0, !dbg !1961
  %2 = load ptr, ptr %store, align 8, !dbg !1961
  %3 = ptrtoint ptr %2 to i64, !dbg !1961
  store i64 %3, ptr %__ptr, align 8, !dbg !1961
  %4 = load i64, ptr %__ptr, align 8, !dbg !1961
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !1961
  %idxprom = zext i32 %5 to i64, !dbg !1961
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1961
  %6 = load i64, ptr %arrayidx, align 8, !dbg !1961
  %add = add i64 %4, %6, !dbg !1961
  %7 = inttoptr i64 %add to ptr, !dbg !1961
  store ptr %7, ptr %tmp1, align 8, !dbg !1961
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !1959
  %8 = load ptr, ptr %tmp1, align 8, !dbg !1961
  store ptr %8, ptr %tmp, align 8, !dbg !1960
  %9 = load ptr, ptr %tmp, align 8, !dbg !1959
  %10 = load ptr, ptr %9, align 8, !dbg !1962
  store ptr %10, ptr %tsk, align 8, !dbg !1958
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #18, !dbg !1963
  call void @llvm.dbg.declare(metadata ptr %td, metadata !1941, metadata !DIExpression()), !dbg !1964
  %11 = load ptr, ptr %tsk, align 8, !dbg !1965
  %tobool = icmp ne ptr %11, null, !dbg !1965
  br i1 %tobool, label %if.then, label %if.end, !dbg !1967

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !1968
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1968

if.end:                                           ; preds = %do.end
  %12 = load i32, ptr %cpu.addr, align 4, !dbg !1969
  %call = call i32 @cpu_to_node(i32 noundef %12) #19, !dbg !1970
  %call2 = call noalias ptr @kzalloc_node(i64 noundef 16, i32 noundef 3264, i32 noundef %call) #23, !dbg !1971
  store ptr %call2, ptr %td, align 8, !dbg !1972
  %13 = load ptr, ptr %td, align 8, !dbg !1973
  %tobool3 = icmp ne ptr %13, null, !dbg !1973
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1975

if.then4:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !1976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1976

if.end5:                                          ; preds = %if.end
  %14 = load i32, ptr %cpu.addr, align 4, !dbg !1977
  %15 = load ptr, ptr %td, align 8, !dbg !1978
  %cpu6 = getelementptr inbounds %struct.smpboot_thread_data, ptr %15, i32 0, i32 0, !dbg !1979
  store i32 %14, ptr %cpu6, align 8, !dbg !1980
  %16 = load ptr, ptr %ht.addr, align 8, !dbg !1981
  %17 = load ptr, ptr %td, align 8, !dbg !1982
  %ht7 = getelementptr inbounds %struct.smpboot_thread_data, ptr %17, i32 0, i32 2, !dbg !1983
  store ptr %16, ptr %ht7, align 8, !dbg !1984
  %18 = load ptr, ptr %td, align 8, !dbg !1985
  %19 = load i32, ptr %cpu.addr, align 4, !dbg !1986
  %20 = load ptr, ptr %ht.addr, align 8, !dbg !1987
  %thread_comm = getelementptr inbounds %struct.smp_hotplug_thread, ptr %20, i32 0, i32 10, !dbg !1988
  %21 = load ptr, ptr %thread_comm, align 8, !dbg !1988
  %call8 = call ptr @kthread_create_on_cpu(ptr noundef @smpboot_thread_fn, ptr noundef %18, i32 noundef %19, ptr noundef %21) #19, !dbg !1989
  store ptr %call8, ptr %tsk, align 8, !dbg !1990
  %22 = load ptr, ptr %tsk, align 8, !dbg !1991
  %call9 = call zeroext i1 @IS_ERR(ptr noundef %22) #19, !dbg !1993
  br i1 %call9, label %if.then10, label %if.end12, !dbg !1994

if.then10:                                        ; preds = %if.end5
  %23 = load ptr, ptr %td, align 8, !dbg !1995
  call void @kfree(ptr noundef %23) #19, !dbg !1997
  %24 = load ptr, ptr %tsk, align 8, !dbg !1998
  %call11 = call i64 @PTR_ERR(ptr noundef %24) #19, !dbg !1999
  %conv = trunc i64 %call11 to i32, !dbg !1999
  store i32 %conv, ptr %retval, align 4, !dbg !2000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2000

if.end12:                                         ; preds = %if.end5
  %25 = load ptr, ptr %tsk, align 8, !dbg !2001
  %26 = load i32, ptr %cpu.addr, align 4, !dbg !2002
  call void @kthread_set_per_cpu(ptr noundef %25, i32 noundef %26) #19, !dbg !2003
  %27 = load ptr, ptr %tsk, align 8, !dbg !2004
  %call13 = call i32 @kthread_park(ptr noundef %27) #19, !dbg !2005
  %28 = load ptr, ptr %tsk, align 8, !dbg !2006
  %call14 = call ptr @get_task_struct(ptr noundef %28) #19, !dbg !2007
  %29 = load ptr, ptr %tsk, align 8, !dbg !2008
  br label %do.body15, !dbg !2009

do.body15:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify16) #18, !dbg !2010
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify16, metadata !1942, metadata !DIExpression()), !dbg !2010
  store ptr null, ptr %__vpp_verify16, align 8, !dbg !2010
  %30 = load ptr, ptr %__vpp_verify16, align 8, !dbg !2010
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify16) #18, !dbg !2009
  br label %do.cond17, !dbg !2010

do.cond17:                                        ; preds = %do.body15
  br label %do.end18, !dbg !2010

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr20) #18, !dbg !2011
  call void @llvm.dbg.declare(metadata ptr %__ptr20, metadata !1945, metadata !DIExpression()), !dbg !2011
  %31 = load ptr, ptr %ht.addr, align 8, !dbg !2011
  %store21 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %31, i32 0, i32 0, !dbg !2011
  %32 = load ptr, ptr %store21, align 8, !dbg !2011
  %33 = ptrtoint ptr %32 to i64, !dbg !2011
  store i64 %33, ptr %__ptr20, align 8, !dbg !2011
  %34 = load i64, ptr %__ptr20, align 8, !dbg !2011
  %35 = load i32, ptr %cpu.addr, align 4, !dbg !2011
  %idxprom23 = zext i32 %35 to i64, !dbg !2011
  %arrayidx24 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom23, !dbg !2011
  %36 = load i64, ptr %arrayidx24, align 8, !dbg !2011
  %add25 = add i64 %34, %36, !dbg !2011
  %37 = inttoptr i64 %add25 to ptr, !dbg !2011
  store ptr %37, ptr %tmp22, align 8, !dbg !2011
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr20) #18, !dbg !2009
  %38 = load ptr, ptr %tmp22, align 8, !dbg !2011
  store ptr %38, ptr %tmp19, align 8, !dbg !2010
  %39 = load ptr, ptr %tmp19, align 8, !dbg !2009
  store ptr %29, ptr %39, align 8, !dbg !2012
  %40 = load ptr, ptr %ht.addr, align 8, !dbg !2013
  %create = getelementptr inbounds %struct.smp_hotplug_thread, ptr %40, i32 0, i32 4, !dbg !2014
  %41 = load ptr, ptr %create, align 8, !dbg !2014
  %tobool26 = icmp ne ptr %41, null, !dbg !2013
  br i1 %tobool26, label %if.then27, label %if.end59, !dbg !2015

if.then27:                                        ; preds = %do.end18
  %42 = load ptr, ptr %tsk, align 8, !dbg !2016
  %call28 = call i64 @wait_task_inactive(ptr noundef %42, i32 noundef 64) #19, !dbg !2017
  %tobool29 = icmp ne i64 %call28, 0, !dbg !2017
  br i1 %tobool29, label %if.else, label %if.then30, !dbg !2018

if.then30:                                        ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !2019
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1947, metadata !DIExpression()), !dbg !2019
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !2019
  %43 = load i32, ptr %__ret_warn_on, align 4, !dbg !2020
  %tobool31 = icmp ne i32 %43, 0, !dbg !2020
  %lnot = xor i1 %tobool31, true, !dbg !2020
  %lnot32 = xor i1 %lnot, true, !dbg !2020
  %lnot.ext = zext i1 %lnot32 to i32, !dbg !2020
  %conv33 = sext i32 %lnot.ext to i64, !dbg !2020
  %expval = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !2020
  %tobool34 = icmp ne i64 %expval, 0, !dbg !2020
  br i1 %tobool34, label %if.then35, label %if.end48, !dbg !2019

if.then35:                                        ; preds = %if.then30
  br label %do.body36, !dbg !2020

do.body36:                                        ; preds = %if.then35
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !2021
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1952, metadata !DIExpression()), !dbg !2021
  store i32 2305, ptr %__flags, align 4, !dbg !2021
  br label %do.body37, !dbg !2021

do.body37:                                        ; preds = %do.body36
  br label %do.cond38, !dbg !2022

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !2022

do.end39:                                         ; preds = %do.cond38
  br label %do.body40, !dbg !2021

do.body40:                                        ; preds = %do.end39
  %44 = load i32, ptr %__flags, align 4, !dbg !2024
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 206, i32 %44, i64 12) #18, !dbg !2024, !srcloc !2026
  br label %do.cond41, !dbg !2024

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !2024

do.end42:                                         ; preds = %do.cond41
  br label %do.body43, !dbg !2021

do.body43:                                        ; preds = %do.end42
  br label %do.cond44, !dbg !2027

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !2027

do.end45:                                         ; preds = %do.cond44
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !2020
  br label %do.cond46, !dbg !2021

do.cond46:                                        ; preds = %do.end45
  br label %do.end47, !dbg !2021

do.end47:                                         ; preds = %do.cond46
  br label %if.end48, !dbg !2021

if.end48:                                         ; preds = %do.end47, %if.then30
  %45 = load i32, ptr %__ret_warn_on, align 4, !dbg !2019
  %tobool50 = icmp ne i32 %45, 0, !dbg !2019
  %lnot51 = xor i1 %tobool50, true, !dbg !2019
  %lnot53 = xor i1 %lnot51, true, !dbg !2019
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !2019
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !2019
  %expval56 = call i64 @llvm.expect.i64(i64 %conv55, i64 0), !dbg !2019
  store i64 %expval56, ptr %tmp49, align 8, !dbg !2020
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !2029
  %46 = load i64, ptr %tmp49, align 8, !dbg !2019
  br label %if.end58, !dbg !2029

if.else:                                          ; preds = %if.then27
  %47 = load ptr, ptr %ht.addr, align 8, !dbg !2030
  %create57 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %47, i32 0, i32 4, !dbg !2031
  %48 = load ptr, ptr %create57, align 8, !dbg !2031
  %49 = load i32, ptr %cpu.addr, align 4, !dbg !2032
  call void %48(i32 noundef %49) #19, !dbg !2030
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.end48
  br label %if.end59, !dbg !2033

if.end59:                                         ; preds = %if.end58, %do.end18
  store i32 0, ptr %retval, align 4, !dbg !2034
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2034

cleanup:                                          ; preds = %if.end59, %if.then10, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #18, !dbg !2035
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsk) #18, !dbg !2035
  %50 = load i32, ptr %retval, align 4, !dbg !2035
  ret i32 %50, !dbg !2035
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2036 dso_local void @mutex_unlock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @smpboot_unpark_threads(i32 noundef %cpu) #0 align 16 !dbg !2037 {
entry:
  %cpu.addr = alloca i32, align 4
  %cur = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2039, metadata !DIExpression()), !dbg !2047
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #18, !dbg !2048
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !2040, metadata !DIExpression()), !dbg !2049
  call void @mutex_lock(ptr noundef @smpboot_threads_lock) #19, !dbg !2050
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !2051
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2041, metadata !DIExpression()), !dbg !2051
  %0 = load ptr, ptr @hotplug_threads, align 8, !dbg !2051
  store ptr %0, ptr %__mptr, align 8, !dbg !2051
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2051
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !2051
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2051
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !2052
  %2 = load ptr, ptr %tmp, align 8, !dbg !2051
  store ptr %2, ptr %cur, align 8, !dbg !2052
  br label %for.cond, !dbg !2052

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %cur, align 8, !dbg !2053
  %list = getelementptr inbounds %struct.smp_hotplug_thread, ptr %3, i32 0, i32 1, !dbg !2053
  %cmp = icmp eq ptr %list, @hotplug_threads, !dbg !2053
  %lnot = xor i1 %cmp, true, !dbg !2053
  br i1 %lnot, label %for.body, label %for.end, !dbg !2052

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cur, align 8, !dbg !2054
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !2055
  call void @smpboot_unpark_thread(ptr noundef %4, i32 noundef %5) #19, !dbg !2056
  br label %for.inc, !dbg !2056

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #18, !dbg !2057
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !2044, metadata !DIExpression()), !dbg !2057
  %6 = load ptr, ptr %cur, align 8, !dbg !2057
  %list2 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %6, i32 0, i32 1, !dbg !2057
  %next = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 0, !dbg !2057
  %7 = load ptr, ptr %next, align 8, !dbg !2057
  store ptr %7, ptr %__mptr1, align 8, !dbg !2057
  %8 = load ptr, ptr %__mptr1, align 8, !dbg !2057
  %add.ptr4 = getelementptr i8, ptr %8, i64 -8, !dbg !2057
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !2057
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #18, !dbg !2053
  %9 = load ptr, ptr %tmp3, align 8, !dbg !2057
  store ptr %9, ptr %cur, align 8, !dbg !2053
  br label %for.cond, !dbg !2053, !llvm.loop !2058

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @smpboot_threads_lock) #19, !dbg !2060
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #18, !dbg !2061
  ret i32 0, !dbg !2062
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @smpboot_unpark_thread(ptr noundef %ht, i32 noundef %cpu) #0 align 16 !dbg !2063 {
entry:
  %ht.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %tsk = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !2067, metadata !DIExpression()), !dbg !2075
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2068, metadata !DIExpression()), !dbg !2076
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsk) #18, !dbg !2077
  call void @llvm.dbg.declare(metadata ptr %tsk, metadata !2069, metadata !DIExpression()), !dbg !2078
  br label %do.body, !dbg !2079

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !2080
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2070, metadata !DIExpression()), !dbg !2080
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2080
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2080
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !2079
  br label %do.cond, !dbg !2080

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2080

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !2081
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2073, metadata !DIExpression()), !dbg !2081
  %1 = load ptr, ptr %ht.addr, align 8, !dbg !2081
  %store = getelementptr inbounds %struct.smp_hotplug_thread, ptr %1, i32 0, i32 0, !dbg !2081
  %2 = load ptr, ptr %store, align 8, !dbg !2081
  %3 = ptrtoint ptr %2 to i64, !dbg !2081
  store i64 %3, ptr %__ptr, align 8, !dbg !2081
  %4 = load i64, ptr %__ptr, align 8, !dbg !2081
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !2081
  %idxprom = zext i32 %5 to i64, !dbg !2081
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2081
  %6 = load i64, ptr %arrayidx, align 8, !dbg !2081
  %add = add i64 %4, %6, !dbg !2081
  %7 = inttoptr i64 %add to ptr, !dbg !2081
  store ptr %7, ptr %tmp1, align 8, !dbg !2081
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !2079
  %8 = load ptr, ptr %tmp1, align 8, !dbg !2081
  store ptr %8, ptr %tmp, align 8, !dbg !2080
  %9 = load ptr, ptr %tmp, align 8, !dbg !2079
  %10 = load ptr, ptr %9, align 8, !dbg !2082
  store ptr %10, ptr %tsk, align 8, !dbg !2078
  %11 = load ptr, ptr %ht.addr, align 8, !dbg !2083
  %selfparking = getelementptr inbounds %struct.smp_hotplug_thread, ptr %11, i32 0, i32 9, !dbg !2085
  %12 = load i8, ptr %selfparking, align 8, !dbg !2085, !range !2086, !noundef !446
  %tobool = trunc i8 %12 to i1, !dbg !2085
  br i1 %tobool, label %if.end, label %if.then, !dbg !2087

if.then:                                          ; preds = %do.end
  %13 = load ptr, ptr %tsk, align 8, !dbg !2088
  call void @kthread_unpark(ptr noundef %13) #19, !dbg !2089
  br label %if.end, !dbg !2089

if.end:                                           ; preds = %if.then, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsk) #18, !dbg !2090
  ret void, !dbg !2090
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @smpboot_park_threads(i32 noundef %cpu) #0 align 16 !dbg !2091 {
entry:
  %cpu.addr = alloca i32, align 4
  %cur = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2093, metadata !DIExpression()), !dbg !2101
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #18, !dbg !2102
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !2094, metadata !DIExpression()), !dbg !2103
  call void @mutex_lock(ptr noundef @smpboot_threads_lock) #19, !dbg !2104
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !2105
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2095, metadata !DIExpression()), !dbg !2105
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hotplug_threads, i32 0, i32 1), align 8, !dbg !2105
  store ptr %0, ptr %__mptr, align 8, !dbg !2105
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2105
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !2105
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2105
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !2106
  %2 = load ptr, ptr %tmp, align 8, !dbg !2105
  store ptr %2, ptr %cur, align 8, !dbg !2106
  br label %for.cond, !dbg !2106

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %cur, align 8, !dbg !2107
  %list = getelementptr inbounds %struct.smp_hotplug_thread, ptr %3, i32 0, i32 1, !dbg !2107
  %cmp = icmp eq ptr %list, @hotplug_threads, !dbg !2107
  %lnot = xor i1 %cmp, true, !dbg !2107
  br i1 %lnot, label %for.body, label %for.end, !dbg !2106

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cur, align 8, !dbg !2108
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !2109
  call void @smpboot_park_thread(ptr noundef %4, i32 noundef %5) #19, !dbg !2110
  br label %for.inc, !dbg !2110

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #18, !dbg !2111
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !2098, metadata !DIExpression()), !dbg !2111
  %6 = load ptr, ptr %cur, align 8, !dbg !2111
  %list2 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %6, i32 0, i32 1, !dbg !2111
  %prev = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 1, !dbg !2111
  %7 = load ptr, ptr %prev, align 8, !dbg !2111
  store ptr %7, ptr %__mptr1, align 8, !dbg !2111
  %8 = load ptr, ptr %__mptr1, align 8, !dbg !2111
  %add.ptr4 = getelementptr i8, ptr %8, i64 -8, !dbg !2111
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !2111
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #18, !dbg !2107
  %9 = load ptr, ptr %tmp3, align 8, !dbg !2111
  store ptr %9, ptr %cur, align 8, !dbg !2107
  br label %for.cond, !dbg !2107, !llvm.loop !2112

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @smpboot_threads_lock) #19, !dbg !2114
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #18, !dbg !2115
  ret i32 0, !dbg !2116
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @smpboot_park_thread(ptr noundef %ht, i32 noundef %cpu) #0 align 16 !dbg !2117 {
entry:
  %ht.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %tsk = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !2119, metadata !DIExpression()), !dbg !2127
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2120, metadata !DIExpression()), !dbg !2128
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsk) #18, !dbg !2129
  call void @llvm.dbg.declare(metadata ptr %tsk, metadata !2121, metadata !DIExpression()), !dbg !2130
  br label %do.body, !dbg !2131

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !2132
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2122, metadata !DIExpression()), !dbg !2132
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2132
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2132
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !2131
  br label %do.cond, !dbg !2132

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2132

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !2133
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2125, metadata !DIExpression()), !dbg !2133
  %1 = load ptr, ptr %ht.addr, align 8, !dbg !2133
  %store = getelementptr inbounds %struct.smp_hotplug_thread, ptr %1, i32 0, i32 0, !dbg !2133
  %2 = load ptr, ptr %store, align 8, !dbg !2133
  %3 = ptrtoint ptr %2 to i64, !dbg !2133
  store i64 %3, ptr %__ptr, align 8, !dbg !2133
  %4 = load i64, ptr %__ptr, align 8, !dbg !2133
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !2133
  %idxprom = zext i32 %5 to i64, !dbg !2133
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2133
  %6 = load i64, ptr %arrayidx, align 8, !dbg !2133
  %add = add i64 %4, %6, !dbg !2133
  %7 = inttoptr i64 %add to ptr, !dbg !2133
  store ptr %7, ptr %tmp1, align 8, !dbg !2133
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !2131
  %8 = load ptr, ptr %tmp1, align 8, !dbg !2133
  store ptr %8, ptr %tmp, align 8, !dbg !2132
  %9 = load ptr, ptr %tmp, align 8, !dbg !2131
  %10 = load ptr, ptr %9, align 8, !dbg !2134
  store ptr %10, ptr %tsk, align 8, !dbg !2130
  %11 = load ptr, ptr %tsk, align 8, !dbg !2135
  %tobool = icmp ne ptr %11, null, !dbg !2135
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2137

land.lhs.true:                                    ; preds = %do.end
  %12 = load ptr, ptr %ht.addr, align 8, !dbg !2138
  %selfparking = getelementptr inbounds %struct.smp_hotplug_thread, ptr %12, i32 0, i32 9, !dbg !2139
  %13 = load i8, ptr %selfparking, align 8, !dbg !2139, !range !2086, !noundef !446
  %tobool2 = trunc i8 %13 to i1, !dbg !2139
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2140

if.then:                                          ; preds = %land.lhs.true
  %14 = load ptr, ptr %tsk, align 8, !dbg !2141
  %call = call i32 @kthread_park(ptr noundef %14) #19, !dbg !2142
  br label %if.end, !dbg !2142

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsk) #18, !dbg !2143
  ret void, !dbg !2143
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @smpboot_register_percpu_thread(ptr noundef %plug_thread) #0 align 16 !dbg !2144 {
entry:
  %plug_thread.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %plug_thread, ptr %plug_thread.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plug_thread.addr, metadata !2148, metadata !DIExpression()), !dbg !2152
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #18, !dbg !2153
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2149, metadata !DIExpression()), !dbg !2154
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !2155
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2150, metadata !DIExpression()), !dbg !2156
  store i32 0, ptr %ret, align 4, !dbg !2156
  call void @cpus_read_lock() #19, !dbg !2157
  call void @mutex_lock(ptr noundef @smpboot_threads_lock) #19, !dbg !2158
  store i32 0, ptr %cpu, align 4, !dbg !2159
  br label %for.cond, !dbg !2159

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %cpu, align 4, !dbg !2161
  %conv = zext i32 %0 to i64, !dbg !2161
  %call = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv) #19, !dbg !2161
  %conv1 = trunc i64 %call to i32, !dbg !2161
  store i32 %conv1, ptr %cpu, align 4, !dbg !2161
  %1 = load i32, ptr %cpu, align 4, !dbg !2161
  %cmp = icmp ult i32 %1, 64, !dbg !2161
  br i1 %cmp, label %for.body, label %for.end, !dbg !2159

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %plug_thread.addr, align 8, !dbg !2163
  %3 = load i32, ptr %cpu, align 4, !dbg !2165
  %call3 = call i32 @__smpboot_create_thread(ptr noundef %2, i32 noundef %3) #19, !dbg !2166
  store i32 %call3, ptr %ret, align 4, !dbg !2167
  %4 = load i32, ptr %ret, align 4, !dbg !2168
  %tobool = icmp ne i32 %4, 0, !dbg !2168
  br i1 %tobool, label %if.then, label %if.end, !dbg !2170

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %plug_thread.addr, align 8, !dbg !2171
  call void @smpboot_destroy_threads(ptr noundef %5) #19, !dbg !2173
  br label %out, !dbg !2174

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %plug_thread.addr, align 8, !dbg !2175
  %7 = load i32, ptr %cpu, align 4, !dbg !2176
  call void @smpboot_unpark_thread(ptr noundef %6, i32 noundef %7) #19, !dbg !2177
  br label %for.inc, !dbg !2178

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %cpu, align 4, !dbg !2161
  %inc = add i32 %8, 1, !dbg !2161
  store i32 %inc, ptr %cpu, align 4, !dbg !2161
  br label %for.cond, !dbg !2161, !llvm.loop !2179

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %plug_thread.addr, align 8, !dbg !2181
  %list = getelementptr inbounds %struct.smp_hotplug_thread, ptr %9, i32 0, i32 1, !dbg !2182
  call void @list_add(ptr noundef %list, ptr noundef @hotplug_threads) #19, !dbg !2183
  br label %out, !dbg !2183

out:                                              ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !2151), !dbg !2184
  call void @mutex_unlock(ptr noundef @smpboot_threads_lock) #19, !dbg !2185
  call void @cpus_read_unlock() #19, !dbg !2186
  %10 = load i32, ptr %ret, align 4, !dbg !2187
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !2188
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #18, !dbg !2188
  ret i32 %10, !dbg !2189
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2190 dso_local void @cpus_read_lock() #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @smpboot_destroy_threads(ptr noundef %ht) #0 align 16 !dbg !2192 {
entry:
  %ht.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tsk = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp3 = alloca ptr, align 8
  %__vpp_verify6 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__ptr10 = alloca i64, align 8
  %tmp12 = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !2196, metadata !DIExpression()), !dbg !2214
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #18, !dbg !2215
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !2197, metadata !DIExpression()), !dbg !2216
  store i32 0, ptr %cpu, align 4, !dbg !2217
  br label %for.cond, !dbg !2217

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %cpu, align 4, !dbg !2218
  %conv = zext i32 %0 to i64, !dbg !2218
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #19, !dbg !2218
  %conv1 = trunc i64 %call to i32, !dbg !2218
  store i32 %conv1, ptr %cpu, align 4, !dbg !2218
  %1 = load i32, ptr %cpu, align 4, !dbg !2218
  %cmp = icmp ult i32 %1, 64, !dbg !2218
  br i1 %cmp, label %for.body, label %for.end, !dbg !2217

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsk) #18, !dbg !2219
  call void @llvm.dbg.declare(metadata ptr %tsk, metadata !2198, metadata !DIExpression()), !dbg !2220
  br label %do.body, !dbg !2221

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !2222
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2202, metadata !DIExpression()), !dbg !2222
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2222
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !2222
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !2221
  br label %do.cond, !dbg !2222

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2222

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !2223
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2205, metadata !DIExpression()), !dbg !2223
  %3 = load ptr, ptr %ht.addr, align 8, !dbg !2223
  %store = getelementptr inbounds %struct.smp_hotplug_thread, ptr %3, i32 0, i32 0, !dbg !2223
  %4 = load ptr, ptr %store, align 8, !dbg !2223
  %5 = ptrtoint ptr %4 to i64, !dbg !2223
  store i64 %5, ptr %__ptr, align 8, !dbg !2223
  %6 = load i64, ptr %__ptr, align 8, !dbg !2223
  %7 = load i32, ptr %cpu, align 4, !dbg !2223
  %idxprom = zext i32 %7 to i64, !dbg !2223
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2223
  %8 = load i64, ptr %arrayidx, align 8, !dbg !2223
  %add = add i64 %6, %8, !dbg !2223
  %9 = inttoptr i64 %add to ptr, !dbg !2223
  store ptr %9, ptr %tmp3, align 8, !dbg !2223
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !2221
  %10 = load ptr, ptr %tmp3, align 8, !dbg !2223
  store ptr %10, ptr %tmp, align 8, !dbg !2222
  %11 = load ptr, ptr %tmp, align 8, !dbg !2221
  %12 = load ptr, ptr %11, align 8, !dbg !2224
  store ptr %12, ptr %tsk, align 8, !dbg !2220
  %13 = load ptr, ptr %tsk, align 8, !dbg !2225
  %tobool = icmp ne ptr %13, null, !dbg !2225
  br i1 %tobool, label %if.then, label %if.end, !dbg !2226

if.then:                                          ; preds = %do.end
  %14 = load ptr, ptr %tsk, align 8, !dbg !2227
  %call4 = call i32 @kthread_stop_put(ptr noundef %14) #19, !dbg !2228
  br label %do.body5, !dbg !2229

do.body5:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify6) #18, !dbg !2230
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify6, metadata !2207, metadata !DIExpression()), !dbg !2230
  store ptr null, ptr %__vpp_verify6, align 8, !dbg !2230
  %15 = load ptr, ptr %__vpp_verify6, align 8, !dbg !2230
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify6) #18, !dbg !2229
  br label %do.cond7, !dbg !2230

do.cond7:                                         ; preds = %do.body5
  br label %do.end8, !dbg !2230

do.end8:                                          ; preds = %do.cond7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr10) #18, !dbg !2231
  call void @llvm.dbg.declare(metadata ptr %__ptr10, metadata !2212, metadata !DIExpression()), !dbg !2231
  %16 = load ptr, ptr %ht.addr, align 8, !dbg !2231
  %store11 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %16, i32 0, i32 0, !dbg !2231
  %17 = load ptr, ptr %store11, align 8, !dbg !2231
  %18 = ptrtoint ptr %17 to i64, !dbg !2231
  store i64 %18, ptr %__ptr10, align 8, !dbg !2231
  %19 = load i64, ptr %__ptr10, align 8, !dbg !2231
  %20 = load i32, ptr %cpu, align 4, !dbg !2231
  %idxprom13 = zext i32 %20 to i64, !dbg !2231
  %arrayidx14 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom13, !dbg !2231
  %21 = load i64, ptr %arrayidx14, align 8, !dbg !2231
  %add15 = add i64 %19, %21, !dbg !2231
  %22 = inttoptr i64 %add15 to ptr, !dbg !2231
  store ptr %22, ptr %tmp12, align 8, !dbg !2231
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr10) #18, !dbg !2229
  %23 = load ptr, ptr %tmp12, align 8, !dbg !2231
  store ptr %23, ptr %tmp9, align 8, !dbg !2230
  %24 = load ptr, ptr %tmp9, align 8, !dbg !2229
  store ptr null, ptr %24, align 8, !dbg !2232
  br label %if.end, !dbg !2233

if.end:                                           ; preds = %do.end8, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsk) #18, !dbg !2234
  br label %for.inc, !dbg !2235

for.inc:                                          ; preds = %if.end
  %25 = load i32, ptr %cpu, align 4, !dbg !2218
  %inc = add i32 %25, 1, !dbg !2218
  store i32 %inc, ptr %cpu, align 4, !dbg !2218
  br label %for.cond, !dbg !2218, !llvm.loop !2236

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #18, !dbg !2238
  ret void, !dbg !2238
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !2239 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2244, metadata !DIExpression()), !dbg !2246
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2245, metadata !DIExpression()), !dbg !2247
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2248
  %1 = load ptr, ptr %head.addr, align 8, !dbg !2249
  %2 = load ptr, ptr %head.addr, align 8, !dbg !2250
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !2251
  %3 = load ptr, ptr %next, align 8, !dbg !2251
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #19, !dbg !2252
  ret void, !dbg !2253
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2254 dso_local void @cpus_read_unlock() #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @smpboot_unregister_percpu_thread(ptr noundef %plug_thread) #0 align 16 !dbg !2255 {
entry:
  %plug_thread.addr = alloca ptr, align 8
  store ptr %plug_thread, ptr %plug_thread.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plug_thread.addr, metadata !2257, metadata !DIExpression()), !dbg !2258
  call void @cpus_read_lock() #19, !dbg !2259
  call void @mutex_lock(ptr noundef @smpboot_threads_lock) #19, !dbg !2260
  %0 = load ptr, ptr %plug_thread.addr, align 8, !dbg !2261
  %list = getelementptr inbounds %struct.smp_hotplug_thread, ptr %0, i32 0, i32 1, !dbg !2262
  call void @list_del(ptr noundef %list) #19, !dbg !2263
  %1 = load ptr, ptr %plug_thread.addr, align 8, !dbg !2264
  call void @smpboot_destroy_threads(ptr noundef %1) #19, !dbg !2265
  call void @mutex_unlock(ptr noundef @smpboot_threads_lock) #19, !dbg !2266
  call void @cpus_read_unlock() #19, !dbg !2267
  ret void, !dbg !2268
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !2269 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2273, metadata !DIExpression()), !dbg !2274
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2275
  call void @__list_del_entry(ptr noundef %0) #19, !dbg !2276
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2277
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2278
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !2279
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !2280
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !2281
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !2282
  ret void, !dbg !2283
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #5 align 16 !dbg !2284 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !2289, metadata !DIExpression()), !dbg !2290
  %0 = load i64, ptr %word.addr, align 8, !dbg !2291
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #20, !dbg !2292, !srcloc !2293
  store i64 %1, ptr %word.addr, align 8, !dbg !2292
  %2 = load i64, ptr %word.addr, align 8, !dbg !2294
  ret i64 %2, !dbg !2295
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2296 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2297 dso_local ptr @fork_idle(i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !2301 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2305, metadata !DIExpression()), !dbg !2306
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2307
  %1 = ptrtoint ptr %0 to i64, !dbg !2307
  %2 = inttoptr i64 %1 to ptr, !dbg !2307
  %3 = ptrtoint ptr %2 to i64, !dbg !2307
  %cmp = icmp uge i64 %3, -4095, !dbg !2307
  %lnot = xor i1 %cmp, true, !dbg !2307
  %lnot1 = xor i1 %lnot, true, !dbg !2307
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2307
  %conv = sext i32 %lnot.ext to i64, !dbg !2307
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2307
  %tobool = icmp ne i64 %expval, 0, !dbg !2307
  ret i1 %tobool, !dbg !2308
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2309 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) #10 align 16 !dbg !2313 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2317, metadata !DIExpression()), !dbg !2320
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2318, metadata !DIExpression()), !dbg !2321
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2319, metadata !DIExpression()), !dbg !2322
  %0 = load i64, ptr %size.addr, align 8, !dbg !2323
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2324
  %or = or i32 %1, 256, !dbg !2325
  %2 = load i32, ptr %node.addr, align 4, !dbg !2326
  %call = call noalias ptr @kmalloc_node(i64 noundef %0, i32 noundef %or, i32 noundef %2) #23, !dbg !2327
  ret ptr %call, !dbg !2328
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_to_node(i32 noundef %cpu) #3 align 16 !dbg !2329 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2334, metadata !DIExpression()), !dbg !2340
  br label %do.body, !dbg !2341

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !2342
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2335, metadata !DIExpression()), !dbg !2342
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2342
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2342
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !2341
  br label %do.end, !dbg !2342

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !2343
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2338, metadata !DIExpression()), !dbg !2343
  store i64 ptrtoint (ptr @numa_node to i64), ptr %__ptr, align 8, !dbg !2343
  %1 = load i64, ptr %__ptr, align 8, !dbg !2343
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !2343
  %idxprom = sext i32 %2 to i64, !dbg !2343
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !2343
  %3 = load i64, ptr %arrayidx, align 8, !dbg !2343
  %add = add i64 %1, %3, !dbg !2343
  %4 = inttoptr i64 %add to ptr, !dbg !2343
  store ptr %4, ptr %tmp1, align 8, !dbg !2343
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !2341
  %5 = load ptr, ptr %tmp1, align 8, !dbg !2343
  store ptr %5, ptr %tmp, align 8, !dbg !2342
  %6 = load ptr, ptr %tmp, align 8, !dbg !2341
  %7 = load i32, ptr %6, align 4, !dbg !2344
  ret i32 %7, !dbg !2345
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2346 dso_local ptr @kthread_create_on_cpu(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @smpboot_thread_fn(ptr noundef %data) #0 align 16 !dbg !1615 {
entry:
  %data.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %ht = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %tmp99 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp103 = alloca i32, align 4
  %tmp106 = alloca i32, align 4
  %tmp136 = alloca i32, align 4
  %pscr_ret__137 = alloca i32, align 4
  %__vpp_verify139 = alloca ptr, align 8
  %pfo_val__142 = alloca i32, align 4
  %tmp143 = alloca i32, align 4
  %tmp146 = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1619, metadata !DIExpression()), !dbg !2351
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #18, !dbg !2352
  call void @llvm.dbg.declare(metadata ptr %td, metadata !1620, metadata !DIExpression()), !dbg !2353
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2354
  store ptr %0, ptr %td, align 8, !dbg !2353
  call void @llvm.lifetime.start.p0(i64 8, ptr %ht) #18, !dbg !2355
  call void @llvm.dbg.declare(metadata ptr %ht, metadata !1627, metadata !DIExpression()), !dbg !2356
  %1 = load ptr, ptr %td, align 8, !dbg !2357
  %ht1 = getelementptr inbounds %struct.smpboot_thread_data, ptr %1, i32 0, i32 2, !dbg !2358
  %2 = load ptr, ptr %ht1, align 8, !dbg !2358
  store ptr %2, ptr %ht, align 8, !dbg !2356
  br label %while.cond, !dbg !2359

while.cond:                                       ; preds = %if.end290, %if.end247, %if.end207, %if.end132, %entry
  br label %while.body, !dbg !2359

while.body:                                       ; preds = %while.cond
  br label %do.body, !dbg !2360

do.body:                                          ; preds = %while.body
  br label %do.body2, !dbg !2361

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !2362

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !2362

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !2361

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !2364

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !2365

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !2365

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !2364

do.body7:                                         ; preds = %do.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #18, !dbg !2367
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !1628, metadata !DIExpression()), !dbg !2367
  %call = call ptr @get_current() #19, !dbg !2367
  %__state = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 1, !dbg !2367
  store ptr %__state, ptr %__ai_ptr, align 8, !dbg !2367
  br label %do.body8, !dbg !2367

do.body8:                                         ; preds = %do.body7
  br label %do.cond9, !dbg !2368

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2368

do.end10:                                         ; preds = %do.cond9
  %3 = load ptr, ptr %__ai_ptr, align 8, !dbg !2367
  call void @instrument_atomic_read_write(ptr noundef %3, i64 noundef 4) #19, !dbg !2367
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #18, !dbg !2370
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1635, metadata !DIExpression()), !dbg !2370
  store i32 1, ptr %__ret, align 4, !dbg !2370
  %4 = load i32, ptr %__ret, align 4, !dbg !2370
  %5 = load ptr, ptr %__ai_ptr, align 8, !dbg !2370
  %6 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %4, ptr elementtype(i32) %5) #18, !dbg !2370, !srcloc !2371
  store i32 %6, ptr %__ret, align 4, !dbg !2370
  %7 = load i32, ptr %__ret, align 4, !dbg !2370
  store i32 %7, ptr %tmp11, align 4, !dbg !2370
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #18, !dbg !2367
  %8 = load i32, ptr %tmp11, align 4, !dbg !2370
  store i32 %8, ptr %tmp, align 4, !dbg !2367
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #18, !dbg !2372
  %9 = load i32, ptr %tmp, align 4, !dbg !2367
  br label %do.cond12, !dbg !2372

do.cond12:                                        ; preds = %do.end10
  br label %do.end13, !dbg !2372

do.end13:                                         ; preds = %do.cond12
  br label %do.cond14, !dbg !2364

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !2364

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !2361

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !2361

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !2373

do.body18:                                        ; preds = %do.end17
  call void @__preempt_count_add(i32 noundef 1) #19, !dbg !2374
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !2374, !srcloc !2376
  br label %do.cond19, !dbg !2374

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !2374

do.end20:                                         ; preds = %do.cond19
  %call21 = call zeroext i1 @kthread_should_stop() #19, !dbg !2377
  br i1 %call21, label %if.then, label %if.end55, !dbg !2379

if.then:                                          ; preds = %do.end20
  br label %do.body22, !dbg !2380

do.body22:                                        ; preds = %if.then
  br label %do.body23, !dbg !2382

do.body23:                                        ; preds = %do.body22
  br label %do.cond24, !dbg !2384

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !2384

do.end25:                                         ; preds = %do.cond24
  br label %do.body26, !dbg !2382

do.body26:                                        ; preds = %do.end25
  br label %do.body27, !dbg !2386

do.body27:                                        ; preds = %do.body26
  br label %do.cond28, !dbg !2388

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !2388

do.end29:                                         ; preds = %do.cond28
  br label %do.body30, !dbg !2386

do.body30:                                        ; preds = %do.end29
  %call31 = call ptr @get_current() #19, !dbg !2390
  %__state32 = getelementptr inbounds %struct.task_struct, ptr %call31, i32 0, i32 1, !dbg !2390
  store volatile i32 0, ptr %__state32, align 8, !dbg !2390
  br label %do.cond33, !dbg !2390

do.cond33:                                        ; preds = %do.body30
  br label %do.end34, !dbg !2390

do.end34:                                         ; preds = %do.cond33
  br label %do.cond35, !dbg !2386

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !2386

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !2382

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !2382

do.end38:                                         ; preds = %do.cond37
  br label %do.body39, !dbg !2392

do.body39:                                        ; preds = %do.end38
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !2393, !srcloc !2395
  %call40 = call zeroext i1 @__preempt_count_dec_and_test() #19, !dbg !2396
  %lnot = xor i1 %call40, true, !dbg !2396
  %lnot41 = xor i1 %lnot, true, !dbg !2396
  %lnot.ext = zext i1 %lnot41 to i32, !dbg !2396
  %conv = sext i32 %lnot.ext to i64, !dbg !2396
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2396
  %tobool = icmp ne i64 %expval, 0, !dbg !2396
  br i1 %tobool, label %if.then42, label %if.end, !dbg !2393

if.then42:                                        ; preds = %do.body39
  br label %do.body43, !dbg !2396

do.body43:                                        ; preds = %if.then42
  %10 = call i64 @llvm.read_register.i64(metadata !1667), !dbg !2398
  %11 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %10) #18, !dbg !2398, !srcloc !2400
  call void @llvm.write_register.i64(metadata !1667, i64 %11), !dbg !2398
  br label %do.cond44, !dbg !2398

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !2398

do.end45:                                         ; preds = %do.cond44
  br label %if.end, !dbg !2398

if.end:                                           ; preds = %do.end45, %do.body39
  br label %do.cond46, !dbg !2393

do.cond46:                                        ; preds = %if.end
  br label %do.end47, !dbg !2393

do.end47:                                         ; preds = %do.cond46
  %12 = load ptr, ptr %ht, align 8, !dbg !2401
  %cleanup = getelementptr inbounds %struct.smp_hotplug_thread, ptr %12, i32 0, i32 6, !dbg !2403
  %13 = load ptr, ptr %cleanup, align 8, !dbg !2403
  %tobool48 = icmp ne ptr %13, null, !dbg !2401
  br i1 %tobool48, label %land.lhs.true, label %if.end54, !dbg !2404

land.lhs.true:                                    ; preds = %do.end47
  %14 = load ptr, ptr %td, align 8, !dbg !2405
  %status = getelementptr inbounds %struct.smpboot_thread_data, ptr %14, i32 0, i32 1, !dbg !2406
  %15 = load i32, ptr %status, align 4, !dbg !2406
  %cmp = icmp ne i32 %15, 0, !dbg !2407
  br i1 %cmp, label %if.then50, label %if.end54, !dbg !2408

if.then50:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr %ht, align 8, !dbg !2409
  %cleanup51 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %16, i32 0, i32 6, !dbg !2410
  %17 = load ptr, ptr %cleanup51, align 8, !dbg !2410
  %18 = load ptr, ptr %td, align 8, !dbg !2411
  %cpu = getelementptr inbounds %struct.smpboot_thread_data, ptr %18, i32 0, i32 0, !dbg !2412
  %19 = load i32, ptr %cpu, align 8, !dbg !2412
  %20 = load ptr, ptr %td, align 8, !dbg !2413
  %cpu52 = getelementptr inbounds %struct.smpboot_thread_data, ptr %20, i32 0, i32 0, !dbg !2414
  %21 = load i32, ptr %cpu52, align 8, !dbg !2414
  %call53 = call zeroext i1 @cpu_online(i32 noundef %21) #19, !dbg !2415
  call void %17(i32 noundef %19, i1 noundef zeroext %call53) #19, !dbg !2409
  br label %if.end54, !dbg !2409

if.end54:                                         ; preds = %if.then50, %land.lhs.true, %do.end47
  %22 = load ptr, ptr %td, align 8, !dbg !2416
  call void @kfree(ptr noundef %22) #19, !dbg !2417
  call void @llvm.lifetime.end.p0(i64 8, ptr %ht) #18, !dbg !2418
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #18, !dbg !2418
  ret i32 0, !dbg !2419

if.end55:                                         ; preds = %do.end20
  %call56 = call zeroext i1 @kthread_should_park() #19, !dbg !2420
  br i1 %call56, label %if.then57, label %if.end133, !dbg !2421

if.then57:                                        ; preds = %if.end55
  br label %do.body58, !dbg !2422

do.body58:                                        ; preds = %if.then57
  br label %do.body59, !dbg !2423

do.body59:                                        ; preds = %do.body58
  br label %do.cond60, !dbg !2425

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !2425

do.end61:                                         ; preds = %do.cond60
  br label %do.body62, !dbg !2423

do.body62:                                        ; preds = %do.end61
  br label %do.body63, !dbg !2427

do.body63:                                        ; preds = %do.body62
  br label %do.cond64, !dbg !2429

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !2429

do.end65:                                         ; preds = %do.cond64
  br label %do.body66, !dbg !2427

do.body66:                                        ; preds = %do.end65
  %call67 = call ptr @get_current() #19, !dbg !2431
  %__state68 = getelementptr inbounds %struct.task_struct, ptr %call67, i32 0, i32 1, !dbg !2431
  store volatile i32 0, ptr %__state68, align 8, !dbg !2431
  br label %do.cond69, !dbg !2431

do.cond69:                                        ; preds = %do.body66
  br label %do.end70, !dbg !2431

do.end70:                                         ; preds = %do.cond69
  br label %do.cond71, !dbg !2427

do.cond71:                                        ; preds = %do.end70
  br label %do.end72, !dbg !2427

do.end72:                                         ; preds = %do.cond71
  br label %do.cond73, !dbg !2423

do.cond73:                                        ; preds = %do.end72
  br label %do.end74, !dbg !2423

do.end74:                                         ; preds = %do.cond73
  br label %do.body75, !dbg !2433

do.body75:                                        ; preds = %do.end74
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !2434, !srcloc !2436
  %call76 = call zeroext i1 @__preempt_count_dec_and_test() #19, !dbg !2437
  %lnot77 = xor i1 %call76, true, !dbg !2437
  %lnot79 = xor i1 %lnot77, true, !dbg !2437
  %lnot.ext80 = zext i1 %lnot79 to i32, !dbg !2437
  %conv81 = sext i32 %lnot.ext80 to i64, !dbg !2437
  %expval82 = call i64 @llvm.expect.i64(i64 %conv81, i64 0), !dbg !2437
  %tobool83 = icmp ne i64 %expval82, 0, !dbg !2437
  br i1 %tobool83, label %if.then84, label %if.end88, !dbg !2434

if.then84:                                        ; preds = %do.body75
  br label %do.body85, !dbg !2437

do.body85:                                        ; preds = %if.then84
  %23 = call i64 @llvm.read_register.i64(metadata !1667), !dbg !2439
  %24 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %23) #18, !dbg !2439, !srcloc !2441
  call void @llvm.write_register.i64(metadata !1667, i64 %24), !dbg !2439
  br label %do.cond86, !dbg !2439

do.cond86:                                        ; preds = %do.body85
  br label %do.end87, !dbg !2439

do.end87:                                         ; preds = %do.cond86
  br label %if.end88, !dbg !2439

if.end88:                                         ; preds = %do.end87, %do.body75
  br label %do.cond89, !dbg !2434

do.cond89:                                        ; preds = %if.end88
  br label %do.end90, !dbg !2434

do.end90:                                         ; preds = %do.cond89
  %25 = load ptr, ptr %ht, align 8, !dbg !2442
  %park = getelementptr inbounds %struct.smp_hotplug_thread, ptr %25, i32 0, i32 7, !dbg !2443
  %26 = load ptr, ptr %park, align 8, !dbg !2443
  %tobool91 = icmp ne ptr %26, null, !dbg !2442
  br i1 %tobool91, label %land.lhs.true92, label %if.end132, !dbg !2444

land.lhs.true92:                                  ; preds = %do.end90
  %27 = load ptr, ptr %td, align 8, !dbg !2445
  %status93 = getelementptr inbounds %struct.smpboot_thread_data, ptr %27, i32 0, i32 1, !dbg !2446
  %28 = load i32, ptr %status93, align 4, !dbg !2446
  %cmp94 = icmp eq i32 %28, 1, !dbg !2447
  br i1 %cmp94, label %if.then96, label %if.end132, !dbg !2448

if.then96:                                        ; preds = %land.lhs.true92
  br label %do.body97, !dbg !2449

do.body97:                                        ; preds = %if.then96
  %29 = load ptr, ptr %td, align 8, !dbg !2450
  %cpu98 = getelementptr inbounds %struct.smpboot_thread_data, ptr %29, i32 0, i32 0, !dbg !2450
  %30 = load i32, ptr %cpu98, align 8, !dbg !2450
  call void @__this_cpu_preempt_check(ptr noundef @.str) #19, !dbg !2451
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #18, !dbg !2452
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1637, metadata !DIExpression()), !dbg !2452
  br label %do.body100, !dbg !2452

do.body100:                                       ; preds = %do.body97
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !2453
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1646, metadata !DIExpression()), !dbg !2453
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2453
  %31 = load ptr, ptr %__vpp_verify, align 8, !dbg !2453
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !2452
  br label %do.cond101, !dbg !2453

do.cond101:                                       ; preds = %do.body100
  br label %do.end102, !dbg !2453

do.end102:                                        ; preds = %do.cond101
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #18, !dbg !2454
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1648, metadata !DIExpression()), !dbg !2454
  %32 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #20, !dbg !2454, !srcloc !2455
  store i32 %32, ptr %pfo_val__, align 4, !dbg !2454
  %33 = load i32, ptr %pfo_val__, align 4, !dbg !2454
  %conv104 = zext i32 %33 to i64, !dbg !2454
  %conv105 = trunc i64 %conv104 to i32, !dbg !2454
  store i32 %conv105, ptr %tmp103, align 4, !dbg !2454
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #18, !dbg !2452
  %34 = load i32, ptr %tmp103, align 4, !dbg !2454
  store i32 %34, ptr %pscr_ret__, align 4, !dbg !2452
  %35 = load i32, ptr %pscr_ret__, align 4, !dbg !2452
  store i32 %35, ptr %tmp106, align 4, !dbg !2452
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #18, !dbg !2451
  %36 = load i32, ptr %tmp106, align 4, !dbg !2452
  store i32 %36, ptr %tmp99, align 4, !dbg !2451
  %37 = load i32, ptr %tmp99, align 4, !dbg !2451
  %cmp107 = icmp ne i32 %30, %37, !dbg !2450
  %lnot109 = xor i1 %cmp107, true, !dbg !2450
  %lnot111 = xor i1 %lnot109, true, !dbg !2450
  %lnot.ext112 = zext i1 %lnot111 to i32, !dbg !2450
  %conv113 = sext i32 %lnot.ext112 to i64, !dbg !2450
  %expval114 = call i64 @llvm.expect.i64(i64 %conv113, i64 0), !dbg !2450
  %tobool115 = icmp ne i64 %expval114, 0, !dbg !2450
  br i1 %tobool115, label %if.then116, label %if.end126, !dbg !2456

if.then116:                                       ; preds = %do.end102
  br label %do.body117, !dbg !2450

do.body117:                                       ; preds = %if.then116
  br label %do.body118, !dbg !2457

do.body118:                                       ; preds = %do.body117
  br label %do.cond119, !dbg !2459

do.cond119:                                       ; preds = %do.body118
  br label %do.end120, !dbg !2459

do.end120:                                        ; preds = %do.cond119
  br label %do.body121, !dbg !2457

do.body121:                                       ; preds = %do.end120
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 128, i32 0, i64 12) #18, !dbg !2461, !srcloc !2463
  br label %do.cond122, !dbg !2461

do.cond122:                                       ; preds = %do.body121
  br label %do.end123, !dbg !2461

do.end123:                                        ; preds = %do.cond122
  unreachable, !dbg !2457

do.cond124:                                       ; No predecessors!
  br label %do.end125, !dbg !2457

do.end125:                                        ; preds = %do.cond124
  br label %if.end126, !dbg !2457

if.end126:                                        ; preds = %do.end125, %do.end102
  br label %do.cond127, !dbg !2456

do.cond127:                                       ; preds = %if.end126
  br label %do.end128, !dbg !2456

do.end128:                                        ; preds = %do.cond127
  %38 = load ptr, ptr %ht, align 8, !dbg !2464
  %park129 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %38, i32 0, i32 7, !dbg !2465
  %39 = load ptr, ptr %park129, align 8, !dbg !2465
  %40 = load ptr, ptr %td, align 8, !dbg !2466
  %cpu130 = getelementptr inbounds %struct.smpboot_thread_data, ptr %40, i32 0, i32 0, !dbg !2467
  %41 = load i32, ptr %cpu130, align 8, !dbg !2467
  call void %39(i32 noundef %41) #19, !dbg !2464
  %42 = load ptr, ptr %td, align 8, !dbg !2468
  %status131 = getelementptr inbounds %struct.smpboot_thread_data, ptr %42, i32 0, i32 1, !dbg !2469
  store i32 2, ptr %status131, align 4, !dbg !2470
  br label %if.end132, !dbg !2471

if.end132:                                        ; preds = %do.end128, %land.lhs.true92, %do.end90
  call void @kthread_parkme() #19, !dbg !2472
  br label %while.cond, !dbg !2473, !llvm.loop !2474

if.end133:                                        ; preds = %if.end55
  br label %do.body134, !dbg !2476

do.body134:                                       ; preds = %if.end133
  %43 = load ptr, ptr %td, align 8, !dbg !2477
  %cpu135 = getelementptr inbounds %struct.smpboot_thread_data, ptr %43, i32 0, i32 0, !dbg !2477
  %44 = load i32, ptr %cpu135, align 8, !dbg !2477
  call void @__this_cpu_preempt_check(ptr noundef @.str) #19, !dbg !2478
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__137) #18, !dbg !2479
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__137, metadata !1650, metadata !DIExpression()), !dbg !2479
  br label %do.body138, !dbg !2479

do.body138:                                       ; preds = %do.body134
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify139) #18, !dbg !2480
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify139, metadata !1655, metadata !DIExpression()), !dbg !2480
  store ptr null, ptr %__vpp_verify139, align 8, !dbg !2480
  %45 = load ptr, ptr %__vpp_verify139, align 8, !dbg !2480
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify139) #18, !dbg !2479
  br label %do.cond140, !dbg !2480

do.cond140:                                       ; preds = %do.body138
  br label %do.end141, !dbg !2480

do.end141:                                        ; preds = %do.cond140
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__142) #18, !dbg !2481
  call void @llvm.dbg.declare(metadata ptr %pfo_val__142, metadata !1657, metadata !DIExpression()), !dbg !2481
  %46 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #20, !dbg !2481, !srcloc !2482
  store i32 %46, ptr %pfo_val__142, align 4, !dbg !2481
  %47 = load i32, ptr %pfo_val__142, align 4, !dbg !2481
  %conv144 = zext i32 %47 to i64, !dbg !2481
  %conv145 = trunc i64 %conv144 to i32, !dbg !2481
  store i32 %conv145, ptr %tmp143, align 4, !dbg !2481
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__142) #18, !dbg !2479
  %48 = load i32, ptr %tmp143, align 4, !dbg !2481
  store i32 %48, ptr %pscr_ret__137, align 4, !dbg !2479
  %49 = load i32, ptr %pscr_ret__137, align 4, !dbg !2479
  store i32 %49, ptr %tmp146, align 4, !dbg !2479
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__137) #18, !dbg !2478
  %50 = load i32, ptr %tmp146, align 4, !dbg !2479
  store i32 %50, ptr %tmp136, align 4, !dbg !2478
  %51 = load i32, ptr %tmp136, align 4, !dbg !2478
  %cmp147 = icmp ne i32 %44, %51, !dbg !2477
  %lnot149 = xor i1 %cmp147, true, !dbg !2477
  %lnot151 = xor i1 %lnot149, true, !dbg !2477
  %lnot.ext152 = zext i1 %lnot151 to i32, !dbg !2477
  %conv153 = sext i32 %lnot.ext152 to i64, !dbg !2477
  %expval154 = call i64 @llvm.expect.i64(i64 %conv153, i64 0), !dbg !2477
  %tobool155 = icmp ne i64 %expval154, 0, !dbg !2477
  br i1 %tobool155, label %if.then156, label %if.end166, !dbg !2483

if.then156:                                       ; preds = %do.end141
  br label %do.body157, !dbg !2477

do.body157:                                       ; preds = %if.then156
  br label %do.body158, !dbg !2484

do.body158:                                       ; preds = %do.body157
  br label %do.cond159, !dbg !2486

do.cond159:                                       ; preds = %do.body158
  br label %do.end160, !dbg !2486

do.end160:                                        ; preds = %do.cond159
  br label %do.body161, !dbg !2484

do.body161:                                       ; preds = %do.end160
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 137, i32 0, i64 12) #18, !dbg !2488, !srcloc !2490
  br label %do.cond162, !dbg !2488

do.cond162:                                       ; preds = %do.body161
  br label %do.end163, !dbg !2488

do.end163:                                        ; preds = %do.cond162
  unreachable, !dbg !2484

do.cond164:                                       ; No predecessors!
  br label %do.end165, !dbg !2484

do.end165:                                        ; preds = %do.cond164
  br label %if.end166, !dbg !2484

if.end166:                                        ; preds = %do.end165, %do.end141
  br label %do.cond167, !dbg !2483

do.cond167:                                       ; preds = %if.end166
  br label %do.end168, !dbg !2483

do.end168:                                        ; preds = %do.cond167
  %52 = load ptr, ptr %td, align 8, !dbg !2491
  %status169 = getelementptr inbounds %struct.smpboot_thread_data, ptr %52, i32 0, i32 1, !dbg !2492
  %53 = load i32, ptr %status169, align 4, !dbg !2492
  switch i32 %53, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb209
  ], !dbg !2493

sw.bb:                                            ; preds = %do.end168
  br label %do.body170, !dbg !2494

do.body170:                                       ; preds = %sw.bb
  br label %do.body171, !dbg !2496

do.body171:                                       ; preds = %do.body170
  br label %do.cond172, !dbg !2498

do.cond172:                                       ; preds = %do.body171
  br label %do.end173, !dbg !2498

do.end173:                                        ; preds = %do.cond172
  br label %do.body174, !dbg !2496

do.body174:                                       ; preds = %do.end173
  br label %do.body175, !dbg !2500

do.body175:                                       ; preds = %do.body174
  br label %do.cond176, !dbg !2502

do.cond176:                                       ; preds = %do.body175
  br label %do.end177, !dbg !2502

do.end177:                                        ; preds = %do.cond176
  br label %do.body178, !dbg !2500

do.body178:                                       ; preds = %do.end177
  %call179 = call ptr @get_current() #19, !dbg !2504
  %__state180 = getelementptr inbounds %struct.task_struct, ptr %call179, i32 0, i32 1, !dbg !2504
  store volatile i32 0, ptr %__state180, align 8, !dbg !2504
  br label %do.cond181, !dbg !2504

do.cond181:                                       ; preds = %do.body178
  br label %do.end182, !dbg !2504

do.end182:                                        ; preds = %do.cond181
  br label %do.cond183, !dbg !2500

do.cond183:                                       ; preds = %do.end182
  br label %do.end184, !dbg !2500

do.end184:                                        ; preds = %do.cond183
  br label %do.cond185, !dbg !2496

do.cond185:                                       ; preds = %do.end184
  br label %do.end186, !dbg !2496

do.end186:                                        ; preds = %do.cond185
  br label %do.body187, !dbg !2506

do.body187:                                       ; preds = %do.end186
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !2507, !srcloc !2509
  %call188 = call zeroext i1 @__preempt_count_dec_and_test() #19, !dbg !2510
  %lnot189 = xor i1 %call188, true, !dbg !2510
  %lnot191 = xor i1 %lnot189, true, !dbg !2510
  %lnot.ext192 = zext i1 %lnot191 to i32, !dbg !2510
  %conv193 = sext i32 %lnot.ext192 to i64, !dbg !2510
  %expval194 = call i64 @llvm.expect.i64(i64 %conv193, i64 0), !dbg !2510
  %tobool195 = icmp ne i64 %expval194, 0, !dbg !2510
  br i1 %tobool195, label %if.then196, label %if.end200, !dbg !2507

if.then196:                                       ; preds = %do.body187
  br label %do.body197, !dbg !2510

do.body197:                                       ; preds = %if.then196
  %54 = call i64 @llvm.read_register.i64(metadata !1667), !dbg !2512
  %55 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %54) #18, !dbg !2512, !srcloc !2514
  call void @llvm.write_register.i64(metadata !1667, i64 %55), !dbg !2512
  br label %do.cond198, !dbg !2512

do.cond198:                                       ; preds = %do.body197
  br label %do.end199, !dbg !2512

do.end199:                                        ; preds = %do.cond198
  br label %if.end200, !dbg !2512

if.end200:                                        ; preds = %do.end199, %do.body187
  br label %do.cond201, !dbg !2507

do.cond201:                                       ; preds = %if.end200
  br label %do.end202, !dbg !2507

do.end202:                                        ; preds = %do.cond201
  %56 = load ptr, ptr %ht, align 8, !dbg !2515
  %setup = getelementptr inbounds %struct.smp_hotplug_thread, ptr %56, i32 0, i32 5, !dbg !2517
  %57 = load ptr, ptr %setup, align 8, !dbg !2517
  %tobool203 = icmp ne ptr %57, null, !dbg !2515
  br i1 %tobool203, label %if.then204, label %if.end207, !dbg !2518

if.then204:                                       ; preds = %do.end202
  %58 = load ptr, ptr %ht, align 8, !dbg !2519
  %setup205 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %58, i32 0, i32 5, !dbg !2520
  %59 = load ptr, ptr %setup205, align 8, !dbg !2520
  %60 = load ptr, ptr %td, align 8, !dbg !2521
  %cpu206 = getelementptr inbounds %struct.smpboot_thread_data, ptr %60, i32 0, i32 0, !dbg !2522
  %61 = load i32, ptr %cpu206, align 8, !dbg !2522
  call void %59(i32 noundef %61) #19, !dbg !2519
  br label %if.end207, !dbg !2519

if.end207:                                        ; preds = %if.then204, %do.end202
  %62 = load ptr, ptr %td, align 8, !dbg !2523
  %status208 = getelementptr inbounds %struct.smpboot_thread_data, ptr %62, i32 0, i32 1, !dbg !2524
  store i32 1, ptr %status208, align 4, !dbg !2525
  br label %while.cond, !dbg !2526, !llvm.loop !2474

sw.bb209:                                         ; preds = %do.end168
  br label %do.body210, !dbg !2527

do.body210:                                       ; preds = %sw.bb209
  br label %do.body211, !dbg !2528

do.body211:                                       ; preds = %do.body210
  br label %do.cond212, !dbg !2530

do.cond212:                                       ; preds = %do.body211
  br label %do.end213, !dbg !2530

do.end213:                                        ; preds = %do.cond212
  br label %do.body214, !dbg !2528

do.body214:                                       ; preds = %do.end213
  br label %do.body215, !dbg !2532

do.body215:                                       ; preds = %do.body214
  br label %do.cond216, !dbg !2534

do.cond216:                                       ; preds = %do.body215
  br label %do.end217, !dbg !2534

do.end217:                                        ; preds = %do.cond216
  br label %do.body218, !dbg !2532

do.body218:                                       ; preds = %do.end217
  %call219 = call ptr @get_current() #19, !dbg !2536
  %__state220 = getelementptr inbounds %struct.task_struct, ptr %call219, i32 0, i32 1, !dbg !2536
  store volatile i32 0, ptr %__state220, align 8, !dbg !2536
  br label %do.cond221, !dbg !2536

do.cond221:                                       ; preds = %do.body218
  br label %do.end222, !dbg !2536

do.end222:                                        ; preds = %do.cond221
  br label %do.cond223, !dbg !2532

do.cond223:                                       ; preds = %do.end222
  br label %do.end224, !dbg !2532

do.end224:                                        ; preds = %do.cond223
  br label %do.cond225, !dbg !2528

do.cond225:                                       ; preds = %do.end224
  br label %do.end226, !dbg !2528

do.end226:                                        ; preds = %do.cond225
  br label %do.body227, !dbg !2538

do.body227:                                       ; preds = %do.end226
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !2539, !srcloc !2541
  %call228 = call zeroext i1 @__preempt_count_dec_and_test() #19, !dbg !2542
  %lnot229 = xor i1 %call228, true, !dbg !2542
  %lnot231 = xor i1 %lnot229, true, !dbg !2542
  %lnot.ext232 = zext i1 %lnot231 to i32, !dbg !2542
  %conv233 = sext i32 %lnot.ext232 to i64, !dbg !2542
  %expval234 = call i64 @llvm.expect.i64(i64 %conv233, i64 0), !dbg !2542
  %tobool235 = icmp ne i64 %expval234, 0, !dbg !2542
  br i1 %tobool235, label %if.then236, label %if.end240, !dbg !2539

if.then236:                                       ; preds = %do.body227
  br label %do.body237, !dbg !2542

do.body237:                                       ; preds = %if.then236
  %63 = call i64 @llvm.read_register.i64(metadata !1667), !dbg !2544
  %64 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %63) #18, !dbg !2544, !srcloc !2546
  call void @llvm.write_register.i64(metadata !1667, i64 %64), !dbg !2544
  br label %do.cond238, !dbg !2544

do.cond238:                                       ; preds = %do.body237
  br label %do.end239, !dbg !2544

do.end239:                                        ; preds = %do.cond238
  br label %if.end240, !dbg !2544

if.end240:                                        ; preds = %do.end239, %do.body227
  br label %do.cond241, !dbg !2539

do.cond241:                                       ; preds = %if.end240
  br label %do.end242, !dbg !2539

do.end242:                                        ; preds = %do.cond241
  %65 = load ptr, ptr %ht, align 8, !dbg !2547
  %unpark = getelementptr inbounds %struct.smp_hotplug_thread, ptr %65, i32 0, i32 8, !dbg !2549
  %66 = load ptr, ptr %unpark, align 8, !dbg !2549
  %tobool243 = icmp ne ptr %66, null, !dbg !2547
  br i1 %tobool243, label %if.then244, label %if.end247, !dbg !2550

if.then244:                                       ; preds = %do.end242
  %67 = load ptr, ptr %ht, align 8, !dbg !2551
  %unpark245 = getelementptr inbounds %struct.smp_hotplug_thread, ptr %67, i32 0, i32 8, !dbg !2552
  %68 = load ptr, ptr %unpark245, align 8, !dbg !2552
  %69 = load ptr, ptr %td, align 8, !dbg !2553
  %cpu246 = getelementptr inbounds %struct.smpboot_thread_data, ptr %69, i32 0, i32 0, !dbg !2554
  %70 = load i32, ptr %cpu246, align 8, !dbg !2554
  call void %68(i32 noundef %70) #19, !dbg !2551
  br label %if.end247, !dbg !2551

if.end247:                                        ; preds = %if.then244, %do.end242
  %71 = load ptr, ptr %td, align 8, !dbg !2555
  %status248 = getelementptr inbounds %struct.smpboot_thread_data, ptr %71, i32 0, i32 1, !dbg !2556
  store i32 1, ptr %status248, align 4, !dbg !2557
  br label %while.cond, !dbg !2558, !llvm.loop !2474

sw.epilog:                                        ; preds = %do.end168
  %72 = load ptr, ptr %ht, align 8, !dbg !2559
  %thread_should_run = getelementptr inbounds %struct.smp_hotplug_thread, ptr %72, i32 0, i32 2, !dbg !2561
  %73 = load ptr, ptr %thread_should_run, align 8, !dbg !2561
  %74 = load ptr, ptr %td, align 8, !dbg !2562
  %cpu249 = getelementptr inbounds %struct.smpboot_thread_data, ptr %74, i32 0, i32 0, !dbg !2563
  %75 = load i32, ptr %cpu249, align 8, !dbg !2563
  %call250 = call i32 %73(i32 noundef %75) #19, !dbg !2559
  %tobool251 = icmp ne i32 %call250, 0, !dbg !2559
  br i1 %tobool251, label %if.else, label %if.then252, !dbg !2564

if.then252:                                       ; preds = %sw.epilog
  br label %do.body253, !dbg !2565

do.body253:                                       ; preds = %if.then252
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !2567, !srcloc !2569
  call void @__preempt_count_sub(i32 noundef 1) #19, !dbg !2567
  br label %do.cond254, !dbg !2567

do.cond254:                                       ; preds = %do.body253
  br label %do.end255, !dbg !2567

do.end255:                                        ; preds = %do.cond254
  call void @schedule() #19, !dbg !2570
  br label %if.end290, !dbg !2571

if.else:                                          ; preds = %sw.epilog
  br label %do.body256, !dbg !2572

do.body256:                                       ; preds = %if.else
  br label %do.body257, !dbg !2574

do.body257:                                       ; preds = %do.body256
  br label %do.cond258, !dbg !2576

do.cond258:                                       ; preds = %do.body257
  br label %do.end259, !dbg !2576

do.end259:                                        ; preds = %do.cond258
  br label %do.body260, !dbg !2574

do.body260:                                       ; preds = %do.end259
  br label %do.body261, !dbg !2578

do.body261:                                       ; preds = %do.body260
  br label %do.cond262, !dbg !2580

do.cond262:                                       ; preds = %do.body261
  br label %do.end263, !dbg !2580

do.end263:                                        ; preds = %do.cond262
  br label %do.body264, !dbg !2578

do.body264:                                       ; preds = %do.end263
  %call265 = call ptr @get_current() #19, !dbg !2582
  %__state266 = getelementptr inbounds %struct.task_struct, ptr %call265, i32 0, i32 1, !dbg !2582
  store volatile i32 0, ptr %__state266, align 8, !dbg !2582
  br label %do.cond267, !dbg !2582

do.cond267:                                       ; preds = %do.body264
  br label %do.end268, !dbg !2582

do.end268:                                        ; preds = %do.cond267
  br label %do.cond269, !dbg !2578

do.cond269:                                       ; preds = %do.end268
  br label %do.end270, !dbg !2578

do.end270:                                        ; preds = %do.cond269
  br label %do.cond271, !dbg !2574

do.cond271:                                       ; preds = %do.end270
  br label %do.end272, !dbg !2574

do.end272:                                        ; preds = %do.cond271
  br label %do.body273, !dbg !2584

do.body273:                                       ; preds = %do.end272
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !2585, !srcloc !2587
  %call274 = call zeroext i1 @__preempt_count_dec_and_test() #19, !dbg !2588
  %lnot275 = xor i1 %call274, true, !dbg !2588
  %lnot277 = xor i1 %lnot275, true, !dbg !2588
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !2588
  %conv279 = sext i32 %lnot.ext278 to i64, !dbg !2588
  %expval280 = call i64 @llvm.expect.i64(i64 %conv279, i64 0), !dbg !2588
  %tobool281 = icmp ne i64 %expval280, 0, !dbg !2588
  br i1 %tobool281, label %if.then282, label %if.end286, !dbg !2585

if.then282:                                       ; preds = %do.body273
  br label %do.body283, !dbg !2588

do.body283:                                       ; preds = %if.then282
  %76 = call i64 @llvm.read_register.i64(metadata !1667), !dbg !2590
  %77 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %76) #18, !dbg !2590, !srcloc !2592
  call void @llvm.write_register.i64(metadata !1667, i64 %77), !dbg !2590
  br label %do.cond284, !dbg !2590

do.cond284:                                       ; preds = %do.body283
  br label %do.end285, !dbg !2590

do.end285:                                        ; preds = %do.cond284
  br label %if.end286, !dbg !2590

if.end286:                                        ; preds = %do.end285, %do.body273
  br label %do.cond287, !dbg !2585

do.cond287:                                       ; preds = %if.end286
  br label %do.end288, !dbg !2585

do.end288:                                        ; preds = %do.cond287
  %78 = load ptr, ptr %ht, align 8, !dbg !2593
  %thread_fn = getelementptr inbounds %struct.smp_hotplug_thread, ptr %78, i32 0, i32 3, !dbg !2594
  %79 = load ptr, ptr %thread_fn, align 8, !dbg !2594
  %80 = load ptr, ptr %td, align 8, !dbg !2595
  %cpu289 = getelementptr inbounds %struct.smpboot_thread_data, ptr %80, i32 0, i32 0, !dbg !2596
  %81 = load i32, ptr %cpu289, align 8, !dbg !2596
  call void %79(i32 noundef %81) #19, !dbg !2593
  br label %if.end290

if.end290:                                        ; preds = %do.end288, %do.end255
  br label %while.cond, !dbg !2359, !llvm.loop !2474
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2597 dso_local void @kfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !2600 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2604, metadata !DIExpression()), !dbg !2605
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2606
  %1 = ptrtoint ptr %0 to i64, !dbg !2607
  ret i64 %1, !dbg !2608
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2609 dso_local void @kthread_set_per_cpu(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2612 dso_local i32 @kthread_park(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_task_struct(ptr noundef %t) #3 align 16 !dbg !2615 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !2619, metadata !DIExpression()), !dbg !2620
  %0 = load ptr, ptr %t.addr, align 8, !dbg !2621
  %usage = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3, !dbg !2622
  call void @refcount_inc(ptr noundef %usage) #19, !dbg !2623
  %1 = load ptr, ptr %t.addr, align 8, !dbg !2624
  ret ptr %1, !dbg !2625
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2626 dso_local i64 @wait_task_inactive(ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef %node) #11 align 16 !dbg !2629 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2631, metadata !DIExpression()), !dbg !2637
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2632, metadata !DIExpression()), !dbg !2638
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2633, metadata !DIExpression()), !dbg !2639
  %0 = load i64, ptr %size.addr, align 8, !dbg !2640
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2641
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2642

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2643
  %tobool = icmp ne i64 %2, 0, !dbg !2643
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2644

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !2645
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2634, metadata !DIExpression()), !dbg !2646
  %3 = load i64, ptr %size.addr, align 8, !dbg !2647
  %cmp = icmp ugt i64 %3, 8192, !dbg !2649
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2650

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2651
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2652
  %6 = load i32, ptr %node.addr, align 4, !dbg !2653
  %call = call noalias align 4096 ptr @kmalloc_large_node(i64 noundef %4, i32 noundef %5, i32 noundef %6) #23, !dbg !2654
  store ptr %call, ptr %retval, align 8, !dbg !2655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2655

if.end:                                           ; preds = %if.then
  %7 = load i64, ptr %size.addr, align 8, !dbg !2656
  %call2 = call i32 @__kmalloc_index(i64 noundef %7, i1 noundef zeroext true) #19, !dbg !2656
  store i32 %call2, ptr %index, align 4, !dbg !2657
  %8 = load i32, ptr %flags.addr, align 4, !dbg !2658
  %9 = call ptr @llvm.returnaddress(i32 0), !dbg !2659
  %10 = ptrtoint ptr %9 to i64, !dbg !2659
  %call3 = call i32 @kmalloc_type(i32 noundef %8, i64 noundef %10) #19, !dbg !2660
  %idxprom = zext i32 %call3 to i64, !dbg !2661
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2661
  %11 = load i32, ptr %index, align 4, !dbg !2662
  %idxprom4 = zext i32 %11 to i64, !dbg !2661
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2661
  %12 = load ptr, ptr %arrayidx5, align 8, !dbg !2661
  %13 = load i32, ptr %flags.addr, align 4, !dbg !2663
  %14 = load i32, ptr %node.addr, align 4, !dbg !2664
  %15 = load i64, ptr %size.addr, align 8, !dbg !2665
  %call6 = call noalias align 8 ptr @kmalloc_node_trace(ptr noundef %12, i32 noundef %13, i32 noundef %14, i64 noundef %15) #24, !dbg !2666
  store ptr %call6, ptr %retval, align 8, !dbg !2667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2667

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !2668
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %16 = load i64, ptr %size.addr, align 8, !dbg !2669
  %17 = load i32, ptr %flags.addr, align 4, !dbg !2670
  %18 = load i32, ptr %node.addr, align 4, !dbg !2671
  %call8 = call noalias align 8 ptr @__kmalloc_node(i64 noundef %16, i32 noundef %17, i32 noundef %18) #23, !dbg !2672
  store ptr %call8, ptr %retval, align 8, !dbg !2673
  br label %return, !dbg !2673

return:                                           ; preds = %if.end7, %cleanup
  %19 = load ptr, ptr %retval, align 8, !dbg !2674
  ret ptr %19, !dbg !2674
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2675 dso_local noalias ptr @kmalloc_large_node(i64 noundef, i32 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !2676 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2680, metadata !DIExpression()), !dbg !2682
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2681, metadata !DIExpression()), !dbg !2683
  %0 = load i64, ptr %size.addr, align 8, !dbg !2684
  %tobool = icmp ne i64 %0, 0, !dbg !2684
  br i1 %tobool, label %if.end, label %if.then, !dbg !2686

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2687
  br label %return, !dbg !2687

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2688
  %cmp = icmp ule i64 %1, 8, !dbg !2690
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2691

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2692
  br label %return, !dbg !2692

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2693
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2695
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2696

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2697
  %cmp4 = icmp ule i64 %3, 96, !dbg !2698
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2699

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2700
  br label %return, !dbg !2700

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2701
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2703
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2704

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2705
  %cmp9 = icmp ule i64 %5, 192, !dbg !2706
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2707

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2708
  br label %return, !dbg !2708

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2709
  %cmp12 = icmp ule i64 %6, 8, !dbg !2711
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2712

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2713
  br label %return, !dbg !2713

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2714
  %cmp15 = icmp ule i64 %7, 16, !dbg !2716
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2717

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2718
  br label %return, !dbg !2718

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2719
  %cmp18 = icmp ule i64 %8, 32, !dbg !2721
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2722

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2723
  br label %return, !dbg !2723

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2724
  %cmp21 = icmp ule i64 %9, 64, !dbg !2726
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2727

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2728
  br label %return, !dbg !2728

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2729
  %cmp24 = icmp ule i64 %10, 128, !dbg !2731
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2732

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2733
  br label %return, !dbg !2733

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2734
  %cmp27 = icmp ule i64 %11, 256, !dbg !2736
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2737

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2738
  br label %return, !dbg !2738

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2739
  %cmp30 = icmp ule i64 %12, 512, !dbg !2741
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2742

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2743
  br label %return, !dbg !2743

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2744
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2746
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2747

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2748
  br label %return, !dbg !2748

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2749
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2751
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2752

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2753
  br label %return, !dbg !2753

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2754
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2756
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2757

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2758
  br label %return, !dbg !2758

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2759
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2761
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2762

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2763
  br label %return, !dbg !2763

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2764
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2766
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2767

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2768
  br label %return, !dbg !2768

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2769
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2771
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2772

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2773
  br label %return, !dbg !2773

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2774
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2776
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2777

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2778
  br label %return, !dbg !2778

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2779
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2781
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2782

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2783
  br label %return, !dbg !2783

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2784
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2786
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2787

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2788
  br label %return, !dbg !2788

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2789
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2791
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2792

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2793
  br label %return, !dbg !2793

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2794
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2796
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2797

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2798
  br label %return, !dbg !2798

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2799
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2801
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2802

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2803
  br label %return, !dbg !2803

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2804, !range !2086, !noundef !446
  %tobool69 = trunc i8 %25 to i1, !dbg !2804
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2806

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2807

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #25, !dbg !2808, !srcloc !2811
  unreachable, !dbg !2808

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2812

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2813

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2814

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2816

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2814

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #18, !dbg !2818, !srcloc !2820
  br label %do.end75, !dbg !2818

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2814

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2821
  br label %return, !dbg !2821

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2822
  ret i32 %26, !dbg !2822
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(3)
declare !dbg !2823 dso_local noalias ptr @kmalloc_node_trace(ptr noundef, i32 noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !2829 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2833, metadata !DIExpression()), !dbg !2835
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2834, metadata !DIExpression()), !dbg !2836
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2837
  %and = and i32 %0, 17, !dbg !2837
  %cmp = icmp eq i32 %and, 0, !dbg !2837
  %lnot = xor i1 %cmp, true, !dbg !2837
  %lnot1 = xor i1 %lnot, true, !dbg !2837
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2837
  %conv = sext i32 %lnot.ext to i64, !dbg !2837
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2837
  %tobool = icmp ne i64 %expval, 0, !dbg !2837
  br i1 %tobool, label %if.then, label %if.end, !dbg !2839

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2840
  br label %return, !dbg !2840

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2841
  %and2 = and i32 %1, 1, !dbg !2843
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2843
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2844

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2845
  br label %return, !dbg !2845

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2846
  br label %return, !dbg !2846

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2848
  ret i32 %2, !dbg !2848
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2849 dso_local noalias ptr @__kmalloc_node(i64 noundef, i32 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2850 dso_local void @__compiletime_assert_204() #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !2851 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2859, metadata !DIExpression()), !dbg !2861
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2860, metadata !DIExpression()), !dbg !2862
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2863
  %1 = load i64, ptr %size.addr, align 8, !dbg !2864
  %conv = trunc i64 %1 to i32, !dbg !2864
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !2865
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2866
  %3 = load i64, ptr %size.addr, align 8, !dbg !2866
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #19, !dbg !2866
  ret void, !dbg !2867
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #5 align 16 !dbg !2868 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2873, metadata !DIExpression()), !dbg !2881
  br label %do.body, !dbg !2882

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #18, !dbg !2883
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !2874, metadata !DIExpression()), !dbg !2883
  %0 = load i32, ptr %val.addr, align 4, !dbg !2883
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2883
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !2883

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !2883
  %cmp = icmp eq i32 %2, 1, !dbg !2883
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !2883

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !2883
  %cmp1 = icmp eq i32 %3, -1, !dbg !2883
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !2883

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !2883
  br label %cond.end, !dbg !2883

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !2883

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !2883
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !2883
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !2884
  %cmp2 = icmp eq i32 %5, 1, !dbg !2884
  br i1 %cmp2, label %if.then, label %if.else, !dbg !2883

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !2885, !srcloc !2887
  br label %if.end8, !dbg !2884

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !2888
  %cmp3 = icmp eq i32 %6, -1, !dbg !2888
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !2884

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !2889, !srcloc !2891
  br label %if.end, !dbg !2888

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !2888

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #18, !dbg !2892
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !2877, metadata !DIExpression()), !dbg !2892
  %7 = load i32, ptr %val.addr, align 4, !dbg !2892
  %conv = sext i32 %7 to i64, !dbg !2892
  %and = and i64 %conv, 4294967295, !dbg !2892
  %conv7 = trunc i64 %and to i32, !dbg !2892
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !2892
  %8 = load i32, ptr %pto_val__, align 4, !dbg !2892
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !2892, !srcloc !2893
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #18, !dbg !2888
  br label %do.cond, !dbg !2892

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !2892

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #18, !dbg !2882
  br label %do.end10, !dbg !2883

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !2894
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2895 dso_local zeroext i1 @kthread_should_stop() #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #5 align 16 !dbg !2898 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #18, !dbg !2902
  call void @llvm.dbg.declare(metadata ptr %c, metadata !2900, metadata !DIExpression()), !dbg !2902
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !2902, !srcloc !2903
  %1 = icmp ult i8 %0, 2, !dbg !2902
  call void @llvm.assume(i1 %1), !dbg !2902
  store i8 %0, ptr %c, align 1, !dbg !2902
  %2 = load i8, ptr %c, align 1, !dbg !2902, !range !2086, !noundef !446
  %tobool = trunc i8 %2 to i1, !dbg !2902
  %frombool = zext i1 %tobool to i8, !dbg !2902
  store i8 %frombool, ptr %tmp, align 1, !dbg !2902
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #18, !dbg !2904
  %3 = load i8, ptr %tmp, align 1, !dbg !2902, !range !2086, !noundef !446
  %tobool1 = trunc i8 %3 to i1, !dbg !2902
  ret i1 %tobool1, !dbg !2905
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #15

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #3 align 16 !dbg !2906 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2910, metadata !DIExpression()), !dbg !2911
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2912
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #19, !dbg !2913
  ret i1 %call, !dbg !2914
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2915 dso_local zeroext i1 @kthread_should_park() #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2916 dso_local void @kthread_parkme() #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_sub(i32 noundef %val) #5 align 16 !dbg !2917 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2919, metadata !DIExpression()), !dbg !2926
  br label %do.body, !dbg !2927

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #18, !dbg !2928
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !2920, metadata !DIExpression()), !dbg !2928
  %0 = load i32, ptr %val.addr, align 4, !dbg !2928
  %sub = sub i32 0, %0, !dbg !2928
  %1 = call i1 @llvm.is.constant.i32(i32 %sub), !dbg !2928
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !2928

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !2928
  %sub1 = sub i32 0, %2, !dbg !2928
  %cmp = icmp eq i32 %sub1, 1, !dbg !2928
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !2928

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !2928
  %sub2 = sub i32 0, %3, !dbg !2928
  %cmp3 = icmp eq i32 %sub2, -1, !dbg !2928
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !2928

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !2928
  %sub4 = sub i32 0, %4, !dbg !2928
  br label %cond.end, !dbg !2928

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !2928

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub4, %cond.true ], [ 0, %cond.false ], !dbg !2928
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !2928
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !2929
  %cmp5 = icmp eq i32 %5, 1, !dbg !2929
  br i1 %cmp5, label %if.then, label %if.else, !dbg !2928

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !2930, !srcloc !2932
  br label %if.end12, !dbg !2929

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !2933
  %cmp6 = icmp eq i32 %6, -1, !dbg !2933
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !2929

if.then7:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !2934, !srcloc !2936
  br label %if.end, !dbg !2933

if.else8:                                         ; preds = %if.else
  br label %do.body9, !dbg !2933

do.body9:                                         ; preds = %if.else8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #18, !dbg !2937
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !2922, metadata !DIExpression()), !dbg !2937
  %7 = load i32, ptr %val.addr, align 4, !dbg !2937
  %sub10 = sub i32 0, %7, !dbg !2937
  %conv = sext i32 %sub10 to i64, !dbg !2937
  %and = and i64 %conv, 4294967295, !dbg !2937
  %conv11 = trunc i64 %and to i32, !dbg !2937
  store i32 %conv11, ptr %pto_val__, align 4, !dbg !2937
  %8 = load i32, ptr %pto_val__, align 4, !dbg !2937
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #18, !dbg !2937, !srcloc !2938
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #18, !dbg !2933
  br label %do.cond, !dbg !2937

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !2937

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then7
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #18, !dbg !2927
  br label %do.end14, !dbg !2928

do.end14:                                         ; preds = %if.end12
  ret void, !dbg !2939
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2940 dso_local void @schedule() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !2941 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2946, metadata !DIExpression()), !dbg !2948
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2947, metadata !DIExpression()), !dbg !2949
  ret i1 true, !dbg !2950
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !2951 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2956, metadata !DIExpression()), !dbg !2959
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2957, metadata !DIExpression()), !dbg !2960
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2958, metadata !DIExpression()), !dbg !2961
  ret void, !dbg !2962
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #5 align 16 !dbg !2963 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2967, metadata !DIExpression()), !dbg !2969
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !2968, metadata !DIExpression()), !dbg !2970
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2971
  %call = call i32 @cpumask_check(i32 noundef %0) #19, !dbg !2971
  %conv = zext i32 %call to i64, !dbg !2971
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !2971
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !2971
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2971
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #19, !dbg !2971
  ret i1 %call1, !dbg !2972
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2973 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2981, metadata !DIExpression()), !dbg !2983
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2982, metadata !DIExpression()), !dbg !2984
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2985
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2986
  %div = udiv i64 %1, 64, !dbg !2986
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2987
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #19, !dbg !2988
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2989
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2990
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !2991
  ret i1 %call, !dbg !2992
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #5 align 16 !dbg !2993 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2997, metadata !DIExpression()), !dbg !2998
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2999
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #19, !dbg !3000
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !3001
  ret i32 %1, !dbg !3002
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !3003 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3005, metadata !DIExpression()), !dbg !3007
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3006, metadata !DIExpression()), !dbg !3008
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3009
  %1 = load i64, ptr %size.addr, align 8, !dbg !3010
  %conv = trunc i64 %1 to i32, !dbg !3010
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #19, !dbg !3011
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3012
  %3 = load i64, ptr %size.addr, align 8, !dbg !3012
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #19, !dbg !3012
  ret void, !dbg !3013
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3014 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3016, metadata !DIExpression()), !dbg !3018
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3017, metadata !DIExpression()), !dbg !3019
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3020
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3021
  br i1 %1, label %cond.true, label %cond.false, !dbg !3021

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3022
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !3023
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !3024
  %conv = zext i1 %call to i32, !dbg !3024
  br label %cond.end, !dbg !3021

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !3025
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !3026
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #19, !dbg !3027
  %conv2 = zext i1 %call1 to i32, !dbg !3027
  br label %cond.end, !dbg !3021

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3021
  %tobool = icmp ne i32 %cond, 0, !dbg !3021
  ret i1 %tobool, !dbg !3028
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !3029 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3031, metadata !DIExpression()), !dbg !3033
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3032, metadata !DIExpression()), !dbg !3034
  ret i1 true, !dbg !3035
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3036 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3040, metadata !DIExpression()), !dbg !3042
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3041, metadata !DIExpression()), !dbg !3043
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3044
  %and = and i64 %0, 63, !dbg !3045
  %shl = shl i64 1, %and, !dbg !3046
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3047
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3048
  %shr = ashr i64 %2, 6, !dbg !3049
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3047
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3047
  %and1 = and i64 %shl, %3, !dbg !3050
  %cmp = icmp ne i64 %and1, 0, !dbg !3051
  ret i1 %cmp, !dbg !3052
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !3053 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3055, metadata !DIExpression()), !dbg !3058
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3056, metadata !DIExpression()), !dbg !3059
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #18, !dbg !3060
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3057, metadata !DIExpression()), !dbg !3061
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3062
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3063
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #18, !dbg !3064, !srcloc !3065
  %3 = icmp ult i8 %2, 2, !dbg !3064
  call void @llvm.assume(i1 %3), !dbg !3064
  store i8 %2, ptr %oldbit, align 1, !dbg !3064
  %4 = load i8, ptr %oldbit, align 1, !dbg !3066, !range !2086, !noundef !446
  %tobool = trunc i8 %4 to i1, !dbg !3066
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #18, !dbg !3067
  ret i1 %tobool, !dbg !3068
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #5 align 16 !dbg !3069 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3073, metadata !DIExpression()), !dbg !3075
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !3074, metadata !DIExpression()), !dbg !3076
  ret void, !dbg !3077
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #3 align 16 !dbg !3078 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3083, metadata !DIExpression()), !dbg !3084
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3085
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #19, !dbg !3086
  ret void, !dbg !3087
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !3088 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3092, metadata !DIExpression()), !dbg !3094
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3093, metadata !DIExpression()), !dbg !3095
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3096
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !3097
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #19, !dbg !3098
  ret void, !dbg !3099
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #3 align 16 !dbg !3100 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3104, metadata !DIExpression()), !dbg !3108
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3105, metadata !DIExpression()), !dbg !3109
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3106, metadata !DIExpression()), !dbg !3110
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #18, !dbg !3111
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3107, metadata !DIExpression()), !dbg !3112
  %0 = load i32, ptr %i.addr, align 4, !dbg !3113
  %1 = load ptr, ptr %r.addr, align 8, !dbg !3114
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !3115
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #19, !dbg !3116
  store i32 %call, ptr %old, align 4, !dbg !3112
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !3117
  %tobool = icmp ne ptr %2, null, !dbg !3117
  br i1 %tobool, label %if.then, label %if.end, !dbg !3119

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !3120
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !3121
  store i32 %3, ptr %4, align 4, !dbg !3122
  br label %if.end, !dbg !3123

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !3124
  %tobool1 = icmp ne i32 %5, 0, !dbg !3124
  %lnot = xor i1 %tobool1, true, !dbg !3124
  %lnot2 = xor i1 %lnot, true, !dbg !3124
  %lnot3 = xor i1 %lnot2, true, !dbg !3124
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3124
  %conv = sext i32 %lnot.ext to i64, !dbg !3124
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3124
  %tobool4 = icmp ne i64 %expval, 0, !dbg !3124
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !3126

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !3127
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #19, !dbg !3128
  br label %if.end18, !dbg !3128

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !3129
  %cmp = icmp slt i32 %7, 0, !dbg !3129
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3129

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !3129
  %9 = load i32, ptr %i.addr, align 4, !dbg !3129
  %add = add i32 %8, %9, !dbg !3129
  %cmp7 = icmp slt i32 %add, 0, !dbg !3129
  br label %lor.end, !dbg !3129

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !3129
  %lnot11 = xor i1 %lnot9, true, !dbg !3129
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !3129
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !3129
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !3129
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !3129
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3131

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !3132
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #19, !dbg !3133
  br label %if.end17, !dbg !3133

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #18, !dbg !3134
  ret void, !dbg !3134
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !3135 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3141, metadata !DIExpression()), !dbg !3143
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3142, metadata !DIExpression()), !dbg !3144
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3145
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #19, !dbg !3146
  %1 = load i32, ptr %i.addr, align 4, !dbg !3147
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3148
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #19, !dbg !3149
  ret i32 %call, !dbg !3150
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3151 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !3154 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3157, metadata !DIExpression()), !dbg !3159
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3158, metadata !DIExpression()), !dbg !3160
  %0 = load i32, ptr %i.addr, align 4, !dbg !3161
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3162
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #19, !dbg !3163
  ret i32 %call, !dbg !3164
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #5 align 16 !dbg !3165 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3168, metadata !DIExpression()), !dbg !3172
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3169, metadata !DIExpression()), !dbg !3173
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #18, !dbg !3174
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3170, metadata !DIExpression()), !dbg !3174
  %0 = load i32, ptr %i.addr, align 4, !dbg !3174
  store i32 %0, ptr %__ret, align 4, !dbg !3174
  %1 = load i32, ptr %__ret, align 4, !dbg !3174
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3174
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !3174
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #18, !dbg !3174, !srcloc !3175
  store i32 %3, ptr %__ret, align 4, !dbg !3174
  %4 = load i32, ptr %__ret, align 4, !dbg !3174
  store i32 %4, ptr %tmp, align 4, !dbg !3174
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #18, !dbg !3176
  %5 = load i32, ptr %tmp, align 4, !dbg !3174
  ret i32 %5, !dbg !3177
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3178 dso_local void @kthread_unpark(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3181 dso_local i32 @kthread_stop_put(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !3182 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3186, metadata !DIExpression()), !dbg !3189
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3187, metadata !DIExpression()), !dbg !3190
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3188, metadata !DIExpression()), !dbg !3191
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3192
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !3194
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3195
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19, !dbg !3196
  br i1 %call, label %if.end, label %if.then, !dbg !3197

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3198

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !3199
  %4 = load ptr, ptr %next.addr, align 8, !dbg !3200
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !3201
  store ptr %3, ptr %prev1, align 8, !dbg !3202
  %5 = load ptr, ptr %next.addr, align 8, !dbg !3203
  %6 = load ptr, ptr %new.addr, align 8, !dbg !3204
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !3205
  store ptr %5, ptr %next2, align 8, !dbg !3206
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !3207
  %8 = load ptr, ptr %new.addr, align 8, !dbg !3208
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !3209
  store ptr %7, ptr %prev3, align 8, !dbg !3210
  br label %do.body, !dbg !3211

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3212

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3214

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3212

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !3216
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !3216
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !3216
  store volatile ptr %9, ptr %next6, align 8, !dbg !3216
  br label %do.end7, !dbg !3216

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3212

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3218
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !3219 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3223, metadata !DIExpression()), !dbg !3226
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3224, metadata !DIExpression()), !dbg !3227
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3225, metadata !DIExpression()), !dbg !3228
  ret i1 true, !dbg !3229
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !3230 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3232, metadata !DIExpression()), !dbg !3233
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3234
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #19, !dbg !3236
  br i1 %call, label %if.end, label %if.then, !dbg !3237

if.then:                                          ; preds = %entry
  br label %return, !dbg !3238

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3239
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3240
  %2 = load ptr, ptr %prev, align 8, !dbg !3240
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !3241
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3242
  %4 = load ptr, ptr %next, align 8, !dbg !3242
  call void @__list_del(ptr noundef %2, ptr noundef %4) #19, !dbg !3243
  br label %return, !dbg !3244

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3244
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !3245 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3249, metadata !DIExpression()), !dbg !3250
  ret i1 true, !dbg !3251
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !3252 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3254, metadata !DIExpression()), !dbg !3256
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3255, metadata !DIExpression()), !dbg !3257
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3258
  %1 = load ptr, ptr %next.addr, align 8, !dbg !3259
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3260
  store ptr %0, ptr %prev1, align 8, !dbg !3261
  br label %do.body, !dbg !3262

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3263

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3265

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3263

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3267
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3267
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3267
  store volatile ptr %2, ptr %next4, align 8, !dbg !3267
  br label %do.end5, !dbg !3267

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3263

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3269
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(3) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #16 = { nocallback nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { noredzone }
attributes #20 = { nounwind memory(read) }
attributes #21 = { nounwind memory(none) }
attributes #22 = { cold noredzone }
attributes #23 = { noredzone allocsize(0) }
attributes #24 = { noredzone allocsize(3) }
attributes #25 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!1667}
!llvm.module.flags = !{!1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675}
!llvm.ident = !{!1676}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "idle_threads", scope: !2, file: !3, line: 28, type: !54, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.smpboot.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/smpboot\22 -D KBUILD_BASENAME=\22smpboot\22 -D KBUILD_MODNAME=\22smpboot\22 -D __KBUILD_MODNAME=kmod_smpboot -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/smpboot.ll kernel/smpboot.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !52, globals: !1584, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/smpboot.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a8af96ef09cd22899249f44512b79e68")
!4 = !{!5, !11, !17, !24, !29, !39, !44}
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
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !30, line: 364, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!31 = !{!32, !33, !34, !35, !36, !37, !38}
!32 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!33 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!34 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!35 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!36 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!37 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!38 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 90, baseType: !7, size: 32, elements: !40)
!40 = !{!41, !42, !43}
!41 = !DIEnumerator(name: "HP_THREAD_NONE", value: 0)
!42 = !DIEnumerator(name: "HP_THREAD_ACTIVE", value: 1)
!43 = !DIEnumerator(name: "HP_THREAD_PARKED", value: 2)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !45, line: 119, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!46 = !{!47, !48, !49, !50, !51}
!47 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!48 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!49 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!50 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!51 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!52 = !{!53, !73, !63, !791, !84, !1550, !7, !1552, !54, !1578, !1579, !66, !1581, !583, !1582}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !56, line: 746, size: 58368, elements: !57)
!56 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!57 = !{!58, !71, !72, !74, !85, !86, !87, !88, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !180, !191, !318, !322, !325, !356, !357, !358, !359, !370, !372, !373, !374, !375, !376, !377, !388, !389, !392, !393, !394, !395, !396, !397, !398, !399, !406, !407, !414, !415, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !718, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !774, !776, !777, !778, !790, !792, !793, !794, !795, !796, !797, !803, !804, !805, !806, !807, !808, !809, !823, !829, !833, !834, !835, !838, !843, !846, !853, !858, !861, !864, !867, !870, !873, !876, !882, !883, !884, !890, !891, !895, !896, !897, !900, !907, !908, !917, !928, !929, !930, !931, !932, !937, !938, !939, !942, !943, !946, !949, !952, !955, !958, !959, !1046, !1057, !1058, !1059, !1060, !1066, !1071, !1072, !1073, !1076, !1077, !1080, !1083, !1084, !1087, !1088, !1089, !1092, !1093, !1094, !1097, !1098, !1099, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1131, !1134, !1202, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1214, !1286, !1288, !1289, !1290, !1291, !1292, !1304, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1321, !1322, !1323}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !55, file: !56, line: 752, baseType: !59, size: 192)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !60, line: 56, size: 192, elements: !61)
!60 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!61 = !{!62, !64, !65, !70}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !59, file: !60, line: 57, baseType: !63, size: 64)
!63 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !59, file: !60, line: 58, baseType: !63, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !59, file: !60, line: 59, baseType: !66, size: 32, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !67, line: 21, baseType: !68)
!67 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !69, line: 27, baseType: !7)
!69 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!70 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !59, file: !60, line: 61, baseType: !66, size: 32, offset: 160)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !55, file: !56, line: 754, baseType: !7, size: 32, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !55, file: !56, line: 767, baseType: !73, size: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !55, file: !56, line: 768, baseType: !75, size: 32, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !45, line: 113, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !45, line: 111, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !76, file: !45, line: 112, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !80, line: 174, baseType: !81)
!80 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 172, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !81, file: !80, line: 173, baseType: !84, size: 32)
!84 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !56, line: 770, baseType: !7, size: 32, offset: 352)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !55, file: !56, line: 771, baseType: !7, size: 32, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !55, file: !56, line: 774, baseType: !84, size: 32, offset: 416)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !55, file: !56, line: 775, baseType: !89, size: 128, offset: 448)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !90, line: 58, size: 128, elements: !91)
!90 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!91 = !{!92, !98, !103, !107}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !89, file: !90, line: 59, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !94, line: 60, size: 64, elements: !95)
!94 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !93, file: !94, line: 61, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !90, line: 60, baseType: !99, size: 32, offset: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !90, line: 60, size: 32, elements: !100)
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !99, file: !90, line: 61, baseType: !7, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !99, file: !90, line: 62, baseType: !79, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !89, file: !90, line: 65, baseType: !104, size: 16, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !67, line: 19, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !69, line: 24, baseType: !106)
!106 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !89, file: !90, line: 65, baseType: !104, size: 16, offset: 112)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !55, file: !56, line: 776, baseType: !7, size: 32, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !55, file: !56, line: 777, baseType: !63, size: 64, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !55, file: !56, line: 778, baseType: !54, size: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !55, file: !56, line: 787, baseType: !84, size: 32, offset: 768)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !55, file: !56, line: 788, baseType: !84, size: 32, offset: 800)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !55, file: !56, line: 790, baseType: !84, size: 32, offset: 832)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !55, file: !56, line: 792, baseType: !84, size: 32, offset: 864)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !55, file: !56, line: 793, baseType: !84, size: 32, offset: 896)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !55, file: !56, line: 794, baseType: !84, size: 32, offset: 928)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !55, file: !56, line: 795, baseType: !7, size: 32, offset: 960)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !55, file: !56, line: 797, baseType: !119, size: 2048, offset: 1024)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !56, line: 551, size: 2048, elements: !120)
!120 = !{!121, !126, !134, !138, !139, !145, !146, !147, !148, !149, !150, !154, !155, !156, !157, !159, !162, !163, !164}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !119, file: !56, line: 553, baseType: !122, size: 128)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !56, line: 411, size: 128, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !122, file: !56, line: 412, baseType: !63, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !122, file: !56, line: 413, baseType: !66, size: 32, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !119, file: !56, line: 554, baseType: !127, size: 192, align: 64, offset: 128)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !128, line: 5, size: 192, align: 64, elements: !129)
!128 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!129 = !{!130, !131, !133}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !127, file: !128, line: 6, baseType: !63, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !127, file: !128, line: 7, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !127, file: !128, line: 8, baseType: !132, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !119, file: !56, line: 555, baseType: !135, size: 64, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !67, line: 23, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !69, line: 31, baseType: !137)
!137 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !119, file: !56, line: 556, baseType: !135, size: 64, offset: 384)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !119, file: !56, line: 558, baseType: !140, size: 128, offset: 448)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !80, line: 190, size: 128, elements: !141)
!141 = !{!142, !144}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !80, line: 191, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !140, file: !80, line: 191, baseType: !143, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !119, file: !56, line: 559, baseType: !7, size: 32, offset: 576)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !119, file: !56, line: 561, baseType: !135, size: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !119, file: !56, line: 562, baseType: !135, size: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !119, file: !56, line: 563, baseType: !135, size: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !119, file: !56, line: 564, baseType: !135, size: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !119, file: !56, line: 565, baseType: !151, size: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !67, line: 22, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !69, line: 30, baseType: !153)
!153 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !119, file: !56, line: 566, baseType: !135, size: 64, offset: 960)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !119, file: !56, line: 568, baseType: !135, size: 64, offset: 1024)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !119, file: !56, line: 571, baseType: !84, size: 32, offset: 1088)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !119, file: !56, line: 572, baseType: !158, size: 64, offset: 1152)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !119, file: !56, line: 574, baseType: !160, size: 64, offset: 1216)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !56, line: 49, flags: DIFlagFwdDecl)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !119, file: !56, line: 576, baseType: !160, size: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !119, file: !56, line: 578, baseType: !63, size: 64, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !119, file: !56, line: 588, baseType: !165, size: 512, align: 512, offset: 1536)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !56, line: 497, size: 512, align: 512, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !165, file: !56, line: 498, baseType: !135, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !165, file: !56, line: 499, baseType: !135, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !165, file: !56, line: 500, baseType: !135, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !165, file: !56, line: 501, baseType: !66, size: 32, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !165, file: !56, line: 502, baseType: !66, size: 32, offset: 224)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !165, file: !56, line: 503, baseType: !63, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !165, file: !56, line: 504, baseType: !63, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !165, file: !56, line: 505, baseType: !63, size: 64, offset: 384)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !165, file: !56, line: 506, baseType: !176, size: 64, align: 64, offset: 448)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !56, line: 445, size: 64, align: 64, elements: !177)
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !176, file: !56, line: 446, baseType: !7, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !176, file: !56, line: 447, baseType: !7, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !55, file: !56, line: 798, baseType: !181, size: 384, offset: 3072)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !56, line: 592, size: 384, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !189}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !181, file: !56, line: 593, baseType: !140, size: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !181, file: !56, line: 594, baseType: !63, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !181, file: !56, line: 595, baseType: !63, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !181, file: !56, line: 596, baseType: !7, size: 32, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !181, file: !56, line: 597, baseType: !106, size: 16, offset: 288)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !181, file: !56, line: 598, baseType: !106, size: 16, offset: 304)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !181, file: !56, line: 600, baseType: !190, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !55, file: !56, line: 799, baseType: !192, size: 1792, offset: 3456)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !56, line: 610, size: 1792, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !315, !316}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !192, file: !56, line: 611, baseType: !127, size: 192, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !192, file: !56, line: 618, baseType: !135, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !192, file: !56, line: 619, baseType: !135, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !192, file: !56, line: 620, baseType: !135, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !192, file: !56, line: 621, baseType: !135, size: 64, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !192, file: !56, line: 622, baseType: !135, size: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !192, file: !56, line: 629, baseType: !151, size: 64, offset: 512)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !192, file: !56, line: 630, baseType: !135, size: 64, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !56, line: 631, baseType: !7, size: 32, offset: 640)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !192, file: !56, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !192, file: !56, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !192, file: !56, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !192, file: !56, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !192, file: !56, line: 662, baseType: !208, size: 512, offset: 704)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !209)
!209 = !{!210, !218, !219, !224, !311, !312, !313, !314}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !208, file: !6, line: 119, baseType: !211, size: 256)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !212, line: 9, size: 256, elements: !213)
!212 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!213 = !{!214, !215}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !211, file: !212, line: 10, baseType: !127, size: 192, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !211, file: !212, line: 11, baseType: !216, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !217, line: 29, baseType: !151)
!217 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !208, file: !6, line: 120, baseType: !216, size: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !208, file: !6, line: 121, baseType: !220, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!5, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !208, file: !6, line: 122, baseType: !225, size: 64, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !227)
!227 = !{!228, !279, !280, !284, !294, !295, !306, !310}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !226, file: !6, line: 160, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !231)
!231 = !{!232, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !230, file: !6, line: 216, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !234, line: 23, baseType: !235)
!234 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !234, line: 14, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !235, file: !234, line: 15, baseType: !238, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !239, line: 44, baseType: !240)
!239 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !239, line: 14, size: 32, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, scope: !240, file: !239, line: 15, baseType: !243, size: 32)
!243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !240, file: !239, line: 15, size: 32, elements: !244)
!244 = !{!245, !246, !254}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !243, file: !239, line: 16, baseType: !79, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !239, line: 24, baseType: !247, size: 16)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !243, file: !239, line: 24, size: 16, elements: !248)
!248 = !{!249, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !247, file: !239, line: 25, baseType: !250, size: 8)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !67, line: 17, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !69, line: 21, baseType: !252)
!252 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !247, file: !239, line: 26, baseType: !250, size: 8, offset: 8)
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !239, line: 28, baseType: !255, size: 32)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !243, file: !239, line: 28, size: 32, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !255, file: !239, line: 29, baseType: !104, size: 16)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !255, file: !239, line: 30, baseType: !104, size: 16, offset: 16)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !230, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !230, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !230, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !230, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !230, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !230, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !230, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !230, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !230, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !230, file: !6, line: 227, baseType: !106, size: 16, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !230, file: !6, line: 228, baseType: !106, size: 16, offset: 208)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !230, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !230, file: !6, line: 235, baseType: !216, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !230, file: !6, line: 236, baseType: !223, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !230, file: !6, line: 237, baseType: !216, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !230, file: !6, line: 238, baseType: !223, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !230, file: !6, line: 239, baseType: !276, size: 4096, align: 512, offset: 512)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 4096, align: 512, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 8)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !226, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !226, file: !6, line: 162, baseType: !281, size: 32, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !80, line: 32, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !283, line: 96, baseType: !84)
!283 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!284 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !226, file: !6, line: 163, baseType: !285, size: 32, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !286, line: 274, baseType: !287)
!286 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !286, line: 274, size: 32, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !287, file: !286, line: 274, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !286, line: 69, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !286, line: 64, size: 32, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !291, file: !286, line: 65, baseType: !7, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !226, file: !6, line: 164, baseType: !223, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !226, file: !6, line: 165, baseType: !296, size: 128, offset: 256)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !212, line: 14, size: 128, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !296, file: !212, line: 15, baseType: !299, size: 128)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !128, line: 26, size: 128, elements: !300)
!300 = !{!301, !305}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !299, file: !128, line: 27, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !128, line: 12, size: 64, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !302, file: !128, line: 13, baseType: !132, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !299, file: !128, line: 28, baseType: !132, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !226, file: !6, line: 166, baseType: !307, size: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!216}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !226, file: !6, line: 167, baseType: !216, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !208, file: !6, line: 123, baseType: !250, size: 8, offset: 448)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !208, file: !6, line: 124, baseType: !250, size: 8, offset: 456)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !208, file: !6, line: 125, baseType: !250, size: 8, offset: 464)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !208, file: !6, line: 126, baseType: !250, size: 8, offset: 472)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !192, file: !56, line: 671, baseType: !208, size: 512, offset: 1216)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !192, file: !56, line: 679, baseType: !317, size: 64, offset: 1728)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !55, file: !56, line: 800, baseType: !319, size: 64, offset: 5248)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !56, line: 800, flags: DIFlagFwdDecl)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !55, file: !56, line: 809, baseType: !323, size: 64, offset: 5312)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !56, line: 70, flags: DIFlagFwdDecl)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !55, file: !56, line: 825, baseType: !326, size: 2048, align: 512, offset: 5632)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !56, line: 509, size: 2048, align: 512, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !326, file: !56, line: 511, baseType: !135, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !326, file: !56, line: 512, baseType: !135, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !326, file: !56, line: 513, baseType: !135, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !326, file: !56, line: 514, baseType: !135, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !326, file: !56, line: 515, baseType: !135, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !326, file: !56, line: 516, baseType: !135, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !326, file: !56, line: 518, baseType: !135, size: 64, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !326, file: !56, line: 519, baseType: !135, size: 64, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !326, file: !56, line: 520, baseType: !151, size: 64, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !326, file: !56, line: 522, baseType: !135, size: 64, offset: 576)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !326, file: !56, line: 523, baseType: !135, size: 64, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !326, file: !56, line: 524, baseType: !151, size: 64, offset: 704)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !326, file: !56, line: 526, baseType: !151, size: 64, offset: 768)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !326, file: !56, line: 527, baseType: !135, size: 64, offset: 832)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !326, file: !56, line: 529, baseType: !135, size: 64, offset: 896)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !326, file: !56, line: 530, baseType: !135, size: 64, offset: 960)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !326, file: !56, line: 531, baseType: !135, size: 64, offset: 1024)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !326, file: !56, line: 532, baseType: !135, size: 64, offset: 1088)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !326, file: !56, line: 533, baseType: !135, size: 64, offset: 1152)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !326, file: !56, line: 535, baseType: !135, size: 64, offset: 1216)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !326, file: !56, line: 536, baseType: !135, size: 64, offset: 1280)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !326, file: !56, line: 537, baseType: !135, size: 64, offset: 1344)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !326, file: !56, line: 538, baseType: !135, size: 64, offset: 1408)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !326, file: !56, line: 539, baseType: !135, size: 64, offset: 1472)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !326, file: !56, line: 540, baseType: !135, size: 64, offset: 1536)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !326, file: !56, line: 541, baseType: !135, size: 64, offset: 1600)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !326, file: !56, line: 542, baseType: !135, size: 64, offset: 1664)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !326, file: !56, line: 543, baseType: !135, size: 64, offset: 1728)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !55, file: !56, line: 833, baseType: !7, size: 32, offset: 7680)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !55, file: !56, line: 836, baseType: !7, size: 32, offset: 7712)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !55, file: !56, line: 837, baseType: !84, size: 32, offset: 7744)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !55, file: !56, line: 838, baseType: !360, size: 64, offset: 7808)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !363, line: 19, baseType: !364)
!363 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !363, line: 19, size: 64, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !364, file: !363, line: 19, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 64, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 1)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !55, file: !56, line: 839, baseType: !371, size: 64, offset: 7872)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !55, file: !56, line: 840, baseType: !362, size: 64, offset: 7936)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !55, file: !56, line: 841, baseType: !73, size: 64, offset: 8000)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !55, file: !56, line: 843, baseType: !106, size: 16, offset: 8064)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !55, file: !56, line: 845, baseType: !106, size: 16, offset: 8080)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !55, file: !56, line: 848, baseType: !84, size: 32, offset: 8096)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !55, file: !56, line: 849, baseType: !378, size: 32, offset: 8128)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !56, line: 718, size: 32, elements: !379)
!379 = !{!380, !387}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !378, file: !56, line: 724, baseType: !381, size: 32)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !56, line: 719, size: 32, elements: !382)
!382 = !{!383, !384, !385, !386}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !381, file: !56, line: 720, baseType: !250, size: 8)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !381, file: !56, line: 721, baseType: !250, size: 8, offset: 8)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !381, file: !56, line: 722, baseType: !250, size: 8, offset: 16)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !381, file: !56, line: 723, baseType: !250, size: 8, offset: 24)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !378, file: !56, line: 725, baseType: !66, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !55, file: !56, line: 850, baseType: !140, size: 128, offset: 8192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !55, file: !56, line: 851, baseType: !390, size: 64, offset: 8320)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !56, line: 60, flags: DIFlagFwdDecl)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !55, file: !56, line: 855, baseType: !63, size: 64, offset: 8384)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !55, file: !56, line: 856, baseType: !250, size: 8, offset: 8448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !55, file: !56, line: 857, baseType: !250, size: 8, offset: 8456)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !55, file: !56, line: 858, baseType: !84, size: 32, offset: 8480)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !55, file: !56, line: 859, baseType: !140, size: 128, offset: 8512)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !55, file: !56, line: 860, baseType: !84, size: 32, offset: 8640)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !55, file: !56, line: 861, baseType: !140, size: 128, offset: 8704)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !55, file: !56, line: 873, baseType: !400, size: 256, offset: 8832)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !56, line: 376, size: 256, elements: !401)
!401 = !{!402, !403, !404, !405}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !400, file: !56, line: 381, baseType: !63, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !400, file: !56, line: 384, baseType: !137, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !400, file: !56, line: 389, baseType: !137, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !400, file: !56, line: 392, baseType: !137, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !55, file: !56, line: 875, baseType: !140, size: 128, offset: 9088)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !55, file: !56, line: 877, baseType: !408, size: 320, offset: 9216)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !409, line: 86, size: 320, elements: !410)
!409 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!410 = !{!411, !412, !413}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !408, file: !409, line: 87, baseType: !84, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !408, file: !409, line: 88, baseType: !140, size: 128, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !408, file: !409, line: 89, baseType: !140, size: 128, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !55, file: !56, line: 878, baseType: !127, size: 192, align: 64, offset: 9536)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !55, file: !56, line: 881, baseType: !416, size: 64, offset: 9728)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !418, line: 733, size: 10240, elements: !419)
!418 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!419 = !{!420, !635}
!420 = !DIDerivedType(tag: DW_TAG_member, scope: !417, file: !418, line: 734, baseType: !421, size: 10240)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !417, file: !418, line: 734, size: 10240, elements: !422)
!422 = !{!423, !427, !449, !456, !457, !458, !459, !460, !461, !469, !470, !471, !477, !478, !485, !486, !487, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !528, !542, !545, !601, !602, !603, !606, !610, !611, !614, !615, !616, !622, !623}
!423 = !DIDerivedType(tag: DW_TAG_member, scope: !421, file: !418, line: 739, baseType: !424, size: 512, align: 512)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !421, file: !418, line: 739, size: 512, align: 512, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !424, file: !418, line: 747, baseType: !79, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !421, file: !418, line: 750, baseType: !428, size: 128, offset: 512)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !429, line: 218, size: 128, elements: !430)
!429 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!430 = !{!431, !447, !448}
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !429, line: 219, baseType: !432, size: 32)
!432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !429, line: 219, size: 32, elements: !433)
!433 = !{!434, !443}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !432, file: !429, line: 220, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !436, line: 29, baseType: !437)
!436 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !436, line: 17, size: 32, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !436, line: 18, baseType: !440, size: 32)
!440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !436, line: 18, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !440, file: !436, line: 19, baseType: !235, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !432, file: !429, line: 221, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !429, line: 197, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 197, elements: !446)
!446 = !{}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !428, file: !429, line: 223, baseType: !7, size: 32, offset: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !428, file: !429, line: 224, baseType: !73, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !421, file: !418, line: 752, baseType: !450, size: 64, offset: 640)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!63, !453, !63, !63, !63, !63}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !455, line: 537, flags: DIFlagFwdDecl)
!455 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !421, file: !418, line: 756, baseType: !63, size: 64, offset: 704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !421, file: !418, line: 757, baseType: !63, size: 64, offset: 768)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !421, file: !418, line: 760, baseType: !63, size: 64, offset: 832)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !421, file: !418, line: 761, baseType: !63, size: 64, offset: 896)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !421, file: !418, line: 763, baseType: !63, size: 64, offset: 960)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !421, file: !418, line: 764, baseType: !462, size: 64, offset: 1024)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !455, line: 299, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !455, line: 299, size: 64, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !464, file: !455, line: 299, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !468, line: 18, baseType: !63)
!468 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!469 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !421, file: !418, line: 773, baseType: !79, size: 32, offset: 1088)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !421, file: !418, line: 785, baseType: !79, size: 32, offset: 1120)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !421, file: !418, line: 795, baseType: !472, size: 64, offset: 1152)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !418, line: 726, size: 128, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !473, file: !418, line: 727, baseType: !135, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !473, file: !418, line: 728, baseType: !84, size: 32, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !421, file: !418, line: 801, baseType: !63, size: 64, offset: 1216)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !421, file: !418, line: 804, baseType: !479, size: 64, offset: 1280)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !480, line: 13, baseType: !481)
!480 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !80, line: 181, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 179, size: 64, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !482, file: !80, line: 180, baseType: !151, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !421, file: !418, line: 806, baseType: !84, size: 32, offset: 1344)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !421, file: !418, line: 808, baseType: !435, size: 32, offset: 1376)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !421, file: !418, line: 823, baseType: !488, size: 320, offset: 1408)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !489, line: 48, size: 320, elements: !490)
!489 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!490 = !{!491, !492, !493, !498, !499}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !488, file: !489, line: 49, baseType: !479, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !488, file: !489, line: 55, baseType: !479, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !488, file: !489, line: 57, baseType: !494, size: 32, offset: 128)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !495, line: 15, size: 32, elements: !496)
!495 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !494, file: !495, line: 20, baseType: !79, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !488, file: !489, line: 59, baseType: !233, size: 32, offset: 160)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !488, file: !489, line: 60, baseType: !140, size: 128, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !421, file: !418, line: 825, baseType: !140, size: 128, offset: 1728)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !421, file: !418, line: 845, baseType: !84, size: 32, offset: 1856)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !421, file: !418, line: 849, baseType: !63, size: 64, offset: 1920)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !421, file: !418, line: 850, baseType: !63, size: 64, offset: 1984)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !421, file: !418, line: 852, baseType: !63, size: 64, offset: 2048)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !421, file: !418, line: 853, baseType: !63, size: 64, offset: 2112)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !421, file: !418, line: 854, baseType: !481, size: 64, offset: 2176)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !421, file: !418, line: 855, baseType: !63, size: 64, offset: 2240)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !421, file: !418, line: 856, baseType: !63, size: 64, offset: 2304)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !421, file: !418, line: 857, baseType: !63, size: 64, offset: 2368)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !421, file: !418, line: 858, baseType: !63, size: 64, offset: 2432)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !421, file: !418, line: 865, baseType: !290, size: 32, offset: 2496)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !421, file: !418, line: 867, baseType: !435, size: 32, offset: 2528)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !421, file: !418, line: 869, baseType: !63, size: 64, offset: 2560)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !421, file: !418, line: 869, baseType: !63, size: 64, offset: 2624)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !421, file: !418, line: 869, baseType: !63, size: 64, offset: 2688)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !421, file: !418, line: 869, baseType: !63, size: 64, offset: 2752)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !421, file: !418, line: 870, baseType: !63, size: 64, offset: 2816)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !421, file: !418, line: 870, baseType: !63, size: 64, offset: 2880)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !421, file: !418, line: 870, baseType: !63, size: 64, offset: 2944)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !421, file: !418, line: 871, baseType: !63, size: 64, offset: 3008)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !421, file: !418, line: 871, baseType: !63, size: 64, offset: 3072)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !421, file: !418, line: 871, baseType: !63, size: 64, offset: 3136)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !421, file: !418, line: 871, baseType: !63, size: 64, offset: 3200)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !421, file: !418, line: 873, baseType: !525, size: 3328, offset: 3264)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 3328, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 52)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !421, file: !418, line: 875, baseType: !529, size: 1280, offset: 6592)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 1280, elements: !540)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !531, line: 22, size: 320, elements: !532)
!531 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!532 = !{!533, !534, !535, !536}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !530, file: !531, line: 23, baseType: !233, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !530, file: !531, line: 24, baseType: !151, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !530, file: !531, line: 26, baseType: !140, size: 128, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !530, file: !531, line: 28, baseType: !537, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !67, line: 20, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !69, line: 26, baseType: !84)
!540 = !{!541}
!541 = !DISubrange(count: 4)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !421, file: !418, line: 877, baseType: !543, size: 64, offset: 7872)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !418, line: 877, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !421, file: !418, line: 880, baseType: !546, size: 1088, offset: 7936)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !547, line: 72, baseType: !548)
!547 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !547, line: 23, size: 1088, elements: !549)
!549 = !{!550, !551, !552, !553, !554, !557, !558, !566, !567, !595, !596, !597}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !548, file: !547, line: 28, baseType: !135, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !548, file: !547, line: 38, baseType: !481, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !548, file: !547, line: 40, baseType: !63, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !548, file: !547, line: 43, baseType: !488, size: 320, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !548, file: !547, line: 44, baseType: !555, size: 64, offset: 512)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !547, line: 44, flags: DIFlagFwdDecl)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !548, file: !547, line: 48, baseType: !63, size: 64, offset: 576)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !548, file: !547, line: 59, baseType: !559, size: 256, offset: 640)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !560, line: 66, size: 256, elements: !561)
!560 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!561 = !{!562, !563, !564, !565}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !559, file: !560, line: 67, baseType: !479, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !559, file: !560, line: 68, baseType: !233, size: 32, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !559, file: !560, line: 70, baseType: !494, size: 32, offset: 96)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !559, file: !560, line: 72, baseType: !140, size: 128, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !548, file: !547, line: 60, baseType: !73, size: 64, offset: 896)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !548, file: !547, line: 61, baseType: !568, size: 64, offset: 960)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !571, line: 13, size: 1216, elements: !572)
!571 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!572 = !{!573, !574, !575, !576, !577, !578, !579, !582, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !570, file: !571, line: 14, baseType: !73, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !570, file: !571, line: 15, baseType: !63, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !570, file: !571, line: 17, baseType: !63, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !570, file: !571, line: 17, baseType: !63, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !570, file: !571, line: 18, baseType: !63, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !570, file: !571, line: 18, baseType: !63, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !570, file: !571, line: 19, baseType: !580, size: 64, offset: 384)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !570, file: !571, line: 21, baseType: !583, size: 64, offset: 448)
!583 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !570, file: !571, line: 23, baseType: !583, size: 64, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !570, file: !571, line: 24, baseType: !583, size: 64, offset: 576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !570, file: !571, line: 25, baseType: !583, size: 64, offset: 640)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !570, file: !571, line: 26, baseType: !583, size: 64, offset: 704)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !570, file: !571, line: 27, baseType: !583, size: 64, offset: 768)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !570, file: !571, line: 28, baseType: !583, size: 64, offset: 832)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !570, file: !571, line: 29, baseType: !583, size: 64, offset: 896)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !570, file: !571, line: 30, baseType: !583, size: 64, offset: 960)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !570, file: !571, line: 31, baseType: !583, size: 64, offset: 1024)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !570, file: !571, line: 32, baseType: !583, size: 64, offset: 1088)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !570, file: !571, line: 33, baseType: !583, size: 64, offset: 1152)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !548, file: !547, line: 63, baseType: !79, size: 32, offset: 1024)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !548, file: !547, line: 69, baseType: !104, size: 16, offset: 1056)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !548, file: !547, line: 70, baseType: !598, size: 16, offset: 1072)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !67, line: 18, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !69, line: 23, baseType: !600)
!600 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !421, file: !418, line: 882, baseType: !63, size: 64, offset: 9024)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !421, file: !418, line: 885, baseType: !435, size: 32, offset: 9088)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !421, file: !418, line: 886, baseType: !604, size: 64, offset: 9152)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !418, line: 732, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !421, file: !418, line: 901, baseType: !607, size: 64, offset: 9216)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !609, line: 18, flags: DIFlagFwdDecl)
!609 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!610 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !421, file: !418, line: 904, baseType: !453, size: 64, offset: 9280)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !421, file: !418, line: 906, baseType: !612, size: 64, offset: 9344)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !418, line: 906, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !421, file: !418, line: 930, baseType: !79, size: 32, offset: 9408)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !421, file: !418, line: 933, baseType: !79, size: 32, offset: 9440)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !421, file: !418, line: 935, baseType: !617, size: 64, offset: 9472)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !18, line: 103, size: 64, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !617, file: !18, line: 104, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !18, line: 101, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !421, file: !418, line: 940, baseType: !479, size: 64, offset: 9536)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !421, file: !418, line: 942, baseType: !624, size: 256, offset: 9600)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !625, line: 98, size: 256, elements: !626)
!625 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!626 = !{!627, !628, !629}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !624, file: !625, line: 99, baseType: !479, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !624, file: !625, line: 100, baseType: !140, size: 128, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !624, file: !625, line: 101, baseType: !630, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !625, line: 21, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !417, file: !418, line: 986, baseType: !636, offset: 10240)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: -1)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !55, file: !56, line: 882, baseType: !416, size: 64, offset: 9792)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !55, file: !56, line: 884, baseType: !84, size: 32, offset: 9856)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !55, file: !56, line: 885, baseType: !84, size: 32, offset: 9888)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !55, file: !56, line: 886, baseType: !84, size: 32, offset: 9920)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !55, file: !56, line: 888, baseType: !84, size: 32, offset: 9952)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !55, file: !56, line: 890, baseType: !63, size: 64, offset: 9984)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !55, file: !56, line: 893, baseType: !7, size: 32, offset: 10048)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !55, file: !56, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !55, file: !56, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !55, file: !56, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !55, file: !56, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !55, file: !56, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !55, file: !56, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !55, file: !56, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !55, file: !56, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !55, file: !56, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !55, file: !56, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !55, file: !56, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !55, file: !56, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !55, file: !56, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !55, file: !56, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !55, file: !56, line: 969, baseType: !63, size: 64, offset: 10176)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !55, file: !56, line: 971, baseType: !662, size: 448, offset: 10240)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 448, elements: !663)
!663 = !{!664, !665, !670}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !662, file: !12, line: 26, baseType: !63, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !662, file: !12, line: 27, baseType: !666, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!583, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !12, line: 28, baseType: !671, size: 320, offset: 128)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !662, file: !12, line: 28, size: 320, elements: !672)
!672 = !{!673, !683, !708}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !671, file: !12, line: 37, baseType: !674, size: 320)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !671, file: !12, line: 30, size: 320, elements: !675)
!675 = !{!676, !678, !679, !680, !681, !682}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !674, file: !12, line: 31, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !674, file: !12, line: 32, baseType: !66, size: 32, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !12, line: 33, baseType: !66, size: 32, offset: 96)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !674, file: !12, line: 34, baseType: !66, size: 32, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !674, file: !12, line: 35, baseType: !135, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !674, file: !12, line: 36, baseType: !677, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !671, file: !12, line: 47, baseType: !684, size: 192)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !671, file: !12, line: 39, size: 192, elements: !685)
!685 = !{!686, !687, !688, !707}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !684, file: !12, line: 40, baseType: !281, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !684, file: !12, line: 41, baseType: !11, size: 32, offset: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !12, line: 42, baseType: !689, size: 64, offset: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !12, line: 42, size: 64, elements: !690)
!690 = !{!691, !699}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !689, file: !12, line: 43, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !694, line: 7, size: 128, elements: !695)
!694 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!695 = !{!696, !698}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !693, file: !694, line: 8, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !283, line: 93, baseType: !153)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !693, file: !694, line: 9, baseType: !153, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !689, file: !12, line: 44, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !702, line: 7, size: 64, elements: !703)
!702 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!703 = !{!704, !706}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !701, file: !702, line: 8, baseType: !705, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !702, line: 5, baseType: !538)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !701, file: !702, line: 9, baseType: !538, size: 32, offset: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !684, file: !12, line: 46, baseType: !135, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !671, file: !12, line: 55, baseType: !709, size: 256)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !671, file: !12, line: 49, size: 256, elements: !710)
!710 = !{!711, !714, !715, !716, !717}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !709, file: !12, line: 50, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !709, file: !12, line: 51, baseType: !84, size: 32, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !709, file: !12, line: 52, baseType: !84, size: 32, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !709, file: !12, line: 53, baseType: !63, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !709, file: !12, line: 54, baseType: !63, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !55, file: !56, line: 973, baseType: !719, size: 32, offset: 10688)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !80, line: 27, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !283, line: 28, baseType: !84)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !55, file: !56, line: 974, baseType: !719, size: 32, offset: 10720)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !55, file: !56, line: 978, baseType: !63, size: 64, offset: 10752)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !55, file: !56, line: 987, baseType: !54, size: 64, offset: 10816)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !55, file: !56, line: 990, baseType: !54, size: 64, offset: 10880)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !55, file: !56, line: 995, baseType: !140, size: 128, offset: 10944)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !55, file: !56, line: 996, baseType: !140, size: 128, offset: 11072)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !55, file: !56, line: 997, baseType: !54, size: 64, offset: 11200)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !55, file: !56, line: 1005, baseType: !140, size: 128, offset: 11264)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !55, file: !56, line: 1006, baseType: !140, size: 128, offset: 11392)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !55, file: !56, line: 1009, baseType: !731, size: 64, offset: 11520)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !733, line: 59, size: 768, elements: !734)
!733 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!734 = !{!735, !736, !737, !738, !749, !750, !757, !766}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !732, file: !733, line: 61, baseType: !75, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !732, file: !733, line: 62, baseType: !7, size: 32, offset: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !732, file: !733, line: 63, baseType: !435, size: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !732, file: !733, line: 65, baseType: !739, size: 256, offset: 128)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 256, elements: !540)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !80, line: 194, size: 64, elements: !741)
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !740, file: !80, line: 195, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !80, line: 198, size: 128, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !744, file: !80, line: 199, baseType: !743, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !744, file: !80, line: 199, baseType: !748, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !732, file: !733, line: 66, baseType: !740, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !732, file: !733, line: 68, baseType: !751, size: 192, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !752, line: 41, baseType: !753)
!752 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !752, line: 37, size: 192, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !753, file: !752, line: 38, baseType: !435, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !753, file: !752, line: 39, baseType: !140, size: 128, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !732, file: !733, line: 69, baseType: !758, size: 128, align: 64, offset: 640)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !80, line: 232, size: 128, align: 64, elements: !759)
!759 = !{!760, !762}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !758, file: !80, line: 233, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !758, file: !80, line: 234, baseType: !763, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !761}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !732, file: !733, line: 70, baseType: !767, offset: 768)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, elements: !637)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !733, line: 54, size: 128, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !768, file: !733, line: 55, baseType: !84, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !768, file: !733, line: 56, baseType: !772, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !733, line: 56, flags: DIFlagFwdDecl)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !55, file: !56, line: 1010, baseType: !775, size: 512, offset: 11584)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, size: 512, elements: !540)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !55, file: !56, line: 1011, baseType: !140, size: 128, offset: 12096)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !55, file: !56, line: 1012, baseType: !140, size: 128, offset: 12224)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !55, file: !56, line: 1014, baseType: !779, size: 64, offset: 12352)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !781, line: 26, size: 256, elements: !782)
!781 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !780, file: !781, line: 27, baseType: !7, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !780, file: !781, line: 28, baseType: !785, size: 192, offset: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !786, line: 43, size: 192, elements: !787)
!786 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !785, file: !786, line: 44, baseType: !233, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !785, file: !786, line: 45, baseType: !140, size: 128, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !55, file: !56, line: 1017, baseType: !791, size: 64, offset: 12416)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !55, file: !56, line: 1020, baseType: !791, size: 64, offset: 12480)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !55, file: !56, line: 1023, baseType: !73, size: 64, offset: 12544)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !55, file: !56, line: 1025, baseType: !135, size: 64, offset: 12608)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !55, file: !56, line: 1026, baseType: !135, size: 64, offset: 12672)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !55, file: !56, line: 1031, baseType: !135, size: 64, offset: 12736)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !55, file: !56, line: 1032, baseType: !798, size: 192, offset: 12800)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !56, line: 324, size: 192, elements: !799)
!799 = !{!800, !801, !802}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !798, file: !56, line: 326, baseType: !135, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !798, file: !56, line: 327, baseType: !135, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !798, file: !56, line: 328, baseType: !233, size: 32, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !55, file: !56, line: 1041, baseType: !63, size: 64, offset: 12992)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !55, file: !56, line: 1042, baseType: !63, size: 64, offset: 13056)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !55, file: !56, line: 1045, baseType: !135, size: 64, offset: 13120)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !55, file: !56, line: 1048, baseType: !135, size: 64, offset: 13184)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !55, file: !56, line: 1051, baseType: !63, size: 64, offset: 13248)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !55, file: !56, line: 1052, baseType: !63, size: 64, offset: 13312)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !55, file: !56, line: 1055, baseType: !810, size: 640, offset: 13376)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !811, line: 132, size: 640, elements: !812)
!811 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!812 = !{!813, !821, !822}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !810, file: !811, line: 133, baseType: !814, size: 576)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 576, elements: !819)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !811, line: 117, size: 192, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !815, file: !811, line: 118, baseType: !135, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !815, file: !811, line: 119, baseType: !296, size: 128, offset: 64)
!819 = !{!820}
!820 = !DISubrange(count: 3)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !810, file: !811, line: 134, baseType: !7, size: 32, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !810, file: !811, line: 135, baseType: !7, size: 32, offset: 608)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !55, file: !56, line: 1058, baseType: !824, size: 448, offset: 14016)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !811, line: 144, size: 448, elements: !825)
!825 = !{!826, !827, !828}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !824, file: !811, line: 145, baseType: !758, size: 128, align: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !824, file: !811, line: 146, baseType: !559, size: 256, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !824, file: !811, line: 147, baseType: !7, size: 32, offset: 384)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !55, file: !56, line: 1064, baseType: !830, size: 64, offset: 14464)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !832)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !56, line: 1064, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !55, file: !56, line: 1067, baseType: !830, size: 64, offset: 14528)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !55, file: !56, line: 1070, baseType: !830, size: 64, offset: 14592)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !55, file: !56, line: 1074, baseType: !836, size: 64, offset: 14656)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !56, line: 1074, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !55, file: !56, line: 1084, baseType: !839, size: 128, offset: 14720)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 128, elements: !841)
!840 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!841 = !{!842}
!842 = !DISubrange(count: 16)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !55, file: !56, line: 1086, baseType: !844, size: 64, offset: 14848)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !56, line: 55, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !55, file: !56, line: 1089, baseType: !847, size: 64, offset: 14912)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !848, line: 12, size: 64, elements: !849)
!848 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !847, file: !848, line: 13, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !848, line: 8, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !55, file: !56, line: 1090, baseType: !854, size: 128, offset: 14976)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !855, line: 13, size: 128, elements: !856)
!855 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!856 = !{!857}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !854, file: !855, line: 14, baseType: !140, size: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !55, file: !56, line: 1097, baseType: !859, size: 64, offset: 15104)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !56, line: 50, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !55, file: !56, line: 1100, baseType: !862, size: 64, offset: 15168)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !56, line: 1100, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !55, file: !56, line: 1103, baseType: !865, size: 64, offset: 15232)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !56, line: 53, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !55, file: !56, line: 1107, baseType: !868, size: 64, offset: 15296)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !56, line: 56, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !55, file: !56, line: 1110, baseType: !871, size: 64, offset: 15360)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !811, line: 236, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !55, file: !56, line: 1111, baseType: !874, size: 64, offset: 15424)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !56, line: 67, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !55, file: !56, line: 1112, baseType: !877, size: 64, offset: 15488)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !878, line: 25, baseType: !879)
!878 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !878, line: 23, size: 64, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !879, file: !878, line: 24, baseType: !367, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !55, file: !56, line: 1113, baseType: !877, size: 64, offset: 15552)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !55, file: !56, line: 1115, baseType: !877, size: 64, offset: 15616)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !55, file: !56, line: 1116, baseType: !885, size: 192, offset: 15680)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !886, line: 32, size: 192, elements: !887)
!886 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !885, file: !886, line: 33, baseType: !140, size: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !885, file: !886, line: 34, baseType: !877, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !55, file: !56, line: 1117, baseType: !63, size: 64, offset: 15872)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !55, file: !56, line: 1118, baseType: !892, size: 64, offset: 15936)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !80, line: 61, baseType: !893)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !283, line: 72, baseType: !894)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !283, line: 16, baseType: !63)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !55, file: !56, line: 1119, baseType: !7, size: 32, offset: 16000)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !55, file: !56, line: 1121, baseType: !761, size: 64, offset: 16064)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !55, file: !56, line: 1125, baseType: !898, size: 64, offset: 16128)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !56, line: 43, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !55, file: !56, line: 1127, baseType: !901, size: 32, offset: 16192)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !609, line: 23, baseType: !902)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !609, line: 21, size: 32, elements: !903)
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !902, file: !609, line: 22, baseType: !905, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !80, line: 37, baseType: !906)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !283, line: 49, baseType: !7)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !55, file: !56, line: 1128, baseType: !7, size: 32, offset: 16224)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !55, file: !56, line: 1130, baseType: !909, size: 128, offset: 16256)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !910, line: 37, size: 128, elements: !911)
!910 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !909, file: !910, line: 38, baseType: !84, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !909, file: !910, line: 39, baseType: !79, size: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !909, file: !910, line: 40, baseType: !915, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !910, line: 24, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !55, file: !56, line: 1131, baseType: !918, size: 256, offset: 16384)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !919, line: 12, size: 256, elements: !920)
!919 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!920 = !{!921, !923, !924, !925}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !918, file: !919, line: 13, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !918, file: !919, line: 14, baseType: !63, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !918, file: !919, line: 15, baseType: !63, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !918, file: !919, line: 16, baseType: !926, size: 8, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !80, line: 35, baseType: !927)
!927 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !55, file: !56, line: 1134, baseType: !135, size: 64, offset: 16640)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !55, file: !56, line: 1135, baseType: !135, size: 64, offset: 16704)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !55, file: !56, line: 1138, baseType: !435, size: 32, offset: 16768)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !55, file: !56, line: 1141, baseType: !233, size: 32, offset: 16800)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !55, file: !56, line: 1143, baseType: !933, size: 64, offset: 16832)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !56, line: 735, size: 64, elements: !934)
!934 = !{!935}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !933, file: !56, line: 736, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !55, file: !56, line: 1147, baseType: !299, size: 128, offset: 16896)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !55, file: !56, line: 1149, baseType: !54, size: 64, offset: 17024)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !55, file: !56, line: 1151, baseType: !940, size: 64, offset: 17088)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !56, line: 1151, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !55, file: !56, line: 1188, baseType: !73, size: 64, offset: 17152)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !55, file: !56, line: 1191, baseType: !944, size: 64, offset: 17216)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !56, line: 44, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !55, file: !56, line: 1194, baseType: !947, size: 64, offset: 17280)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !56, line: 45, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !55, file: !56, line: 1197, baseType: !950, size: 64, offset: 17344)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !56, line: 61, flags: DIFlagFwdDecl)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !55, file: !56, line: 1199, baseType: !953, size: 64, offset: 17408)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !56, line: 52, flags: DIFlagFwdDecl)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !55, file: !56, line: 1202, baseType: !956, size: 64, offset: 17472)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !56, line: 48, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !55, file: !56, line: 1205, baseType: !63, size: 64, offset: 17536)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !55, file: !56, line: 1206, baseType: !960, size: 64, offset: 17600)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !886, line: 14, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !886, line: 12, size: 384, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !886, line: 13, baseType: !965, size: 384)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !886, line: 13, size: 384, elements: !966)
!966 = !{!967, !968, !969, !970}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !965, file: !886, line: 13, baseType: !84, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !965, file: !886, line: 13, baseType: !84, size: 32, offset: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !965, file: !886, line: 13, baseType: !84, size: 32, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !965, file: !886, line: 13, baseType: !971, size: 256, offset: 128)
!971 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !972, line: 37, size: 256, elements: !973)
!972 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!973 = !{!974, !979, !992, !998, !1008, !1035, !1040}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !971, file: !972, line: 42, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !972, line: 39, size: 64, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !975, file: !972, line: 40, baseType: !720, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !975, file: !972, line: 41, baseType: !906, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !971, file: !972, line: 50, baseType: !980, size: 192)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !972, line: 45, size: 192, elements: !981)
!981 = !{!982, !984, !985, !991}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !980, file: !972, line: 46, baseType: !983, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !283, line: 95, baseType: !84)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !980, file: !972, line: 47, baseType: !84, size: 32, offset: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !980, file: !972, line: 48, baseType: !986, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !972, line: 11, baseType: !987)
!987 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !972, line: 8, size: 64, elements: !988)
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !987, file: !972, line: 9, baseType: !84, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !987, file: !972, line: 10, baseType: !73, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !980, file: !972, line: 49, baseType: !84, size: 32, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !971, file: !972, line: 57, baseType: !993, size: 128)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !972, line: 53, size: 128, elements: !994)
!994 = !{!995, !996, !997}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !993, file: !972, line: 54, baseType: !720, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !993, file: !972, line: 55, baseType: !906, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !993, file: !972, line: 56, baseType: !986, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !971, file: !972, line: 66, baseType: !999, size: 256)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !972, line: 60, size: 256, elements: !1000)
!1000 = !{!1001, !1002, !1003, !1004, !1007}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !999, file: !972, line: 61, baseType: !720, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !999, file: !972, line: 62, baseType: !906, size: 32, offset: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !999, file: !972, line: 63, baseType: !84, size: 32, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !999, file: !972, line: 64, baseType: !1005, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !283, line: 94, baseType: !1006)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !283, line: 15, baseType: !583)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !999, file: !972, line: 65, baseType: !1005, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !971, file: !972, line: 105, baseType: !1009, size: 256)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !972, line: 69, size: 256, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1009, file: !972, line: 70, baseType: !73, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !972, line: 79, baseType: !1013, size: 192, offset: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !972, line: 79, size: 192, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1024, !1029}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1013, file: !972, line: 81, baseType: !84, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1013, file: !972, line: 86, baseType: !600, size: 16)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1013, file: !972, line: 92, baseType: !1018, size: 192)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1013, file: !972, line: 88, size: 192, elements: !1019)
!1019 = !{!1020, !1022, !1023}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1018, file: !972, line: 89, baseType: !1021, size: 64)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 64, elements: !277)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1018, file: !972, line: 90, baseType: !73, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1018, file: !972, line: 91, baseType: !73, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1013, file: !972, line: 97, baseType: !1025, size: 96)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1013, file: !972, line: 94, size: 96, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1025, file: !972, line: 95, baseType: !1021, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1025, file: !972, line: 96, baseType: !68, size: 32, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1013, file: !972, line: 103, baseType: !1030, size: 128)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1013, file: !972, line: 99, size: 128, elements: !1031)
!1031 = !{!1032, !1033, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1030, file: !972, line: 100, baseType: !63, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1030, file: !972, line: 101, baseType: !68, size: 32, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1030, file: !972, line: 102, baseType: !68, size: 32, offset: 96)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !971, file: !972, line: 111, baseType: !1036, size: 128)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !972, line: 108, size: 128, elements: !1037)
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1036, file: !972, line: 109, baseType: !583, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1036, file: !972, line: 110, baseType: !84, size: 32, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !971, file: !972, line: 118, baseType: !1041, size: 128)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !972, line: 114, size: 128, elements: !1042)
!1042 = !{!1043, !1044, !1045}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1041, file: !972, line: 115, baseType: !73, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1041, file: !972, line: 116, baseType: !84, size: 32, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1041, file: !972, line: 117, baseType: !7, size: 32, offset: 96)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !55, file: !56, line: 1208, baseType: !1047, size: 448, offset: 17664)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1048, line: 12, size: 448, elements: !1049)
!1048 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055, !1056}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1047, file: !1048, line: 15, baseType: !135, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1047, file: !1048, line: 17, baseType: !135, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1047, file: !1048, line: 19, baseType: !135, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1047, file: !1048, line: 21, baseType: !135, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1047, file: !1048, line: 29, baseType: !135, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1047, file: !1048, line: 35, baseType: !135, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1047, file: !1048, line: 44, baseType: !135, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !55, file: !56, line: 1215, baseType: !135, size: 64, offset: 18112)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !55, file: !56, line: 1217, baseType: !135, size: 64, offset: 18176)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !55, file: !56, line: 1219, baseType: !135, size: 64, offset: 18240)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !55, file: !56, line: 1223, baseType: !1061, size: 64, offset: 18304)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1062, line: 99, baseType: !1063)
!1062 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1062, line: 99, size: 64, elements: !1064)
!1064 = !{!1065}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1063, file: !1062, line: 99, baseType: !367, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !55, file: !56, line: 1225, baseType: !1067, size: 32, offset: 18368)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !286, line: 275, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !286, line: 275, size: 32, elements: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1068, file: !286, line: 275, baseType: !290, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !55, file: !56, line: 1226, baseType: !84, size: 32, offset: 18400)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !55, file: !56, line: 1227, baseType: !84, size: 32, offset: 18432)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !55, file: !56, line: 1231, baseType: !1074, size: 64, offset: 18496)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !56, line: 1231, flags: DIFlagFwdDecl)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !55, file: !56, line: 1233, baseType: !140, size: 128, offset: 18560)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !55, file: !56, line: 1240, baseType: !1078, size: 64, offset: 18688)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !56, line: 62, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !55, file: !56, line: 1242, baseType: !1081, size: 64, offset: 18752)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !56, line: 1242, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !55, file: !56, line: 1244, baseType: !140, size: 128, offset: 18816)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !55, file: !56, line: 1245, baseType: !1085, size: 64, offset: 18944)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !56, line: 51, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !55, file: !56, line: 1246, baseType: !559, size: 256, offset: 19008)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !55, file: !56, line: 1247, baseType: !7, size: 32, offset: 19264)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !55, file: !56, line: 1250, baseType: !1090, size: 64, offset: 19328)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !56, line: 57, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !55, file: !56, line: 1251, baseType: !559, size: 256, offset: 19392)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !55, file: !56, line: 1252, baseType: !140, size: 128, offset: 19648)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !55, file: !56, line: 1259, baseType: !1095, size: 64, offset: 19776)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !56, line: 54, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !55, file: !56, line: 1260, baseType: !600, size: 16, offset: 19840)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !55, file: !56, line: 1261, baseType: !600, size: 16, offset: 19856)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !55, file: !56, line: 1314, baseType: !1100, size: 64, offset: 19904)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1102, line: 62, size: 256, align: 256, elements: !1103)
!1102 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1109, !1110}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1101, file: !1102, line: 75, baseType: !68, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1101, file: !1102, line: 90, baseType: !68, size: 32, offset: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1101, file: !1102, line: 112, baseType: !136, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1101, file: !1102, line: 132, baseType: !68, size: 32, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1101, file: !1102, line: 140, baseType: !68, size: 32, offset: 160)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1101, file: !1102, line: 149, baseType: !68, size: 32, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1101, file: !1102, line: 154, baseType: !1111, offset: 224)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, elements: !637)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !55, file: !56, line: 1315, baseType: !66, size: 32, offset: 19968)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !55, file: !56, line: 1316, baseType: !66, size: 32, offset: 20000)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !55, file: !56, line: 1321, baseType: !63, size: 64, offset: 20032)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !55, file: !56, line: 1325, baseType: !84, size: 32, offset: 20096)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !55, file: !56, line: 1326, baseType: !84, size: 32, offset: 20128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !55, file: !56, line: 1327, baseType: !84, size: 32, offset: 20160)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !55, file: !56, line: 1328, baseType: !84, size: 32, offset: 20192)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !55, file: !56, line: 1329, baseType: !758, size: 128, align: 64, offset: 20224)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !55, file: !56, line: 1332, baseType: !1121, size: 128, offset: 20352)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1122, line: 51, size: 128, elements: !1123)
!1122 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1123 = !{!1124, !1129, !1130}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1121, file: !1122, line: 60, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1126, line: 7, size: 64, elements: !1127)
!1126 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1127 = !{!1128}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1125, file: !1126, line: 12, baseType: !364, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1121, file: !1122, line: 63, baseType: !926, size: 8, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1121, file: !1122, line: 70, baseType: !926, size: 8, offset: 72)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !55, file: !56, line: 1335, baseType: !1132, size: 64, offset: 20480)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !56, line: 59, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !55, file: !56, line: 1337, baseType: !1135, size: 128, offset: 20544)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1122, line: 39, size: 128, elements: !1136)
!1136 = !{!1137, !1200, !1201}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1135, file: !1122, line: 40, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !418, line: 74, size: 512, align: 128, elements: !1140)
!1140 = !{!1141, !1142, !1194, !1199}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1139, file: !418, line: 75, baseType: !63, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !418, line: 83, baseType: !1143, size: 320, offset: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1139, file: !418, line: 83, size: 320, elements: !1144)
!1144 = !{!1145, !1168, !1182, !1186, !1193}
!1145 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !418, line: 84, baseType: !1146, size: 320)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1143, file: !418, line: 84, size: 320, elements: !1147)
!1147 = !{!1148, !1159, !1162, !1167}
!1148 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !418, line: 90, baseType: !1149, size: 128)
!1149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !418, line: 90, size: 128, elements: !1150)
!1150 = !{!1151, !1152, !1157, !1158}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1149, file: !418, line: 91, baseType: !140, size: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1149, file: !418, line: 94, baseType: !1153, size: 128)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1149, file: !418, line: 94, size: 128, elements: !1154)
!1154 = !{!1155, !1156}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1153, file: !418, line: 96, baseType: !73, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1153, file: !418, line: 98, baseType: !7, size: 32, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1149, file: !418, line: 102, baseType: !140, size: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1149, file: !418, line: 103, baseType: !140, size: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1146, file: !418, line: 106, baseType: !1160, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !418, line: 32, flags: DIFlagFwdDecl)
!1162 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !418, line: 107, baseType: !1163, size: 64, offset: 192)
!1163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !418, line: 107, size: 64, elements: !1164)
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1163, file: !418, line: 108, baseType: !63, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1163, file: !418, line: 109, baseType: !63, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1146, file: !418, line: 117, baseType: !63, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !418, line: 119, baseType: !1169, size: 320)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1143, file: !418, line: 119, size: 320, elements: !1170)
!1170 = !{!1171, !1172, !1175, !1176, !1177}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1169, file: !418, line: 124, baseType: !63, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1169, file: !418, line: 125, baseType: !1173, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !418, line: 125, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1169, file: !418, line: 126, baseType: !63, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1169, file: !418, line: 127, baseType: !63, size: 64, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, scope: !1169, file: !418, line: 128, baseType: !1178, size: 64, offset: 256)
!1178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1169, file: !418, line: 128, size: 64, elements: !1179)
!1179 = !{!1180, !1181}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1178, file: !418, line: 133, baseType: !63, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1178, file: !418, line: 138, baseType: !479, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !418, line: 141, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1143, file: !418, line: 141, size: 64, elements: !1184)
!1184 = !{!1185}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1183, file: !418, line: 142, baseType: !63, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !418, line: 144, baseType: !1187, size: 128)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1143, file: !418, line: 144, size: 128, elements: !1188)
!1188 = !{!1189, !1192}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1187, file: !418, line: 146, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !418, line: 146, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1187, file: !418, line: 147, baseType: !73, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1143, file: !418, line: 161, baseType: !758, size: 128, align: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !418, line: 164, baseType: !1195, size: 32, offset: 384)
!1195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1139, file: !418, line: 164, size: 32, elements: !1196)
!1196 = !{!1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1195, file: !418, line: 169, baseType: !79, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1195, file: !418, line: 177, baseType: !7, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1139, file: !418, line: 181, baseType: !79, size: 32, offset: 416)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1135, file: !1122, line: 42, baseType: !68, size: 32, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1135, file: !1122, line: 43, baseType: !68, size: 32, offset: 96)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !55, file: !56, line: 1340, baseType: !1203, size: 64, offset: 20672)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !56, line: 69, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !55, file: !56, line: 1351, baseType: !84, size: 32, offset: 20736)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !55, file: !56, line: 1352, baseType: !84, size: 32, offset: 20768)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !55, file: !56, line: 1354, baseType: !63, size: 64, offset: 20800)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !55, file: !56, line: 1364, baseType: !135, size: 64, offset: 20864)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !55, file: !56, line: 1365, baseType: !135, size: 64, offset: 20928)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !55, file: !56, line: 1412, baseType: !63, size: 64, offset: 20992)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !55, file: !56, line: 1453, baseType: !1212, size: 64, offset: 21056)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !56, line: 1453, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !55, file: !56, line: 1457, baseType: !1215, size: 64, offset: 21120)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !18, line: 61, size: 576, elements: !1217)
!1217 = !{!1218, !1219, !1238, !1241, !1242, !1275, !1285}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1216, file: !18, line: 62, baseType: !17, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !18, line: 64, baseType: !1220, size: 192, offset: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1216, file: !18, line: 64, size: 192, elements: !1221)
!1221 = !{!1222, !1233}
!1222 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !18, line: 65, baseType: !1223, size: 192)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !18, line: 65, size: 192, elements: !1224)
!1224 = !{!1225, !1232}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1223, file: !18, line: 66, baseType: !1226, size: 128)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1227, line: 50, size: 128, elements: !1228)
!1227 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1228 = !{!1229, !1230, !1231}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1226, file: !1227, line: 52, baseType: !63, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1226, file: !1227, line: 54, baseType: !7, size: 32, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1226, file: !1227, line: 55, baseType: !7, size: 32, offset: 96)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1223, file: !18, line: 67, baseType: !63, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !18, line: 70, baseType: !1234, size: 192)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !18, line: 70, size: 192, elements: !1235)
!1235 = !{!1236, !1237}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1234, file: !18, line: 71, baseType: !758, size: 128, align: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1234, file: !18, line: 72, baseType: !63, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1216, file: !18, line: 76, baseType: !1239, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !18, line: 76, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1216, file: !18, line: 77, baseType: !63, size: 64, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1216, file: !18, line: 79, baseType: !1243, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1227, line: 25, size: 256, elements: !1245)
!1245 = !{!1246, !1252, !1256}
!1246 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !1227, line: 26, baseType: !1247, size: 128)
!1247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1244, file: !1227, line: 26, size: 128, elements: !1248)
!1248 = !{!1249, !1251}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1247, file: !1227, line: 27, baseType: !1250, size: 128)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 128, elements: !841)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1247, file: !1227, line: 28, baseType: !1250, size: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1244, file: !1227, line: 31, baseType: !1253, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1255)
!1255 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1227, line: 23, flags: DIFlagFwdDecl)
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !1227, line: 33, baseType: !1257, size: 64, offset: 192)
!1257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1244, file: !1227, line: 33, size: 64, elements: !1258)
!1258 = !{!1259, !1265, !1270}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1257, file: !1227, line: 38, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1227, line: 34, size: 64, elements: !1261)
!1261 = !{!1262, !1263, !1264}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1260, file: !1227, line: 35, baseType: !538, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1260, file: !1227, line: 36, baseType: !250, size: 8, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1260, file: !1227, line: 37, baseType: !250, size: 8, offset: 40)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1257, file: !1227, line: 42, baseType: !1266, size: 16)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1227, line: 39, size: 16, elements: !1267)
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1266, file: !1227, line: 40, baseType: !250, size: 8)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1266, file: !1227, line: 41, baseType: !250, size: 8, offset: 8)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1257, file: !1227, line: 46, baseType: !1271, size: 16)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1227, line: 43, size: 16, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1271, file: !1227, line: 44, baseType: !250, size: 8)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1271, file: !1227, line: 45, baseType: !250, size: 8, offset: 8)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1216, file: !18, line: 81, baseType: !1276, size: 64, offset: 448)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !18, line: 85, size: 384, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1277, file: !18, line: 86, baseType: !1239, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1277, file: !18, line: 87, baseType: !63, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1277, file: !18, line: 88, baseType: !63, size: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1277, file: !18, line: 89, baseType: !63, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1277, file: !18, line: 90, baseType: !926, size: 8, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1277, file: !18, line: 92, baseType: !1276, size: 64, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1216, file: !18, line: 82, baseType: !7, size: 32, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !55, file: !56, line: 1463, baseType: !1287, offset: 21184)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !56, line: 739, elements: !446)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !55, file: !56, line: 1470, baseType: !758, size: 128, align: 64, offset: 21184)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !55, file: !56, line: 1471, baseType: !75, size: 32, offset: 21312)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !55, file: !56, line: 1472, baseType: !84, size: 32, offset: 21344)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !55, file: !56, line: 1474, baseType: !54, size: 64, offset: 21376)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !55, file: !56, line: 1475, baseType: !1293, size: 320, offset: 21440)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1294, line: 11, size: 320, elements: !1295)
!1294 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1295 = !{!1296, !1297, !1298, !1303}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1293, file: !1294, line: 16, baseType: !744, size: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1293, file: !1294, line: 17, baseType: !63, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1293, file: !1294, line: 18, baseType: !1299, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1293, file: !1294, line: 19, baseType: !66, size: 32, offset: 256)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !55, file: !56, line: 1478, baseType: !1305, size: 64, offset: 21760)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !56, line: 1478, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !55, file: !56, line: 1482, baseType: !75, size: 32, offset: 21824)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !55, file: !56, line: 1489, baseType: !73, size: 64, offset: 21888)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !55, file: !56, line: 1504, baseType: !73, size: 64, offset: 21952)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !55, file: !56, line: 1505, baseType: !136, size: 64, offset: 22016)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !55, file: !56, line: 1506, baseType: !135, size: 64, offset: 22080)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !55, file: !56, line: 1507, baseType: !136, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !55, file: !56, line: 1508, baseType: !136, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !55, file: !56, line: 1509, baseType: !136, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !55, file: !56, line: 1510, baseType: !758, size: 128, align: 64, offset: 22208)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !55, file: !56, line: 1511, baseType: !84, size: 32, offset: 22336)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !55, file: !56, line: 1515, baseType: !1318, size: 64, offset: 22400)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !94, line: 56, size: 64, elements: !1319)
!1319 = !{!1320}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1318, file: !94, line: 57, baseType: !97, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !55, file: !56, line: 1518, baseType: !1318, size: 64, offset: 22464)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !55, file: !56, line: 1528, baseType: !758, size: 128, align: 64, offset: 22528)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !55, file: !56, line: 1552, baseType: !1324, size: 35328, offset: 23040)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1325, line: 430, size: 35328, elements: !1326)
!1325 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1326 = !{!1327, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1356, !1357, !1358, !1359, !1360, !1361, !1364, !1365, !1366, !1367}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1324, file: !1325, line: 432, baseType: !1328, size: 192)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1329, size: 192, elements: !819)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1330, line: 16, size: 64, elements: !1331)
!1330 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1329, file: !1330, line: 17, baseType: !104, size: 16)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1329, file: !1330, line: 18, baseType: !104, size: 16, offset: 16)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1329, file: !1330, line: 19, baseType: !104, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1329, file: !1330, line: 19, baseType: !104, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1329, file: !1330, line: 19, baseType: !104, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1329, file: !1330, line: 19, baseType: !104, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1329, file: !1330, line: 19, baseType: !104, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1329, file: !1330, line: 20, baseType: !104, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1329, file: !1330, line: 20, baseType: !104, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1329, file: !1330, line: 20, baseType: !104, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1329, file: !1330, line: 20, baseType: !104, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1329, file: !1330, line: 20, baseType: !104, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1329, file: !1330, line: 20, baseType: !104, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1324, file: !1325, line: 436, baseType: !63, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1324, file: !1325, line: 440, baseType: !106, size: 16, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1324, file: !1325, line: 441, baseType: !106, size: 16, offset: 272)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1324, file: !1325, line: 442, baseType: !106, size: 16, offset: 288)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1324, file: !1325, line: 443, baseType: !106, size: 16, offset: 304)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1324, file: !1325, line: 447, baseType: !63, size: 64, offset: 320)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1324, file: !1325, line: 448, baseType: !63, size: 64, offset: 384)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1324, file: !1325, line: 459, baseType: !1353, size: 256, offset: 448)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1354, size: 256, elements: !540)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1325, line: 428, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1324, file: !1325, line: 461, baseType: !63, size: 64, offset: 704)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1324, file: !1325, line: 463, baseType: !63, size: 64, offset: 768)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1324, file: !1325, line: 465, baseType: !63, size: 64, offset: 832)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1324, file: !1325, line: 466, baseType: !63, size: 64, offset: 896)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1324, file: !1325, line: 467, baseType: !63, size: 64, offset: 960)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1324, file: !1325, line: 473, baseType: !1362, size: 64, offset: 1024)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1325, line: 10, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1324, file: !1325, line: 480, baseType: !63, size: 64, offset: 1088)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1324, file: !1325, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1324, file: !1325, line: 491, baseType: !66, size: 32, offset: 1184)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1324, file: !1325, line: 501, baseType: !1368, size: 33792, offset: 1536)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1369, line: 448, size: 33792, elements: !1370)
!1369 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1370 = !{!1371, !1372, !1373, !1541, !1542, !1548, !1549}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1368, file: !1369, line: 461, baseType: !7, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1368, file: !1369, line: 468, baseType: !63, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1368, file: !1369, line: 476, baseType: !1374, size: 64, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1369, line: 356, size: 33280, align: 512, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1375, file: !1369, line: 358, baseType: !7, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1375, file: !1369, line: 361, baseType: !7, size: 32, offset: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1375, file: !1369, line: 364, baseType: !135, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1375, file: !1369, line: 367, baseType: !135, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1375, file: !1369, line: 370, baseType: !135, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1375, file: !1369, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1375, file: !1369, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1375, file: !1369, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1375, file: !1369, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1375, file: !1369, line: 397, baseType: !1387, size: 32768, offset: 512)
!1387 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1369, line: 348, size: 32768, elements: !1388)
!1388 = !{!1389, !1404, !1445, !1522, !1537}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1387, file: !1369, line: 349, baseType: !1390, size: 896)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1369, line: 12, size: 896, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1403}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1390, file: !1369, line: 13, baseType: !66, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1390, file: !1369, line: 14, baseType: !66, size: 32, offset: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1390, file: !1369, line: 15, baseType: !66, size: 32, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1390, file: !1369, line: 16, baseType: !66, size: 32, offset: 96)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1390, file: !1369, line: 17, baseType: !66, size: 32, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1390, file: !1369, line: 18, baseType: !66, size: 32, offset: 160)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1390, file: !1369, line: 19, baseType: !66, size: 32, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1390, file: !1369, line: 22, baseType: !1400, size: 640, offset: 224)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 640, elements: !1401)
!1401 = !{!1402}
!1402 = !DISubrange(count: 20)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1390, file: !1369, line: 25, baseType: !66, size: 32, offset: 864)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1387, file: !1369, line: 350, baseType: !1405, size: 4096, align: 128)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1369, line: 34, size: 4096, align: 128, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1426, !1427, !1428, !1432, !1436, !1440}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1405, file: !1369, line: 35, baseType: !104, size: 16)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1405, file: !1369, line: 36, baseType: !104, size: 16, offset: 16)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1405, file: !1369, line: 37, baseType: !104, size: 16, offset: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1405, file: !1369, line: 38, baseType: !104, size: 16, offset: 48)
!1411 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1369, line: 39, baseType: !1412, size: 128, offset: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !1369, line: 39, size: 128, elements: !1413)
!1413 = !{!1414, !1419}
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !1369, line: 40, baseType: !1415, size: 128)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1412, file: !1369, line: 40, size: 128, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1415, file: !1369, line: 41, baseType: !135, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1415, file: !1369, line: 42, baseType: !135, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !1369, line: 44, baseType: !1420, size: 128)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1412, file: !1369, line: 44, size: 128, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1420, file: !1369, line: 45, baseType: !66, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1420, file: !1369, line: 46, baseType: !66, size: 32, offset: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1420, file: !1369, line: 47, baseType: !66, size: 32, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1420, file: !1369, line: 48, baseType: !66, size: 32, offset: 96)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1405, file: !1369, line: 51, baseType: !66, size: 32, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1405, file: !1369, line: 52, baseType: !66, size: 32, offset: 224)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1405, file: !1369, line: 55, baseType: !1429, size: 1024, offset: 256)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 1024, elements: !1430)
!1430 = !{!1431}
!1431 = !DISubrange(count: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1405, file: !1369, line: 58, baseType: !1433, size: 2048, offset: 1280)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 2048, elements: !1434)
!1434 = !{!1435}
!1435 = !DISubrange(count: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1405, file: !1369, line: 60, baseType: !1437, size: 384, offset: 3328)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 384, elements: !1438)
!1438 = !{!1439}
!1439 = !DISubrange(count: 12)
!1440 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1369, line: 62, baseType: !1441, size: 384, offset: 3712)
!1441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !1369, line: 62, size: 384, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1441, file: !1369, line: 63, baseType: !1437, size: 384)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1441, file: !1369, line: 64, baseType: !1437, size: 384)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1387, file: !1369, line: 351, baseType: !1446, size: 1088)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1369, line: 79, size: 1088, elements: !1447)
!1447 = !{!1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1521}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1446, file: !1369, line: 80, baseType: !66, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1446, file: !1369, line: 81, baseType: !66, size: 32, offset: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1446, file: !1369, line: 82, baseType: !66, size: 32, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1446, file: !1369, line: 83, baseType: !66, size: 32, offset: 96)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1446, file: !1369, line: 84, baseType: !66, size: 32, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1446, file: !1369, line: 85, baseType: !66, size: 32, offset: 160)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1446, file: !1369, line: 86, baseType: !66, size: 32, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1446, file: !1369, line: 88, baseType: !1400, size: 640, offset: 224)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1446, file: !1369, line: 89, baseType: !250, size: 8, offset: 864)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1446, file: !1369, line: 90, baseType: !250, size: 8, offset: 872)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1446, file: !1369, line: 91, baseType: !250, size: 8, offset: 880)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1446, file: !1369, line: 92, baseType: !250, size: 8, offset: 888)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1446, file: !1369, line: 93, baseType: !250, size: 8, offset: 896)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1446, file: !1369, line: 94, baseType: !250, size: 8, offset: 904)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1446, file: !1369, line: 95, baseType: !1463, size: 64, offset: 960)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1465, line: 11, size: 128, elements: !1466)
!1465 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1466 = !{!1467, !1468}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1464, file: !1465, line: 12, baseType: !583, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1464, file: !1465, line: 13, baseType: !1469, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1471, line: 103, size: 1344, elements: !1472)
!1471 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1501, !1502, !1503}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1470, file: !1471, line: 109, baseType: !63, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1470, file: !1471, line: 110, baseType: !63, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1470, file: !1471, line: 111, baseType: !63, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1470, file: !1471, line: 112, baseType: !63, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1470, file: !1471, line: 113, baseType: !63, size: 64, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1470, file: !1471, line: 114, baseType: !63, size: 64, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1470, file: !1471, line: 117, baseType: !63, size: 64, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1470, file: !1471, line: 118, baseType: !63, size: 64, offset: 448)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1470, file: !1471, line: 119, baseType: !63, size: 64, offset: 512)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1470, file: !1471, line: 120, baseType: !63, size: 64, offset: 576)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1470, file: !1471, line: 121, baseType: !63, size: 64, offset: 640)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1470, file: !1471, line: 122, baseType: !63, size: 64, offset: 704)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1470, file: !1471, line: 123, baseType: !63, size: 64, offset: 768)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1470, file: !1471, line: 124, baseType: !63, size: 64, offset: 832)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1470, file: !1471, line: 125, baseType: !63, size: 64, offset: 896)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1470, file: !1471, line: 139, baseType: !63, size: 64, offset: 960)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1470, file: !1471, line: 142, baseType: !63, size: 64, offset: 1024)
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1470, file: !1471, line: 144, baseType: !1491, size: 64, offset: 1088)
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1470, file: !1471, line: 144, size: 64, elements: !1492)
!1492 = !{!1493, !1494, !1495}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1491, file: !1471, line: 146, baseType: !104, size: 16)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1491, file: !1471, line: 148, baseType: !135, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1491, file: !1471, line: 150, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1471, line: 59, size: 64, elements: !1497)
!1497 = !{!1498, !1499, !1500}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1496, file: !1471, line: 61, baseType: !135, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1496, file: !1471, line: 63, baseType: !135, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1496, file: !1471, line: 65, baseType: !135, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1470, file: !1471, line: 153, baseType: !63, size: 64, offset: 1152)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1470, file: !1471, line: 154, baseType: !63, size: 64, offset: 1216)
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !1470, file: !1471, line: 156, baseType: !1504, size: 64, offset: 1280)
!1504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1470, file: !1471, line: 156, size: 64, elements: !1505)
!1505 = !{!1506, !1507, !1508}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1504, file: !1471, line: 158, baseType: !104, size: 16)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1504, file: !1471, line: 160, baseType: !135, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1504, file: !1471, line: 162, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1471, line: 69, size: 64, elements: !1510)
!1510 = !{!1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1509, file: !1471, line: 71, baseType: !135, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1509, file: !1471, line: 73, baseType: !135, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1509, file: !1471, line: 75, baseType: !135, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1509, file: !1471, line: 77, baseType: !135, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1509, file: !1471, line: 80, baseType: !135, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1509, file: !1471, line: 83, baseType: !135, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1509, file: !1471, line: 86, baseType: !135, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1509, file: !1471, line: 88, baseType: !135, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1509, file: !1471, line: 93, baseType: !135, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1509, file: !1471, line: 100, baseType: !135, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1446, file: !1369, line: 96, baseType: !66, size: 32, offset: 1024)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1387, file: !1369, line: 352, baseType: !1523, size: 4608, align: 512)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1369, line: 333, size: 4608, align: 512, elements: !1524)
!1524 = !{!1525, !1526, !1535}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1523, file: !1369, line: 334, baseType: !1405, size: 4096, align: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1523, file: !1369, line: 335, baseType: !1527, size: 512, offset: 4096)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1369, line: 312, size: 512, elements: !1528)
!1528 = !{!1529, !1530, !1531}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1527, file: !1369, line: 313, baseType: !135, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1527, file: !1369, line: 314, baseType: !135, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1527, file: !1369, line: 315, baseType: !1532, size: 384, offset: 128)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 384, elements: !1533)
!1533 = !{!1534}
!1534 = !DISubrange(count: 6)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1523, file: !1369, line: 336, baseType: !1536, offset: 4608)
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, elements: !637)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1387, file: !1369, line: 353, baseType: !1538, size: 32768)
!1538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 32768, elements: !1539)
!1539 = !{!1540}
!1540 = !DISubrange(count: 4096)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1368, file: !1369, line: 484, baseType: !1374, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1368, file: !1369, line: 491, baseType: !1543, size: 128, offset: 256)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1369, line: 404, size: 128, elements: !1544)
!1544 = !{!1545, !1546, !1547}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1543, file: !1369, line: 424, baseType: !135, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1543, file: !1369, line: 432, baseType: !7, size: 32, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1543, file: !1369, line: 440, baseType: !7, size: 32, offset: 96)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1368, file: !1369, line: 498, baseType: !1543, size: 128, offset: 384)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1368, file: !1369, line: 508, baseType: !1375, size: 33280, align: 512, offset: 512)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "smp_hotplug_thread", file: !1554, line: 31, size: 768, elements: !1555)
!1554 = !DIFile(filename: "./include/linux/smpboot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fa1a229f3a0d95109a874de47b845e2")
!1555 = !{!1556, !1557, !1558, !1562, !1566, !1567, !1568, !1572, !1573, !1574, !1575}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1553, file: !1554, line: 32, baseType: !53, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1553, file: !1554, line: 33, baseType: !140, size: 128, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "thread_should_run", scope: !1553, file: !1554, line: 34, baseType: !1559, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!84, !7}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !1553, file: !1554, line: 35, baseType: !1563, size: 64, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !7}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1553, file: !1554, line: 36, baseType: !1563, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1553, file: !1554, line: 37, baseType: !1563, size: 64, offset: 384)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1553, file: !1554, line: 38, baseType: !1569, size: 64, offset: 448)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{null, !7, !926}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "park", scope: !1553, file: !1554, line: 39, baseType: !1563, size: 64, offset: 512)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "unpark", scope: !1553, file: !1554, line: 40, baseType: !1563, size: 64, offset: 576)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "selfparking", scope: !1553, file: !1554, line: 41, baseType: !926, size: 8, offset: 640)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "thread_comm", scope: !1553, file: !1554, line: 42, baseType: !1576, size: 64, offset: 704)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !840)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !80, line: 154, baseType: !7)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !143)
!1584 = !{!1585, !1590, !1592, !0, !1594, !1599, !1601, !1603, !1608, !1613, !1659, !1661, !1663, !1665}
!1585 = !DIGlobalVariableExpression(var: !1586, expr: !DIExpression())
!1586 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !1587, isLocal: true, isDefinition: true)
!1587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 40, elements: !1588)
!1588 = !{!1589}
!1589 = !DISubrange(count: 5)
!1590 = !DIGlobalVariableExpression(var: !1591, expr: !DIExpression())
!1591 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_smpboot_register_percpu_thread239", scope: !2, file: !3, line: 309, type: !73, isLocal: true, isDefinition: true)
!1592 = !DIGlobalVariableExpression(var: !1593, expr: !DIExpression())
!1593 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_smpboot_unregister_percpu_thread240", scope: !2, file: !3, line: 326, type: !73, isLocal: true, isDefinition: true)
!1594 = !DIGlobalVariableExpression(var: !1595, expr: !DIExpression())
!1595 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !1596, isLocal: true, isDefinition: true)
!1596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 304, elements: !1597)
!1597 = !{!1598}
!1598 = !DISubrange(count: 38)
!1599 = !DIGlobalVariableExpression(var: !1600, expr: !DIExpression())
!1600 = distinct !DIGlobalVariable(name: "smpboot_threads_lock", scope: !2, file: !3, line: 82, type: !559, isLocal: true, isDefinition: true)
!1601 = !DIGlobalVariableExpression(var: !1602, expr: !DIExpression())
!1602 = distinct !DIGlobalVariable(name: "hotplug_threads", scope: !2, file: !3, line: 81, type: !140, isLocal: true, isDefinition: true)
!1603 = !DIGlobalVariableExpression(var: !1604, expr: !DIExpression())
!1604 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !1605, isLocal: true, isDefinition: true)
!1605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 136, elements: !1606)
!1606 = !{!1607}
!1607 = !DISubrange(count: 17)
!1608 = !DIGlobalVariableExpression(var: !1609, expr: !DIExpression())
!1609 = distinct !DIGlobalVariable(scope: null, file: !30, line: 480, type: !1610, isLocal: true, isDefinition: true)
!1610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 168, elements: !1611)
!1611 = !{!1612}
!1612 = !DISubrange(count: 21)
!1613 = !DIGlobalVariableExpression(var: !1614, expr: !DIExpression())
!1614 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule230", scope: !1615, file: !3, line: 116, type: !73, isLocal: true, isDefinition: true)
!1615 = distinct !DISubprogram(name: "smpboot_thread_fn", scope: !3, file: !3, line: 106, type: !1616, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1618)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!84, !73}
!1618 = !{!1619, !1620, !1627, !1628, !1635, !1637, !1646, !1648, !1650, !1655, !1657}
!1619 = !DILocalVariable(name: "data", arg: 1, scope: !1615, file: !3, line: 106, type: !73)
!1620 = !DILocalVariable(name: "td", scope: !1615, file: !3, line: 108, type: !1621)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "smpboot_thread_data", file: !3, line: 84, size: 128, elements: !1623)
!1623 = !{!1624, !1625, !1626}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1622, file: !3, line: 85, baseType: !7, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1622, file: !3, line: 86, baseType: !7, size: 32, offset: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !1622, file: !3, line: 87, baseType: !1552, size: 64, offset: 64)
!1627 = !DILocalVariable(name: "ht", scope: !1615, file: !3, line: 109, type: !1552)
!1628 = !DILocalVariable(name: "__ai_ptr", scope: !1629, file: !3, line: 112, type: !1634)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 112, column: 3)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 112, column: 3)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 112, column: 3)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 112, column: 3)
!1633 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 111, column: 12)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1635 = !DILocalVariable(name: "__ret", scope: !1636, file: !3, line: 112, type: !7)
!1636 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 112, column: 3)
!1637 = !DILocalVariable(name: "pscr_ret__", scope: !1638, file: !3, line: 128, type: !84)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 128, column: 5)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 128, column: 5)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 128, column: 5)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 128, column: 5)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 127, column: 52)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 127, column: 8)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 124, column: 30)
!1645 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 124, column: 7)
!1646 = !DILocalVariable(name: "__vpp_verify", scope: !1647, file: !3, line: 128, type: !580)
!1647 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 128, column: 5)
!1648 = !DILocalVariable(name: "pfo_val__", scope: !1649, file: !3, line: 128, type: !66)
!1649 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 128, column: 5)
!1650 = !DILocalVariable(name: "pscr_ret__", scope: !1651, file: !3, line: 137, type: !84)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 137, column: 3)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 137, column: 3)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 137, column: 3)
!1654 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 137, column: 3)
!1655 = !DILocalVariable(name: "__vpp_verify", scope: !1656, file: !3, line: 137, type: !580)
!1656 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 137, column: 3)
!1657 = !DILocalVariable(name: "pfo_val__", scope: !1658, file: !3, line: 137, type: !66)
!1658 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 137, column: 3)
!1659 = !DIGlobalVariableExpression(var: !1660, expr: !DIExpression())
!1660 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule232", scope: !1615, file: !3, line: 126, type: !73, isLocal: true, isDefinition: true)
!1661 = !DIGlobalVariableExpression(var: !1662, expr: !DIExpression())
!1662 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule234", scope: !1615, file: !3, line: 143, type: !73, isLocal: true, isDefinition: true)
!1663 = !DIGlobalVariableExpression(var: !1664, expr: !DIExpression())
!1664 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule236", scope: !1615, file: !3, line: 151, type: !73, isLocal: true, isDefinition: true)
!1665 = !DIGlobalVariableExpression(var: !1666, expr: !DIExpression())
!1666 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule238", scope: !1615, file: !3, line: 163, type: !73, isLocal: true, isDefinition: true)
!1667 = !{!"rsp"}
!1668 = !{i32 7, !"Dwarf Version", i32 5}
!1669 = !{i32 2, !"Debug Info Version", i32 3}
!1670 = !{i32 1, !"wchar_size", i32 2}
!1671 = !{i32 8, !"cf-protection-branch", i32 1}
!1672 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1673 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1674 = !{i32 1, !"Code Model", i32 2}
!1675 = !{i32 1, !"override-stack-alignment", i32 8}
!1676 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1677 = distinct !DISubprogram(name: "idle_thread_get", scope: !3, file: !3, line: 30, type: !1678, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1680)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!54, !7}
!1680 = !{!1681, !1682, !1683, !1686}
!1681 = !DILocalVariable(name: "cpu", arg: 1, scope: !1677, file: !3, line: 30, type: !7)
!1682 = !DILocalVariable(name: "tsk", scope: !1677, file: !3, line: 32, type: !54)
!1683 = !DILocalVariable(name: "__vpp_verify", scope: !1684, file: !3, line: 32, type: !580)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 32, column: 28)
!1685 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 32, column: 28)
!1686 = !DILocalVariable(name: "__ptr", scope: !1687, file: !3, line: 32, type: !63)
!1687 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 32, column: 28)
!1688 = !DILocation(line: 30, column: 50, scope: !1677)
!1689 = !DILocation(line: 32, column: 2, scope: !1677)
!1690 = !DILocation(line: 32, column: 22, scope: !1677)
!1691 = !DILocation(line: 32, column: 28, scope: !1685)
!1692 = !DILocation(line: 32, column: 28, scope: !1684)
!1693 = !DILocation(line: 32, column: 28, scope: !1687)
!1694 = !DILocation(line: 32, column: 28, scope: !1677)
!1695 = !DILocation(line: 34, column: 7, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 34, column: 6)
!1697 = !DILocation(line: 34, column: 6, scope: !1677)
!1698 = !DILocation(line: 35, column: 10, scope: !1696)
!1699 = !DILocation(line: 35, column: 3, scope: !1696)
!1700 = !DILocation(line: 36, column: 9, scope: !1677)
!1701 = !DILocation(line: 36, column: 2, scope: !1677)
!1702 = !DILocation(line: 37, column: 1, scope: !1677)
!1703 = distinct !DISubprogram(name: "ERR_PTR", scope: !1704, file: !1704, line: 39, type: !1705, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1707)
!1704 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!73, !583}
!1707 = !{!1708}
!1708 = !DILocalVariable(name: "error", arg: 1, scope: !1703, file: !1704, line: 39, type: !583)
!1709 = !DILocation(line: 39, column: 48, scope: !1703)
!1710 = !DILocation(line: 41, column: 18, scope: !1703)
!1711 = !DILocation(line: 41, column: 9, scope: !1703)
!1712 = !DILocation(line: 41, column: 2, scope: !1703)
!1713 = distinct !DISubprogram(name: "idle_thread_set_boot_cpu", scope: !3, file: !3, line: 39, type: !1714, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1716)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{null}
!1716 = !{!1717, !1720, !1722, !1725, !1727}
!1717 = !DILocalVariable(name: "__vpp_verify", scope: !1718, file: !3, line: 41, type: !580)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 41, column: 2)
!1719 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 41, column: 2)
!1720 = !DILocalVariable(name: "__ptr", scope: !1721, file: !3, line: 41, type: !63)
!1721 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 41, column: 2)
!1722 = !DILocalVariable(name: "pscr_ret__", scope: !1723, file: !3, line: 41, type: !84)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 41, column: 2)
!1724 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 41, column: 2)
!1725 = !DILocalVariable(name: "__vpp_verify", scope: !1726, file: !3, line: 41, type: !580)
!1726 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 41, column: 2)
!1727 = !DILocalVariable(name: "pfo_val__", scope: !1728, file: !3, line: 41, type: !66)
!1728 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 41, column: 2)
!1729 = !DILocation(line: 41, column: 46, scope: !1713)
!1730 = !DILocation(line: 41, column: 2, scope: !1719)
!1731 = !DILocation(line: 41, column: 2, scope: !1718)
!1732 = !DILocation(line: 41, column: 2, scope: !1721)
!1733 = !DILocation(line: 41, column: 2, scope: !1724)
!1734 = !DILocation(line: 41, column: 2, scope: !1723)
!1735 = !DILocation(line: 41, column: 2, scope: !1726)
!1736 = !DILocation(line: 41, column: 2, scope: !1728)
!1737 = !{i64 2153317121}
!1738 = !DILocation(line: 41, column: 44, scope: !1713)
!1739 = !DILocation(line: 42, column: 1, scope: !1713)
!1740 = distinct !DISubprogram(name: "get_current", scope: !1741, file: !1741, line: 39, type: !1742, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1744)
!1741 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!54}
!1744 = !{!1745, !1747, !1749}
!1745 = !DILocalVariable(name: "pscr_ret__", scope: !1746, file: !1741, line: 41, type: !54)
!1746 = distinct !DILexicalBlock(scope: !1740, file: !1741, line: 41, column: 9)
!1747 = !DILocalVariable(name: "__vpp_verify", scope: !1748, file: !1741, line: 41, type: !580)
!1748 = distinct !DILexicalBlock(scope: !1746, file: !1741, line: 41, column: 9)
!1749 = !DILocalVariable(name: "pfo_val__", scope: !1750, file: !1741, line: 41, type: !135)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !1741, line: 41, column: 9)
!1751 = !DILocation(line: 41, column: 9, scope: !1746)
!1752 = !DILocation(line: 41, column: 9, scope: !1748)
!1753 = !DILocation(line: 41, column: 9, scope: !1750)
!1754 = !{i64 2148262295}
!1755 = !DILocation(line: 41, column: 9, scope: !1740)
!1756 = !DILocation(line: 41, column: 2, scope: !1740)
!1757 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !1758, file: !1758, line: 313, type: !1759, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1761)
!1758 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !1576}
!1761 = !{!1762}
!1762 = !DILocalVariable(name: "op", arg: 1, scope: !1757, file: !1758, line: 313, type: !1576)
!1763 = !DILocation(line: 313, column: 66, scope: !1757)
!1764 = !DILocation(line: 313, column: 72, scope: !1757)
!1765 = distinct !DISubprogram(name: "idle_threads_init", scope: !3, file: !3, line: 66, type: !1714, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1766)
!1766 = !{!1767, !1768, !1769, !1772, !1774}
!1767 = !DILocalVariable(name: "cpu", scope: !1765, file: !3, line: 68, type: !7)
!1768 = !DILocalVariable(name: "boot_cpu", scope: !1765, file: !3, line: 68, type: !7)
!1769 = !DILocalVariable(name: "pscr_ret__", scope: !1770, file: !3, line: 70, type: !84)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 70, column: 13)
!1771 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 70, column: 13)
!1772 = !DILocalVariable(name: "__vpp_verify", scope: !1773, file: !3, line: 70, type: !580)
!1773 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 70, column: 13)
!1774 = !DILocalVariable(name: "pfo_val__", scope: !1775, file: !3, line: 70, type: !66)
!1775 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 70, column: 13)
!1776 = !DILocation(line: 68, column: 2, scope: !1765)
!1777 = !DILocation(line: 68, column: 15, scope: !1765)
!1778 = !DILocation(line: 68, column: 20, scope: !1765)
!1779 = !DILocation(line: 70, column: 13, scope: !1771)
!1780 = !DILocation(line: 70, column: 13, scope: !1770)
!1781 = !DILocation(line: 70, column: 13, scope: !1773)
!1782 = !DILocation(line: 70, column: 13, scope: !1775)
!1783 = !{i64 2153322856}
!1784 = !DILocation(line: 70, column: 11, scope: !1765)
!1785 = !DILocation(line: 72, column: 2, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 72, column: 2)
!1787 = !DILocation(line: 72, column: 2, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 72, column: 2)
!1789 = !DILocation(line: 73, column: 7, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 73, column: 7)
!1791 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 72, column: 29)
!1792 = !DILocation(line: 73, column: 14, scope: !1790)
!1793 = !DILocation(line: 73, column: 11, scope: !1790)
!1794 = !DILocation(line: 73, column: 7, scope: !1791)
!1795 = !DILocation(line: 74, column: 14, scope: !1790)
!1796 = !DILocation(line: 74, column: 4, scope: !1790)
!1797 = !DILocation(line: 75, column: 2, scope: !1791)
!1798 = distinct !{!1798, !1785, !1799, !1800, !1801}
!1799 = !DILocation(line: 75, column: 2, scope: !1786)
!1800 = !{!"llvm.loop.mustprogress"}
!1801 = !{!"llvm.loop.unroll.disable"}
!1802 = !DILocation(line: 76, column: 1, scope: !1765)
!1803 = distinct !DISubprogram(name: "find_next_bit", scope: !1804, file: !1804, line: 54, type: !1805, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1809)
!1804 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!63, !1807, !63, !63}
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!1809 = !{!1810, !1811, !1812, !1813}
!1810 = !DILocalVariable(name: "addr", arg: 1, scope: !1803, file: !1804, line: 54, type: !1807)
!1811 = !DILocalVariable(name: "size", arg: 2, scope: !1803, file: !1804, line: 54, type: !63)
!1812 = !DILocalVariable(name: "offset", arg: 3, scope: !1803, file: !1804, line: 55, type: !63)
!1813 = !DILocalVariable(name: "val", scope: !1814, file: !1804, line: 58, type: !63)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !1804, line: 57, column: 31)
!1815 = distinct !DILexicalBlock(scope: !1803, file: !1804, line: 57, column: 6)
!1816 = !DILocation(line: 54, column: 50, scope: !1803)
!1817 = !DILocation(line: 54, column: 70, scope: !1803)
!1818 = !DILocation(line: 55, column: 22, scope: !1803)
!1819 = !DILocation(line: 57, column: 6, scope: !1815)
!1820 = !DILocation(line: 57, column: 6, scope: !1803)
!1821 = !DILocation(line: 58, column: 3, scope: !1814)
!1822 = !DILocation(line: 58, column: 17, scope: !1814)
!1823 = !DILocation(line: 60, column: 7, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1814, file: !1804, line: 60, column: 7)
!1825 = !DILocation(line: 60, column: 7, scope: !1814)
!1826 = !DILocation(line: 61, column: 11, scope: !1824)
!1827 = !DILocation(line: 61, column: 4, scope: !1824)
!1828 = !DILocation(line: 63, column: 10, scope: !1814)
!1829 = !DILocation(line: 63, column: 9, scope: !1814)
!1830 = !DILocation(line: 63, column: 17, scope: !1814)
!1831 = !DILocation(line: 63, column: 15, scope: !1814)
!1832 = !DILocation(line: 63, column: 7, scope: !1814)
!1833 = !DILocation(line: 64, column: 10, scope: !1814)
!1834 = !DILocation(line: 64, column: 16, scope: !1814)
!1835 = !DILocation(line: 64, column: 29, scope: !1814)
!1836 = !DILocation(line: 64, column: 3, scope: !1814)
!1837 = !DILocation(line: 65, column: 2, scope: !1815)
!1838 = !DILocation(line: 67, column: 24, scope: !1803)
!1839 = !DILocation(line: 67, column: 30, scope: !1803)
!1840 = !DILocation(line: 67, column: 36, scope: !1803)
!1841 = !DILocation(line: 67, column: 9, scope: !1803)
!1842 = !DILocation(line: 67, column: 2, scope: !1803)
!1843 = !DILocation(line: 68, column: 1, scope: !1803)
!1844 = distinct !DISubprogram(name: "idle_init", scope: !3, file: !3, line: 50, type: !1564, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1845)
!1845 = !{!1846, !1847, !1848, !1851, !1853, !1859}
!1846 = !DILocalVariable(name: "cpu", arg: 1, scope: !1844, file: !3, line: 50, type: !7)
!1847 = !DILocalVariable(name: "tsk", scope: !1844, file: !3, line: 52, type: !54)
!1848 = !DILocalVariable(name: "__vpp_verify", scope: !1849, file: !3, line: 52, type: !580)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 52, column: 28)
!1850 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 52, column: 28)
!1851 = !DILocalVariable(name: "__ptr", scope: !1852, file: !3, line: 52, type: !63)
!1852 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 52, column: 28)
!1853 = !DILocalVariable(name: "__vpp_verify", scope: !1854, file: !3, line: 59, type: !580)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 59, column: 4)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 59, column: 4)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 56, column: 7)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 54, column: 12)
!1858 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 54, column: 6)
!1859 = !DILocalVariable(name: "__ptr", scope: !1860, file: !3, line: 59, type: !63)
!1860 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 59, column: 4)
!1861 = !DILocation(line: 50, column: 52, scope: !1844)
!1862 = !DILocation(line: 52, column: 2, scope: !1844)
!1863 = !DILocation(line: 52, column: 22, scope: !1844)
!1864 = !DILocation(line: 52, column: 28, scope: !1850)
!1865 = !DILocation(line: 52, column: 28, scope: !1849)
!1866 = !DILocation(line: 52, column: 28, scope: !1852)
!1867 = !DILocation(line: 52, column: 28, scope: !1844)
!1868 = !DILocation(line: 54, column: 7, scope: !1858)
!1869 = !DILocation(line: 54, column: 6, scope: !1844)
!1870 = !DILocation(line: 55, column: 19, scope: !1857)
!1871 = !DILocation(line: 55, column: 9, scope: !1857)
!1872 = !DILocation(line: 55, column: 7, scope: !1857)
!1873 = !DILocation(line: 56, column: 14, scope: !1856)
!1874 = !DILocation(line: 56, column: 7, scope: !1856)
!1875 = !DILocation(line: 56, column: 7, scope: !1857)
!1876 = !DILocation(line: 57, column: 4, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 57, column: 4)
!1878 = !DILocation(line: 57, column: 4, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 57, column: 4)
!1880 = !DILocation(line: 57, column: 4, scope: !1856)
!1881 = !DILocation(line: 59, column: 33, scope: !1856)
!1882 = !DILocation(line: 59, column: 4, scope: !1855)
!1883 = !DILocation(line: 59, column: 4, scope: !1854)
!1884 = !DILocation(line: 59, column: 4, scope: !1860)
!1885 = !DILocation(line: 59, column: 31, scope: !1856)
!1886 = !DILocation(line: 60, column: 2, scope: !1857)
!1887 = !DILocation(line: 61, column: 1, scope: !1844)
!1888 = distinct !DISubprogram(name: "smpboot_create_threads", scope: !3, file: !3, line: 213, type: !1560, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1889)
!1889 = !{!1890, !1891, !1892, !1893, !1896}
!1890 = !DILocalVariable(name: "cpu", arg: 1, scope: !1888, file: !3, line: 213, type: !7)
!1891 = !DILocalVariable(name: "cur", scope: !1888, file: !3, line: 215, type: !1552)
!1892 = !DILocalVariable(name: "ret", scope: !1888, file: !3, line: 216, type: !84)
!1893 = !DILocalVariable(name: "__mptr", scope: !1894, file: !3, line: 219, type: !73)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 219, column: 2)
!1895 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 219, column: 2)
!1896 = !DILocalVariable(name: "__mptr", scope: !1897, file: !3, line: 219, type: !73)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 219, column: 2)
!1898 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 219, column: 2)
!1899 = !DILocation(line: 213, column: 41, scope: !1888)
!1900 = !DILocation(line: 215, column: 2, scope: !1888)
!1901 = !DILocation(line: 215, column: 29, scope: !1888)
!1902 = !DILocation(line: 216, column: 2, scope: !1888)
!1903 = !DILocation(line: 216, column: 6, scope: !1888)
!1904 = !DILocation(line: 218, column: 2, scope: !1888)
!1905 = !DILocation(line: 219, column: 2, scope: !1894)
!1906 = !DILocation(line: 219, column: 2, scope: !1895)
!1907 = !DILocation(line: 219, column: 2, scope: !1898)
!1908 = !DILocation(line: 220, column: 33, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 219, column: 51)
!1910 = !DILocation(line: 220, column: 38, scope: !1909)
!1911 = !DILocation(line: 220, column: 9, scope: !1909)
!1912 = !DILocation(line: 220, column: 7, scope: !1909)
!1913 = !DILocation(line: 221, column: 7, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 221, column: 7)
!1915 = !DILocation(line: 221, column: 7, scope: !1909)
!1916 = !DILocation(line: 222, column: 4, scope: !1914)
!1917 = !DILocation(line: 223, column: 2, scope: !1909)
!1918 = !DILocation(line: 219, column: 2, scope: !1897)
!1919 = distinct !{!1919, !1906, !1920, !1800, !1801}
!1920 = !DILocation(line: 223, column: 2, scope: !1895)
!1921 = !DILocation(line: 224, column: 2, scope: !1888)
!1922 = !DILocation(line: 225, column: 9, scope: !1888)
!1923 = !DILocation(line: 226, column: 1, scope: !1888)
!1924 = !DILocation(line: 225, column: 2, scope: !1888)
!1925 = !DISubprogram(name: "mutex_lock", scope: !560, file: !560, line: 227, type: !1926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !1928}
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!1929 = distinct !DISubprogram(name: "__smpboot_create_thread", scope: !3, file: !3, line: 170, type: !1930, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1932)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!84, !1552, !7}
!1932 = !{!1933, !1934, !1935, !1936, !1939, !1941, !1942, !1945, !1947, !1952}
!1933 = !DILocalVariable(name: "ht", arg: 1, scope: !1929, file: !3, line: 170, type: !1552)
!1934 = !DILocalVariable(name: "cpu", arg: 2, scope: !1929, file: !3, line: 170, type: !7)
!1935 = !DILocalVariable(name: "tsk", scope: !1929, file: !3, line: 172, type: !54)
!1936 = !DILocalVariable(name: "__vpp_verify", scope: !1937, file: !3, line: 172, type: !580)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 172, column: 29)
!1938 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 172, column: 29)
!1939 = !DILocalVariable(name: "__ptr", scope: !1940, file: !3, line: 172, type: !63)
!1940 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 172, column: 29)
!1941 = !DILocalVariable(name: "td", scope: !1929, file: !3, line: 173, type: !1621)
!1942 = !DILocalVariable(name: "__vpp_verify", scope: !1943, file: !3, line: 197, type: !580)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 197, column: 3)
!1944 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 197, column: 3)
!1945 = !DILocalVariable(name: "__ptr", scope: !1946, file: !3, line: 197, type: !63)
!1946 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 197, column: 3)
!1947 = !DILocalVariable(name: "__ret_warn_on", scope: !1948, file: !3, line: 206, type: !84)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 206, column: 4)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 205, column: 7)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 198, column: 18)
!1951 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 198, column: 6)
!1952 = !DILocalVariable(name: "__flags", scope: !1953, file: !3, line: 206, type: !84)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 206, column: 4)
!1954 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 206, column: 4)
!1955 = !DILocation(line: 170, column: 52, scope: !1929)
!1956 = !DILocation(line: 170, column: 69, scope: !1929)
!1957 = !DILocation(line: 172, column: 2, scope: !1929)
!1958 = !DILocation(line: 172, column: 22, scope: !1929)
!1959 = !DILocation(line: 172, column: 29, scope: !1938)
!1960 = !DILocation(line: 172, column: 29, scope: !1937)
!1961 = !DILocation(line: 172, column: 29, scope: !1940)
!1962 = !DILocation(line: 172, column: 28, scope: !1929)
!1963 = !DILocation(line: 173, column: 2, scope: !1929)
!1964 = !DILocation(line: 173, column: 30, scope: !1929)
!1965 = !DILocation(line: 175, column: 6, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 175, column: 6)
!1967 = !DILocation(line: 175, column: 6, scope: !1929)
!1968 = !DILocation(line: 176, column: 3, scope: !1966)
!1969 = !DILocation(line: 178, column: 57, scope: !1929)
!1970 = !DILocation(line: 178, column: 45, scope: !1929)
!1971 = !DILocation(line: 178, column: 7, scope: !1929)
!1972 = !DILocation(line: 178, column: 5, scope: !1929)
!1973 = !DILocation(line: 179, column: 7, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 179, column: 6)
!1975 = !DILocation(line: 179, column: 6, scope: !1929)
!1976 = !DILocation(line: 180, column: 3, scope: !1974)
!1977 = !DILocation(line: 181, column: 12, scope: !1929)
!1978 = !DILocation(line: 181, column: 2, scope: !1929)
!1979 = !DILocation(line: 181, column: 6, scope: !1929)
!1980 = !DILocation(line: 181, column: 10, scope: !1929)
!1981 = !DILocation(line: 182, column: 11, scope: !1929)
!1982 = !DILocation(line: 182, column: 2, scope: !1929)
!1983 = !DILocation(line: 182, column: 6, scope: !1929)
!1984 = !DILocation(line: 182, column: 9, scope: !1929)
!1985 = !DILocation(line: 184, column: 49, scope: !1929)
!1986 = !DILocation(line: 184, column: 53, scope: !1929)
!1987 = !DILocation(line: 185, column: 9, scope: !1929)
!1988 = !DILocation(line: 185, column: 13, scope: !1929)
!1989 = !DILocation(line: 184, column: 8, scope: !1929)
!1990 = !DILocation(line: 184, column: 6, scope: !1929)
!1991 = !DILocation(line: 186, column: 13, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 186, column: 6)
!1993 = !DILocation(line: 186, column: 6, scope: !1992)
!1994 = !DILocation(line: 186, column: 6, scope: !1929)
!1995 = !DILocation(line: 187, column: 9, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 186, column: 19)
!1997 = !DILocation(line: 187, column: 3, scope: !1996)
!1998 = !DILocation(line: 188, column: 18, scope: !1996)
!1999 = !DILocation(line: 188, column: 10, scope: !1996)
!2000 = !DILocation(line: 188, column: 3, scope: !1996)
!2001 = !DILocation(line: 190, column: 22, scope: !1929)
!2002 = !DILocation(line: 190, column: 27, scope: !1929)
!2003 = !DILocation(line: 190, column: 2, scope: !1929)
!2004 = !DILocation(line: 195, column: 15, scope: !1929)
!2005 = !DILocation(line: 195, column: 2, scope: !1929)
!2006 = !DILocation(line: 196, column: 18, scope: !1929)
!2007 = !DILocation(line: 196, column: 2, scope: !1929)
!2008 = !DILocation(line: 197, column: 33, scope: !1929)
!2009 = !DILocation(line: 197, column: 3, scope: !1944)
!2010 = !DILocation(line: 197, column: 3, scope: !1943)
!2011 = !DILocation(line: 197, column: 3, scope: !1946)
!2012 = !DILocation(line: 197, column: 31, scope: !1929)
!2013 = !DILocation(line: 198, column: 6, scope: !1951)
!2014 = !DILocation(line: 198, column: 10, scope: !1951)
!2015 = !DILocation(line: 198, column: 6, scope: !1929)
!2016 = !DILocation(line: 205, column: 27, scope: !1949)
!2017 = !DILocation(line: 205, column: 8, scope: !1949)
!2018 = !DILocation(line: 205, column: 7, scope: !1950)
!2019 = !DILocation(line: 206, column: 4, scope: !1948)
!2020 = !DILocation(line: 206, column: 4, scope: !1954)
!2021 = !DILocation(line: 206, column: 4, scope: !1953)
!2022 = !DILocation(line: 206, column: 4, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 206, column: 4)
!2024 = !DILocation(line: 206, column: 4, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 206, column: 4)
!2026 = !{i64 2153370476, i64 2153370505, i64 2153370551, i64 2153370609, i64 2153370663, i64 2153370717, i64 2153370772, i64 2153370803, i64 2153371111, i64 2153371117, i64 2153371164, i64 2153371187, i64 2153371213}
!2027 = !DILocation(line: 206, column: 4, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 206, column: 4)
!2029 = !DILocation(line: 206, column: 4, scope: !1949)
!2030 = !DILocation(line: 208, column: 4, scope: !1949)
!2031 = !DILocation(line: 208, column: 8, scope: !1949)
!2032 = !DILocation(line: 208, column: 15, scope: !1949)
!2033 = !DILocation(line: 209, column: 2, scope: !1950)
!2034 = !DILocation(line: 210, column: 2, scope: !1929)
!2035 = !DILocation(line: 211, column: 1, scope: !1929)
!2036 = !DISubprogram(name: "mutex_unlock", scope: !560, file: !560, line: 246, type: !1926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2037 = distinct !DISubprogram(name: "smpboot_unpark_threads", scope: !3, file: !3, line: 236, type: !1560, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2038)
!2038 = !{!2039, !2040, !2041, !2044}
!2039 = !DILocalVariable(name: "cpu", arg: 1, scope: !2037, file: !3, line: 236, type: !7)
!2040 = !DILocalVariable(name: "cur", scope: !2037, file: !3, line: 238, type: !1552)
!2041 = !DILocalVariable(name: "__mptr", scope: !2042, file: !3, line: 241, type: !73)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 241, column: 2)
!2043 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 241, column: 2)
!2044 = !DILocalVariable(name: "__mptr", scope: !2045, file: !3, line: 241, type: !73)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 241, column: 2)
!2046 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 241, column: 2)
!2047 = !DILocation(line: 236, column: 41, scope: !2037)
!2048 = !DILocation(line: 238, column: 2, scope: !2037)
!2049 = !DILocation(line: 238, column: 29, scope: !2037)
!2050 = !DILocation(line: 240, column: 2, scope: !2037)
!2051 = !DILocation(line: 241, column: 2, scope: !2042)
!2052 = !DILocation(line: 241, column: 2, scope: !2043)
!2053 = !DILocation(line: 241, column: 2, scope: !2046)
!2054 = !DILocation(line: 242, column: 25, scope: !2046)
!2055 = !DILocation(line: 242, column: 30, scope: !2046)
!2056 = !DILocation(line: 242, column: 3, scope: !2046)
!2057 = !DILocation(line: 241, column: 2, scope: !2045)
!2058 = distinct !{!2058, !2052, !2059, !1800, !1801}
!2059 = !DILocation(line: 242, column: 33, scope: !2043)
!2060 = !DILocation(line: 243, column: 2, scope: !2037)
!2061 = !DILocation(line: 245, column: 1, scope: !2037)
!2062 = !DILocation(line: 244, column: 2, scope: !2037)
!2063 = distinct !DISubprogram(name: "smpboot_unpark_thread", scope: !3, file: !3, line: 228, type: !2064, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{null, !1552, !7}
!2066 = !{!2067, !2068, !2069, !2070, !2073}
!2067 = !DILocalVariable(name: "ht", arg: 1, scope: !2063, file: !3, line: 228, type: !1552)
!2068 = !DILocalVariable(name: "cpu", arg: 2, scope: !2063, file: !3, line: 228, type: !7)
!2069 = !DILocalVariable(name: "tsk", scope: !2063, file: !3, line: 230, type: !54)
!2070 = !DILocalVariable(name: "__vpp_verify", scope: !2071, file: !3, line: 230, type: !580)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 230, column: 29)
!2072 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 230, column: 29)
!2073 = !DILocalVariable(name: "__ptr", scope: !2074, file: !3, line: 230, type: !63)
!2074 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 230, column: 29)
!2075 = !DILocation(line: 228, column: 62, scope: !2063)
!2076 = !DILocation(line: 228, column: 79, scope: !2063)
!2077 = !DILocation(line: 230, column: 2, scope: !2063)
!2078 = !DILocation(line: 230, column: 22, scope: !2063)
!2079 = !DILocation(line: 230, column: 29, scope: !2072)
!2080 = !DILocation(line: 230, column: 29, scope: !2071)
!2081 = !DILocation(line: 230, column: 29, scope: !2074)
!2082 = !DILocation(line: 230, column: 28, scope: !2063)
!2083 = !DILocation(line: 232, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 232, column: 6)
!2085 = !DILocation(line: 232, column: 11, scope: !2084)
!2086 = !{i8 0, i8 2}
!2087 = !DILocation(line: 232, column: 6, scope: !2063)
!2088 = !DILocation(line: 233, column: 18, scope: !2084)
!2089 = !DILocation(line: 233, column: 3, scope: !2084)
!2090 = !DILocation(line: 234, column: 1, scope: !2063)
!2091 = distinct !DISubprogram(name: "smpboot_park_threads", scope: !3, file: !3, line: 255, type: !1560, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2092)
!2092 = !{!2093, !2094, !2095, !2098}
!2093 = !DILocalVariable(name: "cpu", arg: 1, scope: !2091, file: !3, line: 255, type: !7)
!2094 = !DILocalVariable(name: "cur", scope: !2091, file: !3, line: 257, type: !1552)
!2095 = !DILocalVariable(name: "__mptr", scope: !2096, file: !3, line: 260, type: !73)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 260, column: 2)
!2097 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 260, column: 2)
!2098 = !DILocalVariable(name: "__mptr", scope: !2099, file: !3, line: 260, type: !73)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 260, column: 2)
!2100 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 260, column: 2)
!2101 = !DILocation(line: 255, column: 39, scope: !2091)
!2102 = !DILocation(line: 257, column: 2, scope: !2091)
!2103 = !DILocation(line: 257, column: 29, scope: !2091)
!2104 = !DILocation(line: 259, column: 2, scope: !2091)
!2105 = !DILocation(line: 260, column: 2, scope: !2096)
!2106 = !DILocation(line: 260, column: 2, scope: !2097)
!2107 = !DILocation(line: 260, column: 2, scope: !2100)
!2108 = !DILocation(line: 261, column: 23, scope: !2100)
!2109 = !DILocation(line: 261, column: 28, scope: !2100)
!2110 = !DILocation(line: 261, column: 3, scope: !2100)
!2111 = !DILocation(line: 260, column: 2, scope: !2099)
!2112 = distinct !{!2112, !2106, !2113, !1800, !1801}
!2113 = !DILocation(line: 261, column: 31, scope: !2097)
!2114 = !DILocation(line: 262, column: 2, scope: !2091)
!2115 = !DILocation(line: 264, column: 1, scope: !2091)
!2116 = !DILocation(line: 263, column: 2, scope: !2091)
!2117 = distinct !DISubprogram(name: "smpboot_park_thread", scope: !3, file: !3, line: 247, type: !2064, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2118)
!2118 = !{!2119, !2120, !2121, !2122, !2125}
!2119 = !DILocalVariable(name: "ht", arg: 1, scope: !2117, file: !3, line: 247, type: !1552)
!2120 = !DILocalVariable(name: "cpu", arg: 2, scope: !2117, file: !3, line: 247, type: !7)
!2121 = !DILocalVariable(name: "tsk", scope: !2117, file: !3, line: 249, type: !54)
!2122 = !DILocalVariable(name: "__vpp_verify", scope: !2123, file: !3, line: 249, type: !580)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 249, column: 29)
!2124 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 249, column: 29)
!2125 = !DILocalVariable(name: "__ptr", scope: !2126, file: !3, line: 249, type: !63)
!2126 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 249, column: 29)
!2127 = !DILocation(line: 247, column: 60, scope: !2117)
!2128 = !DILocation(line: 247, column: 77, scope: !2117)
!2129 = !DILocation(line: 249, column: 2, scope: !2117)
!2130 = !DILocation(line: 249, column: 22, scope: !2117)
!2131 = !DILocation(line: 249, column: 29, scope: !2124)
!2132 = !DILocation(line: 249, column: 29, scope: !2123)
!2133 = !DILocation(line: 249, column: 29, scope: !2126)
!2134 = !DILocation(line: 249, column: 28, scope: !2117)
!2135 = !DILocation(line: 251, column: 6, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 251, column: 6)
!2137 = !DILocation(line: 251, column: 10, scope: !2136)
!2138 = !DILocation(line: 251, column: 14, scope: !2136)
!2139 = !DILocation(line: 251, column: 18, scope: !2136)
!2140 = !DILocation(line: 251, column: 6, scope: !2117)
!2141 = !DILocation(line: 252, column: 16, scope: !2136)
!2142 = !DILocation(line: 252, column: 3, scope: !2136)
!2143 = !DILocation(line: 253, column: 1, scope: !2117)
!2144 = distinct !DISubprogram(name: "smpboot_register_percpu_thread", scope: !3, file: !3, line: 288, type: !2145, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!84, !1552}
!2147 = !{!2148, !2149, !2150, !2151}
!2148 = !DILocalVariable(name: "plug_thread", arg: 1, scope: !2144, file: !3, line: 288, type: !1552)
!2149 = !DILocalVariable(name: "cpu", scope: !2144, file: !3, line: 290, type: !7)
!2150 = !DILocalVariable(name: "ret", scope: !2144, file: !3, line: 291, type: !84)
!2151 = !DILabel(scope: !2144, name: "out", file: !3, line: 304)
!2152 = !DILocation(line: 288, column: 63, scope: !2144)
!2153 = !DILocation(line: 290, column: 2, scope: !2144)
!2154 = !DILocation(line: 290, column: 15, scope: !2144)
!2155 = !DILocation(line: 291, column: 2, scope: !2144)
!2156 = !DILocation(line: 291, column: 6, scope: !2144)
!2157 = !DILocation(line: 293, column: 2, scope: !2144)
!2158 = !DILocation(line: 294, column: 2, scope: !2144)
!2159 = !DILocation(line: 295, column: 2, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 295, column: 2)
!2161 = !DILocation(line: 295, column: 2, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 295, column: 2)
!2163 = !DILocation(line: 296, column: 33, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 295, column: 27)
!2165 = !DILocation(line: 296, column: 46, scope: !2164)
!2166 = !DILocation(line: 296, column: 9, scope: !2164)
!2167 = !DILocation(line: 296, column: 7, scope: !2164)
!2168 = !DILocation(line: 297, column: 7, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 297, column: 7)
!2170 = !DILocation(line: 297, column: 7, scope: !2164)
!2171 = !DILocation(line: 298, column: 28, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 297, column: 12)
!2173 = !DILocation(line: 298, column: 4, scope: !2172)
!2174 = !DILocation(line: 299, column: 4, scope: !2172)
!2175 = !DILocation(line: 301, column: 25, scope: !2164)
!2176 = !DILocation(line: 301, column: 38, scope: !2164)
!2177 = !DILocation(line: 301, column: 3, scope: !2164)
!2178 = !DILocation(line: 302, column: 2, scope: !2164)
!2179 = distinct !{!2179, !2159, !2180, !1800, !1801}
!2180 = !DILocation(line: 302, column: 2, scope: !2160)
!2181 = !DILocation(line: 303, column: 12, scope: !2144)
!2182 = !DILocation(line: 303, column: 25, scope: !2144)
!2183 = !DILocation(line: 303, column: 2, scope: !2144)
!2184 = !DILocation(line: 304, column: 1, scope: !2144)
!2185 = !DILocation(line: 305, column: 2, scope: !2144)
!2186 = !DILocation(line: 306, column: 2, scope: !2144)
!2187 = !DILocation(line: 307, column: 9, scope: !2144)
!2188 = !DILocation(line: 308, column: 1, scope: !2144)
!2189 = !DILocation(line: 307, column: 2, scope: !2144)
!2190 = !DISubprogram(name: "cpus_read_lock", scope: !2191, file: !2191, line: 135, type: !1714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2191 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!2192 = distinct !DISubprogram(name: "smpboot_destroy_threads", scope: !3, file: !3, line: 266, type: !2193, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{null, !1552}
!2195 = !{!2196, !2197, !2198, !2202, !2205, !2207, !2212}
!2196 = !DILocalVariable(name: "ht", arg: 1, scope: !2192, file: !3, line: 266, type: !1552)
!2197 = !DILocalVariable(name: "cpu", scope: !2192, file: !3, line: 268, type: !7)
!2198 = !DILocalVariable(name: "tsk", scope: !2199, file: !3, line: 272, type: !54)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 271, column: 29)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 271, column: 2)
!2201 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 271, column: 2)
!2202 = !DILocalVariable(name: "__vpp_verify", scope: !2203, file: !3, line: 272, type: !580)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 272, column: 30)
!2204 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 272, column: 30)
!2205 = !DILocalVariable(name: "__ptr", scope: !2206, file: !3, line: 272, type: !63)
!2206 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 272, column: 30)
!2207 = !DILocalVariable(name: "__vpp_verify", scope: !2208, file: !3, line: 276, type: !580)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 276, column: 5)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 276, column: 5)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 274, column: 12)
!2211 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 274, column: 7)
!2212 = !DILocalVariable(name: "__ptr", scope: !2213, file: !3, line: 276, type: !63)
!2213 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 276, column: 5)
!2214 = !DILocation(line: 266, column: 64, scope: !2192)
!2215 = !DILocation(line: 268, column: 2, scope: !2192)
!2216 = !DILocation(line: 268, column: 15, scope: !2192)
!2217 = !DILocation(line: 271, column: 2, scope: !2201)
!2218 = !DILocation(line: 271, column: 2, scope: !2200)
!2219 = !DILocation(line: 272, column: 3, scope: !2199)
!2220 = !DILocation(line: 272, column: 23, scope: !2199)
!2221 = !DILocation(line: 272, column: 30, scope: !2204)
!2222 = !DILocation(line: 272, column: 30, scope: !2203)
!2223 = !DILocation(line: 272, column: 30, scope: !2206)
!2224 = !DILocation(line: 272, column: 29, scope: !2199)
!2225 = !DILocation(line: 274, column: 7, scope: !2211)
!2226 = !DILocation(line: 274, column: 7, scope: !2199)
!2227 = !DILocation(line: 275, column: 21, scope: !2210)
!2228 = !DILocation(line: 275, column: 4, scope: !2210)
!2229 = !DILocation(line: 276, column: 5, scope: !2209)
!2230 = !DILocation(line: 276, column: 5, scope: !2208)
!2231 = !DILocation(line: 276, column: 5, scope: !2213)
!2232 = !DILocation(line: 276, column: 33, scope: !2210)
!2233 = !DILocation(line: 277, column: 3, scope: !2210)
!2234 = !DILocation(line: 278, column: 2, scope: !2200)
!2235 = !DILocation(line: 278, column: 2, scope: !2199)
!2236 = distinct !{!2236, !2217, !2237, !1800, !1801}
!2237 = !DILocation(line: 278, column: 2, scope: !2201)
!2238 = !DILocation(line: 279, column: 1, scope: !2192)
!2239 = distinct !DISubprogram(name: "list_add", scope: !2240, file: !2240, line: 167, type: !2241, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2243)
!2240 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2241 = !DISubroutineType(types: !2242)
!2242 = !{null, !143, !143}
!2243 = !{!2244, !2245}
!2244 = !DILocalVariable(name: "new", arg: 1, scope: !2239, file: !2240, line: 167, type: !143)
!2245 = !DILocalVariable(name: "head", arg: 2, scope: !2239, file: !2240, line: 167, type: !143)
!2246 = !DILocation(line: 167, column: 47, scope: !2239)
!2247 = !DILocation(line: 167, column: 70, scope: !2239)
!2248 = !DILocation(line: 169, column: 13, scope: !2239)
!2249 = !DILocation(line: 169, column: 18, scope: !2239)
!2250 = !DILocation(line: 169, column: 24, scope: !2239)
!2251 = !DILocation(line: 169, column: 30, scope: !2239)
!2252 = !DILocation(line: 169, column: 2, scope: !2239)
!2253 = !DILocation(line: 170, column: 1, scope: !2239)
!2254 = !DISubprogram(name: "cpus_read_unlock", scope: !2191, file: !2191, line: 136, type: !1714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2255 = distinct !DISubprogram(name: "smpboot_unregister_percpu_thread", scope: !3, file: !3, line: 317, type: !2193, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2256)
!2256 = !{!2257}
!2257 = !DILocalVariable(name: "plug_thread", arg: 1, scope: !2255, file: !3, line: 317, type: !1552)
!2258 = !DILocation(line: 317, column: 66, scope: !2255)
!2259 = !DILocation(line: 319, column: 2, scope: !2255)
!2260 = !DILocation(line: 320, column: 2, scope: !2255)
!2261 = !DILocation(line: 321, column: 12, scope: !2255)
!2262 = !DILocation(line: 321, column: 25, scope: !2255)
!2263 = !DILocation(line: 321, column: 2, scope: !2255)
!2264 = !DILocation(line: 322, column: 26, scope: !2255)
!2265 = !DILocation(line: 322, column: 2, scope: !2255)
!2266 = !DILocation(line: 323, column: 2, scope: !2255)
!2267 = !DILocation(line: 324, column: 2, scope: !2255)
!2268 = !DILocation(line: 325, column: 1, scope: !2255)
!2269 = distinct !DISubprogram(name: "list_del", scope: !2240, file: !2240, line: 227, type: !2270, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{null, !143}
!2272 = !{!2273}
!2273 = !DILocalVariable(name: "entry", arg: 1, scope: !2269, file: !2240, line: 227, type: !143)
!2274 = !DILocation(line: 227, column: 47, scope: !2269)
!2275 = !DILocation(line: 229, column: 19, scope: !2269)
!2276 = !DILocation(line: 229, column: 2, scope: !2269)
!2277 = !DILocation(line: 230, column: 2, scope: !2269)
!2278 = !DILocation(line: 230, column: 9, scope: !2269)
!2279 = !DILocation(line: 230, column: 14, scope: !2269)
!2280 = !DILocation(line: 231, column: 2, scope: !2269)
!2281 = !DILocation(line: 231, column: 9, scope: !2269)
!2282 = !DILocation(line: 231, column: 14, scope: !2269)
!2283 = !DILocation(line: 232, column: 1, scope: !2269)
!2284 = distinct !DISubprogram(name: "variable__ffs", scope: !2285, file: !2285, line: 250, type: !2286, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2288)
!2285 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!63, !63}
!2288 = !{!2289}
!2289 = !DILocalVariable(name: "word", arg: 1, scope: !2284, file: !2285, line: 250, type: !63)
!2290 = !DILocation(line: 250, column: 66, scope: !2284)
!2291 = !DILocation(line: 254, column: 11, scope: !2284)
!2292 = !DILocation(line: 252, column: 2, scope: !2284)
!2293 = !{i64 508343}
!2294 = !DILocation(line: 255, column: 9, scope: !2284)
!2295 = !DILocation(line: 255, column: 2, scope: !2284)
!2296 = !DISubprogram(name: "_find_next_bit", scope: !1804, file: !1804, line: 11, type: !1805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2297 = !DISubprogram(name: "fork_idle", scope: !2298, file: !2298, line: 99, type: !2299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2298 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!54, !84}
!2301 = distinct !DISubprogram(name: "IS_ERR", scope: !1704, file: !1704, line: 59, type: !2302, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!926, !580}
!2304 = !{!2305}
!2305 = !DILocalVariable(name: "ptr", arg: 1, scope: !2301, file: !1704, line: 59, type: !580)
!2306 = !DILocation(line: 59, column: 60, scope: !2301)
!2307 = !DILocation(line: 61, column: 9, scope: !2301)
!2308 = !DILocation(line: 61, column: 2, scope: !2301)
!2309 = !DISubprogram(name: "_printk", scope: !2310, file: !2310, line: 153, type: !2311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2310 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!84, !1576, null}
!2313 = distinct !DISubprogram(name: "kzalloc_node", scope: !30, file: !30, line: 730, type: !2314, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!73, !892, !1578, !84}
!2316 = !{!2317, !2318, !2319}
!2317 = !DILocalVariable(name: "size", arg: 1, scope: !2313, file: !30, line: 730, type: !892)
!2318 = !DILocalVariable(name: "flags", arg: 2, scope: !2313, file: !30, line: 730, type: !1578)
!2319 = !DILocalVariable(name: "node", arg: 3, scope: !2313, file: !30, line: 730, type: !84)
!2320 = !DILocation(line: 730, column: 57, scope: !2313)
!2321 = !DILocation(line: 730, column: 69, scope: !2313)
!2322 = !DILocation(line: 730, column: 80, scope: !2313)
!2323 = !DILocation(line: 732, column: 22, scope: !2313)
!2324 = !DILocation(line: 732, column: 28, scope: !2313)
!2325 = !DILocation(line: 732, column: 34, scope: !2313)
!2326 = !DILocation(line: 732, column: 48, scope: !2313)
!2327 = !DILocation(line: 732, column: 9, scope: !2313)
!2328 = !DILocation(line: 732, column: 2, scope: !2313)
!2329 = distinct !DISubprogram(name: "cpu_to_node", scope: !2330, file: !2330, line: 94, type: !2331, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2333)
!2330 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!84, !84}
!2333 = !{!2334, !2335, !2338}
!2334 = !DILocalVariable(name: "cpu", arg: 1, scope: !2329, file: !2330, line: 94, type: !84)
!2335 = !DILocalVariable(name: "__vpp_verify", scope: !2336, file: !2330, line: 96, type: !580)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !2330, line: 96, column: 9)
!2337 = distinct !DILexicalBlock(scope: !2329, file: !2330, line: 96, column: 9)
!2338 = !DILocalVariable(name: "__ptr", scope: !2339, file: !2330, line: 96, type: !63)
!2339 = distinct !DILexicalBlock(scope: !2337, file: !2330, line: 96, column: 9)
!2340 = !DILocation(line: 94, column: 35, scope: !2329)
!2341 = !DILocation(line: 96, column: 9, scope: !2337)
!2342 = !DILocation(line: 96, column: 9, scope: !2336)
!2343 = !DILocation(line: 96, column: 9, scope: !2339)
!2344 = !DILocation(line: 96, column: 9, scope: !2329)
!2345 = !DILocation(line: 96, column: 2, scope: !2329)
!2346 = !DISubprogram(name: "kthread_create_on_cpu", scope: !2347, file: !2347, line: 31, type: !2348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2347 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!54, !2350, !73, !7, !1576}
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!2351 = !DILocation(line: 106, column: 36, scope: !1615)
!2352 = !DILocation(line: 108, column: 2, scope: !1615)
!2353 = !DILocation(line: 108, column: 30, scope: !1615)
!2354 = !DILocation(line: 108, column: 35, scope: !1615)
!2355 = !DILocation(line: 109, column: 2, scope: !1615)
!2356 = !DILocation(line: 109, column: 29, scope: !1615)
!2357 = !DILocation(line: 109, column: 34, scope: !1615)
!2358 = !DILocation(line: 109, column: 38, scope: !1615)
!2359 = !DILocation(line: 111, column: 2, scope: !1615)
!2360 = !DILocation(line: 112, column: 3, scope: !1633)
!2361 = !DILocation(line: 112, column: 3, scope: !1632)
!2362 = !DILocation(line: 112, column: 3, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 112, column: 3)
!2364 = !DILocation(line: 112, column: 3, scope: !1631)
!2365 = !DILocation(line: 112, column: 3, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 112, column: 3)
!2367 = !DILocation(line: 112, column: 3, scope: !1629)
!2368 = !DILocation(line: 112, column: 3, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 112, column: 3)
!2370 = !DILocation(line: 112, column: 3, scope: !1636)
!2371 = !{i64 2153326745}
!2372 = !DILocation(line: 112, column: 3, scope: !1630)
!2373 = !DILocation(line: 113, column: 3, scope: !1633)
!2374 = !DILocation(line: 113, column: 3, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 113, column: 3)
!2376 = !{i64 2153331011}
!2377 = !DILocation(line: 114, column: 7, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 114, column: 7)
!2379 = !DILocation(line: 114, column: 7, scope: !1633)
!2380 = !DILocation(line: 115, column: 4, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 114, column: 30)
!2382 = !DILocation(line: 115, column: 4, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 115, column: 4)
!2384 = !DILocation(line: 115, column: 4, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 115, column: 4)
!2386 = !DILocation(line: 115, column: 4, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 115, column: 4)
!2388 = !DILocation(line: 115, column: 4, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 115, column: 4)
!2390 = !DILocation(line: 115, column: 4, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 115, column: 4)
!2392 = !DILocation(line: 116, column: 4, scope: !2381)
!2393 = !DILocation(line: 116, column: 4, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 116, column: 4)
!2395 = !{i64 2153333734}
!2396 = !DILocation(line: 116, column: 4, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 116, column: 4)
!2398 = !DILocation(line: 116, column: 4, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 116, column: 4)
!2400 = !{i64 2153333916}
!2401 = !DILocation(line: 118, column: 8, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 118, column: 8)
!2403 = !DILocation(line: 118, column: 12, scope: !2402)
!2404 = !DILocation(line: 118, column: 20, scope: !2402)
!2405 = !DILocation(line: 118, column: 23, scope: !2402)
!2406 = !DILocation(line: 118, column: 27, scope: !2402)
!2407 = !DILocation(line: 118, column: 34, scope: !2402)
!2408 = !DILocation(line: 118, column: 8, scope: !2381)
!2409 = !DILocation(line: 119, column: 5, scope: !2402)
!2410 = !DILocation(line: 119, column: 9, scope: !2402)
!2411 = !DILocation(line: 119, column: 17, scope: !2402)
!2412 = !DILocation(line: 119, column: 21, scope: !2402)
!2413 = !DILocation(line: 119, column: 37, scope: !2402)
!2414 = !DILocation(line: 119, column: 41, scope: !2402)
!2415 = !DILocation(line: 119, column: 26, scope: !2402)
!2416 = !DILocation(line: 120, column: 10, scope: !2381)
!2417 = !DILocation(line: 120, column: 4, scope: !2381)
!2418 = !DILocation(line: 167, column: 1, scope: !1615)
!2419 = !DILocation(line: 121, column: 4, scope: !2381)
!2420 = !DILocation(line: 124, column: 7, scope: !1645)
!2421 = !DILocation(line: 124, column: 7, scope: !1633)
!2422 = !DILocation(line: 125, column: 4, scope: !1644)
!2423 = !DILocation(line: 125, column: 4, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 125, column: 4)
!2425 = !DILocation(line: 125, column: 4, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 125, column: 4)
!2427 = !DILocation(line: 125, column: 4, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 125, column: 4)
!2429 = !DILocation(line: 125, column: 4, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 125, column: 4)
!2431 = !DILocation(line: 125, column: 4, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 125, column: 4)
!2433 = !DILocation(line: 126, column: 4, scope: !1644)
!2434 = !DILocation(line: 126, column: 4, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 126, column: 4)
!2436 = !{i64 2153338222}
!2437 = !DILocation(line: 126, column: 4, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 126, column: 4)
!2439 = !DILocation(line: 126, column: 4, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 126, column: 4)
!2441 = !{i64 2153338404}
!2442 = !DILocation(line: 127, column: 8, scope: !1643)
!2443 = !DILocation(line: 127, column: 12, scope: !1643)
!2444 = !DILocation(line: 127, column: 17, scope: !1643)
!2445 = !DILocation(line: 127, column: 20, scope: !1643)
!2446 = !DILocation(line: 127, column: 24, scope: !1643)
!2447 = !DILocation(line: 127, column: 31, scope: !1643)
!2448 = !DILocation(line: 127, column: 8, scope: !1644)
!2449 = !DILocation(line: 128, column: 5, scope: !1642)
!2450 = !DILocation(line: 128, column: 5, scope: !1640)
!2451 = !DILocation(line: 128, column: 5, scope: !1639)
!2452 = !DILocation(line: 128, column: 5, scope: !1638)
!2453 = !DILocation(line: 128, column: 5, scope: !1647)
!2454 = !DILocation(line: 128, column: 5, scope: !1649)
!2455 = !{i64 2153345897}
!2456 = !DILocation(line: 128, column: 5, scope: !1641)
!2457 = !DILocation(line: 128, column: 5, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 128, column: 5)
!2459 = !DILocation(line: 128, column: 5, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 128, column: 5)
!2461 = !DILocation(line: 128, column: 5, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 128, column: 5)
!2463 = !{i64 2153346651, i64 2153346680, i64 2153346726, i64 2153346784, i64 2153346838, i64 2153346892, i64 2153346947, i64 2153346978}
!2464 = !DILocation(line: 129, column: 5, scope: !1642)
!2465 = !DILocation(line: 129, column: 9, scope: !1642)
!2466 = !DILocation(line: 129, column: 14, scope: !1642)
!2467 = !DILocation(line: 129, column: 18, scope: !1642)
!2468 = !DILocation(line: 130, column: 5, scope: !1642)
!2469 = !DILocation(line: 130, column: 9, scope: !1642)
!2470 = !DILocation(line: 130, column: 16, scope: !1642)
!2471 = !DILocation(line: 131, column: 4, scope: !1642)
!2472 = !DILocation(line: 132, column: 4, scope: !1644)
!2473 = !DILocation(line: 134, column: 4, scope: !1644)
!2474 = distinct !{!2474, !2359, !2475, !1801}
!2475 = !DILocation(line: 166, column: 2, scope: !1615)
!2476 = !DILocation(line: 137, column: 3, scope: !1633)
!2477 = !DILocation(line: 137, column: 3, scope: !1653)
!2478 = !DILocation(line: 137, column: 3, scope: !1652)
!2479 = !DILocation(line: 137, column: 3, scope: !1651)
!2480 = !DILocation(line: 137, column: 3, scope: !1656)
!2481 = !DILocation(line: 137, column: 3, scope: !1658)
!2482 = !{i64 2153353243}
!2483 = !DILocation(line: 137, column: 3, scope: !1654)
!2484 = !DILocation(line: 137, column: 3, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 137, column: 3)
!2486 = !DILocation(line: 137, column: 3, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 137, column: 3)
!2488 = !DILocation(line: 137, column: 3, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 137, column: 3)
!2490 = !{i64 2153353997, i64 2153354026, i64 2153354072, i64 2153354130, i64 2153354184, i64 2153354238, i64 2153354293, i64 2153354324}
!2491 = !DILocation(line: 140, column: 11, scope: !1633)
!2492 = !DILocation(line: 140, column: 15, scope: !1633)
!2493 = !DILocation(line: 140, column: 3, scope: !1633)
!2494 = !DILocation(line: 142, column: 4, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 140, column: 23)
!2496 = !DILocation(line: 142, column: 4, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 142, column: 4)
!2498 = !DILocation(line: 142, column: 4, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 142, column: 4)
!2500 = !DILocation(line: 142, column: 4, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 142, column: 4)
!2502 = !DILocation(line: 142, column: 4, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 142, column: 4)
!2504 = !DILocation(line: 142, column: 4, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 142, column: 4)
!2506 = !DILocation(line: 143, column: 4, scope: !2495)
!2507 = !DILocation(line: 143, column: 4, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 143, column: 4)
!2509 = !{i64 2153357402}
!2510 = !DILocation(line: 143, column: 4, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 143, column: 4)
!2512 = !DILocation(line: 143, column: 4, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 143, column: 4)
!2514 = !{i64 2153357584}
!2515 = !DILocation(line: 144, column: 8, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 144, column: 8)
!2517 = !DILocation(line: 144, column: 12, scope: !2516)
!2518 = !DILocation(line: 144, column: 8, scope: !2495)
!2519 = !DILocation(line: 145, column: 5, scope: !2516)
!2520 = !DILocation(line: 145, column: 9, scope: !2516)
!2521 = !DILocation(line: 145, column: 15, scope: !2516)
!2522 = !DILocation(line: 145, column: 19, scope: !2516)
!2523 = !DILocation(line: 146, column: 4, scope: !2495)
!2524 = !DILocation(line: 146, column: 8, scope: !2495)
!2525 = !DILocation(line: 146, column: 15, scope: !2495)
!2526 = !DILocation(line: 147, column: 4, scope: !2495)
!2527 = !DILocation(line: 150, column: 4, scope: !2495)
!2528 = !DILocation(line: 150, column: 4, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 150, column: 4)
!2530 = !DILocation(line: 150, column: 4, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 150, column: 4)
!2532 = !DILocation(line: 150, column: 4, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 150, column: 4)
!2534 = !DILocation(line: 150, column: 4, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 150, column: 4)
!2536 = !DILocation(line: 150, column: 4, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 150, column: 4)
!2538 = !DILocation(line: 151, column: 4, scope: !2495)
!2539 = !DILocation(line: 151, column: 4, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 151, column: 4)
!2541 = !{i64 2153361890}
!2542 = !DILocation(line: 151, column: 4, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 151, column: 4)
!2544 = !DILocation(line: 151, column: 4, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 151, column: 4)
!2546 = !{i64 2153362072}
!2547 = !DILocation(line: 152, column: 8, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 152, column: 8)
!2549 = !DILocation(line: 152, column: 12, scope: !2548)
!2550 = !DILocation(line: 152, column: 8, scope: !2495)
!2551 = !DILocation(line: 153, column: 5, scope: !2548)
!2552 = !DILocation(line: 153, column: 9, scope: !2548)
!2553 = !DILocation(line: 153, column: 16, scope: !2548)
!2554 = !DILocation(line: 153, column: 20, scope: !2548)
!2555 = !DILocation(line: 154, column: 4, scope: !2495)
!2556 = !DILocation(line: 154, column: 8, scope: !2495)
!2557 = !DILocation(line: 154, column: 15, scope: !2495)
!2558 = !DILocation(line: 155, column: 4, scope: !2495)
!2559 = !DILocation(line: 158, column: 8, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 158, column: 7)
!2561 = !DILocation(line: 158, column: 12, scope: !2560)
!2562 = !DILocation(line: 158, column: 30, scope: !2560)
!2563 = !DILocation(line: 158, column: 34, scope: !2560)
!2564 = !DILocation(line: 158, column: 7, scope: !1633)
!2565 = !DILocation(line: 159, column: 4, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 158, column: 40)
!2567 = !DILocation(line: 159, column: 4, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 159, column: 4)
!2569 = !{i64 2153363786}
!2570 = !DILocation(line: 160, column: 4, scope: !2566)
!2571 = !DILocation(line: 161, column: 3, scope: !2566)
!2572 = !DILocation(line: 162, column: 4, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 161, column: 10)
!2574 = !DILocation(line: 162, column: 4, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 162, column: 4)
!2576 = !DILocation(line: 162, column: 4, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 162, column: 4)
!2578 = !DILocation(line: 162, column: 4, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 162, column: 4)
!2580 = !DILocation(line: 162, column: 4, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 162, column: 4)
!2582 = !DILocation(line: 162, column: 4, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 162, column: 4)
!2584 = !DILocation(line: 163, column: 4, scope: !2573)
!2585 = !DILocation(line: 163, column: 4, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 163, column: 4)
!2587 = !{i64 2153366557}
!2588 = !DILocation(line: 163, column: 4, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 163, column: 4)
!2590 = !DILocation(line: 163, column: 4, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 163, column: 4)
!2592 = !{i64 2153366739}
!2593 = !DILocation(line: 164, column: 4, scope: !2573)
!2594 = !DILocation(line: 164, column: 8, scope: !2573)
!2595 = !DILocation(line: 164, column: 18, scope: !2573)
!2596 = !DILocation(line: 164, column: 22, scope: !2573)
!2597 = !DISubprogram(name: "kfree", scope: !30, file: !30, line: 227, type: !2598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{null, !580}
!2600 = distinct !DISubprogram(name: "PTR_ERR", scope: !1704, file: !1704, line: 49, type: !2601, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!583, !580}
!2603 = !{!2604}
!2604 = !DILocalVariable(name: "ptr", arg: 1, scope: !2600, file: !1704, line: 49, type: !580)
!2605 = !DILocation(line: 49, column: 61, scope: !2600)
!2606 = !DILocation(line: 51, column: 16, scope: !2600)
!2607 = !DILocation(line: 51, column: 9, scope: !2600)
!2608 = !DILocation(line: 51, column: 2, scope: !2600)
!2609 = !DISubprogram(name: "kthread_set_per_cpu", scope: !2347, file: !2347, line: 39, type: !2610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{null, !54, !84}
!2612 = !DISubprogram(name: "kthread_park", scope: !2347, file: !2347, line: 97, type: !2613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!84, !54}
!2615 = distinct !DISubprogram(name: "get_task_struct", scope: !2298, file: !2298, line: 115, type: !2616, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!54, !54}
!2618 = !{!2619}
!2619 = !DILocalVariable(name: "t", arg: 1, scope: !2615, file: !2298, line: 115, type: !54)
!2620 = !DILocation(line: 115, column: 71, scope: !2615)
!2621 = !DILocation(line: 117, column: 16, scope: !2615)
!2622 = !DILocation(line: 117, column: 19, scope: !2615)
!2623 = !DILocation(line: 117, column: 2, scope: !2615)
!2624 = !DILocation(line: 118, column: 9, scope: !2615)
!2625 = !DILocation(line: 118, column: 2, scope: !2615)
!2626 = !DISubprogram(name: "wait_task_inactive", scope: !56, file: !56, line: 2034, type: !2627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!63, !54, !7}
!2629 = distinct !DISubprogram(name: "kmalloc_node", scope: !30, file: !30, line: 607, type: !2314, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2630)
!2630 = !{!2631, !2632, !2633, !2634}
!2631 = !DILocalVariable(name: "size", arg: 1, scope: !2629, file: !30, line: 607, type: !892)
!2632 = !DILocalVariable(name: "flags", arg: 2, scope: !2629, file: !30, line: 607, type: !1578)
!2633 = !DILocalVariable(name: "node", arg: 3, scope: !2629, file: !30, line: 607, type: !84)
!2634 = !DILocalVariable(name: "index", scope: !2635, file: !30, line: 610, type: !7)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !30, line: 609, column: 42)
!2636 = distinct !DILexicalBlock(scope: !2629, file: !30, line: 609, column: 6)
!2637 = !DILocation(line: 607, column: 66, scope: !2629)
!2638 = !DILocation(line: 607, column: 78, scope: !2629)
!2639 = !DILocation(line: 607, column: 89, scope: !2629)
!2640 = !DILocation(line: 609, column: 27, scope: !2636)
!2641 = !DILocation(line: 609, column: 6, scope: !2636)
!2642 = !DILocation(line: 609, column: 33, scope: !2636)
!2643 = !DILocation(line: 609, column: 36, scope: !2636)
!2644 = !DILocation(line: 609, column: 6, scope: !2629)
!2645 = !DILocation(line: 610, column: 3, scope: !2635)
!2646 = !DILocation(line: 610, column: 16, scope: !2635)
!2647 = !DILocation(line: 612, column: 7, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2635, file: !30, line: 612, column: 7)
!2649 = !DILocation(line: 612, column: 12, scope: !2648)
!2650 = !DILocation(line: 612, column: 7, scope: !2635)
!2651 = !DILocation(line: 613, column: 30, scope: !2648)
!2652 = !DILocation(line: 613, column: 36, scope: !2648)
!2653 = !DILocation(line: 613, column: 43, scope: !2648)
!2654 = !DILocation(line: 613, column: 11, scope: !2648)
!2655 = !DILocation(line: 613, column: 4, scope: !2648)
!2656 = !DILocation(line: 615, column: 11, scope: !2635)
!2657 = !DILocation(line: 615, column: 9, scope: !2635)
!2658 = !DILocation(line: 617, column: 33, scope: !2635)
!2659 = !DILocation(line: 617, column: 40, scope: !2635)
!2660 = !DILocation(line: 617, column: 20, scope: !2635)
!2661 = !DILocation(line: 617, column: 5, scope: !2635)
!2662 = !DILocation(line: 617, column: 51, scope: !2635)
!2663 = !DILocation(line: 618, column: 5, scope: !2635)
!2664 = !DILocation(line: 618, column: 12, scope: !2635)
!2665 = !DILocation(line: 618, column: 18, scope: !2635)
!2666 = !DILocation(line: 616, column: 10, scope: !2635)
!2667 = !DILocation(line: 616, column: 3, scope: !2635)
!2668 = !DILocation(line: 619, column: 2, scope: !2636)
!2669 = !DILocation(line: 620, column: 24, scope: !2629)
!2670 = !DILocation(line: 620, column: 30, scope: !2629)
!2671 = !DILocation(line: 620, column: 37, scope: !2629)
!2672 = !DILocation(line: 620, column: 9, scope: !2629)
!2673 = !DILocation(line: 620, column: 2, scope: !2629)
!2674 = !DILocation(line: 621, column: 1, scope: !2629)
!2675 = !DISubprogram(name: "kmalloc_large_node", scope: !30, file: !30, line: 534, type: !2314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2676 = distinct !DISubprogram(name: "__kmalloc_index", scope: !30, file: !30, line: 444, type: !2677, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!7, !892, !926}
!2679 = !{!2680, !2681}
!2680 = !DILocalVariable(name: "size", arg: 1, scope: !2676, file: !30, line: 444, type: !892)
!2681 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2676, file: !30, line: 445, type: !926)
!2682 = !DILocation(line: 444, column: 60, scope: !2676)
!2683 = !DILocation(line: 445, column: 16, scope: !2676)
!2684 = !DILocation(line: 447, column: 7, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 447, column: 6)
!2686 = !DILocation(line: 447, column: 6, scope: !2676)
!2687 = !DILocation(line: 448, column: 3, scope: !2685)
!2688 = !DILocation(line: 450, column: 6, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 450, column: 6)
!2690 = !DILocation(line: 450, column: 11, scope: !2689)
!2691 = !DILocation(line: 450, column: 6, scope: !2676)
!2692 = !DILocation(line: 451, column: 3, scope: !2689)
!2693 = !DILocation(line: 453, column: 32, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 453, column: 6)
!2695 = !DILocation(line: 453, column: 37, scope: !2694)
!2696 = !DILocation(line: 453, column: 42, scope: !2694)
!2697 = !DILocation(line: 453, column: 45, scope: !2694)
!2698 = !DILocation(line: 453, column: 50, scope: !2694)
!2699 = !DILocation(line: 453, column: 6, scope: !2676)
!2700 = !DILocation(line: 454, column: 3, scope: !2694)
!2701 = !DILocation(line: 455, column: 32, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 455, column: 6)
!2703 = !DILocation(line: 455, column: 37, scope: !2702)
!2704 = !DILocation(line: 455, column: 43, scope: !2702)
!2705 = !DILocation(line: 455, column: 46, scope: !2702)
!2706 = !DILocation(line: 455, column: 51, scope: !2702)
!2707 = !DILocation(line: 455, column: 6, scope: !2676)
!2708 = !DILocation(line: 456, column: 3, scope: !2702)
!2709 = !DILocation(line: 457, column: 6, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 457, column: 6)
!2711 = !DILocation(line: 457, column: 11, scope: !2710)
!2712 = !DILocation(line: 457, column: 6, scope: !2676)
!2713 = !DILocation(line: 457, column: 26, scope: !2710)
!2714 = !DILocation(line: 458, column: 6, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 458, column: 6)
!2716 = !DILocation(line: 458, column: 11, scope: !2715)
!2717 = !DILocation(line: 458, column: 6, scope: !2676)
!2718 = !DILocation(line: 458, column: 26, scope: !2715)
!2719 = !DILocation(line: 459, column: 6, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 459, column: 6)
!2721 = !DILocation(line: 459, column: 11, scope: !2720)
!2722 = !DILocation(line: 459, column: 6, scope: !2676)
!2723 = !DILocation(line: 459, column: 26, scope: !2720)
!2724 = !DILocation(line: 460, column: 6, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 460, column: 6)
!2726 = !DILocation(line: 460, column: 11, scope: !2725)
!2727 = !DILocation(line: 460, column: 6, scope: !2676)
!2728 = !DILocation(line: 460, column: 26, scope: !2725)
!2729 = !DILocation(line: 461, column: 6, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 461, column: 6)
!2731 = !DILocation(line: 461, column: 11, scope: !2730)
!2732 = !DILocation(line: 461, column: 6, scope: !2676)
!2733 = !DILocation(line: 461, column: 26, scope: !2730)
!2734 = !DILocation(line: 462, column: 6, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 462, column: 6)
!2736 = !DILocation(line: 462, column: 11, scope: !2735)
!2737 = !DILocation(line: 462, column: 6, scope: !2676)
!2738 = !DILocation(line: 462, column: 26, scope: !2735)
!2739 = !DILocation(line: 463, column: 6, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 463, column: 6)
!2741 = !DILocation(line: 463, column: 11, scope: !2740)
!2742 = !DILocation(line: 463, column: 6, scope: !2676)
!2743 = !DILocation(line: 463, column: 26, scope: !2740)
!2744 = !DILocation(line: 464, column: 6, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 464, column: 6)
!2746 = !DILocation(line: 464, column: 11, scope: !2745)
!2747 = !DILocation(line: 464, column: 6, scope: !2676)
!2748 = !DILocation(line: 464, column: 26, scope: !2745)
!2749 = !DILocation(line: 465, column: 6, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 465, column: 6)
!2751 = !DILocation(line: 465, column: 11, scope: !2750)
!2752 = !DILocation(line: 465, column: 6, scope: !2676)
!2753 = !DILocation(line: 465, column: 26, scope: !2750)
!2754 = !DILocation(line: 466, column: 6, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 466, column: 6)
!2756 = !DILocation(line: 466, column: 11, scope: !2755)
!2757 = !DILocation(line: 466, column: 6, scope: !2676)
!2758 = !DILocation(line: 466, column: 26, scope: !2755)
!2759 = !DILocation(line: 467, column: 6, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 467, column: 6)
!2761 = !DILocation(line: 467, column: 11, scope: !2760)
!2762 = !DILocation(line: 467, column: 6, scope: !2676)
!2763 = !DILocation(line: 467, column: 26, scope: !2760)
!2764 = !DILocation(line: 468, column: 6, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 468, column: 6)
!2766 = !DILocation(line: 468, column: 11, scope: !2765)
!2767 = !DILocation(line: 468, column: 6, scope: !2676)
!2768 = !DILocation(line: 468, column: 26, scope: !2765)
!2769 = !DILocation(line: 469, column: 6, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 469, column: 6)
!2771 = !DILocation(line: 469, column: 11, scope: !2770)
!2772 = !DILocation(line: 469, column: 6, scope: !2676)
!2773 = !DILocation(line: 469, column: 26, scope: !2770)
!2774 = !DILocation(line: 470, column: 6, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 470, column: 6)
!2776 = !DILocation(line: 470, column: 11, scope: !2775)
!2777 = !DILocation(line: 470, column: 6, scope: !2676)
!2778 = !DILocation(line: 470, column: 26, scope: !2775)
!2779 = !DILocation(line: 471, column: 6, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 471, column: 6)
!2781 = !DILocation(line: 471, column: 11, scope: !2780)
!2782 = !DILocation(line: 471, column: 6, scope: !2676)
!2783 = !DILocation(line: 471, column: 26, scope: !2780)
!2784 = !DILocation(line: 472, column: 6, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 472, column: 6)
!2786 = !DILocation(line: 472, column: 11, scope: !2785)
!2787 = !DILocation(line: 472, column: 6, scope: !2676)
!2788 = !DILocation(line: 472, column: 26, scope: !2785)
!2789 = !DILocation(line: 473, column: 6, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 473, column: 6)
!2791 = !DILocation(line: 473, column: 11, scope: !2790)
!2792 = !DILocation(line: 473, column: 6, scope: !2676)
!2793 = !DILocation(line: 473, column: 26, scope: !2790)
!2794 = !DILocation(line: 474, column: 6, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 474, column: 6)
!2796 = !DILocation(line: 474, column: 11, scope: !2795)
!2797 = !DILocation(line: 474, column: 6, scope: !2676)
!2798 = !DILocation(line: 474, column: 27, scope: !2795)
!2799 = !DILocation(line: 475, column: 6, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 475, column: 6)
!2801 = !DILocation(line: 475, column: 11, scope: !2800)
!2802 = !DILocation(line: 475, column: 6, scope: !2676)
!2803 = !DILocation(line: 475, column: 32, scope: !2800)
!2804 = !DILocation(line: 477, column: 50, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 477, column: 6)
!2806 = !DILocation(line: 477, column: 6, scope: !2676)
!2807 = !DILocation(line: 478, column: 3, scope: !2805)
!2808 = !DILocation(line: 478, column: 3, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !30, line: 478, column: 3)
!2810 = distinct !DILexicalBlock(scope: !2805, file: !30, line: 478, column: 3)
!2811 = !{i32 -2142278168}
!2812 = !DILocation(line: 478, column: 3, scope: !2810)
!2813 = !DILocation(line: 480, column: 3, scope: !2805)
!2814 = !DILocation(line: 480, column: 3, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2805, file: !30, line: 480, column: 3)
!2816 = !DILocation(line: 480, column: 3, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2815, file: !30, line: 480, column: 3)
!2818 = !DILocation(line: 480, column: 3, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2815, file: !30, line: 480, column: 3)
!2820 = !{i64 2152689331, i64 2152689360, i64 2152689406, i64 2152689464, i64 2152689518, i64 2152689572, i64 2152689627, i64 2152689658}
!2821 = !DILocation(line: 483, column: 2, scope: !2676)
!2822 = !DILocation(line: 484, column: 1, scope: !2676)
!2823 = !DISubprogram(name: "kmalloc_node_trace", scope: !30, file: !30, line: 528, type: !2824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!73, !2826, !1578, !84, !892}
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2828, line: 11, flags: DIFlagFwdDecl)
!2828 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2829 = distinct !DISubprogram(name: "kmalloc_type", scope: !30, file: !30, line: 401, type: !2830, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!29, !1578, !63}
!2832 = !{!2833, !2834}
!2833 = !DILocalVariable(name: "flags", arg: 1, scope: !2829, file: !30, line: 401, type: !1578)
!2834 = !DILocalVariable(name: "caller", arg: 2, scope: !2829, file: !30, line: 401, type: !63)
!2835 = !DILocation(line: 401, column: 67, scope: !2829)
!2836 = !DILocation(line: 401, column: 88, scope: !2829)
!2837 = !DILocation(line: 407, column: 6, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2829, file: !30, line: 407, column: 6)
!2839 = !DILocation(line: 407, column: 6, scope: !2829)
!2840 = !DILocation(line: 413, column: 3, scope: !2838)
!2841 = !DILocation(line: 423, column: 38, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2829, file: !30, line: 423, column: 6)
!2843 = !DILocation(line: 423, column: 44, scope: !2842)
!2844 = !DILocation(line: 423, column: 6, scope: !2829)
!2845 = !DILocation(line: 424, column: 3, scope: !2842)
!2846 = !DILocation(line: 426, column: 3, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2829, file: !30, line: 425, column: 6)
!2848 = !DILocation(line: 429, column: 1, scope: !2829)
!2849 = !DISubprogram(name: "__kmalloc_node", scope: !30, file: !30, line: 520, type: !2314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2850 = !DISubprogram(name: "__compiletime_assert_204", scope: !30, file: !30, line: 478, type: !1714, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2851 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2852, file: !2852, line: 94, type: !2853, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2858)
!2852 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2853 = !DISubroutineType(types: !2854)
!2854 = !{null, !2855, !892}
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2857)
!2857 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2858 = !{!2859, !2860}
!2859 = !DILocalVariable(name: "v", arg: 1, scope: !2851, file: !2852, line: 94, type: !2855)
!2860 = !DILocalVariable(name: "size", arg: 2, scope: !2851, file: !2852, line: 94, type: !892)
!2861 = !DILocation(line: 94, column: 79, scope: !2851)
!2862 = !DILocation(line: 94, column: 89, scope: !2851)
!2863 = !DILocation(line: 96, column: 20, scope: !2851)
!2864 = !DILocation(line: 96, column: 23, scope: !2851)
!2865 = !DILocation(line: 96, column: 2, scope: !2851)
!2866 = !DILocation(line: 97, column: 2, scope: !2851)
!2867 = !DILocation(line: 98, column: 1, scope: !2851)
!2868 = distinct !DISubprogram(name: "__preempt_count_add", scope: !2869, file: !2869, line: 78, type: !2870, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2872)
!2869 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!2870 = !DISubroutineType(types: !2871)
!2871 = !{null, !84}
!2872 = !{!2873, !2874, !2877}
!2873 = !DILocalVariable(name: "val", arg: 1, scope: !2868, file: !2869, line: 78, type: !84)
!2874 = !DILocalVariable(name: "pao_ID__", scope: !2875, file: !2869, line: 80, type: !2876)
!2875 = distinct !DILexicalBlock(scope: !2868, file: !2869, line: 80, column: 2)
!2876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!2877 = !DILocalVariable(name: "pto_val__", scope: !2878, file: !2869, line: 80, type: !66)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !2869, line: 80, column: 2)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !2869, line: 80, column: 2)
!2880 = distinct !DILexicalBlock(scope: !2875, file: !2869, line: 80, column: 2)
!2881 = !DILocation(line: 78, column: 53, scope: !2868)
!2882 = !DILocation(line: 80, column: 2, scope: !2868)
!2883 = !DILocation(line: 80, column: 2, scope: !2875)
!2884 = !DILocation(line: 80, column: 2, scope: !2880)
!2885 = !DILocation(line: 80, column: 2, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2880, file: !2869, line: 80, column: 2)
!2887 = !{i64 2149659200}
!2888 = !DILocation(line: 80, column: 2, scope: !2879)
!2889 = !DILocation(line: 80, column: 2, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2879, file: !2869, line: 80, column: 2)
!2891 = !{i64 2149659495}
!2892 = !DILocation(line: 80, column: 2, scope: !2878)
!2893 = !{i64 2149660200}
!2894 = !DILocation(line: 81, column: 1, scope: !2868)
!2895 = !DISubprogram(name: "kthread_should_stop", scope: !2347, file: !2347, line: 90, type: !2896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!926}
!2898 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !2869, file: !2869, line: 93, type: !2896, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2899)
!2899 = !{!2900}
!2900 = !DILocalVariable(name: "c", scope: !2901, file: !2869, line: 95, type: !926)
!2901 = distinct !DILexicalBlock(scope: !2898, file: !2869, line: 95, column: 9)
!2902 = !DILocation(line: 95, column: 9, scope: !2901)
!2903 = !{i64 2149663556, i64 2149663649}
!2904 = !DILocation(line: 95, column: 9, scope: !2898)
!2905 = !DILocation(line: 95, column: 2, scope: !2898)
!2906 = distinct !DISubprogram(name: "cpu_online", scope: !363, file: !363, line: 1080, type: !2907, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2909)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!926, !7}
!2909 = !{!2910}
!2910 = !DILocalVariable(name: "cpu", arg: 1, scope: !2906, file: !363, line: 1080, type: !7)
!2911 = !DILocation(line: 1080, column: 44, scope: !2906)
!2912 = !DILocation(line: 1082, column: 26, scope: !2906)
!2913 = !DILocation(line: 1082, column: 9, scope: !2906)
!2914 = !DILocation(line: 1082, column: 2, scope: !2906)
!2915 = !DISubprogram(name: "kthread_should_park", scope: !2347, file: !2347, line: 91, type: !2896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2916 = !DISubprogram(name: "kthread_parkme", scope: !2347, file: !2347, line: 99, type: !1714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2917 = distinct !DISubprogram(name: "__preempt_count_sub", scope: !2869, file: !2869, line: 83, type: !2870, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2918)
!2918 = !{!2919, !2920, !2922}
!2919 = !DILocalVariable(name: "val", arg: 1, scope: !2917, file: !2869, line: 83, type: !84)
!2920 = !DILocalVariable(name: "pao_ID__", scope: !2921, file: !2869, line: 85, type: !2876)
!2921 = distinct !DILexicalBlock(scope: !2917, file: !2869, line: 85, column: 2)
!2922 = !DILocalVariable(name: "pto_val__", scope: !2923, file: !2869, line: 85, type: !66)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !2869, line: 85, column: 2)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !2869, line: 85, column: 2)
!2925 = distinct !DILexicalBlock(scope: !2921, file: !2869, line: 85, column: 2)
!2926 = !DILocation(line: 83, column: 53, scope: !2917)
!2927 = !DILocation(line: 85, column: 2, scope: !2917)
!2928 = !DILocation(line: 85, column: 2, scope: !2921)
!2929 = !DILocation(line: 85, column: 2, scope: !2925)
!2930 = !DILocation(line: 85, column: 2, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2925, file: !2869, line: 85, column: 2)
!2932 = !{i64 2149661429}
!2933 = !DILocation(line: 85, column: 2, scope: !2924)
!2934 = !DILocation(line: 85, column: 2, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2924, file: !2869, line: 85, column: 2)
!2936 = !{i64 2149661724}
!2937 = !DILocation(line: 85, column: 2, scope: !2923)
!2938 = !{i64 2149662432}
!2939 = !DILocation(line: 86, column: 1, scope: !2917)
!2940 = !DISubprogram(name: "schedule", scope: !56, file: !56, line: 303, type: !1714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2941 = distinct !DISubprogram(name: "kasan_check_write", scope: !2942, file: !2942, line: 44, type: !2943, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2945)
!2942 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!926, !2855, !7}
!2945 = !{!2946, !2947}
!2946 = !DILocalVariable(name: "p", arg: 1, scope: !2941, file: !2942, line: 44, type: !2855)
!2947 = !DILocalVariable(name: "size", arg: 2, scope: !2941, file: !2942, line: 44, type: !7)
!2948 = !DILocation(line: 44, column: 59, scope: !2941)
!2949 = !DILocation(line: 44, column: 75, scope: !2941)
!2950 = !DILocation(line: 46, column: 2, scope: !2941)
!2951 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2952, file: !2952, line: 229, type: !2953, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2955)
!2952 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2855, !892, !84}
!2955 = !{!2956, !2957, !2958}
!2956 = !DILocalVariable(name: "ptr", arg: 1, scope: !2951, file: !2952, line: 229, type: !2855)
!2957 = !DILocalVariable(name: "size", arg: 2, scope: !2951, file: !2952, line: 229, type: !892)
!2958 = !DILocalVariable(name: "type", arg: 3, scope: !2951, file: !2952, line: 230, type: !84)
!2959 = !DILocation(line: 229, column: 60, scope: !2951)
!2960 = !DILocation(line: 229, column: 72, scope: !2951)
!2961 = !DILocation(line: 230, column: 15, scope: !2951)
!2962 = !DILocation(line: 230, column: 23, scope: !2951)
!2963 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !363, file: !363, line: 502, type: !2964, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!926, !84, !1550}
!2966 = !{!2967, !2968}
!2967 = !DILocalVariable(name: "cpu", arg: 1, scope: !2963, file: !363, line: 502, type: !84)
!2968 = !DILocalVariable(name: "cpumask", arg: 2, scope: !2963, file: !363, line: 502, type: !1550)
!2969 = !DILocation(line: 502, column: 50, scope: !2963)
!2970 = !DILocation(line: 502, column: 77, scope: !2963)
!2971 = !DILocation(line: 504, column: 9, scope: !2963)
!2972 = !DILocation(line: 504, column: 2, scope: !2963)
!2973 = distinct !DISubprogram(name: "_test_bit", scope: !2974, file: !2974, line: 139, type: !2975, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2980)
!2974 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!926, !63, !2977}
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2979)
!2979 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!2980 = !{!2981, !2982}
!2981 = !DILocalVariable(name: "nr", arg: 1, scope: !2973, file: !2974, line: 139, type: !63)
!2982 = !DILocalVariable(name: "addr", arg: 2, scope: !2973, file: !2974, line: 139, type: !2977)
!2983 = !DILocation(line: 139, column: 25, scope: !2973)
!2984 = !DILocation(line: 139, column: 59, scope: !2973)
!2985 = !DILocation(line: 141, column: 25, scope: !2973)
!2986 = !DILocation(line: 141, column: 32, scope: !2973)
!2987 = !DILocation(line: 141, column: 30, scope: !2973)
!2988 = !DILocation(line: 141, column: 2, scope: !2973)
!2989 = !DILocation(line: 142, column: 23, scope: !2973)
!2990 = !DILocation(line: 142, column: 27, scope: !2973)
!2991 = !DILocation(line: 142, column: 9, scope: !2973)
!2992 = !DILocation(line: 142, column: 2, scope: !2973)
!2993 = distinct !DISubprogram(name: "cpumask_check", scope: !363, file: !363, line: 148, type: !2994, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!7, !7}
!2996 = !{!2997}
!2997 = !DILocalVariable(name: "cpu", arg: 1, scope: !2993, file: !363, line: 148, type: !7)
!2998 = !DILocation(line: 148, column: 64, scope: !2993)
!2999 = !DILocation(line: 150, column: 20, scope: !2993)
!3000 = !DILocation(line: 150, column: 2, scope: !2993)
!3001 = !DILocation(line: 151, column: 9, scope: !2993)
!3002 = !DILocation(line: 151, column: 2, scope: !2993)
!3003 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2852, file: !2852, line: 66, type: !2853, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3004)
!3004 = !{!3005, !3006}
!3005 = !DILocalVariable(name: "v", arg: 1, scope: !3003, file: !2852, line: 66, type: !2855)
!3006 = !DILocalVariable(name: "size", arg: 2, scope: !3003, file: !2852, line: 66, type: !892)
!3007 = !DILocation(line: 66, column: 73, scope: !3003)
!3008 = !DILocation(line: 66, column: 83, scope: !3003)
!3009 = !DILocation(line: 68, column: 19, scope: !3003)
!3010 = !DILocation(line: 68, column: 22, scope: !3003)
!3011 = !DILocation(line: 68, column: 2, scope: !3003)
!3012 = !DILocation(line: 69, column: 2, scope: !3003)
!3013 = !DILocation(line: 70, column: 1, scope: !3003)
!3014 = distinct !DISubprogram(name: "arch_test_bit", scope: !2285, file: !2285, line: 237, type: !2975, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3015)
!3015 = !{!3016, !3017}
!3016 = !DILocalVariable(name: "nr", arg: 1, scope: !3014, file: !2285, line: 237, type: !63)
!3017 = !DILocalVariable(name: "addr", arg: 2, scope: !3014, file: !2285, line: 237, type: !2977)
!3018 = !DILocation(line: 237, column: 29, scope: !3014)
!3019 = !DILocation(line: 237, column: 63, scope: !3014)
!3020 = !DILocation(line: 239, column: 30, scope: !3014)
!3021 = !DILocation(line: 239, column: 9, scope: !3014)
!3022 = !DILocation(line: 239, column: 54, scope: !3014)
!3023 = !DILocation(line: 239, column: 58, scope: !3014)
!3024 = !DILocation(line: 239, column: 36, scope: !3014)
!3025 = !DILocation(line: 240, column: 26, scope: !3014)
!3026 = !DILocation(line: 240, column: 30, scope: !3014)
!3027 = !DILocation(line: 240, column: 8, scope: !3014)
!3028 = !DILocation(line: 239, column: 2, scope: !3014)
!3029 = distinct !DISubprogram(name: "kasan_check_read", scope: !2942, file: !2942, line: 40, type: !2943, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3030)
!3030 = !{!3031, !3032}
!3031 = !DILocalVariable(name: "p", arg: 1, scope: !3029, file: !2942, line: 40, type: !2855)
!3032 = !DILocalVariable(name: "size", arg: 2, scope: !3029, file: !2942, line: 40, type: !7)
!3033 = !DILocation(line: 40, column: 58, scope: !3029)
!3034 = !DILocation(line: 40, column: 74, scope: !3029)
!3035 = !DILocation(line: 42, column: 2, scope: !3029)
!3036 = distinct !DISubprogram(name: "constant_test_bit", scope: !2285, file: !2285, line: 204, type: !3037, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!926, !583, !2977}
!3039 = !{!3040, !3041}
!3040 = !DILocalVariable(name: "nr", arg: 1, scope: !3036, file: !2285, line: 204, type: !583)
!3041 = !DILocalVariable(name: "addr", arg: 2, scope: !3036, file: !2285, line: 204, type: !2977)
!3042 = !DILocation(line: 204, column: 52, scope: !3036)
!3043 = !DILocation(line: 204, column: 86, scope: !3036)
!3044 = !DILocation(line: 206, column: 19, scope: !3036)
!3045 = !DILocation(line: 206, column: 22, scope: !3036)
!3046 = !DILocation(line: 206, column: 15, scope: !3036)
!3047 = !DILocation(line: 207, column: 4, scope: !3036)
!3048 = !DILocation(line: 207, column: 9, scope: !3036)
!3049 = !DILocation(line: 207, column: 12, scope: !3036)
!3050 = !DILocation(line: 206, column: 44, scope: !3036)
!3051 = !DILocation(line: 207, column: 37, scope: !3036)
!3052 = !DILocation(line: 206, column: 2, scope: !3036)
!3053 = distinct !DISubprogram(name: "variable_test_bit", scope: !2285, file: !2285, line: 224, type: !3037, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3054)
!3054 = !{!3055, !3056, !3057}
!3055 = !DILocalVariable(name: "nr", arg: 1, scope: !3053, file: !2285, line: 224, type: !583)
!3056 = !DILocalVariable(name: "addr", arg: 2, scope: !3053, file: !2285, line: 224, type: !2977)
!3057 = !DILocalVariable(name: "oldbit", scope: !3053, file: !2285, line: 226, type: !926)
!3058 = !DILocation(line: 224, column: 52, scope: !3053)
!3059 = !DILocation(line: 224, column: 86, scope: !3053)
!3060 = !DILocation(line: 226, column: 2, scope: !3053)
!3061 = !DILocation(line: 226, column: 7, scope: !3053)
!3062 = !DILocation(line: 231, column: 33, scope: !3053)
!3063 = !DILocation(line: 231, column: 46, scope: !3053)
!3064 = !DILocation(line: 228, column: 2, scope: !3053)
!3065 = !{i64 2148013268, i64 2148013342}
!3066 = !DILocation(line: 233, column: 9, scope: !3053)
!3067 = !DILocation(line: 234, column: 1, scope: !3053)
!3068 = !DILocation(line: 233, column: 2, scope: !3053)
!3069 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !363, file: !363, line: 140, type: !3070, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3072)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{null, !7, !7}
!3072 = !{!3073, !3074}
!3073 = !DILocalVariable(name: "cpu", arg: 1, scope: !3069, file: !363, line: 140, type: !7)
!3074 = !DILocalVariable(name: "bits", arg: 2, scope: !3069, file: !363, line: 140, type: !7)
!3075 = !DILocation(line: 140, column: 60, scope: !3069)
!3076 = !DILocation(line: 140, column: 78, scope: !3069)
!3077 = !DILocation(line: 145, column: 1, scope: !3069)
!3078 = distinct !DISubprogram(name: "refcount_inc", scope: !45, file: !45, line: 265, type: !3079, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3082)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{null, !3081}
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!3082 = !{!3083}
!3083 = !DILocalVariable(name: "r", arg: 1, scope: !3078, file: !45, line: 265, type: !3081)
!3084 = !DILocation(line: 265, column: 45, scope: !3078)
!3085 = !DILocation(line: 267, column: 17, scope: !3078)
!3086 = !DILocation(line: 267, column: 2, scope: !3078)
!3087 = !DILocation(line: 268, column: 1, scope: !3078)
!3088 = distinct !DISubprogram(name: "__refcount_inc", scope: !45, file: !45, line: 248, type: !3089, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{null, !3081, !791}
!3091 = !{!3092, !3093}
!3092 = !DILocalVariable(name: "r", arg: 1, scope: !3088, file: !45, line: 248, type: !3081)
!3093 = !DILocalVariable(name: "oldp", arg: 2, scope: !3088, file: !45, line: 248, type: !791)
!3094 = !DILocation(line: 248, column: 47, scope: !3088)
!3095 = !DILocation(line: 248, column: 55, scope: !3088)
!3096 = !DILocation(line: 250, column: 20, scope: !3088)
!3097 = !DILocation(line: 250, column: 23, scope: !3088)
!3098 = !DILocation(line: 250, column: 2, scope: !3088)
!3099 = !DILocation(line: 251, column: 1, scope: !3088)
!3100 = distinct !DISubprogram(name: "__refcount_add", scope: !45, file: !45, line: 191, type: !3101, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{null, !84, !3081, !791}
!3103 = !{!3104, !3105, !3106, !3107}
!3104 = !DILocalVariable(name: "i", arg: 1, scope: !3100, file: !45, line: 191, type: !84)
!3105 = !DILocalVariable(name: "r", arg: 2, scope: !3100, file: !45, line: 191, type: !3081)
!3106 = !DILocalVariable(name: "oldp", arg: 3, scope: !3100, file: !45, line: 191, type: !791)
!3107 = !DILocalVariable(name: "old", scope: !3100, file: !45, line: 193, type: !84)
!3108 = !DILocation(line: 191, column: 39, scope: !3100)
!3109 = !DILocation(line: 191, column: 54, scope: !3100)
!3110 = !DILocation(line: 191, column: 62, scope: !3100)
!3111 = !DILocation(line: 193, column: 2, scope: !3100)
!3112 = !DILocation(line: 193, column: 6, scope: !3100)
!3113 = !DILocation(line: 193, column: 37, scope: !3100)
!3114 = !DILocation(line: 193, column: 41, scope: !3100)
!3115 = !DILocation(line: 193, column: 44, scope: !3100)
!3116 = !DILocation(line: 193, column: 12, scope: !3100)
!3117 = !DILocation(line: 195, column: 6, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3100, file: !45, line: 195, column: 6)
!3119 = !DILocation(line: 195, column: 6, scope: !3100)
!3120 = !DILocation(line: 196, column: 11, scope: !3118)
!3121 = !DILocation(line: 196, column: 4, scope: !3118)
!3122 = !DILocation(line: 196, column: 9, scope: !3118)
!3123 = !DILocation(line: 196, column: 3, scope: !3118)
!3124 = !DILocation(line: 198, column: 6, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3100, file: !45, line: 198, column: 6)
!3126 = !DILocation(line: 198, column: 6, scope: !3100)
!3127 = !DILocation(line: 199, column: 26, scope: !3125)
!3128 = !DILocation(line: 199, column: 3, scope: !3125)
!3129 = !DILocation(line: 200, column: 11, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3125, file: !45, line: 200, column: 11)
!3131 = !DILocation(line: 200, column: 11, scope: !3125)
!3132 = !DILocation(line: 201, column: 26, scope: !3130)
!3133 = !DILocation(line: 201, column: 3, scope: !3130)
!3134 = !DILocation(line: 202, column: 1, scope: !3100)
!3135 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !3136, file: !3136, line: 250, type: !3137, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3140)
!3136 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!84, !84, !3139}
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!3140 = !{!3141, !3142}
!3141 = !DILocalVariable(name: "i", arg: 1, scope: !3135, file: !3136, line: 250, type: !84)
!3142 = !DILocalVariable(name: "v", arg: 2, scope: !3135, file: !3136, line: 250, type: !3139)
!3143 = !DILocation(line: 250, column: 30, scope: !3135)
!3144 = !DILocation(line: 250, column: 43, scope: !3135)
!3145 = !DILocation(line: 252, column: 31, scope: !3135)
!3146 = !DILocation(line: 252, column: 2, scope: !3135)
!3147 = !DILocation(line: 253, column: 38, scope: !3135)
!3148 = !DILocation(line: 253, column: 41, scope: !3135)
!3149 = !DILocation(line: 253, column: 9, scope: !3135)
!3150 = !DILocation(line: 253, column: 2, scope: !3135)
!3151 = !DISubprogram(name: "refcount_warn_saturate", scope: !45, file: !45, line: 127, type: !3152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{null, !3081, !44}
!3154 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !3155, file: !3155, line: 731, type: !3137, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3156)
!3155 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!3156 = !{!3157, !3158}
!3157 = !DILocalVariable(name: "i", arg: 1, scope: !3154, file: !3155, line: 731, type: !84)
!3158 = !DILocalVariable(name: "v", arg: 2, scope: !3154, file: !3155, line: 731, type: !3139)
!3159 = !DILocation(line: 731, column: 34, scope: !3154)
!3160 = !DILocation(line: 731, column: 47, scope: !3154)
!3161 = !DILocation(line: 736, column: 31, scope: !3154)
!3162 = !DILocation(line: 736, column: 34, scope: !3154)
!3163 = !DILocation(line: 736, column: 9, scope: !3154)
!3164 = !DILocation(line: 736, column: 2, scope: !3154)
!3165 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !3166, file: !3166, line: 95, type: !3137, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3167)
!3166 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!3167 = !{!3168, !3169, !3170}
!3168 = !DILocalVariable(name: "i", arg: 1, scope: !3165, file: !3166, line: 95, type: !84)
!3169 = !DILocalVariable(name: "v", arg: 2, scope: !3165, file: !3166, line: 95, type: !3139)
!3170 = !DILocalVariable(name: "__ret", scope: !3171, file: !3166, line: 97, type: !84)
!3171 = distinct !DILexicalBlock(scope: !3165, file: !3166, line: 97, column: 9)
!3172 = !DILocation(line: 95, column: 54, scope: !3165)
!3173 = !DILocation(line: 95, column: 67, scope: !3165)
!3174 = !DILocation(line: 97, column: 9, scope: !3171)
!3175 = !{i64 2148479799, i64 2148479838, i64 2148479859, i64 2148479896, i64 2148479919, i64 2148479928}
!3176 = !DILocation(line: 97, column: 9, scope: !3165)
!3177 = !DILocation(line: 97, column: 2, scope: !3165)
!3178 = !DISubprogram(name: "kthread_unpark", scope: !2347, file: !2347, line: 98, type: !3179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{null, !54}
!3181 = !DISubprogram(name: "kthread_stop_put", scope: !2347, file: !2347, line: 89, type: !2613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3182 = distinct !DISubprogram(name: "__list_add", scope: !2240, file: !2240, line: 146, type: !3183, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3185)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{null, !143, !143, !143}
!3185 = !{!3186, !3187, !3188}
!3186 = !DILocalVariable(name: "new", arg: 1, scope: !3182, file: !2240, line: 146, type: !143)
!3187 = !DILocalVariable(name: "prev", arg: 2, scope: !3182, file: !2240, line: 147, type: !143)
!3188 = !DILocalVariable(name: "next", arg: 3, scope: !3182, file: !2240, line: 148, type: !143)
!3189 = !DILocation(line: 146, column: 49, scope: !3182)
!3190 = !DILocation(line: 147, column: 28, scope: !3182)
!3191 = !DILocation(line: 148, column: 28, scope: !3182)
!3192 = !DILocation(line: 150, column: 24, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3182, file: !2240, line: 150, column: 6)
!3194 = !DILocation(line: 150, column: 29, scope: !3193)
!3195 = !DILocation(line: 150, column: 35, scope: !3193)
!3196 = !DILocation(line: 150, column: 7, scope: !3193)
!3197 = !DILocation(line: 150, column: 6, scope: !3182)
!3198 = !DILocation(line: 151, column: 3, scope: !3193)
!3199 = !DILocation(line: 153, column: 15, scope: !3182)
!3200 = !DILocation(line: 153, column: 2, scope: !3182)
!3201 = !DILocation(line: 153, column: 8, scope: !3182)
!3202 = !DILocation(line: 153, column: 13, scope: !3182)
!3203 = !DILocation(line: 154, column: 14, scope: !3182)
!3204 = !DILocation(line: 154, column: 2, scope: !3182)
!3205 = !DILocation(line: 154, column: 7, scope: !3182)
!3206 = !DILocation(line: 154, column: 12, scope: !3182)
!3207 = !DILocation(line: 155, column: 14, scope: !3182)
!3208 = !DILocation(line: 155, column: 2, scope: !3182)
!3209 = !DILocation(line: 155, column: 7, scope: !3182)
!3210 = !DILocation(line: 155, column: 12, scope: !3182)
!3211 = !DILocation(line: 156, column: 2, scope: !3182)
!3212 = !DILocation(line: 156, column: 2, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3182, file: !2240, line: 156, column: 2)
!3214 = !DILocation(line: 156, column: 2, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3213, file: !2240, line: 156, column: 2)
!3216 = !DILocation(line: 156, column: 2, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3213, file: !2240, line: 156, column: 2)
!3218 = !DILocation(line: 157, column: 1, scope: !3182)
!3219 = distinct !DISubprogram(name: "__list_add_valid", scope: !2240, file: !2240, line: 128, type: !3220, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3222)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!926, !143, !143, !143}
!3222 = !{!3223, !3224, !3225}
!3223 = !DILocalVariable(name: "new", arg: 1, scope: !3219, file: !2240, line: 128, type: !143)
!3224 = !DILocalVariable(name: "prev", arg: 2, scope: !3219, file: !2240, line: 129, type: !143)
!3225 = !DILocalVariable(name: "next", arg: 3, scope: !3219, file: !2240, line: 130, type: !143)
!3226 = !DILocation(line: 128, column: 55, scope: !3219)
!3227 = !DILocation(line: 129, column: 23, scope: !3219)
!3228 = !DILocation(line: 130, column: 23, scope: !3219)
!3229 = !DILocation(line: 132, column: 2, scope: !3219)
!3230 = distinct !DISubprogram(name: "__list_del_entry", scope: !2240, file: !2240, line: 213, type: !2270, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3231)
!3231 = !{!3232}
!3232 = !DILocalVariable(name: "entry", arg: 1, scope: !3230, file: !2240, line: 213, type: !143)
!3233 = !DILocation(line: 213, column: 55, scope: !3230)
!3234 = !DILocation(line: 215, column: 30, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3230, file: !2240, line: 215, column: 6)
!3236 = !DILocation(line: 215, column: 7, scope: !3235)
!3237 = !DILocation(line: 215, column: 6, scope: !3230)
!3238 = !DILocation(line: 216, column: 3, scope: !3235)
!3239 = !DILocation(line: 218, column: 13, scope: !3230)
!3240 = !DILocation(line: 218, column: 20, scope: !3230)
!3241 = !DILocation(line: 218, column: 26, scope: !3230)
!3242 = !DILocation(line: 218, column: 33, scope: !3230)
!3243 = !DILocation(line: 218, column: 2, scope: !3230)
!3244 = !DILocation(line: 219, column: 1, scope: !3230)
!3245 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2240, file: !2240, line: 134, type: !3246, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!926, !143}
!3248 = !{!3249}
!3249 = !DILocalVariable(name: "entry", arg: 1, scope: !3245, file: !2240, line: 134, type: !143)
!3250 = !DILocation(line: 134, column: 61, scope: !3245)
!3251 = !DILocation(line: 136, column: 2, scope: !3245)
!3252 = distinct !DISubprogram(name: "__list_del", scope: !2240, file: !2240, line: 193, type: !2241, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3253)
!3253 = !{!3254, !3255}
!3254 = !DILocalVariable(name: "prev", arg: 1, scope: !3252, file: !2240, line: 193, type: !143)
!3255 = !DILocalVariable(name: "next", arg: 2, scope: !3252, file: !2240, line: 193, type: !143)
!3256 = !DILocation(line: 193, column: 50, scope: !3252)
!3257 = !DILocation(line: 193, column: 75, scope: !3252)
!3258 = !DILocation(line: 195, column: 15, scope: !3252)
!3259 = !DILocation(line: 195, column: 2, scope: !3252)
!3260 = !DILocation(line: 195, column: 8, scope: !3252)
!3261 = !DILocation(line: 195, column: 13, scope: !3252)
!3262 = !DILocation(line: 196, column: 2, scope: !3252)
!3263 = !DILocation(line: 196, column: 2, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3252, file: !2240, line: 196, column: 2)
!3265 = !DILocation(line: 196, column: 2, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3264, file: !2240, line: 196, column: 2)
!3267 = !DILocation(line: 196, column: 2, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3264, file: !2240, line: 196, column: 2)
!3269 = !DILocation(line: 197, column: 1, scope: !3252)
