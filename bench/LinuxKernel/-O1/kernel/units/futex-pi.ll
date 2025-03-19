; ModuleID = 'kernel/futex/pi.c'
source_filename = "kernel/futex/pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_q = type { %struct.plist_node, ptr, ptr, %union.futex_key, ptr, ptr, ptr, i32, %struct.atomic_t }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.futex_key = type { %struct.anon.13 }
%struct.anon.13 = type { i64, i64, i32 }
%struct.atomic_t = type { i32 }
%struct.pcpu_hot = type { %union.anon.17 }
%union.anon.17 = type { %struct.anon.18, [16 x i8] }
%struct.anon.18 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.lockdep_map = type {}
%struct.static_call_key = type { ptr, %union.anon.19 }
%union.anon.19 = type { i64 }
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
%struct.cpumask = type { [1 x i64] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
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
%struct.futex_pi_state = type { %struct.list_head, %struct.rt_mutex_base, ptr, %struct.refcount_struct, %union.futex_key }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.rt_mutex_waiter = type { %struct.rt_waiter_node, %struct.rt_waiter_node, ptr, ptr, i32, ptr }
%struct.rt_waiter_node = type { %struct.rb_node, i32, i64 }
%struct.futex_hash_bucket = type { %struct.atomic_t, %struct.spinlock, %struct.plist_head, [40 x i8] }
%struct.plist_head = type { %struct.list_head }
%struct.rt_wake_q_head = type { %struct.wake_q_head, ptr }
%struct.wake_q_head = type { ptr, ptr }

@.str = private unnamed_addr constant [18 x i8] c"kernel/futex/pi.c\00", align 1, !dbg !0
@futex_q_init = external dso_local constant %struct.futex_q, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !7
@put_task_struct.put_task_map = internal global %struct.lockdep_map undef, align 1, !dbg !13
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched170 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !1648
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"kernel/futex/../locking/rtmutex_common.h\00", align 1, !dbg !1653
@llvm.compiler.used = appending global [1 x ptr] [ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched170], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @refill_pi_state_cache() #0 align 16 !dbg !1672 {
entry:
  %retval = alloca i32, align 4
  %pi_state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %union.futex_key, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi_state) #18, !dbg !1675
  call void @llvm.dbg.declare(metadata ptr %pi_state, metadata !1674, metadata !DIExpression()), !dbg !1676
  %call = call ptr @get_current() #19, !dbg !1677
  %pi_state_cache = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 148, !dbg !1677
  %0 = load ptr, ptr %pi_state_cache, align 64, !dbg !1677
  %tobool = icmp ne ptr %0, null, !dbg !1677
  %lnot = xor i1 %tobool, true, !dbg !1677
  %lnot1 = xor i1 %lnot, true, !dbg !1677
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1677
  %conv = sext i32 %lnot.ext to i64, !dbg !1677
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1677
  %tobool2 = icmp ne i64 %expval, 0, !dbg !1677
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1679

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1680
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1680

if.end:                                           ; preds = %entry
  %call3 = call noalias ptr @kzalloc(i64 noundef 88, i32 noundef 3264) #20, !dbg !1681
  store ptr %call3, ptr %pi_state, align 8, !dbg !1682
  %1 = load ptr, ptr %pi_state, align 8, !dbg !1683
  %tobool4 = icmp ne ptr %1, null, !dbg !1683
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1685

if.then5:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !1686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1686

if.end6:                                          ; preds = %if.end
  %2 = load ptr, ptr %pi_state, align 8, !dbg !1687
  %list = getelementptr inbounds %struct.futex_pi_state, ptr %2, i32 0, i32 0, !dbg !1688
  call void @INIT_LIST_HEAD(ptr noundef %list) #19, !dbg !1689
  %3 = load ptr, ptr %pi_state, align 8, !dbg !1690
  %owner = getelementptr inbounds %struct.futex_pi_state, ptr %3, i32 0, i32 2, !dbg !1691
  store ptr null, ptr %owner, align 8, !dbg !1692
  %4 = load ptr, ptr %pi_state, align 8, !dbg !1693
  %refcount = getelementptr inbounds %struct.futex_pi_state, ptr %4, i32 0, i32 3, !dbg !1694
  call void @refcount_set(ptr noundef %refcount, i32 noundef 1) #19, !dbg !1695
  %5 = load ptr, ptr %pi_state, align 8, !dbg !1696
  %key = getelementptr inbounds %struct.futex_pi_state, ptr %5, i32 0, i32 4, !dbg !1697
  call void @llvm.memset.p0.i64(ptr align 8 %.compoundliteral, i8 0, i64 24, i1 false), !dbg !1698
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %key, ptr align 8 %.compoundliteral, i64 24, i1 false), !dbg !1698
  %6 = load ptr, ptr %pi_state, align 8, !dbg !1699
  %call7 = call ptr @get_current() #19, !dbg !1700
  %pi_state_cache8 = getelementptr inbounds %struct.task_struct, ptr %call7, i32 0, i32 148, !dbg !1701
  store ptr %6, ptr %pi_state_cache8, align 64, !dbg !1702
  store i32 0, ptr %retval, align 4, !dbg !1703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1703

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi_state) #18, !dbg !1704
  %7 = load i32, ptr %retval, align 4, !dbg !1704
  ret i32 %7, !dbg !1704
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !1705 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #18, !dbg !1718
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1710, metadata !DIExpression()), !dbg !1718
  br label %do.body, !dbg !1718

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1719
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1712, metadata !DIExpression()), !dbg !1719
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1719
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1719
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !1718
  br label %do.cond, !dbg !1719

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1719

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #18, !dbg !1720
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1716, metadata !DIExpression()), !dbg !1720
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #21, !dbg !1720, !srcloc !1721
  store i64 %1, ptr %pfo_val__, align 8, !dbg !1720
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !1720
  %3 = inttoptr i64 %2 to ptr, !dbg !1720
  store ptr %3, ptr %tmp, align 8, !dbg !1720
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #18, !dbg !1718
  %4 = load ptr, ptr %tmp, align 8, !dbg !1720
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !1718
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !1718
  store ptr %5, ptr %tmp1, align 8, !dbg !1718
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #18, !dbg !1722
  %6 = load ptr, ptr %tmp1, align 8, !dbg !1718
  ret ptr %6, !dbg !1723
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1724 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1728, metadata !DIExpression()), !dbg !1730
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1729, metadata !DIExpression()), !dbg !1731
  %0 = load i64, ptr %size.addr, align 8, !dbg !1732
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1733
  %or = or i32 %1, 256, !dbg !1734
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !1735
  ret ptr %call, !dbg !1736
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #6 align 16 !dbg !1737 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !1742, metadata !DIExpression()), !dbg !1743
  br label %do.body, !dbg !1744

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1745

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1747

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1745

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !1749
  %1 = load ptr, ptr %list.addr, align 8, !dbg !1749
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !1749
  store volatile ptr %0, ptr %next, align 8, !dbg !1749
  br label %do.end3, !dbg !1749

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1745

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !1751

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !1752

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1754

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !1752

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !1756
  %3 = load ptr, ptr %list.addr, align 8, !dbg !1756
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !1756
  store volatile ptr %2, ptr %prev, align 8, !dbg !1756
  br label %do.end9, !dbg !1756

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !1752

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !1758
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #6 align 16 !dbg !1759 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1764, metadata !DIExpression()), !dbg !1766
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1765, metadata !DIExpression()), !dbg !1767
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1768
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !1769
  %1 = load i32, ptr %n.addr, align 4, !dbg !1770
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #19, !dbg !1771
  ret void, !dbg !1772
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @get_pi_state(ptr noundef %pi_state) #0 align 16 !dbg !1773 {
entry:
  %pi_state.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %pi_state, ptr %pi_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pi_state.addr, metadata !1777, metadata !DIExpression()), !dbg !1783
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !1784
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1778, metadata !DIExpression()), !dbg !1784
  %0 = load ptr, ptr %pi_state.addr, align 8, !dbg !1784
  %refcount = getelementptr inbounds %struct.futex_pi_state, ptr %0, i32 0, i32 3, !dbg !1784
  %call = call zeroext i1 @refcount_inc_not_zero(ptr noundef %refcount) #19, !dbg !1784
  %lnot = xor i1 %call, true, !dbg !1784
  %lnot1 = xor i1 %lnot, true, !dbg !1784
  %lnot2 = xor i1 %lnot1, true, !dbg !1784
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1784
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1784
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !1785
  %tobool = icmp ne i32 %1, 0, !dbg !1785
  %lnot3 = xor i1 %tobool, true, !dbg !1785
  %lnot5 = xor i1 %lnot3, true, !dbg !1785
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !1785
  %conv = sext i32 %lnot.ext6 to i64, !dbg !1785
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1785
  %tobool7 = icmp ne i64 %expval, 0, !dbg !1785
  br i1 %tobool7, label %if.then, label %if.end, !dbg !1784

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1785

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !1786
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1780, metadata !DIExpression()), !dbg !1786
  store i32 2307, ptr %__flags, align 4, !dbg !1786
  br label %do.body8, !dbg !1786

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !1787

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !1787

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !1786

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !1789
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 70, i32 %2, i64 12) #18, !dbg !1789, !srcloc !1791
  br label %do.cond10, !dbg !1789

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !1789

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !1786

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !1792

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !1792

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !1785
  br label %do.cond15, !dbg !1786

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !1786

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !1786

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !1784
  %tobool17 = icmp ne i32 %3, 0, !dbg !1784
  %lnot18 = xor i1 %tobool17, true, !dbg !1784
  %lnot20 = xor i1 %lnot18, true, !dbg !1784
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !1784
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !1784
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !1784
  store i64 %expval23, ptr %tmp, align 8, !dbg !1785
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !1794
  %4 = load i64, ptr %tmp, align 8, !dbg !1784
  ret void, !dbg !1795
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_inc_not_zero(ptr noundef %r) #6 align 16 !dbg !1796 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1800, metadata !DIExpression()), !dbg !1801
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1802
  %call = call zeroext i1 @__refcount_inc_not_zero(ptr noundef %0, ptr noundef null) #19, !dbg !1803
  ret i1 %call, !dbg !1804
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @put_pi_state(ptr noundef %pi_state) #0 align 16 !dbg !1805 {
entry:
  %pi_state.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  store ptr %pi_state, ptr %pi_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pi_state.addr, metadata !1807, metadata !DIExpression()), !dbg !1819
  %0 = load ptr, ptr %pi_state.addr, align 8, !dbg !1820
  %tobool = icmp ne ptr %0, null, !dbg !1820
  br i1 %tobool, label %if.end, label %if.then, !dbg !1822

if.then:                                          ; preds = %entry
  br label %if.end25, !dbg !1823

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pi_state.addr, align 8, !dbg !1824
  %refcount = getelementptr inbounds %struct.futex_pi_state, ptr %1, i32 0, i32 3, !dbg !1826
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #19, !dbg !1827
  br i1 %call, label %if.end2, label %if.then1, !dbg !1828

if.then1:                                         ; preds = %if.end
  br label %if.end25, !dbg !1829

if.end2:                                          ; preds = %if.end
  %2 = load ptr, ptr %pi_state.addr, align 8, !dbg !1830
  %owner = getelementptr inbounds %struct.futex_pi_state, ptr %2, i32 0, i32 2, !dbg !1831
  %3 = load ptr, ptr %owner, align 8, !dbg !1831
  %tobool3 = icmp ne ptr %3, null, !dbg !1830
  br i1 %tobool3, label %if.then4, label %if.end17, !dbg !1832

if.then4:                                         ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !1833
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1808, metadata !DIExpression()), !dbg !1834
  br label %do.body, !dbg !1835

do.body:                                          ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !1836
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1811, metadata !DIExpression()), !dbg !1836
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !1836
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1814, metadata !DIExpression()), !dbg !1836
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1836
  %conv = zext i1 %cmp to i32, !dbg !1836
  store i32 1, ptr %tmp, align 4, !dbg !1836
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !1837
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !1837
  %4 = load i32, ptr %tmp, align 4, !dbg !1836
  %5 = load ptr, ptr %pi_state.addr, align 8, !dbg !1837
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %5, i32 0, i32 1, !dbg !1837
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %pi_mutex, i32 0, i32 0, !dbg !1837
  %call5 = call i64 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #19, !dbg !1837
  store i64 %call5, ptr %flags, align 8, !dbg !1837
  br label %do.cond, !dbg !1837

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1837

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %pi_state.addr, align 8, !dbg !1838
  call void @pi_state_update_owner(ptr noundef %6, ptr noundef null) #19, !dbg !1839
  %7 = load ptr, ptr %pi_state.addr, align 8, !dbg !1840
  %pi_mutex6 = getelementptr inbounds %struct.futex_pi_state, ptr %7, i32 0, i32 1, !dbg !1841
  call void @rt_mutex_proxy_unlock(ptr noundef %pi_mutex6) #19, !dbg !1842
  br label %do.body7, !dbg !1843

do.body7:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy8) #18, !dbg !1844
  call void @llvm.dbg.declare(metadata ptr %__dummy8, metadata !1815, metadata !DIExpression()), !dbg !1844
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy29) #18, !dbg !1844
  call void @llvm.dbg.declare(metadata ptr %__dummy29, metadata !1818, metadata !DIExpression()), !dbg !1844
  %cmp10 = icmp eq ptr %__dummy8, %__dummy29, !dbg !1844
  %conv11 = zext i1 %cmp10 to i32, !dbg !1844
  store i32 1, ptr %tmp12, align 4, !dbg !1844
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy29) #18, !dbg !1845
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy8) #18, !dbg !1845
  %8 = load i32, ptr %tmp12, align 4, !dbg !1844
  %9 = load ptr, ptr %pi_state.addr, align 8, !dbg !1845
  %pi_mutex13 = getelementptr inbounds %struct.futex_pi_state, ptr %9, i32 0, i32 1, !dbg !1845
  %wait_lock14 = getelementptr inbounds %struct.rt_mutex_base, ptr %pi_mutex13, i32 0, i32 0, !dbg !1845
  %10 = load i64, ptr %flags, align 8, !dbg !1845
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock14, i64 noundef %10) #19, !dbg !1845
  br label %do.cond15, !dbg !1845

do.cond15:                                        ; preds = %do.body7
  br label %do.end16, !dbg !1845

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !1846
  br label %if.end17, !dbg !1847

if.end17:                                         ; preds = %do.end16, %if.end2
  %call18 = call ptr @get_current() #19, !dbg !1848
  %pi_state_cache = getelementptr inbounds %struct.task_struct, ptr %call18, i32 0, i32 148, !dbg !1850
  %11 = load ptr, ptr %pi_state_cache, align 64, !dbg !1850
  %tobool19 = icmp ne ptr %11, null, !dbg !1848
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !1851

if.then20:                                        ; preds = %if.end17
  %12 = load ptr, ptr %pi_state.addr, align 8, !dbg !1852
  call void @kfree(ptr noundef %12) #19, !dbg !1854
  br label %if.end25, !dbg !1855

if.else:                                          ; preds = %if.end17
  %13 = load ptr, ptr %pi_state.addr, align 8, !dbg !1856
  %owner21 = getelementptr inbounds %struct.futex_pi_state, ptr %13, i32 0, i32 2, !dbg !1858
  store ptr null, ptr %owner21, align 8, !dbg !1859
  %14 = load ptr, ptr %pi_state.addr, align 8, !dbg !1860
  %refcount22 = getelementptr inbounds %struct.futex_pi_state, ptr %14, i32 0, i32 3, !dbg !1861
  call void @refcount_set(ptr noundef %refcount22, i32 noundef 1) #19, !dbg !1862
  %15 = load ptr, ptr %pi_state.addr, align 8, !dbg !1863
  %call23 = call ptr @get_current() #19, !dbg !1864
  %pi_state_cache24 = getelementptr inbounds %struct.task_struct, ptr %call23, i32 0, i32 148, !dbg !1865
  store ptr %15, ptr %pi_state_cache24, align 64, !dbg !1866
  br label %if.end25

if.end25:                                         ; preds = %if.then, %if.then1, %if.else, %if.then20
  ret void, !dbg !1867
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #6 align 16 !dbg !1868 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1870, metadata !DIExpression()), !dbg !1871
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1872
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #19, !dbg !1873
  ret i1 %call, !dbg !1874
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1875 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #9 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pi_state_update_owner(ptr noundef %pi_state, ptr noundef %new_owner) #0 align 16 !dbg !1880 {
entry:
  %pi_state.addr = alloca ptr, align 8
  %new_owner.addr = alloca ptr, align 8
  %old_owner = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on35 = alloca i32, align 4
  %__flags55 = alloca i32, align 4
  %tmp68 = alloca i64, align 8
  store ptr %pi_state, ptr %pi_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pi_state.addr, metadata !1884, metadata !DIExpression()), !dbg !1901
  store ptr %new_owner, ptr %new_owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_owner.addr, metadata !1885, metadata !DIExpression()), !dbg !1902
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_owner) #18, !dbg !1903
  call void @llvm.dbg.declare(metadata ptr %old_owner, metadata !1886, metadata !DIExpression()), !dbg !1904
  %0 = load ptr, ptr %pi_state.addr, align 8, !dbg !1905
  %owner = getelementptr inbounds %struct.futex_pi_state, ptr %0, i32 0, i32 2, !dbg !1906
  %1 = load ptr, ptr %owner, align 8, !dbg !1906
  store ptr %1, ptr %old_owner, align 8, !dbg !1904
  br label %do.body, !dbg !1907

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %pi_state.addr, align 8, !dbg !1908
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %2, i32 0, i32 1, !dbg !1908
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %pi_mutex, i32 0, i32 0, !dbg !1908
  br label %do.cond, !dbg !1908

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1908

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %old_owner, align 8, !dbg !1910
  %tobool = icmp ne ptr %3, null, !dbg !1910
  br i1 %tobool, label %if.then, label %if.end31, !dbg !1911

if.then:                                          ; preds = %do.end
  %4 = load ptr, ptr %old_owner, align 8, !dbg !1912
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 122, !dbg !1912
  call void @_raw_spin_lock(ptr noundef %pi_lock) #19, !dbg !1912
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !1913
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1887, metadata !DIExpression()), !dbg !1913
  %5 = load ptr, ptr %pi_state.addr, align 8, !dbg !1913
  %list = getelementptr inbounds %struct.futex_pi_state, ptr %5, i32 0, i32 0, !dbg !1913
  %call = call i32 @list_empty(ptr noundef %list) #19, !dbg !1913
  %tobool1 = icmp ne i32 %call, 0, !dbg !1913
  %lnot = xor i1 %tobool1, true, !dbg !1913
  %lnot2 = xor i1 %lnot, true, !dbg !1913
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1913
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1913
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !1914
  %tobool3 = icmp ne i32 %6, 0, !dbg !1914
  %lnot4 = xor i1 %tobool3, true, !dbg !1914
  %lnot6 = xor i1 %lnot4, true, !dbg !1914
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1914
  %conv = sext i32 %lnot.ext7 to i64, !dbg !1914
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1914
  %tobool8 = icmp ne i64 %expval, 0, !dbg !1914
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !1913

if.then9:                                         ; preds = %if.then
  br label %do.body10, !dbg !1914

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !1915
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1891, metadata !DIExpression()), !dbg !1915
  store i32 2305, ptr %__flags, align 4, !dbg !1915
  br label %do.body11, !dbg !1915

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !1916

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1916

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !1915

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !1918
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 54, i32 %7, i64 12) #18, !dbg !1918, !srcloc !1920
  br label %do.cond15, !dbg !1918

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1918

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !1915

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !1921

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !1921

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !1914
  br label %do.cond20, !dbg !1915

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !1915

do.end21:                                         ; preds = %do.cond20
  br label %if.end, !dbg !1915

if.end:                                           ; preds = %do.end21, %if.then
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !1913
  %tobool22 = icmp ne i32 %8, 0, !dbg !1913
  %lnot23 = xor i1 %tobool22, true, !dbg !1913
  %lnot25 = xor i1 %lnot23, true, !dbg !1913
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !1913
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !1913
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !1913
  store i64 %expval28, ptr %tmp, align 8, !dbg !1914
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !1923
  %9 = load i64, ptr %tmp, align 8, !dbg !1913
  %10 = load ptr, ptr %pi_state.addr, align 8, !dbg !1924
  %list29 = getelementptr inbounds %struct.futex_pi_state, ptr %10, i32 0, i32 0, !dbg !1925
  call void @list_del_init(ptr noundef %list29) #19, !dbg !1926
  %11 = load ptr, ptr %old_owner, align 8, !dbg !1927
  %pi_lock30 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 122, !dbg !1927
  call void @_raw_spin_unlock(ptr noundef %pi_lock30) #19, !dbg !1927
  br label %if.end31, !dbg !1928

if.end31:                                         ; preds = %if.end, %do.end
  %12 = load ptr, ptr %new_owner.addr, align 8, !dbg !1929
  %tobool32 = icmp ne ptr %12, null, !dbg !1929
  br i1 %tobool32, label %if.then33, label %if.end79, !dbg !1930

if.then33:                                        ; preds = %if.end31
  %13 = load ptr, ptr %new_owner.addr, align 8, !dbg !1931
  %pi_lock34 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 122, !dbg !1931
  call void @_raw_spin_lock(ptr noundef %pi_lock34) #19, !dbg !1931
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on35) #18, !dbg !1932
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on35, metadata !1894, metadata !DIExpression()), !dbg !1932
  %14 = load ptr, ptr %pi_state.addr, align 8, !dbg !1932
  %list36 = getelementptr inbounds %struct.futex_pi_state, ptr %14, i32 0, i32 0, !dbg !1932
  %call37 = call i32 @list_empty(ptr noundef %list36) #19, !dbg !1932
  %tobool38 = icmp ne i32 %call37, 0, !dbg !1932
  %lnot39 = xor i1 %tobool38, true, !dbg !1932
  %lnot41 = xor i1 %lnot39, true, !dbg !1932
  %lnot43 = xor i1 %lnot41, true, !dbg !1932
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !1932
  store i32 %lnot.ext44, ptr %__ret_warn_on35, align 4, !dbg !1932
  %15 = load i32, ptr %__ret_warn_on35, align 4, !dbg !1933
  %tobool45 = icmp ne i32 %15, 0, !dbg !1933
  %lnot46 = xor i1 %tobool45, true, !dbg !1933
  %lnot48 = xor i1 %lnot46, true, !dbg !1933
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !1933
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !1933
  %expval51 = call i64 @llvm.expect.i64(i64 %conv50, i64 0), !dbg !1933
  %tobool52 = icmp ne i64 %expval51, 0, !dbg !1933
  br i1 %tobool52, label %if.then53, label %if.end67, !dbg !1932

if.then53:                                        ; preds = %if.then33
  br label %do.body54, !dbg !1933

do.body54:                                        ; preds = %if.then53
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags55) #18, !dbg !1934
  call void @llvm.dbg.declare(metadata ptr %__flags55, metadata !1898, metadata !DIExpression()), !dbg !1934
  store i32 2305, ptr %__flags55, align 4, !dbg !1934
  br label %do.body56, !dbg !1934

do.body56:                                        ; preds = %do.body54
  br label %do.cond57, !dbg !1935

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !1935

do.end58:                                         ; preds = %do.cond57
  br label %do.body59, !dbg !1934

do.body59:                                        ; preds = %do.end58
  %16 = load i32, ptr %__flags55, align 4, !dbg !1937
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 61, i32 %16, i64 12) #18, !dbg !1937, !srcloc !1939
  br label %do.cond60, !dbg !1937

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !1937

do.end61:                                         ; preds = %do.cond60
  br label %do.body62, !dbg !1934

do.body62:                                        ; preds = %do.end61
  br label %do.cond63, !dbg !1940

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !1940

do.end64:                                         ; preds = %do.cond63
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags55) #18, !dbg !1933
  br label %do.cond65, !dbg !1934

do.cond65:                                        ; preds = %do.end64
  br label %do.end66, !dbg !1934

do.end66:                                         ; preds = %do.cond65
  br label %if.end67, !dbg !1934

if.end67:                                         ; preds = %do.end66, %if.then33
  %17 = load i32, ptr %__ret_warn_on35, align 4, !dbg !1932
  %tobool69 = icmp ne i32 %17, 0, !dbg !1932
  %lnot70 = xor i1 %tobool69, true, !dbg !1932
  %lnot72 = xor i1 %lnot70, true, !dbg !1932
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !1932
  %conv74 = sext i32 %lnot.ext73 to i64, !dbg !1932
  %expval75 = call i64 @llvm.expect.i64(i64 %conv74, i64 0), !dbg !1932
  store i64 %expval75, ptr %tmp68, align 8, !dbg !1933
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on35) #18, !dbg !1942
  %18 = load i64, ptr %tmp68, align 8, !dbg !1932
  %19 = load ptr, ptr %pi_state.addr, align 8, !dbg !1943
  %list76 = getelementptr inbounds %struct.futex_pi_state, ptr %19, i32 0, i32 0, !dbg !1944
  %20 = load ptr, ptr %new_owner.addr, align 8, !dbg !1945
  %pi_state_list = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 147, !dbg !1946
  call void @list_add(ptr noundef %list76, ptr noundef %pi_state_list) #19, !dbg !1947
  %21 = load ptr, ptr %new_owner.addr, align 8, !dbg !1948
  %22 = load ptr, ptr %pi_state.addr, align 8, !dbg !1949
  %owner77 = getelementptr inbounds %struct.futex_pi_state, ptr %22, i32 0, i32 2, !dbg !1950
  store ptr %21, ptr %owner77, align 8, !dbg !1951
  %23 = load ptr, ptr %new_owner.addr, align 8, !dbg !1952
  %pi_lock78 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 122, !dbg !1952
  call void @_raw_spin_unlock(ptr noundef %pi_lock78) #19, !dbg !1952
  br label %if.end79, !dbg !1953

if.end79:                                         ; preds = %if.end67, %if.end31
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_owner) #18, !dbg !1954
  ret void, !dbg !1954
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1955 dso_local void @rt_mutex_proxy_unlock(ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1958 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #9 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1961 dso_local void @kfree(ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @futex_lock_pi_atomic(ptr noundef %uaddr, ptr noundef %hb, ptr noundef %key, ptr noundef %ps, ptr noundef %task, ptr noundef %exiting, i32 noundef %set_waiters) #0 align 16 !dbg !1964 {
entry:
  %retval = alloca i32, align 4
  %uaddr.addr = alloca ptr, align 8
  %hb.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %ps.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %exiting.addr = alloca ptr, align 8
  %set_waiters.addr = alloca i32, align 4
  %uval = alloca i32, align 4
  %newval = alloca i32, align 4
  %vpid = alloca i32, align 4
  %top_waiter = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !1979, metadata !DIExpression()), !dbg !2004
  store ptr %hb, ptr %hb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hb.addr, metadata !1980, metadata !DIExpression()), !dbg !2005
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1981, metadata !DIExpression()), !dbg !2006
  store ptr %ps, ptr %ps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps.addr, metadata !1982, metadata !DIExpression()), !dbg !2007
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !1983, metadata !DIExpression()), !dbg !2008
  store ptr %exiting, ptr %exiting.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %exiting.addr, metadata !1984, metadata !DIExpression()), !dbg !2009
  store i32 %set_waiters, ptr %set_waiters.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %set_waiters.addr, metadata !1985, metadata !DIExpression()), !dbg !2010
  call void @llvm.lifetime.start.p0(i64 4, ptr %uval) #18, !dbg !2011
  call void @llvm.dbg.declare(metadata ptr %uval, metadata !1986, metadata !DIExpression()), !dbg !2012
  call void @llvm.lifetime.start.p0(i64 4, ptr %newval) #18, !dbg !2011
  call void @llvm.dbg.declare(metadata ptr %newval, metadata !1987, metadata !DIExpression()), !dbg !2013
  call void @llvm.lifetime.start.p0(i64 4, ptr %vpid) #18, !dbg !2011
  call void @llvm.dbg.declare(metadata ptr %vpid, metadata !1988, metadata !DIExpression()), !dbg !2014
  %0 = load ptr, ptr %task.addr, align 8, !dbg !2015
  %call = call i32 @task_pid_vnr(ptr noundef %0) #19, !dbg !2016
  store i32 %call, ptr %vpid, align 4, !dbg !2014
  call void @llvm.lifetime.start.p0(i64 8, ptr %top_waiter) #18, !dbg !2017
  call void @llvm.dbg.declare(metadata ptr %top_waiter, metadata !1989, metadata !DIExpression()), !dbg !2018
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !2019
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2003, metadata !DIExpression()), !dbg !2020
  %1 = load ptr, ptr %uaddr.addr, align 8, !dbg !2021
  %call1 = call i32 @futex_get_value_locked(ptr noundef %uval, ptr noundef %1) #19, !dbg !2023
  %tobool = icmp ne i32 %call1, 0, !dbg !2023
  br i1 %tobool, label %if.then, label %if.end, !dbg !2024

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !2025
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2025

if.end:                                           ; preds = %entry
  %call2 = call zeroext i1 @should_fail_futex(i1 noundef zeroext true) #19, !dbg !2026
  %lnot = xor i1 %call2, true, !dbg !2026
  %lnot3 = xor i1 %lnot, true, !dbg !2026
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2026
  %conv = sext i32 %lnot.ext to i64, !dbg !2026
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2026
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2026
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2028

if.then5:                                         ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !2029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2029

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr %uval, align 4, !dbg !2030
  %and = and i32 %2, 1073741823, !dbg !2030
  %3 = load i32, ptr %vpid, align 4, !dbg !2030
  %cmp = icmp eq i32 %and, %3, !dbg !2030
  %lnot8 = xor i1 %cmp, true, !dbg !2030
  %lnot10 = xor i1 %lnot8, true, !dbg !2030
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !2030
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !2030
  %expval13 = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !2030
  %tobool14 = icmp ne i64 %expval13, 0, !dbg !2030
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2032

if.then15:                                        ; preds = %if.end6
  store i32 -35, ptr %retval, align 4, !dbg !2033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2033

if.end16:                                         ; preds = %if.end6
  %call17 = call zeroext i1 @should_fail_futex(i1 noundef zeroext true) #19, !dbg !2034
  %lnot18 = xor i1 %call17, true, !dbg !2034
  %lnot20 = xor i1 %lnot18, true, !dbg !2034
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !2034
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !2034
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !2034
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !2034
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !2036

if.then25:                                        ; preds = %if.end16
  store i32 -35, ptr %retval, align 4, !dbg !2037
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2037

if.end26:                                         ; preds = %if.end16
  %4 = load ptr, ptr %hb.addr, align 8, !dbg !2038
  %5 = load ptr, ptr %key.addr, align 8, !dbg !2039
  %call27 = call ptr @futex_top_waiter(ptr noundef %4, ptr noundef %5) #19, !dbg !2040
  store ptr %call27, ptr %top_waiter, align 8, !dbg !2041
  %6 = load ptr, ptr %top_waiter, align 8, !dbg !2042
  %tobool28 = icmp ne ptr %6, null, !dbg !2042
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !2044

if.then29:                                        ; preds = %if.end26
  %7 = load ptr, ptr %uaddr.addr, align 8, !dbg !2045
  %8 = load i32, ptr %uval, align 4, !dbg !2046
  %9 = load ptr, ptr %top_waiter, align 8, !dbg !2047
  %pi_state = getelementptr inbounds %struct.futex_q, ptr %9, i32 0, i32 4, !dbg !2048
  %10 = load ptr, ptr %pi_state, align 8, !dbg !2048
  %11 = load ptr, ptr %ps.addr, align 8, !dbg !2049
  %call30 = call i32 @attach_to_pi_state(ptr noundef %7, i32 noundef %8, ptr noundef %10, ptr noundef %11) #19, !dbg !2050
  store i32 %call30, ptr %retval, align 4, !dbg !2051
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2051

if.end31:                                         ; preds = %if.end26
  %12 = load i32, ptr %uval, align 4, !dbg !2052
  %and32 = and i32 %12, 1073741823, !dbg !2054
  %tobool33 = icmp ne i32 %and32, 0, !dbg !2054
  br i1 %tobool33, label %if.end48, label %if.then34, !dbg !2055

if.then34:                                        ; preds = %if.end31
  %13 = load i32, ptr %uval, align 4, !dbg !2056
  %and35 = and i32 %13, 1073741824, !dbg !2058
  store i32 %and35, ptr %newval, align 4, !dbg !2059
  %14 = load i32, ptr %vpid, align 4, !dbg !2060
  %15 = load i32, ptr %newval, align 4, !dbg !2061
  %or = or i32 %15, %14, !dbg !2061
  store i32 %or, ptr %newval, align 4, !dbg !2061
  %16 = load i32, ptr %set_waiters.addr, align 4, !dbg !2062
  %tobool36 = icmp ne i32 %16, 0, !dbg !2062
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !2064

if.then37:                                        ; preds = %if.then34
  %17 = load i32, ptr %newval, align 4, !dbg !2065
  %or38 = or i32 %17, -2147483648, !dbg !2065
  store i32 %or38, ptr %newval, align 4, !dbg !2065
  br label %if.end39, !dbg !2066

if.end39:                                         ; preds = %if.then37, %if.then34
  %18 = load ptr, ptr %uaddr.addr, align 8, !dbg !2067
  %19 = load i32, ptr %uval, align 4, !dbg !2068
  %20 = load i32, ptr %newval, align 4, !dbg !2069
  %call40 = call i32 @lock_pi_update_atomic(ptr noundef %18, i32 noundef %19, i32 noundef %20) #19, !dbg !2070
  store i32 %call40, ptr %ret, align 4, !dbg !2071
  %21 = load i32, ptr %ret, align 4, !dbg !2072
  %tobool41 = icmp ne i32 %21, 0, !dbg !2072
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !2074

if.then42:                                        ; preds = %if.end39
  %22 = load i32, ptr %ret, align 4, !dbg !2075
  store i32 %22, ptr %retval, align 4, !dbg !2076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2076

if.end43:                                         ; preds = %if.end39
  %23 = load i32, ptr %set_waiters.addr, align 4, !dbg !2077
  %tobool44 = icmp ne i32 %23, 0, !dbg !2077
  br i1 %tobool44, label %if.then45, label %if.end47, !dbg !2079

if.then45:                                        ; preds = %if.end43
  %24 = load ptr, ptr %task.addr, align 8, !dbg !2080
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 122, !dbg !2080
  call void @_raw_spin_lock_irq(ptr noundef %pi_lock) #19, !dbg !2080
  %25 = load ptr, ptr %task.addr, align 8, !dbg !2082
  %26 = load ptr, ptr %key.addr, align 8, !dbg !2083
  %27 = load ptr, ptr %ps.addr, align 8, !dbg !2084
  call void @__attach_to_pi_owner(ptr noundef %25, ptr noundef %26, ptr noundef %27) #19, !dbg !2085
  %28 = load ptr, ptr %task.addr, align 8, !dbg !2086
  %pi_lock46 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 122, !dbg !2086
  call void @_raw_spin_unlock_irq(ptr noundef %pi_lock46) #19, !dbg !2086
  br label %if.end47, !dbg !2087

if.end47:                                         ; preds = %if.then45, %if.end43
  store i32 1, ptr %retval, align 4, !dbg !2088
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2088

if.end48:                                         ; preds = %if.end31
  %29 = load i32, ptr %uval, align 4, !dbg !2089
  %or49 = or i32 %29, -2147483648, !dbg !2090
  store i32 %or49, ptr %newval, align 4, !dbg !2091
  %30 = load ptr, ptr %uaddr.addr, align 8, !dbg !2092
  %31 = load i32, ptr %uval, align 4, !dbg !2093
  %32 = load i32, ptr %newval, align 4, !dbg !2094
  %call50 = call i32 @lock_pi_update_atomic(ptr noundef %30, i32 noundef %31, i32 noundef %32) #19, !dbg !2095
  store i32 %call50, ptr %ret, align 4, !dbg !2096
  %33 = load i32, ptr %ret, align 4, !dbg !2097
  %tobool51 = icmp ne i32 %33, 0, !dbg !2097
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !2099

if.then52:                                        ; preds = %if.end48
  %34 = load i32, ptr %ret, align 4, !dbg !2100
  store i32 %34, ptr %retval, align 4, !dbg !2101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2101

if.end53:                                         ; preds = %if.end48
  %35 = load ptr, ptr %uaddr.addr, align 8, !dbg !2102
  %36 = load i32, ptr %newval, align 4, !dbg !2103
  %37 = load ptr, ptr %key.addr, align 8, !dbg !2104
  %38 = load ptr, ptr %ps.addr, align 8, !dbg !2105
  %39 = load ptr, ptr %exiting.addr, align 8, !dbg !2106
  %call54 = call i32 @attach_to_pi_owner(ptr noundef %35, i32 noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39) #19, !dbg !2107
  store i32 %call54, ptr %retval, align 4, !dbg !2108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2108

cleanup:                                          ; preds = %if.end53, %if.then52, %if.end47, %if.then42, %if.then29, %if.then25, %if.then15, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !2109
  call void @llvm.lifetime.end.p0(i64 8, ptr %top_waiter) #18, !dbg !2109
  call void @llvm.lifetime.end.p0(i64 4, ptr %vpid) #18, !dbg !2109
  call void @llvm.lifetime.end.p0(i64 4, ptr %newval) #18, !dbg !2109
  call void @llvm.lifetime.end.p0(i64 4, ptr %uval) #18, !dbg !2109
  %40 = load i32, ptr %retval, align 4, !dbg !2109
  ret i32 %40, !dbg !2109
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @task_pid_vnr(ptr noundef %tsk) #6 align 16 !dbg !2110 {
entry:
  %tsk.addr = alloca ptr, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !2114, metadata !DIExpression()), !dbg !2115
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !2116
  %call = call i32 @__task_pid_nr_ns(ptr noundef %0, i32 noundef 0, ptr noundef null) #19, !dbg !2117
  ret i32 %call, !dbg !2118
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2119 dso_local i32 @futex_get_value_locked(ptr noundef, ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @should_fail_futex(i1 noundef zeroext %fshared) #6 align 16 !dbg !2122 {
entry:
  %fshared.addr = alloca i8, align 1
  %frombool = zext i1 %fshared to i8
  store i8 %frombool, ptr %fshared.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %fshared.addr, metadata !2126, metadata !DIExpression()), !dbg !2127
  ret i1 false, !dbg !2128
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2129 dso_local ptr @futex_top_waiter(ptr noundef, ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @attach_to_pi_state(ptr noundef %uaddr, i32 noundef %uval, ptr noundef %pi_state, ptr noundef %ps) #0 align 16 !dbg !2132 {
entry:
  %retval = alloca i32, align 4
  %uaddr.addr = alloca ptr, align 8
  %uval.addr = alloca i32, align 4
  %pi_state.addr = alloca ptr, align 8
  %ps.addr = alloca ptr, align 8
  %pid = alloca i32, align 4
  %uval2 = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !2136, metadata !DIExpression()), !dbg !2153
  store i32 %uval, ptr %uval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uval.addr, metadata !2137, metadata !DIExpression()), !dbg !2154
  store ptr %pi_state, ptr %pi_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pi_state.addr, metadata !2138, metadata !DIExpression()), !dbg !2155
  store ptr %ps, ptr %ps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps.addr, metadata !2139, metadata !DIExpression()), !dbg !2156
  call void @llvm.lifetime.start.p0(i64 4, ptr %pid) #18, !dbg !2157
  call void @llvm.dbg.declare(metadata ptr %pid, metadata !2140, metadata !DIExpression()), !dbg !2158
  %0 = load i32, ptr %uval.addr, align 4, !dbg !2159
  %and = and i32 %0, 1073741823, !dbg !2160
  store i32 %and, ptr %pid, align 4, !dbg !2158
  call void @llvm.lifetime.start.p0(i64 4, ptr %uval2) #18, !dbg !2161
  call void @llvm.dbg.declare(metadata ptr %uval2, metadata !2141, metadata !DIExpression()), !dbg !2162
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !2163
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2142, metadata !DIExpression()), !dbg !2164
  %1 = load ptr, ptr %pi_state.addr, align 8, !dbg !2165
  %tobool = icmp ne ptr %1, null, !dbg !2165
  %lnot = xor i1 %tobool, true, !dbg !2165
  %lnot1 = xor i1 %lnot, true, !dbg !2165
  %lnot2 = xor i1 %lnot1, true, !dbg !2165
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2165
  %conv = sext i32 %lnot.ext to i64, !dbg !2165
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2165
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2165
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2167

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2168

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !2169
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2143, metadata !DIExpression()), !dbg !2169
  %2 = load ptr, ptr %pi_state.addr, align 8, !dbg !2169
  %refcount = getelementptr inbounds %struct.futex_pi_state, ptr %2, i32 0, i32 3, !dbg !2169
  %call = call i32 @refcount_read(ptr noundef %refcount) #19, !dbg !2169
  %tobool4 = icmp ne i32 %call, 0, !dbg !2169
  %lnot5 = xor i1 %tobool4, true, !dbg !2169
  %lnot7 = xor i1 %lnot5, true, !dbg !2169
  %lnot9 = xor i1 %lnot7, true, !dbg !2169
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !2169
  store i32 %lnot.ext10, ptr %__ret_warn_on, align 4, !dbg !2169
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !2170
  %tobool11 = icmp ne i32 %3, 0, !dbg !2170
  %lnot12 = xor i1 %tobool11, true, !dbg !2170
  %lnot14 = xor i1 %lnot12, true, !dbg !2170
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !2170
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !2170
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !2170
  %tobool18 = icmp ne i64 %expval17, 0, !dbg !2170
  br i1 %tobool18, label %if.then19, label %if.end29, !dbg !2169

if.then19:                                        ; preds = %if.end
  br label %do.body, !dbg !2170

do.body:                                          ; preds = %if.then19
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !2171
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2145, metadata !DIExpression()), !dbg !2171
  store i32 2305, ptr %__flags, align 4, !dbg !2171
  br label %do.body20, !dbg !2171

do.body20:                                        ; preds = %do.body
  br label %do.cond, !dbg !2172

do.cond:                                          ; preds = %do.body20
  br label %do.end, !dbg !2172

do.end:                                           ; preds = %do.cond
  br label %do.body21, !dbg !2171

do.body21:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !2174
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 228, i32 %4, i64 12) #18, !dbg !2174, !srcloc !2176
  br label %do.cond22, !dbg !2174

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !2174

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !2171

do.body24:                                        ; preds = %do.end23
  br label %do.cond25, !dbg !2177

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !2177

do.end26:                                         ; preds = %do.cond25
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !2170
  br label %do.cond27, !dbg !2171

do.cond27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !2171

do.end28:                                         ; preds = %do.cond27
  br label %if.end29, !dbg !2171

if.end29:                                         ; preds = %do.end28, %if.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !2169
  %tobool30 = icmp ne i32 %5, 0, !dbg !2169
  %lnot31 = xor i1 %tobool30, true, !dbg !2169
  %lnot33 = xor i1 %lnot31, true, !dbg !2169
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !2169
  %conv35 = sext i32 %lnot.ext34 to i64, !dbg !2169
  %expval36 = call i64 @llvm.expect.i64(i64 %conv35, i64 0), !dbg !2169
  store i64 %expval36, ptr %tmp, align 8, !dbg !2170
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !2179
  %6 = load i64, ptr %tmp, align 8, !dbg !2169
  %7 = load ptr, ptr %pi_state.addr, align 8, !dbg !2180
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %7, i32 0, i32 1, !dbg !2180
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %pi_mutex, i32 0, i32 0, !dbg !2180
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #19, !dbg !2180
  %8 = load ptr, ptr %uaddr.addr, align 8, !dbg !2181
  %call37 = call i32 @futex_get_value_locked(ptr noundef %uval2, ptr noundef %8) #19, !dbg !2183
  %tobool38 = icmp ne i32 %call37, 0, !dbg !2183
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !2184

if.then39:                                        ; preds = %if.end29
  br label %out_efault, !dbg !2185

if.end40:                                         ; preds = %if.end29
  %9 = load i32, ptr %uval.addr, align 4, !dbg !2186
  %10 = load i32, ptr %uval2, align 4, !dbg !2188
  %cmp = icmp ne i32 %9, %10, !dbg !2189
  br i1 %cmp, label %if.then42, label %if.end43, !dbg !2190

if.then42:                                        ; preds = %if.end40
  br label %out_eagain, !dbg !2191

if.end43:                                         ; preds = %if.end40
  %11 = load i32, ptr %uval.addr, align 4, !dbg !2192
  %and44 = and i32 %11, 1073741824, !dbg !2194
  %tobool45 = icmp ne i32 %and44, 0, !dbg !2194
  br i1 %tobool45, label %if.then46, label %if.else, !dbg !2195

if.then46:                                        ; preds = %if.end43
  %12 = load ptr, ptr %pi_state.addr, align 8, !dbg !2196
  %owner = getelementptr inbounds %struct.futex_pi_state, ptr %12, i32 0, i32 2, !dbg !2199
  %13 = load ptr, ptr %owner, align 8, !dbg !2199
  %tobool47 = icmp ne ptr %13, null, !dbg !2196
  br i1 %tobool47, label %if.end52, label %if.then48, !dbg !2200

if.then48:                                        ; preds = %if.then46
  %14 = load i32, ptr %pid, align 4, !dbg !2201
  %tobool49 = icmp ne i32 %14, 0, !dbg !2201
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !2204

if.then50:                                        ; preds = %if.then48
  br label %out_einval, !dbg !2205

if.end51:                                         ; preds = %if.then48
  br label %out_attach, !dbg !2206

if.end52:                                         ; preds = %if.then46
  %15 = load i32, ptr %pid, align 4, !dbg !2207
  %tobool53 = icmp ne i32 %15, 0, !dbg !2207
  br i1 %tobool53, label %if.end55, label %if.then54, !dbg !2209

if.then54:                                        ; preds = %if.end52
  br label %out_attach, !dbg !2210

if.end55:                                         ; preds = %if.end52
  br label %if.end60, !dbg !2211

if.else:                                          ; preds = %if.end43
  %16 = load ptr, ptr %pi_state.addr, align 8, !dbg !2212
  %owner56 = getelementptr inbounds %struct.futex_pi_state, ptr %16, i32 0, i32 2, !dbg !2215
  %17 = load ptr, ptr %owner56, align 8, !dbg !2215
  %tobool57 = icmp ne ptr %17, null, !dbg !2212
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !2216

if.then58:                                        ; preds = %if.else
  br label %out_einval, !dbg !2217

if.end59:                                         ; preds = %if.else
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end55
  %18 = load i32, ptr %pid, align 4, !dbg !2218
  %19 = load ptr, ptr %pi_state.addr, align 8, !dbg !2220
  %owner61 = getelementptr inbounds %struct.futex_pi_state, ptr %19, i32 0, i32 2, !dbg !2221
  %20 = load ptr, ptr %owner61, align 8, !dbg !2221
  %call62 = call i32 @task_pid_vnr(ptr noundef %20) #19, !dbg !2222
  %cmp63 = icmp ne i32 %18, %call62, !dbg !2223
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !2224

if.then65:                                        ; preds = %if.end60
  br label %out_einval, !dbg !2225

if.end66:                                         ; preds = %if.end60
  br label %out_attach, !dbg !2226

out_attach:                                       ; preds = %if.end66, %if.then54, %if.end51
  call void @llvm.dbg.label(metadata !2148), !dbg !2227
  %21 = load ptr, ptr %pi_state.addr, align 8, !dbg !2228
  call void @get_pi_state(ptr noundef %21) #19, !dbg !2229
  %22 = load ptr, ptr %pi_state.addr, align 8, !dbg !2230
  %pi_mutex67 = getelementptr inbounds %struct.futex_pi_state, ptr %22, i32 0, i32 1, !dbg !2230
  %wait_lock68 = getelementptr inbounds %struct.rt_mutex_base, ptr %pi_mutex67, i32 0, i32 0, !dbg !2230
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock68) #19, !dbg !2230
  %23 = load ptr, ptr %pi_state.addr, align 8, !dbg !2231
  %24 = load ptr, ptr %ps.addr, align 8, !dbg !2232
  store ptr %23, ptr %24, align 8, !dbg !2233
  store i32 0, ptr %retval, align 4, !dbg !2234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2234

out_einval:                                       ; preds = %if.then65, %if.then58, %if.then50
  call void @llvm.dbg.label(metadata !2149), !dbg !2235
  store i32 -22, ptr %ret, align 4, !dbg !2236
  br label %out_error, !dbg !2237

out_eagain:                                       ; preds = %if.then42
  call void @llvm.dbg.label(metadata !2150), !dbg !2238
  store i32 -11, ptr %ret, align 4, !dbg !2239
  br label %out_error, !dbg !2240

out_efault:                                       ; preds = %if.then39
  call void @llvm.dbg.label(metadata !2151), !dbg !2241
  store i32 -14, ptr %ret, align 4, !dbg !2242
  br label %out_error, !dbg !2243

out_error:                                        ; preds = %out_efault, %out_eagain, %out_einval
  call void @llvm.dbg.label(metadata !2152), !dbg !2244
  %25 = load ptr, ptr %pi_state.addr, align 8, !dbg !2245
  %pi_mutex69 = getelementptr inbounds %struct.futex_pi_state, ptr %25, i32 0, i32 1, !dbg !2245
  %wait_lock70 = getelementptr inbounds %struct.rt_mutex_base, ptr %pi_mutex69, i32 0, i32 0, !dbg !2245
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock70) #19, !dbg !2245
  %26 = load i32, ptr %ret, align 4, !dbg !2246
  store i32 %26, ptr %retval, align 4, !dbg !2247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2247

cleanup:                                          ; preds = %out_error, %out_attach, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !2248
  call void @llvm.lifetime.end.p0(i64 4, ptr %uval2) #18, !dbg !2248
  call void @llvm.lifetime.end.p0(i64 4, ptr %pid) #18, !dbg !2248
  %27 = load i32, ptr %retval, align 4, !dbg !2248
  ret i32 %27, !dbg !2248
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lock_pi_update_atomic(ptr noundef %uaddr, i32 noundef %uval, i32 noundef %newval) #0 align 16 !dbg !2249 {
entry:
  %retval = alloca i32, align 4
  %uaddr.addr = alloca ptr, align 8
  %uval.addr = alloca i32, align 4
  %newval.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %curval = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !2253, metadata !DIExpression()), !dbg !2258
  store i32 %uval, ptr %uval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uval.addr, metadata !2254, metadata !DIExpression()), !dbg !2259
  store i32 %newval, ptr %newval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %newval.addr, metadata !2255, metadata !DIExpression()), !dbg !2260
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !2261
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2256, metadata !DIExpression()), !dbg !2262
  call void @llvm.lifetime.start.p0(i64 4, ptr %curval) #18, !dbg !2263
  call void @llvm.dbg.declare(metadata ptr %curval, metadata !2257, metadata !DIExpression()), !dbg !2264
  %call = call zeroext i1 @should_fail_futex(i1 noundef zeroext true) #19, !dbg !2265
  %lnot = xor i1 %call, true, !dbg !2265
  %lnot1 = xor i1 %lnot, true, !dbg !2265
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2265
  %conv = sext i32 %lnot.ext to i64, !dbg !2265
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2265
  %tobool = icmp ne i64 %expval, 0, !dbg !2265
  br i1 %tobool, label %if.then, label %if.end, !dbg !2267

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !2268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2268

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %uaddr.addr, align 8, !dbg !2269
  %1 = load i32, ptr %uval.addr, align 4, !dbg !2270
  %2 = load i32, ptr %newval.addr, align 4, !dbg !2271
  %call2 = call i32 @futex_cmpxchg_value_locked(ptr noundef %curval, ptr noundef %0, i32 noundef %1, i32 noundef %2) #19, !dbg !2272
  store i32 %call2, ptr %err, align 4, !dbg !2273
  %3 = load i32, ptr %err, align 4, !dbg !2274
  %tobool3 = icmp ne i32 %3, 0, !dbg !2274
  %lnot4 = xor i1 %tobool3, true, !dbg !2274
  %lnot6 = xor i1 %lnot4, true, !dbg !2274
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2274
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !2274
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !2274
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !2274
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2276

if.then11:                                        ; preds = %if.end
  %4 = load i32, ptr %err, align 4, !dbg !2277
  store i32 %4, ptr %retval, align 4, !dbg !2278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2278

if.end12:                                         ; preds = %if.end
  %5 = load i32, ptr %curval, align 4, !dbg !2279
  %6 = load i32, ptr %uval.addr, align 4, !dbg !2280
  %cmp = icmp ne i32 %5, %6, !dbg !2281
  %7 = zext i1 %cmp to i64, !dbg !2279
  %cond = select i1 %cmp, i32 -11, i32 0, !dbg !2279
  store i32 %cond, ptr %retval, align 4, !dbg !2282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2282

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %curval) #18, !dbg !2283
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !2283
  %8 = load i32, ptr %retval, align 4, !dbg !2283
  ret i32 %8, !dbg !2283
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2284 dso_local void @_raw_spin_lock_irq(ptr noundef) #9 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__attach_to_pi_owner(ptr noundef %p, ptr noundef %key, ptr noundef %ps) #0 align 16 !dbg !2287 {
entry:
  %p.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %ps.addr = alloca ptr, align 8
  %pi_state = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2291, metadata !DIExpression()), !dbg !2300
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2292, metadata !DIExpression()), !dbg !2301
  store ptr %ps, ptr %ps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps.addr, metadata !2293, metadata !DIExpression()), !dbg !2302
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi_state) #18, !dbg !2303
  call void @llvm.dbg.declare(metadata ptr %pi_state, metadata !2294, metadata !DIExpression()), !dbg !2304
  %call = call ptr @alloc_pi_state() #19, !dbg !2305
  store ptr %call, ptr %pi_state, align 8, !dbg !2304
  %0 = load ptr, ptr %pi_state, align 8, !dbg !2306
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %0, i32 0, i32 1, !dbg !2307
  %1 = load ptr, ptr %p.addr, align 8, !dbg !2308
  call void @rt_mutex_init_proxy_locked(ptr noundef %pi_mutex, ptr noundef %1) #19, !dbg !2309
  %2 = load ptr, ptr %pi_state, align 8, !dbg !2310
  %key1 = getelementptr inbounds %struct.futex_pi_state, ptr %2, i32 0, i32 4, !dbg !2311
  %3 = load ptr, ptr %key.addr, align 8, !dbg !2312
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %key1, ptr align 8 %3, i64 24, i1 false), !dbg !2313
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !2314
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2295, metadata !DIExpression()), !dbg !2314
  %4 = load ptr, ptr %pi_state, align 8, !dbg !2314
  %list = getelementptr inbounds %struct.futex_pi_state, ptr %4, i32 0, i32 0, !dbg !2314
  %call2 = call i32 @list_empty(ptr noundef %list) #19, !dbg !2314
  %tobool = icmp ne i32 %call2, 0, !dbg !2314
  %lnot = xor i1 %tobool, true, !dbg !2314
  %lnot3 = xor i1 %lnot, true, !dbg !2314
  %lnot4 = xor i1 %lnot3, true, !dbg !2314
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2314
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2314
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !2315
  %tobool5 = icmp ne i32 %5, 0, !dbg !2315
  %lnot6 = xor i1 %tobool5, true, !dbg !2315
  %lnot8 = xor i1 %lnot6, true, !dbg !2315
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !2315
  %conv = sext i32 %lnot.ext9 to i64, !dbg !2315
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2315
  %tobool10 = icmp ne i64 %expval, 0, !dbg !2315
  br i1 %tobool10, label %if.then, label %if.end, !dbg !2314

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2315

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !2316
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2297, metadata !DIExpression()), !dbg !2316
  store i32 2305, ptr %__flags, align 4, !dbg !2316
  br label %do.body11, !dbg !2316

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !2317

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !2317

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !2316

do.body12:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !2319
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 396, i32 %6, i64 12) #18, !dbg !2319, !srcloc !2321
  br label %do.cond13, !dbg !2319

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !2319

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !2316

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !2322

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !2322

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !2315
  br label %do.cond18, !dbg !2316

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !2316

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !2316

if.end:                                           ; preds = %do.end19, %entry
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !2314
  %tobool20 = icmp ne i32 %7, 0, !dbg !2314
  %lnot21 = xor i1 %tobool20, true, !dbg !2314
  %lnot23 = xor i1 %lnot21, true, !dbg !2314
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !2314
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !2314
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !2314
  store i64 %expval26, ptr %tmp, align 8, !dbg !2315
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !2324
  %8 = load i64, ptr %tmp, align 8, !dbg !2314
  %9 = load ptr, ptr %pi_state, align 8, !dbg !2325
  %list27 = getelementptr inbounds %struct.futex_pi_state, ptr %9, i32 0, i32 0, !dbg !2326
  %10 = load ptr, ptr %p.addr, align 8, !dbg !2327
  %pi_state_list = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 147, !dbg !2328
  call void @list_add(ptr noundef %list27, ptr noundef %pi_state_list) #19, !dbg !2329
  %11 = load ptr, ptr %p.addr, align 8, !dbg !2330
  %12 = load ptr, ptr %pi_state, align 8, !dbg !2331
  %owner = getelementptr inbounds %struct.futex_pi_state, ptr %12, i32 0, i32 2, !dbg !2332
  store ptr %11, ptr %owner, align 8, !dbg !2333
  %13 = load ptr, ptr %pi_state, align 8, !dbg !2334
  %14 = load ptr, ptr %ps.addr, align 8, !dbg !2335
  store ptr %13, ptr %14, align 8, !dbg !2336
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi_state) #18, !dbg !2337
  ret void, !dbg !2337
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2338 dso_local void @_raw_spin_unlock_irq(ptr noundef) #9 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @attach_to_pi_owner(ptr noundef %uaddr, i32 noundef %uval, ptr noundef %key, ptr noundef %ps, ptr noundef %exiting) #0 align 16 !dbg !2339 {
entry:
  %retval = alloca i32, align 4
  %uaddr.addr = alloca ptr, align 8
  %uval.addr = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %ps.addr = alloca ptr, align 8
  %exiting.addr = alloca ptr, align 8
  %pid = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !2343, metadata !DIExpression()), !dbg !2353
  store i32 %uval, ptr %uval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uval.addr, metadata !2344, metadata !DIExpression()), !dbg !2354
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2345, metadata !DIExpression()), !dbg !2355
  store ptr %ps, ptr %ps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ps.addr, metadata !2346, metadata !DIExpression()), !dbg !2356
  store ptr %exiting, ptr %exiting.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %exiting.addr, metadata !2347, metadata !DIExpression()), !dbg !2357
  call void @llvm.lifetime.start.p0(i64 4, ptr %pid) #18, !dbg !2358
  call void @llvm.dbg.declare(metadata ptr %pid, metadata !2348, metadata !DIExpression()), !dbg !2359
  %0 = load i32, ptr %uval.addr, align 4, !dbg !2360
  %and = and i32 %0, 1073741823, !dbg !2361
  store i32 %and, ptr %pid, align 4, !dbg !2359
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !2362
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2349, metadata !DIExpression()), !dbg !2363
  %1 = load i32, ptr %pid, align 4, !dbg !2364
  %tobool = icmp ne i32 %1, 0, !dbg !2364
  br i1 %tobool, label %if.end, label %if.then, !dbg !2366

if.then:                                          ; preds = %entry
  store i32 -11, ptr %retval, align 4, !dbg !2367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2367

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %pid, align 4, !dbg !2368
  %call = call ptr @find_get_task_by_vpid(i32 noundef %2) #19, !dbg !2369
  store ptr %call, ptr %p, align 8, !dbg !2370
  %3 = load ptr, ptr %p, align 8, !dbg !2371
  %tobool1 = icmp ne ptr %3, null, !dbg !2371
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !2373

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %uaddr.addr, align 8, !dbg !2374
  %5 = load i32, ptr %uval.addr, align 4, !dbg !2375
  %call3 = call i32 @handle_exit_race(ptr noundef %4, i32 noundef %5, ptr noundef null) #19, !dbg !2376
  store i32 %call3, ptr %retval, align 4, !dbg !2377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2377

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %p, align 8, !dbg !2378
  %flags = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 4, !dbg !2378
  %7 = load i32, ptr %flags, align 4, !dbg !2378
  %and5 = and i32 %7, 2097152, !dbg !2378
  %tobool6 = icmp ne i32 %and5, 0, !dbg !2378
  %lnot = xor i1 %tobool6, true, !dbg !2378
  %lnot7 = xor i1 %lnot, true, !dbg !2378
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !2378
  %conv = sext i32 %lnot.ext to i64, !dbg !2378
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2378
  %tobool8 = icmp ne i64 %expval, 0, !dbg !2378
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !2380

if.then9:                                         ; preds = %if.end4
  %8 = load ptr, ptr %p, align 8, !dbg !2381
  call void @put_task_struct(ptr noundef %8) #19, !dbg !2383
  store i32 -1, ptr %retval, align 4, !dbg !2384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2384

if.end10:                                         ; preds = %if.end4
  %9 = load ptr, ptr %p, align 8, !dbg !2385
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 122, !dbg !2385
  call void @_raw_spin_lock_irq(ptr noundef %pi_lock) #19, !dbg !2385
  %10 = load ptr, ptr %p, align 8, !dbg !2386
  %futex_state = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 150, !dbg !2386
  %11 = load i32, ptr %futex_state, align 8, !dbg !2386
  %cmp = icmp ne i32 %11, 0, !dbg !2386
  %lnot12 = xor i1 %cmp, true, !dbg !2386
  %lnot14 = xor i1 %lnot12, true, !dbg !2386
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !2386
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !2386
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !2386
  %tobool18 = icmp ne i64 %expval17, 0, !dbg !2386
  br i1 %tobool18, label %if.then19, label %if.end26, !dbg !2387

if.then19:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !2388
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2350, metadata !DIExpression()), !dbg !2389
  %12 = load ptr, ptr %uaddr.addr, align 8, !dbg !2390
  %13 = load i32, ptr %uval.addr, align 4, !dbg !2391
  %14 = load ptr, ptr %p, align 8, !dbg !2392
  %call20 = call i32 @handle_exit_race(ptr noundef %12, i32 noundef %13, ptr noundef %14) #19, !dbg !2393
  store i32 %call20, ptr %ret, align 4, !dbg !2389
  %15 = load ptr, ptr %p, align 8, !dbg !2394
  %pi_lock21 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 122, !dbg !2394
  call void @_raw_spin_unlock_irq(ptr noundef %pi_lock21) #19, !dbg !2394
  %16 = load i32, ptr %ret, align 4, !dbg !2395
  %cmp22 = icmp eq i32 %16, -16, !dbg !2397
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !2398

if.then24:                                        ; preds = %if.then19
  %17 = load ptr, ptr %p, align 8, !dbg !2399
  %18 = load ptr, ptr %exiting.addr, align 8, !dbg !2400
  store ptr %17, ptr %18, align 8, !dbg !2401
  br label %if.end25, !dbg !2402

if.else:                                          ; preds = %if.then19
  %19 = load ptr, ptr %p, align 8, !dbg !2403
  call void @put_task_struct(ptr noundef %19) #19, !dbg !2404
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then24
  %20 = load i32, ptr %ret, align 4, !dbg !2405
  store i32 %20, ptr %retval, align 4, !dbg !2406
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !2407
  br label %cleanup

if.end26:                                         ; preds = %if.end10
  %21 = load ptr, ptr %p, align 8, !dbg !2408
  %22 = load ptr, ptr %key.addr, align 8, !dbg !2409
  %23 = load ptr, ptr %ps.addr, align 8, !dbg !2410
  call void @__attach_to_pi_owner(ptr noundef %21, ptr noundef %22, ptr noundef %23) #19, !dbg !2411
  %24 = load ptr, ptr %p, align 8, !dbg !2412
  %pi_lock27 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 122, !dbg !2412
  call void @_raw_spin_unlock_irq(ptr noundef %pi_lock27) #19, !dbg !2412
  %25 = load ptr, ptr %p, align 8, !dbg !2413
  call void @put_task_struct(ptr noundef %25) #19, !dbg !2414
  store i32 0, ptr %retval, align 4, !dbg !2415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2415

cleanup:                                          ; preds = %if.end26, %if.end25, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !2416
  call void @llvm.lifetime.end.p0(i64 4, ptr %pid) #18, !dbg !2416
  %26 = load i32, ptr %retval, align 4, !dbg !2416
  ret i32 %26, !dbg !2416
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fixup_pi_owner(ptr noundef %uaddr, ptr noundef %q, i32 noundef %locked) #0 align 16 !dbg !2417 {
entry:
  %retval = alloca i32, align 4
  %uaddr.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %locked.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !2421, metadata !DIExpression()), !dbg !2430
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !2422, metadata !DIExpression()), !dbg !2431
  store i32 %locked, ptr %locked.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %locked.addr, metadata !2423, metadata !DIExpression()), !dbg !2432
  %0 = load i32, ptr %locked.addr, align 4, !dbg !2433
  %tobool = icmp ne i32 %0, 0, !dbg !2433
  br i1 %tobool, label %if.then, label %if.end4, !dbg !2435

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %q.addr, align 8, !dbg !2436
  %pi_state = getelementptr inbounds %struct.futex_q, ptr %1, i32 0, i32 4, !dbg !2439
  %2 = load ptr, ptr %pi_state, align 8, !dbg !2439
  %owner = getelementptr inbounds %struct.futex_pi_state, ptr %2, i32 0, i32 2, !dbg !2440
  %3 = load ptr, ptr %owner, align 8, !dbg !2440
  %call = call ptr @get_current() #19, !dbg !2441
  %cmp = icmp ne ptr %3, %call, !dbg !2442
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2443

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %uaddr.addr, align 8, !dbg !2444
  %5 = load ptr, ptr %q.addr, align 8, !dbg !2445
  %call2 = call ptr @get_current() #19, !dbg !2446
  %call3 = call i32 @fixup_pi_state_owner(ptr noundef %4, ptr noundef %5, ptr noundef %call2) #19, !dbg !2447
  store i32 %call3, ptr %retval, align 4, !dbg !2448
  br label %return, !dbg !2448

if.end:                                           ; preds = %if.then
  store i32 1, ptr %retval, align 4, !dbg !2449
  br label %return, !dbg !2449

if.end4:                                          ; preds = %entry
  %6 = load ptr, ptr %q.addr, align 8, !dbg !2450
  %pi_state5 = getelementptr inbounds %struct.futex_q, ptr %6, i32 0, i32 4, !dbg !2452
  %7 = load ptr, ptr %pi_state5, align 8, !dbg !2452
  %owner6 = getelementptr inbounds %struct.futex_pi_state, ptr %7, i32 0, i32 2, !dbg !2453
  %8 = load ptr, ptr %owner6, align 8, !dbg !2453
  %call7 = call ptr @get_current() #19, !dbg !2454
  %cmp8 = icmp eq ptr %8, %call7, !dbg !2455
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !2456

if.then9:                                         ; preds = %if.end4
  %9 = load ptr, ptr %uaddr.addr, align 8, !dbg !2457
  %10 = load ptr, ptr %q.addr, align 8, !dbg !2458
  %call10 = call i32 @fixup_pi_state_owner(ptr noundef %9, ptr noundef %10, ptr noundef null) #19, !dbg !2459
  store i32 %call10, ptr %retval, align 4, !dbg !2460
  br label %return, !dbg !2460

if.end11:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !2461
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2424, metadata !DIExpression()), !dbg !2461
  %11 = load ptr, ptr %q.addr, align 8, !dbg !2461
  %pi_state12 = getelementptr inbounds %struct.futex_q, ptr %11, i32 0, i32 4, !dbg !2461
  %12 = load ptr, ptr %pi_state12, align 8, !dbg !2461
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %12, i32 0, i32 1, !dbg !2461
  %call13 = call ptr @rt_mutex_owner(ptr noundef %pi_mutex) #19, !dbg !2461
  %call14 = call ptr @get_current() #19, !dbg !2461
  %cmp15 = icmp eq ptr %call13, %call14, !dbg !2461
  %lnot = xor i1 %cmp15, true, !dbg !2461
  %lnot16 = xor i1 %lnot, true, !dbg !2461
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !2461
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2461
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !2462
  %tobool17 = icmp ne i32 %13, 0, !dbg !2462
  %lnot18 = xor i1 %tobool17, true, !dbg !2462
  %lnot20 = xor i1 %lnot18, true, !dbg !2462
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !2462
  %conv = sext i32 %lnot.ext21 to i64, !dbg !2462
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2462
  %tobool22 = icmp ne i64 %expval, 0, !dbg !2462
  br i1 %tobool22, label %if.then23, label %if.end33, !dbg !2461

if.then23:                                        ; preds = %if.end11
  br label %do.body, !dbg !2462

do.body:                                          ; preds = %if.then23
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !2463
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2427, metadata !DIExpression()), !dbg !2463
  store i32 2307, ptr %__flags, align 4, !dbg !2463
  br label %do.body24, !dbg !2463

do.body24:                                        ; preds = %do.body
  br label %do.cond, !dbg !2464

do.cond:                                          ; preds = %do.body24
  br label %do.end, !dbg !2464

do.end:                                           ; preds = %do.cond
  br label %do.body25, !dbg !2463

do.body25:                                        ; preds = %do.end
  %14 = load i32, ptr %__flags, align 4, !dbg !2466
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 915, i32 %14, i64 12) #18, !dbg !2466, !srcloc !2468
  br label %do.cond26, !dbg !2466

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !2466

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !2463

do.body28:                                        ; preds = %do.end27
  br label %do.cond29, !dbg !2469

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !2469

do.end30:                                         ; preds = %do.cond29
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !2462
  br label %do.cond31, !dbg !2463

do.cond31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !2463

do.end32:                                         ; preds = %do.cond31
  br label %if.end33, !dbg !2463

if.end33:                                         ; preds = %do.end32, %if.end11
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !2461
  %tobool34 = icmp ne i32 %15, 0, !dbg !2461
  %lnot35 = xor i1 %tobool34, true, !dbg !2461
  %lnot37 = xor i1 %lnot35, true, !dbg !2461
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !2461
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !2461
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !2461
  store i64 %expval40, ptr %tmp, align 8, !dbg !2462
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !2471
  %16 = load i64, ptr %tmp, align 8, !dbg !2461
  %tobool41 = icmp ne i64 %16, 0, !dbg !2471
  br i1 %tobool41, label %if.then42, label %if.end45, !dbg !2472

if.then42:                                        ; preds = %if.end33
  %17 = load ptr, ptr %uaddr.addr, align 8, !dbg !2473
  %18 = load ptr, ptr %q.addr, align 8, !dbg !2474
  %call43 = call ptr @get_current() #19, !dbg !2475
  %call44 = call i32 @fixup_pi_state_owner(ptr noundef %17, ptr noundef %18, ptr noundef %call43) #19, !dbg !2476
  store i32 %call44, ptr %retval, align 4, !dbg !2477
  br label %return, !dbg !2477

if.end45:                                         ; preds = %if.end33
  store i32 0, ptr %retval, align 4, !dbg !2478
  br label %return, !dbg !2478

return:                                           ; preds = %if.end45, %if.then42, %if.then9, %if.end, %if.then1
  %19 = load i32, ptr %retval, align 4, !dbg !2479
  ret i32 %19, !dbg !2479
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fixup_pi_state_owner(ptr noundef %uaddr, ptr noundef %q, ptr noundef %argowner) #0 align 16 !dbg !2480 {
entry:
  %uaddr.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %argowner.addr = alloca ptr, align 8
  %pi_state = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !2484, metadata !DIExpression()), !dbg !2489
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !2485, metadata !DIExpression()), !dbg !2490
  store ptr %argowner, ptr %argowner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %argowner.addr, metadata !2486, metadata !DIExpression()), !dbg !2491
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi_state) #18, !dbg !2492
  call void @llvm.dbg.declare(metadata ptr %pi_state, metadata !2487, metadata !DIExpression()), !dbg !2493
  %0 = load ptr, ptr %q.addr, align 8, !dbg !2494
  %pi_state1 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 4, !dbg !2495
  %1 = load ptr, ptr %pi_state1, align 8, !dbg !2495
  store ptr %1, ptr %pi_state, align 8, !dbg !2493
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !2496
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2488, metadata !DIExpression()), !dbg !2497
  br label %do.body, !dbg !2498

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %q.addr, align 8, !dbg !2499
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %2, i32 0, i32 2, !dbg !2499
  %3 = load ptr, ptr %lock_ptr, align 8, !dbg !2499
  br label %do.cond, !dbg !2499

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2499

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %pi_state, align 8, !dbg !2501
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %4, i32 0, i32 1, !dbg !2501
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %pi_mutex, i32 0, i32 0, !dbg !2501
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #19, !dbg !2501
  %5 = load ptr, ptr %uaddr.addr, align 8, !dbg !2502
  %6 = load ptr, ptr %q.addr, align 8, !dbg !2503
  %7 = load ptr, ptr %argowner.addr, align 8, !dbg !2504
  %call = call i32 @__fixup_pi_state_owner(ptr noundef %5, ptr noundef %6, ptr noundef %7) #19, !dbg !2505
  store i32 %call, ptr %ret, align 4, !dbg !2506
  %8 = load ptr, ptr %pi_state, align 8, !dbg !2507
  %pi_mutex2 = getelementptr inbounds %struct.futex_pi_state, ptr %8, i32 0, i32 1, !dbg !2507
  %wait_lock3 = getelementptr inbounds %struct.rt_mutex_base, ptr %pi_mutex2, i32 0, i32 0, !dbg !2507
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock3) #19, !dbg !2507
  %9 = load i32, ptr %ret, align 4, !dbg !2508
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !2509
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi_state) #18, !dbg !2509
  ret i32 %9, !dbg !2510
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rt_mutex_owner(ptr noundef %lock) #6 align 16 !dbg !2511 {
entry:
  %lock.addr = alloca ptr, align 8
  %owner = alloca i64, align 8
  %tmp = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2515, metadata !DIExpression()), !dbg !2517
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #18, !dbg !2518
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !2516, metadata !DIExpression()), !dbg !2519
  br label %do.body, !dbg !2520

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2522

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2522

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2520
  %owner1 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2, !dbg !2520
  %1 = load volatile ptr, ptr %owner1, align 8, !dbg !2520
  store ptr %1, ptr %tmp, align 8, !dbg !2522
  %2 = load ptr, ptr %tmp, align 8, !dbg !2520
  %3 = ptrtoint ptr %2 to i64, !dbg !2524
  store i64 %3, ptr %owner, align 8, !dbg !2519
  %4 = load i64, ptr %owner, align 8, !dbg !2525
  %and = and i64 %4, -2, !dbg !2526
  %5 = inttoptr i64 %and to ptr, !dbg !2527
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #18, !dbg !2528
  ret ptr %5, !dbg !2529
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @futex_lock_pi(ptr noundef %uaddr, i32 noundef %flags, ptr noundef %time, i32 noundef %trylock) #0 align 16 !dbg !2530 {
entry:
  %retval = alloca i32, align 4
  %uaddr.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %time.addr = alloca ptr, align 8
  %trylock.addr = alloca i32, align 4
  %timeout = alloca %struct.hrtimer_sleeper, align 8
  %to = alloca ptr, align 8
  %exiting = alloca ptr, align 8
  %rt_waiter = alloca %struct.rt_mutex_waiter, align 8
  %hb = alloca ptr, align 8
  %q = alloca %struct.futex_q, align 8
  %res = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp52 = alloca i64, align 8
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !2535, metadata !DIExpression()), !dbg !2564
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2536, metadata !DIExpression()), !dbg !2565
  store ptr %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !2537, metadata !DIExpression()), !dbg !2566
  store i32 %trylock, ptr %trylock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trylock.addr, metadata !2538, metadata !DIExpression()), !dbg !2567
  call void @llvm.lifetime.start.p0(i64 72, ptr %timeout) #18, !dbg !2568
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !2539, metadata !DIExpression()), !dbg !2569
  call void @llvm.lifetime.start.p0(i64 8, ptr %to) #18, !dbg !2568
  call void @llvm.dbg.declare(metadata ptr %to, metadata !2544, metadata !DIExpression()), !dbg !2570
  call void @llvm.lifetime.start.p0(i64 8, ptr %exiting) #18, !dbg !2571
  call void @llvm.dbg.declare(metadata ptr %exiting, metadata !2546, metadata !DIExpression()), !dbg !2572
  store ptr null, ptr %exiting, align 8, !dbg !2572
  call void @llvm.lifetime.start.p0(i64 112, ptr %rt_waiter) #18, !dbg !2573
  call void @llvm.dbg.declare(metadata ptr %rt_waiter, metadata !2547, metadata !DIExpression()), !dbg !2574
  call void @llvm.lifetime.start.p0(i64 8, ptr %hb) #18, !dbg !2575
  call void @llvm.dbg.declare(metadata ptr %hb, metadata !2548, metadata !DIExpression()), !dbg !2576
  call void @llvm.lifetime.start.p0(i64 112, ptr %q) #18, !dbg !2577
  call void @llvm.dbg.declare(metadata ptr %q, metadata !2549, metadata !DIExpression()), !dbg !2578
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q, ptr align 8 @futex_q_init, i64 112, i1 false), !dbg !2579
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #18, !dbg !2580
  call void @llvm.dbg.declare(metadata ptr %res, metadata !2550, metadata !DIExpression()), !dbg !2581
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !2580
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2551, metadata !DIExpression()), !dbg !2582
  %call = call i32 @refill_pi_state_cache() #19, !dbg !2583
  %tobool = icmp ne i32 %call, 0, !dbg !2583
  br i1 %tobool, label %if.then, label %if.end, !dbg !2585

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !2586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup132, !dbg !2586

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %time.addr, align 8, !dbg !2587
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2588
  %call1 = call ptr @futex_setup_timer(ptr noundef %0, ptr noundef %timeout, i32 noundef %1, i64 noundef 0) #19, !dbg !2589
  store ptr %call1, ptr %to, align 8, !dbg !2590
  br label %retry, !dbg !2591

retry:                                            ; preds = %if.end131, %sw.bb22, %if.end
  call void @llvm.dbg.label(metadata !2552), !dbg !2592
  %2 = load ptr, ptr %uaddr.addr, align 8, !dbg !2593
  %3 = load i32, ptr %flags.addr, align 4, !dbg !2594
  %and = and i32 %3, 1, !dbg !2595
  %tobool2 = icmp ne i32 %and, 0, !dbg !2594
  %key = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 3, !dbg !2596
  %call3 = call i32 @get_futex_key(ptr noundef %2, i1 noundef zeroext %tobool2, ptr noundef %key, i32 noundef 1) #19, !dbg !2597
  store i32 %call3, ptr %ret, align 4, !dbg !2598
  %4 = load i32, ptr %ret, align 4, !dbg !2599
  %cmp = icmp ne i32 %4, 0, !dbg !2599
  %lnot = xor i1 %cmp, true, !dbg !2599
  %lnot4 = xor i1 %lnot, true, !dbg !2599
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2599
  %conv = sext i32 %lnot.ext to i64, !dbg !2599
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2599
  %tobool5 = icmp ne i64 %expval, 0, !dbg !2599
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2601

if.then6:                                         ; preds = %retry
  br label %out, !dbg !2602

if.end7:                                          ; preds = %retry
  br label %retry_private, !dbg !2599

retry_private:                                    ; preds = %if.then130, %if.end7
  call void @llvm.dbg.label(metadata !2553), !dbg !2603
  %call8 = call ptr @futex_q_lock(ptr noundef %q) #19, !dbg !2604
  store ptr %call8, ptr %hb, align 8, !dbg !2605
  %5 = load ptr, ptr %uaddr.addr, align 8, !dbg !2606
  %6 = load ptr, ptr %hb, align 8, !dbg !2607
  %key9 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 3, !dbg !2608
  %pi_state = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4, !dbg !2609
  %call10 = call ptr @get_current() #19, !dbg !2610
  %call11 = call i32 @futex_lock_pi_atomic(ptr noundef %5, ptr noundef %6, ptr noundef %key9, ptr noundef %pi_state, ptr noundef %call10, ptr noundef %exiting, i32 noundef 0) #19, !dbg !2611
  store i32 %call11, ptr %ret, align 4, !dbg !2612
  %7 = load i32, ptr %ret, align 4, !dbg !2613
  %tobool12 = icmp ne i32 %7, 0, !dbg !2613
  %lnot13 = xor i1 %tobool12, true, !dbg !2613
  %lnot15 = xor i1 %lnot13, true, !dbg !2613
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !2613
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !2613
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !2613
  %tobool19 = icmp ne i64 %expval18, 0, !dbg !2613
  br i1 %tobool19, label %if.then20, label %if.end24, !dbg !2615

if.then20:                                        ; preds = %retry_private
  %8 = load i32, ptr %ret, align 4, !dbg !2616
  switch i32 %8, label %sw.default [
    i32 1, label %sw.bb
    i32 -14, label %sw.bb21
    i32 -16, label %sw.bb22
    i32 -11, label %sw.bb22
  ], !dbg !2618

sw.bb:                                            ; preds = %if.then20
  store i32 0, ptr %ret, align 4, !dbg !2619
  br label %out_unlock_put_key, !dbg !2621

sw.bb21:                                          ; preds = %if.then20
  br label %uaddr_faulted, !dbg !2622

sw.bb22:                                          ; preds = %if.then20, %if.then20
  %9 = load ptr, ptr %hb, align 8, !dbg !2623
  call void @futex_q_unlock(ptr noundef %9) #19, !dbg !2624
  %10 = load i32, ptr %ret, align 4, !dbg !2625
  %11 = load ptr, ptr %exiting, align 8, !dbg !2626
  call void @wait_for_owner_exiting(i32 noundef %10, ptr noundef %11) #19, !dbg !2627
  call void @__might_resched(ptr noundef @.str, i32 noundef 984, i32 noundef 0) #19, !dbg !2628
  %call23 = call i32 @_cond_resched() #19, !dbg !2628
  store i32 %call23, ptr %tmp, align 4, !dbg !2628
  %12 = load i32, ptr %tmp, align 4, !dbg !2628
  br label %retry, !dbg !2630

sw.default:                                       ; preds = %if.then20
  br label %out_unlock_put_key, !dbg !2631

if.end24:                                         ; preds = %retry_private
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !2632
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2554, metadata !DIExpression()), !dbg !2632
  %pi_state25 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4, !dbg !2632
  %13 = load ptr, ptr %pi_state25, align 8, !dbg !2632
  %tobool26 = icmp ne ptr %13, null, !dbg !2632
  %lnot27 = xor i1 %tobool26, true, !dbg !2632
  %lnot29 = xor i1 %lnot27, true, !dbg !2632
  %lnot31 = xor i1 %lnot29, true, !dbg !2632
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !2632
  store i32 %lnot.ext32, ptr %__ret_warn_on, align 4, !dbg !2632
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !2633
  %tobool33 = icmp ne i32 %14, 0, !dbg !2633
  %lnot34 = xor i1 %tobool33, true, !dbg !2633
  %lnot36 = xor i1 %lnot34, true, !dbg !2633
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !2633
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !2633
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 0), !dbg !2633
  %tobool40 = icmp ne i64 %expval39, 0, !dbg !2633
  br i1 %tobool40, label %if.then41, label %if.end51, !dbg !2632

if.then41:                                        ; preds = %if.end24
  br label %do.body, !dbg !2633

do.body:                                          ; preds = %if.then41
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !2634
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2556, metadata !DIExpression()), !dbg !2634
  store i32 2305, ptr %__flags, align 4, !dbg !2634
  br label %do.body42, !dbg !2634

do.body42:                                        ; preds = %do.body
  br label %do.cond, !dbg !2635

do.cond:                                          ; preds = %do.body42
  br label %do.end, !dbg !2635

do.end:                                           ; preds = %do.cond
  br label %do.body43, !dbg !2634

do.body43:                                        ; preds = %do.end
  %15 = load i32, ptr %__flags, align 4, !dbg !2637
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 991, i32 %15, i64 12) #18, !dbg !2637, !srcloc !2639
  br label %do.cond44, !dbg !2637

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !2637

do.end45:                                         ; preds = %do.cond44
  br label %do.body46, !dbg !2634

do.body46:                                        ; preds = %do.end45
  br label %do.cond47, !dbg !2640

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !2640

do.end48:                                         ; preds = %do.cond47
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !2633
  br label %do.cond49, !dbg !2634

do.cond49:                                        ; preds = %do.end48
  br label %do.end50, !dbg !2634

do.end50:                                         ; preds = %do.cond49
  br label %if.end51, !dbg !2634

if.end51:                                         ; preds = %do.end50, %if.end24
  %16 = load i32, ptr %__ret_warn_on, align 4, !dbg !2632
  %tobool53 = icmp ne i32 %16, 0, !dbg !2632
  %lnot54 = xor i1 %tobool53, true, !dbg !2632
  %lnot56 = xor i1 %lnot54, true, !dbg !2632
  %lnot.ext57 = zext i1 %lnot56 to i32, !dbg !2632
  %conv58 = sext i32 %lnot.ext57 to i64, !dbg !2632
  %expval59 = call i64 @llvm.expect.i64(i64 %conv58, i64 0), !dbg !2632
  store i64 %expval59, ptr %tmp52, align 8, !dbg !2633
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !2642
  %17 = load i64, ptr %tmp52, align 8, !dbg !2632
  %18 = load ptr, ptr %hb, align 8, !dbg !2643
  call void @__futex_queue(ptr noundef %q, ptr noundef %18) #19, !dbg !2644
  %19 = load i32, ptr %trylock.addr, align 4, !dbg !2645
  %tobool60 = icmp ne i32 %19, 0, !dbg !2645
  br i1 %tobool60, label %if.then61, label %if.end65, !dbg !2647

if.then61:                                        ; preds = %if.end51
  %pi_state62 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4, !dbg !2648
  %20 = load ptr, ptr %pi_state62, align 8, !dbg !2648
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %20, i32 0, i32 1, !dbg !2650
  %call63 = call i32 @rt_mutex_futex_trylock(ptr noundef %pi_mutex) #19, !dbg !2651
  store i32 %call63, ptr %ret, align 4, !dbg !2652
  %21 = load i32, ptr %ret, align 4, !dbg !2653
  %tobool64 = icmp ne i32 %21, 0, !dbg !2653
  %22 = zext i1 %tobool64 to i64, !dbg !2653
  %cond = select i1 %tobool64, i32 0, i32 -11, !dbg !2653
  store i32 %cond, ptr %ret, align 4, !dbg !2654
  br label %no_block, !dbg !2655

if.end65:                                         ; preds = %if.end51
  call void @rt_mutex_init_waiter(ptr noundef %rt_waiter) #19, !dbg !2656
  %pi_state66 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4, !dbg !2657
  %23 = load ptr, ptr %pi_state66, align 8, !dbg !2657
  %pi_mutex67 = getelementptr inbounds %struct.futex_pi_state, ptr %23, i32 0, i32 1, !dbg !2657
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %pi_mutex67, i32 0, i32 0, !dbg !2657
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #19, !dbg !2657
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2, !dbg !2658
  %24 = load ptr, ptr %lock_ptr, align 8, !dbg !2658
  call void @spin_unlock(ptr noundef %24) #19, !dbg !2659
  %pi_state68 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4, !dbg !2660
  %25 = load ptr, ptr %pi_state68, align 8, !dbg !2660
  %pi_mutex69 = getelementptr inbounds %struct.futex_pi_state, ptr %25, i32 0, i32 1, !dbg !2661
  %call70 = call ptr @get_current() #19, !dbg !2662
  %call71 = call i32 @__rt_mutex_start_proxy_lock(ptr noundef %pi_mutex69, ptr noundef %rt_waiter, ptr noundef %call70) #19, !dbg !2663
  store i32 %call71, ptr %ret, align 4, !dbg !2664
  %pi_state72 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4, !dbg !2665
  %26 = load ptr, ptr %pi_state72, align 8, !dbg !2665
  %pi_mutex73 = getelementptr inbounds %struct.futex_pi_state, ptr %26, i32 0, i32 1, !dbg !2665
  %wait_lock74 = getelementptr inbounds %struct.rt_mutex_base, ptr %pi_mutex73, i32 0, i32 0, !dbg !2665
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock74) #19, !dbg !2665
  %27 = load i32, ptr %ret, align 4, !dbg !2666
  %tobool75 = icmp ne i32 %27, 0, !dbg !2666
  br i1 %tobool75, label %if.then76, label %if.end81, !dbg !2668

if.then76:                                        ; preds = %if.end65
  %28 = load i32, ptr %ret, align 4, !dbg !2669
  %cmp77 = icmp eq i32 %28, 1, !dbg !2672
  br i1 %cmp77, label %if.then79, label %if.end80, !dbg !2673

if.then79:                                        ; preds = %if.then76
  store i32 0, ptr %ret, align 4, !dbg !2674
  br label %if.end80, !dbg !2675

if.end80:                                         ; preds = %if.then79, %if.then76
  br label %cleanup, !dbg !2676

if.end81:                                         ; preds = %if.end65
  %29 = load ptr, ptr %to, align 8, !dbg !2677
  %tobool82 = icmp ne ptr %29, null, !dbg !2677
  %lnot83 = xor i1 %tobool82, true, !dbg !2677
  %lnot85 = xor i1 %lnot83, true, !dbg !2677
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !2677
  %conv87 = sext i32 %lnot.ext86 to i64, !dbg !2677
  %expval88 = call i64 @llvm.expect.i64(i64 %conv87, i64 0), !dbg !2677
  %tobool89 = icmp ne i64 %expval88, 0, !dbg !2677
  br i1 %tobool89, label %if.then90, label %if.end91, !dbg !2679

if.then90:                                        ; preds = %if.end81
  %30 = load ptr, ptr %to, align 8, !dbg !2680
  call void @hrtimer_sleeper_start_expires(ptr noundef %30, i32 noundef 0) #19, !dbg !2681
  br label %if.end91, !dbg !2681

if.end91:                                         ; preds = %if.then90, %if.end81
  %pi_state92 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4, !dbg !2682
  %31 = load ptr, ptr %pi_state92, align 8, !dbg !2682
  %pi_mutex93 = getelementptr inbounds %struct.futex_pi_state, ptr %31, i32 0, i32 1, !dbg !2683
  %32 = load ptr, ptr %to, align 8, !dbg !2684
  %call94 = call i32 @rt_mutex_wait_proxy_lock(ptr noundef %pi_mutex93, ptr noundef %32, ptr noundef %rt_waiter) #19, !dbg !2685
  store i32 %call94, ptr %ret, align 4, !dbg !2686
  br label %cleanup, !dbg !2687

cleanup:                                          ; preds = %if.end91, %if.end80
  call void @llvm.dbg.label(metadata !2559), !dbg !2688
  %lock_ptr95 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2, !dbg !2689
  %33 = load ptr, ptr %lock_ptr95, align 8, !dbg !2689
  call void @spin_lock(ptr noundef %33) #19, !dbg !2690
  %34 = load i32, ptr %ret, align 4, !dbg !2691
  %tobool96 = icmp ne i32 %34, 0, !dbg !2691
  br i1 %tobool96, label %land.lhs.true, label %if.end101, !dbg !2693

land.lhs.true:                                    ; preds = %cleanup
  %pi_state97 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4, !dbg !2694
  %35 = load ptr, ptr %pi_state97, align 8, !dbg !2694
  %pi_mutex98 = getelementptr inbounds %struct.futex_pi_state, ptr %35, i32 0, i32 1, !dbg !2695
  %call99 = call zeroext i1 @rt_mutex_cleanup_proxy_lock(ptr noundef %pi_mutex98, ptr noundef %rt_waiter) #19, !dbg !2696
  br i1 %call99, label %if.end101, label %if.then100, !dbg !2697

if.then100:                                       ; preds = %land.lhs.true
  store i32 0, ptr %ret, align 4, !dbg !2698
  br label %if.end101, !dbg !2699

if.end101:                                        ; preds = %if.then100, %land.lhs.true, %cleanup
  br label %no_block, !dbg !2700

no_block:                                         ; preds = %if.end101, %if.then61
  call void @llvm.dbg.label(metadata !2560), !dbg !2701
  %36 = load ptr, ptr %uaddr.addr, align 8, !dbg !2702
  %37 = load i32, ptr %ret, align 4, !dbg !2703
  %tobool102 = icmp ne i32 %37, 0, !dbg !2704
  %lnot103 = xor i1 %tobool102, true, !dbg !2704
  %lnot.ext104 = zext i1 %lnot103 to i32, !dbg !2704
  %call105 = call i32 @fixup_pi_owner(ptr noundef %36, ptr noundef %q, i32 noundef %lnot.ext104) #19, !dbg !2705
  store i32 %call105, ptr %res, align 4, !dbg !2706
  %38 = load i32, ptr %res, align 4, !dbg !2707
  %tobool106 = icmp ne i32 %38, 0, !dbg !2707
  br i1 %tobool106, label %if.then107, label %if.end111, !dbg !2709

if.then107:                                       ; preds = %no_block
  %39 = load i32, ptr %res, align 4, !dbg !2710
  %cmp108 = icmp slt i32 %39, 0, !dbg !2711
  br i1 %cmp108, label %cond.true, label %cond.false, !dbg !2712

cond.true:                                        ; preds = %if.then107
  %40 = load i32, ptr %res, align 4, !dbg !2713
  br label %cond.end, !dbg !2712

cond.false:                                       ; preds = %if.then107
  br label %cond.end, !dbg !2712

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond110 = phi i32 [ %40, %cond.true ], [ 0, %cond.false ], !dbg !2712
  store i32 %cond110, ptr %ret, align 4, !dbg !2714
  br label %if.end111, !dbg !2715

if.end111:                                        ; preds = %cond.end, %no_block
  call void @futex_unqueue_pi(ptr noundef %q) #19, !dbg !2716
  %lock_ptr112 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2, !dbg !2717
  %41 = load ptr, ptr %lock_ptr112, align 8, !dbg !2717
  call void @spin_unlock(ptr noundef %41) #19, !dbg !2718
  br label %out, !dbg !2719

out_unlock_put_key:                               ; preds = %sw.default, %sw.bb
  call void @llvm.dbg.label(metadata !2561), !dbg !2720
  %42 = load ptr, ptr %hb, align 8, !dbg !2721
  call void @futex_q_unlock(ptr noundef %42) #19, !dbg !2722
  br label %out, !dbg !2722

out:                                              ; preds = %if.then126, %out_unlock_put_key, %if.end111, %if.then6
  call void @llvm.dbg.label(metadata !2562), !dbg !2723
  %43 = load ptr, ptr %to, align 8, !dbg !2724
  %tobool113 = icmp ne ptr %43, null, !dbg !2724
  br i1 %tobool113, label %if.then114, label %if.end117, !dbg !2726

if.then114:                                       ; preds = %out
  %44 = load ptr, ptr %to, align 8, !dbg !2727
  %timer = getelementptr inbounds %struct.hrtimer_sleeper, ptr %44, i32 0, i32 0, !dbg !2729
  %call115 = call i32 @hrtimer_cancel(ptr noundef %timer) #19, !dbg !2730
  %45 = load ptr, ptr %to, align 8, !dbg !2731
  %timer116 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %45, i32 0, i32 0, !dbg !2732
  call void @destroy_hrtimer_on_stack(ptr noundef %timer116) #19, !dbg !2733
  br label %if.end117, !dbg !2734

if.end117:                                        ; preds = %if.then114, %out
  %46 = load i32, ptr %ret, align 4, !dbg !2735
  %cmp118 = icmp ne i32 %46, -4, !dbg !2736
  br i1 %cmp118, label %cond.true120, label %cond.false121, !dbg !2735

cond.true120:                                     ; preds = %if.end117
  %47 = load i32, ptr %ret, align 4, !dbg !2737
  br label %cond.end122, !dbg !2735

cond.false121:                                    ; preds = %if.end117
  br label %cond.end122, !dbg !2735

cond.end122:                                      ; preds = %cond.false121, %cond.true120
  %cond123 = phi i32 [ %47, %cond.true120 ], [ -513, %cond.false121 ], !dbg !2735
  store i32 %cond123, ptr %retval, align 4, !dbg !2738
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup132, !dbg !2738

uaddr_faulted:                                    ; preds = %sw.bb21
  call void @llvm.dbg.label(metadata !2563), !dbg !2739
  %48 = load ptr, ptr %hb, align 8, !dbg !2740
  call void @futex_q_unlock(ptr noundef %48) #19, !dbg !2741
  %49 = load ptr, ptr %uaddr.addr, align 8, !dbg !2742
  %call124 = call i32 @fault_in_user_writeable(ptr noundef %49) #19, !dbg !2743
  store i32 %call124, ptr %ret, align 4, !dbg !2744
  %50 = load i32, ptr %ret, align 4, !dbg !2745
  %tobool125 = icmp ne i32 %50, 0, !dbg !2745
  br i1 %tobool125, label %if.then126, label %if.end127, !dbg !2747

if.then126:                                       ; preds = %uaddr_faulted
  br label %out, !dbg !2748

if.end127:                                        ; preds = %uaddr_faulted
  %51 = load i32, ptr %flags.addr, align 4, !dbg !2749
  %and128 = and i32 %51, 1, !dbg !2751
  %tobool129 = icmp ne i32 %and128, 0, !dbg !2751
  br i1 %tobool129, label %if.end131, label %if.then130, !dbg !2752

if.then130:                                       ; preds = %if.end127
  br label %retry_private, !dbg !2753

if.end131:                                        ; preds = %if.end127
  br label %retry, !dbg !2754

cleanup132:                                       ; preds = %cond.end122, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !2755
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #18, !dbg !2755
  call void @llvm.lifetime.end.p0(i64 112, ptr %q) #18, !dbg !2755
  call void @llvm.lifetime.end.p0(i64 8, ptr %hb) #18, !dbg !2755
  call void @llvm.lifetime.end.p0(i64 112, ptr %rt_waiter) #18, !dbg !2755
  call void @llvm.lifetime.end.p0(i64 8, ptr %exiting) #18, !dbg !2755
  call void @llvm.lifetime.end.p0(i64 8, ptr %to) #18, !dbg !2755
  call void @llvm.lifetime.end.p0(i64 72, ptr %timeout) #18, !dbg !2755
  %52 = load i32, ptr %retval, align 4, !dbg !2755
  ret i32 %52, !dbg !2755
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2756 dso_local ptr @futex_setup_timer(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2759 dso_local i32 @get_futex_key(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2762 dso_local ptr @futex_q_lock(ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2765 dso_local void @futex_q_unlock(ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2768 dso_local void @wait_for_owner_exiting(i32 noundef, ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #6 align 16 !dbg !2771 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !2778, metadata !DIExpression()), !dbg !2781
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !2779, metadata !DIExpression()), !dbg !2782
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !2780, metadata !DIExpression()), !dbg !2783
  ret void, !dbg !2784
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #3 align 16 !dbg !1650 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !2785
  %0 = load ptr, ptr %tmp, align 8, !dbg !2785
  %call = call i32 %0() #19, !dbg !2787
  ret i32 %call, !dbg !2788
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2789 dso_local void @__futex_queue(ptr noundef, ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2792 dso_local i32 @rt_mutex_futex_trylock(ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rt_mutex_init_waiter(ptr noundef %waiter) #6 align 16 !dbg !2795 {
entry:
  %waiter.addr = alloca ptr, align 8
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !2799, metadata !DIExpression()), !dbg !2800
  %0 = load ptr, ptr %waiter.addr, align 8, !dbg !2801
  call void @debug_rt_mutex_init_waiter(ptr noundef %0) #19, !dbg !2802
  %1 = load ptr, ptr %waiter.addr, align 8, !dbg !2803
  %pi_tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 1, !dbg !2803
  %entry1 = getelementptr inbounds %struct.rt_waiter_node, ptr %pi_tree, i32 0, i32 0, !dbg !2803
  %2 = ptrtoint ptr %entry1 to i64, !dbg !2803
  %3 = load ptr, ptr %waiter.addr, align 8, !dbg !2803
  %pi_tree2 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %3, i32 0, i32 1, !dbg !2803
  %entry3 = getelementptr inbounds %struct.rt_waiter_node, ptr %pi_tree2, i32 0, i32 0, !dbg !2803
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %entry3, i32 0, i32 0, !dbg !2803
  store i64 %2, ptr %__rb_parent_color, align 8, !dbg !2803
  %4 = load ptr, ptr %waiter.addr, align 8, !dbg !2804
  %tree = getelementptr inbounds %struct.rt_mutex_waiter, ptr %4, i32 0, i32 0, !dbg !2804
  %entry4 = getelementptr inbounds %struct.rt_waiter_node, ptr %tree, i32 0, i32 0, !dbg !2804
  %5 = ptrtoint ptr %entry4 to i64, !dbg !2804
  %6 = load ptr, ptr %waiter.addr, align 8, !dbg !2804
  %tree5 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %6, i32 0, i32 0, !dbg !2804
  %entry6 = getelementptr inbounds %struct.rt_waiter_node, ptr %tree5, i32 0, i32 0, !dbg !2804
  %__rb_parent_color7 = getelementptr inbounds %struct.rb_node, ptr %entry6, i32 0, i32 0, !dbg !2804
  store i64 %5, ptr %__rb_parent_color7, align 8, !dbg !2804
  %7 = load ptr, ptr %waiter.addr, align 8, !dbg !2805
  %wake_state = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 4, !dbg !2806
  store i32 3, ptr %wake_state, align 8, !dbg !2807
  %8 = load ptr, ptr %waiter.addr, align 8, !dbg !2808
  %task = getelementptr inbounds %struct.rt_mutex_waiter, ptr %8, i32 0, i32 2, !dbg !2809
  store ptr null, ptr %task, align 8, !dbg !2810
  ret void, !dbg !2811
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #3 align 16 !dbg !2812 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2817, metadata !DIExpression()), !dbg !2818
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2819
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2819
  call void @_raw_spin_unlock(ptr noundef %1) #19, !dbg !2819
  ret void, !dbg !2820
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2821 dso_local i32 @__rt_mutex_start_proxy_lock(ptr noundef, ptr noundef, ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2824 dso_local void @hrtimer_sleeper_start_expires(ptr noundef, i32 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2827 dso_local i32 @rt_mutex_wait_proxy_lock(ptr noundef, ptr noundef, ptr noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #3 align 16 !dbg !2830 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2832, metadata !DIExpression()), !dbg !2833
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2834
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2834
  call void @_raw_spin_lock(ptr noundef %1) #19, !dbg !2834
  ret void, !dbg !2835
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2836 dso_local zeroext i1 @rt_mutex_cleanup_proxy_lock(ptr noundef, ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2839 dso_local void @futex_unqueue_pi(ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2842 dso_local i32 @hrtimer_cancel(ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @destroy_hrtimer_on_stack(ptr noundef %timer) #6 align 16 !dbg !2845 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !2849, metadata !DIExpression()), !dbg !2850
  ret void, !dbg !2851
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2852 dso_local i32 @fault_in_user_writeable(ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @futex_unlock_pi(ptr noundef %uaddr, i32 noundef %flags) #0 align 16 !dbg !2855 {
entry:
  %retval = alloca i32, align 4
  %uaddr.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %curval = alloca i32, align 4
  %uval = alloca i32, align 4
  %vpid = alloca i32, align 4
  %key = alloca %union.futex_key, align 8
  %hb = alloca ptr, align 8
  %top_waiter = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp4 = alloca i32, align 4
  %tmp6 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %pi_state = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp65 = alloca i64, align 8
  %tmp77 = alloca i32, align 4
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !2859, metadata !DIExpression()), !dbg !2890
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2860, metadata !DIExpression()), !dbg !2891
  call void @llvm.lifetime.start.p0(i64 4, ptr %curval) #18, !dbg !2892
  call void @llvm.dbg.declare(metadata ptr %curval, metadata !2861, metadata !DIExpression()), !dbg !2893
  call void @llvm.lifetime.start.p0(i64 4, ptr %uval) #18, !dbg !2892
  call void @llvm.dbg.declare(metadata ptr %uval, metadata !2862, metadata !DIExpression()), !dbg !2894
  call void @llvm.lifetime.start.p0(i64 4, ptr %vpid) #18, !dbg !2892
  call void @llvm.dbg.declare(metadata ptr %vpid, metadata !2863, metadata !DIExpression()), !dbg !2895
  %call = call ptr @get_current() #19, !dbg !2896
  %call1 = call i32 @task_pid_vnr(ptr noundef %call) #19, !dbg !2897
  store i32 %call1, ptr %vpid, align 4, !dbg !2895
  call void @llvm.lifetime.start.p0(i64 24, ptr %key) #18, !dbg !2898
  call void @llvm.dbg.declare(metadata ptr %key, metadata !2864, metadata !DIExpression()), !dbg !2899
  call void @llvm.memset.p0.i64(ptr align 8 %key, i8 0, i64 24, i1 false), !dbg !2899
  call void @llvm.lifetime.start.p0(i64 8, ptr %hb) #18, !dbg !2900
  call void @llvm.dbg.declare(metadata ptr %hb, metadata !2865, metadata !DIExpression()), !dbg !2901
  call void @llvm.lifetime.start.p0(i64 8, ptr %top_waiter) #18, !dbg !2902
  call void @llvm.dbg.declare(metadata ptr %top_waiter, metadata !2866, metadata !DIExpression()), !dbg !2903
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !2904
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2867, metadata !DIExpression()), !dbg !2905
  br label %retry, !dbg !2906

retry:                                            ; preds = %if.then81, %pi_retry, %entry
  call void @llvm.dbg.label(metadata !2868), !dbg !2908
  call void @might_fault() #19, !dbg !2909
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #18, !dbg !2910
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !2869, metadata !DIExpression()), !dbg !2910
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #18, !dbg !2910
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !2873, metadata !DIExpression()), !dbg !2910
  %0 = call i64 @llvm.read_register.i64(metadata !1662), !dbg !2910
  %1 = load ptr, ptr %uaddr.addr, align 8, !dbg !2910
  %2 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %1, i64 4, i64 %0) #18, !dbg !2910, !srcloc !2911
  %asmresult = extractvalue { ptr, i32, i64 } %2, 0, !dbg !2910
  %asmresult2 = extractvalue { ptr, i32, i64 } %2, 1, !dbg !2910
  %asmresult3 = extractvalue { ptr, i32, i64 } %2, 2, !dbg !2910
  %3 = ptrtoint ptr %asmresult to i64, !dbg !2910
  %4 = trunc i64 %3 to i32, !dbg !2910
  store i32 %4, ptr %__ret_gu, align 4, !dbg !2910
  store i32 %asmresult2, ptr %__val_gu, align 4, !dbg !2910
  call void @llvm.write_register.i64(metadata !1662, i64 %asmresult3), !dbg !2910
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #18, !dbg !2912
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !2874, metadata !DIExpression()), !dbg !2912
  %5 = load i32, ptr %__val_gu, align 4, !dbg !2912
  %conv = zext i32 %5 to i64, !dbg !2912
  store i64 %conv, ptr %__tmp, align 8, !dbg !2912
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #19, !dbg !2912
  %6 = load i64, ptr %__tmp, align 8, !dbg !2912
  %conv5 = trunc i64 %6 to i32, !dbg !2912
  store i32 %conv5, ptr %__val_gu, align 4, !dbg !2912
  store i32 %conv5, ptr %tmp4, align 4, !dbg !2912
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #18, !dbg !2910
  %7 = load i32, ptr %tmp4, align 4, !dbg !2912
  %8 = load i32, ptr %__val_gu, align 4, !dbg !2910
  store i32 %8, ptr %uval, align 4, !dbg !2910
  %9 = load i32, ptr %__ret_gu, align 4, !dbg !2910
  %conv7 = sext i32 %9 to i64, !dbg !2910
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !2910
  store i64 %expval, ptr %tmp6, align 8, !dbg !2910
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #18, !dbg !2909
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #18, !dbg !2909
  %10 = load i64, ptr %tmp6, align 8, !dbg !2910
  store i64 %10, ptr %tmp, align 8, !dbg !2909
  %11 = load i64, ptr %tmp, align 8, !dbg !2909
  %tobool = icmp ne i64 %11, 0, !dbg !2913
  br i1 %tobool, label %if.then, label %if.end, !dbg !2914

if.then:                                          ; preds = %retry
  store i32 -14, ptr %retval, align 4, !dbg !2915
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !2915

if.end:                                           ; preds = %retry
  %12 = load i32, ptr %uval, align 4, !dbg !2916
  %and = and i32 %12, 1073741823, !dbg !2918
  %13 = load i32, ptr %vpid, align 4, !dbg !2919
  %cmp = icmp ne i32 %and, %13, !dbg !2920
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !2921

if.then9:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !2922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !2922

if.end10:                                         ; preds = %if.end
  %14 = load ptr, ptr %uaddr.addr, align 8, !dbg !2923
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2924
  %and11 = and i32 %15, 1, !dbg !2925
  %tobool12 = icmp ne i32 %and11, 0, !dbg !2924
  %call13 = call i32 @get_futex_key(ptr noundef %14, i1 noundef zeroext %tobool12, ptr noundef %key, i32 noundef 1) #19, !dbg !2926
  store i32 %call13, ptr %ret, align 4, !dbg !2927
  %16 = load i32, ptr %ret, align 4, !dbg !2928
  %tobool14 = icmp ne i32 %16, 0, !dbg !2928
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2930

if.then15:                                        ; preds = %if.end10
  %17 = load i32, ptr %ret, align 4, !dbg !2931
  store i32 %17, ptr %retval, align 4, !dbg !2932
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !2932

if.end16:                                         ; preds = %if.end10
  %call17 = call ptr @futex_hash(ptr noundef %key) #19, !dbg !2933
  store ptr %call17, ptr %hb, align 8, !dbg !2934
  %18 = load ptr, ptr %hb, align 8, !dbg !2935
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %18, i32 0, i32 1, !dbg !2936
  call void @spin_lock(ptr noundef %lock) #19, !dbg !2937
  %19 = load ptr, ptr %hb, align 8, !dbg !2938
  %call18 = call ptr @futex_top_waiter(ptr noundef %19, ptr noundef %key) #19, !dbg !2939
  store ptr %call18, ptr %top_waiter, align 8, !dbg !2940
  %20 = load ptr, ptr %top_waiter, align 8, !dbg !2941
  %tobool19 = icmp ne ptr %20, null, !dbg !2941
  br i1 %tobool19, label %if.then20, label %if.end43, !dbg !2942

if.then20:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi_state) #18, !dbg !2943
  call void @llvm.dbg.declare(metadata ptr %pi_state, metadata !2876, metadata !DIExpression()), !dbg !2944
  %21 = load ptr, ptr %top_waiter, align 8, !dbg !2945
  %pi_state21 = getelementptr inbounds %struct.futex_q, ptr %21, i32 0, i32 4, !dbg !2946
  %22 = load ptr, ptr %pi_state21, align 8, !dbg !2946
  store ptr %22, ptr %pi_state, align 8, !dbg !2944
  store i32 -22, ptr %ret, align 4, !dbg !2947
  %23 = load ptr, ptr %pi_state, align 8, !dbg !2948
  %tobool22 = icmp ne ptr %23, null, !dbg !2948
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !2950

if.then23:                                        ; preds = %if.then20
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2951

if.end24:                                         ; preds = %if.then20
  %24 = load ptr, ptr %pi_state, align 8, !dbg !2952
  %owner = getelementptr inbounds %struct.futex_pi_state, ptr %24, i32 0, i32 2, !dbg !2954
  %25 = load ptr, ptr %owner, align 8, !dbg !2954
  %call25 = call ptr @get_current() #19, !dbg !2955
  %cmp26 = icmp ne ptr %25, %call25, !dbg !2956
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !2957

if.then28:                                        ; preds = %if.end24
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2958

if.end29:                                         ; preds = %if.end24
  %26 = load ptr, ptr %pi_state, align 8, !dbg !2959
  call void @get_pi_state(ptr noundef %26) #19, !dbg !2960
  %27 = load ptr, ptr %pi_state, align 8, !dbg !2961
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %27, i32 0, i32 1, !dbg !2961
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %pi_mutex, i32 0, i32 0, !dbg !2961
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #19, !dbg !2961
  %28 = load ptr, ptr %hb, align 8, !dbg !2962
  %lock30 = getelementptr inbounds %struct.futex_hash_bucket, ptr %28, i32 0, i32 1, !dbg !2963
  call void @spin_unlock(ptr noundef %lock30) #19, !dbg !2964
  %29 = load ptr, ptr %uaddr.addr, align 8, !dbg !2965
  %30 = load i32, ptr %uval, align 4, !dbg !2966
  %31 = load ptr, ptr %pi_state, align 8, !dbg !2967
  %call31 = call i32 @wake_futex_pi(ptr noundef %29, i32 noundef %30, ptr noundef %31) #19, !dbg !2968
  store i32 %call31, ptr %ret, align 4, !dbg !2969
  %32 = load ptr, ptr %pi_state, align 8, !dbg !2970
  call void @put_pi_state(ptr noundef %32) #19, !dbg !2971
  %33 = load i32, ptr %ret, align 4, !dbg !2972
  %tobool32 = icmp ne i32 %33, 0, !dbg !2972
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !2974

if.then33:                                        ; preds = %if.end29
  %34 = load i32, ptr %ret, align 4, !dbg !2975
  store i32 %34, ptr %retval, align 4, !dbg !2976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2976

if.end34:                                         ; preds = %if.end29
  %35 = load i32, ptr %ret, align 4, !dbg !2977
  %cmp35 = icmp eq i32 %35, -14, !dbg !2979
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !2980

if.then37:                                        ; preds = %if.end34
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2981

if.end38:                                         ; preds = %if.end34
  %36 = load i32, ptr %ret, align 4, !dbg !2982
  %cmp39 = icmp eq i32 %36, -11, !dbg !2984
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !2985

if.then41:                                        ; preds = %if.end38
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2986

if.end42:                                         ; preds = %if.end38
  %37 = load i32, ptr %ret, align 4, !dbg !2987
  store i32 %37, ptr %retval, align 4, !dbg !2988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2988

cleanup:                                          ; preds = %if.then41, %if.then37, %if.then28, %if.then23, %if.end42, %if.then33
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi_state) #18, !dbg !2989
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup83 [
    i32 3, label %out_unlock
    i32 5, label %pi_retry
    i32 4, label %pi_faulted
  ]

if.end43:                                         ; preds = %if.end16
  %38 = load ptr, ptr %uaddr.addr, align 8, !dbg !2990
  %39 = load i32, ptr %uval, align 4, !dbg !2991
  %call44 = call i32 @futex_cmpxchg_value_locked(ptr noundef %curval, ptr noundef %38, i32 noundef %39, i32 noundef 0) #19, !dbg !2992
  store i32 %call44, ptr %ret, align 4, !dbg !2993
  %tobool45 = icmp ne i32 %call44, 0, !dbg !2993
  br i1 %tobool45, label %if.then46, label %if.end73, !dbg !2994

if.then46:                                        ; preds = %if.end43
  %40 = load ptr, ptr %hb, align 8, !dbg !2995
  %lock47 = getelementptr inbounds %struct.futex_hash_bucket, ptr %40, i32 0, i32 1, !dbg !2996
  call void @spin_unlock(ptr noundef %lock47) #19, !dbg !2997
  %41 = load i32, ptr %ret, align 4, !dbg !2998
  switch i32 %41, label %sw.default [
    i32 -14, label %sw.bb
    i32 -11, label %sw.bb48
  ], !dbg !2999

sw.bb:                                            ; preds = %if.then46
  br label %pi_faulted, !dbg !3000

sw.bb48:                                          ; preds = %if.then46
  br label %pi_retry, !dbg !3001

sw.default:                                       ; preds = %if.then46
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !3002
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2879, metadata !DIExpression()), !dbg !3002
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !3002
  %42 = load i32, ptr %__ret_warn_on, align 4, !dbg !3003
  %tobool49 = icmp ne i32 %42, 0, !dbg !3003
  %lnot = xor i1 %tobool49, true, !dbg !3003
  %lnot50 = xor i1 %lnot, true, !dbg !3003
  %lnot.ext = zext i1 %lnot50 to i32, !dbg !3003
  %conv51 = sext i32 %lnot.ext to i64, !dbg !3003
  %expval52 = call i64 @llvm.expect.i64(i64 %conv51, i64 0), !dbg !3003
  %tobool53 = icmp ne i64 %expval52, 0, !dbg !3003
  br i1 %tobool53, label %if.then54, label %if.end64, !dbg !3002

if.then54:                                        ; preds = %sw.default
  br label %do.body, !dbg !3003

do.body:                                          ; preds = %if.then54
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !3004
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2884, metadata !DIExpression()), !dbg !3004
  store i32 2307, ptr %__flags, align 4, !dbg !3004
  br label %do.body55, !dbg !3004

do.body55:                                        ; preds = %do.body
  br label %do.cond, !dbg !3005

do.cond:                                          ; preds = %do.body55
  br label %do.end, !dbg !3005

do.end:                                           ; preds = %do.cond
  br label %do.body56, !dbg !3004

do.body56:                                        ; preds = %do.end
  %43 = load i32, ptr %__flags, align 4, !dbg !3007
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1207, i32 %43, i64 12) #18, !dbg !3007, !srcloc !3009
  br label %do.cond57, !dbg !3007

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !3007

do.end58:                                         ; preds = %do.cond57
  br label %do.body59, !dbg !3004

do.body59:                                        ; preds = %do.end58
  br label %do.cond60, !dbg !3010

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !3010

do.end61:                                         ; preds = %do.cond60
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !3003
  br label %do.cond62, !dbg !3004

do.cond62:                                        ; preds = %do.end61
  br label %do.end63, !dbg !3004

do.end63:                                         ; preds = %do.cond62
  br label %if.end64, !dbg !3004

if.end64:                                         ; preds = %do.end63, %sw.default
  %44 = load i32, ptr %__ret_warn_on, align 4, !dbg !3002
  %tobool66 = icmp ne i32 %44, 0, !dbg !3002
  %lnot67 = xor i1 %tobool66, true, !dbg !3002
  %lnot69 = xor i1 %lnot67, true, !dbg !3002
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !3002
  %conv71 = sext i32 %lnot.ext70 to i64, !dbg !3002
  %expval72 = call i64 @llvm.expect.i64(i64 %conv71, i64 0), !dbg !3002
  store i64 %expval72, ptr %tmp65, align 8, !dbg !3003
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !3012
  %45 = load i64, ptr %tmp65, align 8, !dbg !3002
  %46 = load i32, ptr %ret, align 4, !dbg !3013
  store i32 %46, ptr %retval, align 4, !dbg !3014
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !3014

if.end73:                                         ; preds = %if.end43
  %47 = load i32, ptr %curval, align 4, !dbg !3015
  %48 = load i32, ptr %uval, align 4, !dbg !3016
  %cmp74 = icmp eq i32 %47, %48, !dbg !3017
  %49 = zext i1 %cmp74 to i64, !dbg !3018
  %cond = select i1 %cmp74, i32 0, i32 -11, !dbg !3018
  store i32 %cond, ptr %ret, align 4, !dbg !3019
  br label %out_unlock, !dbg !3020

out_unlock:                                       ; preds = %if.end73, %cleanup
  call void @llvm.dbg.label(metadata !2887), !dbg !3021
  %50 = load ptr, ptr %hb, align 8, !dbg !3022
  %lock76 = getelementptr inbounds %struct.futex_hash_bucket, ptr %50, i32 0, i32 1, !dbg !3023
  call void @spin_unlock(ptr noundef %lock76) #19, !dbg !3024
  %51 = load i32, ptr %ret, align 4, !dbg !3025
  store i32 %51, ptr %retval, align 4, !dbg !3026
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !3026

pi_retry:                                         ; preds = %cleanup, %sw.bb48
  call void @llvm.dbg.label(metadata !2888), !dbg !3027
  call void @__might_resched(ptr noundef @.str, i32 noundef 1222, i32 noundef 0) #19, !dbg !3028
  %call78 = call i32 @_cond_resched() #19, !dbg !3028
  store i32 %call78, ptr %tmp77, align 4, !dbg !3028
  %52 = load i32, ptr %tmp77, align 4, !dbg !3028
  br label %retry, !dbg !3030

pi_faulted:                                       ; preds = %cleanup, %sw.bb
  call void @llvm.dbg.label(metadata !2889), !dbg !3031
  %53 = load ptr, ptr %uaddr.addr, align 8, !dbg !3032
  %call79 = call i32 @fault_in_user_writeable(ptr noundef %53) #19, !dbg !3033
  store i32 %call79, ptr %ret, align 4, !dbg !3034
  %54 = load i32, ptr %ret, align 4, !dbg !3035
  %tobool80 = icmp ne i32 %54, 0, !dbg !3035
  br i1 %tobool80, label %if.end82, label %if.then81, !dbg !3037

if.then81:                                        ; preds = %pi_faulted
  br label %retry, !dbg !3038

if.end82:                                         ; preds = %pi_faulted
  %55 = load i32, ptr %ret, align 4, !dbg !3039
  store i32 %55, ptr %retval, align 4, !dbg !3040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !3040

cleanup83:                                        ; preds = %if.end82, %out_unlock, %cleanup, %if.end64, %if.then15, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !3041
  call void @llvm.lifetime.end.p0(i64 8, ptr %top_waiter) #18, !dbg !3041
  call void @llvm.lifetime.end.p0(i64 8, ptr %hb) #18, !dbg !3041
  call void @llvm.lifetime.end.p0(i64 24, ptr %key) #18, !dbg !3041
  call void @llvm.lifetime.end.p0(i64 4, ptr %vpid) #18, !dbg !3041
  call void @llvm.lifetime.end.p0(i64 4, ptr %uval) #18, !dbg !3041
  call void @llvm.lifetime.end.p0(i64 4, ptr %curval) #18, !dbg !3041
  %56 = load i32, ptr %retval, align 4, !dbg !3041
  ret i32 %56, !dbg !3041
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #6 align 16 !dbg !3042 {
entry:
  ret void, !dbg !3045
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #6 align 16 !dbg !3046 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !3051, metadata !DIExpression()), !dbg !3053
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3052, metadata !DIExpression()), !dbg !3054
  ret void, !dbg !3055
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3056 dso_local ptr @futex_hash(ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @wake_futex_pi(ptr noundef %uaddr, i32 noundef %uval, ptr noundef %pi_state) #0 align 16 !dbg !3059 {
entry:
  %uaddr.addr = alloca ptr, align 8
  %uval.addr = alloca i32, align 4
  %pi_state.addr = alloca ptr, align 8
  %top_waiter = alloca ptr, align 8
  %new_owner = alloca ptr, align 8
  %postunlock = alloca i8, align 1
  %wqh = alloca %struct.rt_wake_q_head, align 8
  %curval = alloca i32, align 4
  %newval = alloca i32, align 4
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !3063, metadata !DIExpression()), !dbg !3090
  store i32 %uval, ptr %uval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uval.addr, metadata !3064, metadata !DIExpression()), !dbg !3091
  store ptr %pi_state, ptr %pi_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pi_state.addr, metadata !3065, metadata !DIExpression()), !dbg !3092
  call void @llvm.lifetime.start.p0(i64 8, ptr %top_waiter) #18, !dbg !3093
  call void @llvm.dbg.declare(metadata ptr %top_waiter, metadata !3066, metadata !DIExpression()), !dbg !3094
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_owner) #18, !dbg !3095
  call void @llvm.dbg.declare(metadata ptr %new_owner, metadata !3067, metadata !DIExpression()), !dbg !3096
  call void @llvm.lifetime.start.p0(i64 1, ptr %postunlock) #18, !dbg !3097
  call void @llvm.dbg.declare(metadata ptr %postunlock, metadata !3068, metadata !DIExpression()), !dbg !3098
  store i8 0, ptr %postunlock, align 1, !dbg !3098
  call void @llvm.lifetime.start.p0(i64 24, ptr %wqh) #18, !dbg !3099
  call void @llvm.dbg.declare(metadata ptr %wqh, metadata !3069, metadata !DIExpression()), !dbg !3099
  %head = getelementptr inbounds %struct.rt_wake_q_head, ptr %wqh, i32 0, i32 0, !dbg !3099
  %first = getelementptr inbounds %struct.wake_q_head, ptr %head, i32 0, i32 0, !dbg !3099
  store ptr inttoptr (i64 1 to ptr), ptr %first, align 8, !dbg !3099
  %lastp = getelementptr inbounds %struct.wake_q_head, ptr %head, i32 0, i32 1, !dbg !3099
  %head1 = getelementptr inbounds %struct.rt_wake_q_head, ptr %wqh, i32 0, i32 0, !dbg !3099
  %first2 = getelementptr inbounds %struct.wake_q_head, ptr %head1, i32 0, i32 0, !dbg !3099
  store ptr %first2, ptr %lastp, align 8, !dbg !3099
  %rtlock_task = getelementptr inbounds %struct.rt_wake_q_head, ptr %wqh, i32 0, i32 1, !dbg !3099
  store ptr null, ptr %rtlock_task, align 8, !dbg !3099
  call void @llvm.lifetime.start.p0(i64 4, ptr %curval) #18, !dbg !3100
  call void @llvm.dbg.declare(metadata ptr %curval, metadata !3080, metadata !DIExpression()), !dbg !3101
  call void @llvm.lifetime.start.p0(i64 4, ptr %newval) #18, !dbg !3100
  call void @llvm.dbg.declare(metadata ptr %newval, metadata !3081, metadata !DIExpression()), !dbg !3102
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !3103
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3082, metadata !DIExpression()), !dbg !3104
  store i32 0, ptr %ret, align 4, !dbg !3104
  %0 = load ptr, ptr %pi_state.addr, align 8, !dbg !3105
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %0, i32 0, i32 1, !dbg !3106
  %call = call ptr @rt_mutex_top_waiter(ptr noundef %pi_mutex) #19, !dbg !3107
  store ptr %call, ptr %top_waiter, align 8, !dbg !3108
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !3109
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3083, metadata !DIExpression()), !dbg !3109
  %1 = load ptr, ptr %top_waiter, align 8, !dbg !3109
  %tobool = icmp ne ptr %1, null, !dbg !3109
  %lnot = xor i1 %tobool, true, !dbg !3109
  %lnot3 = xor i1 %lnot, true, !dbg !3109
  %lnot4 = xor i1 %lnot3, true, !dbg !3109
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3109
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3109
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !3110
  %tobool5 = icmp ne i32 %2, 0, !dbg !3110
  %lnot6 = xor i1 %tobool5, true, !dbg !3110
  %lnot8 = xor i1 %lnot6, true, !dbg !3110
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !3110
  %conv = sext i32 %lnot.ext9 to i64, !dbg !3110
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3110
  %tobool10 = icmp ne i64 %expval, 0, !dbg !3110
  br i1 %tobool10, label %if.then, label %if.end, !dbg !3109

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3110

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !3111
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3086, metadata !DIExpression()), !dbg !3111
  store i32 2307, ptr %__flags, align 4, !dbg !3111
  br label %do.body11, !dbg !3111

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !3112

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !3112

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !3111

do.body12:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !3114
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 623, i32 %3, i64 12) #18, !dbg !3114, !srcloc !3116
  br label %do.cond13, !dbg !3114

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3114

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !3111

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !3117

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !3117

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !3110
  br label %do.cond18, !dbg !3111

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !3111

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !3111

if.end:                                           ; preds = %do.end19, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !3109
  %tobool20 = icmp ne i32 %4, 0, !dbg !3109
  %lnot21 = xor i1 %tobool20, true, !dbg !3109
  %lnot23 = xor i1 %lnot21, true, !dbg !3109
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !3109
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !3109
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !3109
  store i64 %expval26, ptr %tmp, align 8, !dbg !3110
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !3119
  %5 = load i64, ptr %tmp, align 8, !dbg !3109
  %tobool27 = icmp ne i64 %5, 0, !dbg !3119
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !3120

if.then28:                                        ; preds = %if.end
  store i32 -11, ptr %ret, align 4, !dbg !3121
  br label %out_unlock, !dbg !3123

if.end29:                                         ; preds = %if.end
  %6 = load ptr, ptr %top_waiter, align 8, !dbg !3124
  %task = getelementptr inbounds %struct.rt_mutex_waiter, ptr %6, i32 0, i32 2, !dbg !3125
  %7 = load ptr, ptr %task, align 8, !dbg !3125
  store ptr %7, ptr %new_owner, align 8, !dbg !3126
  %8 = load ptr, ptr %new_owner, align 8, !dbg !3127
  %call30 = call i32 @task_pid_vnr(ptr noundef %8) #19, !dbg !3128
  %or = or i32 -2147483648, %call30, !dbg !3129
  store i32 %or, ptr %newval, align 4, !dbg !3130
  %call31 = call zeroext i1 @should_fail_futex(i1 noundef zeroext true) #19, !dbg !3131
  %lnot32 = xor i1 %call31, true, !dbg !3131
  %lnot34 = xor i1 %lnot32, true, !dbg !3131
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !3131
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !3131
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !3131
  %tobool38 = icmp ne i64 %expval37, 0, !dbg !3131
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !3133

if.then39:                                        ; preds = %if.end29
  store i32 -14, ptr %ret, align 4, !dbg !3134
  br label %out_unlock, !dbg !3136

if.end40:                                         ; preds = %if.end29
  %9 = load ptr, ptr %uaddr.addr, align 8, !dbg !3137
  %10 = load i32, ptr %uval.addr, align 4, !dbg !3138
  %11 = load i32, ptr %newval, align 4, !dbg !3139
  %call41 = call i32 @futex_cmpxchg_value_locked(ptr noundef %curval, ptr noundef %9, i32 noundef %10, i32 noundef %11) #19, !dbg !3140
  store i32 %call41, ptr %ret, align 4, !dbg !3141
  %12 = load i32, ptr %ret, align 4, !dbg !3142
  %tobool42 = icmp ne i32 %12, 0, !dbg !3142
  br i1 %tobool42, label %if.end49, label %land.lhs.true, !dbg !3144

land.lhs.true:                                    ; preds = %if.end40
  %13 = load i32, ptr %curval, align 4, !dbg !3145
  %14 = load i32, ptr %uval.addr, align 4, !dbg !3146
  %cmp = icmp ne i32 %13, %14, !dbg !3147
  br i1 %cmp, label %if.then44, label %if.end49, !dbg !3148

if.then44:                                        ; preds = %land.lhs.true
  %15 = load i32, ptr %curval, align 4, !dbg !3149
  %and = and i32 1073741823, %15, !dbg !3152
  %16 = load i32, ptr %uval.addr, align 4, !dbg !3153
  %cmp45 = icmp eq i32 %and, %16, !dbg !3154
  br i1 %cmp45, label %if.then47, label %if.else, !dbg !3155

if.then47:                                        ; preds = %if.then44
  store i32 -11, ptr %ret, align 4, !dbg !3156
  br label %if.end48, !dbg !3157

if.else:                                          ; preds = %if.then44
  store i32 -22, ptr %ret, align 4, !dbg !3158
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then47
  br label %if.end49, !dbg !3159

if.end49:                                         ; preds = %if.end48, %land.lhs.true, %if.end40
  %17 = load i32, ptr %ret, align 4, !dbg !3160
  %tobool50 = icmp ne i32 %17, 0, !dbg !3160
  br i1 %tobool50, label %if.end54, label %if.then51, !dbg !3162

if.then51:                                        ; preds = %if.end49
  %18 = load ptr, ptr %pi_state.addr, align 8, !dbg !3163
  %19 = load ptr, ptr %new_owner, align 8, !dbg !3165
  call void @pi_state_update_owner(ptr noundef %18, ptr noundef %19) #19, !dbg !3166
  %20 = load ptr, ptr %pi_state.addr, align 8, !dbg !3167
  %pi_mutex52 = getelementptr inbounds %struct.futex_pi_state, ptr %20, i32 0, i32 1, !dbg !3168
  %call53 = call zeroext i1 @__rt_mutex_futex_unlock(ptr noundef %pi_mutex52, ptr noundef %wqh) #19, !dbg !3169
  %frombool = zext i1 %call53 to i8, !dbg !3170
  store i8 %frombool, ptr %postunlock, align 1, !dbg !3170
  br label %if.end54, !dbg !3171

if.end54:                                         ; preds = %if.then51, %if.end49
  br label %out_unlock, !dbg !3160

out_unlock:                                       ; preds = %if.end54, %if.then39, %if.then28
  call void @llvm.dbg.label(metadata !3089), !dbg !3172
  %21 = load ptr, ptr %pi_state.addr, align 8, !dbg !3173
  %pi_mutex55 = getelementptr inbounds %struct.futex_pi_state, ptr %21, i32 0, i32 1, !dbg !3173
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %pi_mutex55, i32 0, i32 0, !dbg !3173
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #19, !dbg !3173
  %22 = load i8, ptr %postunlock, align 1, !dbg !3174, !range !3176, !noundef !418
  %tobool56 = trunc i8 %22 to i1, !dbg !3174
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !3177

if.then57:                                        ; preds = %out_unlock
  call void @rt_mutex_postunlock(ptr noundef %wqh) #19, !dbg !3178
  br label %if.end58, !dbg !3178

if.end58:                                         ; preds = %if.then57, %out_unlock
  %23 = load i32, ptr %ret, align 4, !dbg !3179
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !3180
  call void @llvm.lifetime.end.p0(i64 4, ptr %newval) #18, !dbg !3180
  call void @llvm.lifetime.end.p0(i64 4, ptr %curval) #18, !dbg !3180
  call void @llvm.lifetime.end.p0(i64 24, ptr %wqh) #18, !dbg !3180
  call void @llvm.lifetime.end.p0(i64 1, ptr %postunlock) #18, !dbg !3180
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_owner) #18, !dbg !3180
  call void @llvm.lifetime.end.p0(i64 8, ptr %top_waiter) #18, !dbg !3180
  ret i32 %23, !dbg !3181
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3182 dso_local i32 @futex_cmpxchg_value_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !3185 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3187, metadata !DIExpression()), !dbg !3192
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3188, metadata !DIExpression()), !dbg !3193
  %0 = load i64, ptr %size.addr, align 8, !dbg !3194
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3195
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3196

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3197
  %tobool = icmp ne i64 %2, 0, !dbg !3197
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3198

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !3199
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3189, metadata !DIExpression()), !dbg !3200
  %3 = load i64, ptr %size.addr, align 8, !dbg !3201
  %cmp = icmp ugt i64 %3, 8192, !dbg !3203
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3204

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3205
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3206
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !3207
  store ptr %call, ptr %retval, align 8, !dbg !3208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3208

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3209
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !3209
  store i32 %call2, ptr %index, align 4, !dbg !3210
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3211
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3212
  %9 = ptrtoint ptr %8 to i64, !dbg !3212
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !3213
  %idxprom = zext i32 %call3 to i64, !dbg !3214
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3214
  %10 = load i32, ptr %index, align 4, !dbg !3215
  %idxprom4 = zext i32 %10 to i64, !dbg !3214
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3214
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3214
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3216
  %13 = load i64, ptr %size.addr, align 8, !dbg !3217
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !3218
  store ptr %call6, ptr %retval, align 8, !dbg !3219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3219

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !3220
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3221
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3222
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !3223
  store ptr %call8, ptr %retval, align 8, !dbg !3224
  br label %return, !dbg !3224

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3225
  ret ptr %16, !dbg !3225
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3226 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !3227 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3231, metadata !DIExpression()), !dbg !3233
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3232, metadata !DIExpression()), !dbg !3234
  %0 = load i64, ptr %size.addr, align 8, !dbg !3235
  %tobool = icmp ne i64 %0, 0, !dbg !3235
  br i1 %tobool, label %if.end, label %if.then, !dbg !3237

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3238
  br label %return, !dbg !3238

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3239
  %cmp = icmp ule i64 %1, 8, !dbg !3241
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3242

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3243
  br label %return, !dbg !3243

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3244
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3246
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3247

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3248
  %cmp4 = icmp ule i64 %3, 96, !dbg !3249
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3250

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3251
  br label %return, !dbg !3251

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3252
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3254
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3255

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3256
  %cmp9 = icmp ule i64 %5, 192, !dbg !3257
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3258

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3259
  br label %return, !dbg !3259

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3260
  %cmp12 = icmp ule i64 %6, 8, !dbg !3262
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3263

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3264
  br label %return, !dbg !3264

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3265
  %cmp15 = icmp ule i64 %7, 16, !dbg !3267
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3268

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3269
  br label %return, !dbg !3269

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3270
  %cmp18 = icmp ule i64 %8, 32, !dbg !3272
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3273

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3274
  br label %return, !dbg !3274

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3275
  %cmp21 = icmp ule i64 %9, 64, !dbg !3277
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3278

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3279
  br label %return, !dbg !3279

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3280
  %cmp24 = icmp ule i64 %10, 128, !dbg !3282
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3283

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3284
  br label %return, !dbg !3284

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3285
  %cmp27 = icmp ule i64 %11, 256, !dbg !3287
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3288

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3289
  br label %return, !dbg !3289

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3290
  %cmp30 = icmp ule i64 %12, 512, !dbg !3292
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3293

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3294
  br label %return, !dbg !3294

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3295
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3297
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3298

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3299
  br label %return, !dbg !3299

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3300
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3302
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3303

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3304
  br label %return, !dbg !3304

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3305
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3307
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3308

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3309
  br label %return, !dbg !3309

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3310
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3312
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3313

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3314
  br label %return, !dbg !3314

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3315
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3317
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3318

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3319
  br label %return, !dbg !3319

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3320
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3322
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3323

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3324
  br label %return, !dbg !3324

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3325
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3327
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3328

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3329
  br label %return, !dbg !3329

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3330
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3332
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3333

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3334
  br label %return, !dbg !3334

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3335
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3337
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3338

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3339
  br label %return, !dbg !3339

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3340
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3342
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3343

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3344
  br label %return, !dbg !3344

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3345
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3347
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3348

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3349
  br label %return, !dbg !3349

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3350
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3352
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3353

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3354
  br label %return, !dbg !3354

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3355, !range !3176, !noundef !418
  %tobool69 = trunc i8 %25 to i1, !dbg !3355
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3357

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3358

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #23, !dbg !3359, !srcloc !3362
  unreachable, !dbg !3359

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3363

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3364

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3365

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3367

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3365

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #18, !dbg !3369, !srcloc !3371
  br label %do.end75, !dbg !3369

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3365

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3372
  br label %return, !dbg !3372

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3373
  ret i32 %26, !dbg !3373
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3374 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !3379 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3383, metadata !DIExpression()), !dbg !3385
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3384, metadata !DIExpression()), !dbg !3386
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3387
  %and = and i32 %0, 17, !dbg !3387
  %cmp = icmp eq i32 %and, 0, !dbg !3387
  %lnot = xor i1 %cmp, true, !dbg !3387
  %lnot1 = xor i1 %lnot, true, !dbg !3387
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3387
  %conv = sext i32 %lnot.ext to i64, !dbg !3387
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3387
  %tobool = icmp ne i64 %expval, 0, !dbg !3387
  br i1 %tobool, label %if.then, label %if.end, !dbg !3389

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3390
  br label %return, !dbg !3390

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3391
  %and2 = and i32 %1, 1, !dbg !3393
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3393
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3394

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3395
  br label %return, !dbg !3395

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3396
  br label %return, !dbg !3396

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3398
  ret i32 %2, !dbg !3398
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3399 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3400 dso_local void @__compiletime_assert_117() #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !3401 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3407, metadata !DIExpression()), !dbg !3409
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3408, metadata !DIExpression()), !dbg !3410
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3411
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #19, !dbg !3412
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3413
  %2 = load i32, ptr %i.addr, align 4, !dbg !3414
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #19, !dbg !3415
  ret void, !dbg !3416
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !3417 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3425, metadata !DIExpression()), !dbg !3427
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3426, metadata !DIExpression()), !dbg !3428
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3429
  %1 = load i64, ptr %size.addr, align 8, !dbg !3430
  %conv = trunc i64 %1 to i32, !dbg !3430
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !3431
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3432
  %3 = load i64, ptr %size.addr, align 8, !dbg !3432
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #19, !dbg !3432
  ret void, !dbg !3433
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !3434 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3437, metadata !DIExpression()), !dbg !3439
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3438, metadata !DIExpression()), !dbg !3440
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3441
  %1 = load i32, ptr %i.addr, align 4, !dbg !3442
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #19, !dbg !3443
  ret void, !dbg !3444
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !3445 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3450, metadata !DIExpression()), !dbg !3452
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3451, metadata !DIExpression()), !dbg !3453
  ret i1 true, !dbg !3454
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !3455 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3460, metadata !DIExpression()), !dbg !3463
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3461, metadata !DIExpression()), !dbg !3464
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3462, metadata !DIExpression()), !dbg !3465
  ret void, !dbg !3466
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !3467 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3470, metadata !DIExpression()), !dbg !3472
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3471, metadata !DIExpression()), !dbg !3473
  br label %do.body, !dbg !3474

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !3475
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3475
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !3475
  store volatile i32 %0, ptr %counter, align 4, !dbg !3475
  br label %do.end, !dbg !3475

do.end:                                           ; preds = %do.body
  ret void, !dbg !3477
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_inc_not_zero(ptr noundef %r, ptr noundef %oldp) #6 align 16 !dbg !3478 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3482, metadata !DIExpression()), !dbg !3484
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3483, metadata !DIExpression()), !dbg !3485
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3486
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !3487
  %call = call zeroext i1 @__refcount_add_not_zero(i32 noundef 1, ptr noundef %0, ptr noundef %1) #19, !dbg !3488
  ret i1 %call, !dbg !3489
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_add_not_zero(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #6 align 16 !dbg !3490 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3494, metadata !DIExpression()), !dbg !3498
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3495, metadata !DIExpression()), !dbg !3499
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3496, metadata !DIExpression()), !dbg !3500
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #18, !dbg !3501
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3497, metadata !DIExpression()), !dbg !3502
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3503
  %call = call i32 @refcount_read(ptr noundef %0) #19, !dbg !3504
  store i32 %call, ptr %old, align 4, !dbg !3502
  br label %do.body, !dbg !3505

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %old, align 4, !dbg !3506
  %tobool = icmp ne i32 %1, 0, !dbg !3506
  br i1 %tobool, label %if.end, label %if.then, !dbg !3509

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !3510

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !3511

do.cond:                                          ; preds = %if.end
  %2 = load ptr, ptr %r.addr, align 8, !dbg !3512
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %2, i32 0, i32 0, !dbg !3513
  %3 = load i32, ptr %old, align 4, !dbg !3514
  %4 = load i32, ptr %i.addr, align 4, !dbg !3515
  %add = add i32 %3, %4, !dbg !3516
  %call1 = call zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %refs, ptr noundef %old, i32 noundef %add) #19, !dbg !3517
  %lnot = xor i1 %call1, true, !dbg !3518
  br i1 %lnot, label %do.body, label %do.end, !dbg !3511, !llvm.loop !3519

do.end:                                           ; preds = %do.cond, %if.then
  %5 = load ptr, ptr %oldp.addr, align 8, !dbg !3523
  %tobool2 = icmp ne ptr %5, null, !dbg !3523
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3525

if.then3:                                         ; preds = %do.end
  %6 = load i32, ptr %old, align 4, !dbg !3526
  %7 = load ptr, ptr %oldp.addr, align 8, !dbg !3527
  store i32 %6, ptr %7, align 4, !dbg !3528
  br label %if.end4, !dbg !3529

if.end4:                                          ; preds = %if.then3, %do.end
  %8 = load i32, ptr %old, align 4, !dbg !3530
  %cmp = icmp slt i32 %8, 0, !dbg !3530
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3530

lor.rhs:                                          ; preds = %if.end4
  %9 = load i32, ptr %old, align 4, !dbg !3530
  %10 = load i32, ptr %i.addr, align 4, !dbg !3530
  %add5 = add i32 %9, %10, !dbg !3530
  %cmp6 = icmp slt i32 %add5, 0, !dbg !3530
  br label %lor.end, !dbg !3530

lor.end:                                          ; preds = %lor.rhs, %if.end4
  %11 = phi i1 [ true, %if.end4 ], [ %cmp6, %lor.rhs ]
  %lnot7 = xor i1 %11, true, !dbg !3530
  %lnot8 = xor i1 %lnot7, true, !dbg !3530
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !3530
  %conv = sext i32 %lnot.ext to i64, !dbg !3530
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3530
  %tobool9 = icmp ne i64 %expval, 0, !dbg !3530
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3532

if.then10:                                        ; preds = %lor.end
  %12 = load ptr, ptr %r.addr, align 8, !dbg !3533
  call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 0) #19, !dbg !3534
  br label %if.end11, !dbg !3534

if.end11:                                         ; preds = %if.then10, %lor.end
  %13 = load i32, ptr %old, align 4, !dbg !3535
  %tobool12 = icmp ne i32 %13, 0, !dbg !3535
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #18, !dbg !3536
  ret i1 %tobool12, !dbg !3537
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @refcount_read(ptr noundef %r) #6 align 16 !dbg !3538 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3544, metadata !DIExpression()), !dbg !3545
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3546
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !3547
  %call = call i32 @atomic_read(ptr noundef %refs) #19, !dbg !3548
  ret i32 %call, !dbg !3549
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #3 align 16 !dbg !3550 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3554, metadata !DIExpression()), !dbg !3557
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3555, metadata !DIExpression()), !dbg !3558
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3556, metadata !DIExpression()), !dbg !3559
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3560
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #19, !dbg !3561
  %1 = load ptr, ptr %old.addr, align 8, !dbg !3562
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #19, !dbg !3563
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3564
  %3 = load ptr, ptr %old.addr, align 8, !dbg !3565
  %4 = load i32, ptr %new.addr, align 4, !dbg !3566
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %2, ptr noundef %3, i32 noundef %4) #19, !dbg !3567
  ret i1 %call, !dbg !3568
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3569 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !3572 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3578, metadata !DIExpression()), !dbg !3579
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3580
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #19, !dbg !3581
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3582
  %call = call i32 @raw_atomic_read(ptr noundef %1) #19, !dbg !3583
  ret i32 %call, !dbg !3584
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !3585 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3587, metadata !DIExpression()), !dbg !3589
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3588, metadata !DIExpression()), !dbg !3590
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3591
  %1 = load i64, ptr %size.addr, align 8, !dbg !3592
  %conv = trunc i64 %1 to i32, !dbg !3592
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #19, !dbg !3593
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3594
  %3 = load i64, ptr %size.addr, align 8, !dbg !3594
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #19, !dbg !3594
  ret void, !dbg !3595
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !3596 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3598, metadata !DIExpression()), !dbg !3599
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3600
  %call = call i32 @arch_atomic_read(ptr noundef %0) #19, !dbg !3601
  ret i32 %call, !dbg !3602
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !3603 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3605, metadata !DIExpression()), !dbg !3607
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3606, metadata !DIExpression()), !dbg !3608
  ret i1 true, !dbg !3609
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !3610 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3612, metadata !DIExpression()), !dbg !3613
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3614
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3614
  %1 = load volatile i32, ptr %counter, align 4, !dbg !3614
  ret i32 %1, !dbg !3615
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !3616 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3618, metadata !DIExpression()), !dbg !3620
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3619, metadata !DIExpression()), !dbg !3621
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3622
  %1 = load i64, ptr %size.addr, align 8, !dbg !3623
  %conv = trunc i64 %1 to i32, !dbg !3623
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !3624
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3625
  %3 = load i64, ptr %size.addr, align 8, !dbg !3625
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #19, !dbg !3625
  ret void, !dbg !3626
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #3 align 16 !dbg !3627 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3629, metadata !DIExpression()), !dbg !3632
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3630, metadata !DIExpression()), !dbg !3633
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3631, metadata !DIExpression()), !dbg !3634
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3635
  %1 = load ptr, ptr %old.addr, align 8, !dbg !3636
  %2 = load i32, ptr %new.addr, align 4, !dbg !3637
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #19, !dbg !3638
  ret i1 %call, !dbg !3639
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #3 align 16 !dbg !3640 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3642, metadata !DIExpression()), !dbg !3651
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3643, metadata !DIExpression()), !dbg !3652
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3644, metadata !DIExpression()), !dbg !3653
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #18, !dbg !3654
  call void @llvm.dbg.declare(metadata ptr %success, metadata !3645, metadata !DIExpression()), !dbg !3654
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #18, !dbg !3654
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !3647, metadata !DIExpression()), !dbg !3654
  %0 = load ptr, ptr %old.addr, align 8, !dbg !3654
  store ptr %0, ptr %_old, align 8, !dbg !3654
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #18, !dbg !3654
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !3648, metadata !DIExpression()), !dbg !3654
  %1 = load ptr, ptr %_old, align 8, !dbg !3654
  %2 = load i32, ptr %1, align 4, !dbg !3654
  store i32 %2, ptr %__old, align 4, !dbg !3654
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #18, !dbg !3654
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !3649, metadata !DIExpression()), !dbg !3654
  %3 = load i32, ptr %new.addr, align 4, !dbg !3654
  store i32 %3, ptr %__new, align 4, !dbg !3654
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #18, !dbg !3654
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3650, metadata !DIExpression()), !dbg !3654
  %4 = load ptr, ptr %v.addr, align 8, !dbg !3654
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !3654
  store ptr %counter, ptr %__ptr, align 8, !dbg !3654
  %5 = load ptr, ptr %__ptr, align 8, !dbg !3654
  %6 = load i32, ptr %__old, align 4, !dbg !3654
  %7 = load i32, ptr %__new, align 4, !dbg !3654
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #18, !dbg !3654, !srcloc !3655
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !3654
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !3654
  %9 = icmp ult i8 %asmresult, 2, !dbg !3654
  call void @llvm.assume(i1 %9), !dbg !3654
  store i8 %asmresult, ptr %success, align 1, !dbg !3654
  store i32 %asmresult1, ptr %__old, align 4, !dbg !3654
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #18, !dbg !3654
  %10 = load i8, ptr %success, align 1, !dbg !3656, !range !3176, !noundef !418
  %tobool = trunc i8 %10 to i1, !dbg !3656
  %lnot = xor i1 %tobool, true, !dbg !3656
  %lnot2 = xor i1 %lnot, true, !dbg !3656
  %lnot3 = xor i1 %lnot2, true, !dbg !3656
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3656
  %conv = sext i32 %lnot.ext to i64, !dbg !3656
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3656
  %tobool4 = icmp ne i64 %expval, 0, !dbg !3656
  br i1 %tobool4, label %if.then, label %if.end, !dbg !3654

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !3656
  %12 = load ptr, ptr %_old, align 8, !dbg !3656
  store i32 %11, ptr %12, align 4, !dbg !3656
  br label %if.end, !dbg !3656

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !3654, !range !3176, !noundef !418
  %tobool5 = trunc i8 %13 to i1, !dbg !3654
  %lnot6 = xor i1 %tobool5, true, !dbg !3654
  %lnot8 = xor i1 %lnot6, true, !dbg !3654
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !3654
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !3654
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !3654
  store i64 %expval11, ptr %tmp, align 8, !dbg !3656
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #18, !dbg !3658
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #18, !dbg !3658
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #18, !dbg !3658
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #18, !dbg !3658
  %14 = load i64, ptr %tmp, align 8, !dbg !3654
  %tobool12 = icmp ne i64 %14, 0, !dbg !3658
  ret i1 %tobool12, !dbg !3659
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #6 align 16 !dbg !3660 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3662, metadata !DIExpression()), !dbg !3664
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3663, metadata !DIExpression()), !dbg !3665
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3666
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !3667
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #19, !dbg !3668
  ret i1 %call, !dbg !3669
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #6 align 16 !dbg !3670 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3672, metadata !DIExpression()), !dbg !3676
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3673, metadata !DIExpression()), !dbg !3677
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3674, metadata !DIExpression()), !dbg !3678
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #18, !dbg !3679
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3675, metadata !DIExpression()), !dbg !3680
  %0 = load i32, ptr %i.addr, align 4, !dbg !3681
  %1 = load ptr, ptr %r.addr, align 8, !dbg !3682
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !3683
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #19, !dbg !3684
  store i32 %call, ptr %old, align 4, !dbg !3680
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !3685
  %tobool = icmp ne ptr %2, null, !dbg !3685
  br i1 %tobool, label %if.then, label %if.end, !dbg !3687

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !3688
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !3689
  store i32 %3, ptr %4, align 4, !dbg !3690
  br label %if.end, !dbg !3691

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !3692
  %6 = load i32, ptr %i.addr, align 4, !dbg !3694
  %cmp = icmp eq i32 %5, %6, !dbg !3695
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !3696

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !3697

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !3699

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !3701

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !3701

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !3699

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !3703

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !3705

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !3705

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !3703, !srcloc !3707
  br label %do.cond7, !dbg !3703

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !3703

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !3699

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !3699

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !3708
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3708

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !3709
  %cmp12 = icmp slt i32 %7, 0, !dbg !3709
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !3709

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !3709
  %9 = load i32, ptr %i.addr, align 4, !dbg !3709
  %sub = sub i32 %8, %9, !dbg !3709
  %cmp13 = icmp slt i32 %sub, 0, !dbg !3709
  br label %lor.end, !dbg !3709

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !3709
  %lnot14 = xor i1 %lnot, true, !dbg !3709
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !3709
  %conv = sext i32 %lnot.ext to i64, !dbg !3709
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3709
  %tobool15 = icmp ne i64 %expval, 0, !dbg !3709
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3711

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !3712
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #19, !dbg !3713
  br label %if.end17, !dbg !3713

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !3714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3714

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #18, !dbg !3715
  %12 = load i1, ptr %retval, align 1, !dbg !3715
  ret i1 %12, !dbg !3715
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !3716 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3720, metadata !DIExpression()), !dbg !3722
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3721, metadata !DIExpression()), !dbg !3723
  br label %do.body, !dbg !3724

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3725

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3727
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #19, !dbg !3728
  %1 = load i32, ptr %i.addr, align 4, !dbg !3729
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3730
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #19, !dbg !3731
  ret i32 %call, !dbg !3732
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !3733 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3735, metadata !DIExpression()), !dbg !3737
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3736, metadata !DIExpression()), !dbg !3738
  %0 = load i32, ptr %i.addr, align 4, !dbg !3739
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3740
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #19, !dbg !3741
  ret i32 %call, !dbg !3742
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !3743 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3745, metadata !DIExpression()), !dbg !3749
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3746, metadata !DIExpression()), !dbg !3750
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #18, !dbg !3751
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3747, metadata !DIExpression()), !dbg !3751
  %0 = load i32, ptr %i.addr, align 4, !dbg !3751
  %sub = sub i32 0, %0, !dbg !3751
  store i32 %sub, ptr %__ret, align 4, !dbg !3751
  %1 = load i32, ptr %__ret, align 4, !dbg !3751
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3751
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !3751
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #18, !dbg !3751, !srcloc !3752
  store i32 %3, ptr %__ret, align 4, !dbg !3751
  %4 = load i32, ptr %__ret, align 4, !dbg !3751
  store i32 %4, ptr %tmp, align 4, !dbg !3751
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #18, !dbg !3753
  %5 = load i32, ptr %tmp, align 4, !dbg !3751
  ret i32 %5, !dbg !3754
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3755 dso_local void @_raw_spin_lock(ptr noundef) #9 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #6 align 16 !dbg !3756 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3762, metadata !DIExpression()), !dbg !3763
  br label %do.body, !dbg !3764

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3766

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3764
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !3764
  %1 = load volatile ptr, ptr %next, align 8, !dbg !3764
  store ptr %1, ptr %tmp, align 8, !dbg !3766
  %2 = load ptr, ptr %tmp, align 8, !dbg !3764
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3768
  %cmp = icmp eq ptr %2, %3, !dbg !3769
  %conv = zext i1 %cmp to i32, !dbg !3769
  ret i32 %conv, !dbg !3770
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #6 align 16 !dbg !3771 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3773, metadata !DIExpression()), !dbg !3774
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3775
  call void @__list_del_entry(ptr noundef %0) #19, !dbg !3776
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3777
  call void @INIT_LIST_HEAD(ptr noundef %1) #19, !dbg !3778
  ret void, !dbg !3779
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3780 dso_local void @_raw_spin_unlock(ptr noundef) #9 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !3781 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3785, metadata !DIExpression()), !dbg !3787
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3786, metadata !DIExpression()), !dbg !3788
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3789
  %1 = load ptr, ptr %head.addr, align 8, !dbg !3790
  %2 = load ptr, ptr %head.addr, align 8, !dbg !3791
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !3792
  %3 = load ptr, ptr %next, align 8, !dbg !3792
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #19, !dbg !3793
  ret void, !dbg !3794
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #6 align 16 !dbg !3795 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3797, metadata !DIExpression()), !dbg !3798
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3799
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #19, !dbg !3801
  br i1 %call, label %if.end, label %if.then, !dbg !3802

if.then:                                          ; preds = %entry
  br label %return, !dbg !3803

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3804
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3805
  %2 = load ptr, ptr %prev, align 8, !dbg !3805
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !3806
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3807
  %4 = load ptr, ptr %next, align 8, !dbg !3807
  call void @__list_del(ptr noundef %2, ptr noundef %4) #19, !dbg !3808
  br label %return, !dbg !3809

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3809
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #6 align 16 !dbg !3810 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3814, metadata !DIExpression()), !dbg !3815
  ret i1 true, !dbg !3816
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !3817 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3819, metadata !DIExpression()), !dbg !3821
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3820, metadata !DIExpression()), !dbg !3822
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3823
  %1 = load ptr, ptr %next.addr, align 8, !dbg !3824
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3825
  store ptr %0, ptr %prev1, align 8, !dbg !3826
  br label %do.body, !dbg !3827

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3828

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3830

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3828

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3832
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3832
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3832
  store volatile ptr %2, ptr %next4, align 8, !dbg !3832
  br label %do.end5, !dbg !3832

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3828

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3834
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !3835 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3839, metadata !DIExpression()), !dbg !3842
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3840, metadata !DIExpression()), !dbg !3843
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3841, metadata !DIExpression()), !dbg !3844
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3845
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !3847
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3848
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19, !dbg !3849
  br i1 %call, label %if.end, label %if.then, !dbg !3850

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3851

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !3852
  %4 = load ptr, ptr %next.addr, align 8, !dbg !3853
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !3854
  store ptr %3, ptr %prev1, align 8, !dbg !3855
  %5 = load ptr, ptr %next.addr, align 8, !dbg !3856
  %6 = load ptr, ptr %new.addr, align 8, !dbg !3857
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !3858
  store ptr %5, ptr %next2, align 8, !dbg !3859
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !3860
  %8 = load ptr, ptr %new.addr, align 8, !dbg !3861
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !3862
  store ptr %7, ptr %prev3, align 8, !dbg !3863
  br label %do.body, !dbg !3864

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3865

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3867

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3865

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !3869
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !3869
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !3869
  store volatile ptr %9, ptr %next6, align 8, !dbg !3869
  br label %do.end7, !dbg !3869

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3865

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3871
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !3872 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3876, metadata !DIExpression()), !dbg !3879
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3877, metadata !DIExpression()), !dbg !3880
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3878, metadata !DIExpression()), !dbg !3881
  ret i1 true, !dbg !3882
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3883 dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_pi_state() #0 align 16 !dbg !3886 {
entry:
  %pi_state = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi_state) #18, !dbg !3896
  call void @llvm.dbg.declare(metadata ptr %pi_state, metadata !3890, metadata !DIExpression()), !dbg !3897
  %call = call ptr @get_current() #19, !dbg !3898
  %pi_state_cache = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 148, !dbg !3899
  %0 = load ptr, ptr %pi_state_cache, align 64, !dbg !3899
  store ptr %0, ptr %pi_state, align 8, !dbg !3897
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !3900
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3891, metadata !DIExpression()), !dbg !3900
  %1 = load ptr, ptr %pi_state, align 8, !dbg !3900
  %tobool = icmp ne ptr %1, null, !dbg !3900
  %lnot = xor i1 %tobool, true, !dbg !3900
  %lnot1 = xor i1 %lnot, true, !dbg !3900
  %lnot2 = xor i1 %lnot1, true, !dbg !3900
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3900
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3900
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !3901
  %tobool3 = icmp ne i32 %2, 0, !dbg !3901
  %lnot4 = xor i1 %tobool3, true, !dbg !3901
  %lnot6 = xor i1 %lnot4, true, !dbg !3901
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !3901
  %conv = sext i32 %lnot.ext7 to i64, !dbg !3901
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3901
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3901
  br i1 %tobool8, label %if.then, label %if.end, !dbg !3900

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3901

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !3902
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3893, metadata !DIExpression()), !dbg !3902
  store i32 2305, ptr %__flags, align 4, !dbg !3902
  br label %do.body9, !dbg !3902

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !3903

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !3903

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !3902

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !3905
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 39, i32 %3, i64 12) #18, !dbg !3905, !srcloc !3907
  br label %do.cond11, !dbg !3905

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3905

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !3902

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !3908

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !3908

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !3901
  br label %do.cond16, !dbg !3902

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !3902

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !3902

if.end:                                           ; preds = %do.end17, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !3900
  %tobool18 = icmp ne i32 %4, 0, !dbg !3900
  %lnot19 = xor i1 %tobool18, true, !dbg !3900
  %lnot21 = xor i1 %lnot19, true, !dbg !3900
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !3900
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !3900
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !3900
  store i64 %expval24, ptr %tmp, align 8, !dbg !3901
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !3910
  %5 = load i64, ptr %tmp, align 8, !dbg !3900
  %call25 = call ptr @get_current() #19, !dbg !3911
  %pi_state_cache26 = getelementptr inbounds %struct.task_struct, ptr %call25, i32 0, i32 148, !dbg !3912
  store ptr null, ptr %pi_state_cache26, align 64, !dbg !3913
  %6 = load ptr, ptr %pi_state, align 8, !dbg !3914
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi_state) #18, !dbg !3915
  ret ptr %6, !dbg !3916
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3917 dso_local void @rt_mutex_init_proxy_locked(ptr noundef, ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3920 dso_local ptr @find_get_task_by_vpid(i32 noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @handle_exit_race(ptr noundef %uaddr, i32 noundef %uval, ptr noundef %tsk) #0 align 16 !dbg !3923 {
entry:
  %retval = alloca i32, align 4
  %uaddr.addr = alloca ptr, align 8
  %uval.addr = alloca i32, align 4
  %tsk.addr = alloca ptr, align 8
  %uval2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !3927, metadata !DIExpression()), !dbg !3931
  store i32 %uval, ptr %uval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uval.addr, metadata !3928, metadata !DIExpression()), !dbg !3932
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !3929, metadata !DIExpression()), !dbg !3933
  call void @llvm.lifetime.start.p0(i64 4, ptr %uval2) #18, !dbg !3934
  call void @llvm.dbg.declare(metadata ptr %uval2, metadata !3930, metadata !DIExpression()), !dbg !3935
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !3936
  %tobool = icmp ne ptr %0, null, !dbg !3936
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3938

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %tsk.addr, align 8, !dbg !3939
  %futex_state = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 150, !dbg !3940
  %2 = load i32, ptr %futex_state, align 8, !dbg !3940
  %cmp = icmp ne i32 %2, 2, !dbg !3941
  br i1 %cmp, label %if.then, label %if.end, !dbg !3942

if.then:                                          ; preds = %land.lhs.true
  store i32 -16, ptr %retval, align 4, !dbg !3943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3943

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load ptr, ptr %uaddr.addr, align 8, !dbg !3944
  %call = call i32 @futex_get_value_locked(ptr noundef %uval2, ptr noundef %3) #19, !dbg !3946
  %tobool1 = icmp ne i32 %call, 0, !dbg !3946
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3947

if.then2:                                         ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !3948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3948

if.end3:                                          ; preds = %if.end
  %4 = load i32, ptr %uval2, align 4, !dbg !3949
  %5 = load i32, ptr %uval.addr, align 4, !dbg !3951
  %cmp4 = icmp ne i32 %4, %5, !dbg !3952
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3953

if.then5:                                         ; preds = %if.end3
  store i32 -11, ptr %retval, align 4, !dbg !3954
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3954

if.end6:                                          ; preds = %if.end3
  store i32 -3, ptr %retval, align 4, !dbg !3955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3955

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %uval2) #18, !dbg !3956
  %6 = load i32, ptr %retval, align 4, !dbg !3956
  ret i32 %6, !dbg !3956
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_task_struct(ptr noundef %t) #6 align 16 !dbg !15 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1659, metadata !DIExpression()), !dbg !3957
  %0 = load ptr, ptr %t.addr, align 8, !dbg !3958
  %usage = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3, !dbg !3960
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %usage) #19, !dbg !3961
  br i1 %call, label %if.end, label %if.then, !dbg !3962

if.then:                                          ; preds = %entry
  br label %return, !dbg !3963

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3964

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3967

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %t.addr, align 8, !dbg !3969
  call void @__put_task_struct(ptr noundef %1) #19, !dbg !3970
  br label %do.body1, !dbg !3971

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !3972

do.end2:                                          ; preds = %do.body1
  br label %return, !dbg !3974

return:                                           ; preds = %do.end2, %if.then
  ret void, !dbg !3975
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3976 dso_local void @__put_task_struct(ptr noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__fixup_pi_state_owner(ptr noundef %uaddr, ptr noundef %q, ptr noundef %argowner) #0 align 16 !dbg !3977 {
entry:
  %retval = alloca i32, align 4
  %uaddr.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %argowner.addr = alloca ptr, align 8
  %pi_state = alloca ptr, align 8
  %oldowner = alloca ptr, align 8
  %newowner = alloca ptr, align 8
  %uval = alloca i32, align 4
  %curval = alloca i32, align 4
  %newval = alloca i32, align 4
  %newtid = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp79 = alloca i32, align 4
  %__ret_warn_on81 = alloca i32, align 4
  %__flags92 = alloca i32, align 4
  %tmp105 = alloca i64, align 8
  store ptr %uaddr, ptr %uaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uaddr.addr, metadata !3979, metadata !DIExpression()), !dbg !4005
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !3980, metadata !DIExpression()), !dbg !4006
  store ptr %argowner, ptr %argowner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %argowner.addr, metadata !3981, metadata !DIExpression()), !dbg !4007
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi_state) #18, !dbg !4008
  call void @llvm.dbg.declare(metadata ptr %pi_state, metadata !3982, metadata !DIExpression()), !dbg !4009
  %0 = load ptr, ptr %q.addr, align 8, !dbg !4010
  %pi_state1 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 4, !dbg !4011
  %1 = load ptr, ptr %pi_state1, align 8, !dbg !4011
  store ptr %1, ptr %pi_state, align 8, !dbg !4009
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldowner) #18, !dbg !4012
  call void @llvm.dbg.declare(metadata ptr %oldowner, metadata !3983, metadata !DIExpression()), !dbg !4013
  call void @llvm.lifetime.start.p0(i64 8, ptr %newowner) #18, !dbg !4012
  call void @llvm.dbg.declare(metadata ptr %newowner, metadata !3984, metadata !DIExpression()), !dbg !4014
  call void @llvm.lifetime.start.p0(i64 4, ptr %uval) #18, !dbg !4015
  call void @llvm.dbg.declare(metadata ptr %uval, metadata !3985, metadata !DIExpression()), !dbg !4016
  call void @llvm.lifetime.start.p0(i64 4, ptr %curval) #18, !dbg !4015
  call void @llvm.dbg.declare(metadata ptr %curval, metadata !3986, metadata !DIExpression()), !dbg !4017
  call void @llvm.lifetime.start.p0(i64 4, ptr %newval) #18, !dbg !4015
  call void @llvm.dbg.declare(metadata ptr %newval, metadata !3987, metadata !DIExpression()), !dbg !4018
  call void @llvm.lifetime.start.p0(i64 4, ptr %newtid) #18, !dbg !4015
  call void @llvm.dbg.declare(metadata ptr %newtid, metadata !3988, metadata !DIExpression()), !dbg !4019
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !4020
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3989, metadata !DIExpression()), !dbg !4021
  store i32 0, ptr %err, align 4, !dbg !4021
  %2 = load ptr, ptr %pi_state, align 8, !dbg !4022
  %owner = getelementptr inbounds %struct.futex_pi_state, ptr %2, i32 0, i32 2, !dbg !4023
  %3 = load ptr, ptr %owner, align 8, !dbg !4023
  store ptr %3, ptr %oldowner, align 8, !dbg !4024
  br label %retry, !dbg !4025

retry:                                            ; preds = %if.then125, %entry
  call void @llvm.dbg.label(metadata !3990), !dbg !4026
  %4 = load ptr, ptr %argowner.addr, align 8, !dbg !4027
  %tobool = icmp ne ptr %4, null, !dbg !4027
  br i1 %tobool, label %if.else, label %if.then, !dbg !4028

if.then:                                          ; preds = %retry
  %5 = load ptr, ptr %oldowner, align 8, !dbg !4029
  %call = call ptr @get_current() #19, !dbg !4032
  %cmp = icmp ne ptr %5, %call, !dbg !4033
  br i1 %cmp, label %if.then2, label %if.end, !dbg !4034

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !4035
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4035

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %pi_state, align 8, !dbg !4037
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %6, i32 0, i32 1, !dbg !4039
  %call3 = call i32 @__rt_mutex_futex_trylock(ptr noundef %pi_mutex) #19, !dbg !4040
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4040
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4041

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4042

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %pi_state, align 8, !dbg !4044
  %pi_mutex7 = getelementptr inbounds %struct.futex_pi_state, ptr %7, i32 0, i32 1, !dbg !4045
  %call8 = call ptr @rt_mutex_owner(ptr noundef %pi_mutex7) #19, !dbg !4046
  store ptr %call8, ptr %newowner, align 8, !dbg !4047
  %8 = load ptr, ptr %newowner, align 8, !dbg !4048
  %tobool9 = icmp ne ptr %8, null, !dbg !4048
  %lnot = xor i1 %tobool9, true, !dbg !4048
  %lnot10 = xor i1 %lnot, true, !dbg !4048
  %lnot11 = xor i1 %lnot10, true, !dbg !4048
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !4048
  %conv = sext i32 %lnot.ext to i64, !dbg !4048
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4048
  %tobool12 = icmp ne i64 %expval, 0, !dbg !4048
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4050

if.then13:                                        ; preds = %if.end6
  store i32 -11, ptr %err, align 4, !dbg !4051
  br label %handle_err, !dbg !4053

if.end14:                                         ; preds = %if.end6
  br label %if.end53, !dbg !4054

if.else:                                          ; preds = %retry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !4055
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3991, metadata !DIExpression()), !dbg !4055
  %9 = load ptr, ptr %argowner.addr, align 8, !dbg !4055
  %call15 = call ptr @get_current() #19, !dbg !4055
  %cmp16 = icmp ne ptr %9, %call15, !dbg !4055
  %lnot18 = xor i1 %cmp16, true, !dbg !4055
  %lnot20 = xor i1 %lnot18, true, !dbg !4055
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !4055
  store i32 %lnot.ext21, ptr %__ret_warn_on, align 4, !dbg !4055
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !4056
  %tobool22 = icmp ne i32 %10, 0, !dbg !4056
  %lnot23 = xor i1 %tobool22, true, !dbg !4056
  %lnot25 = xor i1 %lnot23, true, !dbg !4056
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !4056
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !4056
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !4056
  %tobool29 = icmp ne i64 %expval28, 0, !dbg !4056
  br i1 %tobool29, label %if.then30, label %if.end40, !dbg !4055

if.then30:                                        ; preds = %if.else
  br label %do.body, !dbg !4056

do.body:                                          ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !4057
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3995, metadata !DIExpression()), !dbg !4057
  store i32 2307, ptr %__flags, align 4, !dbg !4057
  br label %do.body31, !dbg !4057

do.body31:                                        ; preds = %do.body
  br label %do.cond, !dbg !4058

do.cond:                                          ; preds = %do.body31
  br label %do.end, !dbg !4058

do.end:                                           ; preds = %do.cond
  br label %do.body32, !dbg !4057

do.body32:                                        ; preds = %do.end
  %11 = load i32, ptr %__flags, align 4, !dbg !4060
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 749, i32 %11, i64 12) #18, !dbg !4060, !srcloc !4062
  br label %do.cond33, !dbg !4060

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4060

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !4057

do.body35:                                        ; preds = %do.end34
  br label %do.cond36, !dbg !4063

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !4063

do.end37:                                         ; preds = %do.cond36
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !4056
  br label %do.cond38, !dbg !4057

do.cond38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !4057

do.end39:                                         ; preds = %do.cond38
  br label %if.end40, !dbg !4057

if.end40:                                         ; preds = %do.end39, %if.else
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !4055
  %tobool41 = icmp ne i32 %12, 0, !dbg !4055
  %lnot42 = xor i1 %tobool41, true, !dbg !4055
  %lnot44 = xor i1 %lnot42, true, !dbg !4055
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !4055
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !4055
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !4055
  store i64 %expval47, ptr %tmp, align 8, !dbg !4056
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !4065
  %13 = load i64, ptr %tmp, align 8, !dbg !4055
  %14 = load ptr, ptr %oldowner, align 8, !dbg !4066
  %call48 = call ptr @get_current() #19, !dbg !4068
  %cmp49 = icmp eq ptr %14, %call48, !dbg !4069
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !4070

if.then51:                                        ; preds = %if.end40
  store i32 1, ptr %retval, align 4, !dbg !4071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4071

if.end52:                                         ; preds = %if.end40
  %15 = load ptr, ptr %argowner.addr, align 8, !dbg !4073
  store ptr %15, ptr %newowner, align 8, !dbg !4074
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end14
  %16 = load ptr, ptr %newowner, align 8, !dbg !4075
  %call54 = call i32 @task_pid_vnr(ptr noundef %16) #19, !dbg !4076
  %or = or i32 %call54, -2147483648, !dbg !4077
  store i32 %or, ptr %newtid, align 4, !dbg !4078
  %17 = load ptr, ptr %pi_state, align 8, !dbg !4079
  %owner55 = getelementptr inbounds %struct.futex_pi_state, ptr %17, i32 0, i32 2, !dbg !4081
  %18 = load ptr, ptr %owner55, align 8, !dbg !4081
  %tobool56 = icmp ne ptr %18, null, !dbg !4079
  br i1 %tobool56, label %if.end59, label %if.then57, !dbg !4082

if.then57:                                        ; preds = %if.end53
  %19 = load i32, ptr %newtid, align 4, !dbg !4083
  %or58 = or i32 %19, 1073741824, !dbg !4083
  store i32 %or58, ptr %newtid, align 4, !dbg !4083
  br label %if.end59, !dbg !4084

if.end59:                                         ; preds = %if.then57, %if.end53
  %20 = load ptr, ptr %uaddr.addr, align 8, !dbg !4085
  %call60 = call i32 @futex_get_value_locked(ptr noundef %uval, ptr noundef %20) #19, !dbg !4086
  store i32 %call60, ptr %err, align 4, !dbg !4087
  %21 = load i32, ptr %err, align 4, !dbg !4088
  %tobool61 = icmp ne i32 %21, 0, !dbg !4088
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !4090

if.then62:                                        ; preds = %if.end59
  br label %handle_err, !dbg !4091

if.end63:                                         ; preds = %if.end59
  br label %for.cond, !dbg !4092

for.cond:                                         ; preds = %if.end72, %if.end63
  %22 = load i32, ptr %uval, align 4, !dbg !4093
  %and = and i32 %22, 1073741824, !dbg !4097
  %23 = load i32, ptr %newtid, align 4, !dbg !4098
  %or64 = or i32 %and, %23, !dbg !4099
  store i32 %or64, ptr %newval, align 4, !dbg !4100
  %24 = load ptr, ptr %uaddr.addr, align 8, !dbg !4101
  %25 = load i32, ptr %uval, align 4, !dbg !4102
  %26 = load i32, ptr %newval, align 4, !dbg !4103
  %call65 = call i32 @futex_cmpxchg_value_locked(ptr noundef %curval, ptr noundef %24, i32 noundef %25, i32 noundef %26) #19, !dbg !4104
  store i32 %call65, ptr %err, align 4, !dbg !4105
  %27 = load i32, ptr %err, align 4, !dbg !4106
  %tobool66 = icmp ne i32 %27, 0, !dbg !4106
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !4108

if.then67:                                        ; preds = %for.cond
  br label %handle_err, !dbg !4109

if.end68:                                         ; preds = %for.cond
  %28 = load i32, ptr %curval, align 4, !dbg !4110
  %29 = load i32, ptr %uval, align 4, !dbg !4112
  %cmp69 = icmp eq i32 %28, %29, !dbg !4113
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !4114

if.then71:                                        ; preds = %if.end68
  br label %for.end, !dbg !4115

if.end72:                                         ; preds = %if.end68
  %30 = load i32, ptr %curval, align 4, !dbg !4116
  store i32 %30, ptr %uval, align 4, !dbg !4117
  br label %for.cond, !dbg !4118, !llvm.loop !4119

for.end:                                          ; preds = %if.then71
  %31 = load ptr, ptr %pi_state, align 8, !dbg !4122
  %32 = load ptr, ptr %newowner, align 8, !dbg !4123
  call void @pi_state_update_owner(ptr noundef %31, ptr noundef %32) #19, !dbg !4124
  %33 = load ptr, ptr %argowner.addr, align 8, !dbg !4125
  %call73 = call ptr @get_current() #19, !dbg !4126
  %cmp74 = icmp eq ptr %33, %call73, !dbg !4127
  %conv75 = zext i1 %cmp74 to i32, !dbg !4127
  store i32 %conv75, ptr %retval, align 4, !dbg !4128
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4128

handle_err:                                       ; preds = %if.then67, %if.then62, %if.then13
  call void @llvm.dbg.label(metadata !3998), !dbg !4129
  %34 = load ptr, ptr %pi_state, align 8, !dbg !4130
  %pi_mutex76 = getelementptr inbounds %struct.futex_pi_state, ptr %34, i32 0, i32 1, !dbg !4130
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %pi_mutex76, i32 0, i32 0, !dbg !4130
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #19, !dbg !4130
  %35 = load ptr, ptr %q.addr, align 8, !dbg !4131
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %35, i32 0, i32 2, !dbg !4132
  %36 = load ptr, ptr %lock_ptr, align 8, !dbg !4132
  call void @spin_unlock(ptr noundef %36) #19, !dbg !4133
  %37 = load i32, ptr %err, align 4, !dbg !4134
  switch i32 %37, label %sw.default [
    i32 -14, label %sw.bb
    i32 -11, label %sw.bb78
  ], !dbg !4135

sw.bb:                                            ; preds = %handle_err
  %38 = load ptr, ptr %uaddr.addr, align 8, !dbg !4136
  %call77 = call i32 @fault_in_user_writeable(ptr noundef %38) #19, !dbg !4137
  store i32 %call77, ptr %err, align 4, !dbg !4138
  br label %sw.epilog, !dbg !4139

sw.bb78:                                          ; preds = %handle_err
  call void @__might_resched(ptr noundef @.str, i32 noundef 812, i32 noundef 0) #19, !dbg !4140
  %call80 = call i32 @_cond_resched() #19, !dbg !4140
  store i32 %call80, ptr %tmp79, align 4, !dbg !4140
  %39 = load i32, ptr %tmp79, align 4, !dbg !4140
  store i32 0, ptr %err, align 4, !dbg !4142
  br label %sw.epilog, !dbg !4143

sw.default:                                       ; preds = %handle_err
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on81) #18, !dbg !4144
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on81, metadata !3999, metadata !DIExpression()), !dbg !4144
  store i32 1, ptr %__ret_warn_on81, align 4, !dbg !4144
  %40 = load i32, ptr %__ret_warn_on81, align 4, !dbg !4145
  %tobool82 = icmp ne i32 %40, 0, !dbg !4145
  %lnot83 = xor i1 %tobool82, true, !dbg !4145
  %lnot85 = xor i1 %lnot83, true, !dbg !4145
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !4145
  %conv87 = sext i32 %lnot.ext86 to i64, !dbg !4145
  %expval88 = call i64 @llvm.expect.i64(i64 %conv87, i64 0), !dbg !4145
  %tobool89 = icmp ne i64 %expval88, 0, !dbg !4145
  br i1 %tobool89, label %if.then90, label %if.end104, !dbg !4144

if.then90:                                        ; preds = %sw.default
  br label %do.body91, !dbg !4145

do.body91:                                        ; preds = %if.then90
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags92) #18, !dbg !4146
  call void @llvm.dbg.declare(metadata ptr %__flags92, metadata !4002, metadata !DIExpression()), !dbg !4146
  store i32 2307, ptr %__flags92, align 4, !dbg !4146
  br label %do.body93, !dbg !4146

do.body93:                                        ; preds = %do.body91
  br label %do.cond94, !dbg !4147

do.cond94:                                        ; preds = %do.body93
  br label %do.end95, !dbg !4147

do.end95:                                         ; preds = %do.cond94
  br label %do.body96, !dbg !4146

do.body96:                                        ; preds = %do.end95
  %41 = load i32, ptr %__flags92, align 4, !dbg !4149
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 817, i32 %41, i64 12) #18, !dbg !4149, !srcloc !4151
  br label %do.cond97, !dbg !4149

do.cond97:                                        ; preds = %do.body96
  br label %do.end98, !dbg !4149

do.end98:                                         ; preds = %do.cond97
  br label %do.body99, !dbg !4146

do.body99:                                        ; preds = %do.end98
  br label %do.cond100, !dbg !4152

do.cond100:                                       ; preds = %do.body99
  br label %do.end101, !dbg !4152

do.end101:                                        ; preds = %do.cond100
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags92) #18, !dbg !4145
  br label %do.cond102, !dbg !4146

do.cond102:                                       ; preds = %do.end101
  br label %do.end103, !dbg !4146

do.end103:                                        ; preds = %do.cond102
  br label %if.end104, !dbg !4146

if.end104:                                        ; preds = %do.end103, %sw.default
  %42 = load i32, ptr %__ret_warn_on81, align 4, !dbg !4144
  %tobool106 = icmp ne i32 %42, 0, !dbg !4144
  %lnot107 = xor i1 %tobool106, true, !dbg !4144
  %lnot109 = xor i1 %lnot107, true, !dbg !4144
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !4144
  %conv111 = sext i32 %lnot.ext110 to i64, !dbg !4144
  %expval112 = call i64 @llvm.expect.i64(i64 %conv111, i64 0), !dbg !4144
  store i64 %expval112, ptr %tmp105, align 8, !dbg !4145
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on81) #18, !dbg !4154
  %43 = load i64, ptr %tmp105, align 8, !dbg !4144
  br label %sw.epilog, !dbg !4155

sw.epilog:                                        ; preds = %if.end104, %sw.bb78, %sw.bb
  %44 = load ptr, ptr %q.addr, align 8, !dbg !4156
  %lock_ptr113 = getelementptr inbounds %struct.futex_q, ptr %44, i32 0, i32 2, !dbg !4157
  %45 = load ptr, ptr %lock_ptr113, align 8, !dbg !4157
  call void @spin_lock(ptr noundef %45) #19, !dbg !4158
  %46 = load ptr, ptr %pi_state, align 8, !dbg !4159
  %pi_mutex114 = getelementptr inbounds %struct.futex_pi_state, ptr %46, i32 0, i32 1, !dbg !4159
  %wait_lock115 = getelementptr inbounds %struct.rt_mutex_base, ptr %pi_mutex114, i32 0, i32 0, !dbg !4159
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock115) #19, !dbg !4159
  %47 = load ptr, ptr %pi_state, align 8, !dbg !4160
  %owner116 = getelementptr inbounds %struct.futex_pi_state, ptr %47, i32 0, i32 2, !dbg !4162
  %48 = load ptr, ptr %owner116, align 8, !dbg !4162
  %49 = load ptr, ptr %oldowner, align 8, !dbg !4163
  %cmp117 = icmp ne ptr %48, %49, !dbg !4164
  br i1 %cmp117, label %if.then119, label %if.end123, !dbg !4165

if.then119:                                       ; preds = %sw.epilog
  %50 = load ptr, ptr %argowner.addr, align 8, !dbg !4166
  %call120 = call ptr @get_current() #19, !dbg !4167
  %cmp121 = icmp eq ptr %50, %call120, !dbg !4168
  %conv122 = zext i1 %cmp121 to i32, !dbg !4168
  store i32 %conv122, ptr %retval, align 4, !dbg !4169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4169

if.end123:                                        ; preds = %sw.epilog
  %51 = load i32, ptr %err, align 4, !dbg !4170
  %tobool124 = icmp ne i32 %51, 0, !dbg !4170
  br i1 %tobool124, label %if.end126, label %if.then125, !dbg !4172

if.then125:                                       ; preds = %if.end123
  br label %retry, !dbg !4173

if.end126:                                        ; preds = %if.end123
  %52 = load ptr, ptr %pi_state, align 8, !dbg !4174
  %53 = load ptr, ptr %pi_state, align 8, !dbg !4175
  %pi_mutex127 = getelementptr inbounds %struct.futex_pi_state, ptr %53, i32 0, i32 1, !dbg !4176
  %call128 = call ptr @rt_mutex_owner(ptr noundef %pi_mutex127) #19, !dbg !4177
  call void @pi_state_update_owner(ptr noundef %52, ptr noundef %call128) #19, !dbg !4178
  %54 = load i32, ptr %err, align 4, !dbg !4179
  store i32 %54, ptr %retval, align 4, !dbg !4180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4180

cleanup:                                          ; preds = %if.end126, %if.then119, %for.end, %if.then51, %if.then5, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !4181
  call void @llvm.lifetime.end.p0(i64 4, ptr %newtid) #18, !dbg !4181
  call void @llvm.lifetime.end.p0(i64 4, ptr %newval) #18, !dbg !4181
  call void @llvm.lifetime.end.p0(i64 4, ptr %curval) #18, !dbg !4181
  call void @llvm.lifetime.end.p0(i64 4, ptr %uval) #18, !dbg !4181
  call void @llvm.lifetime.end.p0(i64 8, ptr %newowner) #18, !dbg !4181
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldowner) #18, !dbg !4181
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi_state) #18, !dbg !4181
  %55 = load i32, ptr %retval, align 4, !dbg !4181
  ret i32 %55, !dbg !4181
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4182 dso_local i32 @__rt_mutex_futex_trylock(ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_rt_mutex_init_waiter(ptr noundef %waiter) #6 align 16 !dbg !4183 {
entry:
  %waiter.addr = alloca ptr, align 8
  store ptr %waiter, ptr %waiter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %waiter.addr, metadata !4185, metadata !DIExpression()), !dbg !4186
  ret void, !dbg !4187
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rt_mutex_top_waiter(ptr noundef %lock) #6 align 16 !dbg !4188 {
entry:
  %lock.addr = alloca ptr, align 8
  %leftmost = alloca ptr, align 8
  %w = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4192, metadata !DIExpression()), !dbg !4199
  call void @llvm.lifetime.start.p0(i64 8, ptr %leftmost) #18, !dbg !4200
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !4193, metadata !DIExpression()), !dbg !4201
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4202
  %waiters = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1, !dbg !4202
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %waiters, i32 0, i32 1, !dbg !4202
  %1 = load ptr, ptr %rb_leftmost, align 8, !dbg !4202
  store ptr %1, ptr %leftmost, align 8, !dbg !4201
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #18, !dbg !4203
  call void @llvm.dbg.declare(metadata ptr %w, metadata !4194, metadata !DIExpression()), !dbg !4204
  store ptr null, ptr %w, align 8, !dbg !4204
  br label %do.body, !dbg !4205

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !4206
  %wait_lock = getelementptr inbounds %struct.rt_mutex_base, ptr %2, i32 0, i32 0, !dbg !4206
  br label %do.cond, !dbg !4206

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4206

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %leftmost, align 8, !dbg !4208
  %tobool = icmp ne ptr %3, null, !dbg !4208
  br i1 %tobool, label %if.then, label %if.end17, !dbg !4209

if.then:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !4210
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4195, metadata !DIExpression()), !dbg !4210
  %4 = load ptr, ptr %leftmost, align 8, !dbg !4210
  store ptr %4, ptr %__mptr, align 8, !dbg !4210
  %5 = load ptr, ptr %__mptr, align 8, !dbg !4210
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !4210
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4210
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !4211
  %6 = load ptr, ptr %tmp, align 8, !dbg !4210
  store ptr %6, ptr %w, align 8, !dbg !4212
  br label %do.body1, !dbg !4213

do.body1:                                         ; preds = %if.then
  %7 = load ptr, ptr %w, align 8, !dbg !4214
  %lock2 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 3, !dbg !4214
  %8 = load ptr, ptr %lock2, align 8, !dbg !4214
  %9 = load ptr, ptr %lock.addr, align 8, !dbg !4214
  %cmp = icmp ne ptr %8, %9, !dbg !4214
  %lnot = xor i1 %cmp, true, !dbg !4214
  %lnot3 = xor i1 %lnot, true, !dbg !4214
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4214
  %conv = sext i32 %lnot.ext to i64, !dbg !4214
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4214
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4214
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !4217

if.then5:                                         ; preds = %do.body1
  br label %do.body6, !dbg !4214

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !4218

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !4220

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !4220

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !4218

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 137, i32 0, i64 12) #18, !dbg !4222, !srcloc !4224
  br label %do.cond11, !dbg !4222

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4222

do.end12:                                         ; preds = %do.cond11
  unreachable, !dbg !4218

do.cond13:                                        ; No predecessors!
  br label %do.end14, !dbg !4218

do.end14:                                         ; preds = %do.cond13
  br label %if.end, !dbg !4218

if.end:                                           ; preds = %do.end14, %do.body1
  br label %do.cond15, !dbg !4217

do.cond15:                                        ; preds = %if.end
  br label %do.end16, !dbg !4217

do.end16:                                         ; preds = %do.cond15
  br label %if.end17, !dbg !4225

if.end17:                                         ; preds = %do.end16, %do.end
  %10 = load ptr, ptr %w, align 8, !dbg !4226
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #18, !dbg !4227
  call void @llvm.lifetime.end.p0(i64 8, ptr %leftmost) #18, !dbg !4227
  ret ptr %10, !dbg !4228
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4229 dso_local zeroext i1 @__rt_mutex_futex_unlock(ptr noundef, ptr noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4233 dso_local void @rt_mutex_postunlock(ptr noundef) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nounwind }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { nounwind memory(none) }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!1575}
!llvm.named.register.rsp = !{!1662}
!llvm.module.flags = !{!1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!llvm.ident = !{!1671}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/futex/pi.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "34bb74a4306faf82e4787f46031782bb")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 18)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 480, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 21)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "put_task_map", scope: !15, file: !16, line: 134, type: !1660, isLocal: true, isDefinition: true)
!15 = distinct !DISubprogram(name: "put_task_struct", scope: !16, file: !16, line: 124, type: !17, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !1658)
!16 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef3d4d4bfe7d22703d2dead2224ab376")
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !21, line: 746, size: 58368, elements: !22)
!21 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!22 = !{!23, !37, !38, !40, !52, !53, !54, !55, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !147, !158, !290, !294, !297, !328, !329, !330, !331, !342, !344, !345, !346, !347, !348, !349, !360, !361, !364, !365, !366, !367, !368, !369, !370, !371, !378, !379, !386, !387, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !673, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !729, !731, !732, !733, !745, !747, !748, !749, !750, !751, !752, !758, !759, !760, !761, !762, !763, !764, !778, !784, !788, !789, !790, !793, !797, !800, !807, !812, !815, !818, !821, !824, !827, !830, !836, !837, !838, !844, !845, !849, !850, !851, !854, !862, !863, !872, !883, !884, !885, !886, !887, !892, !893, !894, !919, !920, !923, !926, !929, !932, !935, !936, !1023, !1034, !1035, !1036, !1037, !1043, !1048, !1049, !1050, !1053, !1054, !1066, !1069, !1070, !1105, !1106, !1107, !1110, !1111, !1112, !1115, !1116, !1117, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1149, !1152, !1220, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1232, !1310, !1312, !1313, !1314, !1315, !1316, !1328, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1346, !1347, !1348}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !20, file: !21, line: 752, baseType: !24, size: 192)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !25, line: 56, size: 192, elements: !26)
!25 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!26 = !{!27, !29, !30, !36}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !24, file: !25, line: 57, baseType: !28, size: 64)
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !24, file: !25, line: 58, baseType: !28, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !24, file: !25, line: 59, baseType: !31, size: 32, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !32, line: 21, baseType: !33)
!32 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !34, line: 27, baseType: !35)
!34 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !24, file: !25, line: 61, baseType: !31, size: 32, offset: 160)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !20, file: !21, line: 754, baseType: !35, size: 32, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !20, file: !21, line: 767, baseType: !39, size: 64, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !20, file: !21, line: 768, baseType: !41, size: 32, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !42, line: 113, baseType: !43)
!42 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !42, line: 111, size: 32, elements: !44)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !43, file: !42, line: 112, baseType: !46, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !47, line: 174, baseType: !48)
!47 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !47, line: 172, size: 32, elements: !49)
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !48, file: !47, line: 173, baseType: !51, size: 32)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !20, file: !21, line: 770, baseType: !35, size: 32, offset: 352)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !20, file: !21, line: 771, baseType: !35, size: 32, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !20, file: !21, line: 774, baseType: !51, size: 32, offset: 416)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !20, file: !21, line: 775, baseType: !56, size: 128, offset: 448)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !57, line: 58, size: 128, elements: !58)
!57 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!58 = !{!59, !65, !70, !74}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !56, file: !57, line: 59, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !61, line: 60, size: 64, elements: !62)
!61 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !60, file: !61, line: 61, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, scope: !56, file: !57, line: 60, baseType: !66, size: 32, offset: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !56, file: !57, line: 60, size: 32, elements: !67)
!67 = !{!68, !69}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !66, file: !57, line: 61, baseType: !35, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !66, file: !57, line: 62, baseType: !46, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !56, file: !57, line: 65, baseType: !71, size: 16, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !32, line: 19, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !34, line: 24, baseType: !73)
!73 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !56, file: !57, line: 65, baseType: !71, size: 16, offset: 112)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !20, file: !21, line: 776, baseType: !35, size: 32, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !20, file: !21, line: 777, baseType: !28, size: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !20, file: !21, line: 778, baseType: !19, size: 64, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !20, file: !21, line: 787, baseType: !51, size: 32, offset: 768)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !20, file: !21, line: 788, baseType: !51, size: 32, offset: 800)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !20, file: !21, line: 790, baseType: !51, size: 32, offset: 832)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !20, file: !21, line: 792, baseType: !51, size: 32, offset: 864)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !20, file: !21, line: 793, baseType: !51, size: 32, offset: 896)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !20, file: !21, line: 794, baseType: !51, size: 32, offset: 928)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !20, file: !21, line: 795, baseType: !35, size: 32, offset: 960)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !20, file: !21, line: 797, baseType: !86, size: 2048, offset: 1024)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !21, line: 551, size: 2048, elements: !87)
!87 = !{!88, !93, !101, !105, !106, !112, !113, !114, !115, !116, !117, !121, !122, !123, !124, !126, !129, !130, !131}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !86, file: !21, line: 553, baseType: !89, size: 128)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !21, line: 411, size: 128, elements: !90)
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !89, file: !21, line: 412, baseType: !28, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !89, file: !21, line: 413, baseType: !31, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !86, file: !21, line: 554, baseType: !94, size: 192, align: 64, offset: 128)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !95, line: 5, size: 192, align: 64, elements: !96)
!95 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!96 = !{!97, !98, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !94, file: !95, line: 6, baseType: !28, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !94, file: !95, line: 7, baseType: !99, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !94, file: !95, line: 8, baseType: !99, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !86, file: !21, line: 555, baseType: !102, size: 64, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !32, line: 23, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !34, line: 31, baseType: !104)
!104 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !86, file: !21, line: 556, baseType: !102, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !86, file: !21, line: 558, baseType: !107, size: 128, offset: 448)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !47, line: 190, size: 128, elements: !108)
!108 = !{!109, !111}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !107, file: !47, line: 191, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !107, file: !47, line: 191, baseType: !110, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !86, file: !21, line: 559, baseType: !35, size: 32, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !86, file: !21, line: 561, baseType: !102, size: 64, offset: 640)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !86, file: !21, line: 562, baseType: !102, size: 64, offset: 704)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !86, file: !21, line: 563, baseType: !102, size: 64, offset: 768)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !86, file: !21, line: 564, baseType: !102, size: 64, offset: 832)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !86, file: !21, line: 565, baseType: !118, size: 64, offset: 896)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !32, line: 22, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !34, line: 30, baseType: !120)
!120 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !86, file: !21, line: 566, baseType: !102, size: 64, offset: 960)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !86, file: !21, line: 568, baseType: !102, size: 64, offset: 1024)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !86, file: !21, line: 571, baseType: !51, size: 32, offset: 1088)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !86, file: !21, line: 572, baseType: !125, size: 64, offset: 1152)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !86, file: !21, line: 574, baseType: !127, size: 64, offset: 1216)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !21, line: 49, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !86, file: !21, line: 576, baseType: !127, size: 64, offset: 1280)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !86, file: !21, line: 578, baseType: !28, size: 64, offset: 1344)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !86, file: !21, line: 588, baseType: !132, size: 512, align: 512, offset: 1536)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !21, line: 497, size: 512, align: 512, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !132, file: !21, line: 498, baseType: !102, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !132, file: !21, line: 499, baseType: !102, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !132, file: !21, line: 500, baseType: !102, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !132, file: !21, line: 501, baseType: !31, size: 32, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !132, file: !21, line: 502, baseType: !31, size: 32, offset: 224)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !132, file: !21, line: 503, baseType: !28, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !132, file: !21, line: 504, baseType: !28, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !132, file: !21, line: 505, baseType: !28, size: 64, offset: 384)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !132, file: !21, line: 506, baseType: !143, size: 64, align: 64, offset: 448)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !21, line: 445, size: 64, align: 64, elements: !144)
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !143, file: !21, line: 446, baseType: !35, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !143, file: !21, line: 447, baseType: !35, size: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !20, file: !21, line: 798, baseType: !148, size: 384, offset: 3072)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !21, line: 592, size: 384, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !148, file: !21, line: 593, baseType: !107, size: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !148, file: !21, line: 594, baseType: !28, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !148, file: !21, line: 595, baseType: !28, size: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !148, file: !21, line: 596, baseType: !35, size: 32, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !148, file: !21, line: 597, baseType: !73, size: 16, offset: 288)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !148, file: !21, line: 598, baseType: !73, size: 16, offset: 304)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !148, file: !21, line: 600, baseType: !157, size: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !20, file: !21, line: 799, baseType: !159, size: 1792, offset: 3456)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !21, line: 610, size: 1792, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !287, !288}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !159, file: !21, line: 611, baseType: !94, size: 192, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !159, file: !21, line: 618, baseType: !102, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !159, file: !21, line: 619, baseType: !102, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !159, file: !21, line: 620, baseType: !102, size: 64, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !159, file: !21, line: 621, baseType: !102, size: 64, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !159, file: !21, line: 622, baseType: !102, size: 64, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !159, file: !21, line: 629, baseType: !118, size: 64, offset: 512)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !159, file: !21, line: 630, baseType: !102, size: 64, offset: 576)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !159, file: !21, line: 631, baseType: !35, size: 32, offset: 640)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !159, file: !21, line: 653, baseType: !35, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !159, file: !21, line: 654, baseType: !35, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !159, file: !21, line: 655, baseType: !35, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !159, file: !21, line: 656, baseType: !35, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !159, file: !21, line: 662, baseType: !175, size: 512, offset: 704)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !176, line: 118, size: 512, elements: !177)
!176 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!177 = !{!178, !186, !187, !196, !283, !284, !285, !286}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !175, file: !176, line: 119, baseType: !179, size: 256)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !180, line: 9, size: 256, elements: !181)
!180 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !179, file: !180, line: 10, baseType: !94, size: 192, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !179, file: !180, line: 11, baseType: !184, size: 64, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !185, line: 29, baseType: !118)
!185 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !175, file: !176, line: 120, baseType: !184, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !175, file: !176, line: 121, baseType: !188, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!191, !195}
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !176, line: 65, baseType: !35, size: 32, elements: !192)
!192 = !{!193, !194}
!193 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!194 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !175, file: !176, line: 122, baseType: !197, size: 64, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !176, line: 159, size: 512, align: 512, elements: !199)
!199 = !{!200, !251, !252, !256, !266, !267, !278, !282}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !198, file: !176, line: 160, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !176, line: 215, size: 4608, align: 512, elements: !203)
!203 = !{!204, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !202, file: !176, line: 216, baseType: !205, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !206, line: 23, baseType: !207)
!206 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !206, line: 14, size: 32, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !207, file: !206, line: 15, baseType: !210, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !211, line: 44, baseType: !212)
!211 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !211, line: 14, size: 32, elements: !213)
!213 = !{!214}
!214 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !211, line: 15, baseType: !215, size: 32)
!215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !212, file: !211, line: 15, size: 32, elements: !216)
!216 = !{!217, !218, !226}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !215, file: !211, line: 16, baseType: !46, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !211, line: 24, baseType: !219, size: 16)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !211, line: 24, size: 16, elements: !220)
!220 = !{!221, !225}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !219, file: !211, line: 25, baseType: !222, size: 8)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !32, line: 17, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !34, line: 21, baseType: !224)
!224 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !219, file: !211, line: 26, baseType: !222, size: 8, offset: 8)
!226 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !211, line: 28, baseType: !227, size: 32)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !211, line: 28, size: 32, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !227, file: !211, line: 29, baseType: !71, size: 16)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !227, file: !211, line: 30, baseType: !71, size: 16, offset: 16)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !202, file: !176, line: 217, baseType: !35, size: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !202, file: !176, line: 218, baseType: !35, size: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !202, file: !176, line: 219, baseType: !35, size: 32, offset: 96)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !202, file: !176, line: 220, baseType: !35, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !202, file: !176, line: 221, baseType: !35, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !202, file: !176, line: 222, baseType: !35, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !202, file: !176, line: 223, baseType: !35, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !202, file: !176, line: 224, baseType: !35, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !202, file: !176, line: 226, baseType: !35, size: 32, offset: 160)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !202, file: !176, line: 227, baseType: !73, size: 16, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !202, file: !176, line: 228, baseType: !73, size: 16, offset: 208)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !202, file: !176, line: 229, baseType: !35, size: 32, offset: 224)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !202, file: !176, line: 235, baseType: !184, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !202, file: !176, line: 236, baseType: !195, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !202, file: !176, line: 237, baseType: !184, size: 64, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !202, file: !176, line: 238, baseType: !195, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !202, file: !176, line: 239, baseType: !248, size: 4096, align: 512, offset: 512)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 4096, align: 512, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 8)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !198, file: !176, line: 161, baseType: !35, size: 32, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !198, file: !176, line: 162, baseType: !253, size: 32, offset: 96)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !47, line: 32, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !255, line: 96, baseType: !51)
!255 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!256 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !198, file: !176, line: 163, baseType: !257, size: 32, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !258, line: 274, baseType: !259)
!258 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !258, line: 274, size: 32, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !259, file: !258, line: 274, baseType: !262, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !258, line: 69, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !258, line: 64, size: 32, elements: !264)
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !263, file: !258, line: 65, baseType: !35, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !198, file: !176, line: 164, baseType: !195, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !198, file: !176, line: 165, baseType: !268, size: 128, offset: 256)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !180, line: 14, size: 128, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !268, file: !180, line: 15, baseType: !271, size: 128)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !95, line: 26, size: 128, elements: !272)
!272 = !{!273, !277}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !271, file: !95, line: 27, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !95, line: 12, size: 64, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !274, file: !95, line: 13, baseType: !99, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !271, file: !95, line: 28, baseType: !99, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !198, file: !176, line: 166, baseType: !279, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!184}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !198, file: !176, line: 167, baseType: !184, size: 64, offset: 448)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !175, file: !176, line: 123, baseType: !222, size: 8, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !175, file: !176, line: 124, baseType: !222, size: 8, offset: 456)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !175, file: !176, line: 125, baseType: !222, size: 8, offset: 464)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !175, file: !176, line: 126, baseType: !222, size: 8, offset: 472)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !159, file: !21, line: 671, baseType: !175, size: 512, offset: 1216)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !159, file: !21, line: 679, baseType: !289, size: 64, offset: 1728)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !20, file: !21, line: 800, baseType: !291, size: 64, offset: 5248)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !21, line: 800, flags: DIFlagFwdDecl)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !20, file: !21, line: 809, baseType: !295, size: 64, offset: 5312)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !21, line: 70, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !20, file: !21, line: 825, baseType: !298, size: 2048, align: 512, offset: 5632)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !21, line: 509, size: 2048, align: 512, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !298, file: !21, line: 511, baseType: !102, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !298, file: !21, line: 512, baseType: !102, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !298, file: !21, line: 513, baseType: !102, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !298, file: !21, line: 514, baseType: !102, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !298, file: !21, line: 515, baseType: !102, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !298, file: !21, line: 516, baseType: !102, size: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !298, file: !21, line: 518, baseType: !102, size: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !298, file: !21, line: 519, baseType: !102, size: 64, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !298, file: !21, line: 520, baseType: !118, size: 64, offset: 512)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !298, file: !21, line: 522, baseType: !102, size: 64, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !298, file: !21, line: 523, baseType: !102, size: 64, offset: 640)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !298, file: !21, line: 524, baseType: !118, size: 64, offset: 704)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !298, file: !21, line: 526, baseType: !118, size: 64, offset: 768)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !298, file: !21, line: 527, baseType: !102, size: 64, offset: 832)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !298, file: !21, line: 529, baseType: !102, size: 64, offset: 896)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !298, file: !21, line: 530, baseType: !102, size: 64, offset: 960)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !298, file: !21, line: 531, baseType: !102, size: 64, offset: 1024)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !298, file: !21, line: 532, baseType: !102, size: 64, offset: 1088)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !298, file: !21, line: 533, baseType: !102, size: 64, offset: 1152)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !298, file: !21, line: 535, baseType: !102, size: 64, offset: 1216)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !298, file: !21, line: 536, baseType: !102, size: 64, offset: 1280)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !298, file: !21, line: 537, baseType: !102, size: 64, offset: 1344)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !298, file: !21, line: 538, baseType: !102, size: 64, offset: 1408)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !298, file: !21, line: 539, baseType: !102, size: 64, offset: 1472)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !298, file: !21, line: 540, baseType: !102, size: 64, offset: 1536)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !298, file: !21, line: 541, baseType: !102, size: 64, offset: 1600)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !298, file: !21, line: 542, baseType: !102, size: 64, offset: 1664)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !298, file: !21, line: 543, baseType: !102, size: 64, offset: 1728)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !20, file: !21, line: 833, baseType: !35, size: 32, offset: 7680)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !20, file: !21, line: 836, baseType: !35, size: 32, offset: 7712)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !20, file: !21, line: 837, baseType: !51, size: 32, offset: 7744)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !20, file: !21, line: 838, baseType: !332, size: 64, offset: 7808)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !335, line: 19, baseType: !336)
!335 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !335, line: 19, size: 64, elements: !337)
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !336, file: !335, line: 19, baseType: !339, size: 64)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 1)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !20, file: !21, line: 839, baseType: !343, size: 64, offset: 7872)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !20, file: !21, line: 840, baseType: !334, size: 64, offset: 7936)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !20, file: !21, line: 841, baseType: !39, size: 64, offset: 8000)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !20, file: !21, line: 843, baseType: !73, size: 16, offset: 8064)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !20, file: !21, line: 845, baseType: !73, size: 16, offset: 8080)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !20, file: !21, line: 848, baseType: !51, size: 32, offset: 8096)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !20, file: !21, line: 849, baseType: !350, size: 32, offset: 8128)
!350 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !21, line: 718, size: 32, elements: !351)
!351 = !{!352, !359}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !350, file: !21, line: 724, baseType: !353, size: 32)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !350, file: !21, line: 719, size: 32, elements: !354)
!354 = !{!355, !356, !357, !358}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !353, file: !21, line: 720, baseType: !222, size: 8)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !353, file: !21, line: 721, baseType: !222, size: 8, offset: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !353, file: !21, line: 722, baseType: !222, size: 8, offset: 16)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !353, file: !21, line: 723, baseType: !222, size: 8, offset: 24)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !350, file: !21, line: 725, baseType: !31, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !20, file: !21, line: 850, baseType: !107, size: 128, offset: 8192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !20, file: !21, line: 851, baseType: !362, size: 64, offset: 8320)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !21, line: 60, flags: DIFlagFwdDecl)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !20, file: !21, line: 855, baseType: !28, size: 64, offset: 8384)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !20, file: !21, line: 856, baseType: !222, size: 8, offset: 8448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !20, file: !21, line: 857, baseType: !222, size: 8, offset: 8456)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !20, file: !21, line: 858, baseType: !51, size: 32, offset: 8480)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !20, file: !21, line: 859, baseType: !107, size: 128, offset: 8512)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !20, file: !21, line: 860, baseType: !51, size: 32, offset: 8640)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !20, file: !21, line: 861, baseType: !107, size: 128, offset: 8704)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !20, file: !21, line: 873, baseType: !372, size: 256, offset: 8832)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !21, line: 376, size: 256, elements: !373)
!373 = !{!374, !375, !376, !377}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !372, file: !21, line: 381, baseType: !28, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !372, file: !21, line: 384, baseType: !104, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !372, file: !21, line: 389, baseType: !104, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !372, file: !21, line: 392, baseType: !104, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !20, file: !21, line: 875, baseType: !107, size: 128, offset: 9088)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !20, file: !21, line: 877, baseType: !380, size: 320, offset: 9216)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !381, line: 86, size: 320, elements: !382)
!381 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!382 = !{!383, !384, !385}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !380, file: !381, line: 87, baseType: !51, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !380, file: !381, line: 88, baseType: !107, size: 128, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !380, file: !381, line: 89, baseType: !107, size: 128, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !20, file: !21, line: 878, baseType: !94, size: 192, align: 64, offset: 9536)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !20, file: !21, line: 881, baseType: !388, size: 64, offset: 9728)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !390, line: 733, size: 10240, elements: !391)
!390 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!391 = !{!392, !583}
!392 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !390, line: 734, baseType: !393, size: 10240)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !389, file: !390, line: 734, size: 10240, elements: !394)
!394 = !{!395, !399, !421, !428, !429, !430, !431, !432, !433, !441, !442, !443, !449, !450, !457, !458, !459, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !500, !514, !517, !549, !550, !551, !554, !557, !558, !561, !562, !563, !570, !571}
!395 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !390, line: 739, baseType: !396, size: 512, align: 512)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !393, file: !390, line: 739, size: 512, align: 512, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !396, file: !390, line: 747, baseType: !46, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !393, file: !390, line: 750, baseType: !400, size: 128, offset: 512)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !401, line: 218, size: 128, elements: !402)
!401 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!402 = !{!403, !419, !420}
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !401, line: 219, baseType: !404, size: 32)
!404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !401, line: 219, size: 32, elements: !405)
!405 = !{!406, !415}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !404, file: !401, line: 220, baseType: !407, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !408, line: 29, baseType: !409)
!408 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !408, line: 17, size: 32, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, scope: !409, file: !408, line: 18, baseType: !412, size: 32)
!412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !409, file: !408, line: 18, size: 32, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !412, file: !408, line: 19, baseType: !207, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !404, file: !401, line: 221, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !401, line: 197, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !401, line: 197, elements: !418)
!418 = !{}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !400, file: !401, line: 223, baseType: !35, size: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !400, file: !401, line: 224, baseType: !39, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !393, file: !390, line: 752, baseType: !422, size: 64, offset: 640)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!28, !425, !28, !28, !28, !28}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !427, line: 537, flags: DIFlagFwdDecl)
!427 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!428 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !393, file: !390, line: 756, baseType: !28, size: 64, offset: 704)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !393, file: !390, line: 757, baseType: !28, size: 64, offset: 768)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !393, file: !390, line: 760, baseType: !28, size: 64, offset: 832)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !393, file: !390, line: 761, baseType: !28, size: 64, offset: 896)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !393, file: !390, line: 763, baseType: !28, size: 64, offset: 960)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !393, file: !390, line: 764, baseType: !434, size: 64, offset: 1024)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !427, line: 299, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !427, line: 299, size: 64, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !436, file: !427, line: 299, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !440, line: 18, baseType: !28)
!440 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!441 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !393, file: !390, line: 773, baseType: !46, size: 32, offset: 1088)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !393, file: !390, line: 785, baseType: !46, size: 32, offset: 1120)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !393, file: !390, line: 795, baseType: !444, size: 64, offset: 1152)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !390, line: 726, size: 128, elements: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !445, file: !390, line: 727, baseType: !102, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !445, file: !390, line: 728, baseType: !51, size: 32, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !393, file: !390, line: 801, baseType: !28, size: 64, offset: 1216)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !393, file: !390, line: 804, baseType: !451, size: 64, offset: 1280)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !452, line: 13, baseType: !453)
!452 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !47, line: 181, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !47, line: 179, size: 64, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !454, file: !47, line: 180, baseType: !118, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !393, file: !390, line: 806, baseType: !51, size: 32, offset: 1344)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !393, file: !390, line: 808, baseType: !407, size: 32, offset: 1376)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !393, file: !390, line: 823, baseType: !460, size: 320, offset: 1408)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !461, line: 48, size: 320, elements: !462)
!461 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!462 = !{!463, !464, !465, !470, !471}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !460, file: !461, line: 49, baseType: !451, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !460, file: !461, line: 55, baseType: !451, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !460, file: !461, line: 57, baseType: !466, size: 32, offset: 128)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !467, line: 15, size: 32, elements: !468)
!467 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !466, file: !467, line: 20, baseType: !46, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !460, file: !461, line: 59, baseType: !205, size: 32, offset: 160)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !460, file: !461, line: 60, baseType: !107, size: 128, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !393, file: !390, line: 825, baseType: !107, size: 128, offset: 1728)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !393, file: !390, line: 845, baseType: !51, size: 32, offset: 1856)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !393, file: !390, line: 849, baseType: !28, size: 64, offset: 1920)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !393, file: !390, line: 850, baseType: !28, size: 64, offset: 1984)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !393, file: !390, line: 852, baseType: !28, size: 64, offset: 2048)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !393, file: !390, line: 853, baseType: !28, size: 64, offset: 2112)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !393, file: !390, line: 854, baseType: !453, size: 64, offset: 2176)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !393, file: !390, line: 855, baseType: !28, size: 64, offset: 2240)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !393, file: !390, line: 856, baseType: !28, size: 64, offset: 2304)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !393, file: !390, line: 857, baseType: !28, size: 64, offset: 2368)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !393, file: !390, line: 858, baseType: !28, size: 64, offset: 2432)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !393, file: !390, line: 865, baseType: !262, size: 32, offset: 2496)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !393, file: !390, line: 867, baseType: !407, size: 32, offset: 2528)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !393, file: !390, line: 869, baseType: !28, size: 64, offset: 2560)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !393, file: !390, line: 869, baseType: !28, size: 64, offset: 2624)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !393, file: !390, line: 869, baseType: !28, size: 64, offset: 2688)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !393, file: !390, line: 869, baseType: !28, size: 64, offset: 2752)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !393, file: !390, line: 870, baseType: !28, size: 64, offset: 2816)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !393, file: !390, line: 870, baseType: !28, size: 64, offset: 2880)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !393, file: !390, line: 870, baseType: !28, size: 64, offset: 2944)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !393, file: !390, line: 871, baseType: !28, size: 64, offset: 3008)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !393, file: !390, line: 871, baseType: !28, size: 64, offset: 3072)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !393, file: !390, line: 871, baseType: !28, size: 64, offset: 3136)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !393, file: !390, line: 871, baseType: !28, size: 64, offset: 3200)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !393, file: !390, line: 873, baseType: !497, size: 3328, offset: 3264)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 3328, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 52)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !393, file: !390, line: 875, baseType: !501, size: 1280, offset: 6592)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 1280, elements: !512)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !503, line: 22, size: 320, elements: !504)
!503 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!504 = !{!505, !506, !507, !508}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !502, file: !503, line: 23, baseType: !205, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !502, file: !503, line: 24, baseType: !118, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !502, file: !503, line: 26, baseType: !107, size: 128, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !502, file: !503, line: 28, baseType: !509, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !32, line: 20, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !34, line: 26, baseType: !51)
!512 = !{!513}
!513 = !DISubrange(count: 4)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !393, file: !390, line: 877, baseType: !515, size: 64, offset: 7872)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !390, line: 877, flags: DIFlagFwdDecl)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !393, file: !390, line: 880, baseType: !518, size: 1088, offset: 7936)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !519, line: 72, baseType: !520)
!519 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !519, line: 23, size: 1088, elements: !521)
!521 = !{!522, !523, !524, !525, !526, !529, !530, !538, !539, !543, !544, !545}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !520, file: !519, line: 28, baseType: !102, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !520, file: !519, line: 38, baseType: !453, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !520, file: !519, line: 40, baseType: !28, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !520, file: !519, line: 43, baseType: !460, size: 320, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !520, file: !519, line: 44, baseType: !527, size: 64, offset: 512)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !519, line: 44, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !520, file: !519, line: 48, baseType: !28, size: 64, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !520, file: !519, line: 59, baseType: !531, size: 256, offset: 640)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !532, line: 66, size: 256, elements: !533)
!532 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!533 = !{!534, !535, !536, !537}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !531, file: !532, line: 67, baseType: !451, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !531, file: !532, line: 68, baseType: !205, size: 32, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !531, file: !532, line: 70, baseType: !466, size: 32, offset: 96)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !531, file: !532, line: 72, baseType: !107, size: 128, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !520, file: !519, line: 60, baseType: !39, size: 64, offset: 896)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !520, file: !519, line: 61, baseType: !540, size: 64, offset: 960)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !519, line: 61, flags: DIFlagFwdDecl)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !520, file: !519, line: 63, baseType: !46, size: 32, offset: 1024)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !520, file: !519, line: 69, baseType: !71, size: 16, offset: 1056)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !520, file: !519, line: 70, baseType: !546, size: 16, offset: 1072)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !32, line: 18, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !34, line: 23, baseType: !548)
!548 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !390, line: 882, baseType: !28, size: 64, offset: 9024)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !393, file: !390, line: 885, baseType: !407, size: 32, offset: 9088)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !393, file: !390, line: 886, baseType: !552, size: 64, offset: 9152)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !390, line: 732, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !393, file: !390, line: 901, baseType: !555, size: 64, offset: 9216)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !390, line: 901, flags: DIFlagFwdDecl)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !393, file: !390, line: 904, baseType: !425, size: 64, offset: 9280)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !393, file: !390, line: 906, baseType: !559, size: 64, offset: 9344)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !390, line: 906, flags: DIFlagFwdDecl)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !393, file: !390, line: 930, baseType: !46, size: 32, offset: 9408)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !393, file: !390, line: 933, baseType: !46, size: 32, offset: 9440)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !393, file: !390, line: 935, baseType: !564, size: 64, offset: 9472)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !565, line: 103, size: 64, elements: !566)
!565 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !564, file: !565, line: 104, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !565, line: 101, flags: DIFlagFwdDecl)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !393, file: !390, line: 940, baseType: !451, size: 64, offset: 9536)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !393, file: !390, line: 942, baseType: !572, size: 256, offset: 9600)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !573, line: 98, size: 256, elements: !574)
!573 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!574 = !{!575, !576, !577}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !572, file: !573, line: 99, baseType: !451, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !572, file: !573, line: 100, baseType: !107, size: 128, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !572, file: !573, line: 101, baseType: !578, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !573, line: 21, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !582}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !389, file: !390, line: 986, baseType: !584, offset: 10240)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: -1)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !20, file: !21, line: 882, baseType: !388, size: 64, offset: 9792)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !20, file: !21, line: 884, baseType: !51, size: 32, offset: 9856)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !20, file: !21, line: 885, baseType: !51, size: 32, offset: 9888)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !20, file: !21, line: 886, baseType: !51, size: 32, offset: 9920)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !20, file: !21, line: 888, baseType: !51, size: 32, offset: 9952)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !20, file: !21, line: 890, baseType: !28, size: 64, offset: 9984)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !20, file: !21, line: 893, baseType: !35, size: 32, offset: 10048)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !20, file: !21, line: 896, baseType: !35, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !20, file: !21, line: 897, baseType: !35, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !20, file: !21, line: 898, baseType: !35, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !20, file: !21, line: 899, baseType: !35, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !20, file: !21, line: 919, baseType: !35, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !20, file: !21, line: 922, baseType: !35, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !20, file: !21, line: 923, baseType: !35, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !20, file: !21, line: 925, baseType: !35, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !20, file: !21, line: 939, baseType: !35, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !20, file: !21, line: 941, baseType: !35, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !20, file: !21, line: 944, baseType: !35, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !20, file: !21, line: 956, baseType: !35, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !20, file: !21, line: 962, baseType: !35, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !20, file: !21, line: 966, baseType: !35, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !20, file: !21, line: 969, baseType: !28, size: 64, offset: 10176)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !20, file: !21, line: 971, baseType: !610, size: 448, offset: 10240)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !611, line: 25, size: 448, elements: !612)
!611 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!612 = !{!613, !614, !620}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !610, file: !611, line: 26, baseType: !28, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !610, file: !611, line: 27, baseType: !615, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!618, !619}
!618 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !611, line: 28, baseType: !621, size: 320, offset: 128)
!621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !611, line: 28, size: 320, elements: !622)
!622 = !{!623, !633, !663}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !621, file: !611, line: 37, baseType: !624, size: 320)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !621, file: !611, line: 30, size: 320, elements: !625)
!625 = !{!626, !628, !629, !630, !631, !632}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !624, file: !611, line: 31, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !624, file: !611, line: 32, baseType: !31, size: 32, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !624, file: !611, line: 33, baseType: !31, size: 32, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !624, file: !611, line: 34, baseType: !31, size: 32, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !624, file: !611, line: 35, baseType: !102, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !624, file: !611, line: 36, baseType: !627, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !621, file: !611, line: 47, baseType: !634, size: 192)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !621, file: !611, line: 39, size: 192, elements: !635)
!635 = !{!636, !637, !643, !662}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !634, file: !611, line: 40, baseType: !253, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !634, file: !611, line: 41, baseType: !638, size: 32, offset: 32)
!638 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !611, line: 16, baseType: !35, size: 32, elements: !639)
!639 = !{!640, !641, !642}
!640 = !DIEnumerator(name: "TT_NONE", value: 0)
!641 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!642 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !634, file: !611, line: 42, baseType: !644, size: 64, offset: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !634, file: !611, line: 42, size: 64, elements: !645)
!645 = !{!646, !654}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !644, file: !611, line: 43, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !649, line: 7, size: 128, elements: !650)
!649 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!650 = !{!651, !653}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !648, file: !649, line: 8, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !255, line: 93, baseType: !120)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !648, file: !649, line: 9, baseType: !120, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !644, file: !611, line: 44, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !657, line: 7, size: 64, elements: !658)
!657 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!658 = !{!659, !661}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !656, file: !657, line: 8, baseType: !660, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !657, line: 5, baseType: !510)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !656, file: !657, line: 9, baseType: !510, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !634, file: !611, line: 46, baseType: !102, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !621, file: !611, line: 55, baseType: !664, size: 256)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !621, file: !611, line: 49, size: 256, elements: !665)
!665 = !{!666, !669, !670, !671, !672}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !664, file: !611, line: 50, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !611, line: 14, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !664, file: !611, line: 51, baseType: !51, size: 32, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !664, file: !611, line: 52, baseType: !51, size: 32, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !664, file: !611, line: 53, baseType: !28, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !664, file: !611, line: 54, baseType: !28, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !20, file: !21, line: 973, baseType: !674, size: 32, offset: 10688)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !47, line: 27, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !255, line: 28, baseType: !51)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !20, file: !21, line: 974, baseType: !674, size: 32, offset: 10720)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !20, file: !21, line: 978, baseType: !28, size: 64, offset: 10752)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !20, file: !21, line: 987, baseType: !19, size: 64, offset: 10816)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !20, file: !21, line: 990, baseType: !19, size: 64, offset: 10880)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !20, file: !21, line: 995, baseType: !107, size: 128, offset: 10944)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !20, file: !21, line: 996, baseType: !107, size: 128, offset: 11072)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !20, file: !21, line: 997, baseType: !19, size: 64, offset: 11200)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !20, file: !21, line: 1005, baseType: !107, size: 128, offset: 11264)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !20, file: !21, line: 1006, baseType: !107, size: 128, offset: 11392)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !20, file: !21, line: 1009, baseType: !686, size: 64, offset: 11520)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !688, line: 59, size: 768, elements: !689)
!688 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!689 = !{!690, !691, !692, !693, !704, !705, !712, !721}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !687, file: !688, line: 61, baseType: !41, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !687, file: !688, line: 62, baseType: !35, size: 32, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !687, file: !688, line: 63, baseType: !407, size: 32, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !687, file: !688, line: 65, baseType: !694, size: 256, offset: 128)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 256, elements: !512)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !47, line: 194, size: 64, elements: !696)
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !695, file: !47, line: 195, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !47, line: 198, size: 128, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !47, line: 199, baseType: !698, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !699, file: !47, line: 199, baseType: !703, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !687, file: !688, line: 66, baseType: !695, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !687, file: !688, line: 68, baseType: !706, size: 192, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !707, line: 41, baseType: !708)
!707 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !707, line: 37, size: 192, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !708, file: !707, line: 38, baseType: !407, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !708, file: !707, line: 39, baseType: !107, size: 128, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !687, file: !688, line: 69, baseType: !713, size: 128, align: 64, offset: 640)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !47, line: 232, size: 128, align: 64, elements: !714)
!714 = !{!715, !717}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !713, file: !47, line: 233, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !713, file: !47, line: 234, baseType: !718, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !716}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !687, file: !688, line: 70, baseType: !722, offset: 768)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, elements: !585)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !688, line: 54, size: 128, elements: !724)
!724 = !{!725, !726}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !723, file: !688, line: 55, baseType: !51, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !723, file: !688, line: 56, baseType: !727, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !688, line: 56, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !20, file: !21, line: 1010, baseType: !730, size: 512, offset: 11584)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 512, elements: !512)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !20, file: !21, line: 1011, baseType: !107, size: 128, offset: 12096)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !20, file: !21, line: 1012, baseType: !107, size: 128, offset: 12224)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !20, file: !21, line: 1014, baseType: !734, size: 64, offset: 12352)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !736, line: 26, size: 256, elements: !737)
!736 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !735, file: !736, line: 27, baseType: !35, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !735, file: !736, line: 28, baseType: !740, size: 192, offset: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !741, line: 43, size: 192, elements: !742)
!741 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !740, file: !741, line: 44, baseType: !205, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !740, file: !741, line: 45, baseType: !107, size: 128, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !20, file: !21, line: 1017, baseType: !746, size: 64, offset: 12416)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !20, file: !21, line: 1020, baseType: !746, size: 64, offset: 12480)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !20, file: !21, line: 1023, baseType: !39, size: 64, offset: 12544)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !20, file: !21, line: 1025, baseType: !102, size: 64, offset: 12608)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !20, file: !21, line: 1026, baseType: !102, size: 64, offset: 12672)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !20, file: !21, line: 1031, baseType: !102, size: 64, offset: 12736)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !20, file: !21, line: 1032, baseType: !753, size: 192, offset: 12800)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !21, line: 324, size: 192, elements: !754)
!754 = !{!755, !756, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !753, file: !21, line: 326, baseType: !102, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !753, file: !21, line: 327, baseType: !102, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !753, file: !21, line: 328, baseType: !205, size: 32, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !20, file: !21, line: 1041, baseType: !28, size: 64, offset: 12992)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !20, file: !21, line: 1042, baseType: !28, size: 64, offset: 13056)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !20, file: !21, line: 1045, baseType: !102, size: 64, offset: 13120)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !20, file: !21, line: 1048, baseType: !102, size: 64, offset: 13184)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !20, file: !21, line: 1051, baseType: !28, size: 64, offset: 13248)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !20, file: !21, line: 1052, baseType: !28, size: 64, offset: 13312)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !20, file: !21, line: 1055, baseType: !765, size: 640, offset: 13376)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !766, line: 132, size: 640, elements: !767)
!766 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!767 = !{!768, !776, !777}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !765, file: !766, line: 133, baseType: !769, size: 576)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 576, elements: !774)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !766, line: 117, size: 192, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !770, file: !766, line: 118, baseType: !102, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !770, file: !766, line: 119, baseType: !268, size: 128, offset: 64)
!774 = !{!775}
!775 = !DISubrange(count: 3)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !765, file: !766, line: 134, baseType: !35, size: 32, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !765, file: !766, line: 135, baseType: !35, size: 32, offset: 608)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !20, file: !21, line: 1058, baseType: !779, size: 448, offset: 14016)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !766, line: 144, size: 448, elements: !780)
!780 = !{!781, !782, !783}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !779, file: !766, line: 145, baseType: !713, size: 128, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !779, file: !766, line: 146, baseType: !531, size: 256, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !779, file: !766, line: 147, baseType: !35, size: 32, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !20, file: !21, line: 1064, baseType: !785, size: 64, offset: 14464)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !21, line: 1064, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !20, file: !21, line: 1067, baseType: !785, size: 64, offset: 14528)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !20, file: !21, line: 1070, baseType: !785, size: 64, offset: 14592)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !20, file: !21, line: 1074, baseType: !791, size: 64, offset: 14656)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !21, line: 1074, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !20, file: !21, line: 1084, baseType: !794, size: 128, offset: 14720)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 16)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !20, file: !21, line: 1086, baseType: !798, size: 64, offset: 14848)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !21, line: 55, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !20, file: !21, line: 1089, baseType: !801, size: 64, offset: 14912)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !802, line: 12, size: 64, elements: !803)
!802 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!803 = !{!804}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !801, file: !802, line: 13, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !802, line: 8, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !20, file: !21, line: 1090, baseType: !808, size: 128, offset: 14976)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !809, line: 13, size: 128, elements: !810)
!809 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!810 = !{!811}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !808, file: !809, line: 14, baseType: !107, size: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !20, file: !21, line: 1097, baseType: !813, size: 64, offset: 15104)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !21, line: 50, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !20, file: !21, line: 1100, baseType: !816, size: 64, offset: 15168)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !21, line: 1100, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !20, file: !21, line: 1103, baseType: !819, size: 64, offset: 15232)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !21, line: 53, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !20, file: !21, line: 1107, baseType: !822, size: 64, offset: 15296)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !21, line: 56, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !20, file: !21, line: 1110, baseType: !825, size: 64, offset: 15360)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !766, line: 236, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !20, file: !21, line: 1111, baseType: !828, size: 64, offset: 15424)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !21, line: 67, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !20, file: !21, line: 1112, baseType: !831, size: 64, offset: 15488)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !832, line: 25, baseType: !833)
!832 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !832, line: 23, size: 64, elements: !834)
!834 = !{!835}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !833, file: !832, line: 24, baseType: !339, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !20, file: !21, line: 1113, baseType: !831, size: 64, offset: 15552)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !20, file: !21, line: 1115, baseType: !831, size: 64, offset: 15616)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !20, file: !21, line: 1116, baseType: !839, size: 192, offset: 15680)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !840, line: 32, size: 192, elements: !841)
!840 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !839, file: !840, line: 33, baseType: !107, size: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !839, file: !840, line: 34, baseType: !831, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !20, file: !21, line: 1117, baseType: !28, size: 64, offset: 15872)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !20, file: !21, line: 1118, baseType: !846, size: 64, offset: 15936)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 61, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !255, line: 72, baseType: !848)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !255, line: 16, baseType: !28)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !20, file: !21, line: 1119, baseType: !35, size: 32, offset: 16000)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !20, file: !21, line: 1121, baseType: !716, size: 64, offset: 16064)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !20, file: !21, line: 1125, baseType: !852, size: 64, offset: 16128)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !21, line: 43, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !20, file: !21, line: 1127, baseType: !855, size: 32, offset: 16192)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !856, line: 23, baseType: !857)
!856 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !856, line: 21, size: 32, elements: !858)
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !857, file: !856, line: 22, baseType: !860, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !47, line: 37, baseType: !861)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !255, line: 49, baseType: !35)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !20, file: !21, line: 1128, baseType: !35, size: 32, offset: 16224)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !20, file: !21, line: 1130, baseType: !864, size: 128, offset: 16256)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !865, line: 37, size: 128, elements: !866)
!865 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!866 = !{!867, !868, !869}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !864, file: !865, line: 38, baseType: !51, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !864, file: !865, line: 39, baseType: !46, size: 32, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !864, file: !865, line: 40, baseType: !870, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !865, line: 24, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !20, file: !21, line: 1131, baseType: !873, size: 256, offset: 16384)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !874, line: 12, size: 256, elements: !875)
!874 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!875 = !{!876, !878, !879, !880}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !873, file: !874, line: 13, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !873, file: !874, line: 14, baseType: !28, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !873, file: !874, line: 15, baseType: !28, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !873, file: !874, line: 16, baseType: !881, size: 8, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !47, line: 35, baseType: !882)
!882 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !20, file: !21, line: 1134, baseType: !102, size: 64, offset: 16640)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !20, file: !21, line: 1135, baseType: !102, size: 64, offset: 16704)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !20, file: !21, line: 1138, baseType: !407, size: 32, offset: 16768)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !20, file: !21, line: 1141, baseType: !205, size: 32, offset: 16800)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !20, file: !21, line: 1143, baseType: !888, size: 64, offset: 16832)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !21, line: 735, size: 64, elements: !889)
!889 = !{!890}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !888, file: !21, line: 736, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !20, file: !21, line: 1147, baseType: !271, size: 128, offset: 16896)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !20, file: !21, line: 1149, baseType: !19, size: 64, offset: 17024)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !20, file: !21, line: 1151, baseType: !895, size: 64, offset: 17088)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !897, line: 52, size: 896, elements: !898)
!897 = !DIFile(filename: "kernel/futex/../locking/rtmutex_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c615e119c487e73c2bc04a1b58a3742e")
!898 = !{!899, !905, !906, !907, !915, !916}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !896, file: !897, line: 53, baseType: !900, size: 320)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_waiter_node", file: !897, line: 32, size: 320, elements: !901)
!901 = !{!902, !903, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !900, file: !897, line: 33, baseType: !94, size: 192, align: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !900, file: !897, line: 34, baseType: !51, size: 32, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !900, file: !897, line: 35, baseType: !102, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "pi_tree", scope: !896, file: !897, line: 54, baseType: !900, size: 320, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !896, file: !897, line: 55, baseType: !19, size: 64, offset: 640)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !896, file: !897, line: 56, baseType: !908, size: 64, offset: 704)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_base", file: !910, line: 23, size: 256, elements: !911)
!910 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !909, file: !910, line: 24, baseType: !205, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !909, file: !910, line: 25, baseType: !271, size: 128, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !909, file: !910, line: 26, baseType: !19, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "wake_state", scope: !896, file: !897, line: 57, baseType: !35, size: 32, offset: 768)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !896, file: !897, line: 58, baseType: !917, size: 64, offset: 832)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !897, line: 58, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !20, file: !21, line: 1188, baseType: !39, size: 64, offset: 17152)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !20, file: !21, line: 1191, baseType: !921, size: 64, offset: 17216)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !21, line: 44, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !20, file: !21, line: 1194, baseType: !924, size: 64, offset: 17280)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !21, line: 45, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !20, file: !21, line: 1197, baseType: !927, size: 64, offset: 17344)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !21, line: 61, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !20, file: !21, line: 1199, baseType: !930, size: 64, offset: 17408)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !21, line: 52, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !20, file: !21, line: 1202, baseType: !933, size: 64, offset: 17472)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !21, line: 48, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !20, file: !21, line: 1205, baseType: !28, size: 64, offset: 17536)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !20, file: !21, line: 1206, baseType: !937, size: 64, offset: 17600)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !840, line: 14, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !840, line: 12, size: 384, elements: !940)
!940 = !{!941}
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !840, line: 13, baseType: !942, size: 384)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !840, line: 13, size: 384, elements: !943)
!943 = !{!944, !945, !946, !947}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !942, file: !840, line: 13, baseType: !51, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !942, file: !840, line: 13, baseType: !51, size: 32, offset: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !942, file: !840, line: 13, baseType: !51, size: 32, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !942, file: !840, line: 13, baseType: !948, size: 256, offset: 128)
!948 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !949, line: 37, size: 256, elements: !950)
!949 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!950 = !{!951, !956, !969, !975, !985, !1012, !1017}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !948, file: !949, line: 42, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !949, line: 39, size: 64, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !952, file: !949, line: 40, baseType: !675, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !952, file: !949, line: 41, baseType: !861, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !948, file: !949, line: 50, baseType: !957, size: 192)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !949, line: 45, size: 192, elements: !958)
!958 = !{!959, !961, !962, !968}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !957, file: !949, line: 46, baseType: !960, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !255, line: 95, baseType: !51)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !957, file: !949, line: 47, baseType: !51, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !957, file: !949, line: 48, baseType: !963, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !949, line: 11, baseType: !964)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !949, line: 8, size: 64, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !964, file: !949, line: 9, baseType: !51, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !964, file: !949, line: 10, baseType: !39, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !957, file: !949, line: 49, baseType: !51, size: 32, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !948, file: !949, line: 57, baseType: !970, size: 128)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !949, line: 53, size: 128, elements: !971)
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !970, file: !949, line: 54, baseType: !675, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !970, file: !949, line: 55, baseType: !861, size: 32, offset: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !970, file: !949, line: 56, baseType: !963, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !948, file: !949, line: 66, baseType: !976, size: 256)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !949, line: 60, size: 256, elements: !977)
!977 = !{!978, !979, !980, !981, !984}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !976, file: !949, line: 61, baseType: !675, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !976, file: !949, line: 62, baseType: !861, size: 32, offset: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !976, file: !949, line: 63, baseType: !51, size: 32, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !976, file: !949, line: 64, baseType: !982, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !255, line: 94, baseType: !983)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !255, line: 15, baseType: !618)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !976, file: !949, line: 65, baseType: !982, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !948, file: !949, line: 105, baseType: !986, size: 256)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !949, line: 69, size: 256, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !986, file: !949, line: 70, baseType: !39, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, scope: !986, file: !949, line: 79, baseType: !990, size: 192, offset: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !986, file: !949, line: 79, size: 192, elements: !991)
!991 = !{!992, !993, !994, !1001, !1006}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !990, file: !949, line: 81, baseType: !51, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !990, file: !949, line: 86, baseType: !548, size: 16)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !990, file: !949, line: 92, baseType: !995, size: 192)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !949, line: 88, size: 192, elements: !996)
!996 = !{!997, !999, !1000}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !995, file: !949, line: 89, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !249)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !995, file: !949, line: 90, baseType: !39, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !995, file: !949, line: 91, baseType: !39, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !990, file: !949, line: 97, baseType: !1002, size: 96)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !949, line: 94, size: 96, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1002, file: !949, line: 95, baseType: !998, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1002, file: !949, line: 96, baseType: !33, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !990, file: !949, line: 103, baseType: !1007, size: 128)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !949, line: 99, size: 128, elements: !1008)
!1008 = !{!1009, !1010, !1011}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1007, file: !949, line: 100, baseType: !28, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1007, file: !949, line: 101, baseType: !33, size: 32, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1007, file: !949, line: 102, baseType: !33, size: 32, offset: 96)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !948, file: !949, line: 111, baseType: !1013, size: 128)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !949, line: 108, size: 128, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1013, file: !949, line: 109, baseType: !618, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1013, file: !949, line: 110, baseType: !51, size: 32, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !948, file: !949, line: 118, baseType: !1018, size: 128)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !949, line: 114, size: 128, elements: !1019)
!1019 = !{!1020, !1021, !1022}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1018, file: !949, line: 115, baseType: !39, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1018, file: !949, line: 116, baseType: !51, size: 32, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1018, file: !949, line: 117, baseType: !35, size: 32, offset: 96)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !20, file: !21, line: 1208, baseType: !1024, size: 448, offset: 17664)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1025, line: 12, size: 448, elements: !1026)
!1025 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1026 = !{!1027, !1028, !1029, !1030, !1031, !1032, !1033}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1024, file: !1025, line: 15, baseType: !102, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1024, file: !1025, line: 17, baseType: !102, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1024, file: !1025, line: 19, baseType: !102, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1024, file: !1025, line: 21, baseType: !102, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1024, file: !1025, line: 29, baseType: !102, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1024, file: !1025, line: 35, baseType: !102, size: 64, offset: 320)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1024, file: !1025, line: 44, baseType: !102, size: 64, offset: 384)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !20, file: !21, line: 1215, baseType: !102, size: 64, offset: 18112)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !20, file: !21, line: 1217, baseType: !102, size: 64, offset: 18176)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !20, file: !21, line: 1219, baseType: !102, size: 64, offset: 18240)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !20, file: !21, line: 1223, baseType: !1038, size: 64, offset: 18304)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1039, line: 99, baseType: !1040)
!1039 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1039, line: 99, size: 64, elements: !1041)
!1041 = !{!1042}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1040, file: !1039, line: 99, baseType: !339, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !20, file: !21, line: 1225, baseType: !1044, size: 32, offset: 18368)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !258, line: 275, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !258, line: 275, size: 32, elements: !1046)
!1046 = !{!1047}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1045, file: !258, line: 275, baseType: !262, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !20, file: !21, line: 1226, baseType: !51, size: 32, offset: 18400)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !20, file: !21, line: 1227, baseType: !51, size: 32, offset: 18432)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !20, file: !21, line: 1231, baseType: !1051, size: 64, offset: 18496)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !21, line: 1231, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !20, file: !21, line: 1233, baseType: !107, size: 128, offset: 18560)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !20, file: !21, line: 1240, baseType: !1055, size: 64, offset: 18688)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1057, line: 97, size: 192, elements: !1058)
!1057 = !DIFile(filename: "./include/uapi/linux/futex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84a6875ed19116fa53fb0213593793f9")
!1058 = !{!1059, !1064, !1065}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1056, file: !1057, line: 101, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list", file: !1057, line: 85, size: 64, elements: !1061)
!1061 = !{!1062}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1060, file: !1057, line: 86, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !1056, file: !1057, line: 109, baseType: !618, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !1056, file: !1057, line: 121, baseType: !1063, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !20, file: !21, line: 1242, baseType: !1067, size: 64, offset: 18752)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !21, line: 1242, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !20, file: !21, line: 1244, baseType: !107, size: 128, offset: 18816)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !20, file: !21, line: 1245, baseType: !1071, size: 64, offset: 18944)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1073, line: 54, size: 704, elements: !1074)
!1073 = !DIFile(filename: "kernel/futex/futex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b31fce36210e902319cec20378aafe08")
!1074 = !{!1075, !1076, !1077, !1078, !1079}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1072, file: !1073, line: 59, baseType: !107, size: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pi_mutex", scope: !1072, file: !1073, line: 64, baseType: !909, size: 256, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1072, file: !1073, line: 66, baseType: !19, size: 64, offset: 384)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1072, file: !1073, line: 67, baseType: !41, size: 32, offset: 448)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1072, file: !1073, line: 69, baseType: !1080, size: 192, offset: 512)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "futex_key", file: !1081, line: 32, size: 192, elements: !1082)
!1081 = !DIFile(filename: "./include/linux/futex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6aa02e7d322e20d7feefbd4fcf13a2f0")
!1082 = !{!1083, !1089, !1099}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1080, file: !1081, line: 37, baseType: !1084, size: 192)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1080, file: !1081, line: 33, size: 192, elements: !1085)
!1085 = !{!1086, !1087, !1088}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "i_seq", scope: !1084, file: !1081, line: 34, baseType: !102, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1084, file: !1081, line: 35, baseType: !28, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1084, file: !1081, line: 36, baseType: !35, size: 32, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1080, file: !1081, line: 45, baseType: !1090, size: 192)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1080, file: !1081, line: 38, size: 192, elements: !1091)
!1091 = !{!1092, !1097, !1098}
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !1090, file: !1081, line: 39, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1090, file: !1081, line: 39, size: 64, elements: !1094)
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1093, file: !1081, line: 40, baseType: !388, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "__tmp", scope: !1093, file: !1081, line: 41, baseType: !102, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1090, file: !1081, line: 43, baseType: !28, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1090, file: !1081, line: 44, baseType: !35, size: 32, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "both", scope: !1080, file: !1081, line: 50, baseType: !1100, size: 192)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1080, file: !1081, line: 46, size: 192, elements: !1101)
!1101 = !{!1102, !1103, !1104}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1100, file: !1081, line: 47, baseType: !102, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !1100, file: !1081, line: 48, baseType: !28, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1100, file: !1081, line: 49, baseType: !35, size: 32, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !20, file: !21, line: 1246, baseType: !531, size: 256, offset: 19008)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !20, file: !21, line: 1247, baseType: !35, size: 32, offset: 19264)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !20, file: !21, line: 1250, baseType: !1108, size: 64, offset: 19328)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !21, line: 57, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !20, file: !21, line: 1251, baseType: !531, size: 256, offset: 19392)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !20, file: !21, line: 1252, baseType: !107, size: 128, offset: 19648)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !20, file: !21, line: 1259, baseType: !1113, size: 64, offset: 19776)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !390, line: 717, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !20, file: !21, line: 1260, baseType: !548, size: 16, offset: 19840)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !20, file: !21, line: 1261, baseType: !548, size: 16, offset: 19856)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !20, file: !21, line: 1314, baseType: !1118, size: 64, offset: 19904)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1120, line: 62, size: 256, align: 256, elements: !1121)
!1120 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1121 = !{!1122, !1123, !1124, !1125, !1126, !1127, !1128}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1119, file: !1120, line: 75, baseType: !33, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1119, file: !1120, line: 90, baseType: !33, size: 32, offset: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1119, file: !1120, line: 112, baseType: !103, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1119, file: !1120, line: 132, baseType: !33, size: 32, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1119, file: !1120, line: 140, baseType: !33, size: 32, offset: 160)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1119, file: !1120, line: 149, baseType: !33, size: 32, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1119, file: !1120, line: 154, baseType: !1129, offset: 224)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !585)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !20, file: !21, line: 1315, baseType: !31, size: 32, offset: 19968)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !20, file: !21, line: 1316, baseType: !31, size: 32, offset: 20000)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !20, file: !21, line: 1321, baseType: !28, size: 64, offset: 20032)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !20, file: !21, line: 1325, baseType: !51, size: 32, offset: 20096)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !20, file: !21, line: 1326, baseType: !51, size: 32, offset: 20128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !20, file: !21, line: 1327, baseType: !51, size: 32, offset: 20160)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !20, file: !21, line: 1328, baseType: !51, size: 32, offset: 20192)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !20, file: !21, line: 1329, baseType: !713, size: 128, align: 64, offset: 20224)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !20, file: !21, line: 1332, baseType: !1139, size: 128, offset: 20352)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1140, line: 51, size: 128, elements: !1141)
!1140 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1141 = !{!1142, !1147, !1148}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1139, file: !1140, line: 60, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1144, line: 7, size: 64, elements: !1145)
!1144 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1145 = !{!1146}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1143, file: !1144, line: 12, baseType: !336, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1139, file: !1140, line: 63, baseType: !881, size: 8, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1139, file: !1140, line: 70, baseType: !881, size: 8, offset: 72)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !20, file: !21, line: 1335, baseType: !1150, size: 64, offset: 20480)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !21, line: 59, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !20, file: !21, line: 1337, baseType: !1153, size: 128, offset: 20544)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1140, line: 39, size: 128, elements: !1154)
!1154 = !{!1155, !1218, !1219}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1153, file: !1140, line: 40, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !390, line: 74, size: 512, align: 128, elements: !1158)
!1158 = !{!1159, !1160, !1212, !1217}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1157, file: !390, line: 75, baseType: !28, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !390, line: 83, baseType: !1161, size: 320, offset: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1157, file: !390, line: 83, size: 320, elements: !1162)
!1162 = !{!1163, !1186, !1200, !1204, !1211}
!1163 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !390, line: 84, baseType: !1164, size: 320)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1161, file: !390, line: 84, size: 320, elements: !1165)
!1165 = !{!1166, !1177, !1180, !1185}
!1166 = !DIDerivedType(tag: DW_TAG_member, scope: !1164, file: !390, line: 90, baseType: !1167, size: 128)
!1167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1164, file: !390, line: 90, size: 128, elements: !1168)
!1168 = !{!1169, !1170, !1175, !1176}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1167, file: !390, line: 91, baseType: !107, size: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !390, line: 94, baseType: !1171, size: 128)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1167, file: !390, line: 94, size: 128, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1171, file: !390, line: 96, baseType: !39, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1171, file: !390, line: 98, baseType: !35, size: 32, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1167, file: !390, line: 102, baseType: !107, size: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1167, file: !390, line: 103, baseType: !107, size: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1164, file: !390, line: 106, baseType: !1178, size: 64, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !390, line: 32, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, scope: !1164, file: !390, line: 107, baseType: !1181, size: 64, offset: 192)
!1181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1164, file: !390, line: 107, size: 64, elements: !1182)
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1181, file: !390, line: 108, baseType: !28, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1181, file: !390, line: 109, baseType: !28, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1164, file: !390, line: 117, baseType: !28, size: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !390, line: 119, baseType: !1187, size: 320)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1161, file: !390, line: 119, size: 320, elements: !1188)
!1188 = !{!1189, !1190, !1193, !1194, !1195}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1187, file: !390, line: 124, baseType: !28, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1187, file: !390, line: 125, baseType: !1191, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !390, line: 125, flags: DIFlagFwdDecl)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1187, file: !390, line: 126, baseType: !28, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1187, file: !390, line: 127, baseType: !28, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !390, line: 128, baseType: !1196, size: 64, offset: 256)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1187, file: !390, line: 128, size: 64, elements: !1197)
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1196, file: !390, line: 133, baseType: !28, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1196, file: !390, line: 138, baseType: !451, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !390, line: 141, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1161, file: !390, line: 141, size: 64, elements: !1202)
!1202 = !{!1203}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1201, file: !390, line: 142, baseType: !28, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !390, line: 144, baseType: !1205, size: 128)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1161, file: !390, line: 144, size: 128, elements: !1206)
!1206 = !{!1207, !1210}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1205, file: !390, line: 146, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !390, line: 146, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1205, file: !390, line: 147, baseType: !39, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1161, file: !390, line: 161, baseType: !713, size: 128, align: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !390, line: 164, baseType: !1213, size: 32, offset: 384)
!1213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1157, file: !390, line: 164, size: 32, elements: !1214)
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1213, file: !390, line: 169, baseType: !46, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1213, file: !390, line: 177, baseType: !35, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1157, file: !390, line: 181, baseType: !46, size: 32, offset: 416)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1153, file: !1140, line: 42, baseType: !33, size: 32, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1153, file: !1140, line: 43, baseType: !33, size: 32, offset: 96)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !20, file: !21, line: 1340, baseType: !1221, size: 64, offset: 20672)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !21, line: 69, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !20, file: !21, line: 1351, baseType: !51, size: 32, offset: 20736)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !20, file: !21, line: 1352, baseType: !51, size: 32, offset: 20768)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !20, file: !21, line: 1354, baseType: !28, size: 64, offset: 20800)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !20, file: !21, line: 1364, baseType: !102, size: 64, offset: 20864)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !20, file: !21, line: 1365, baseType: !102, size: 64, offset: 20928)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !20, file: !21, line: 1412, baseType: !28, size: 64, offset: 20992)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !20, file: !21, line: 1453, baseType: !1230, size: 64, offset: 21056)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !21, line: 1453, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !20, file: !21, line: 1457, baseType: !1233, size: 64, offset: 21120)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !565, line: 61, size: 576, elements: !1235)
!1235 = !{!1236, !1243, !1262, !1265, !1266, !1299, !1309}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1234, file: !565, line: 62, baseType: !1237, size: 32)
!1237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !565, line: 51, baseType: !35, size: 32, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242}
!1239 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!1240 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!1241 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!1242 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!1243 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !565, line: 64, baseType: !1244, size: 192, offset: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1234, file: !565, line: 64, size: 192, elements: !1245)
!1245 = !{!1246, !1257}
!1246 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !565, line: 65, baseType: !1247, size: 192)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1244, file: !565, line: 65, size: 192, elements: !1248)
!1248 = !{!1249, !1256}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1247, file: !565, line: 66, baseType: !1250, size: 128)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1251, line: 50, size: 128, elements: !1252)
!1251 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1252 = !{!1253, !1254, !1255}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1250, file: !1251, line: 52, baseType: !28, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1250, file: !1251, line: 54, baseType: !35, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1250, file: !1251, line: 55, baseType: !35, size: 32, offset: 96)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1247, file: !565, line: 67, baseType: !28, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !565, line: 70, baseType: !1258, size: 192)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1244, file: !565, line: 70, size: 192, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1258, file: !565, line: 71, baseType: !713, size: 128, align: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1258, file: !565, line: 72, baseType: !28, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1234, file: !565, line: 76, baseType: !1263, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !565, line: 76, flags: DIFlagFwdDecl)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1234, file: !565, line: 77, baseType: !28, size: 64, offset: 320)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1234, file: !565, line: 79, baseType: !1267, size: 64, offset: 384)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1251, line: 25, size: 256, elements: !1269)
!1269 = !{!1270, !1276, !1280}
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !1251, line: 26, baseType: !1271, size: 128)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1268, file: !1251, line: 26, size: 128, elements: !1272)
!1272 = !{!1273, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1271, file: !1251, line: 27, baseType: !1274, size: 128)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 128, elements: !795)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1271, file: !1251, line: 28, baseType: !1274, size: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1268, file: !1251, line: 31, baseType: !1277, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1279)
!1279 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1251, line: 23, flags: DIFlagFwdDecl)
!1280 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !1251, line: 33, baseType: !1281, size: 64, offset: 192)
!1281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1268, file: !1251, line: 33, size: 64, elements: !1282)
!1282 = !{!1283, !1289, !1294}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1281, file: !1251, line: 38, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1281, file: !1251, line: 34, size: 64, elements: !1285)
!1285 = !{!1286, !1287, !1288}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1284, file: !1251, line: 35, baseType: !510, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1284, file: !1251, line: 36, baseType: !222, size: 8, offset: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1284, file: !1251, line: 37, baseType: !222, size: 8, offset: 40)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1281, file: !1251, line: 42, baseType: !1290, size: 16)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1281, file: !1251, line: 39, size: 16, elements: !1291)
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1290, file: !1251, line: 40, baseType: !222, size: 8)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1290, file: !1251, line: 41, baseType: !222, size: 8, offset: 8)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1281, file: !1251, line: 46, baseType: !1295, size: 16)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1281, file: !1251, line: 43, size: 16, elements: !1296)
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1295, file: !1251, line: 44, baseType: !222, size: 8)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1295, file: !1251, line: 45, baseType: !222, size: 8, offset: 8)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1234, file: !565, line: 81, baseType: !1300, size: 64, offset: 448)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !565, line: 85, size: 384, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1301, file: !565, line: 86, baseType: !1263, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1301, file: !565, line: 87, baseType: !28, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1301, file: !565, line: 88, baseType: !28, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1301, file: !565, line: 89, baseType: !28, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1301, file: !565, line: 90, baseType: !881, size: 8, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1301, file: !565, line: 92, baseType: !1300, size: 64, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1234, file: !565, line: 82, baseType: !35, size: 32, offset: 512)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !20, file: !21, line: 1463, baseType: !1311, offset: 21184)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !21, line: 739, elements: !418)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !20, file: !21, line: 1470, baseType: !713, size: 128, align: 64, offset: 21184)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !20, file: !21, line: 1471, baseType: !41, size: 32, offset: 21312)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !20, file: !21, line: 1472, baseType: !51, size: 32, offset: 21344)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !20, file: !21, line: 1474, baseType: !19, size: 64, offset: 21376)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !20, file: !21, line: 1475, baseType: !1317, size: 320, offset: 21440)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1318, line: 11, size: 320, elements: !1319)
!1318 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1319 = !{!1320, !1321, !1322, !1327}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1317, file: !1318, line: 16, baseType: !699, size: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1317, file: !1318, line: 17, baseType: !28, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1317, file: !1318, line: 18, baseType: !1323, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !1326}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1317, file: !1318, line: 19, baseType: !31, size: 32, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !20, file: !21, line: 1478, baseType: !1329, size: 64, offset: 21760)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1331, line: 14, flags: DIFlagFwdDecl)
!1331 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !20, file: !21, line: 1482, baseType: !41, size: 32, offset: 21824)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !20, file: !21, line: 1489, baseType: !39, size: 64, offset: 21888)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !20, file: !21, line: 1504, baseType: !39, size: 64, offset: 21952)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !20, file: !21, line: 1505, baseType: !103, size: 64, offset: 22016)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !20, file: !21, line: 1506, baseType: !102, size: 64, offset: 22080)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !20, file: !21, line: 1507, baseType: !103, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !20, file: !21, line: 1508, baseType: !103, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !20, file: !21, line: 1509, baseType: !103, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !20, file: !21, line: 1510, baseType: !713, size: 128, align: 64, offset: 22208)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !20, file: !21, line: 1511, baseType: !51, size: 32, offset: 22336)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !20, file: !21, line: 1515, baseType: !1343, size: 64, offset: 22400)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !61, line: 56, size: 64, elements: !1344)
!1344 = !{!1345}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1343, file: !61, line: 57, baseType: !64, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !20, file: !21, line: 1518, baseType: !1343, size: 64, offset: 22464)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !20, file: !21, line: 1528, baseType: !713, size: 128, align: 64, offset: 22528)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !20, file: !21, line: 1552, baseType: !1349, size: 35328, offset: 23040)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1350, line: 430, size: 35328, elements: !1351)
!1350 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1351 = !{!1352, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1381, !1382, !1383, !1384, !1385, !1386, !1389, !1390, !1391, !1392}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1349, file: !1350, line: 432, baseType: !1353, size: 192)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1354, size: 192, elements: !774)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1355, line: 16, size: 64, elements: !1356)
!1355 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1356 = !{!1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1354, file: !1355, line: 17, baseType: !71, size: 16)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1354, file: !1355, line: 18, baseType: !71, size: 16, offset: 16)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1354, file: !1355, line: 19, baseType: !71, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1354, file: !1355, line: 19, baseType: !71, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1354, file: !1355, line: 19, baseType: !71, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1354, file: !1355, line: 19, baseType: !71, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1354, file: !1355, line: 19, baseType: !71, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1354, file: !1355, line: 20, baseType: !71, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1354, file: !1355, line: 20, baseType: !71, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1354, file: !1355, line: 20, baseType: !71, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1354, file: !1355, line: 20, baseType: !71, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1354, file: !1355, line: 20, baseType: !71, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1354, file: !1355, line: 20, baseType: !71, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1349, file: !1350, line: 436, baseType: !28, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1349, file: !1350, line: 440, baseType: !73, size: 16, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1349, file: !1350, line: 441, baseType: !73, size: 16, offset: 272)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1349, file: !1350, line: 442, baseType: !73, size: 16, offset: 288)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1349, file: !1350, line: 443, baseType: !73, size: 16, offset: 304)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1349, file: !1350, line: 447, baseType: !28, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1349, file: !1350, line: 448, baseType: !28, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1349, file: !1350, line: 459, baseType: !1378, size: 256, offset: 448)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, size: 256, elements: !512)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1350, line: 428, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1349, file: !1350, line: 461, baseType: !28, size: 64, offset: 704)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1349, file: !1350, line: 463, baseType: !28, size: 64, offset: 768)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1349, file: !1350, line: 465, baseType: !28, size: 64, offset: 832)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1349, file: !1350, line: 466, baseType: !28, size: 64, offset: 896)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1349, file: !1350, line: 467, baseType: !28, size: 64, offset: 960)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1349, file: !1350, line: 473, baseType: !1387, size: 64, offset: 1024)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1350, line: 10, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1349, file: !1350, line: 480, baseType: !28, size: 64, offset: 1088)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1349, file: !1350, line: 482, baseType: !35, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1349, file: !1350, line: 491, baseType: !31, size: 32, offset: 1184)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1349, file: !1350, line: 501, baseType: !1393, size: 33792, offset: 1536)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1394, line: 448, size: 33792, elements: !1395)
!1394 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1395 = !{!1396, !1397, !1398, !1566, !1567, !1573, !1574}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1393, file: !1394, line: 461, baseType: !35, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1393, file: !1394, line: 468, baseType: !28, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1393, file: !1394, line: 476, baseType: !1399, size: 64, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1394, line: 356, size: 33280, align: 512, elements: !1401)
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1400, file: !1394, line: 358, baseType: !35, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1400, file: !1394, line: 361, baseType: !35, size: 32, offset: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1400, file: !1394, line: 364, baseType: !102, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1400, file: !1394, line: 367, baseType: !102, size: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1400, file: !1394, line: 370, baseType: !102, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1400, file: !1394, line: 373, baseType: !35, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1400, file: !1394, line: 376, baseType: !35, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1400, file: !1394, line: 391, baseType: !35, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1400, file: !1394, line: 394, baseType: !35, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1400, file: !1394, line: 397, baseType: !1412, size: 32768, offset: 512)
!1412 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1394, line: 348, size: 32768, elements: !1413)
!1413 = !{!1414, !1429, !1470, !1547, !1562}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1412, file: !1394, line: 349, baseType: !1415, size: 896)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1394, line: 12, size: 896, elements: !1416)
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1428}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1415, file: !1394, line: 13, baseType: !31, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1415, file: !1394, line: 14, baseType: !31, size: 32, offset: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1415, file: !1394, line: 15, baseType: !31, size: 32, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1415, file: !1394, line: 16, baseType: !31, size: 32, offset: 96)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1415, file: !1394, line: 17, baseType: !31, size: 32, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1415, file: !1394, line: 18, baseType: !31, size: 32, offset: 160)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1415, file: !1394, line: 19, baseType: !31, size: 32, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1415, file: !1394, line: 22, baseType: !1425, size: 640, offset: 224)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 640, elements: !1426)
!1426 = !{!1427}
!1427 = !DISubrange(count: 20)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1415, file: !1394, line: 25, baseType: !31, size: 32, offset: 864)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1412, file: !1394, line: 350, baseType: !1430, size: 4096, align: 128)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1394, line: 34, size: 4096, align: 128, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1451, !1452, !1453, !1457, !1461, !1465}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1430, file: !1394, line: 35, baseType: !71, size: 16)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1430, file: !1394, line: 36, baseType: !71, size: 16, offset: 16)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1430, file: !1394, line: 37, baseType: !71, size: 16, offset: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1430, file: !1394, line: 38, baseType: !71, size: 16, offset: 48)
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1394, line: 39, baseType: !1437, size: 128, offset: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !1394, line: 39, size: 128, elements: !1438)
!1438 = !{!1439, !1444}
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1437, file: !1394, line: 40, baseType: !1440, size: 128)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1437, file: !1394, line: 40, size: 128, elements: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1440, file: !1394, line: 41, baseType: !102, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1440, file: !1394, line: 42, baseType: !102, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, scope: !1437, file: !1394, line: 44, baseType: !1445, size: 128)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1437, file: !1394, line: 44, size: 128, elements: !1446)
!1446 = !{!1447, !1448, !1449, !1450}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1445, file: !1394, line: 45, baseType: !31, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1445, file: !1394, line: 46, baseType: !31, size: 32, offset: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1445, file: !1394, line: 47, baseType: !31, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1445, file: !1394, line: 48, baseType: !31, size: 32, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1430, file: !1394, line: 51, baseType: !31, size: 32, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1430, file: !1394, line: 52, baseType: !31, size: 32, offset: 224)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1430, file: !1394, line: 55, baseType: !1454, size: 1024, offset: 256)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1024, elements: !1455)
!1455 = !{!1456}
!1456 = !DISubrange(count: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1430, file: !1394, line: 58, baseType: !1458, size: 2048, offset: 1280)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !1459)
!1459 = !{!1460}
!1460 = !DISubrange(count: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1430, file: !1394, line: 60, baseType: !1462, size: 384, offset: 3328)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 384, elements: !1463)
!1463 = !{!1464}
!1464 = !DISubrange(count: 12)
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1394, line: 62, baseType: !1466, size: 384, offset: 3712)
!1466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !1394, line: 62, size: 384, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1466, file: !1394, line: 63, baseType: !1462, size: 384)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1466, file: !1394, line: 64, baseType: !1462, size: 384)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1412, file: !1394, line: 351, baseType: !1471, size: 1088)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1394, line: 79, size: 1088, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1546}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1471, file: !1394, line: 80, baseType: !31, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1471, file: !1394, line: 81, baseType: !31, size: 32, offset: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1471, file: !1394, line: 82, baseType: !31, size: 32, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1471, file: !1394, line: 83, baseType: !31, size: 32, offset: 96)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1471, file: !1394, line: 84, baseType: !31, size: 32, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1471, file: !1394, line: 85, baseType: !31, size: 32, offset: 160)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1471, file: !1394, line: 86, baseType: !31, size: 32, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1471, file: !1394, line: 88, baseType: !1425, size: 640, offset: 224)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1471, file: !1394, line: 89, baseType: !222, size: 8, offset: 864)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1471, file: !1394, line: 90, baseType: !222, size: 8, offset: 872)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1471, file: !1394, line: 91, baseType: !222, size: 8, offset: 880)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1471, file: !1394, line: 92, baseType: !222, size: 8, offset: 888)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1471, file: !1394, line: 93, baseType: !222, size: 8, offset: 896)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1471, file: !1394, line: 94, baseType: !222, size: 8, offset: 904)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1471, file: !1394, line: 95, baseType: !1488, size: 64, offset: 960)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1490, line: 11, size: 128, elements: !1491)
!1490 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1489, file: !1490, line: 12, baseType: !618, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1489, file: !1490, line: 13, baseType: !1494, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1496, line: 103, size: 1344, elements: !1497)
!1496 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1497 = !{!1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1526, !1527, !1528}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1495, file: !1496, line: 109, baseType: !28, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1495, file: !1496, line: 110, baseType: !28, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1495, file: !1496, line: 111, baseType: !28, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1495, file: !1496, line: 112, baseType: !28, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1495, file: !1496, line: 113, baseType: !28, size: 64, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1495, file: !1496, line: 114, baseType: !28, size: 64, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1495, file: !1496, line: 117, baseType: !28, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1495, file: !1496, line: 118, baseType: !28, size: 64, offset: 448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1495, file: !1496, line: 119, baseType: !28, size: 64, offset: 512)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1495, file: !1496, line: 120, baseType: !28, size: 64, offset: 576)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1495, file: !1496, line: 121, baseType: !28, size: 64, offset: 640)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1495, file: !1496, line: 122, baseType: !28, size: 64, offset: 704)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1495, file: !1496, line: 123, baseType: !28, size: 64, offset: 768)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1495, file: !1496, line: 124, baseType: !28, size: 64, offset: 832)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1495, file: !1496, line: 125, baseType: !28, size: 64, offset: 896)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1495, file: !1496, line: 139, baseType: !28, size: 64, offset: 960)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1495, file: !1496, line: 142, baseType: !28, size: 64, offset: 1024)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1495, file: !1496, line: 144, baseType: !1516, size: 64, offset: 1088)
!1516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1495, file: !1496, line: 144, size: 64, elements: !1517)
!1517 = !{!1518, !1519, !1520}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1516, file: !1496, line: 146, baseType: !71, size: 16)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1516, file: !1496, line: 148, baseType: !102, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1516, file: !1496, line: 150, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1496, line: 59, size: 64, elements: !1522)
!1522 = !{!1523, !1524, !1525}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1521, file: !1496, line: 61, baseType: !102, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1521, file: !1496, line: 63, baseType: !102, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1521, file: !1496, line: 65, baseType: !102, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1495, file: !1496, line: 153, baseType: !28, size: 64, offset: 1152)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1495, file: !1496, line: 154, baseType: !28, size: 64, offset: 1216)
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1495, file: !1496, line: 156, baseType: !1529, size: 64, offset: 1280)
!1529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1495, file: !1496, line: 156, size: 64, elements: !1530)
!1530 = !{!1531, !1532, !1533}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1529, file: !1496, line: 158, baseType: !71, size: 16)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1529, file: !1496, line: 160, baseType: !102, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1529, file: !1496, line: 162, baseType: !1534, size: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1496, line: 69, size: 64, elements: !1535)
!1535 = !{!1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1534, file: !1496, line: 71, baseType: !102, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1534, file: !1496, line: 73, baseType: !102, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1534, file: !1496, line: 75, baseType: !102, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1534, file: !1496, line: 77, baseType: !102, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1534, file: !1496, line: 80, baseType: !102, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1534, file: !1496, line: 83, baseType: !102, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1534, file: !1496, line: 86, baseType: !102, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1534, file: !1496, line: 88, baseType: !102, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1534, file: !1496, line: 93, baseType: !102, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1534, file: !1496, line: 100, baseType: !102, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1471, file: !1394, line: 96, baseType: !31, size: 32, offset: 1024)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1412, file: !1394, line: 352, baseType: !1548, size: 4608, align: 512)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1394, line: 333, size: 4608, align: 512, elements: !1549)
!1549 = !{!1550, !1551, !1560}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1548, file: !1394, line: 334, baseType: !1430, size: 4096, align: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1548, file: !1394, line: 335, baseType: !1552, size: 512, offset: 4096)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1394, line: 312, size: 512, elements: !1553)
!1553 = !{!1554, !1555, !1556}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1552, file: !1394, line: 313, baseType: !102, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1552, file: !1394, line: 314, baseType: !102, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1552, file: !1394, line: 315, baseType: !1557, size: 384, offset: 128)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 384, elements: !1558)
!1558 = !{!1559}
!1559 = !DISubrange(count: 6)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1548, file: !1394, line: 336, baseType: !1561, offset: 4608)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, elements: !585)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1412, file: !1394, line: 353, baseType: !1563, size: 32768)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 32768, elements: !1564)
!1564 = !{!1565}
!1565 = !DISubrange(count: 4096)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1393, file: !1394, line: 484, baseType: !1399, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1393, file: !1394, line: 491, baseType: !1568, size: 128, offset: 256)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1394, line: 404, size: 128, elements: !1569)
!1569 = !{!1570, !1571, !1572}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1568, file: !1394, line: 424, baseType: !102, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1568, file: !1394, line: 432, baseType: !35, size: 32, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1568, file: !1394, line: 440, baseType: !35, size: 32, offset: 96)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1393, file: !1394, line: 498, baseType: !1568, size: 128, offset: 384)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1393, file: !1394, line: 508, baseType: !1400, size: 33280, align: 512, offset: 512)
!1575 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/futex/.pi.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/futex/pi\22 -D KBUILD_BASENAME=\22pi\22 -D KBUILD_MODNAME=\22pi\22 -D __KBUILD_MODNAME=kmod_pi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/futex/pi.ll kernel/futex/pi.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !1576, retainedTypes: !1631, globals: !1647, splitDebugInlining: false, nameTableKind: None)
!1576 = !{!191, !638, !1237, !1577, !1582, !1586, !1603, !1612, !1619, !1626}
!1577 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1578, line: 10, baseType: !35, size: 32, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!1579 = !{!1580, !1581}
!1580 = !DIEnumerator(name: "false", value: 0)
!1581 = !DIEnumerator(name: "true", value: 1)
!1582 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "futex_access", file: !1073, line: 114, baseType: !35, size: 32, elements: !1583)
!1583 = !{!1584, !1585}
!1584 = !DIEnumerator(name: "FUTEX_READ", value: 0)
!1585 = !DIEnumerator(name: "FUTEX_WRITE", value: 1)
!1586 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_mode", file: !176, line: 39, baseType: !35, size: 32, elements: !1587)
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602}
!1588 = !DIEnumerator(name: "HRTIMER_MODE_ABS", value: 0)
!1589 = !DIEnumerator(name: "HRTIMER_MODE_REL", value: 1)
!1590 = !DIEnumerator(name: "HRTIMER_MODE_PINNED", value: 2)
!1591 = !DIEnumerator(name: "HRTIMER_MODE_SOFT", value: 4)
!1592 = !DIEnumerator(name: "HRTIMER_MODE_HARD", value: 8)
!1593 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED", value: 2)
!1594 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED", value: 3)
!1595 = !DIEnumerator(name: "HRTIMER_MODE_ABS_SOFT", value: 4)
!1596 = !DIEnumerator(name: "HRTIMER_MODE_REL_SOFT", value: 5)
!1597 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED_SOFT", value: 6)
!1598 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED_SOFT", value: 7)
!1599 = !DIEnumerator(name: "HRTIMER_MODE_ABS_HARD", value: 8)
!1600 = !DIEnumerator(name: "HRTIMER_MODE_REL_HARD", value: 9)
!1601 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED_HARD", value: 10)
!1602 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED_HARD", value: 11)
!1603 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !9, line: 364, baseType: !35, size: 32, elements: !1604)
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610, !1611}
!1605 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!1606 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!1607 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!1608 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!1609 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!1610 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!1611 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!1612 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !42, line: 119, baseType: !35, size: 32, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1617, !1618}
!1614 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!1615 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!1616 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!1617 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!1618 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!1619 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !688, line: 9, baseType: !35, size: 32, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1624, !1625}
!1621 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!1622 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!1623 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!1624 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!1625 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!1626 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1081, line: 56, baseType: !35, size: 32, elements: !1627)
!1627 = !{!1628, !1629, !1630}
!1628 = !DIEnumerator(name: "FUTEX_STATE_OK", value: 0)
!1629 = !DIEnumerator(name: "FUTEX_STATE_EXITING", value: 1)
!1630 = !DIEnumerator(name: "FUTEX_STATE_DEAD", value: 2)
!1631 = !{!1632, !102, !31, !1633, !39, !19, !28, !1634, !1636, !1638, !746, !1640, !1642, !1644, !891, !895}
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !47, line: 154, baseType: !35)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !110)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1637)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1635)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1646 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!1647 = !{!0, !7, !13, !1648, !1653}
!1648 = !DIGlobalVariableExpression(var: !1649, expr: !DIExpression())
!1649 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched170", scope: !1650, file: !21, line: 2104, type: !39, isLocal: true, isDefinition: true)
!1650 = distinct !DISubprogram(name: "_cond_resched", scope: !21, file: !21, line: 2102, type: !1651, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!51}
!1653 = !DIGlobalVariableExpression(var: !1654, expr: !DIExpression())
!1654 = distinct !DIGlobalVariable(scope: null, file: !897, line: 137, type: !1655, isLocal: true, isDefinition: true)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !1656)
!1656 = !{!1657}
!1657 = !DISubrange(count: 41)
!1658 = !{!1659}
!1659 = !DILocalVariable(name: "t", arg: 1, scope: !15, file: !16, line: 124, type: !19)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1661, line: 211, elements: !418)
!1661 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1662 = !{!"rsp"}
!1663 = !{i32 7, !"Dwarf Version", i32 5}
!1664 = !{i32 2, !"Debug Info Version", i32 3}
!1665 = !{i32 1, !"wchar_size", i32 2}
!1666 = !{i32 8, !"cf-protection-branch", i32 1}
!1667 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1668 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1669 = !{i32 1, !"Code Model", i32 2}
!1670 = !{i32 1, !"override-stack-alignment", i32 8}
!1671 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1672 = distinct !DISubprogram(name: "refill_pi_state_cache", scope: !2, file: !2, line: 12, type: !1651, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !1673)
!1673 = !{!1674}
!1674 = !DILocalVariable(name: "pi_state", scope: !1672, file: !2, line: 14, type: !1071)
!1675 = !DILocation(line: 14, column: 2, scope: !1672)
!1676 = !DILocation(line: 14, column: 25, scope: !1672)
!1677 = !DILocation(line: 16, column: 6, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1672, file: !2, line: 16, column: 6)
!1679 = !DILocation(line: 16, column: 6, scope: !1672)
!1680 = !DILocation(line: 17, column: 3, scope: !1678)
!1681 = !DILocation(line: 19, column: 13, scope: !1672)
!1682 = !DILocation(line: 19, column: 11, scope: !1672)
!1683 = !DILocation(line: 21, column: 7, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1672, file: !2, line: 21, column: 6)
!1685 = !DILocation(line: 21, column: 6, scope: !1672)
!1686 = !DILocation(line: 22, column: 3, scope: !1684)
!1687 = !DILocation(line: 24, column: 18, scope: !1672)
!1688 = !DILocation(line: 24, column: 28, scope: !1672)
!1689 = !DILocation(line: 24, column: 2, scope: !1672)
!1690 = !DILocation(line: 26, column: 2, scope: !1672)
!1691 = !DILocation(line: 26, column: 12, scope: !1672)
!1692 = !DILocation(line: 26, column: 18, scope: !1672)
!1693 = !DILocation(line: 27, column: 16, scope: !1672)
!1694 = !DILocation(line: 27, column: 26, scope: !1672)
!1695 = !DILocation(line: 27, column: 2, scope: !1672)
!1696 = !DILocation(line: 28, column: 2, scope: !1672)
!1697 = !DILocation(line: 28, column: 12, scope: !1672)
!1698 = !DILocation(line: 28, column: 18, scope: !1672)
!1699 = !DILocation(line: 30, column: 28, scope: !1672)
!1700 = !DILocation(line: 30, column: 2, scope: !1672)
!1701 = !DILocation(line: 30, column: 11, scope: !1672)
!1702 = !DILocation(line: 30, column: 26, scope: !1672)
!1703 = !DILocation(line: 32, column: 2, scope: !1672)
!1704 = !DILocation(line: 33, column: 1, scope: !1672)
!1705 = distinct !DISubprogram(name: "get_current", scope: !1706, file: !1706, line: 39, type: !1707, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !1709)
!1706 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!19}
!1709 = !{!1710, !1712, !1716}
!1710 = !DILocalVariable(name: "pscr_ret__", scope: !1711, file: !1706, line: 41, type: !19)
!1711 = distinct !DILexicalBlock(scope: !1705, file: !1706, line: 41, column: 9)
!1712 = !DILocalVariable(name: "__vpp_verify", scope: !1713, file: !1706, line: 41, type: !1714)
!1713 = distinct !DILexicalBlock(scope: !1711, file: !1706, line: 41, column: 9)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1716 = !DILocalVariable(name: "pfo_val__", scope: !1717, file: !1706, line: 41, type: !102)
!1717 = distinct !DILexicalBlock(scope: !1711, file: !1706, line: 41, column: 9)
!1718 = !DILocation(line: 41, column: 9, scope: !1711)
!1719 = !DILocation(line: 41, column: 9, scope: !1713)
!1720 = !DILocation(line: 41, column: 9, scope: !1717)
!1721 = !{i64 2148412554}
!1722 = !DILocation(line: 41, column: 9, scope: !1705)
!1723 = !DILocation(line: 41, column: 2, scope: !1705)
!1724 = distinct !DISubprogram(name: "kzalloc", scope: !9, file: !9, line: 719, type: !1725, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !1727)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!39, !846, !1632}
!1727 = !{!1728, !1729}
!1728 = !DILocalVariable(name: "size", arg: 1, scope: !1724, file: !9, line: 719, type: !846)
!1729 = !DILocalVariable(name: "flags", arg: 2, scope: !1724, file: !9, line: 719, type: !1632)
!1730 = !DILocation(line: 719, column: 52, scope: !1724)
!1731 = !DILocation(line: 719, column: 64, scope: !1724)
!1732 = !DILocation(line: 721, column: 17, scope: !1724)
!1733 = !DILocation(line: 721, column: 23, scope: !1724)
!1734 = !DILocation(line: 721, column: 29, scope: !1724)
!1735 = !DILocation(line: 721, column: 9, scope: !1724)
!1736 = !DILocation(line: 721, column: 2, scope: !1724)
!1737 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !1738, file: !1738, line: 35, type: !1739, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !1741)
!1738 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!1739 = !DISubroutineType(types: !1740)
!1740 = !{null, !110}
!1741 = !{!1742}
!1742 = !DILocalVariable(name: "list", arg: 1, scope: !1737, file: !1738, line: 35, type: !110)
!1743 = !DILocation(line: 35, column: 53, scope: !1737)
!1744 = !DILocation(line: 37, column: 2, scope: !1737)
!1745 = !DILocation(line: 37, column: 2, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1737, file: !1738, line: 37, column: 2)
!1747 = !DILocation(line: 37, column: 2, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1746, file: !1738, line: 37, column: 2)
!1749 = !DILocation(line: 37, column: 2, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !1738, line: 37, column: 2)
!1751 = !DILocation(line: 38, column: 2, scope: !1737)
!1752 = !DILocation(line: 38, column: 2, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1737, file: !1738, line: 38, column: 2)
!1754 = !DILocation(line: 38, column: 2, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1753, file: !1738, line: 38, column: 2)
!1756 = !DILocation(line: 38, column: 2, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !1738, line: 38, column: 2)
!1758 = !DILocation(line: 39, column: 1, scope: !1737)
!1759 = distinct !DISubprogram(name: "refcount_set", scope: !42, file: !42, line: 134, type: !1760, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !1763)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{null, !1762, !51}
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!1763 = !{!1764, !1765}
!1764 = !DILocalVariable(name: "r", arg: 1, scope: !1759, file: !42, line: 134, type: !1762)
!1765 = !DILocalVariable(name: "n", arg: 2, scope: !1759, file: !42, line: 134, type: !51)
!1766 = !DILocation(line: 134, column: 45, scope: !1759)
!1767 = !DILocation(line: 134, column: 52, scope: !1759)
!1768 = !DILocation(line: 136, column: 14, scope: !1759)
!1769 = !DILocation(line: 136, column: 17, scope: !1759)
!1770 = !DILocation(line: 136, column: 23, scope: !1759)
!1771 = !DILocation(line: 136, column: 2, scope: !1759)
!1772 = !DILocation(line: 137, column: 1, scope: !1759)
!1773 = distinct !DISubprogram(name: "get_pi_state", scope: !2, file: !2, line: 68, type: !1774, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !1776)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{null, !1071}
!1776 = !{!1777, !1778, !1780}
!1777 = !DILocalVariable(name: "pi_state", arg: 1, scope: !1773, file: !2, line: 68, type: !1071)
!1778 = !DILocalVariable(name: "__ret_warn_on", scope: !1779, file: !2, line: 70, type: !51)
!1779 = distinct !DILexicalBlock(scope: !1773, file: !2, line: 70, column: 2)
!1780 = !DILocalVariable(name: "__flags", scope: !1781, file: !2, line: 70, type: !51)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !2, line: 70, column: 2)
!1782 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 70, column: 2)
!1783 = !DILocation(line: 68, column: 42, scope: !1773)
!1784 = !DILocation(line: 70, column: 2, scope: !1779)
!1785 = !DILocation(line: 70, column: 2, scope: !1782)
!1786 = !DILocation(line: 70, column: 2, scope: !1781)
!1787 = !DILocation(line: 70, column: 2, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1781, file: !2, line: 70, column: 2)
!1789 = !DILocation(line: 70, column: 2, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1781, file: !2, line: 70, column: 2)
!1791 = !{i64 2152620083, i64 2152620112, i64 2152620158, i64 2152620216, i64 2152620270, i64 2152620324, i64 2152620379, i64 2152620410, i64 2152620718, i64 2152620724, i64 2152620771, i64 2152620794, i64 2152620820}
!1792 = !DILocation(line: 70, column: 2, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1781, file: !2, line: 70, column: 2)
!1794 = !DILocation(line: 70, column: 2, scope: !1773)
!1795 = !DILocation(line: 71, column: 1, scope: !1773)
!1796 = distinct !DISubprogram(name: "refcount_inc_not_zero", scope: !42, file: !42, line: 243, type: !1797, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!881, !1762}
!1799 = !{!1800}
!1800 = !DILocalVariable(name: "r", arg: 1, scope: !1796, file: !42, line: 243, type: !1762)
!1801 = !DILocation(line: 243, column: 67, scope: !1796)
!1802 = !DILocation(line: 245, column: 33, scope: !1796)
!1803 = !DILocation(line: 245, column: 9, scope: !1796)
!1804 = !DILocation(line: 245, column: 2, scope: !1796)
!1805 = distinct !DISubprogram(name: "put_pi_state", scope: !2, file: !2, line: 77, type: !1774, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !1806)
!1806 = !{!1807, !1808, !1811, !1814, !1815, !1818}
!1807 = !DILocalVariable(name: "pi_state", arg: 1, scope: !1805, file: !2, line: 77, type: !1071)
!1808 = !DILocalVariable(name: "flags", scope: !1809, file: !2, line: 90, type: !28)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 89, column: 23)
!1810 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 89, column: 6)
!1811 = !DILocalVariable(name: "__dummy", scope: !1812, file: !2, line: 92, type: !28)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 92, column: 3)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !2, line: 92, column: 3)
!1814 = !DILocalVariable(name: "__dummy2", scope: !1812, file: !2, line: 92, type: !28)
!1815 = !DILocalVariable(name: "__dummy", scope: !1816, file: !2, line: 95, type: !28)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !2, line: 95, column: 3)
!1817 = distinct !DILexicalBlock(scope: !1809, file: !2, line: 95, column: 3)
!1818 = !DILocalVariable(name: "__dummy2", scope: !1816, file: !2, line: 95, type: !28)
!1819 = !DILocation(line: 77, column: 42, scope: !1805)
!1820 = !DILocation(line: 79, column: 7, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 79, column: 6)
!1822 = !DILocation(line: 79, column: 6, scope: !1805)
!1823 = !DILocation(line: 80, column: 3, scope: !1821)
!1824 = !DILocation(line: 82, column: 30, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 82, column: 6)
!1826 = !DILocation(line: 82, column: 40, scope: !1825)
!1827 = !DILocation(line: 82, column: 7, scope: !1825)
!1828 = !DILocation(line: 82, column: 6, scope: !1805)
!1829 = !DILocation(line: 83, column: 3, scope: !1825)
!1830 = !DILocation(line: 89, column: 6, scope: !1810)
!1831 = !DILocation(line: 89, column: 16, scope: !1810)
!1832 = !DILocation(line: 89, column: 6, scope: !1805)
!1833 = !DILocation(line: 90, column: 3, scope: !1809)
!1834 = !DILocation(line: 90, column: 17, scope: !1809)
!1835 = !DILocation(line: 92, column: 3, scope: !1809)
!1836 = !DILocation(line: 92, column: 3, scope: !1812)
!1837 = !DILocation(line: 92, column: 3, scope: !1813)
!1838 = !DILocation(line: 93, column: 25, scope: !1809)
!1839 = !DILocation(line: 93, column: 3, scope: !1809)
!1840 = !DILocation(line: 94, column: 26, scope: !1809)
!1841 = !DILocation(line: 94, column: 36, scope: !1809)
!1842 = !DILocation(line: 94, column: 3, scope: !1809)
!1843 = !DILocation(line: 95, column: 3, scope: !1809)
!1844 = !DILocation(line: 95, column: 3, scope: !1816)
!1845 = !DILocation(line: 95, column: 3, scope: !1817)
!1846 = !DILocation(line: 96, column: 2, scope: !1810)
!1847 = !DILocation(line: 96, column: 2, scope: !1809)
!1848 = !DILocation(line: 98, column: 6, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 98, column: 6)
!1850 = !DILocation(line: 98, column: 15, scope: !1849)
!1851 = !DILocation(line: 98, column: 6, scope: !1805)
!1852 = !DILocation(line: 99, column: 9, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !2, line: 98, column: 31)
!1854 = !DILocation(line: 99, column: 3, scope: !1853)
!1855 = !DILocation(line: 100, column: 2, scope: !1853)
!1856 = !DILocation(line: 106, column: 3, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1849, file: !2, line: 100, column: 9)
!1858 = !DILocation(line: 106, column: 13, scope: !1857)
!1859 = !DILocation(line: 106, column: 19, scope: !1857)
!1860 = !DILocation(line: 107, column: 17, scope: !1857)
!1861 = !DILocation(line: 107, column: 27, scope: !1857)
!1862 = !DILocation(line: 107, column: 3, scope: !1857)
!1863 = !DILocation(line: 108, column: 29, scope: !1857)
!1864 = !DILocation(line: 108, column: 3, scope: !1857)
!1865 = !DILocation(line: 108, column: 12, scope: !1857)
!1866 = !DILocation(line: 108, column: 27, scope: !1857)
!1867 = !DILocation(line: 110, column: 1, scope: !1805)
!1868 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !42, file: !42, line: 331, type: !1797, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !1869)
!1869 = !{!1870}
!1870 = !DILocalVariable(name: "r", arg: 1, scope: !1868, file: !42, line: 331, type: !1762)
!1871 = !DILocation(line: 331, column: 67, scope: !1868)
!1872 = !DILocation(line: 333, column: 33, scope: !1868)
!1873 = !DILocation(line: 333, column: 9, scope: !1868)
!1874 = !DILocation(line: 333, column: 2, scope: !1868)
!1875 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !1876, file: !1876, line: 32, type: !1877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1876 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!28, !1879}
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1880 = distinct !DISubprogram(name: "pi_state_update_owner", scope: !2, file: !2, line: 45, type: !1881, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !1883)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !1071, !19}
!1883 = !{!1884, !1885, !1886, !1887, !1891, !1894, !1898}
!1884 = !DILocalVariable(name: "pi_state", arg: 1, scope: !1880, file: !2, line: 45, type: !1071)
!1885 = !DILocalVariable(name: "new_owner", arg: 2, scope: !1880, file: !2, line: 46, type: !19)
!1886 = !DILocalVariable(name: "old_owner", scope: !1880, file: !2, line: 48, type: !19)
!1887 = !DILocalVariable(name: "__ret_warn_on", scope: !1888, file: !2, line: 54, type: !51)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !2, line: 54, column: 3)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !2, line: 52, column: 17)
!1890 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 52, column: 6)
!1891 = !DILocalVariable(name: "__flags", scope: !1892, file: !2, line: 54, type: !51)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !2, line: 54, column: 3)
!1893 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 54, column: 3)
!1894 = !DILocalVariable(name: "__ret_warn_on", scope: !1895, file: !2, line: 61, type: !51)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !2, line: 61, column: 3)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 59, column: 17)
!1897 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 59, column: 6)
!1898 = !DILocalVariable(name: "__flags", scope: !1899, file: !2, line: 61, type: !51)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !2, line: 61, column: 3)
!1900 = distinct !DILexicalBlock(scope: !1895, file: !2, line: 61, column: 3)
!1901 = !DILocation(line: 45, column: 58, scope: !1880)
!1902 = !DILocation(line: 46, column: 27, scope: !1880)
!1903 = !DILocation(line: 48, column: 2, scope: !1880)
!1904 = !DILocation(line: 48, column: 22, scope: !1880)
!1905 = !DILocation(line: 48, column: 34, scope: !1880)
!1906 = !DILocation(line: 48, column: 44, scope: !1880)
!1907 = !DILocation(line: 50, column: 2, scope: !1880)
!1908 = !DILocation(line: 50, column: 2, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 50, column: 2)
!1910 = !DILocation(line: 52, column: 6, scope: !1890)
!1911 = !DILocation(line: 52, column: 6, scope: !1880)
!1912 = !DILocation(line: 53, column: 3, scope: !1889)
!1913 = !DILocation(line: 54, column: 3, scope: !1888)
!1914 = !DILocation(line: 54, column: 3, scope: !1893)
!1915 = !DILocation(line: 54, column: 3, scope: !1892)
!1916 = !DILocation(line: 54, column: 3, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1892, file: !2, line: 54, column: 3)
!1918 = !DILocation(line: 54, column: 3, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1892, file: !2, line: 54, column: 3)
!1920 = !{i64 2152616897, i64 2152616926, i64 2152616972, i64 2152617030, i64 2152617084, i64 2152617138, i64 2152617193, i64 2152617224, i64 2152617532, i64 2152617538, i64 2152617585, i64 2152617608, i64 2152617634}
!1921 = !DILocation(line: 54, column: 3, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1892, file: !2, line: 54, column: 3)
!1923 = !DILocation(line: 54, column: 3, scope: !1889)
!1924 = !DILocation(line: 55, column: 18, scope: !1889)
!1925 = !DILocation(line: 55, column: 28, scope: !1889)
!1926 = !DILocation(line: 55, column: 3, scope: !1889)
!1927 = !DILocation(line: 56, column: 3, scope: !1889)
!1928 = !DILocation(line: 57, column: 2, scope: !1889)
!1929 = !DILocation(line: 59, column: 6, scope: !1897)
!1930 = !DILocation(line: 59, column: 6, scope: !1880)
!1931 = !DILocation(line: 60, column: 3, scope: !1896)
!1932 = !DILocation(line: 61, column: 3, scope: !1895)
!1933 = !DILocation(line: 61, column: 3, scope: !1900)
!1934 = !DILocation(line: 61, column: 3, scope: !1899)
!1935 = !DILocation(line: 61, column: 3, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1899, file: !2, line: 61, column: 3)
!1937 = !DILocation(line: 61, column: 3, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1899, file: !2, line: 61, column: 3)
!1939 = !{i64 2152618489, i64 2152618518, i64 2152618564, i64 2152618622, i64 2152618676, i64 2152618730, i64 2152618785, i64 2152618816, i64 2152619124, i64 2152619130, i64 2152619177, i64 2152619200, i64 2152619226}
!1940 = !DILocation(line: 61, column: 3, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1899, file: !2, line: 61, column: 3)
!1942 = !DILocation(line: 61, column: 3, scope: !1896)
!1943 = !DILocation(line: 62, column: 13, scope: !1896)
!1944 = !DILocation(line: 62, column: 23, scope: !1896)
!1945 = !DILocation(line: 62, column: 30, scope: !1896)
!1946 = !DILocation(line: 62, column: 41, scope: !1896)
!1947 = !DILocation(line: 62, column: 3, scope: !1896)
!1948 = !DILocation(line: 63, column: 21, scope: !1896)
!1949 = !DILocation(line: 63, column: 3, scope: !1896)
!1950 = !DILocation(line: 63, column: 13, scope: !1896)
!1951 = !DILocation(line: 63, column: 19, scope: !1896)
!1952 = !DILocation(line: 64, column: 3, scope: !1896)
!1953 = !DILocation(line: 65, column: 2, scope: !1896)
!1954 = !DILocation(line: 66, column: 1, scope: !1880)
!1955 = !DISubprogram(name: "rt_mutex_proxy_unlock", scope: !897, file: !897, line: 83, type: !1956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{null, !908}
!1958 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !1876, file: !1876, line: 43, type: !1959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{null, !1879, !28}
!1961 = !DISubprogram(name: "kfree", scope: !9, file: !9, line: 227, type: !1962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !1714}
!1964 = distinct !DISubprogram(name: "futex_lock_pi_atomic", scope: !2, file: !2, line: 514, type: !1965, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !1978)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!51, !627, !1967, !1976, !1977, !19, !1633, !51}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "futex_hash_bucket", file: !1073, line: 45, size: 512, align: 512, elements: !1969)
!1969 = !{!1970, !1971, !1972}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1968, file: !1073, line: 46, baseType: !46, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1968, file: !1073, line: 47, baseType: !407, size: 32, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1968, file: !1073, line: 48, baseType: !1973, size: 128, offset: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !381, line: 82, size: 128, elements: !1974)
!1974 = !{!1975}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1973, file: !381, line: 83, baseType: !107, size: 128)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1978 = !{!1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !2003}
!1979 = !DILocalVariable(name: "uaddr", arg: 1, scope: !1964, file: !2, line: 514, type: !627)
!1980 = !DILocalVariable(name: "hb", arg: 2, scope: !1964, file: !2, line: 514, type: !1967)
!1981 = !DILocalVariable(name: "key", arg: 3, scope: !1964, file: !2, line: 515, type: !1976)
!1982 = !DILocalVariable(name: "ps", arg: 4, scope: !1964, file: !2, line: 516, type: !1977)
!1983 = !DILocalVariable(name: "task", arg: 5, scope: !1964, file: !2, line: 517, type: !19)
!1984 = !DILocalVariable(name: "exiting", arg: 6, scope: !1964, file: !2, line: 518, type: !1633)
!1985 = !DILocalVariable(name: "set_waiters", arg: 7, scope: !1964, file: !2, line: 519, type: !51)
!1986 = !DILocalVariable(name: "uval", scope: !1964, file: !2, line: 521, type: !31)
!1987 = !DILocalVariable(name: "newval", scope: !1964, file: !2, line: 521, type: !31)
!1988 = !DILocalVariable(name: "vpid", scope: !1964, file: !2, line: 521, type: !31)
!1989 = !DILocalVariable(name: "top_waiter", scope: !1964, file: !2, line: 522, type: !1990)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "futex_q", file: !1073, line: 96, size: 896, elements: !1992)
!1992 = !{!1993, !1994, !1995, !1997, !1998, !1999, !2000, !2001, !2002}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1991, file: !1073, line: 97, baseType: !380, size: 320)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1991, file: !1073, line: 99, baseType: !19, size: 64, offset: 320)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ptr", scope: !1991, file: !1073, line: 100, baseType: !1996, size: 64, offset: 384)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1991, file: !1073, line: 101, baseType: !1080, size: 192, offset: 448)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state", scope: !1991, file: !1073, line: 102, baseType: !1071, size: 64, offset: 640)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "rt_waiter", scope: !1991, file: !1073, line: 103, baseType: !895, size: 64, offset: 704)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_pi_key", scope: !1991, file: !1073, line: 104, baseType: !1976, size: 64, offset: 768)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1991, file: !1073, line: 105, baseType: !31, size: 32, offset: 832)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_state", scope: !1991, file: !1073, line: 106, baseType: !46, size: 32, offset: 864)
!2003 = !DILocalVariable(name: "ret", scope: !1964, file: !2, line: 523, type: !51)
!2004 = !DILocation(line: 514, column: 38, scope: !1964)
!2005 = !DILocation(line: 514, column: 71, scope: !1964)
!2006 = !DILocation(line: 515, column: 22, scope: !1964)
!2007 = !DILocation(line: 516, column: 29, scope: !1964)
!2008 = !DILocation(line: 517, column: 25, scope: !1964)
!2009 = !DILocation(line: 518, column: 26, scope: !1964)
!2010 = !DILocation(line: 519, column: 9, scope: !1964)
!2011 = !DILocation(line: 521, column: 2, scope: !1964)
!2012 = !DILocation(line: 521, column: 6, scope: !1964)
!2013 = !DILocation(line: 521, column: 12, scope: !1964)
!2014 = !DILocation(line: 521, column: 20, scope: !1964)
!2015 = !DILocation(line: 521, column: 40, scope: !1964)
!2016 = !DILocation(line: 521, column: 27, scope: !1964)
!2017 = !DILocation(line: 522, column: 2, scope: !1964)
!2018 = !DILocation(line: 522, column: 18, scope: !1964)
!2019 = !DILocation(line: 523, column: 2, scope: !1964)
!2020 = !DILocation(line: 523, column: 6, scope: !1964)
!2021 = !DILocation(line: 529, column: 36, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1964, file: !2, line: 529, column: 6)
!2023 = !DILocation(line: 529, column: 6, scope: !2022)
!2024 = !DILocation(line: 529, column: 6, scope: !1964)
!2025 = !DILocation(line: 530, column: 3, scope: !2022)
!2026 = !DILocation(line: 532, column: 6, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1964, file: !2, line: 532, column: 6)
!2028 = !DILocation(line: 532, column: 6, scope: !1964)
!2029 = !DILocation(line: 533, column: 3, scope: !2027)
!2030 = !DILocation(line: 538, column: 7, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1964, file: !2, line: 538, column: 6)
!2032 = !DILocation(line: 538, column: 6, scope: !1964)
!2033 = !DILocation(line: 539, column: 3, scope: !2031)
!2034 = !DILocation(line: 541, column: 7, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1964, file: !2, line: 541, column: 6)
!2036 = !DILocation(line: 541, column: 6, scope: !1964)
!2037 = !DILocation(line: 542, column: 3, scope: !2035)
!2038 = !DILocation(line: 548, column: 32, scope: !1964)
!2039 = !DILocation(line: 548, column: 36, scope: !1964)
!2040 = !DILocation(line: 548, column: 15, scope: !1964)
!2041 = !DILocation(line: 548, column: 13, scope: !1964)
!2042 = !DILocation(line: 549, column: 6, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !1964, file: !2, line: 549, column: 6)
!2044 = !DILocation(line: 549, column: 6, scope: !1964)
!2045 = !DILocation(line: 550, column: 29, scope: !2043)
!2046 = !DILocation(line: 550, column: 36, scope: !2043)
!2047 = !DILocation(line: 550, column: 42, scope: !2043)
!2048 = !DILocation(line: 550, column: 54, scope: !2043)
!2049 = !DILocation(line: 550, column: 64, scope: !2043)
!2050 = !DILocation(line: 550, column: 10, scope: !2043)
!2051 = !DILocation(line: 550, column: 3, scope: !2043)
!2052 = !DILocation(line: 558, column: 8, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1964, file: !2, line: 558, column: 6)
!2054 = !DILocation(line: 558, column: 13, scope: !2053)
!2055 = !DILocation(line: 558, column: 6, scope: !1964)
!2056 = !DILocation(line: 563, column: 12, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2053, file: !2, line: 558, column: 32)
!2058 = !DILocation(line: 563, column: 17, scope: !2057)
!2059 = !DILocation(line: 563, column: 10, scope: !2057)
!2060 = !DILocation(line: 564, column: 13, scope: !2057)
!2061 = !DILocation(line: 564, column: 10, scope: !2057)
!2062 = !DILocation(line: 567, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2057, file: !2, line: 567, column: 7)
!2064 = !DILocation(line: 567, column: 7, scope: !2057)
!2065 = !DILocation(line: 568, column: 11, scope: !2063)
!2066 = !DILocation(line: 568, column: 4, scope: !2063)
!2067 = !DILocation(line: 570, column: 31, scope: !2057)
!2068 = !DILocation(line: 570, column: 38, scope: !2057)
!2069 = !DILocation(line: 570, column: 44, scope: !2057)
!2070 = !DILocation(line: 570, column: 9, scope: !2057)
!2071 = !DILocation(line: 570, column: 7, scope: !2057)
!2072 = !DILocation(line: 571, column: 7, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2057, file: !2, line: 571, column: 7)
!2074 = !DILocation(line: 571, column: 7, scope: !2057)
!2075 = !DILocation(line: 572, column: 11, scope: !2073)
!2076 = !DILocation(line: 572, column: 4, scope: !2073)
!2077 = !DILocation(line: 585, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2057, file: !2, line: 585, column: 7)
!2079 = !DILocation(line: 585, column: 7, scope: !2057)
!2080 = !DILocation(line: 586, column: 4, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2078, file: !2, line: 585, column: 20)
!2082 = !DILocation(line: 587, column: 25, scope: !2081)
!2083 = !DILocation(line: 587, column: 31, scope: !2081)
!2084 = !DILocation(line: 587, column: 36, scope: !2081)
!2085 = !DILocation(line: 587, column: 4, scope: !2081)
!2086 = !DILocation(line: 588, column: 4, scope: !2081)
!2087 = !DILocation(line: 589, column: 3, scope: !2081)
!2088 = !DILocation(line: 590, column: 3, scope: !2057)
!2089 = !DILocation(line: 598, column: 11, scope: !1964)
!2090 = !DILocation(line: 598, column: 16, scope: !1964)
!2091 = !DILocation(line: 598, column: 9, scope: !1964)
!2092 = !DILocation(line: 599, column: 30, scope: !1964)
!2093 = !DILocation(line: 599, column: 37, scope: !1964)
!2094 = !DILocation(line: 599, column: 43, scope: !1964)
!2095 = !DILocation(line: 599, column: 8, scope: !1964)
!2096 = !DILocation(line: 599, column: 6, scope: !1964)
!2097 = !DILocation(line: 600, column: 6, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1964, file: !2, line: 600, column: 6)
!2099 = !DILocation(line: 600, column: 6, scope: !1964)
!2100 = !DILocation(line: 601, column: 10, scope: !2098)
!2101 = !DILocation(line: 601, column: 3, scope: !2098)
!2102 = !DILocation(line: 607, column: 28, scope: !1964)
!2103 = !DILocation(line: 607, column: 35, scope: !1964)
!2104 = !DILocation(line: 607, column: 43, scope: !1964)
!2105 = !DILocation(line: 607, column: 48, scope: !1964)
!2106 = !DILocation(line: 607, column: 52, scope: !1964)
!2107 = !DILocation(line: 607, column: 9, scope: !1964)
!2108 = !DILocation(line: 607, column: 2, scope: !1964)
!2109 = !DILocation(line: 608, column: 1, scope: !1964)
!2110 = distinct !DISubprogram(name: "task_pid_vnr", scope: !21, file: !21, line: 1590, type: !2111, scopeLine: 1591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !2113)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!674, !19}
!2113 = !{!2114}
!2114 = !DILocalVariable(name: "tsk", arg: 1, scope: !2110, file: !21, line: 1590, type: !19)
!2115 = !DILocation(line: 1590, column: 54, scope: !2110)
!2116 = !DILocation(line: 1592, column: 26, scope: !2110)
!2117 = !DILocation(line: 1592, column: 9, scope: !2110)
!2118 = !DILocation(line: 1592, column: 2, scope: !2110)
!2119 = !DISubprogram(name: "futex_get_value_locked", scope: !1073, file: !1073, line: 151, type: !2120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!51, !627, !627}
!2122 = distinct !DISubprogram(name: "should_fail_futex", scope: !1073, file: !1073, line: 34, type: !2123, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!881, !881}
!2125 = !{!2126}
!2126 = !DILocalVariable(name: "fshared", arg: 1, scope: !2122, file: !1073, line: 34, type: !881)
!2127 = !DILocation(line: 34, column: 43, scope: !2122)
!2128 = !DILocation(line: 36, column: 2, scope: !2122)
!2129 = !DISubprogram(name: "futex_top_waiter", scope: !1073, file: !1073, line: 152, type: !2130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!1990, !1967, !1976}
!2132 = distinct !DISubprogram(name: "attach_to_pi_state", scope: !2, file: !2, line: 202, type: !2133, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!51, !627, !31, !1071, !1977}
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2145, !2148, !2149, !2150, !2151, !2152}
!2136 = !DILocalVariable(name: "uaddr", arg: 1, scope: !2132, file: !2, line: 202, type: !627)
!2137 = !DILocalVariable(name: "uval", arg: 2, scope: !2132, file: !2, line: 202, type: !31)
!2138 = !DILocalVariable(name: "pi_state", arg: 3, scope: !2132, file: !2, line: 203, type: !1071)
!2139 = !DILocalVariable(name: "ps", arg: 4, scope: !2132, file: !2, line: 204, type: !1977)
!2140 = !DILocalVariable(name: "pid", scope: !2132, file: !2, line: 206, type: !674)
!2141 = !DILocalVariable(name: "uval2", scope: !2132, file: !2, line: 207, type: !31)
!2142 = !DILocalVariable(name: "ret", scope: !2132, file: !2, line: 208, type: !51)
!2143 = !DILocalVariable(name: "__ret_warn_on", scope: !2144, file: !2, line: 228, type: !51)
!2144 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 228, column: 2)
!2145 = !DILocalVariable(name: "__flags", scope: !2146, file: !2, line: 228, type: !51)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !2, line: 228, column: 2)
!2147 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 228, column: 2)
!2148 = !DILabel(scope: !2132, name: "out_attach", file: !2, line: 297)
!2149 = !DILabel(scope: !2132, name: "out_einval", file: !2, line: 303)
!2150 = !DILabel(scope: !2132, name: "out_eagain", file: !2, line: 307)
!2151 = !DILabel(scope: !2132, name: "out_efault", file: !2, line: 311)
!2152 = !DILabel(scope: !2132, name: "out_error", file: !2, line: 315)
!2153 = !DILocation(line: 202, column: 43, scope: !2132)
!2154 = !DILocation(line: 202, column: 54, scope: !2132)
!2155 = !DILocation(line: 203, column: 33, scope: !2132)
!2156 = !DILocation(line: 204, column: 34, scope: !2132)
!2157 = !DILocation(line: 206, column: 2, scope: !2132)
!2158 = !DILocation(line: 206, column: 8, scope: !2132)
!2159 = !DILocation(line: 206, column: 14, scope: !2132)
!2160 = !DILocation(line: 206, column: 19, scope: !2132)
!2161 = !DILocation(line: 207, column: 2, scope: !2132)
!2162 = !DILocation(line: 207, column: 6, scope: !2132)
!2163 = !DILocation(line: 208, column: 2, scope: !2132)
!2164 = !DILocation(line: 208, column: 6, scope: !2132)
!2165 = !DILocation(line: 213, column: 6, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 213, column: 6)
!2167 = !DILocation(line: 213, column: 6, scope: !2132)
!2168 = !DILocation(line: 214, column: 3, scope: !2166)
!2169 = !DILocation(line: 228, column: 2, scope: !2144)
!2170 = !DILocation(line: 228, column: 2, scope: !2147)
!2171 = !DILocation(line: 228, column: 2, scope: !2146)
!2172 = !DILocation(line: 228, column: 2, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2146, file: !2, line: 228, column: 2)
!2174 = !DILocation(line: 228, column: 2, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2146, file: !2, line: 228, column: 2)
!2176 = !{i64 2152622232, i64 2152622261, i64 2152622307, i64 2152622365, i64 2152622419, i64 2152622473, i64 2152622528, i64 2152622559, i64 2152622867, i64 2152622873, i64 2152622920, i64 2152622943, i64 2152622969}
!2177 = !DILocation(line: 228, column: 2, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2146, file: !2, line: 228, column: 2)
!2179 = !DILocation(line: 228, column: 2, scope: !2132)
!2180 = !DILocation(line: 234, column: 2, scope: !2132)
!2181 = !DILocation(line: 242, column: 37, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 242, column: 6)
!2183 = !DILocation(line: 242, column: 6, scope: !2182)
!2184 = !DILocation(line: 242, column: 6, scope: !2132)
!2185 = !DILocation(line: 243, column: 3, scope: !2182)
!2186 = !DILocation(line: 245, column: 6, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 245, column: 6)
!2188 = !DILocation(line: 245, column: 14, scope: !2187)
!2189 = !DILocation(line: 245, column: 11, scope: !2187)
!2190 = !DILocation(line: 245, column: 6, scope: !2132)
!2191 = !DILocation(line: 246, column: 3, scope: !2187)
!2192 = !DILocation(line: 251, column: 6, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 251, column: 6)
!2194 = !DILocation(line: 251, column: 11, scope: !2193)
!2195 = !DILocation(line: 251, column: 6, scope: !2132)
!2196 = !DILocation(line: 257, column: 8, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 257, column: 7)
!2198 = distinct !DILexicalBlock(scope: !2193, file: !2, line: 251, column: 31)
!2199 = !DILocation(line: 257, column: 18, scope: !2197)
!2200 = !DILocation(line: 257, column: 7, scope: !2198)
!2201 = !DILocation(line: 262, column: 8, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !2, line: 262, column: 8)
!2203 = distinct !DILexicalBlock(scope: !2197, file: !2, line: 257, column: 25)
!2204 = !DILocation(line: 262, column: 8, scope: !2203)
!2205 = !DILocation(line: 263, column: 5, scope: !2202)
!2206 = !DILocation(line: 267, column: 4, scope: !2203)
!2207 = !DILocation(line: 278, column: 8, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 278, column: 7)
!2209 = !DILocation(line: 278, column: 7, scope: !2198)
!2210 = !DILocation(line: 279, column: 4, scope: !2208)
!2211 = !DILocation(line: 280, column: 2, scope: !2198)
!2212 = !DILocation(line: 285, column: 8, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !2, line: 285, column: 7)
!2214 = distinct !DILexicalBlock(scope: !2193, file: !2, line: 280, column: 9)
!2215 = !DILocation(line: 285, column: 18, scope: !2213)
!2216 = !DILocation(line: 285, column: 7, scope: !2214)
!2217 = !DILocation(line: 286, column: 4, scope: !2213)
!2218 = !DILocation(line: 294, column: 6, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 294, column: 6)
!2220 = !DILocation(line: 294, column: 26, scope: !2219)
!2221 = !DILocation(line: 294, column: 36, scope: !2219)
!2222 = !DILocation(line: 294, column: 13, scope: !2219)
!2223 = !DILocation(line: 294, column: 10, scope: !2219)
!2224 = !DILocation(line: 294, column: 6, scope: !2132)
!2225 = !DILocation(line: 295, column: 3, scope: !2219)
!2226 = !DILocation(line: 294, column: 41, scope: !2219)
!2227 = !DILocation(line: 297, column: 1, scope: !2132)
!2228 = !DILocation(line: 298, column: 15, scope: !2132)
!2229 = !DILocation(line: 298, column: 2, scope: !2132)
!2230 = !DILocation(line: 299, column: 2, scope: !2132)
!2231 = !DILocation(line: 300, column: 8, scope: !2132)
!2232 = !DILocation(line: 300, column: 3, scope: !2132)
!2233 = !DILocation(line: 300, column: 6, scope: !2132)
!2234 = !DILocation(line: 301, column: 2, scope: !2132)
!2235 = !DILocation(line: 303, column: 1, scope: !2132)
!2236 = !DILocation(line: 304, column: 6, scope: !2132)
!2237 = !DILocation(line: 305, column: 2, scope: !2132)
!2238 = !DILocation(line: 307, column: 1, scope: !2132)
!2239 = !DILocation(line: 308, column: 6, scope: !2132)
!2240 = !DILocation(line: 309, column: 2, scope: !2132)
!2241 = !DILocation(line: 311, column: 1, scope: !2132)
!2242 = !DILocation(line: 312, column: 6, scope: !2132)
!2243 = !DILocation(line: 313, column: 2, scope: !2132)
!2244 = !DILocation(line: 315, column: 1, scope: !2132)
!2245 = !DILocation(line: 316, column: 2, scope: !2132)
!2246 = !DILocation(line: 317, column: 9, scope: !2132)
!2247 = !DILocation(line: 317, column: 2, scope: !2132)
!2248 = !DILocation(line: 318, column: 1, scope: !2132)
!2249 = distinct !DISubprogram(name: "lock_pi_update_atomic", scope: !2, file: !2, line: 474, type: !2250, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !2252)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!51, !627, !31, !31}
!2252 = !{!2253, !2254, !2255, !2256, !2257}
!2253 = !DILocalVariable(name: "uaddr", arg: 1, scope: !2249, file: !2, line: 474, type: !627)
!2254 = !DILocalVariable(name: "uval", arg: 2, scope: !2249, file: !2, line: 474, type: !31)
!2255 = !DILocalVariable(name: "newval", arg: 3, scope: !2249, file: !2, line: 474, type: !31)
!2256 = !DILocalVariable(name: "err", scope: !2249, file: !2, line: 476, type: !51)
!2257 = !DILocalVariable(name: "curval", scope: !2249, file: !2, line: 477, type: !31)
!2258 = !DILocation(line: 474, column: 46, scope: !2249)
!2259 = !DILocation(line: 474, column: 57, scope: !2249)
!2260 = !DILocation(line: 474, column: 67, scope: !2249)
!2261 = !DILocation(line: 476, column: 2, scope: !2249)
!2262 = !DILocation(line: 476, column: 6, scope: !2249)
!2263 = !DILocation(line: 477, column: 2, scope: !2249)
!2264 = !DILocation(line: 477, column: 6, scope: !2249)
!2265 = !DILocation(line: 479, column: 6, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 479, column: 6)
!2267 = !DILocation(line: 479, column: 6, scope: !2249)
!2268 = !DILocation(line: 480, column: 3, scope: !2266)
!2269 = !DILocation(line: 482, column: 44, scope: !2249)
!2270 = !DILocation(line: 482, column: 51, scope: !2249)
!2271 = !DILocation(line: 482, column: 57, scope: !2249)
!2272 = !DILocation(line: 482, column: 8, scope: !2249)
!2273 = !DILocation(line: 482, column: 6, scope: !2249)
!2274 = !DILocation(line: 483, column: 6, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2249, file: !2, line: 483, column: 6)
!2276 = !DILocation(line: 483, column: 6, scope: !2249)
!2277 = !DILocation(line: 484, column: 10, scope: !2275)
!2278 = !DILocation(line: 484, column: 3, scope: !2275)
!2279 = !DILocation(line: 487, column: 9, scope: !2249)
!2280 = !DILocation(line: 487, column: 19, scope: !2249)
!2281 = !DILocation(line: 487, column: 16, scope: !2249)
!2282 = !DILocation(line: 487, column: 2, scope: !2249)
!2283 = !DILocation(line: 488, column: 1, scope: !2249)
!2284 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !1876, file: !1876, line: 29, type: !2285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{null, !1879}
!2287 = distinct !DISubprogram(name: "__attach_to_pi_owner", scope: !2, file: !2, line: 376, type: !2288, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !2290)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{null, !19, !1976, !1977}
!2290 = !{!2291, !2292, !2293, !2294, !2295, !2297}
!2291 = !DILocalVariable(name: "p", arg: 1, scope: !2287, file: !2, line: 376, type: !19)
!2292 = !DILocalVariable(name: "key", arg: 2, scope: !2287, file: !2, line: 376, type: !1976)
!2293 = !DILocalVariable(name: "ps", arg: 3, scope: !2287, file: !2, line: 377, type: !1977)
!2294 = !DILocalVariable(name: "pi_state", scope: !2287, file: !2, line: 385, type: !1071)
!2295 = !DILocalVariable(name: "__ret_warn_on", scope: !2296, file: !2, line: 396, type: !51)
!2296 = distinct !DILexicalBlock(scope: !2287, file: !2, line: 396, column: 2)
!2297 = !DILocalVariable(name: "__flags", scope: !2298, file: !2, line: 396, type: !51)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !2, line: 396, column: 2)
!2299 = distinct !DILexicalBlock(scope: !2296, file: !2, line: 396, column: 2)
!2300 = !DILocation(line: 376, column: 54, scope: !2287)
!2301 = !DILocation(line: 376, column: 74, scope: !2287)
!2302 = !DILocation(line: 377, column: 30, scope: !2287)
!2303 = !DILocation(line: 385, column: 2, scope: !2287)
!2304 = !DILocation(line: 385, column: 25, scope: !2287)
!2305 = !DILocation(line: 385, column: 36, scope: !2287)
!2306 = !DILocation(line: 391, column: 30, scope: !2287)
!2307 = !DILocation(line: 391, column: 40, scope: !2287)
!2308 = !DILocation(line: 391, column: 50, scope: !2287)
!2309 = !DILocation(line: 391, column: 2, scope: !2287)
!2310 = !DILocation(line: 394, column: 2, scope: !2287)
!2311 = !DILocation(line: 394, column: 12, scope: !2287)
!2312 = !DILocation(line: 394, column: 19, scope: !2287)
!2313 = !DILocation(line: 394, column: 18, scope: !2287)
!2314 = !DILocation(line: 396, column: 2, scope: !2296)
!2315 = !DILocation(line: 396, column: 2, scope: !2299)
!2316 = !DILocation(line: 396, column: 2, scope: !2298)
!2317 = !DILocation(line: 396, column: 2, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2298, file: !2, line: 396, column: 2)
!2319 = !DILocation(line: 396, column: 2, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2298, file: !2, line: 396, column: 2)
!2321 = !{i64 2152623960, i64 2152623989, i64 2152624035, i64 2152624093, i64 2152624147, i64 2152624201, i64 2152624256, i64 2152624287, i64 2152624595, i64 2152624601, i64 2152624648, i64 2152624671, i64 2152624697}
!2322 = !DILocation(line: 396, column: 2, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2298, file: !2, line: 396, column: 2)
!2324 = !DILocation(line: 396, column: 2, scope: !2287)
!2325 = !DILocation(line: 397, column: 12, scope: !2287)
!2326 = !DILocation(line: 397, column: 22, scope: !2287)
!2327 = !DILocation(line: 397, column: 29, scope: !2287)
!2328 = !DILocation(line: 397, column: 32, scope: !2287)
!2329 = !DILocation(line: 397, column: 2, scope: !2287)
!2330 = !DILocation(line: 402, column: 20, scope: !2287)
!2331 = !DILocation(line: 402, column: 2, scope: !2287)
!2332 = !DILocation(line: 402, column: 12, scope: !2287)
!2333 = !DILocation(line: 402, column: 18, scope: !2287)
!2334 = !DILocation(line: 404, column: 8, scope: !2287)
!2335 = !DILocation(line: 404, column: 3, scope: !2287)
!2336 = !DILocation(line: 404, column: 6, scope: !2287)
!2337 = !DILocation(line: 405, column: 1, scope: !2287)
!2338 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !1876, file: !1876, line: 41, type: !2285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2339 = distinct !DISubprogram(name: "attach_to_pi_owner", scope: !2, file: !2, line: 410, type: !2340, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !2342)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!51, !627, !31, !1976, !1977, !1633}
!2342 = !{!2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350}
!2343 = !DILocalVariable(name: "uaddr", arg: 1, scope: !2339, file: !2, line: 410, type: !627)
!2344 = !DILocalVariable(name: "uval", arg: 2, scope: !2339, file: !2, line: 410, type: !31)
!2345 = !DILocalVariable(name: "key", arg: 3, scope: !2339, file: !2, line: 410, type: !1976)
!2346 = !DILocalVariable(name: "ps", arg: 4, scope: !2339, file: !2, line: 411, type: !1977)
!2347 = !DILocalVariable(name: "exiting", arg: 5, scope: !2339, file: !2, line: 412, type: !1633)
!2348 = !DILocalVariable(name: "pid", scope: !2339, file: !2, line: 414, type: !674)
!2349 = !DILocalVariable(name: "p", scope: !2339, file: !2, line: 415, type: !19)
!2350 = !DILocalVariable(name: "ret", scope: !2351, file: !2, line: 447, type: !51)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !2, line: 441, column: 50)
!2352 = distinct !DILexicalBlock(scope: !2339, file: !2, line: 441, column: 6)
!2353 = !DILocation(line: 410, column: 43, scope: !2339)
!2354 = !DILocation(line: 410, column: 54, scope: !2339)
!2355 = !DILocation(line: 410, column: 77, scope: !2339)
!2356 = !DILocation(line: 411, column: 34, scope: !2339)
!2357 = !DILocation(line: 412, column: 31, scope: !2339)
!2358 = !DILocation(line: 414, column: 2, scope: !2339)
!2359 = !DILocation(line: 414, column: 8, scope: !2339)
!2360 = !DILocation(line: 414, column: 14, scope: !2339)
!2361 = !DILocation(line: 414, column: 19, scope: !2339)
!2362 = !DILocation(line: 415, column: 2, scope: !2339)
!2363 = !DILocation(line: 415, column: 22, scope: !2339)
!2364 = !DILocation(line: 424, column: 7, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2339, file: !2, line: 424, column: 6)
!2366 = !DILocation(line: 424, column: 6, scope: !2339)
!2367 = !DILocation(line: 425, column: 3, scope: !2365)
!2368 = !DILocation(line: 426, column: 28, scope: !2339)
!2369 = !DILocation(line: 426, column: 6, scope: !2339)
!2370 = !DILocation(line: 426, column: 4, scope: !2339)
!2371 = !DILocation(line: 427, column: 7, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2339, file: !2, line: 427, column: 6)
!2373 = !DILocation(line: 427, column: 6, scope: !2339)
!2374 = !DILocation(line: 428, column: 27, scope: !2372)
!2375 = !DILocation(line: 428, column: 34, scope: !2372)
!2376 = !DILocation(line: 428, column: 10, scope: !2372)
!2377 = !DILocation(line: 428, column: 3, scope: !2372)
!2378 = !DILocation(line: 430, column: 6, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2339, file: !2, line: 430, column: 6)
!2380 = !DILocation(line: 430, column: 6, scope: !2339)
!2381 = !DILocation(line: 431, column: 19, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2379, file: !2, line: 430, column: 39)
!2383 = !DILocation(line: 431, column: 3, scope: !2382)
!2384 = !DILocation(line: 432, column: 3, scope: !2382)
!2385 = !DILocation(line: 440, column: 2, scope: !2339)
!2386 = !DILocation(line: 441, column: 6, scope: !2352)
!2387 = !DILocation(line: 441, column: 6, scope: !2339)
!2388 = !DILocation(line: 447, column: 3, scope: !2351)
!2389 = !DILocation(line: 447, column: 7, scope: !2351)
!2390 = !DILocation(line: 447, column: 30, scope: !2351)
!2391 = !DILocation(line: 447, column: 37, scope: !2351)
!2392 = !DILocation(line: 447, column: 43, scope: !2351)
!2393 = !DILocation(line: 447, column: 13, scope: !2351)
!2394 = !DILocation(line: 449, column: 3, scope: !2351)
!2395 = !DILocation(line: 459, column: 7, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2351, file: !2, line: 459, column: 7)
!2397 = !DILocation(line: 459, column: 11, scope: !2396)
!2398 = !DILocation(line: 459, column: 7, scope: !2351)
!2399 = !DILocation(line: 460, column: 15, scope: !2396)
!2400 = !DILocation(line: 460, column: 5, scope: !2396)
!2401 = !DILocation(line: 460, column: 13, scope: !2396)
!2402 = !DILocation(line: 460, column: 4, scope: !2396)
!2403 = !DILocation(line: 462, column: 20, scope: !2396)
!2404 = !DILocation(line: 462, column: 4, scope: !2396)
!2405 = !DILocation(line: 463, column: 10, scope: !2351)
!2406 = !DILocation(line: 463, column: 3, scope: !2351)
!2407 = !DILocation(line: 464, column: 2, scope: !2352)
!2408 = !DILocation(line: 466, column: 23, scope: !2339)
!2409 = !DILocation(line: 466, column: 26, scope: !2339)
!2410 = !DILocation(line: 466, column: 31, scope: !2339)
!2411 = !DILocation(line: 466, column: 2, scope: !2339)
!2412 = !DILocation(line: 467, column: 2, scope: !2339)
!2413 = !DILocation(line: 469, column: 18, scope: !2339)
!2414 = !DILocation(line: 469, column: 2, scope: !2339)
!2415 = !DILocation(line: 471, column: 2, scope: !2339)
!2416 = !DILocation(line: 472, column: 1, scope: !2339)
!2417 = distinct !DISubprogram(name: "fixup_pi_owner", scope: !2, file: !2, line: 884, type: !2418, scopeLine: 885, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!51, !627, !1990, !51}
!2420 = !{!2421, !2422, !2423, !2424, !2427}
!2421 = !DILocalVariable(name: "uaddr", arg: 1, scope: !2417, file: !2, line: 884, type: !627)
!2422 = !DILocalVariable(name: "q", arg: 2, scope: !2417, file: !2, line: 884, type: !1990)
!2423 = !DILocalVariable(name: "locked", arg: 3, scope: !2417, file: !2, line: 884, type: !51)
!2424 = !DILocalVariable(name: "__ret_warn_on", scope: !2425, file: !2, line: 915, type: !51)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !2, line: 915, column: 6)
!2426 = distinct !DILexicalBlock(scope: !2417, file: !2, line: 915, column: 6)
!2427 = !DILocalVariable(name: "__flags", scope: !2428, file: !2, line: 915, type: !51)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !2, line: 915, column: 6)
!2429 = distinct !DILexicalBlock(scope: !2425, file: !2, line: 915, column: 6)
!2430 = !DILocation(line: 884, column: 32, scope: !2417)
!2431 = !DILocation(line: 884, column: 55, scope: !2417)
!2432 = !DILocation(line: 884, column: 62, scope: !2417)
!2433 = !DILocation(line: 886, column: 6, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2417, file: !2, line: 886, column: 6)
!2435 = !DILocation(line: 886, column: 6, scope: !2417)
!2436 = !DILocation(line: 895, column: 7, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !2, line: 895, column: 7)
!2438 = distinct !DILexicalBlock(scope: !2434, file: !2, line: 886, column: 14)
!2439 = !DILocation(line: 895, column: 10, scope: !2437)
!2440 = !DILocation(line: 895, column: 20, scope: !2437)
!2441 = !DILocation(line: 895, column: 29, scope: !2437)
!2442 = !DILocation(line: 895, column: 26, scope: !2437)
!2443 = !DILocation(line: 895, column: 7, scope: !2438)
!2444 = !DILocation(line: 896, column: 32, scope: !2437)
!2445 = !DILocation(line: 896, column: 39, scope: !2437)
!2446 = !DILocation(line: 896, column: 42, scope: !2437)
!2447 = !DILocation(line: 896, column: 11, scope: !2437)
!2448 = !DILocation(line: 896, column: 4, scope: !2437)
!2449 = !DILocation(line: 897, column: 3, scope: !2438)
!2450 = !DILocation(line: 908, column: 6, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2417, file: !2, line: 908, column: 6)
!2452 = !DILocation(line: 908, column: 9, scope: !2451)
!2453 = !DILocation(line: 908, column: 19, scope: !2451)
!2454 = !DILocation(line: 908, column: 28, scope: !2451)
!2455 = !DILocation(line: 908, column: 25, scope: !2451)
!2456 = !DILocation(line: 908, column: 6, scope: !2417)
!2457 = !DILocation(line: 909, column: 31, scope: !2451)
!2458 = !DILocation(line: 909, column: 38, scope: !2451)
!2459 = !DILocation(line: 909, column: 10, scope: !2451)
!2460 = !DILocation(line: 909, column: 3, scope: !2451)
!2461 = !DILocation(line: 915, column: 6, scope: !2425)
!2462 = !DILocation(line: 915, column: 6, scope: !2429)
!2463 = !DILocation(line: 915, column: 6, scope: !2428)
!2464 = !DILocation(line: 915, column: 6, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2428, file: !2, line: 915, column: 6)
!2466 = !DILocation(line: 915, column: 6, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2428, file: !2, line: 915, column: 6)
!2468 = !{i64 2152631811, i64 2152631840, i64 2152631886, i64 2152631944, i64 2152631998, i64 2152632052, i64 2152632107, i64 2152632138, i64 2152632446, i64 2152632452, i64 2152632499, i64 2152632522, i64 2152632548}
!2469 = !DILocation(line: 915, column: 6, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2428, file: !2, line: 915, column: 6)
!2471 = !DILocation(line: 915, column: 6, scope: !2426)
!2472 = !DILocation(line: 915, column: 6, scope: !2417)
!2473 = !DILocation(line: 916, column: 31, scope: !2426)
!2474 = !DILocation(line: 916, column: 38, scope: !2426)
!2475 = !DILocation(line: 916, column: 41, scope: !2426)
!2476 = !DILocation(line: 916, column: 10, scope: !2426)
!2477 = !DILocation(line: 916, column: 3, scope: !2426)
!2478 = !DILocation(line: 918, column: 2, scope: !2417)
!2479 = !DILocation(line: 919, column: 1, scope: !2417)
!2480 = distinct !DISubprogram(name: "fixup_pi_state_owner", scope: !2, file: !2, line: 855, type: !2481, scopeLine: 857, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!51, !627, !1990, !19}
!2483 = !{!2484, !2485, !2486, !2487, !2488}
!2484 = !DILocalVariable(name: "uaddr", arg: 1, scope: !2480, file: !2, line: 855, type: !627)
!2485 = !DILocalVariable(name: "q", arg: 2, scope: !2480, file: !2, line: 855, type: !1990)
!2486 = !DILocalVariable(name: "argowner", arg: 3, scope: !2480, file: !2, line: 856, type: !19)
!2487 = !DILocalVariable(name: "pi_state", scope: !2480, file: !2, line: 858, type: !1071)
!2488 = !DILocalVariable(name: "ret", scope: !2480, file: !2, line: 859, type: !51)
!2489 = !DILocation(line: 855, column: 45, scope: !2480)
!2490 = !DILocation(line: 855, column: 68, scope: !2480)
!2491 = !DILocation(line: 856, column: 25, scope: !2480)
!2492 = !DILocation(line: 858, column: 2, scope: !2480)
!2493 = !DILocation(line: 858, column: 25, scope: !2480)
!2494 = !DILocation(line: 858, column: 36, scope: !2480)
!2495 = !DILocation(line: 858, column: 39, scope: !2480)
!2496 = !DILocation(line: 859, column: 2, scope: !2480)
!2497 = !DILocation(line: 859, column: 6, scope: !2480)
!2498 = !DILocation(line: 861, column: 2, scope: !2480)
!2499 = !DILocation(line: 861, column: 2, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2480, file: !2, line: 861, column: 2)
!2501 = !DILocation(line: 863, column: 2, scope: !2480)
!2502 = !DILocation(line: 864, column: 31, scope: !2480)
!2503 = !DILocation(line: 864, column: 38, scope: !2480)
!2504 = !DILocation(line: 864, column: 41, scope: !2480)
!2505 = !DILocation(line: 864, column: 8, scope: !2480)
!2506 = !DILocation(line: 864, column: 6, scope: !2480)
!2507 = !DILocation(line: 865, column: 2, scope: !2480)
!2508 = !DILocation(line: 866, column: 9, scope: !2480)
!2509 = !DILocation(line: 867, column: 1, scope: !2480)
!2510 = !DILocation(line: 866, column: 2, scope: !2480)
!2511 = distinct !DISubprogram(name: "rt_mutex_owner", scope: !897, file: !897, line: 157, type: !2512, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!19, !908}
!2514 = !{!2515, !2516}
!2515 = !DILocalVariable(name: "lock", arg: 1, scope: !2511, file: !897, line: 157, type: !908)
!2516 = !DILocalVariable(name: "owner", scope: !2511, file: !897, line: 159, type: !28)
!2517 = !DILocation(line: 157, column: 72, scope: !2511)
!2518 = !DILocation(line: 159, column: 2, scope: !2511)
!2519 = !DILocation(line: 159, column: 16, scope: !2511)
!2520 = !DILocation(line: 159, column: 40, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2511, file: !897, line: 159, column: 40)
!2522 = !DILocation(line: 159, column: 40, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2521, file: !897, line: 159, column: 40)
!2524 = !DILocation(line: 159, column: 24, scope: !2511)
!2525 = !DILocation(line: 161, column: 33, scope: !2511)
!2526 = !DILocation(line: 161, column: 39, scope: !2511)
!2527 = !DILocation(line: 161, column: 9, scope: !2511)
!2528 = !DILocation(line: 162, column: 1, scope: !2511)
!2529 = !DILocation(line: 161, column: 2, scope: !2511)
!2530 = distinct !DISubprogram(name: "futex_lock_pi", scope: !2, file: !2, line: 930, type: !2531, scopeLine: 931, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !2534)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!51, !627, !35, !2533, !51}
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!2534 = !{!2535, !2536, !2537, !2538, !2539, !2544, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2556, !2559, !2560, !2561, !2562, !2563}
!2535 = !DILocalVariable(name: "uaddr", arg: 1, scope: !2530, file: !2, line: 930, type: !627)
!2536 = !DILocalVariable(name: "flags", arg: 2, scope: !2530, file: !2, line: 930, type: !35)
!2537 = !DILocalVariable(name: "time", arg: 3, scope: !2530, file: !2, line: 930, type: !2533)
!2538 = !DILocalVariable(name: "trylock", arg: 4, scope: !2530, file: !2, line: 930, type: !51)
!2539 = !DILocalVariable(name: "timeout", scope: !2530, file: !2, line: 932, type: !2540)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_sleeper", file: !176, line: 136, size: 576, elements: !2541)
!2541 = !{!2542, !2543}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2540, file: !176, line: 137, baseType: !175, size: 512)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2540, file: !176, line: 138, baseType: !19, size: 64, offset: 512)
!2544 = !DILocalVariable(name: "to", scope: !2530, file: !2, line: 932, type: !2545)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2546 = !DILocalVariable(name: "exiting", scope: !2530, file: !2, line: 933, type: !19)
!2547 = !DILocalVariable(name: "rt_waiter", scope: !2530, file: !2, line: 934, type: !896)
!2548 = !DILocalVariable(name: "hb", scope: !2530, file: !2, line: 935, type: !1967)
!2549 = !DILocalVariable(name: "q", scope: !2530, file: !2, line: 936, type: !1991)
!2550 = !DILocalVariable(name: "res", scope: !2530, file: !2, line: 937, type: !51)
!2551 = !DILocalVariable(name: "ret", scope: !2530, file: !2, line: 937, type: !51)
!2552 = !DILabel(scope: !2530, name: "retry", file: !2, line: 947)
!2553 = !DILabel(scope: !2530, name: "retry_private", file: !2, line: 952)
!2554 = !DILocalVariable(name: "__ret_warn_on", scope: !2555, file: !2, line: 991, type: !51)
!2555 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 991, column: 2)
!2556 = !DILocalVariable(name: "__flags", scope: !2557, file: !2, line: 991, type: !51)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !2, line: 991, column: 2)
!2558 = distinct !DILexicalBlock(scope: !2555, file: !2, line: 991, column: 2)
!2559 = !DILabel(scope: !2530, name: "cleanup", file: !2, line: 1041)
!2560 = !DILabel(scope: !2530, name: "no_block", file: !2, line: 1055)
!2561 = !DILabel(scope: !2530, name: "out_unlock_put_key", file: !2, line: 1072)
!2562 = !DILabel(scope: !2530, name: "out", file: !2, line: 1075)
!2563 = !DILabel(scope: !2530, name: "uaddr_faulted", file: !2, line: 1082)
!2564 = !DILocation(line: 930, column: 31, scope: !2530)
!2565 = !DILocation(line: 930, column: 51, scope: !2530)
!2566 = !DILocation(line: 930, column: 67, scope: !2530)
!2567 = !DILocation(line: 930, column: 77, scope: !2530)
!2568 = !DILocation(line: 932, column: 2, scope: !2530)
!2569 = !DILocation(line: 932, column: 25, scope: !2530)
!2570 = !DILocation(line: 932, column: 35, scope: !2530)
!2571 = !DILocation(line: 933, column: 2, scope: !2530)
!2572 = !DILocation(line: 933, column: 22, scope: !2530)
!2573 = !DILocation(line: 934, column: 2, scope: !2530)
!2574 = !DILocation(line: 934, column: 25, scope: !2530)
!2575 = !DILocation(line: 935, column: 2, scope: !2530)
!2576 = !DILocation(line: 935, column: 28, scope: !2530)
!2577 = !DILocation(line: 936, column: 2, scope: !2530)
!2578 = !DILocation(line: 936, column: 17, scope: !2530)
!2579 = !DILocation(line: 936, column: 21, scope: !2530)
!2580 = !DILocation(line: 937, column: 2, scope: !2530)
!2581 = !DILocation(line: 937, column: 6, scope: !2530)
!2582 = !DILocation(line: 937, column: 11, scope: !2530)
!2583 = !DILocation(line: 942, column: 6, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 942, column: 6)
!2585 = !DILocation(line: 942, column: 6, scope: !2530)
!2586 = !DILocation(line: 943, column: 3, scope: !2584)
!2587 = !DILocation(line: 945, column: 25, scope: !2530)
!2588 = !DILocation(line: 945, column: 41, scope: !2530)
!2589 = !DILocation(line: 945, column: 7, scope: !2530)
!2590 = !DILocation(line: 945, column: 5, scope: !2530)
!2591 = !DILocation(line: 945, column: 2, scope: !2530)
!2592 = !DILocation(line: 947, column: 1, scope: !2530)
!2593 = !DILocation(line: 948, column: 22, scope: !2530)
!2594 = !DILocation(line: 948, column: 29, scope: !2530)
!2595 = !DILocation(line: 948, column: 35, scope: !2530)
!2596 = !DILocation(line: 948, column: 54, scope: !2530)
!2597 = !DILocation(line: 948, column: 8, scope: !2530)
!2598 = !DILocation(line: 948, column: 6, scope: !2530)
!2599 = !DILocation(line: 949, column: 6, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 949, column: 6)
!2601 = !DILocation(line: 949, column: 6, scope: !2530)
!2602 = !DILocation(line: 950, column: 3, scope: !2600)
!2603 = !DILocation(line: 952, column: 1, scope: !2530)
!2604 = !DILocation(line: 953, column: 7, scope: !2530)
!2605 = !DILocation(line: 953, column: 5, scope: !2530)
!2606 = !DILocation(line: 955, column: 29, scope: !2530)
!2607 = !DILocation(line: 955, column: 36, scope: !2530)
!2608 = !DILocation(line: 955, column: 43, scope: !2530)
!2609 = !DILocation(line: 955, column: 51, scope: !2530)
!2610 = !DILocation(line: 955, column: 61, scope: !2530)
!2611 = !DILocation(line: 955, column: 8, scope: !2530)
!2612 = !DILocation(line: 955, column: 6, scope: !2530)
!2613 = !DILocation(line: 957, column: 6, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 957, column: 6)
!2615 = !DILocation(line: 957, column: 6, scope: !2530)
!2616 = !DILocation(line: 962, column: 11, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2614, file: !2, line: 957, column: 21)
!2618 = !DILocation(line: 962, column: 3, scope: !2617)
!2619 = !DILocation(line: 965, column: 8, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2617, file: !2, line: 962, column: 16)
!2621 = !DILocation(line: 966, column: 4, scope: !2620)
!2622 = !DILocation(line: 968, column: 4, scope: !2620)
!2623 = !DILocation(line: 977, column: 19, scope: !2620)
!2624 = !DILocation(line: 977, column: 4, scope: !2620)
!2625 = !DILocation(line: 983, column: 27, scope: !2620)
!2626 = !DILocation(line: 983, column: 32, scope: !2620)
!2627 = !DILocation(line: 983, column: 4, scope: !2620)
!2628 = !DILocation(line: 984, column: 4, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2620, file: !2, line: 984, column: 4)
!2630 = !DILocation(line: 985, column: 4, scope: !2620)
!2631 = !DILocation(line: 987, column: 4, scope: !2620)
!2632 = !DILocation(line: 991, column: 2, scope: !2555)
!2633 = !DILocation(line: 991, column: 2, scope: !2558)
!2634 = !DILocation(line: 991, column: 2, scope: !2557)
!2635 = !DILocation(line: 991, column: 2, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2557, file: !2, line: 991, column: 2)
!2637 = !DILocation(line: 991, column: 2, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2557, file: !2, line: 991, column: 2)
!2639 = !{i64 2152634088, i64 2152634117, i64 2152634163, i64 2152634221, i64 2152634275, i64 2152634329, i64 2152634384, i64 2152634415, i64 2152634723, i64 2152634729, i64 2152634776, i64 2152634799, i64 2152634825}
!2640 = !DILocation(line: 991, column: 2, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2557, file: !2, line: 991, column: 2)
!2642 = !DILocation(line: 991, column: 2, scope: !2530)
!2643 = !DILocation(line: 996, column: 20, scope: !2530)
!2644 = !DILocation(line: 996, column: 2, scope: !2530)
!2645 = !DILocation(line: 998, column: 6, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 998, column: 6)
!2647 = !DILocation(line: 998, column: 6, scope: !2530)
!2648 = !DILocation(line: 999, column: 35, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2646, file: !2, line: 998, column: 15)
!2650 = !DILocation(line: 999, column: 45, scope: !2649)
!2651 = !DILocation(line: 999, column: 9, scope: !2649)
!2652 = !DILocation(line: 999, column: 7, scope: !2649)
!2653 = !DILocation(line: 1001, column: 9, scope: !2649)
!2654 = !DILocation(line: 1001, column: 7, scope: !2649)
!2655 = !DILocation(line: 1002, column: 3, scope: !2649)
!2656 = !DILocation(line: 1005, column: 2, scope: !2530)
!2657 = !DILocation(line: 1020, column: 2, scope: !2530)
!2658 = !DILocation(line: 1021, column: 16, scope: !2530)
!2659 = !DILocation(line: 1021, column: 2, scope: !2530)
!2660 = !DILocation(line: 1027, column: 39, scope: !2530)
!2661 = !DILocation(line: 1027, column: 49, scope: !2530)
!2662 = !DILocation(line: 1027, column: 71, scope: !2530)
!2663 = !DILocation(line: 1027, column: 8, scope: !2530)
!2664 = !DILocation(line: 1027, column: 6, scope: !2530)
!2665 = !DILocation(line: 1028, column: 2, scope: !2530)
!2666 = !DILocation(line: 1030, column: 6, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 1030, column: 6)
!2668 = !DILocation(line: 1030, column: 6, scope: !2530)
!2669 = !DILocation(line: 1031, column: 7, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !2, line: 1031, column: 7)
!2671 = distinct !DILexicalBlock(scope: !2667, file: !2, line: 1030, column: 11)
!2672 = !DILocation(line: 1031, column: 11, scope: !2670)
!2673 = !DILocation(line: 1031, column: 7, scope: !2671)
!2674 = !DILocation(line: 1032, column: 8, scope: !2670)
!2675 = !DILocation(line: 1032, column: 4, scope: !2670)
!2676 = !DILocation(line: 1033, column: 3, scope: !2671)
!2677 = !DILocation(line: 1036, column: 6, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 1036, column: 6)
!2679 = !DILocation(line: 1036, column: 6, scope: !2530)
!2680 = !DILocation(line: 1037, column: 33, scope: !2678)
!2681 = !DILocation(line: 1037, column: 3, scope: !2678)
!2682 = !DILocation(line: 1039, column: 36, scope: !2530)
!2683 = !DILocation(line: 1039, column: 46, scope: !2530)
!2684 = !DILocation(line: 1039, column: 56, scope: !2530)
!2685 = !DILocation(line: 1039, column: 8, scope: !2530)
!2686 = !DILocation(line: 1039, column: 6, scope: !2530)
!2687 = !DILocation(line: 1039, column: 2, scope: !2530)
!2688 = !DILocation(line: 1041, column: 1, scope: !2530)
!2689 = !DILocation(line: 1042, column: 14, scope: !2530)
!2690 = !DILocation(line: 1042, column: 2, scope: !2530)
!2691 = !DILocation(line: 1052, column: 6, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 1052, column: 6)
!2693 = !DILocation(line: 1052, column: 10, scope: !2692)
!2694 = !DILocation(line: 1052, column: 45, scope: !2692)
!2695 = !DILocation(line: 1052, column: 55, scope: !2692)
!2696 = !DILocation(line: 1052, column: 14, scope: !2692)
!2697 = !DILocation(line: 1052, column: 6, scope: !2530)
!2698 = !DILocation(line: 1053, column: 7, scope: !2692)
!2699 = !DILocation(line: 1053, column: 3, scope: !2692)
!2700 = !DILocation(line: 1052, column: 75, scope: !2692)
!2701 = !DILocation(line: 1055, column: 1, scope: !2530)
!2702 = !DILocation(line: 1060, column: 23, scope: !2530)
!2703 = !DILocation(line: 1060, column: 35, scope: !2530)
!2704 = !DILocation(line: 1060, column: 34, scope: !2530)
!2705 = !DILocation(line: 1060, column: 8, scope: !2530)
!2706 = !DILocation(line: 1060, column: 6, scope: !2530)
!2707 = !DILocation(line: 1065, column: 6, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 1065, column: 6)
!2709 = !DILocation(line: 1065, column: 6, scope: !2530)
!2710 = !DILocation(line: 1066, column: 10, scope: !2708)
!2711 = !DILocation(line: 1066, column: 14, scope: !2708)
!2712 = !DILocation(line: 1066, column: 9, scope: !2708)
!2713 = !DILocation(line: 1066, column: 21, scope: !2708)
!2714 = !DILocation(line: 1066, column: 7, scope: !2708)
!2715 = !DILocation(line: 1066, column: 3, scope: !2708)
!2716 = !DILocation(line: 1068, column: 2, scope: !2530)
!2717 = !DILocation(line: 1069, column: 16, scope: !2530)
!2718 = !DILocation(line: 1069, column: 2, scope: !2530)
!2719 = !DILocation(line: 1070, column: 2, scope: !2530)
!2720 = !DILocation(line: 1072, column: 1, scope: !2530)
!2721 = !DILocation(line: 1073, column: 17, scope: !2530)
!2722 = !DILocation(line: 1073, column: 2, scope: !2530)
!2723 = !DILocation(line: 1075, column: 1, scope: !2530)
!2724 = !DILocation(line: 1076, column: 6, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 1076, column: 6)
!2726 = !DILocation(line: 1076, column: 6, scope: !2530)
!2727 = !DILocation(line: 1077, column: 19, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2725, file: !2, line: 1076, column: 10)
!2729 = !DILocation(line: 1077, column: 23, scope: !2728)
!2730 = !DILocation(line: 1077, column: 3, scope: !2728)
!2731 = !DILocation(line: 1078, column: 29, scope: !2728)
!2732 = !DILocation(line: 1078, column: 33, scope: !2728)
!2733 = !DILocation(line: 1078, column: 3, scope: !2728)
!2734 = !DILocation(line: 1079, column: 2, scope: !2728)
!2735 = !DILocation(line: 1080, column: 9, scope: !2530)
!2736 = !DILocation(line: 1080, column: 13, scope: !2530)
!2737 = !DILocation(line: 1080, column: 25, scope: !2530)
!2738 = !DILocation(line: 1080, column: 2, scope: !2530)
!2739 = !DILocation(line: 1082, column: 1, scope: !2530)
!2740 = !DILocation(line: 1083, column: 17, scope: !2530)
!2741 = !DILocation(line: 1083, column: 2, scope: !2530)
!2742 = !DILocation(line: 1085, column: 32, scope: !2530)
!2743 = !DILocation(line: 1085, column: 8, scope: !2530)
!2744 = !DILocation(line: 1085, column: 6, scope: !2530)
!2745 = !DILocation(line: 1086, column: 6, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 1086, column: 6)
!2747 = !DILocation(line: 1086, column: 6, scope: !2530)
!2748 = !DILocation(line: 1087, column: 3, scope: !2746)
!2749 = !DILocation(line: 1089, column: 8, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 1089, column: 6)
!2751 = !DILocation(line: 1089, column: 14, scope: !2750)
!2752 = !DILocation(line: 1089, column: 6, scope: !2530)
!2753 = !DILocation(line: 1090, column: 3, scope: !2750)
!2754 = !DILocation(line: 1092, column: 2, scope: !2530)
!2755 = !DILocation(line: 1093, column: 1, scope: !2530)
!2756 = !DISubprogram(name: "futex_setup_timer", scope: !1073, file: !1073, line: 123, type: !2757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!2545, !2533, !2545, !51, !102}
!2759 = !DISubprogram(name: "get_futex_key", scope: !1073, file: !1073, line: 119, type: !2760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!51, !627, !881, !1976, !1582}
!2762 = !DISubprogram(name: "futex_q_lock", scope: !1073, file: !1073, line: 219, type: !2763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!1967, !1990}
!2765 = !DISubprogram(name: "futex_q_unlock", scope: !1073, file: !1073, line: 220, type: !2766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{null, !1967}
!2768 = !DISubprogram(name: "wait_for_owner_exiting", scope: !1073, file: !1073, line: 179, type: !2769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{null, !51, !19}
!2771 = distinct !DISubprogram(name: "__might_resched", scope: !2772, file: !2772, line: 184, type: !2773, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !2777)
!2772 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!2773 = !DISubroutineType(types: !2774)
!2774 = !{null, !2775, !51, !35}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!2777 = !{!2778, !2779, !2780}
!2778 = !DILocalVariable(name: "file", arg: 1, scope: !2771, file: !2772, line: 184, type: !2775)
!2779 = !DILocalVariable(name: "line", arg: 2, scope: !2771, file: !2772, line: 184, type: !51)
!2780 = !DILocalVariable(name: "offsets", arg: 3, scope: !2771, file: !2772, line: 185, type: !35)
!2781 = !DILocation(line: 184, column: 50, scope: !2771)
!2782 = !DILocation(line: 184, column: 60, scope: !2771)
!2783 = !DILocation(line: 185, column: 23, scope: !2771)
!2784 = !DILocation(line: 185, column: 34, scope: !2771)
!2785 = !DILocation(line: 2104, column: 9, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !1650, file: !21, line: 2104, column: 9)
!2787 = !DILocation(line: 2104, column: 9, scope: !1650)
!2788 = !DILocation(line: 2104, column: 2, scope: !1650)
!2789 = !DISubprogram(name: "__futex_queue", scope: !1073, file: !1073, line: 155, type: !2790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !1990, !1967}
!2792 = !DISubprogram(name: "rt_mutex_futex_trylock", scope: !897, file: !897, line: 96, type: !2793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!51, !908}
!2795 = distinct !DISubprogram(name: "rt_mutex_init_waiter", scope: !897, file: !897, line: 211, type: !2796, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !2798)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{null, !895}
!2798 = !{!2799}
!2799 = !DILocalVariable(name: "waiter", arg: 1, scope: !2795, file: !897, line: 211, type: !895)
!2800 = !DILocation(line: 211, column: 65, scope: !2795)
!2801 = !DILocation(line: 213, column: 29, scope: !2795)
!2802 = !DILocation(line: 213, column: 2, scope: !2795)
!2803 = !DILocation(line: 214, column: 2, scope: !2795)
!2804 = !DILocation(line: 215, column: 2, scope: !2795)
!2805 = !DILocation(line: 216, column: 2, scope: !2795)
!2806 = !DILocation(line: 216, column: 10, scope: !2795)
!2807 = !DILocation(line: 216, column: 21, scope: !2795)
!2808 = !DILocation(line: 217, column: 2, scope: !2795)
!2809 = !DILocation(line: 217, column: 10, scope: !2795)
!2810 = !DILocation(line: 217, column: 15, scope: !2795)
!2811 = !DILocation(line: 218, column: 1, scope: !2795)
!2812 = distinct !DISubprogram(name: "spin_unlock", scope: !2813, file: !2813, line: 389, type: !2814, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !2816)
!2813 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!2814 = !DISubroutineType(types: !2815)
!2815 = !{null, !1996}
!2816 = !{!2817}
!2817 = !DILocalVariable(name: "lock", arg: 1, scope: !2812, file: !2813, line: 389, type: !1996)
!2818 = !DILocation(line: 389, column: 53, scope: !2812)
!2819 = !DILocation(line: 391, column: 2, scope: !2812)
!2820 = !DILocation(line: 392, column: 1, scope: !2812)
!2821 = !DISubprogram(name: "__rt_mutex_start_proxy_lock", scope: !897, file: !897, line: 84, type: !2822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!51, !908, !895, !19}
!2824 = !DISubprogram(name: "hrtimer_sleeper_start_expires", scope: !176, file: !176, line: 437, type: !2825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{null, !2545, !1586}
!2827 = !DISubprogram(name: "rt_mutex_wait_proxy_lock", scope: !897, file: !897, line: 90, type: !2828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!51, !908, !2545, !895}
!2830 = distinct !DISubprogram(name: "spin_lock", scope: !2813, file: !2813, line: 349, type: !2814, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !2831)
!2831 = !{!2832}
!2832 = !DILocalVariable(name: "lock", arg: 1, scope: !2830, file: !2813, line: 349, type: !1996)
!2833 = !DILocation(line: 349, column: 51, scope: !2830)
!2834 = !DILocation(line: 351, column: 2, scope: !2830)
!2835 = !DILocation(line: 352, column: 1, scope: !2830)
!2836 = !DISubprogram(name: "rt_mutex_cleanup_proxy_lock", scope: !897, file: !897, line: 93, type: !2837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!881, !908, !895}
!2839 = !DISubprogram(name: "futex_unqueue_pi", scope: !1073, file: !1073, line: 177, type: !2840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{null, !1990}
!2842 = !DISubprogram(name: "hrtimer_cancel", scope: !176, file: !176, line: 423, type: !2843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!51, !195}
!2845 = distinct !DISubprogram(name: "destroy_hrtimer_on_stack", scope: !176, file: !176, line: 402, type: !2846, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{null, !195}
!2848 = !{!2849}
!2849 = !DILocalVariable(name: "timer", arg: 1, scope: !2845, file: !176, line: 402, type: !195)
!2850 = !DILocation(line: 402, column: 61, scope: !2845)
!2851 = !DILocation(line: 402, column: 70, scope: !2845)
!2852 = !DISubprogram(name: "fault_in_user_writeable", scope: !1073, file: !1073, line: 149, type: !2853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!51, !627}
!2855 = distinct !DISubprogram(name: "futex_unlock_pi", scope: !2, file: !2, line: 1100, type: !2856, scopeLine: 1101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!51, !627, !35}
!2858 = !{!2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2873, !2874, !2876, !2879, !2884, !2887, !2888, !2889}
!2859 = !DILocalVariable(name: "uaddr", arg: 1, scope: !2855, file: !2, line: 1100, type: !627)
!2860 = !DILocalVariable(name: "flags", arg: 2, scope: !2855, file: !2, line: 1100, type: !35)
!2861 = !DILocalVariable(name: "curval", scope: !2855, file: !2, line: 1102, type: !31)
!2862 = !DILocalVariable(name: "uval", scope: !2855, file: !2, line: 1102, type: !31)
!2863 = !DILocalVariable(name: "vpid", scope: !2855, file: !2, line: 1102, type: !31)
!2864 = !DILocalVariable(name: "key", scope: !2855, file: !2, line: 1103, type: !1080)
!2865 = !DILocalVariable(name: "hb", scope: !2855, file: !2, line: 1104, type: !1967)
!2866 = !DILocalVariable(name: "top_waiter", scope: !2855, file: !2, line: 1105, type: !1990)
!2867 = !DILocalVariable(name: "ret", scope: !2855, file: !2, line: 1106, type: !51)
!2868 = !DILabel(scope: !2855, name: "retry", file: !2, line: 1111)
!2869 = !DILocalVariable(name: "__ret_gu", scope: !2870, file: !2, line: 1112, type: !51)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !2, line: 1112, column: 6)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !2, line: 1112, column: 6)
!2872 = distinct !DILexicalBlock(scope: !2855, file: !2, line: 1112, column: 6)
!2873 = !DILocalVariable(name: "__val_gu", scope: !2870, file: !2, line: 1112, type: !35)
!2874 = !DILocalVariable(name: "__tmp", scope: !2875, file: !2, line: 1112, type: !102)
!2875 = distinct !DILexicalBlock(scope: !2870, file: !2, line: 1112, column: 6)
!2876 = !DILocalVariable(name: "pi_state", scope: !2877, file: !2, line: 1134, type: !1071)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !2, line: 1133, column: 18)
!2878 = distinct !DILexicalBlock(scope: !2855, file: !2, line: 1133, column: 6)
!2879 = !DILocalVariable(name: "__ret_warn_on", scope: !2880, file: !2, line: 1207, type: !51)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !2, line: 1207, column: 4)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !2, line: 1199, column: 16)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !2, line: 1197, column: 67)
!2883 = distinct !DILexicalBlock(scope: !2855, file: !2, line: 1197, column: 6)
!2884 = !DILocalVariable(name: "__flags", scope: !2885, file: !2, line: 1207, type: !51)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !2, line: 1207, column: 4)
!2886 = distinct !DILexicalBlock(scope: !2880, file: !2, line: 1207, column: 4)
!2887 = !DILabel(scope: !2855, name: "out_unlock", file: !2, line: 1217)
!2888 = !DILabel(scope: !2855, name: "pi_retry", file: !2, line: 1221)
!2889 = !DILabel(scope: !2855, name: "pi_faulted", file: !2, line: 1225)
!2890 = !DILocation(line: 1100, column: 33, scope: !2855)
!2891 = !DILocation(line: 1100, column: 53, scope: !2855)
!2892 = !DILocation(line: 1102, column: 2, scope: !2855)
!2893 = !DILocation(line: 1102, column: 6, scope: !2855)
!2894 = !DILocation(line: 1102, column: 14, scope: !2855)
!2895 = !DILocation(line: 1102, column: 20, scope: !2855)
!2896 = !DILocation(line: 1102, column: 40, scope: !2855)
!2897 = !DILocation(line: 1102, column: 27, scope: !2855)
!2898 = !DILocation(line: 1103, column: 2, scope: !2855)
!2899 = !DILocation(line: 1103, column: 18, scope: !2855)
!2900 = !DILocation(line: 1104, column: 2, scope: !2855)
!2901 = !DILocation(line: 1104, column: 28, scope: !2855)
!2902 = !DILocation(line: 1105, column: 2, scope: !2855)
!2903 = !DILocation(line: 1105, column: 18, scope: !2855)
!2904 = !DILocation(line: 1106, column: 2, scope: !2855)
!2905 = !DILocation(line: 1106, column: 6, scope: !2855)
!2906 = !DILocation(line: 1108, column: 7, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2855, file: !2, line: 1108, column: 6)
!2908 = !DILocation(line: 1111, column: 1, scope: !2855)
!2909 = !DILocation(line: 1112, column: 6, scope: !2871)
!2910 = !DILocation(line: 1112, column: 6, scope: !2870)
!2911 = !{i64 2152636069}
!2912 = !DILocation(line: 1112, column: 6, scope: !2875)
!2913 = !DILocation(line: 1112, column: 6, scope: !2872)
!2914 = !DILocation(line: 1112, column: 6, scope: !2855)
!2915 = !DILocation(line: 1113, column: 3, scope: !2872)
!2916 = !DILocation(line: 1117, column: 7, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2855, file: !2, line: 1117, column: 6)
!2918 = !DILocation(line: 1117, column: 12, scope: !2917)
!2919 = !DILocation(line: 1117, column: 33, scope: !2917)
!2920 = !DILocation(line: 1117, column: 30, scope: !2917)
!2921 = !DILocation(line: 1117, column: 6, scope: !2855)
!2922 = !DILocation(line: 1118, column: 3, scope: !2917)
!2923 = !DILocation(line: 1120, column: 22, scope: !2855)
!2924 = !DILocation(line: 1120, column: 29, scope: !2855)
!2925 = !DILocation(line: 1120, column: 35, scope: !2855)
!2926 = !DILocation(line: 1120, column: 8, scope: !2855)
!2927 = !DILocation(line: 1120, column: 6, scope: !2855)
!2928 = !DILocation(line: 1121, column: 6, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2855, file: !2, line: 1121, column: 6)
!2930 = !DILocation(line: 1121, column: 6, scope: !2855)
!2931 = !DILocation(line: 1122, column: 10, scope: !2929)
!2932 = !DILocation(line: 1122, column: 3, scope: !2929)
!2933 = !DILocation(line: 1124, column: 7, scope: !2855)
!2934 = !DILocation(line: 1124, column: 5, scope: !2855)
!2935 = !DILocation(line: 1125, column: 13, scope: !2855)
!2936 = !DILocation(line: 1125, column: 17, scope: !2855)
!2937 = !DILocation(line: 1125, column: 2, scope: !2855)
!2938 = !DILocation(line: 1132, column: 32, scope: !2855)
!2939 = !DILocation(line: 1132, column: 15, scope: !2855)
!2940 = !DILocation(line: 1132, column: 13, scope: !2855)
!2941 = !DILocation(line: 1133, column: 6, scope: !2878)
!2942 = !DILocation(line: 1133, column: 6, scope: !2855)
!2943 = !DILocation(line: 1134, column: 3, scope: !2877)
!2944 = !DILocation(line: 1134, column: 26, scope: !2877)
!2945 = !DILocation(line: 1134, column: 37, scope: !2877)
!2946 = !DILocation(line: 1134, column: 49, scope: !2877)
!2947 = !DILocation(line: 1136, column: 7, scope: !2877)
!2948 = !DILocation(line: 1137, column: 8, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2877, file: !2, line: 1137, column: 7)
!2950 = !DILocation(line: 1137, column: 7, scope: !2877)
!2951 = !DILocation(line: 1138, column: 4, scope: !2949)
!2952 = !DILocation(line: 1144, column: 7, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2877, file: !2, line: 1144, column: 7)
!2954 = !DILocation(line: 1144, column: 17, scope: !2953)
!2955 = !DILocation(line: 1144, column: 26, scope: !2953)
!2956 = !DILocation(line: 1144, column: 23, scope: !2953)
!2957 = !DILocation(line: 1144, column: 7, scope: !2877)
!2958 = !DILocation(line: 1145, column: 4, scope: !2953)
!2959 = !DILocation(line: 1147, column: 16, scope: !2877)
!2960 = !DILocation(line: 1147, column: 3, scope: !2877)
!2961 = !DILocation(line: 1158, column: 3, scope: !2877)
!2962 = !DILocation(line: 1159, column: 16, scope: !2877)
!2963 = !DILocation(line: 1159, column: 20, scope: !2877)
!2964 = !DILocation(line: 1159, column: 3, scope: !2877)
!2965 = !DILocation(line: 1162, column: 23, scope: !2877)
!2966 = !DILocation(line: 1162, column: 30, scope: !2877)
!2967 = !DILocation(line: 1162, column: 36, scope: !2877)
!2968 = !DILocation(line: 1162, column: 9, scope: !2877)
!2969 = !DILocation(line: 1162, column: 7, scope: !2877)
!2970 = !DILocation(line: 1164, column: 16, scope: !2877)
!2971 = !DILocation(line: 1164, column: 3, scope: !2877)
!2972 = !DILocation(line: 1169, column: 8, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2877, file: !2, line: 1169, column: 7)
!2974 = !DILocation(line: 1169, column: 7, scope: !2877)
!2975 = !DILocation(line: 1170, column: 11, scope: !2973)
!2976 = !DILocation(line: 1170, column: 4, scope: !2973)
!2977 = !DILocation(line: 1175, column: 7, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2877, file: !2, line: 1175, column: 7)
!2979 = !DILocation(line: 1175, column: 11, scope: !2978)
!2980 = !DILocation(line: 1175, column: 7, scope: !2877)
!2981 = !DILocation(line: 1176, column: 4, scope: !2978)
!2982 = !DILocation(line: 1181, column: 7, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2877, file: !2, line: 1181, column: 7)
!2984 = !DILocation(line: 1181, column: 11, scope: !2983)
!2985 = !DILocation(line: 1181, column: 7, scope: !2877)
!2986 = !DILocation(line: 1182, column: 4, scope: !2983)
!2987 = !DILocation(line: 1187, column: 10, scope: !2877)
!2988 = !DILocation(line: 1187, column: 3, scope: !2877)
!2989 = !DILocation(line: 1188, column: 2, scope: !2878)
!2990 = !DILocation(line: 1197, column: 49, scope: !2883)
!2991 = !DILocation(line: 1197, column: 56, scope: !2883)
!2992 = !DILocation(line: 1197, column: 13, scope: !2883)
!2993 = !DILocation(line: 1197, column: 11, scope: !2883)
!2994 = !DILocation(line: 1197, column: 6, scope: !2855)
!2995 = !DILocation(line: 1198, column: 16, scope: !2882)
!2996 = !DILocation(line: 1198, column: 20, scope: !2882)
!2997 = !DILocation(line: 1198, column: 3, scope: !2882)
!2998 = !DILocation(line: 1199, column: 11, scope: !2882)
!2999 = !DILocation(line: 1199, column: 3, scope: !2882)
!3000 = !DILocation(line: 1201, column: 4, scope: !2881)
!3001 = !DILocation(line: 1204, column: 4, scope: !2881)
!3002 = !DILocation(line: 1207, column: 4, scope: !2880)
!3003 = !DILocation(line: 1207, column: 4, scope: !2886)
!3004 = !DILocation(line: 1207, column: 4, scope: !2885)
!3005 = !DILocation(line: 1207, column: 4, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2885, file: !2, line: 1207, column: 4)
!3007 = !DILocation(line: 1207, column: 4, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2885, file: !2, line: 1207, column: 4)
!3009 = !{i64 2152638380, i64 2152638409, i64 2152638455, i64 2152638513, i64 2152638567, i64 2152638621, i64 2152638676, i64 2152638707, i64 2152639015, i64 2152639021, i64 2152639068, i64 2152639091, i64 2152639117}
!3010 = !DILocation(line: 1207, column: 4, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2885, file: !2, line: 1207, column: 4)
!3012 = !DILocation(line: 1207, column: 4, scope: !2881)
!3013 = !DILocation(line: 1208, column: 11, scope: !2881)
!3014 = !DILocation(line: 1208, column: 4, scope: !2881)
!3015 = !DILocation(line: 1215, column: 9, scope: !2855)
!3016 = !DILocation(line: 1215, column: 19, scope: !2855)
!3017 = !DILocation(line: 1215, column: 16, scope: !2855)
!3018 = !DILocation(line: 1215, column: 8, scope: !2855)
!3019 = !DILocation(line: 1215, column: 6, scope: !2855)
!3020 = !DILocation(line: 1215, column: 2, scope: !2855)
!3021 = !DILocation(line: 1217, column: 1, scope: !2855)
!3022 = !DILocation(line: 1218, column: 15, scope: !2855)
!3023 = !DILocation(line: 1218, column: 19, scope: !2855)
!3024 = !DILocation(line: 1218, column: 2, scope: !2855)
!3025 = !DILocation(line: 1219, column: 9, scope: !2855)
!3026 = !DILocation(line: 1219, column: 2, scope: !2855)
!3027 = !DILocation(line: 1221, column: 1, scope: !2855)
!3028 = !DILocation(line: 1222, column: 2, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2855, file: !2, line: 1222, column: 2)
!3030 = !DILocation(line: 1223, column: 2, scope: !2855)
!3031 = !DILocation(line: 1225, column: 1, scope: !2855)
!3032 = !DILocation(line: 1227, column: 32, scope: !2855)
!3033 = !DILocation(line: 1227, column: 8, scope: !2855)
!3034 = !DILocation(line: 1227, column: 6, scope: !2855)
!3035 = !DILocation(line: 1228, column: 7, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2855, file: !2, line: 1228, column: 6)
!3037 = !DILocation(line: 1228, column: 6, scope: !2855)
!3038 = !DILocation(line: 1229, column: 3, scope: !3036)
!3039 = !DILocation(line: 1231, column: 9, scope: !2855)
!3040 = !DILocation(line: 1231, column: 2, scope: !2855)
!3041 = !DILocation(line: 1232, column: 1, scope: !2855)
!3042 = distinct !DISubprogram(name: "might_fault", scope: !2772, file: !2772, line: 202, type: !3043, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{null}
!3045 = !DILocation(line: 202, column: 40, scope: !3042)
!3046 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !3047, file: !3047, line: 70, type: !3048, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3050)
!3047 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!3048 = !DISubroutineType(types: !3049)
!3049 = !{null, !1714, !846}
!3050 = !{!3051, !3052}
!3051 = !DILocalVariable(name: "address", arg: 1, scope: !3046, file: !3047, line: 70, type: !1714)
!3052 = !DILocalVariable(name: "size", arg: 2, scope: !3046, file: !3047, line: 70, type: !846)
!3053 = !DILocation(line: 70, column: 54, scope: !3046)
!3054 = !DILocation(line: 70, column: 70, scope: !3046)
!3055 = !DILocation(line: 72, column: 1, scope: !3046)
!3056 = !DISubprogram(name: "futex_hash", scope: !1073, file: !1073, line: 126, type: !3057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!1967, !1976}
!3059 = distinct !DISubprogram(name: "wake_futex_pi", scope: !2, file: !2, line: 613, type: !3060, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3062)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!51, !627, !31, !1071}
!3062 = !{!3063, !3064, !3065, !3066, !3067, !3068, !3069, !3080, !3081, !3082, !3083, !3086, !3089}
!3063 = !DILocalVariable(name: "uaddr", arg: 1, scope: !3059, file: !2, line: 613, type: !627)
!3064 = !DILocalVariable(name: "uval", arg: 2, scope: !3059, file: !2, line: 613, type: !31)
!3065 = !DILocalVariable(name: "pi_state", arg: 3, scope: !3059, file: !2, line: 613, type: !1071)
!3066 = !DILocalVariable(name: "top_waiter", scope: !3059, file: !2, line: 615, type: !895)
!3067 = !DILocalVariable(name: "new_owner", scope: !3059, file: !2, line: 616, type: !19)
!3068 = !DILocalVariable(name: "postunlock", scope: !3059, file: !2, line: 617, type: !881)
!3069 = !DILocalVariable(name: "wqh", scope: !3059, file: !2, line: 618, type: !3070)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_wake_q_head", file: !897, line: 67, size: 192, elements: !3071)
!3071 = !{!3072, !3079}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3070, file: !897, line: 68, baseType: !3073, size: 128)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_head", file: !3074, line: 38, size: 128, elements: !3075)
!3074 = !DIFile(filename: "./include/linux/sched/wake_q.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d0534a004845bdc2d4b9ab1b4e9297e")
!3075 = !{!3076, !3077}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3073, file: !3074, line: 39, baseType: !891, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "lastp", scope: !3073, file: !3074, line: 40, baseType: !3078, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "rtlock_task", scope: !3070, file: !897, line: 69, baseType: !19, size: 64, offset: 128)
!3080 = !DILocalVariable(name: "curval", scope: !3059, file: !2, line: 619, type: !31)
!3081 = !DILocalVariable(name: "newval", scope: !3059, file: !2, line: 619, type: !31)
!3082 = !DILocalVariable(name: "ret", scope: !3059, file: !2, line: 620, type: !51)
!3083 = !DILocalVariable(name: "__ret_warn_on", scope: !3084, file: !2, line: 623, type: !51)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !2, line: 623, column: 6)
!3085 = distinct !DILexicalBlock(scope: !3059, file: !2, line: 623, column: 6)
!3086 = !DILocalVariable(name: "__flags", scope: !3087, file: !2, line: 623, type: !51)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !2, line: 623, column: 6)
!3088 = distinct !DILexicalBlock(scope: !3084, file: !2, line: 623, column: 6)
!3089 = !DILabel(scope: !3059, name: "out_unlock", file: !2, line: 674)
!3090 = !DILocation(line: 613, column: 38, scope: !3059)
!3091 = !DILocation(line: 613, column: 49, scope: !3059)
!3092 = !DILocation(line: 613, column: 78, scope: !3059)
!3093 = !DILocation(line: 615, column: 2, scope: !3059)
!3094 = !DILocation(line: 615, column: 26, scope: !3059)
!3095 = !DILocation(line: 616, column: 2, scope: !3059)
!3096 = !DILocation(line: 616, column: 22, scope: !3059)
!3097 = !DILocation(line: 617, column: 2, scope: !3059)
!3098 = !DILocation(line: 617, column: 7, scope: !3059)
!3099 = !DILocation(line: 618, column: 2, scope: !3059)
!3100 = !DILocation(line: 619, column: 2, scope: !3059)
!3101 = !DILocation(line: 619, column: 6, scope: !3059)
!3102 = !DILocation(line: 619, column: 14, scope: !3059)
!3103 = !DILocation(line: 620, column: 2, scope: !3059)
!3104 = !DILocation(line: 620, column: 6, scope: !3059)
!3105 = !DILocation(line: 622, column: 36, scope: !3059)
!3106 = !DILocation(line: 622, column: 46, scope: !3059)
!3107 = !DILocation(line: 622, column: 15, scope: !3059)
!3108 = !DILocation(line: 622, column: 13, scope: !3059)
!3109 = !DILocation(line: 623, column: 6, scope: !3084)
!3110 = !DILocation(line: 623, column: 6, scope: !3088)
!3111 = !DILocation(line: 623, column: 6, scope: !3087)
!3112 = !DILocation(line: 623, column: 6, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3087, file: !2, line: 623, column: 6)
!3114 = !DILocation(line: 623, column: 6, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3087, file: !2, line: 623, column: 6)
!3116 = !{i64 2152626424, i64 2152626453, i64 2152626499, i64 2152626557, i64 2152626611, i64 2152626665, i64 2152626720, i64 2152626751, i64 2152627059, i64 2152627065, i64 2152627112, i64 2152627135, i64 2152627161}
!3117 = !DILocation(line: 623, column: 6, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3087, file: !2, line: 623, column: 6)
!3119 = !DILocation(line: 623, column: 6, scope: !3085)
!3120 = !DILocation(line: 623, column: 6, scope: !3059)
!3121 = !DILocation(line: 632, column: 7, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3085, file: !2, line: 623, column: 33)
!3123 = !DILocation(line: 633, column: 3, scope: !3122)
!3124 = !DILocation(line: 636, column: 14, scope: !3059)
!3125 = !DILocation(line: 636, column: 26, scope: !3059)
!3126 = !DILocation(line: 636, column: 12, scope: !3059)
!3127 = !DILocation(line: 643, column: 40, scope: !3059)
!3128 = !DILocation(line: 643, column: 27, scope: !3059)
!3129 = !DILocation(line: 643, column: 25, scope: !3059)
!3130 = !DILocation(line: 643, column: 9, scope: !3059)
!3131 = !DILocation(line: 645, column: 6, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3059, file: !2, line: 645, column: 6)
!3133 = !DILocation(line: 645, column: 6, scope: !3059)
!3134 = !DILocation(line: 646, column: 7, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3132, file: !2, line: 645, column: 41)
!3136 = !DILocation(line: 647, column: 3, scope: !3135)
!3137 = !DILocation(line: 650, column: 44, scope: !3059)
!3138 = !DILocation(line: 650, column: 51, scope: !3059)
!3139 = !DILocation(line: 650, column: 57, scope: !3059)
!3140 = !DILocation(line: 650, column: 8, scope: !3059)
!3141 = !DILocation(line: 650, column: 6, scope: !3059)
!3142 = !DILocation(line: 651, column: 7, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3059, file: !2, line: 651, column: 6)
!3144 = !DILocation(line: 651, column: 11, scope: !3143)
!3145 = !DILocation(line: 651, column: 15, scope: !3143)
!3146 = !DILocation(line: 651, column: 25, scope: !3143)
!3147 = !DILocation(line: 651, column: 22, scope: !3143)
!3148 = !DILocation(line: 651, column: 6, scope: !3059)
!3149 = !DILocation(line: 658, column: 25, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !2, line: 658, column: 7)
!3151 = distinct !DILexicalBlock(scope: !3143, file: !2, line: 651, column: 32)
!3152 = !DILocation(line: 658, column: 23, scope: !3150)
!3153 = !DILocation(line: 658, column: 36, scope: !3150)
!3154 = !DILocation(line: 658, column: 33, scope: !3150)
!3155 = !DILocation(line: 658, column: 7, scope: !3151)
!3156 = !DILocation(line: 659, column: 8, scope: !3150)
!3157 = !DILocation(line: 659, column: 4, scope: !3150)
!3158 = !DILocation(line: 661, column: 8, scope: !3150)
!3159 = !DILocation(line: 662, column: 2, scope: !3151)
!3160 = !DILocation(line: 664, column: 7, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3059, file: !2, line: 664, column: 6)
!3162 = !DILocation(line: 664, column: 6, scope: !3059)
!3163 = !DILocation(line: 670, column: 25, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3161, file: !2, line: 664, column: 12)
!3165 = !DILocation(line: 670, column: 35, scope: !3164)
!3166 = !DILocation(line: 670, column: 3, scope: !3164)
!3167 = !DILocation(line: 671, column: 41, scope: !3164)
!3168 = !DILocation(line: 671, column: 51, scope: !3164)
!3169 = !DILocation(line: 671, column: 16, scope: !3164)
!3170 = !DILocation(line: 671, column: 14, scope: !3164)
!3171 = !DILocation(line: 672, column: 2, scope: !3164)
!3172 = !DILocation(line: 674, column: 1, scope: !3059)
!3173 = !DILocation(line: 675, column: 2, scope: !3059)
!3174 = !DILocation(line: 677, column: 6, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3059, file: !2, line: 677, column: 6)
!3176 = !{i8 0, i8 2}
!3177 = !DILocation(line: 677, column: 6, scope: !3059)
!3178 = !DILocation(line: 678, column: 3, scope: !3175)
!3179 = !DILocation(line: 680, column: 9, scope: !3059)
!3180 = !DILocation(line: 681, column: 1, scope: !3059)
!3181 = !DILocation(line: 680, column: 2, scope: !3059)
!3182 = !DISubprogram(name: "futex_cmpxchg_value_locked", scope: !1073, file: !1073, line: 150, type: !3183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!51, !627, !627, !31, !31}
!3185 = distinct !DISubprogram(name: "kmalloc", scope: !9, file: !9, line: 591, type: !1725, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3186)
!3186 = !{!3187, !3188, !3189}
!3187 = !DILocalVariable(name: "size", arg: 1, scope: !3185, file: !9, line: 591, type: !846)
!3188 = !DILocalVariable(name: "flags", arg: 2, scope: !3185, file: !9, line: 591, type: !1632)
!3189 = !DILocalVariable(name: "index", scope: !3190, file: !9, line: 594, type: !35)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !9, line: 593, column: 42)
!3191 = distinct !DILexicalBlock(scope: !3185, file: !9, line: 593, column: 6)
!3192 = !DILocation(line: 591, column: 61, scope: !3185)
!3193 = !DILocation(line: 591, column: 73, scope: !3185)
!3194 = !DILocation(line: 593, column: 27, scope: !3191)
!3195 = !DILocation(line: 593, column: 6, scope: !3191)
!3196 = !DILocation(line: 593, column: 33, scope: !3191)
!3197 = !DILocation(line: 593, column: 36, scope: !3191)
!3198 = !DILocation(line: 593, column: 6, scope: !3185)
!3199 = !DILocation(line: 594, column: 3, scope: !3190)
!3200 = !DILocation(line: 594, column: 16, scope: !3190)
!3201 = !DILocation(line: 596, column: 7, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3190, file: !9, line: 596, column: 7)
!3203 = !DILocation(line: 596, column: 12, scope: !3202)
!3204 = !DILocation(line: 596, column: 7, scope: !3190)
!3205 = !DILocation(line: 597, column: 25, scope: !3202)
!3206 = !DILocation(line: 597, column: 31, scope: !3202)
!3207 = !DILocation(line: 597, column: 11, scope: !3202)
!3208 = !DILocation(line: 597, column: 4, scope: !3202)
!3209 = !DILocation(line: 599, column: 11, scope: !3190)
!3210 = !DILocation(line: 599, column: 9, scope: !3190)
!3211 = !DILocation(line: 601, column: 33, scope: !3190)
!3212 = !DILocation(line: 601, column: 40, scope: !3190)
!3213 = !DILocation(line: 601, column: 20, scope: !3190)
!3214 = !DILocation(line: 601, column: 5, scope: !3190)
!3215 = !DILocation(line: 601, column: 51, scope: !3190)
!3216 = !DILocation(line: 602, column: 5, scope: !3190)
!3217 = !DILocation(line: 602, column: 12, scope: !3190)
!3218 = !DILocation(line: 600, column: 10, scope: !3190)
!3219 = !DILocation(line: 600, column: 3, scope: !3190)
!3220 = !DILocation(line: 603, column: 2, scope: !3191)
!3221 = !DILocation(line: 604, column: 19, scope: !3185)
!3222 = !DILocation(line: 604, column: 25, scope: !3185)
!3223 = !DILocation(line: 604, column: 9, scope: !3185)
!3224 = !DILocation(line: 604, column: 2, scope: !3185)
!3225 = !DILocation(line: 605, column: 1, scope: !3185)
!3226 = !DISubprogram(name: "kmalloc_large", scope: !9, file: !9, line: 531, type: !1725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3227 = distinct !DISubprogram(name: "__kmalloc_index", scope: !9, file: !9, line: 444, type: !3228, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3230)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!35, !846, !881}
!3230 = !{!3231, !3232}
!3231 = !DILocalVariable(name: "size", arg: 1, scope: !3227, file: !9, line: 444, type: !846)
!3232 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3227, file: !9, line: 445, type: !881)
!3233 = !DILocation(line: 444, column: 60, scope: !3227)
!3234 = !DILocation(line: 445, column: 16, scope: !3227)
!3235 = !DILocation(line: 447, column: 7, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 447, column: 6)
!3237 = !DILocation(line: 447, column: 6, scope: !3227)
!3238 = !DILocation(line: 448, column: 3, scope: !3236)
!3239 = !DILocation(line: 450, column: 6, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 450, column: 6)
!3241 = !DILocation(line: 450, column: 11, scope: !3240)
!3242 = !DILocation(line: 450, column: 6, scope: !3227)
!3243 = !DILocation(line: 451, column: 3, scope: !3240)
!3244 = !DILocation(line: 453, column: 32, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 453, column: 6)
!3246 = !DILocation(line: 453, column: 37, scope: !3245)
!3247 = !DILocation(line: 453, column: 42, scope: !3245)
!3248 = !DILocation(line: 453, column: 45, scope: !3245)
!3249 = !DILocation(line: 453, column: 50, scope: !3245)
!3250 = !DILocation(line: 453, column: 6, scope: !3227)
!3251 = !DILocation(line: 454, column: 3, scope: !3245)
!3252 = !DILocation(line: 455, column: 32, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 455, column: 6)
!3254 = !DILocation(line: 455, column: 37, scope: !3253)
!3255 = !DILocation(line: 455, column: 43, scope: !3253)
!3256 = !DILocation(line: 455, column: 46, scope: !3253)
!3257 = !DILocation(line: 455, column: 51, scope: !3253)
!3258 = !DILocation(line: 455, column: 6, scope: !3227)
!3259 = !DILocation(line: 456, column: 3, scope: !3253)
!3260 = !DILocation(line: 457, column: 6, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 457, column: 6)
!3262 = !DILocation(line: 457, column: 11, scope: !3261)
!3263 = !DILocation(line: 457, column: 6, scope: !3227)
!3264 = !DILocation(line: 457, column: 26, scope: !3261)
!3265 = !DILocation(line: 458, column: 6, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 458, column: 6)
!3267 = !DILocation(line: 458, column: 11, scope: !3266)
!3268 = !DILocation(line: 458, column: 6, scope: !3227)
!3269 = !DILocation(line: 458, column: 26, scope: !3266)
!3270 = !DILocation(line: 459, column: 6, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 459, column: 6)
!3272 = !DILocation(line: 459, column: 11, scope: !3271)
!3273 = !DILocation(line: 459, column: 6, scope: !3227)
!3274 = !DILocation(line: 459, column: 26, scope: !3271)
!3275 = !DILocation(line: 460, column: 6, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 460, column: 6)
!3277 = !DILocation(line: 460, column: 11, scope: !3276)
!3278 = !DILocation(line: 460, column: 6, scope: !3227)
!3279 = !DILocation(line: 460, column: 26, scope: !3276)
!3280 = !DILocation(line: 461, column: 6, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 461, column: 6)
!3282 = !DILocation(line: 461, column: 11, scope: !3281)
!3283 = !DILocation(line: 461, column: 6, scope: !3227)
!3284 = !DILocation(line: 461, column: 26, scope: !3281)
!3285 = !DILocation(line: 462, column: 6, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 462, column: 6)
!3287 = !DILocation(line: 462, column: 11, scope: !3286)
!3288 = !DILocation(line: 462, column: 6, scope: !3227)
!3289 = !DILocation(line: 462, column: 26, scope: !3286)
!3290 = !DILocation(line: 463, column: 6, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 463, column: 6)
!3292 = !DILocation(line: 463, column: 11, scope: !3291)
!3293 = !DILocation(line: 463, column: 6, scope: !3227)
!3294 = !DILocation(line: 463, column: 26, scope: !3291)
!3295 = !DILocation(line: 464, column: 6, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 464, column: 6)
!3297 = !DILocation(line: 464, column: 11, scope: !3296)
!3298 = !DILocation(line: 464, column: 6, scope: !3227)
!3299 = !DILocation(line: 464, column: 26, scope: !3296)
!3300 = !DILocation(line: 465, column: 6, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 465, column: 6)
!3302 = !DILocation(line: 465, column: 11, scope: !3301)
!3303 = !DILocation(line: 465, column: 6, scope: !3227)
!3304 = !DILocation(line: 465, column: 26, scope: !3301)
!3305 = !DILocation(line: 466, column: 6, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 466, column: 6)
!3307 = !DILocation(line: 466, column: 11, scope: !3306)
!3308 = !DILocation(line: 466, column: 6, scope: !3227)
!3309 = !DILocation(line: 466, column: 26, scope: !3306)
!3310 = !DILocation(line: 467, column: 6, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 467, column: 6)
!3312 = !DILocation(line: 467, column: 11, scope: !3311)
!3313 = !DILocation(line: 467, column: 6, scope: !3227)
!3314 = !DILocation(line: 467, column: 26, scope: !3311)
!3315 = !DILocation(line: 468, column: 6, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 468, column: 6)
!3317 = !DILocation(line: 468, column: 11, scope: !3316)
!3318 = !DILocation(line: 468, column: 6, scope: !3227)
!3319 = !DILocation(line: 468, column: 26, scope: !3316)
!3320 = !DILocation(line: 469, column: 6, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 469, column: 6)
!3322 = !DILocation(line: 469, column: 11, scope: !3321)
!3323 = !DILocation(line: 469, column: 6, scope: !3227)
!3324 = !DILocation(line: 469, column: 26, scope: !3321)
!3325 = !DILocation(line: 470, column: 6, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 470, column: 6)
!3327 = !DILocation(line: 470, column: 11, scope: !3326)
!3328 = !DILocation(line: 470, column: 6, scope: !3227)
!3329 = !DILocation(line: 470, column: 26, scope: !3326)
!3330 = !DILocation(line: 471, column: 6, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 471, column: 6)
!3332 = !DILocation(line: 471, column: 11, scope: !3331)
!3333 = !DILocation(line: 471, column: 6, scope: !3227)
!3334 = !DILocation(line: 471, column: 26, scope: !3331)
!3335 = !DILocation(line: 472, column: 6, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 472, column: 6)
!3337 = !DILocation(line: 472, column: 11, scope: !3336)
!3338 = !DILocation(line: 472, column: 6, scope: !3227)
!3339 = !DILocation(line: 472, column: 26, scope: !3336)
!3340 = !DILocation(line: 473, column: 6, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 473, column: 6)
!3342 = !DILocation(line: 473, column: 11, scope: !3341)
!3343 = !DILocation(line: 473, column: 6, scope: !3227)
!3344 = !DILocation(line: 473, column: 26, scope: !3341)
!3345 = !DILocation(line: 474, column: 6, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 474, column: 6)
!3347 = !DILocation(line: 474, column: 11, scope: !3346)
!3348 = !DILocation(line: 474, column: 6, scope: !3227)
!3349 = !DILocation(line: 474, column: 27, scope: !3346)
!3350 = !DILocation(line: 475, column: 6, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 475, column: 6)
!3352 = !DILocation(line: 475, column: 11, scope: !3351)
!3353 = !DILocation(line: 475, column: 6, scope: !3227)
!3354 = !DILocation(line: 475, column: 32, scope: !3351)
!3355 = !DILocation(line: 477, column: 50, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3227, file: !9, line: 477, column: 6)
!3357 = !DILocation(line: 477, column: 6, scope: !3227)
!3358 = !DILocation(line: 478, column: 3, scope: !3356)
!3359 = !DILocation(line: 478, column: 3, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !9, line: 478, column: 3)
!3361 = distinct !DILexicalBlock(scope: !3356, file: !9, line: 478, column: 3)
!3362 = !{i32 -2143530123}
!3363 = !DILocation(line: 478, column: 3, scope: !3361)
!3364 = !DILocation(line: 480, column: 3, scope: !3356)
!3365 = !DILocation(line: 480, column: 3, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3356, file: !9, line: 480, column: 3)
!3367 = !DILocation(line: 480, column: 3, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3366, file: !9, line: 480, column: 3)
!3369 = !DILocation(line: 480, column: 3, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3366, file: !9, line: 480, column: 3)
!3371 = !{i64 2151437376, i64 2151437405, i64 2151437451, i64 2151437509, i64 2151437563, i64 2151437617, i64 2151437672, i64 2151437703}
!3372 = !DILocation(line: 483, column: 2, scope: !3227)
!3373 = !DILocation(line: 484, column: 1, scope: !3227)
!3374 = !DISubprogram(name: "kmalloc_trace", scope: !9, file: !9, line: 525, type: !3375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!39, !3377, !1632, !846}
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1331, line: 11, flags: DIFlagFwdDecl)
!3379 = distinct !DISubprogram(name: "kmalloc_type", scope: !9, file: !9, line: 401, type: !3380, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!1603, !1632, !28}
!3382 = !{!3383, !3384}
!3383 = !DILocalVariable(name: "flags", arg: 1, scope: !3379, file: !9, line: 401, type: !1632)
!3384 = !DILocalVariable(name: "caller", arg: 2, scope: !3379, file: !9, line: 401, type: !28)
!3385 = !DILocation(line: 401, column: 67, scope: !3379)
!3386 = !DILocation(line: 401, column: 88, scope: !3379)
!3387 = !DILocation(line: 407, column: 6, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3379, file: !9, line: 407, column: 6)
!3389 = !DILocation(line: 407, column: 6, scope: !3379)
!3390 = !DILocation(line: 413, column: 3, scope: !3388)
!3391 = !DILocation(line: 423, column: 38, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3379, file: !9, line: 423, column: 6)
!3393 = !DILocation(line: 423, column: 44, scope: !3392)
!3394 = !DILocation(line: 423, column: 6, scope: !3379)
!3395 = !DILocation(line: 424, column: 3, scope: !3392)
!3396 = !DILocation(line: 426, column: 3, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3379, file: !9, line: 425, column: 6)
!3398 = !DILocation(line: 429, column: 1, scope: !3379)
!3399 = !DISubprogram(name: "__kmalloc", scope: !9, file: !9, line: 488, type: !1725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3400 = !DISubprogram(name: "__compiletime_assert_117", scope: !9, file: !9, line: 478, type: !3043, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3401 = distinct !DISubprogram(name: "atomic_set", scope: !3402, file: !3402, line: 65, type: !3403, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3406)
!3402 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!3403 = !DISubroutineType(types: !3404)
!3404 = !{null, !3405, !51}
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!3406 = !{!3407, !3408}
!3407 = !DILocalVariable(name: "v", arg: 1, scope: !3401, file: !3402, line: 65, type: !3405)
!3408 = !DILocalVariable(name: "i", arg: 2, scope: !3401, file: !3402, line: 65, type: !51)
!3409 = !DILocation(line: 65, column: 22, scope: !3401)
!3410 = !DILocation(line: 65, column: 29, scope: !3401)
!3411 = !DILocation(line: 67, column: 26, scope: !3401)
!3412 = !DILocation(line: 67, column: 2, scope: !3401)
!3413 = !DILocation(line: 68, column: 17, scope: !3401)
!3414 = !DILocation(line: 68, column: 20, scope: !3401)
!3415 = !DILocation(line: 68, column: 2, scope: !3401)
!3416 = !DILocation(line: 69, column: 1, scope: !3401)
!3417 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3418, file: !3418, line: 80, type: !3419, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3424)
!3418 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3419 = !DISubroutineType(types: !3420)
!3420 = !{null, !3421, !846}
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3423)
!3423 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3424 = !{!3425, !3426}
!3425 = !DILocalVariable(name: "v", arg: 1, scope: !3417, file: !3418, line: 80, type: !3421)
!3426 = !DILocalVariable(name: "size", arg: 2, scope: !3417, file: !3418, line: 80, type: !846)
!3427 = !DILocation(line: 80, column: 74, scope: !3417)
!3428 = !DILocation(line: 80, column: 84, scope: !3417)
!3429 = !DILocation(line: 82, column: 20, scope: !3417)
!3430 = !DILocation(line: 82, column: 23, scope: !3417)
!3431 = !DILocation(line: 82, column: 2, scope: !3417)
!3432 = !DILocation(line: 83, column: 2, scope: !3417)
!3433 = !DILocation(line: 84, column: 1, scope: !3417)
!3434 = distinct !DISubprogram(name: "raw_atomic_set", scope: !3435, file: !3435, line: 488, type: !3403, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3436)
!3435 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!3436 = !{!3437, !3438}
!3437 = !DILocalVariable(name: "v", arg: 1, scope: !3434, file: !3435, line: 488, type: !3405)
!3438 = !DILocalVariable(name: "i", arg: 2, scope: !3434, file: !3435, line: 488, type: !51)
!3439 = !DILocation(line: 488, column: 26, scope: !3434)
!3440 = !DILocation(line: 488, column: 33, scope: !3434)
!3441 = !DILocation(line: 490, column: 18, scope: !3434)
!3442 = !DILocation(line: 490, column: 21, scope: !3434)
!3443 = !DILocation(line: 490, column: 2, scope: !3434)
!3444 = !DILocation(line: 491, column: 1, scope: !3434)
!3445 = distinct !DISubprogram(name: "kasan_check_write", scope: !3446, file: !3446, line: 44, type: !3447, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3449)
!3446 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!881, !3421, !35}
!3449 = !{!3450, !3451}
!3450 = !DILocalVariable(name: "p", arg: 1, scope: !3445, file: !3446, line: 44, type: !3421)
!3451 = !DILocalVariable(name: "size", arg: 2, scope: !3445, file: !3446, line: 44, type: !35)
!3452 = !DILocation(line: 44, column: 59, scope: !3445)
!3453 = !DILocation(line: 44, column: 75, scope: !3445)
!3454 = !DILocation(line: 46, column: 2, scope: !3445)
!3455 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3456, file: !3456, line: 229, type: !3457, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3459)
!3456 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3457 = !DISubroutineType(types: !3458)
!3458 = !{null, !3421, !846, !51}
!3459 = !{!3460, !3461, !3462}
!3460 = !DILocalVariable(name: "ptr", arg: 1, scope: !3455, file: !3456, line: 229, type: !3421)
!3461 = !DILocalVariable(name: "size", arg: 2, scope: !3455, file: !3456, line: 229, type: !846)
!3462 = !DILocalVariable(name: "type", arg: 3, scope: !3455, file: !3456, line: 230, type: !51)
!3463 = !DILocation(line: 229, column: 60, scope: !3455)
!3464 = !DILocation(line: 229, column: 72, scope: !3455)
!3465 = !DILocation(line: 230, column: 15, scope: !3455)
!3466 = !DILocation(line: 230, column: 23, scope: !3455)
!3467 = distinct !DISubprogram(name: "arch_atomic_set", scope: !3468, file: !3468, line: 26, type: !3403, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3469)
!3468 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!3469 = !{!3470, !3471}
!3470 = !DILocalVariable(name: "v", arg: 1, scope: !3467, file: !3468, line: 26, type: !3405)
!3471 = !DILocalVariable(name: "i", arg: 2, scope: !3467, file: !3468, line: 26, type: !51)
!3472 = !DILocation(line: 26, column: 55, scope: !3467)
!3473 = !DILocation(line: 26, column: 62, scope: !3467)
!3474 = !DILocation(line: 28, column: 2, scope: !3467)
!3475 = !DILocation(line: 28, column: 2, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3467, file: !3468, line: 28, column: 2)
!3477 = !DILocation(line: 29, column: 1, scope: !3467)
!3478 = distinct !DISubprogram(name: "__refcount_inc_not_zero", scope: !42, file: !42, line: 225, type: !3479, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3481)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!881, !1762, !746}
!3481 = !{!3482, !3483}
!3482 = !DILocalVariable(name: "r", arg: 1, scope: !3478, file: !42, line: 225, type: !1762)
!3483 = !DILocalVariable(name: "oldp", arg: 2, scope: !3478, file: !42, line: 225, type: !746)
!3484 = !DILocation(line: 225, column: 69, scope: !3478)
!3485 = !DILocation(line: 225, column: 77, scope: !3478)
!3486 = !DILocation(line: 227, column: 36, scope: !3478)
!3487 = !DILocation(line: 227, column: 39, scope: !3478)
!3488 = !DILocation(line: 227, column: 9, scope: !3478)
!3489 = !DILocation(line: 227, column: 2, scope: !3478)
!3490 = distinct !DISubprogram(name: "__refcount_add_not_zero", scope: !42, file: !42, line: 150, type: !3491, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!881, !51, !1762, !746}
!3493 = !{!3494, !3495, !3496, !3497}
!3494 = !DILocalVariable(name: "i", arg: 1, scope: !3490, file: !42, line: 150, type: !51)
!3495 = !DILocalVariable(name: "r", arg: 2, scope: !3490, file: !42, line: 150, type: !1762)
!3496 = !DILocalVariable(name: "oldp", arg: 3, scope: !3490, file: !42, line: 150, type: !746)
!3497 = !DILocalVariable(name: "old", scope: !3490, file: !42, line: 152, type: !51)
!3498 = !DILocation(line: 150, column: 61, scope: !3490)
!3499 = !DILocation(line: 150, column: 76, scope: !3490)
!3500 = !DILocation(line: 150, column: 84, scope: !3490)
!3501 = !DILocation(line: 152, column: 2, scope: !3490)
!3502 = !DILocation(line: 152, column: 6, scope: !3490)
!3503 = !DILocation(line: 152, column: 26, scope: !3490)
!3504 = !DILocation(line: 152, column: 12, scope: !3490)
!3505 = !DILocation(line: 154, column: 2, scope: !3490)
!3506 = !DILocation(line: 155, column: 8, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !42, line: 155, column: 7)
!3508 = distinct !DILexicalBlock(scope: !3490, file: !42, line: 154, column: 5)
!3509 = !DILocation(line: 155, column: 7, scope: !3508)
!3510 = !DILocation(line: 156, column: 4, scope: !3507)
!3511 = !DILocation(line: 157, column: 2, scope: !3508)
!3512 = !DILocation(line: 157, column: 40, scope: !3490)
!3513 = !DILocation(line: 157, column: 43, scope: !3490)
!3514 = !DILocation(line: 157, column: 55, scope: !3490)
!3515 = !DILocation(line: 157, column: 61, scope: !3490)
!3516 = !DILocation(line: 157, column: 59, scope: !3490)
!3517 = !DILocation(line: 157, column: 12, scope: !3490)
!3518 = !DILocation(line: 157, column: 11, scope: !3490)
!3519 = distinct !{!3519, !3505, !3520, !3521, !3522}
!3520 = !DILocation(line: 157, column: 63, scope: !3490)
!3521 = !{!"llvm.loop.mustprogress"}
!3522 = !{!"llvm.loop.unroll.disable"}
!3523 = !DILocation(line: 159, column: 6, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3490, file: !42, line: 159, column: 6)
!3525 = !DILocation(line: 159, column: 6, scope: !3490)
!3526 = !DILocation(line: 160, column: 11, scope: !3524)
!3527 = !DILocation(line: 160, column: 4, scope: !3524)
!3528 = !DILocation(line: 160, column: 9, scope: !3524)
!3529 = !DILocation(line: 160, column: 3, scope: !3524)
!3530 = !DILocation(line: 162, column: 6, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3490, file: !42, line: 162, column: 6)
!3532 = !DILocation(line: 162, column: 6, scope: !3490)
!3533 = !DILocation(line: 163, column: 26, scope: !3531)
!3534 = !DILocation(line: 163, column: 3, scope: !3531)
!3535 = !DILocation(line: 165, column: 9, scope: !3490)
!3536 = !DILocation(line: 166, column: 1, scope: !3490)
!3537 = !DILocation(line: 165, column: 2, scope: !3490)
!3538 = distinct !DISubprogram(name: "refcount_read", scope: !42, file: !42, line: 145, type: !3539, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3543)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!35, !3541}
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!3543 = !{!3544}
!3544 = !DILocalVariable(name: "r", arg: 1, scope: !3538, file: !42, line: 145, type: !3541)
!3545 = !DILocation(line: 145, column: 60, scope: !3538)
!3546 = !DILocation(line: 147, column: 22, scope: !3538)
!3547 = !DILocation(line: 147, column: 25, scope: !3538)
!3548 = !DILocation(line: 147, column: 9, scope: !3538)
!3549 = !DILocation(line: 147, column: 2, scope: !3538)
!3550 = distinct !DISubprogram(name: "atomic_try_cmpxchg_relaxed", scope: !3402, file: !3402, line: 1335, type: !3551, scopeLine: 1336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3553)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!881, !3405, !746, !51}
!3553 = !{!3554, !3555, !3556}
!3554 = !DILocalVariable(name: "v", arg: 1, scope: !3550, file: !3402, line: 1335, type: !3405)
!3555 = !DILocalVariable(name: "old", arg: 2, scope: !3550, file: !3402, line: 1335, type: !746)
!3556 = !DILocalVariable(name: "new", arg: 3, scope: !3550, file: !3402, line: 1335, type: !51)
!3557 = !DILocation(line: 1335, column: 38, scope: !3550)
!3558 = !DILocation(line: 1335, column: 46, scope: !3550)
!3559 = !DILocation(line: 1335, column: 55, scope: !3550)
!3560 = !DILocation(line: 1337, column: 31, scope: !3550)
!3561 = !DILocation(line: 1337, column: 2, scope: !3550)
!3562 = !DILocation(line: 1338, column: 31, scope: !3550)
!3563 = !DILocation(line: 1338, column: 2, scope: !3550)
!3564 = !DILocation(line: 1339, column: 40, scope: !3550)
!3565 = !DILocation(line: 1339, column: 43, scope: !3550)
!3566 = !DILocation(line: 1339, column: 48, scope: !3550)
!3567 = !DILocation(line: 1339, column: 9, scope: !3550)
!3568 = !DILocation(line: 1339, column: 2, scope: !3550)
!3569 = !DISubprogram(name: "refcount_warn_saturate", scope: !42, file: !42, line: 127, type: !3570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{null, !1762, !1612}
!3572 = distinct !DISubprogram(name: "atomic_read", scope: !3402, file: !3402, line: 30, type: !3573, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3577)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!51, !3575}
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!3577 = !{!3578}
!3578 = !DILocalVariable(name: "v", arg: 1, scope: !3572, file: !3402, line: 30, type: !3575)
!3579 = !DILocation(line: 30, column: 29, scope: !3572)
!3580 = !DILocation(line: 32, column: 25, scope: !3572)
!3581 = !DILocation(line: 32, column: 2, scope: !3572)
!3582 = !DILocation(line: 33, column: 25, scope: !3572)
!3583 = !DILocation(line: 33, column: 9, scope: !3572)
!3584 = !DILocation(line: 33, column: 2, scope: !3572)
!3585 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3418, file: !3418, line: 66, type: !3419, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3586)
!3586 = !{!3587, !3588}
!3587 = !DILocalVariable(name: "v", arg: 1, scope: !3585, file: !3418, line: 66, type: !3421)
!3588 = !DILocalVariable(name: "size", arg: 2, scope: !3585, file: !3418, line: 66, type: !846)
!3589 = !DILocation(line: 66, column: 73, scope: !3585)
!3590 = !DILocation(line: 66, column: 83, scope: !3585)
!3591 = !DILocation(line: 68, column: 19, scope: !3585)
!3592 = !DILocation(line: 68, column: 22, scope: !3585)
!3593 = !DILocation(line: 68, column: 2, scope: !3585)
!3594 = !DILocation(line: 69, column: 2, scope: !3585)
!3595 = !DILocation(line: 70, column: 1, scope: !3585)
!3596 = distinct !DISubprogram(name: "raw_atomic_read", scope: !3435, file: !3435, line: 442, type: !3573, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3597)
!3597 = !{!3598}
!3598 = !DILocalVariable(name: "v", arg: 1, scope: !3596, file: !3435, line: 442, type: !3575)
!3599 = !DILocation(line: 442, column: 33, scope: !3596)
!3600 = !DILocation(line: 444, column: 26, scope: !3596)
!3601 = !DILocation(line: 444, column: 9, scope: !3596)
!3602 = !DILocation(line: 444, column: 2, scope: !3596)
!3603 = distinct !DISubprogram(name: "kasan_check_read", scope: !3446, file: !3446, line: 40, type: !3447, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3604)
!3604 = !{!3605, !3606}
!3605 = !DILocalVariable(name: "p", arg: 1, scope: !3603, file: !3446, line: 40, type: !3421)
!3606 = !DILocalVariable(name: "size", arg: 2, scope: !3603, file: !3446, line: 40, type: !35)
!3607 = !DILocation(line: 40, column: 58, scope: !3603)
!3608 = !DILocation(line: 40, column: 74, scope: !3603)
!3609 = !DILocation(line: 42, column: 2, scope: !3603)
!3610 = distinct !DISubprogram(name: "arch_atomic_read", scope: !3468, file: !3468, line: 17, type: !3573, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3611)
!3611 = !{!3612}
!3612 = !DILocalVariable(name: "v", arg: 1, scope: !3610, file: !3468, line: 17, type: !3575)
!3613 = !DILocation(line: 17, column: 61, scope: !3610)
!3614 = !DILocation(line: 23, column: 9, scope: !3610)
!3615 = !DILocation(line: 23, column: 2, scope: !3610)
!3616 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3418, file: !3418, line: 94, type: !3419, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3617)
!3617 = !{!3618, !3619}
!3618 = !DILocalVariable(name: "v", arg: 1, scope: !3616, file: !3418, line: 94, type: !3421)
!3619 = !DILocalVariable(name: "size", arg: 2, scope: !3616, file: !3418, line: 94, type: !846)
!3620 = !DILocation(line: 94, column: 79, scope: !3616)
!3621 = !DILocation(line: 94, column: 89, scope: !3616)
!3622 = !DILocation(line: 96, column: 20, scope: !3616)
!3623 = !DILocation(line: 96, column: 23, scope: !3616)
!3624 = !DILocation(line: 96, column: 2, scope: !3616)
!3625 = !DILocation(line: 97, column: 2, scope: !3616)
!3626 = !DILocation(line: 98, column: 1, scope: !3616)
!3627 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_relaxed", scope: !3435, file: !3435, line: 2207, type: !3551, scopeLine: 2208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3628)
!3628 = !{!3629, !3630, !3631}
!3629 = !DILocalVariable(name: "v", arg: 1, scope: !3627, file: !3435, line: 2207, type: !3405)
!3630 = !DILocalVariable(name: "old", arg: 2, scope: !3627, file: !3435, line: 2207, type: !746)
!3631 = !DILocalVariable(name: "new", arg: 3, scope: !3627, file: !3435, line: 2207, type: !51)
!3632 = !DILocation(line: 2207, column: 42, scope: !3627)
!3633 = !DILocation(line: 2207, column: 50, scope: !3627)
!3634 = !DILocation(line: 2207, column: 59, scope: !3627)
!3635 = !DILocation(line: 2212, column: 33, scope: !3627)
!3636 = !DILocation(line: 2212, column: 36, scope: !3627)
!3637 = !DILocation(line: 2212, column: 41, scope: !3627)
!3638 = !DILocation(line: 2212, column: 9, scope: !3627)
!3639 = !DILocation(line: 2212, column: 2, scope: !3627)
!3640 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !3468, file: !3468, line: 113, type: !3551, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3641)
!3641 = !{!3642, !3643, !3644, !3645, !3647, !3648, !3649, !3650}
!3642 = !DILocalVariable(name: "v", arg: 1, scope: !3640, file: !3468, line: 113, type: !3405)
!3643 = !DILocalVariable(name: "old", arg: 2, scope: !3640, file: !3468, line: 113, type: !746)
!3644 = !DILocalVariable(name: "new", arg: 3, scope: !3640, file: !3468, line: 113, type: !51)
!3645 = !DILocalVariable(name: "success", scope: !3646, file: !3468, line: 115, type: !881)
!3646 = distinct !DILexicalBlock(scope: !3640, file: !3468, line: 115, column: 9)
!3647 = !DILocalVariable(name: "_old", scope: !3646, file: !3468, line: 115, type: !746)
!3648 = !DILocalVariable(name: "__old", scope: !3646, file: !3468, line: 115, type: !51)
!3649 = !DILocalVariable(name: "__new", scope: !3646, file: !3468, line: 115, type: !51)
!3650 = !DILocalVariable(name: "__ptr", scope: !3646, file: !3468, line: 115, type: !1640)
!3651 = !DILocation(line: 113, column: 63, scope: !3640)
!3652 = !DILocation(line: 113, column: 71, scope: !3640)
!3653 = !DILocation(line: 113, column: 80, scope: !3640)
!3654 = !DILocation(line: 115, column: 9, scope: !3646)
!3655 = !{i64 2148969388, i64 2148969427, i64 2148969448, i64 2148969485, i64 2148969508, i64 2148969517, i64 2148969815}
!3656 = !DILocation(line: 115, column: 9, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3646, file: !3468, line: 115, column: 9)
!3658 = !DILocation(line: 115, column: 9, scope: !3640)
!3659 = !DILocation(line: 115, column: 2, scope: !3640)
!3660 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !42, file: !42, line: 313, type: !3479, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3661)
!3661 = !{!3662, !3663}
!3662 = !DILocalVariable(name: "r", arg: 1, scope: !3660, file: !42, line: 313, type: !1762)
!3663 = !DILocalVariable(name: "oldp", arg: 2, scope: !3660, file: !42, line: 313, type: !746)
!3664 = !DILocation(line: 313, column: 69, scope: !3660)
!3665 = !DILocation(line: 313, column: 77, scope: !3660)
!3666 = !DILocation(line: 315, column: 36, scope: !3660)
!3667 = !DILocation(line: 315, column: 39, scope: !3660)
!3668 = !DILocation(line: 315, column: 9, scope: !3660)
!3669 = !DILocation(line: 315, column: 2, scope: !3660)
!3670 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !42, file: !42, line: 270, type: !3491, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3671)
!3671 = !{!3672, !3673, !3674, !3675}
!3672 = !DILocalVariable(name: "i", arg: 1, scope: !3670, file: !42, line: 270, type: !51)
!3673 = !DILocalVariable(name: "r", arg: 2, scope: !3670, file: !42, line: 270, type: !1762)
!3674 = !DILocalVariable(name: "oldp", arg: 3, scope: !3670, file: !42, line: 270, type: !746)
!3675 = !DILocalVariable(name: "old", scope: !3670, file: !42, line: 272, type: !51)
!3676 = !DILocation(line: 270, column: 61, scope: !3670)
!3677 = !DILocation(line: 270, column: 76, scope: !3670)
!3678 = !DILocation(line: 270, column: 84, scope: !3670)
!3679 = !DILocation(line: 272, column: 2, scope: !3670)
!3680 = !DILocation(line: 272, column: 6, scope: !3670)
!3681 = !DILocation(line: 272, column: 37, scope: !3670)
!3682 = !DILocation(line: 272, column: 41, scope: !3670)
!3683 = !DILocation(line: 272, column: 44, scope: !3670)
!3684 = !DILocation(line: 272, column: 12, scope: !3670)
!3685 = !DILocation(line: 274, column: 6, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3670, file: !42, line: 274, column: 6)
!3687 = !DILocation(line: 274, column: 6, scope: !3670)
!3688 = !DILocation(line: 275, column: 11, scope: !3686)
!3689 = !DILocation(line: 275, column: 4, scope: !3686)
!3690 = !DILocation(line: 275, column: 9, scope: !3686)
!3691 = !DILocation(line: 275, column: 3, scope: !3686)
!3692 = !DILocation(line: 277, column: 6, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3670, file: !42, line: 277, column: 6)
!3694 = !DILocation(line: 277, column: 13, scope: !3693)
!3695 = !DILocation(line: 277, column: 10, scope: !3693)
!3696 = !DILocation(line: 277, column: 6, scope: !3670)
!3697 = !DILocation(line: 278, column: 3, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3693, file: !42, line: 277, column: 16)
!3699 = !DILocation(line: 278, column: 3, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3698, file: !42, line: 278, column: 3)
!3701 = !DILocation(line: 278, column: 3, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3700, file: !42, line: 278, column: 3)
!3703 = !DILocation(line: 278, column: 3, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3700, file: !42, line: 278, column: 3)
!3705 = !DILocation(line: 278, column: 3, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3704, file: !42, line: 278, column: 3)
!3707 = !{i64 2150254194}
!3708 = !DILocation(line: 279, column: 3, scope: !3698)
!3709 = !DILocation(line: 282, column: 6, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3670, file: !42, line: 282, column: 6)
!3711 = !DILocation(line: 282, column: 6, scope: !3670)
!3712 = !DILocation(line: 283, column: 26, scope: !3710)
!3713 = !DILocation(line: 283, column: 3, scope: !3710)
!3714 = !DILocation(line: 285, column: 2, scope: !3670)
!3715 = !DILocation(line: 286, column: 1, scope: !3670)
!3716 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !3402, file: !3402, line: 397, type: !3717, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3719)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!51, !51, !3405}
!3719 = !{!3720, !3721}
!3720 = !DILocalVariable(name: "i", arg: 1, scope: !3716, file: !3402, line: 397, type: !51)
!3721 = !DILocalVariable(name: "v", arg: 2, scope: !3716, file: !3402, line: 397, type: !3405)
!3722 = !DILocation(line: 397, column: 30, scope: !3716)
!3723 = !DILocation(line: 397, column: 43, scope: !3716)
!3724 = !DILocation(line: 399, column: 2, scope: !3716)
!3725 = !DILocation(line: 399, column: 2, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3716, file: !3402, line: 399, column: 2)
!3727 = !DILocation(line: 400, column: 31, scope: !3716)
!3728 = !DILocation(line: 400, column: 2, scope: !3716)
!3729 = !DILocation(line: 401, column: 38, scope: !3716)
!3730 = !DILocation(line: 401, column: 41, scope: !3716)
!3731 = !DILocation(line: 401, column: 9, scope: !3716)
!3732 = !DILocation(line: 401, column: 2, scope: !3716)
!3733 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !3435, file: !3435, line: 928, type: !3717, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3734)
!3734 = !{!3735, !3736}
!3735 = !DILocalVariable(name: "i", arg: 1, scope: !3733, file: !3435, line: 928, type: !51)
!3736 = !DILocalVariable(name: "v", arg: 2, scope: !3733, file: !3435, line: 928, type: !3405)
!3737 = !DILocation(line: 928, column: 34, scope: !3733)
!3738 = !DILocation(line: 928, column: 47, scope: !3733)
!3739 = !DILocation(line: 936, column: 31, scope: !3733)
!3740 = !DILocation(line: 936, column: 34, scope: !3733)
!3741 = !DILocation(line: 936, column: 9, scope: !3733)
!3742 = !DILocation(line: 936, column: 2, scope: !3733)
!3743 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !3468, file: !3468, line: 101, type: !3717, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3744)
!3744 = !{!3745, !3746, !3747}
!3745 = !DILocalVariable(name: "i", arg: 1, scope: !3743, file: !3468, line: 101, type: !51)
!3746 = !DILocalVariable(name: "v", arg: 2, scope: !3743, file: !3468, line: 101, type: !3405)
!3747 = !DILocalVariable(name: "__ret", scope: !3748, file: !3468, line: 103, type: !51)
!3748 = distinct !DILexicalBlock(scope: !3743, file: !3468, line: 103, column: 9)
!3749 = !DILocation(line: 101, column: 54, scope: !3743)
!3750 = !DILocation(line: 101, column: 67, scope: !3743)
!3751 = !DILocation(line: 103, column: 9, scope: !3748)
!3752 = !{i64 2148963681, i64 2148963720, i64 2148963741, i64 2148963778, i64 2148963801, i64 2148963810}
!3753 = !DILocation(line: 103, column: 9, scope: !3743)
!3754 = !DILocation(line: 103, column: 2, scope: !3743)
!3755 = !DISubprogram(name: "_raw_spin_lock", scope: !1876, file: !1876, line: 22, type: !2285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3756 = distinct !DISubprogram(name: "list_empty", scope: !1738, file: !1738, line: 371, type: !3757, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3761)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!51, !3759}
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!3761 = !{!3762}
!3762 = !DILocalVariable(name: "head", arg: 1, scope: !3756, file: !1738, line: 371, type: !3759)
!3763 = !DILocation(line: 371, column: 54, scope: !3756)
!3764 = !DILocation(line: 373, column: 9, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3756, file: !1738, line: 373, column: 9)
!3766 = !DILocation(line: 373, column: 9, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3765, file: !1738, line: 373, column: 9)
!3768 = !DILocation(line: 373, column: 34, scope: !3756)
!3769 = !DILocation(line: 373, column: 31, scope: !3756)
!3770 = !DILocation(line: 373, column: 2, scope: !3756)
!3771 = distinct !DISubprogram(name: "list_del_init", scope: !1738, file: !1738, line: 285, type: !1739, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3772)
!3772 = !{!3773}
!3773 = !DILocalVariable(name: "entry", arg: 1, scope: !3771, file: !1738, line: 285, type: !110)
!3774 = !DILocation(line: 285, column: 52, scope: !3771)
!3775 = !DILocation(line: 287, column: 19, scope: !3771)
!3776 = !DILocation(line: 287, column: 2, scope: !3771)
!3777 = !DILocation(line: 288, column: 17, scope: !3771)
!3778 = !DILocation(line: 288, column: 2, scope: !3771)
!3779 = !DILocation(line: 289, column: 1, scope: !3771)
!3780 = !DISubprogram(name: "_raw_spin_unlock", scope: !1876, file: !1876, line: 39, type: !2285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3781 = distinct !DISubprogram(name: "list_add", scope: !1738, file: !1738, line: 167, type: !3782, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3784)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !110, !110}
!3784 = !{!3785, !3786}
!3785 = !DILocalVariable(name: "new", arg: 1, scope: !3781, file: !1738, line: 167, type: !110)
!3786 = !DILocalVariable(name: "head", arg: 2, scope: !3781, file: !1738, line: 167, type: !110)
!3787 = !DILocation(line: 167, column: 47, scope: !3781)
!3788 = !DILocation(line: 167, column: 70, scope: !3781)
!3789 = !DILocation(line: 169, column: 13, scope: !3781)
!3790 = !DILocation(line: 169, column: 18, scope: !3781)
!3791 = !DILocation(line: 169, column: 24, scope: !3781)
!3792 = !DILocation(line: 169, column: 30, scope: !3781)
!3793 = !DILocation(line: 169, column: 2, scope: !3781)
!3794 = !DILocation(line: 170, column: 1, scope: !3781)
!3795 = distinct !DISubprogram(name: "__list_del_entry", scope: !1738, file: !1738, line: 213, type: !1739, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3796)
!3796 = !{!3797}
!3797 = !DILocalVariable(name: "entry", arg: 1, scope: !3795, file: !1738, line: 213, type: !110)
!3798 = !DILocation(line: 213, column: 55, scope: !3795)
!3799 = !DILocation(line: 215, column: 30, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3795, file: !1738, line: 215, column: 6)
!3801 = !DILocation(line: 215, column: 7, scope: !3800)
!3802 = !DILocation(line: 215, column: 6, scope: !3795)
!3803 = !DILocation(line: 216, column: 3, scope: !3800)
!3804 = !DILocation(line: 218, column: 13, scope: !3795)
!3805 = !DILocation(line: 218, column: 20, scope: !3795)
!3806 = !DILocation(line: 218, column: 26, scope: !3795)
!3807 = !DILocation(line: 218, column: 33, scope: !3795)
!3808 = !DILocation(line: 218, column: 2, scope: !3795)
!3809 = !DILocation(line: 219, column: 1, scope: !3795)
!3810 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !1738, file: !1738, line: 134, type: !3811, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3813)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!881, !110}
!3813 = !{!3814}
!3814 = !DILocalVariable(name: "entry", arg: 1, scope: !3810, file: !1738, line: 134, type: !110)
!3815 = !DILocation(line: 134, column: 61, scope: !3810)
!3816 = !DILocation(line: 136, column: 2, scope: !3810)
!3817 = distinct !DISubprogram(name: "__list_del", scope: !1738, file: !1738, line: 193, type: !3782, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3818)
!3818 = !{!3819, !3820}
!3819 = !DILocalVariable(name: "prev", arg: 1, scope: !3817, file: !1738, line: 193, type: !110)
!3820 = !DILocalVariable(name: "next", arg: 2, scope: !3817, file: !1738, line: 193, type: !110)
!3821 = !DILocation(line: 193, column: 50, scope: !3817)
!3822 = !DILocation(line: 193, column: 75, scope: !3817)
!3823 = !DILocation(line: 195, column: 15, scope: !3817)
!3824 = !DILocation(line: 195, column: 2, scope: !3817)
!3825 = !DILocation(line: 195, column: 8, scope: !3817)
!3826 = !DILocation(line: 195, column: 13, scope: !3817)
!3827 = !DILocation(line: 196, column: 2, scope: !3817)
!3828 = !DILocation(line: 196, column: 2, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3817, file: !1738, line: 196, column: 2)
!3830 = !DILocation(line: 196, column: 2, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3829, file: !1738, line: 196, column: 2)
!3832 = !DILocation(line: 196, column: 2, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3829, file: !1738, line: 196, column: 2)
!3834 = !DILocation(line: 197, column: 1, scope: !3817)
!3835 = distinct !DISubprogram(name: "__list_add", scope: !1738, file: !1738, line: 146, type: !3836, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3838)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{null, !110, !110, !110}
!3838 = !{!3839, !3840, !3841}
!3839 = !DILocalVariable(name: "new", arg: 1, scope: !3835, file: !1738, line: 146, type: !110)
!3840 = !DILocalVariable(name: "prev", arg: 2, scope: !3835, file: !1738, line: 147, type: !110)
!3841 = !DILocalVariable(name: "next", arg: 3, scope: !3835, file: !1738, line: 148, type: !110)
!3842 = !DILocation(line: 146, column: 49, scope: !3835)
!3843 = !DILocation(line: 147, column: 28, scope: !3835)
!3844 = !DILocation(line: 148, column: 28, scope: !3835)
!3845 = !DILocation(line: 150, column: 24, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3835, file: !1738, line: 150, column: 6)
!3847 = !DILocation(line: 150, column: 29, scope: !3846)
!3848 = !DILocation(line: 150, column: 35, scope: !3846)
!3849 = !DILocation(line: 150, column: 7, scope: !3846)
!3850 = !DILocation(line: 150, column: 6, scope: !3835)
!3851 = !DILocation(line: 151, column: 3, scope: !3846)
!3852 = !DILocation(line: 153, column: 15, scope: !3835)
!3853 = !DILocation(line: 153, column: 2, scope: !3835)
!3854 = !DILocation(line: 153, column: 8, scope: !3835)
!3855 = !DILocation(line: 153, column: 13, scope: !3835)
!3856 = !DILocation(line: 154, column: 14, scope: !3835)
!3857 = !DILocation(line: 154, column: 2, scope: !3835)
!3858 = !DILocation(line: 154, column: 7, scope: !3835)
!3859 = !DILocation(line: 154, column: 12, scope: !3835)
!3860 = !DILocation(line: 155, column: 14, scope: !3835)
!3861 = !DILocation(line: 155, column: 2, scope: !3835)
!3862 = !DILocation(line: 155, column: 7, scope: !3835)
!3863 = !DILocation(line: 155, column: 12, scope: !3835)
!3864 = !DILocation(line: 156, column: 2, scope: !3835)
!3865 = !DILocation(line: 156, column: 2, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3835, file: !1738, line: 156, column: 2)
!3867 = !DILocation(line: 156, column: 2, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3866, file: !1738, line: 156, column: 2)
!3869 = !DILocation(line: 156, column: 2, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3866, file: !1738, line: 156, column: 2)
!3871 = !DILocation(line: 157, column: 1, scope: !3835)
!3872 = distinct !DISubprogram(name: "__list_add_valid", scope: !1738, file: !1738, line: 128, type: !3873, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!881, !110, !110, !110}
!3875 = !{!3876, !3877, !3878}
!3876 = !DILocalVariable(name: "new", arg: 1, scope: !3872, file: !1738, line: 128, type: !110)
!3877 = !DILocalVariable(name: "prev", arg: 2, scope: !3872, file: !1738, line: 129, type: !110)
!3878 = !DILocalVariable(name: "next", arg: 3, scope: !3872, file: !1738, line: 130, type: !110)
!3879 = !DILocation(line: 128, column: 55, scope: !3872)
!3880 = !DILocation(line: 129, column: 23, scope: !3872)
!3881 = !DILocation(line: 130, column: 23, scope: !3872)
!3882 = !DILocation(line: 132, column: 2, scope: !3872)
!3883 = !DISubprogram(name: "__task_pid_nr_ns", scope: !21, file: !21, line: 1578, type: !3884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!674, !19, !1619, !727}
!3886 = distinct !DISubprogram(name: "alloc_pi_state", scope: !2, file: !2, line: 35, type: !3887, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3889)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!1071}
!3889 = !{!3890, !3891, !3893}
!3890 = !DILocalVariable(name: "pi_state", scope: !3886, file: !2, line: 37, type: !1071)
!3891 = !DILocalVariable(name: "__ret_warn_on", scope: !3892, file: !2, line: 39, type: !51)
!3892 = distinct !DILexicalBlock(scope: !3886, file: !2, line: 39, column: 2)
!3893 = !DILocalVariable(name: "__flags", scope: !3894, file: !2, line: 39, type: !51)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !2, line: 39, column: 2)
!3895 = distinct !DILexicalBlock(scope: !3892, file: !2, line: 39, column: 2)
!3896 = !DILocation(line: 37, column: 2, scope: !3886)
!3897 = !DILocation(line: 37, column: 25, scope: !3886)
!3898 = !DILocation(line: 37, column: 36, scope: !3886)
!3899 = !DILocation(line: 37, column: 45, scope: !3886)
!3900 = !DILocation(line: 39, column: 2, scope: !3892)
!3901 = !DILocation(line: 39, column: 2, scope: !3895)
!3902 = !DILocation(line: 39, column: 2, scope: !3894)
!3903 = !DILocation(line: 39, column: 2, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3894, file: !2, line: 39, column: 2)
!3905 = !DILocation(line: 39, column: 2, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3894, file: !2, line: 39, column: 2)
!3907 = !{i64 2152615265, i64 2152615294, i64 2152615340, i64 2152615398, i64 2152615452, i64 2152615506, i64 2152615561, i64 2152615592, i64 2152615900, i64 2152615906, i64 2152615953, i64 2152615976, i64 2152616002}
!3908 = !DILocation(line: 39, column: 2, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3894, file: !2, line: 39, column: 2)
!3910 = !DILocation(line: 39, column: 2, scope: !3886)
!3911 = !DILocation(line: 40, column: 2, scope: !3886)
!3912 = !DILocation(line: 40, column: 11, scope: !3886)
!3913 = !DILocation(line: 40, column: 26, scope: !3886)
!3914 = !DILocation(line: 42, column: 9, scope: !3886)
!3915 = !DILocation(line: 43, column: 1, scope: !3886)
!3916 = !DILocation(line: 42, column: 2, scope: !3886)
!3917 = !DISubprogram(name: "rt_mutex_init_proxy_locked", scope: !897, file: !897, line: 81, type: !3918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{null, !908, !19}
!3920 = !DISubprogram(name: "find_get_task_by_vpid", scope: !21, file: !21, line: 1995, type: !3921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!19, !674}
!3923 = distinct !DISubprogram(name: "handle_exit_race", scope: !2, file: !2, line: 320, type: !3924, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3926)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!51, !627, !31, !19}
!3926 = !{!3927, !3928, !3929, !3930}
!3927 = !DILocalVariable(name: "uaddr", arg: 1, scope: !3923, file: !2, line: 320, type: !627)
!3928 = !DILocalVariable(name: "uval", arg: 2, scope: !3923, file: !2, line: 320, type: !31)
!3929 = !DILocalVariable(name: "tsk", arg: 3, scope: !3923, file: !2, line: 321, type: !19)
!3930 = !DILocalVariable(name: "uval2", scope: !3923, file: !2, line: 323, type: !31)
!3931 = !DILocation(line: 320, column: 41, scope: !3923)
!3932 = !DILocation(line: 320, column: 52, scope: !3923)
!3933 = !DILocation(line: 321, column: 28, scope: !3923)
!3934 = !DILocation(line: 323, column: 2, scope: !3923)
!3935 = !DILocation(line: 323, column: 6, scope: !3923)
!3936 = !DILocation(line: 329, column: 6, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3923, file: !2, line: 329, column: 6)
!3938 = !DILocation(line: 329, column: 10, scope: !3937)
!3939 = !DILocation(line: 329, column: 13, scope: !3937)
!3940 = !DILocation(line: 329, column: 18, scope: !3937)
!3941 = !DILocation(line: 329, column: 30, scope: !3937)
!3942 = !DILocation(line: 329, column: 6, scope: !3923)
!3943 = !DILocation(line: 330, column: 3, scope: !3937)
!3944 = !DILocation(line: 361, column: 37, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3923, file: !2, line: 361, column: 6)
!3946 = !DILocation(line: 361, column: 6, scope: !3945)
!3947 = !DILocation(line: 361, column: 6, scope: !3923)
!3948 = !DILocation(line: 362, column: 3, scope: !3945)
!3949 = !DILocation(line: 365, column: 6, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3923, file: !2, line: 365, column: 6)
!3951 = !DILocation(line: 365, column: 15, scope: !3950)
!3952 = !DILocation(line: 365, column: 12, scope: !3950)
!3953 = !DILocation(line: 365, column: 6, scope: !3923)
!3954 = !DILocation(line: 366, column: 3, scope: !3950)
!3955 = !DILocation(line: 373, column: 2, scope: !3923)
!3956 = !DILocation(line: 374, column: 1, scope: !3923)
!3957 = !DILocation(line: 124, column: 56, scope: !15)
!3958 = !DILocation(line: 126, column: 30, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !15, file: !16, line: 126, column: 6)
!3960 = !DILocation(line: 126, column: 33, scope: !3959)
!3961 = !DILocation(line: 126, column: 7, scope: !3959)
!3962 = !DILocation(line: 126, column: 6, scope: !15)
!3963 = !DILocation(line: 127, column: 3, scope: !3959)
!3964 = !DILocation(line: 136, column: 3, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3966, file: !16, line: 133, column: 55)
!3966 = distinct !DILexicalBlock(scope: !15, file: !16, line: 133, column: 6)
!3967 = !DILocation(line: 136, column: 3, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3965, file: !16, line: 136, column: 3)
!3969 = !DILocation(line: 137, column: 21, scope: !3965)
!3970 = !DILocation(line: 137, column: 3, scope: !3965)
!3971 = !DILocation(line: 138, column: 3, scope: !3965)
!3972 = !DILocation(line: 138, column: 3, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3965, file: !16, line: 138, column: 3)
!3974 = !DILocation(line: 139, column: 3, scope: !3965)
!3975 = !DILocation(line: 163, column: 1, scope: !15)
!3976 = !DISubprogram(name: "__put_task_struct", scope: !16, file: !16, line: 121, type: !17, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3977 = distinct !DISubprogram(name: "__fixup_pi_state_owner", scope: !2, file: !2, line: 683, type: !2481, scopeLine: 685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !3978)
!3978 = !{!3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3995, !3998, !3999, !4002}
!3979 = !DILocalVariable(name: "uaddr", arg: 1, scope: !3977, file: !2, line: 683, type: !627)
!3980 = !DILocalVariable(name: "q", arg: 2, scope: !3977, file: !2, line: 683, type: !1990)
!3981 = !DILocalVariable(name: "argowner", arg: 3, scope: !3977, file: !2, line: 684, type: !19)
!3982 = !DILocalVariable(name: "pi_state", scope: !3977, file: !2, line: 686, type: !1071)
!3983 = !DILocalVariable(name: "oldowner", scope: !3977, file: !2, line: 687, type: !19)
!3984 = !DILocalVariable(name: "newowner", scope: !3977, file: !2, line: 687, type: !19)
!3985 = !DILocalVariable(name: "uval", scope: !3977, file: !2, line: 688, type: !31)
!3986 = !DILocalVariable(name: "curval", scope: !3977, file: !2, line: 688, type: !31)
!3987 = !DILocalVariable(name: "newval", scope: !3977, file: !2, line: 688, type: !31)
!3988 = !DILocalVariable(name: "newtid", scope: !3977, file: !2, line: 688, type: !31)
!3989 = !DILocalVariable(name: "err", scope: !3977, file: !2, line: 689, type: !51)
!3990 = !DILabel(scope: !3977, name: "retry", file: !2, line: 716)
!3991 = !DILocalVariable(name: "__ret_warn_on", scope: !3992, file: !2, line: 749, type: !51)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !2, line: 749, column: 3)
!3993 = distinct !DILexicalBlock(scope: !3994, file: !2, line: 748, column: 9)
!3994 = distinct !DILexicalBlock(scope: !3977, file: !2, line: 717, column: 6)
!3995 = !DILocalVariable(name: "__flags", scope: !3996, file: !2, line: 749, type: !51)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !2, line: 749, column: 3)
!3997 = distinct !DILexicalBlock(scope: !3992, file: !2, line: 749, column: 3)
!3998 = !DILabel(scope: !3977, name: "handle_err", file: !2, line: 802)
!3999 = !DILocalVariable(name: "__ret_warn_on", scope: !4000, file: !2, line: 817, type: !51)
!4000 = distinct !DILexicalBlock(scope: !4001, file: !2, line: 817, column: 3)
!4001 = distinct !DILexicalBlock(scope: !3977, file: !2, line: 806, column: 15)
!4002 = !DILocalVariable(name: "__flags", scope: !4003, file: !2, line: 817, type: !51)
!4003 = distinct !DILexicalBlock(scope: !4004, file: !2, line: 817, column: 3)
!4004 = distinct !DILexicalBlock(scope: !4000, file: !2, line: 817, column: 3)
!4005 = !DILocation(line: 683, column: 47, scope: !3977)
!4006 = !DILocation(line: 683, column: 70, scope: !3977)
!4007 = !DILocation(line: 684, column: 27, scope: !3977)
!4008 = !DILocation(line: 686, column: 2, scope: !3977)
!4009 = !DILocation(line: 686, column: 25, scope: !3977)
!4010 = !DILocation(line: 686, column: 36, scope: !3977)
!4011 = !DILocation(line: 686, column: 39, scope: !3977)
!4012 = !DILocation(line: 687, column: 2, scope: !3977)
!4013 = !DILocation(line: 687, column: 22, scope: !3977)
!4014 = !DILocation(line: 687, column: 33, scope: !3977)
!4015 = !DILocation(line: 688, column: 2, scope: !3977)
!4016 = !DILocation(line: 688, column: 6, scope: !3977)
!4017 = !DILocation(line: 688, column: 12, scope: !3977)
!4018 = !DILocation(line: 688, column: 20, scope: !3977)
!4019 = !DILocation(line: 688, column: 28, scope: !3977)
!4020 = !DILocation(line: 689, column: 2, scope: !3977)
!4021 = !DILocation(line: 689, column: 6, scope: !3977)
!4022 = !DILocation(line: 691, column: 13, scope: !3977)
!4023 = !DILocation(line: 691, column: 23, scope: !3977)
!4024 = !DILocation(line: 691, column: 11, scope: !3977)
!4025 = !DILocation(line: 691, column: 2, scope: !3977)
!4026 = !DILocation(line: 716, column: 1, scope: !3977)
!4027 = !DILocation(line: 717, column: 7, scope: !3994)
!4028 = !DILocation(line: 717, column: 6, scope: !3977)
!4029 = !DILocation(line: 718, column: 7, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4031, file: !2, line: 718, column: 7)
!4031 = distinct !DILexicalBlock(scope: !3994, file: !2, line: 717, column: 17)
!4032 = !DILocation(line: 718, column: 19, scope: !4030)
!4033 = !DILocation(line: 718, column: 16, scope: !4030)
!4034 = !DILocation(line: 718, column: 7, scope: !4031)
!4035 = !DILocation(line: 723, column: 4, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4030, file: !2, line: 718, column: 28)
!4037 = !DILocation(line: 726, column: 33, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4031, file: !2, line: 726, column: 7)
!4039 = !DILocation(line: 726, column: 43, scope: !4038)
!4040 = !DILocation(line: 726, column: 7, scope: !4038)
!4041 = !DILocation(line: 726, column: 7, scope: !4031)
!4042 = !DILocation(line: 728, column: 4, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4038, file: !2, line: 726, column: 54)
!4044 = !DILocation(line: 735, column: 30, scope: !4031)
!4045 = !DILocation(line: 735, column: 40, scope: !4031)
!4046 = !DILocation(line: 735, column: 14, scope: !4031)
!4047 = !DILocation(line: 735, column: 12, scope: !4031)
!4048 = !DILocation(line: 744, column: 7, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4031, file: !2, line: 744, column: 7)
!4050 = !DILocation(line: 744, column: 7, scope: !4031)
!4051 = !DILocation(line: 745, column: 8, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4049, file: !2, line: 744, column: 28)
!4053 = !DILocation(line: 746, column: 4, scope: !4052)
!4054 = !DILocation(line: 748, column: 2, scope: !4031)
!4055 = !DILocation(line: 749, column: 3, scope: !3992)
!4056 = !DILocation(line: 749, column: 3, scope: !3997)
!4057 = !DILocation(line: 749, column: 3, scope: !3996)
!4058 = !DILocation(line: 749, column: 3, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !3996, file: !2, line: 749, column: 3)
!4060 = !DILocation(line: 749, column: 3, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !3996, file: !2, line: 749, column: 3)
!4062 = !{i64 2152628187, i64 2152628216, i64 2152628262, i64 2152628320, i64 2152628374, i64 2152628428, i64 2152628483, i64 2152628514, i64 2152628822, i64 2152628828, i64 2152628875, i64 2152628898, i64 2152628924}
!4063 = !DILocation(line: 749, column: 3, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !3996, file: !2, line: 749, column: 3)
!4065 = !DILocation(line: 749, column: 3, scope: !3993)
!4066 = !DILocation(line: 750, column: 7, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !3993, file: !2, line: 750, column: 7)
!4068 = !DILocation(line: 750, column: 19, scope: !4067)
!4069 = !DILocation(line: 750, column: 16, scope: !4067)
!4070 = !DILocation(line: 750, column: 7, scope: !3993)
!4071 = !DILocation(line: 755, column: 4, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4067, file: !2, line: 750, column: 28)
!4073 = !DILocation(line: 757, column: 14, scope: !3993)
!4074 = !DILocation(line: 757, column: 12, scope: !3993)
!4075 = !DILocation(line: 760, column: 24, scope: !3977)
!4076 = !DILocation(line: 760, column: 11, scope: !3977)
!4077 = !DILocation(line: 760, column: 34, scope: !3977)
!4078 = !DILocation(line: 760, column: 9, scope: !3977)
!4079 = !DILocation(line: 762, column: 7, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !3977, file: !2, line: 762, column: 6)
!4081 = !DILocation(line: 762, column: 17, scope: !4080)
!4082 = !DILocation(line: 762, column: 6, scope: !3977)
!4083 = !DILocation(line: 763, column: 10, scope: !4080)
!4084 = !DILocation(line: 763, column: 3, scope: !4080)
!4085 = !DILocation(line: 765, column: 38, scope: !3977)
!4086 = !DILocation(line: 765, column: 8, scope: !3977)
!4087 = !DILocation(line: 765, column: 6, scope: !3977)
!4088 = !DILocation(line: 766, column: 6, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !3977, file: !2, line: 766, column: 6)
!4090 = !DILocation(line: 766, column: 6, scope: !3977)
!4091 = !DILocation(line: 767, column: 3, scope: !4089)
!4092 = !DILocation(line: 769, column: 2, scope: !3977)
!4093 = !DILocation(line: 770, column: 13, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4095, file: !2, line: 769, column: 11)
!4095 = distinct !DILexicalBlock(scope: !4096, file: !2, line: 769, column: 2)
!4096 = distinct !DILexicalBlock(scope: !3977, file: !2, line: 769, column: 2)
!4097 = !DILocation(line: 770, column: 18, scope: !4094)
!4098 = !DILocation(line: 770, column: 40, scope: !4094)
!4099 = !DILocation(line: 770, column: 38, scope: !4094)
!4100 = !DILocation(line: 770, column: 10, scope: !4094)
!4101 = !DILocation(line: 772, column: 45, scope: !4094)
!4102 = !DILocation(line: 772, column: 52, scope: !4094)
!4103 = !DILocation(line: 772, column: 58, scope: !4094)
!4104 = !DILocation(line: 772, column: 9, scope: !4094)
!4105 = !DILocation(line: 772, column: 7, scope: !4094)
!4106 = !DILocation(line: 773, column: 7, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4094, file: !2, line: 773, column: 7)
!4108 = !DILocation(line: 773, column: 7, scope: !4094)
!4109 = !DILocation(line: 774, column: 4, scope: !4107)
!4110 = !DILocation(line: 776, column: 7, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4094, file: !2, line: 776, column: 7)
!4112 = !DILocation(line: 776, column: 17, scope: !4111)
!4113 = !DILocation(line: 776, column: 14, scope: !4111)
!4114 = !DILocation(line: 776, column: 7, scope: !4094)
!4115 = !DILocation(line: 777, column: 4, scope: !4111)
!4116 = !DILocation(line: 778, column: 10, scope: !4094)
!4117 = !DILocation(line: 778, column: 8, scope: !4094)
!4118 = !DILocation(line: 769, column: 2, scope: !4095)
!4119 = distinct !{!4119, !4120, !4121, !3522}
!4120 = !DILocation(line: 769, column: 2, scope: !4096)
!4121 = !DILocation(line: 779, column: 2, scope: !4096)
!4122 = !DILocation(line: 785, column: 24, scope: !3977)
!4123 = !DILocation(line: 785, column: 34, scope: !3977)
!4124 = !DILocation(line: 785, column: 2, scope: !3977)
!4125 = !DILocation(line: 787, column: 9, scope: !3977)
!4126 = !DILocation(line: 787, column: 21, scope: !3977)
!4127 = !DILocation(line: 787, column: 18, scope: !3977)
!4128 = !DILocation(line: 787, column: 2, scope: !3977)
!4129 = !DILocation(line: 802, column: 1, scope: !3977)
!4130 = !DILocation(line: 803, column: 2, scope: !3977)
!4131 = !DILocation(line: 804, column: 14, scope: !3977)
!4132 = !DILocation(line: 804, column: 17, scope: !3977)
!4133 = !DILocation(line: 804, column: 2, scope: !3977)
!4134 = !DILocation(line: 806, column: 10, scope: !3977)
!4135 = !DILocation(line: 806, column: 2, scope: !3977)
!4136 = !DILocation(line: 808, column: 33, scope: !4001)
!4137 = !DILocation(line: 808, column: 9, scope: !4001)
!4138 = !DILocation(line: 808, column: 7, scope: !4001)
!4139 = !DILocation(line: 809, column: 3, scope: !4001)
!4140 = !DILocation(line: 812, column: 3, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4001, file: !2, line: 812, column: 3)
!4142 = !DILocation(line: 813, column: 7, scope: !4001)
!4143 = !DILocation(line: 814, column: 3, scope: !4001)
!4144 = !DILocation(line: 817, column: 3, scope: !4000)
!4145 = !DILocation(line: 817, column: 3, scope: !4004)
!4146 = !DILocation(line: 817, column: 3, scope: !4003)
!4147 = !DILocation(line: 817, column: 3, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4003, file: !2, line: 817, column: 3)
!4149 = !DILocation(line: 817, column: 3, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4003, file: !2, line: 817, column: 3)
!4151 = !{i64 2152629920, i64 2152629949, i64 2152629995, i64 2152630053, i64 2152630107, i64 2152630161, i64 2152630216, i64 2152630247, i64 2152630555, i64 2152630561, i64 2152630608, i64 2152630631, i64 2152630657}
!4152 = !DILocation(line: 817, column: 3, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4003, file: !2, line: 817, column: 3)
!4154 = !DILocation(line: 817, column: 3, scope: !4001)
!4155 = !DILocation(line: 818, column: 3, scope: !4001)
!4156 = !DILocation(line: 821, column: 12, scope: !3977)
!4157 = !DILocation(line: 821, column: 15, scope: !3977)
!4158 = !DILocation(line: 821, column: 2, scope: !3977)
!4159 = !DILocation(line: 822, column: 2, scope: !3977)
!4160 = !DILocation(line: 827, column: 6, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !3977, file: !2, line: 827, column: 6)
!4162 = !DILocation(line: 827, column: 16, scope: !4161)
!4163 = !DILocation(line: 827, column: 25, scope: !4161)
!4164 = !DILocation(line: 827, column: 22, scope: !4161)
!4165 = !DILocation(line: 827, column: 6, scope: !3977)
!4166 = !DILocation(line: 828, column: 10, scope: !4161)
!4167 = !DILocation(line: 828, column: 22, scope: !4161)
!4168 = !DILocation(line: 828, column: 19, scope: !4161)
!4169 = !DILocation(line: 828, column: 3, scope: !4161)
!4170 = !DILocation(line: 831, column: 7, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !3977, file: !2, line: 831, column: 6)
!4172 = !DILocation(line: 831, column: 6, scope: !3977)
!4173 = !DILocation(line: 832, column: 3, scope: !4171)
!4174 = !DILocation(line: 850, column: 24, scope: !3977)
!4175 = !DILocation(line: 850, column: 50, scope: !3977)
!4176 = !DILocation(line: 850, column: 60, scope: !3977)
!4177 = !DILocation(line: 850, column: 34, scope: !3977)
!4178 = !DILocation(line: 850, column: 2, scope: !3977)
!4179 = !DILocation(line: 852, column: 9, scope: !3977)
!4180 = !DILocation(line: 852, column: 2, scope: !3977)
!4181 = !DILocation(line: 853, column: 1, scope: !3977)
!4182 = !DISubprogram(name: "__rt_mutex_futex_trylock", scope: !897, file: !897, line: 97, type: !2793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4183 = distinct !DISubprogram(name: "debug_rt_mutex_init_waiter", scope: !897, file: !897, line: 199, type: !2796, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !4184)
!4184 = !{!4185}
!4185 = !DILocalVariable(name: "waiter", arg: 1, scope: !4183, file: !897, line: 199, type: !895)
!4186 = !DILocation(line: 199, column: 71, scope: !4183)
!4187 = !DILocation(line: 203, column: 1, scope: !4183)
!4188 = distinct !DISubprogram(name: "rt_mutex_top_waiter", scope: !897, file: !897, line: 128, type: !4189, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1575, retainedNodes: !4191)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!895, !908}
!4191 = !{!4192, !4193, !4194, !4195}
!4192 = !DILocalVariable(name: "lock", arg: 1, scope: !4188, file: !897, line: 128, type: !908)
!4193 = !DILocalVariable(name: "leftmost", scope: !4188, file: !897, line: 130, type: !99)
!4194 = !DILocalVariable(name: "w", scope: !4188, file: !897, line: 131, type: !895)
!4195 = !DILocalVariable(name: "__mptr", scope: !4196, file: !897, line: 136, type: !39)
!4196 = distinct !DILexicalBlock(scope: !4197, file: !897, line: 136, column: 7)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !897, line: 135, column: 16)
!4198 = distinct !DILexicalBlock(scope: !4188, file: !897, line: 135, column: 6)
!4199 = !DILocation(line: 128, column: 81, scope: !4188)
!4200 = !DILocation(line: 130, column: 2, scope: !4188)
!4201 = !DILocation(line: 130, column: 18, scope: !4188)
!4202 = !DILocation(line: 130, column: 29, scope: !4188)
!4203 = !DILocation(line: 131, column: 2, scope: !4188)
!4204 = !DILocation(line: 131, column: 26, scope: !4188)
!4205 = !DILocation(line: 133, column: 2, scope: !4188)
!4206 = !DILocation(line: 133, column: 2, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4188, file: !897, line: 133, column: 2)
!4208 = !DILocation(line: 135, column: 6, scope: !4198)
!4209 = !DILocation(line: 135, column: 6, scope: !4188)
!4210 = !DILocation(line: 136, column: 7, scope: !4196)
!4211 = !DILocation(line: 136, column: 7, scope: !4197)
!4212 = !DILocation(line: 136, column: 5, scope: !4197)
!4213 = !DILocation(line: 137, column: 3, scope: !4197)
!4214 = !DILocation(line: 137, column: 3, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4216, file: !897, line: 137, column: 3)
!4216 = distinct !DILexicalBlock(scope: !4197, file: !897, line: 137, column: 3)
!4217 = !DILocation(line: 137, column: 3, scope: !4216)
!4218 = !DILocation(line: 137, column: 3, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4215, file: !897, line: 137, column: 3)
!4220 = !DILocation(line: 137, column: 3, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4219, file: !897, line: 137, column: 3)
!4222 = !DILocation(line: 137, column: 3, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4219, file: !897, line: 137, column: 3)
!4224 = !{i64 2152595440, i64 2152595469, i64 2152595515, i64 2152595573, i64 2152595627, i64 2152595681, i64 2152595736, i64 2152595767}
!4225 = !DILocation(line: 138, column: 2, scope: !4197)
!4226 = !DILocation(line: 139, column: 9, scope: !4188)
!4227 = !DILocation(line: 140, column: 1, scope: !4188)
!4228 = !DILocation(line: 139, column: 2, scope: !4188)
!4229 = !DISubprogram(name: "__rt_mutex_futex_unlock", scope: !897, file: !897, line: 100, type: !4230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!881, !908, !4232}
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!4233 = !DISubprogram(name: "rt_mutex_postunlock", scope: !897, file: !897, line: 103, type: !4234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{null, !4232}
