; ModuleID = 'kernel/async.c'
source_filename = "kernel/async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_async_schedule_node_domain: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad async_schedule_node_domain ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_async_schedule_node: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad async_schedule_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_async_synchronize_full: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad async_synchronize_full ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_async_synchronize_full_domain: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad async_synchronize_full_domain ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_async_synchronize_cookie_domain: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad async_synchronize_cookie_domain ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_async_synchronize_cookie: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad async_synchronize_cookie ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_current_is_async: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad current_is_async ; .previous"

%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.async_domain = type { %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lock_class_key = type {}
%struct.static_call_key = type { ptr, %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.pcpu_hot = type { %union.anon.15 }
%union.anon.15 = type { %struct.anon.16, [16 x i8] }
%struct.anon.16 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.atomic64_t = type { i64 }
%struct.async_entry = type { %struct.list_head, %struct.list_head, %struct.work_struct, i64, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.worker = type { %union.anon.13, ptr, ptr, ptr, i64, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, i64, i32, i32, [32 x i8], ptr }
%union.anon.13 = type { %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, i64, i64, %struct.list_head, i32, i64, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i64, [16 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%struct.cpumask = type { [1 x i64] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.restart_block = type { i64, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
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

@entry_count = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !0
@async_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !1678
@next_cookie = internal global i64 1, align 8, !dbg !1680
@__UNIQUE_ID___addressable_async_schedule_node_domain205 = internal global ptr @async_schedule_node_domain, section ".discard.addressable", align 8, !dbg !1659
@async_dfl_domain = internal global %struct.async_domain { %struct.list_head { ptr @async_dfl_domain, ptr @async_dfl_domain }, i8 1 }, align 8, !dbg !1704
@__UNIQUE_ID___addressable_async_schedule_node206 = internal global ptr @async_schedule_node, section ".discard.addressable", align 8, !dbg !1661
@__UNIQUE_ID___addressable_async_synchronize_full207 = internal global ptr @async_synchronize_full, section ".discard.addressable", align 8, !dbg !1663
@__UNIQUE_ID___addressable_async_synchronize_full_domain208 = internal global ptr @async_synchronize_full_domain, section ".discard.addressable", align 8, !dbg !1665
@async_done = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @async_done, i64 8), ptr getelementptr (i8, ptr @async_done, i64 8) } }, align 8, !dbg !1712
@__UNIQUE_ID___addressable_async_synchronize_cookie_domain209 = internal global ptr @async_synchronize_cookie_domain, section ".discard.addressable", align 8, !dbg !1667
@__UNIQUE_ID___addressable_async_synchronize_cookie210 = internal global ptr @async_synchronize_cookie, section ".discard.addressable", align 8, !dbg !1669
@__UNIQUE_ID___addressable_current_is_async211 = internal global ptr @current_is_async, section ".discard.addressable", align 8, !dbg !1671
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1673
@__async_schedule_node_domain.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !1682
@async_global_pending = internal global %struct.list_head { ptr @async_global_pending, ptr @async_global_pending }, align 8, !dbg !1702
@system_unbound_wq = external dso_local global ptr, align 8
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !1706
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable_async_schedule_node_domain205, ptr @__UNIQUE_ID___addressable_async_schedule_node206, ptr @__UNIQUE_ID___addressable_async_synchronize_full207, ptr @__UNIQUE_ID___addressable_async_synchronize_full_domain208, ptr @__UNIQUE_ID___addressable_async_synchronize_cookie_domain209, ptr @__UNIQUE_ID___addressable_async_synchronize_cookie210, ptr @__UNIQUE_ID___addressable_current_is_async211, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @async_schedule_node_domain(ptr noundef %func, ptr noundef %data, i32 noundef %node, ptr noundef %domain) #0 align 16 !dbg !1723 {
entry:
  %retval = alloca i64, align 8
  %func.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %node.addr = alloca i32, align 4
  %domain.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %flags = alloca i64, align 8
  %newcookie = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1727, metadata !DIExpression()), !dbg !1741
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1728, metadata !DIExpression()), !dbg !1742
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1729, metadata !DIExpression()), !dbg !1743
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !1730, metadata !DIExpression()), !dbg !1744
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !1745
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1731, metadata !DIExpression()), !dbg !1746
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !1747
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1732, metadata !DIExpression()), !dbg !1748
  call void @llvm.lifetime.start.p0(i64 8, ptr %newcookie) #14, !dbg !1749
  call void @llvm.dbg.declare(metadata ptr %newcookie, metadata !1733, metadata !DIExpression()), !dbg !1750
  %call = call noalias ptr @kzalloc(i64 noundef 96, i32 noundef 2080) #15, !dbg !1751
  store ptr %call, ptr %entry1, align 8, !dbg !1752
  %0 = load ptr, ptr %entry1, align 8, !dbg !1753
  %tobool = icmp ne ptr %0, null, !dbg !1753
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1754

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @atomic_read(ptr noundef @entry_count) #16, !dbg !1755
  %cmp = icmp sgt i32 %call2, 32768, !dbg !1756
  br i1 %cmp, label %if.then, label %if.end, !dbg !1757

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load ptr, ptr %entry1, align 8, !dbg !1758
  call void @kfree(ptr noundef %1) #16, !dbg !1759
  br label %do.body, !dbg !1760

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !1761

do.body3:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !1762
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1734, metadata !DIExpression()), !dbg !1762
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !1762
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1740, metadata !DIExpression()), !dbg !1762
  %cmp4 = icmp eq ptr %__dummy, %__dummy2, !dbg !1762
  %conv = zext i1 %cmp4 to i32, !dbg !1762
  store i32 1, ptr %tmp, align 4, !dbg !1762
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !1763
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !1763
  %2 = load i32, ptr %tmp, align 4, !dbg !1762
  %call5 = call ptr @spinlock_check(ptr noundef @async_lock) #16, !dbg !1763
  %call6 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call5) #16, !dbg !1763
  store i64 %call6, ptr %flags, align 8, !dbg !1763
  br label %do.cond, !dbg !1763

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !1763

do.end:                                           ; preds = %do.cond
  br label %do.cond7, !dbg !1761

do.cond7:                                         ; preds = %do.end
  br label %do.end8, !dbg !1761

do.end8:                                          ; preds = %do.cond7
  %3 = load i64, ptr @next_cookie, align 8, !dbg !1764
  %inc = add i64 %3, 1, !dbg !1764
  store i64 %inc, ptr @next_cookie, align 8, !dbg !1764
  store i64 %3, ptr %newcookie, align 8, !dbg !1765
  %4 = load i64, ptr %flags, align 8, !dbg !1766
  call void @spin_unlock_irqrestore(ptr noundef @async_lock, i64 noundef %4) #16, !dbg !1767
  %5 = load ptr, ptr %func.addr, align 8, !dbg !1768
  %6 = load ptr, ptr %data.addr, align 8, !dbg !1769
  %7 = load i64, ptr %newcookie, align 8, !dbg !1770
  call void %5(ptr noundef %6, i64 noundef %7) #16, !dbg !1768
  %8 = load i64, ptr %newcookie, align 8, !dbg !1771
  store i64 %8, ptr %retval, align 8, !dbg !1772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1772

if.end:                                           ; preds = %lor.lhs.false
  %9 = load ptr, ptr %func.addr, align 8, !dbg !1773
  %10 = load ptr, ptr %data.addr, align 8, !dbg !1774
  %11 = load i32, ptr %node.addr, align 4, !dbg !1775
  %12 = load ptr, ptr %domain.addr, align 8, !dbg !1776
  %13 = load ptr, ptr %entry1, align 8, !dbg !1777
  %call9 = call i64 @__async_schedule_node_domain(ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12, ptr noundef %13) #16, !dbg !1778
  store i64 %call9, ptr %retval, align 8, !dbg !1779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1779

cleanup:                                          ; preds = %if.end, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %newcookie) #14, !dbg !1780
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !1780
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !1780
  %14 = load i64, ptr %retval, align 8, !dbg !1780
  ret i64 %14, !dbg !1780
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !1781 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1785, metadata !DIExpression()), !dbg !1787
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1786, metadata !DIExpression()), !dbg !1788
  %0 = load i64, ptr %size.addr, align 8, !dbg !1789
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1790
  %or = or i32 %1, 256, !dbg !1791
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1792
  ret ptr %call, !dbg !1793
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !1794 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1801, metadata !DIExpression()), !dbg !1802
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1803
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #16, !dbg !1804
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1805
  %call = call i32 @raw_atomic_read(ptr noundef %1) #16, !dbg !1806
  ret i32 %call, !dbg !1807
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1808 dso_local void @kfree(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1811 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !1816 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1822, metadata !DIExpression()), !dbg !1823
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1824
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1825
  ret ptr %1, !dbg !1826
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !1827 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1831, metadata !DIExpression()), !dbg !1837
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1832, metadata !DIExpression()), !dbg !1838
  br label %do.body, !dbg !1839

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !1840
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1833, metadata !DIExpression()), !dbg !1840
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !1840
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1836, metadata !DIExpression()), !dbg !1840
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1840
  %conv = zext i1 %cmp to i32, !dbg !1840
  store i32 1, ptr %tmp, align 4, !dbg !1840
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !1841
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !1841
  %0 = load i32, ptr %tmp, align 4, !dbg !1840
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !1841
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !1841
  %3 = load i64, ptr %flags.addr, align 8, !dbg !1841
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #16, !dbg !1841
  br label %do.end, !dbg !1841

do.end:                                           ; preds = %do.body
  ret void, !dbg !1842
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__async_schedule_node_domain(ptr noundef %func, ptr noundef %data, i32 noundef %node, ptr noundef %domain, ptr noundef %entry1) #0 align 16 !dbg !1684 {
entry:
  %func.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %node.addr = alloca i32, align 4
  %domain.addr = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  %newcookie = alloca i64, align 8
  %flags = alloca i64, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1688, metadata !DIExpression()), !dbg !1843
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1689, metadata !DIExpression()), !dbg !1844
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1690, metadata !DIExpression()), !dbg !1845
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !1691, metadata !DIExpression()), !dbg !1846
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1692, metadata !DIExpression()), !dbg !1847
  call void @llvm.lifetime.start.p0(i64 8, ptr %newcookie) #14, !dbg !1848
  call void @llvm.dbg.declare(metadata ptr %newcookie, metadata !1693, metadata !DIExpression()), !dbg !1849
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !1850
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1694, metadata !DIExpression()), !dbg !1851
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1852
  %domain_list = getelementptr inbounds %struct.async_entry, ptr %0, i32 0, i32 0, !dbg !1853
  call void @INIT_LIST_HEAD(ptr noundef %domain_list) #16, !dbg !1854
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !1855
  %global_list = getelementptr inbounds %struct.async_entry, ptr %1, i32 0, i32 1, !dbg !1856
  call void @INIT_LIST_HEAD(ptr noundef %global_list) #16, !dbg !1857
  br label %do.body, !dbg !1858

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !1859

do.body2:                                         ; preds = %do.body
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !1861
  %work = getelementptr inbounds %struct.async_entry, ptr %2, i32 0, i32 2, !dbg !1861
  call void @__init_work(ptr noundef %work, i32 noundef 0) #16, !dbg !1861
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !1861
  %work3 = getelementptr inbounds %struct.async_entry, ptr %3, i32 0, i32 2, !dbg !1861
  %data4 = getelementptr inbounds %struct.work_struct, ptr %work3, i32 0, i32 0, !dbg !1861
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !1861
  store i64 68719476704, ptr %counter, align 8, !dbg !1861
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data4, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !1861
  %4 = load ptr, ptr %entry.addr, align 8, !dbg !1861
  %work5 = getelementptr inbounds %struct.async_entry, ptr %4, i32 0, i32 2, !dbg !1861
  %entry6 = getelementptr inbounds %struct.work_struct, ptr %work5, i32 0, i32 1, !dbg !1861
  call void @INIT_LIST_HEAD(ptr noundef %entry6) #16, !dbg !1861
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !1861
  %work7 = getelementptr inbounds %struct.async_entry, ptr %5, i32 0, i32 2, !dbg !1861
  %func8 = getelementptr inbounds %struct.work_struct, ptr %work7, i32 0, i32 2, !dbg !1861
  store ptr @async_run_entry_fn, ptr %func8, align 8, !dbg !1861
  br label %do.cond, !dbg !1861

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !1861

do.end:                                           ; preds = %do.cond
  br label %do.cond9, !dbg !1859

do.cond9:                                         ; preds = %do.end
  br label %do.end10, !dbg !1859

do.end10:                                         ; preds = %do.cond9
  %6 = load ptr, ptr %func.addr, align 8, !dbg !1863
  %7 = load ptr, ptr %entry.addr, align 8, !dbg !1864
  %func11 = getelementptr inbounds %struct.async_entry, ptr %7, i32 0, i32 4, !dbg !1865
  store ptr %6, ptr %func11, align 8, !dbg !1866
  %8 = load ptr, ptr %data.addr, align 8, !dbg !1867
  %9 = load ptr, ptr %entry.addr, align 8, !dbg !1868
  %data12 = getelementptr inbounds %struct.async_entry, ptr %9, i32 0, i32 5, !dbg !1869
  store ptr %8, ptr %data12, align 8, !dbg !1870
  %10 = load ptr, ptr %domain.addr, align 8, !dbg !1871
  %11 = load ptr, ptr %entry.addr, align 8, !dbg !1872
  %domain13 = getelementptr inbounds %struct.async_entry, ptr %11, i32 0, i32 6, !dbg !1873
  store ptr %10, ptr %domain13, align 8, !dbg !1874
  br label %do.body14, !dbg !1875

do.body14:                                        ; preds = %do.end10
  br label %do.body15, !dbg !1876

do.body15:                                        ; preds = %do.body14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !1877
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1695, metadata !DIExpression()), !dbg !1877
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !1877
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1699, metadata !DIExpression()), !dbg !1877
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1877
  %conv = zext i1 %cmp to i32, !dbg !1877
  store i32 1, ptr %tmp, align 4, !dbg !1877
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !1878
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !1878
  %12 = load i32, ptr %tmp, align 4, !dbg !1877
  %call = call ptr @spinlock_check(ptr noundef @async_lock) #16, !dbg !1878
  %call16 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !1878
  store i64 %call16, ptr %flags, align 8, !dbg !1878
  br label %do.cond17, !dbg !1878

do.cond17:                                        ; preds = %do.body15
  br label %do.end18, !dbg !1878

do.end18:                                         ; preds = %do.cond17
  br label %do.cond19, !dbg !1876

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !1876

do.end20:                                         ; preds = %do.cond19
  %13 = load i64, ptr @next_cookie, align 8, !dbg !1879
  %inc = add i64 %13, 1, !dbg !1879
  store i64 %inc, ptr @next_cookie, align 8, !dbg !1879
  %14 = load ptr, ptr %entry.addr, align 8, !dbg !1880
  %cookie = getelementptr inbounds %struct.async_entry, ptr %14, i32 0, i32 3, !dbg !1881
  store i64 %13, ptr %cookie, align 8, !dbg !1882
  store i64 %13, ptr %newcookie, align 8, !dbg !1883
  %15 = load ptr, ptr %entry.addr, align 8, !dbg !1884
  %domain_list21 = getelementptr inbounds %struct.async_entry, ptr %15, i32 0, i32 0, !dbg !1885
  %16 = load ptr, ptr %domain.addr, align 8, !dbg !1886
  %pending = getelementptr inbounds %struct.async_domain, ptr %16, i32 0, i32 0, !dbg !1887
  call void @list_add_tail(ptr noundef %domain_list21, ptr noundef %pending) #16, !dbg !1888
  %17 = load ptr, ptr %domain.addr, align 8, !dbg !1889
  %registered = getelementptr inbounds %struct.async_domain, ptr %17, i32 0, i32 1, !dbg !1891
  %bf.load = load i8, ptr %registered, align 8, !dbg !1891
  %bf.clear = and i8 %bf.load, 1, !dbg !1891
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1891
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !1889
  br i1 %tobool, label %if.then, label %if.end, !dbg !1892

if.then:                                          ; preds = %do.end20
  %18 = load ptr, ptr %entry.addr, align 8, !dbg !1893
  %global_list22 = getelementptr inbounds %struct.async_entry, ptr %18, i32 0, i32 1, !dbg !1894
  call void @list_add_tail(ptr noundef %global_list22, ptr noundef @async_global_pending) #16, !dbg !1895
  br label %if.end, !dbg !1895

if.end:                                           ; preds = %if.then, %do.end20
  call void @atomic_inc(ptr noundef @entry_count) #16, !dbg !1896
  %19 = load i64, ptr %flags, align 8, !dbg !1897
  call void @spin_unlock_irqrestore(ptr noundef @async_lock, i64 noundef %19) #16, !dbg !1898
  %20 = load i32, ptr %node.addr, align 4, !dbg !1899
  %21 = load ptr, ptr @system_unbound_wq, align 8, !dbg !1900
  %22 = load ptr, ptr %entry.addr, align 8, !dbg !1901
  %work23 = getelementptr inbounds %struct.async_entry, ptr %22, i32 0, i32 2, !dbg !1902
  %call24 = call zeroext i1 @queue_work_node(i32 noundef %20, ptr noundef %21, ptr noundef %work23) #16, !dbg !1903
  %23 = load i64, ptr %newcookie, align 8, !dbg !1904
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !1905
  call void @llvm.lifetime.end.p0(i64 8, ptr %newcookie) #14, !dbg !1905
  ret i64 %23, !dbg !1906
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @async_schedule_node(ptr noundef %func, ptr noundef %data, i32 noundef %node) #0 align 16 !dbg !1907 {
entry:
  %func.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %node.addr = alloca i32, align 4
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1911, metadata !DIExpression()), !dbg !1914
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1912, metadata !DIExpression()), !dbg !1915
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1913, metadata !DIExpression()), !dbg !1916
  %0 = load ptr, ptr %func.addr, align 8, !dbg !1917
  %1 = load ptr, ptr %data.addr, align 8, !dbg !1918
  %2 = load i32, ptr %node.addr, align 4, !dbg !1919
  %call = call i64 @async_schedule_node_domain(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef @async_dfl_domain) #16, !dbg !1920
  ret i64 %call, !dbg !1921
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @async_schedule_dev_nocall(ptr noundef %func, ptr noundef %dev) #0 align 16 !dbg !1922 {
entry:
  %retval = alloca i1, align 1
  %func.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !2963, metadata !DIExpression()), !dbg !2966
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2964, metadata !DIExpression()), !dbg !2967
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !2968
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !2965, metadata !DIExpression()), !dbg !2969
  %call = call noalias ptr @kzalloc(i64 noundef 96, i32 noundef 3264) #15, !dbg !2970
  store ptr %call, ptr %entry1, align 8, !dbg !2971
  %0 = load ptr, ptr %entry1, align 8, !dbg !2972
  %tobool = icmp ne ptr %0, null, !dbg !2972
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2974

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @atomic_read(ptr noundef @entry_count) #16, !dbg !2975
  %cmp = icmp sgt i32 %call2, 32768, !dbg !2976
  br i1 %cmp, label %if.then, label %if.end, !dbg !2977

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load ptr, ptr %entry1, align 8, !dbg !2978
  call void @kfree(ptr noundef %1) #16, !dbg !2980
  store i1 false, ptr %retval, align 1, !dbg !2981
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2981

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %func.addr, align 8, !dbg !2982
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2983
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2984
  %call3 = call i32 @dev_to_node(ptr noundef %4) #16, !dbg !2985
  %5 = load ptr, ptr %entry1, align 8, !dbg !2986
  %call4 = call i64 @__async_schedule_node_domain(ptr noundef %2, ptr noundef %3, i32 noundef %call3, ptr noundef @async_dfl_domain, ptr noundef %5) #16, !dbg !2987
  store i1 true, ptr %retval, align 1, !dbg !2988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2988

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !2989
  %6 = load i1, ptr %retval, align 1, !dbg !2989
  ret i1 %6, !dbg !2989
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dev_to_node(ptr noundef %dev) #6 align 16 !dbg !2990 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2992, metadata !DIExpression()), !dbg !2993
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2994
  %numa_node = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25, !dbg !2995
  %1 = load i32, ptr %numa_node, align 8, !dbg !2995
  ret i32 %1, !dbg !2996
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @async_synchronize_full() #0 align 16 !dbg !2997 {
entry:
  call void @async_synchronize_full_domain(ptr noundef null) #16, !dbg !2998
  ret void, !dbg !2999
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @async_synchronize_full_domain(ptr noundef %domain) #0 align 16 !dbg !3000 {
entry:
  %domain.addr = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !3004, metadata !DIExpression()), !dbg !3005
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !3006
  call void @async_synchronize_cookie_domain(i64 noundef -1, ptr noundef %0) #16, !dbg !3007
  ret void, !dbg !3008
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @async_synchronize_cookie_domain(i64 noundef %cookie, ptr noundef %domain) #0 align 16 !dbg !3009 {
entry:
  %cookie.addr = alloca i64, align 8
  %domain.addr = alloca ptr, align 8
  %starttime = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp8 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store i64 %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !3013, metadata !DIExpression()), !dbg !3036
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !3014, metadata !DIExpression()), !dbg !3037
  call void @llvm.lifetime.start.p0(i64 8, ptr %starttime) #14, !dbg !3038
  call void @llvm.dbg.declare(metadata ptr %starttime, metadata !3015, metadata !DIExpression()), !dbg !3039
  store i32 0, ptr %tmp, align 4, !dbg !3040
  %0 = load i32, ptr %tmp, align 4, !dbg !3043
  %call = call i64 @ktime_get() #16, !dbg !3044
  store i64 %call, ptr %starttime, align 8, !dbg !3045
  br label %do.body, !dbg !3046

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3047

do.body1:                                         ; preds = %do.body
  call void @might_resched() #16, !dbg !3048
  br label %do.cond, !dbg !3048

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3048

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %domain.addr, align 8, !dbg !3050
  %call2 = call i64 @lowest_in_progress(ptr noundef %1) #16, !dbg !3050
  %2 = load i64, ptr %cookie.addr, align 8, !dbg !3050
  %cmp = icmp uge i64 %call2, %2, !dbg !3050
  br i1 %cmp, label %if.then, label %if.end, !dbg !3047

if.then:                                          ; preds = %do.end
  br label %do.end10, !dbg !3050

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #14, !dbg !3052
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !3016, metadata !DIExpression()), !dbg !3052
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #14, !dbg !3052
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3030, metadata !DIExpression()), !dbg !3052
  store i64 0, ptr %__ret, align 8, !dbg !3052
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #16, !dbg !3052
  br label %for.cond, !dbg !3052

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #14, !dbg !3053
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !3031, metadata !DIExpression()), !dbg !3053
  %call3 = call i64 @prepare_to_wait_event(ptr noundef @async_done, ptr noundef %__wq_entry, i32 noundef 2) #16, !dbg !3053
  store i64 %call3, ptr %__int, align 8, !dbg !3053
  %3 = load ptr, ptr %domain.addr, align 8, !dbg !3054
  %call4 = call i64 @lowest_in_progress(ptr noundef %3) #16, !dbg !3054
  %4 = load i64, ptr %cookie.addr, align 8, !dbg !3054
  %cmp5 = icmp uge i64 %call4, %4, !dbg !3054
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !3053

if.then6:                                         ; preds = %for.cond
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3054

if.end7:                                          ; preds = %for.cond
  call void @schedule() #16, !dbg !3053
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3056
  br label %cleanup, !dbg !3056

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #14, !dbg !3056
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !3056, !llvm.loop !3057

for.end:                                          ; preds = %cleanup
  call void @finish_wait(ptr noundef @async_done, ptr noundef %__wq_entry) #16, !dbg !3052
  br label %__out, !dbg !3052

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !3035), !dbg !3052
  %5 = load i64, ptr %__ret, align 8, !dbg !3052
  store i64 %5, ptr %tmp8, align 8, !dbg !3052
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #14, !dbg !3047
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #14, !dbg !3047
  %6 = load i64, ptr %tmp8, align 8, !dbg !3052
  br label %do.cond9, !dbg !3047

do.cond9:                                         ; preds = %__out
  br label %do.end10, !dbg !3047

do.end10:                                         ; preds = %do.cond9, %if.then
  store i32 0, ptr %tmp11, align 4, !dbg !3060
  %7 = load i32, ptr %tmp11, align 4, !dbg !3063
  call void @llvm.lifetime.end.p0(i64 8, ptr %starttime) #14, !dbg !3064
  ret void, !dbg !3064

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3065 dso_local i64 @ktime_get() #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #4 align 16 !dbg !1708 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !3067
  %0 = load ptr, ptr %tmp, align 8, !dbg !3067
  %call = call i32 %0() #16, !dbg !3069
  ret void, !dbg !3070
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @lowest_in_progress(ptr noundef %domain) #0 align 16 !dbg !3071 {
entry:
  %domain.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %ret = alloca i64, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !3075, metadata !DIExpression()), !dbg !3093
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #14, !dbg !3094
  call void @llvm.dbg.declare(metadata ptr %first, metadata !3076, metadata !DIExpression()), !dbg !3095
  store ptr null, ptr %first, align 8, !dbg !3095
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !3096
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3077, metadata !DIExpression()), !dbg !3097
  store i64 -1, ptr %ret, align 8, !dbg !3097
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !3098
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3078, metadata !DIExpression()), !dbg !3099
  br label %do.body, !dbg !3100

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3101

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !3102
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3079, metadata !DIExpression()), !dbg !3102
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !3102
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3083, metadata !DIExpression()), !dbg !3102
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3102
  %conv = zext i1 %cmp to i32, !dbg !3102
  store i32 1, ptr %tmp, align 4, !dbg !3102
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !3103
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !3103
  %0 = load i32, ptr %tmp, align 4, !dbg !3102
  %call = call ptr @spinlock_check(ptr noundef @async_lock) #16, !dbg !3103
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !3103
  store i64 %call2, ptr %flags, align 8, !dbg !3103
  br label %do.cond, !dbg !3103

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !3103

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !3101

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !3101

do.end4:                                          ; preds = %do.cond3
  %1 = load ptr, ptr %domain.addr, align 8, !dbg !3104
  %tobool = icmp ne ptr %1, null, !dbg !3104
  br i1 %tobool, label %if.then, label %if.else, !dbg !3105

if.then:                                          ; preds = %do.end4
  %2 = load ptr, ptr %domain.addr, align 8, !dbg !3106
  %pending = getelementptr inbounds %struct.async_domain, ptr %2, i32 0, i32 0, !dbg !3107
  %call5 = call i32 @list_empty(ptr noundef %pending) #16, !dbg !3108
  %tobool6 = icmp ne i32 %call5, 0, !dbg !3108
  br i1 %tobool6, label %if.end, label %if.then7, !dbg !3109

if.then7:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !3110
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3084, metadata !DIExpression()), !dbg !3110
  %3 = load ptr, ptr %domain.addr, align 8, !dbg !3110
  %pending8 = getelementptr inbounds %struct.async_domain, ptr %3, i32 0, i32 0, !dbg !3110
  %next = getelementptr inbounds %struct.list_head, ptr %pending8, i32 0, i32 0, !dbg !3110
  %4 = load ptr, ptr %next, align 8, !dbg !3110
  store ptr %4, ptr %__mptr, align 8, !dbg !3110
  %5 = load ptr, ptr %__mptr, align 8, !dbg !3110
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !3110
  store ptr %add.ptr, ptr %tmp9, align 8, !dbg !3110
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !3111
  %6 = load ptr, ptr %tmp9, align 8, !dbg !3110
  store ptr %6, ptr %first, align 8, !dbg !3112
  br label %if.end, !dbg !3113

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end17, !dbg !3114

if.else:                                          ; preds = %do.end4
  %call10 = call i32 @list_empty(ptr noundef @async_global_pending) #16, !dbg !3115
  %tobool11 = icmp ne i32 %call10, 0, !dbg !3115
  br i1 %tobool11, label %if.end16, label %if.then12, !dbg !3116

if.then12:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #14, !dbg !3117
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !3089, metadata !DIExpression()), !dbg !3117
  %7 = load ptr, ptr @async_global_pending, align 8, !dbg !3117
  store ptr %7, ptr %__mptr13, align 8, !dbg !3117
  %8 = load ptr, ptr %__mptr13, align 8, !dbg !3117
  %add.ptr15 = getelementptr i8, ptr %8, i64 -16, !dbg !3117
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !3117
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #14, !dbg !3118
  %9 = load ptr, ptr %tmp14, align 8, !dbg !3117
  store ptr %9, ptr %first, align 8, !dbg !3119
  br label %if.end16, !dbg !3120

if.end16:                                         ; preds = %if.then12, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %10 = load ptr, ptr %first, align 8, !dbg !3121
  %tobool18 = icmp ne ptr %10, null, !dbg !3121
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !3123

if.then19:                                        ; preds = %if.end17
  %11 = load ptr, ptr %first, align 8, !dbg !3124
  %cookie = getelementptr inbounds %struct.async_entry, ptr %11, i32 0, i32 3, !dbg !3125
  %12 = load i64, ptr %cookie, align 8, !dbg !3125
  store i64 %12, ptr %ret, align 8, !dbg !3126
  br label %if.end20, !dbg !3127

if.end20:                                         ; preds = %if.then19, %if.end17
  %13 = load i64, ptr %flags, align 8, !dbg !3128
  call void @spin_unlock_irqrestore(ptr noundef @async_lock, i64 noundef %13) #16, !dbg !3129
  %14 = load i64, ptr %ret, align 8, !dbg !3130
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !3131
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !3131
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #14, !dbg !3131
  ret i64 %14, !dbg !3132
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3133 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3136 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3140 dso_local void @schedule() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3141 dso_local void @finish_wait(ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @async_synchronize_cookie(i64 noundef %cookie) #0 align 16 !dbg !3144 {
entry:
  %cookie.addr = alloca i64, align 8
  store i64 %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !3148, metadata !DIExpression()), !dbg !3149
  %0 = load i64, ptr %cookie.addr, align 8, !dbg !3150
  call void @async_synchronize_cookie_domain(i64 noundef %0, ptr noundef @async_dfl_domain) #16, !dbg !3151
  ret void, !dbg !3152
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @current_is_async() #0 align 16 !dbg !3153 {
entry:
  %worker = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %worker) #14, !dbg !3186
  call void @llvm.dbg.declare(metadata ptr %worker, metadata !3155, metadata !DIExpression()), !dbg !3187
  %call = call ptr @current_wq_worker() #16, !dbg !3188
  store ptr %call, ptr %worker, align 8, !dbg !3187
  %0 = load ptr, ptr %worker, align 8, !dbg !3189
  %tobool = icmp ne ptr %0, null, !dbg !3189
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !3190

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %worker, align 8, !dbg !3191
  %current_func = getelementptr inbounds %struct.worker, ptr %1, i32 0, i32 2, !dbg !3192
  %2 = load ptr, ptr %current_func, align 8, !dbg !3192
  %cmp = icmp eq ptr %2, @async_run_entry_fn, !dbg !3193
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !3194
  call void @llvm.lifetime.end.p0(i64 8, ptr %worker) #14, !dbg !3195
  ret i1 %3, !dbg !3196
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @current_wq_worker() #6 align 16 !dbg !3197 {
entry:
  %retval = alloca ptr, align 8
  %call = call i32 @preempt_count() #16, !dbg !3200
  %conv = sext i32 %call to i64, !dbg !3200
  %and = and i64 %conv, 16711936, !dbg !3200
  %tobool = icmp ne i64 %and, 0, !dbg !3200
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3202

land.lhs.true:                                    ; preds = %entry
  %call1 = call ptr @get_current() #16, !dbg !3203
  %flags = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 4, !dbg !3204
  %0 = load i32, ptr %flags, align 4, !dbg !3204
  %and2 = and i32 %0, 32, !dbg !3205
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3205
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3206

if.then:                                          ; preds = %land.lhs.true
  %call4 = call ptr @get_current() #16, !dbg !3207
  %call5 = call ptr @kthread_data(ptr noundef %call4) #16, !dbg !3208
  store ptr %call5, ptr %retval, align 8, !dbg !3209
  br label %return, !dbg !3209

if.end:                                           ; preds = %land.lhs.true, %entry
  store ptr null, ptr %retval, align 8, !dbg !3210
  br label %return, !dbg !3210

return:                                           ; preds = %if.end, %if.then
  %1 = load ptr, ptr %retval, align 8, !dbg !3211
  ret ptr %1, !dbg !3211
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @async_run_entry_fn(ptr noundef %work) #0 align 16 !dbg !3212 {
entry:
  %work.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %flags = alloca i64, align 8
  %calltime = alloca i64, align 8
  %tmp2 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp5 = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !3214, metadata !DIExpression()), !dbg !3225
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !3226
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !3215, metadata !DIExpression()), !dbg !3227
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !3228
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3216, metadata !DIExpression()), !dbg !3228
  %0 = load ptr, ptr %work.addr, align 8, !dbg !3228
  store ptr %0, ptr %__mptr, align 8, !dbg !3228
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3228
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !3228
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3228
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !3229
  %2 = load ptr, ptr %tmp, align 8, !dbg !3228
  store ptr %2, ptr %entry1, align 8, !dbg !3227
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !3230
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3218, metadata !DIExpression()), !dbg !3231
  call void @llvm.lifetime.start.p0(i64 8, ptr %calltime) #14, !dbg !3232
  call void @llvm.dbg.declare(metadata ptr %calltime, metadata !3219, metadata !DIExpression()), !dbg !3233
  store i32 0, ptr %tmp2, align 4, !dbg !3234
  %3 = load i32, ptr %tmp2, align 4, !dbg !3237
  %call = call i64 @ktime_get() #16, !dbg !3238
  store i64 %call, ptr %calltime, align 8, !dbg !3239
  %4 = load ptr, ptr %entry1, align 8, !dbg !3240
  %func = getelementptr inbounds %struct.async_entry, ptr %4, i32 0, i32 4, !dbg !3241
  %5 = load ptr, ptr %func, align 8, !dbg !3241
  %6 = load ptr, ptr %entry1, align 8, !dbg !3242
  %data = getelementptr inbounds %struct.async_entry, ptr %6, i32 0, i32 5, !dbg !3243
  %7 = load ptr, ptr %data, align 8, !dbg !3243
  %8 = load ptr, ptr %entry1, align 8, !dbg !3244
  %cookie = getelementptr inbounds %struct.async_entry, ptr %8, i32 0, i32 3, !dbg !3245
  %9 = load i64, ptr %cookie, align 8, !dbg !3245
  call void %5(ptr noundef %7, i64 noundef %9) #16, !dbg !3240
  store i32 0, ptr %tmp3, align 4, !dbg !3246
  %10 = load i32, ptr %tmp3, align 4, !dbg !3249
  br label %do.body, !dbg !3250

do.body:                                          ; preds = %entry
  br label %do.body4, !dbg !3251

do.body4:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !3252
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3220, metadata !DIExpression()), !dbg !3252
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !3252
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3224, metadata !DIExpression()), !dbg !3252
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3252
  %conv = zext i1 %cmp to i32, !dbg !3252
  store i32 1, ptr %tmp5, align 4, !dbg !3252
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !3253
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !3253
  %11 = load i32, ptr %tmp5, align 4, !dbg !3252
  %call6 = call ptr @spinlock_check(ptr noundef @async_lock) #16, !dbg !3253
  %call7 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call6) #16, !dbg !3253
  store i64 %call7, ptr %flags, align 8, !dbg !3253
  br label %do.cond, !dbg !3253

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !3253

do.end:                                           ; preds = %do.cond
  br label %do.cond8, !dbg !3251

do.cond8:                                         ; preds = %do.end
  br label %do.end9, !dbg !3251

do.end9:                                          ; preds = %do.cond8
  %12 = load ptr, ptr %entry1, align 8, !dbg !3254
  %domain_list = getelementptr inbounds %struct.async_entry, ptr %12, i32 0, i32 0, !dbg !3255
  call void @list_del_init(ptr noundef %domain_list) #16, !dbg !3256
  %13 = load ptr, ptr %entry1, align 8, !dbg !3257
  %global_list = getelementptr inbounds %struct.async_entry, ptr %13, i32 0, i32 1, !dbg !3258
  call void @list_del_init(ptr noundef %global_list) #16, !dbg !3259
  %14 = load ptr, ptr %entry1, align 8, !dbg !3260
  call void @kfree(ptr noundef %14) #16, !dbg !3261
  call void @atomic_dec(ptr noundef @entry_count) #16, !dbg !3262
  %15 = load i64, ptr %flags, align 8, !dbg !3263
  call void @spin_unlock_irqrestore(ptr noundef @async_lock, i64 noundef %15) #16, !dbg !3264
  %call10 = call i32 @__wake_up(ptr noundef @async_done, i32 noundef 3, i32 noundef 1, ptr noundef null) #16, !dbg !3265
  call void @llvm.lifetime.end.p0(i64 8, ptr %calltime) #14, !dbg !3266
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !3266
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !3266
  ret void, !dbg !3266
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !3267 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3269, metadata !DIExpression()), !dbg !3274
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3270, metadata !DIExpression()), !dbg !3275
  %0 = load i64, ptr %size.addr, align 8, !dbg !3276
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3277
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3278

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3279
  %tobool = icmp ne i64 %2, 0, !dbg !3279
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3280

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !3281
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3271, metadata !DIExpression()), !dbg !3282
  %3 = load i64, ptr %size.addr, align 8, !dbg !3283
  %cmp = icmp ugt i64 %3, 8192, !dbg !3285
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3286

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3287
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3288
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !3289
  store ptr %call, ptr %retval, align 8, !dbg !3290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3290

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3291
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !3291
  store i32 %call2, ptr %index, align 4, !dbg !3292
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3293
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3294
  %9 = ptrtoint ptr %8 to i64, !dbg !3294
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !3295
  %idxprom = zext i32 %call3 to i64, !dbg !3296
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3296
  %10 = load i32, ptr %index, align 4, !dbg !3297
  %idxprom4 = zext i32 %10 to i64, !dbg !3296
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3296
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3296
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3298
  %13 = load i64, ptr %size.addr, align 8, !dbg !3299
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !3300
  store ptr %call6, ptr %retval, align 8, !dbg !3301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3301

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !3302
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3303
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3304
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !3305
  store ptr %call8, ptr %retval, align 8, !dbg !3306
  br label %return, !dbg !3306

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3307
  ret ptr %16, !dbg !3307
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3308 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !3309 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3313, metadata !DIExpression()), !dbg !3315
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3314, metadata !DIExpression()), !dbg !3316
  %0 = load i64, ptr %size.addr, align 8, !dbg !3317
  %tobool = icmp ne i64 %0, 0, !dbg !3317
  br i1 %tobool, label %if.end, label %if.then, !dbg !3319

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3320
  br label %return, !dbg !3320

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3321
  %cmp = icmp ule i64 %1, 8, !dbg !3323
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3324

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3325
  br label %return, !dbg !3325

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3326
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3328
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3329

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3330
  %cmp4 = icmp ule i64 %3, 96, !dbg !3331
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3332

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3333
  br label %return, !dbg !3333

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3334
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3336
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3337

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3338
  %cmp9 = icmp ule i64 %5, 192, !dbg !3339
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3340

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3341
  br label %return, !dbg !3341

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3342
  %cmp12 = icmp ule i64 %6, 8, !dbg !3344
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3345

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3346
  br label %return, !dbg !3346

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3347
  %cmp15 = icmp ule i64 %7, 16, !dbg !3349
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3350

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3351
  br label %return, !dbg !3351

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3352
  %cmp18 = icmp ule i64 %8, 32, !dbg !3354
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3355

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3356
  br label %return, !dbg !3356

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3357
  %cmp21 = icmp ule i64 %9, 64, !dbg !3359
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3360

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3361
  br label %return, !dbg !3361

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3362
  %cmp24 = icmp ule i64 %10, 128, !dbg !3364
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3365

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3366
  br label %return, !dbg !3366

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3367
  %cmp27 = icmp ule i64 %11, 256, !dbg !3369
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3370

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3371
  br label %return, !dbg !3371

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3372
  %cmp30 = icmp ule i64 %12, 512, !dbg !3374
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3375

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3376
  br label %return, !dbg !3376

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3377
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3379
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3380

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3381
  br label %return, !dbg !3381

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3382
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3384
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3385

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3386
  br label %return, !dbg !3386

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3387
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3389
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3390

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3391
  br label %return, !dbg !3391

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3392
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3394
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3395

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3396
  br label %return, !dbg !3396

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3397
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3399
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3400

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3401
  br label %return, !dbg !3401

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3402
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3404
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3405

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3406
  br label %return, !dbg !3406

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3407
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3409
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3410

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3411
  br label %return, !dbg !3411

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3412
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3414
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3415

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3416
  br label %return, !dbg !3416

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3417
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3419
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3420

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3421
  br label %return, !dbg !3421

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3422
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3424
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3425

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3426
  br label %return, !dbg !3426

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3427
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3429
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3430

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3431
  br label %return, !dbg !3431

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3432
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3434
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3435

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3436
  br label %return, !dbg !3436

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3437, !range !3439, !noundef !571
  %tobool69 = trunc i8 %25 to i1, !dbg !3437
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3440

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3441

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #18, !dbg !3442, !srcloc !3445
  unreachable, !dbg !3442

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3446

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3447

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3448

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3450

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3448

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #14, !dbg !3452, !srcloc !3454
  br label %do.end75, !dbg !3452

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3448

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3455
  br label %return, !dbg !3455

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3456
  ret i32 %26, !dbg !3456
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3457 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !3463 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3467, metadata !DIExpression()), !dbg !3469
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3468, metadata !DIExpression()), !dbg !3470
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3471
  %and = and i32 %0, 17, !dbg !3471
  %cmp = icmp eq i32 %and, 0, !dbg !3471
  %lnot = xor i1 %cmp, true, !dbg !3471
  %lnot1 = xor i1 %lnot, true, !dbg !3471
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3471
  %conv = sext i32 %lnot.ext to i64, !dbg !3471
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3471
  %tobool = icmp ne i64 %expval, 0, !dbg !3471
  br i1 %tobool, label %if.then, label %if.end, !dbg !3473

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3474
  br label %return, !dbg !3474

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3475
  %and2 = and i32 %1, 1, !dbg !3477
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3477
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3478

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3479
  br label %return, !dbg !3479

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3480
  br label %return, !dbg !3480

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3482
  ret i32 %2, !dbg !3482
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3483 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3484 dso_local void @__compiletime_assert_204() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !3485 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3493, metadata !DIExpression()), !dbg !3495
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3494, metadata !DIExpression()), !dbg !3496
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3497
  %1 = load i64, ptr %size.addr, align 8, !dbg !3498
  %conv = trunc i64 %1 to i32, !dbg !3498
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #16, !dbg !3499
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3500
  %3 = load i64, ptr %size.addr, align 8, !dbg !3500
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #16, !dbg !3500
  ret void, !dbg !3501
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !3502 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3505, metadata !DIExpression()), !dbg !3506
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3507
  %call = call i32 @arch_atomic_read(ptr noundef %0) #16, !dbg !3508
  ret i32 %call, !dbg !3509
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !3510 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3515, metadata !DIExpression()), !dbg !3517
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3516, metadata !DIExpression()), !dbg !3518
  ret i1 true, !dbg !3519
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !3520 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3525, metadata !DIExpression()), !dbg !3528
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3526, metadata !DIExpression()), !dbg !3529
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3527, metadata !DIExpression()), !dbg !3530
  ret void, !dbg !3531
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !3532 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3535, metadata !DIExpression()), !dbg !3536
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3537
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3537
  %1 = load volatile i32, ptr %counter, align 4, !dbg !3537
  ret i32 %1, !dbg !3538
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3539 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #6 align 16 !dbg !3542 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3547, metadata !DIExpression()), !dbg !3548
  br label %do.body, !dbg !3549

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3550

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3552

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3550

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3554
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3554
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3554
  store volatile ptr %0, ptr %next, align 8, !dbg !3554
  br label %do.end3, !dbg !3554

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3550

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !3556

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !3557

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !3559

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !3557

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !3561
  %3 = load ptr, ptr %list.addr, align 8, !dbg !3561
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !3561
  store volatile ptr %2, ptr %prev, align 8, !dbg !3561
  br label %do.end9, !dbg !3561

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !3557

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !3563
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #6 align 16 !dbg !3564 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !3568, metadata !DIExpression()), !dbg !3570
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !3569, metadata !DIExpression()), !dbg !3571
  ret void, !dbg !3572
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !3573 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3577, metadata !DIExpression()), !dbg !3579
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3578, metadata !DIExpression()), !dbg !3580
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3581
  %1 = load ptr, ptr %head.addr, align 8, !dbg !3582
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3583
  %2 = load ptr, ptr %prev, align 8, !dbg !3583
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3584
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #16, !dbg !3585
  ret void, !dbg !3586
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #4 align 16 !dbg !3587 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3592, metadata !DIExpression()), !dbg !3593
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3594
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !3595
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3596
  call void @raw_atomic_inc(ptr noundef %1) #16, !dbg !3597
  ret void, !dbg !3598
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3599 dso_local zeroext i1 @queue_work_node(i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !3602 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3606, metadata !DIExpression()), !dbg !3609
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3607, metadata !DIExpression()), !dbg !3610
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3608, metadata !DIExpression()), !dbg !3611
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3612
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !3614
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3615
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !3616
  br i1 %call, label %if.end, label %if.then, !dbg !3617

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3618

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !3619
  %4 = load ptr, ptr %next.addr, align 8, !dbg !3620
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !3621
  store ptr %3, ptr %prev1, align 8, !dbg !3622
  %5 = load ptr, ptr %next.addr, align 8, !dbg !3623
  %6 = load ptr, ptr %new.addr, align 8, !dbg !3624
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !3625
  store ptr %5, ptr %next2, align 8, !dbg !3626
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !3627
  %8 = load ptr, ptr %new.addr, align 8, !dbg !3628
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !3629
  store ptr %7, ptr %prev3, align 8, !dbg !3630
  br label %do.body, !dbg !3631

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3632

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3634

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3632

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !3636
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !3636
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !3636
  store volatile ptr %9, ptr %next6, align 8, !dbg !3636
  br label %do.end7, !dbg !3636

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3632

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3638
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !3639 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3643, metadata !DIExpression()), !dbg !3646
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3644, metadata !DIExpression()), !dbg !3647
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3645, metadata !DIExpression()), !dbg !3648
  ret i1 true, !dbg !3649
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !3650 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3652, metadata !DIExpression()), !dbg !3654
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3653, metadata !DIExpression()), !dbg !3655
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3656
  %1 = load i64, ptr %size.addr, align 8, !dbg !3657
  %conv = trunc i64 %1 to i32, !dbg !3657
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !3658
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3659
  %3 = load i64, ptr %size.addr, align 8, !dbg !3659
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !3659
  ret void, !dbg !3660
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #4 align 16 !dbg !3661 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3663, metadata !DIExpression()), !dbg !3664
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3665
  call void @arch_atomic_inc(ptr noundef %0) #16, !dbg !3666
  ret void, !dbg !3667
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !3668 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3670, metadata !DIExpression()), !dbg !3672
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3671, metadata !DIExpression()), !dbg !3673
  ret i1 true, !dbg !3674
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #4 align 16 !dbg !3675 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3677, metadata !DIExpression()), !dbg !3678
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3679
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3680
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #14, !dbg !3681, !srcloc !3682
  ret void, !dbg !3683
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #6 align 16 !dbg !3684 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3690, metadata !DIExpression()), !dbg !3691
  br label %do.body, !dbg !3692

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3694

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3692
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !3692
  %1 = load volatile ptr, ptr %next, align 8, !dbg !3692
  store ptr %1, ptr %tmp, align 8, !dbg !3694
  %2 = load ptr, ptr %tmp, align 8, !dbg !3692
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3696
  %cmp = icmp eq ptr %2, %3, !dbg !3697
  %conv = zext i1 %cmp to i32, !dbg !3697
  ret i32 %conv, !dbg !3698
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #4 align 16 !dbg !3699 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !3704
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3702, metadata !DIExpression()), !dbg !3704
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.16, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !3704, !srcloc !3705
  store i32 %0, ptr %pfo_val__, align 4, !dbg !3704
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !3704
  %conv = zext i32 %1 to i64, !dbg !3704
  %conv1 = trunc i64 %conv to i32, !dbg !3704
  store i32 %conv1, ptr %tmp, align 4, !dbg !3704
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !3706
  %2 = load i32, ptr %tmp, align 4, !dbg !3704
  %and = and i32 %2, 2147483647, !dbg !3707
  ret i32 %and, !dbg !3708
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !3709 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !3720
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !3714, metadata !DIExpression()), !dbg !3720
  br label %do.body, !dbg !3720

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !3721
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !3716, metadata !DIExpression()), !dbg !3721
  store ptr null, ptr %__vpp_verify, align 8, !dbg !3721
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !3721
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !3720
  br label %do.cond, !dbg !3721

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3721

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !3722
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !3718, metadata !DIExpression()), !dbg !3722
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #20, !dbg !3722, !srcloc !3723
  store i64 %1, ptr %pfo_val__, align 8, !dbg !3722
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !3722
  %3 = inttoptr i64 %2 to ptr, !dbg !3722
  store ptr %3, ptr %tmp, align 8, !dbg !3722
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !3720
  %4 = load ptr, ptr %tmp, align 8, !dbg !3722
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !3720
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !3720
  store ptr %5, ptr %tmp1, align 8, !dbg !3720
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !3724
  %6 = load ptr, ptr %tmp1, align 8, !dbg !3720
  ret ptr %6, !dbg !3725
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3726 dso_local ptr @kthread_data(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #6 align 16 !dbg !3730 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3732, metadata !DIExpression()), !dbg !3733
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3734
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !3735
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3736
  call void @INIT_LIST_HEAD(ptr noundef %1) #16, !dbg !3737
  ret void, !dbg !3738
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #4 align 16 !dbg !3739 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3741, metadata !DIExpression()), !dbg !3742
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3743
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !3744
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3745
  call void @raw_atomic_dec(ptr noundef %1) #16, !dbg !3746
  ret void, !dbg !3747
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3748 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #6 align 16 !dbg !3751 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3753, metadata !DIExpression()), !dbg !3754
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3755
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #16, !dbg !3757
  br i1 %call, label %if.end, label %if.then, !dbg !3758

if.then:                                          ; preds = %entry
  br label %return, !dbg !3759

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3760
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3761
  %2 = load ptr, ptr %prev, align 8, !dbg !3761
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !3762
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3763
  %4 = load ptr, ptr %next, align 8, !dbg !3763
  call void @__list_del(ptr noundef %2, ptr noundef %4) #16, !dbg !3764
  br label %return, !dbg !3765

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3765
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #6 align 16 !dbg !3766 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3770, metadata !DIExpression()), !dbg !3771
  ret i1 true, !dbg !3772
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !3773 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3775, metadata !DIExpression()), !dbg !3777
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3776, metadata !DIExpression()), !dbg !3778
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3779
  %1 = load ptr, ptr %next.addr, align 8, !dbg !3780
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3781
  store ptr %0, ptr %prev1, align 8, !dbg !3782
  br label %do.body, !dbg !3783

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3784

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3786

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3784

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3788
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3788
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3788
  store volatile ptr %2, ptr %next4, align 8, !dbg !3788
  br label %do.end5, !dbg !3788

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3784

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3790
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #4 align 16 !dbg !3791 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3793, metadata !DIExpression()), !dbg !3794
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3795
  call void @arch_atomic_dec(ptr noundef %0) #16, !dbg !3796
  ret void, !dbg !3797
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #4 align 16 !dbg !3798 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3800, metadata !DIExpression()), !dbg !3801
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3802
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3803
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #14, !dbg !3804, !srcloc !3805
  ret void, !dbg !3806
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }
attributes #19 = { nounwind memory(read) }
attributes #20 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721}
!llvm.ident = !{!1722}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "entry_count", scope: !2, file: !3, line: 79, type: !217, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.async.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/async\22 -D KBUILD_BASENAME=\22async\22 -D KBUILD_MODNAME=\22async\22 -D __KBUILD_MODNAME=kmod_async -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/async.ll kernel/async.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !132, globals: !1658, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/async.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a85550f85f208f3cbf35c463a450506")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !83, !89, !96, !106}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !13, line: 312, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !20, line: 45, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!23 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!24 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !26, line: 487, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!29 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!30 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!31 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !38, line: 620, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!41 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!42 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!43 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!44 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !38, line: 597, baseType: !46, size: 32, elements: !47)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!49 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!50 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!51 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!52 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61}
!55 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!56 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!57 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!58 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!59 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!60 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!61 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!65 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!66 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!70 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!71 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!75 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!76 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!77 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 10, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!80 = !{!81, !82}
!81 = !DIEnumerator(name: "false", value: 0)
!82 = !DIEnumerator(name: "true", value: 1)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !84, line: 16, baseType: !7, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "TT_NONE", value: 0)
!87 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!88 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !90, line: 51, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!91 = !{!92, !93, !94, !95}
!92 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!93 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!94 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!95 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !97, line: 364, baseType: !7, size: 32, elements: !98)
!97 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!98 = !{!99, !100, !101, !102, !103, !104, !105}
!99 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!100 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!101 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!102 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!103 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!104 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!105 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !107, line: 30, baseType: !7, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!109 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!110 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!111 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!112 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!113 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!114 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!115 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!116 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!117 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!118 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!119 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!120 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!121 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!122 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!123 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!124 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!125 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!126 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!127 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!128 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!129 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!130 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!131 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!132 = !{!133, !135, !136, !137, !140, !147, !192, !46, !194, !195}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !134, line: 154, baseType: !7)
!134 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!136 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !46)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !134, line: 190, size: 128, elements: !144)
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !143, file: !134, line: 191, baseType: !142, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !143, file: !134, line: 191, baseType: !142, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "async_entry", file: !3, line: 67, size: 768, elements: !149)
!149 = !{!150, !151, !152, !174, !180, !185, !186}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "domain_list", scope: !148, file: !3, line: 68, baseType: !143, size: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !148, file: !3, line: 69, baseType: !143, size: 128, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !148, file: !3, line: 70, baseType: !153, size: 256, offset: 256)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !107, line: 98, size: 256, elements: !154)
!154 = !{!155, !167, !168}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !153, file: !107, line: 99, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !157, line: 13, baseType: !158)
!157 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !134, line: 181, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 179, size: 64, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !159, file: !134, line: 180, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !163, line: 22, baseType: !164)
!163 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !165, line: 30, baseType: !166)
!165 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!166 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !153, file: !107, line: 100, baseType: !143, size: 128, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !153, file: !107, line: 101, baseType: !169, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !107, line: 21, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !173}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !148, file: !3, line: 71, baseType: !175, size: 64, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "async_cookie_t", file: !176, line: 16, baseType: !177)
!176 = !DIFile(filename: "./include/linux/async.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec3d14405de96b2cececccfaaedbde0e")
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !163, line: 23, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !165, line: 31, baseType: !179)
!179 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !148, file: !3, line: 72, baseType: !181, size: 64, offset: 576)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "async_func_t", file: !176, line: 17, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !135, !175}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !148, file: !3, line: 73, baseType: !135, size: 64, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !148, file: !3, line: 74, baseType: !187, size: 64, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "async_domain", file: !176, line: 18, size: 192, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !188, file: !176, line: 19, baseType: !143, size: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !188, file: !176, line: 20, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !197, line: 746, size: 58368, elements: !198)
!197 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!198 = !{!199, !209, !210, !211, !221, !222, !223, !224, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !305, !316, !443, !447, !450, !481, !482, !483, !484, !495, !497, !498, !499, !500, !501, !502, !513, !514, !517, !518, !519, !520, !521, !522, !523, !524, !531, !532, !539, !540, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !826, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !882, !884, !885, !886, !898, !900, !901, !902, !903, !904, !905, !911, !912, !913, !914, !915, !916, !917, !931, !937, !941, !942, !943, !946, !951, !954, !961, !966, !969, !972, !975, !978, !981, !984, !990, !991, !992, !998, !999, !1003, !1004, !1005, !1008, !1015, !1016, !1025, !1036, !1037, !1038, !1039, !1040, !1045, !1046, !1047, !1050, !1051, !1054, !1057, !1060, !1063, !1066, !1067, !1154, !1165, !1166, !1167, !1168, !1174, !1179, !1180, !1181, !1184, !1185, !1188, !1191, !1192, !1195, !1196, !1197, !1200, !1201, !1202, !1205, !1206, !1207, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1239, !1242, !1310, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1322, !1394, !1396, !1397, !1398, !1399, !1400, !1412, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1429, !1430, !1431}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !196, file: !197, line: 752, baseType: !200, size: 192)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !201, line: 56, size: 192, elements: !202)
!201 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!202 = !{!203, !204, !205, !208}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !200, file: !201, line: 57, baseType: !136, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !200, file: !201, line: 58, baseType: !136, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !200, file: !201, line: 59, baseType: !206, size: 32, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !163, line: 21, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !165, line: 27, baseType: !7)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !200, file: !201, line: 61, baseType: !206, size: 32, offset: 160)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !196, file: !197, line: 754, baseType: !7, size: 32, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !196, file: !197, line: 767, baseType: !135, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !196, file: !197, line: 768, baseType: !212, size: 32, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !213, line: 113, baseType: !214)
!213 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !213, line: 111, size: 32, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !214, file: !213, line: 112, baseType: !217, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !134, line: 174, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 172, size: 32, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !218, file: !134, line: 173, baseType: !46, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !197, line: 770, baseType: !7, size: 32, offset: 352)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !196, file: !197, line: 771, baseType: !7, size: 32, offset: 384)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !196, file: !197, line: 774, baseType: !46, size: 32, offset: 416)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !196, file: !197, line: 775, baseType: !225, size: 128, offset: 448)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !226, line: 58, size: 128, elements: !227)
!226 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!227 = !{!228, !234, !239, !243}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !225, file: !226, line: 59, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !230, line: 60, size: 64, elements: !231)
!230 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !230, line: 61, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !225, file: !226, line: 60, baseType: !235, size: 32, offset: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !225, file: !226, line: 60, size: 32, elements: !236)
!236 = !{!237, !238}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !235, file: !226, line: 61, baseType: !7, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !235, file: !226, line: 62, baseType: !217, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !225, file: !226, line: 65, baseType: !240, size: 16, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !163, line: 19, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !165, line: 24, baseType: !242)
!242 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !225, file: !226, line: 65, baseType: !240, size: 16, offset: 112)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !196, file: !197, line: 776, baseType: !7, size: 32, offset: 576)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !196, file: !197, line: 777, baseType: !136, size: 64, offset: 640)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !196, file: !197, line: 778, baseType: !195, size: 64, offset: 704)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !196, file: !197, line: 787, baseType: !46, size: 32, offset: 768)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !196, file: !197, line: 788, baseType: !46, size: 32, offset: 800)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !196, file: !197, line: 790, baseType: !46, size: 32, offset: 832)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !196, file: !197, line: 792, baseType: !46, size: 32, offset: 864)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !196, file: !197, line: 793, baseType: !46, size: 32, offset: 896)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !196, file: !197, line: 794, baseType: !46, size: 32, offset: 928)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !196, file: !197, line: 795, baseType: !7, size: 32, offset: 960)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !196, file: !197, line: 797, baseType: !255, size: 2048, offset: 1024)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !197, line: 551, size: 2048, elements: !256)
!256 = !{!257, !262, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !284, !287, !288, !289}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !255, file: !197, line: 553, baseType: !258, size: 128)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !197, line: 411, size: 128, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !258, file: !197, line: 412, baseType: !136, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !258, file: !197, line: 413, baseType: !206, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !255, file: !197, line: 554, baseType: !263, size: 192, align: 64, offset: 128)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !264, line: 5, size: 192, align: 64, elements: !265)
!264 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!265 = !{!266, !267, !269}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !263, file: !264, line: 6, baseType: !136, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !263, file: !264, line: 7, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !263, file: !264, line: 8, baseType: !268, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !255, file: !197, line: 555, baseType: !177, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !255, file: !197, line: 556, baseType: !177, size: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !255, file: !197, line: 558, baseType: !143, size: 128, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !255, file: !197, line: 559, baseType: !7, size: 32, offset: 576)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !255, file: !197, line: 561, baseType: !177, size: 64, offset: 640)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !255, file: !197, line: 562, baseType: !177, size: 64, offset: 704)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !255, file: !197, line: 563, baseType: !177, size: 64, offset: 768)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !255, file: !197, line: 564, baseType: !177, size: 64, offset: 832)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !255, file: !197, line: 565, baseType: !162, size: 64, offset: 896)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !255, file: !197, line: 566, baseType: !177, size: 64, offset: 960)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !255, file: !197, line: 568, baseType: !177, size: 64, offset: 1024)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !255, file: !197, line: 571, baseType: !46, size: 32, offset: 1088)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !255, file: !197, line: 572, baseType: !283, size: 64, offset: 1152)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !255, file: !197, line: 574, baseType: !285, size: 64, offset: 1216)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !197, line: 49, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !255, file: !197, line: 576, baseType: !285, size: 64, offset: 1280)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !255, file: !197, line: 578, baseType: !136, size: 64, offset: 1344)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !255, file: !197, line: 588, baseType: !290, size: 512, align: 512, offset: 1536)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !197, line: 497, size: 512, align: 512, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !290, file: !197, line: 498, baseType: !177, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !290, file: !197, line: 499, baseType: !177, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !290, file: !197, line: 500, baseType: !177, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !290, file: !197, line: 501, baseType: !206, size: 32, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !290, file: !197, line: 502, baseType: !206, size: 32, offset: 224)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !290, file: !197, line: 503, baseType: !136, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !290, file: !197, line: 504, baseType: !136, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !290, file: !197, line: 505, baseType: !136, size: 64, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !290, file: !197, line: 506, baseType: !301, size: 64, align: 64, offset: 448)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !197, line: 445, size: 64, align: 64, elements: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !301, file: !197, line: 446, baseType: !7, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !301, file: !197, line: 447, baseType: !7, size: 32, offset: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !196, file: !197, line: 798, baseType: !306, size: 384, offset: 3072)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !197, line: 592, size: 384, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !313, !314}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !306, file: !197, line: 593, baseType: !143, size: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !306, file: !197, line: 594, baseType: !136, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !306, file: !197, line: 595, baseType: !136, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !306, file: !197, line: 596, baseType: !7, size: 32, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !306, file: !197, line: 597, baseType: !242, size: 16, offset: 288)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !306, file: !197, line: 598, baseType: !242, size: 16, offset: 304)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !306, file: !197, line: 600, baseType: !315, size: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !196, file: !197, line: 799, baseType: !317, size: 1792, offset: 3456)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !197, line: 610, size: 1792, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !440, !441}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !317, file: !197, line: 611, baseType: !263, size: 192, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !317, file: !197, line: 618, baseType: !177, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !317, file: !197, line: 619, baseType: !177, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !317, file: !197, line: 620, baseType: !177, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !317, file: !197, line: 621, baseType: !177, size: 64, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !317, file: !197, line: 622, baseType: !177, size: 64, offset: 448)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !317, file: !197, line: 629, baseType: !162, size: 64, offset: 512)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !317, file: !197, line: 630, baseType: !177, size: 64, offset: 576)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !197, line: 631, baseType: !7, size: 32, offset: 640)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !317, file: !197, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !317, file: !197, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !317, file: !197, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !317, file: !197, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !317, file: !197, line: 662, baseType: !333, size: 512, offset: 704)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !334)
!334 = !{!335, !343, !344, !349, !436, !437, !438, !439}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !333, file: !33, line: 119, baseType: !336, size: 256)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !337, line: 9, size: 256, elements: !338)
!337 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !336, file: !337, line: 10, baseType: !263, size: 192, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !336, file: !337, line: 11, baseType: !341, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !342, line: 29, baseType: !162)
!342 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !333, file: !33, line: 120, baseType: !341, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !333, file: !33, line: 121, baseType: !345, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!32, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !333, file: !33, line: 122, baseType: !350, size: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !352)
!352 = !{!353, !404, !405, !409, !419, !420, !431, !435}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !351, file: !33, line: 160, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !356)
!356 = !{!357, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !355, file: !33, line: 216, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !359, line: 23, baseType: !360)
!359 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !359, line: 14, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !360, file: !359, line: 15, baseType: !363, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !364, line: 44, baseType: !365)
!364 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !364, line: 14, size: 32, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !364, line: 15, baseType: !368, size: 32)
!368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !364, line: 15, size: 32, elements: !369)
!369 = !{!370, !371, !379}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !368, file: !364, line: 16, baseType: !217, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !364, line: 24, baseType: !372, size: 16)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !364, line: 24, size: 16, elements: !373)
!373 = !{!374, !378}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !372, file: !364, line: 25, baseType: !375, size: 8)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !163, line: 17, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !165, line: 21, baseType: !377)
!377 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !372, file: !364, line: 26, baseType: !375, size: 8, offset: 8)
!379 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !364, line: 28, baseType: !380, size: 32)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !364, line: 28, size: 32, elements: !381)
!381 = !{!382, !383}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !380, file: !364, line: 29, baseType: !240, size: 16)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !380, file: !364, line: 30, baseType: !240, size: 16, offset: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !355, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !355, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !355, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !355, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !355, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !355, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !355, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !355, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !355, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !355, file: !33, line: 227, baseType: !242, size: 16, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !355, file: !33, line: 228, baseType: !242, size: 16, offset: 208)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !355, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !355, file: !33, line: 235, baseType: !341, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !355, file: !33, line: 236, baseType: !348, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !355, file: !33, line: 237, baseType: !341, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !355, file: !33, line: 238, baseType: !348, size: 64, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !355, file: !33, line: 239, baseType: !401, size: 4096, align: 512, offset: 512)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 4096, align: 512, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 8)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !351, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !351, file: !33, line: 162, baseType: !406, size: 32, offset: 96)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !134, line: 32, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !408, line: 96, baseType: !46)
!408 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!409 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !351, file: !33, line: 163, baseType: !410, size: 32, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !411, line: 274, baseType: !412)
!411 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !411, line: 274, size: 32, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !412, file: !411, line: 274, baseType: !415, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !411, line: 69, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !411, line: 64, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !416, file: !411, line: 65, baseType: !7, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !351, file: !33, line: 164, baseType: !348, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !351, file: !33, line: 165, baseType: !421, size: 128, offset: 256)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !337, line: 14, size: 128, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !421, file: !337, line: 15, baseType: !424, size: 128)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !264, line: 26, size: 128, elements: !425)
!425 = !{!426, !430}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !424, file: !264, line: 27, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !264, line: 12, size: 64, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !427, file: !264, line: 13, baseType: !268, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !424, file: !264, line: 28, baseType: !268, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !351, file: !33, line: 166, baseType: !432, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!341}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !351, file: !33, line: 167, baseType: !341, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !333, file: !33, line: 123, baseType: !375, size: 8, offset: 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !333, file: !33, line: 124, baseType: !375, size: 8, offset: 456)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !333, file: !33, line: 125, baseType: !375, size: 8, offset: 464)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !333, file: !33, line: 126, baseType: !375, size: 8, offset: 472)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !317, file: !197, line: 671, baseType: !333, size: 512, offset: 1216)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !317, file: !197, line: 679, baseType: !442, size: 64, offset: 1728)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !196, file: !197, line: 800, baseType: !444, size: 64, offset: 5248)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !197, line: 800, flags: DIFlagFwdDecl)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !196, file: !197, line: 809, baseType: !448, size: 64, offset: 5312)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !197, line: 70, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !196, file: !197, line: 825, baseType: !451, size: 2048, align: 512, offset: 5632)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !197, line: 509, size: 2048, align: 512, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !451, file: !197, line: 511, baseType: !177, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !451, file: !197, line: 512, baseType: !177, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !451, file: !197, line: 513, baseType: !177, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !451, file: !197, line: 514, baseType: !177, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !451, file: !197, line: 515, baseType: !177, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !451, file: !197, line: 516, baseType: !177, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !451, file: !197, line: 518, baseType: !177, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !451, file: !197, line: 519, baseType: !177, size: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !451, file: !197, line: 520, baseType: !162, size: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !451, file: !197, line: 522, baseType: !177, size: 64, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !451, file: !197, line: 523, baseType: !177, size: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !451, file: !197, line: 524, baseType: !162, size: 64, offset: 704)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !451, file: !197, line: 526, baseType: !162, size: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !451, file: !197, line: 527, baseType: !177, size: 64, offset: 832)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !451, file: !197, line: 529, baseType: !177, size: 64, offset: 896)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !451, file: !197, line: 530, baseType: !177, size: 64, offset: 960)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !451, file: !197, line: 531, baseType: !177, size: 64, offset: 1024)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !451, file: !197, line: 532, baseType: !177, size: 64, offset: 1088)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !451, file: !197, line: 533, baseType: !177, size: 64, offset: 1152)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !451, file: !197, line: 535, baseType: !177, size: 64, offset: 1216)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !451, file: !197, line: 536, baseType: !177, size: 64, offset: 1280)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !451, file: !197, line: 537, baseType: !177, size: 64, offset: 1344)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !451, file: !197, line: 538, baseType: !177, size: 64, offset: 1408)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !451, file: !197, line: 539, baseType: !177, size: 64, offset: 1472)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !451, file: !197, line: 540, baseType: !177, size: 64, offset: 1536)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !451, file: !197, line: 541, baseType: !177, size: 64, offset: 1600)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !451, file: !197, line: 542, baseType: !177, size: 64, offset: 1664)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !451, file: !197, line: 543, baseType: !177, size: 64, offset: 1728)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !196, file: !197, line: 833, baseType: !7, size: 32, offset: 7680)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !196, file: !197, line: 836, baseType: !7, size: 32, offset: 7712)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !196, file: !197, line: 837, baseType: !46, size: 32, offset: 7744)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !196, file: !197, line: 838, baseType: !485, size: 64, offset: 7808)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !488, line: 19, baseType: !489)
!488 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !488, line: 19, size: 64, elements: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !489, file: !488, line: 19, baseType: !492, size: 64)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 64, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 1)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !196, file: !197, line: 839, baseType: !496, size: 64, offset: 7872)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !196, file: !197, line: 840, baseType: !487, size: 64, offset: 7936)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !196, file: !197, line: 841, baseType: !135, size: 64, offset: 8000)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !196, file: !197, line: 843, baseType: !242, size: 16, offset: 8064)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !196, file: !197, line: 845, baseType: !242, size: 16, offset: 8080)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !196, file: !197, line: 848, baseType: !46, size: 32, offset: 8096)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !196, file: !197, line: 849, baseType: !503, size: 32, offset: 8128)
!503 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !197, line: 718, size: 32, elements: !504)
!504 = !{!505, !512}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !503, file: !197, line: 724, baseType: !506, size: 32)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !503, file: !197, line: 719, size: 32, elements: !507)
!507 = !{!508, !509, !510, !511}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !506, file: !197, line: 720, baseType: !375, size: 8)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !506, file: !197, line: 721, baseType: !375, size: 8, offset: 8)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !506, file: !197, line: 722, baseType: !375, size: 8, offset: 16)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !506, file: !197, line: 723, baseType: !375, size: 8, offset: 24)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !503, file: !197, line: 725, baseType: !206, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !196, file: !197, line: 850, baseType: !143, size: 128, offset: 8192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !196, file: !197, line: 851, baseType: !515, size: 64, offset: 8320)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !197, line: 60, flags: DIFlagFwdDecl)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !196, file: !197, line: 855, baseType: !136, size: 64, offset: 8384)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !196, file: !197, line: 856, baseType: !375, size: 8, offset: 8448)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !196, file: !197, line: 857, baseType: !375, size: 8, offset: 8456)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !196, file: !197, line: 858, baseType: !46, size: 32, offset: 8480)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !196, file: !197, line: 859, baseType: !143, size: 128, offset: 8512)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !196, file: !197, line: 860, baseType: !46, size: 32, offset: 8640)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !196, file: !197, line: 861, baseType: !143, size: 128, offset: 8704)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !196, file: !197, line: 873, baseType: !525, size: 256, offset: 8832)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !197, line: 376, size: 256, elements: !526)
!526 = !{!527, !528, !529, !530}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !525, file: !197, line: 381, baseType: !136, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !525, file: !197, line: 384, baseType: !179, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !525, file: !197, line: 389, baseType: !179, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !525, file: !197, line: 392, baseType: !179, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !196, file: !197, line: 875, baseType: !143, size: 128, offset: 9088)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !196, file: !197, line: 877, baseType: !533, size: 320, offset: 9216)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !534, line: 86, size: 320, elements: !535)
!534 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!535 = !{!536, !537, !538}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !533, file: !534, line: 87, baseType: !46, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !533, file: !534, line: 88, baseType: !143, size: 128, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !533, file: !534, line: 89, baseType: !143, size: 128, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !196, file: !197, line: 878, baseType: !263, size: 192, align: 64, offset: 9536)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !196, file: !197, line: 881, baseType: !541, size: 64, offset: 9728)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !543, line: 733, size: 10240, elements: !544)
!543 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!544 = !{!545, !743}
!545 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !543, line: 734, baseType: !546, size: 10240)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !542, file: !543, line: 734, size: 10240, elements: !547)
!547 = !{!548, !552, !574, !581, !582, !583, !584, !585, !586, !594, !595, !596, !602, !603, !604, !605, !606, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !647, !661, !664, !720, !721, !722, !725, !729, !730, !733, !734, !735, !741, !742}
!548 = !DIDerivedType(tag: DW_TAG_member, scope: !546, file: !543, line: 739, baseType: !549, size: 512, align: 512)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !546, file: !543, line: 739, size: 512, align: 512, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !549, file: !543, line: 747, baseType: !217, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !546, file: !543, line: 750, baseType: !553, size: 128, offset: 512)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !554, line: 218, size: 128, elements: !555)
!554 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!555 = !{!556, !572, !573}
!556 = !DIDerivedType(tag: DW_TAG_member, scope: !553, file: !554, line: 219, baseType: !557, size: 32)
!557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !553, file: !554, line: 219, size: 32, elements: !558)
!558 = !{!559, !568}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !557, file: !554, line: 220, baseType: !560, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !561, line: 29, baseType: !562)
!561 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !561, line: 17, size: 32, elements: !563)
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !561, line: 18, baseType: !565, size: 32)
!565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !561, line: 18, size: 32, elements: !566)
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !565, file: !561, line: 19, baseType: !360, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !557, file: !554, line: 221, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !554, line: 197, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !554, line: 197, elements: !571)
!571 = !{}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !553, file: !554, line: 223, baseType: !7, size: 32, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !553, file: !554, line: 224, baseType: !135, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !546, file: !543, line: 752, baseType: !575, size: 64, offset: 640)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!136, !578, !136, !136, !136, !136}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !580, line: 537, flags: DIFlagFwdDecl)
!580 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !546, file: !543, line: 756, baseType: !136, size: 64, offset: 704)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !546, file: !543, line: 757, baseType: !136, size: 64, offset: 768)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !546, file: !543, line: 760, baseType: !136, size: 64, offset: 832)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !546, file: !543, line: 761, baseType: !136, size: 64, offset: 896)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !546, file: !543, line: 763, baseType: !136, size: 64, offset: 960)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !546, file: !543, line: 764, baseType: !587, size: 64, offset: 1024)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !580, line: 299, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 299, size: 64, elements: !590)
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !589, file: !580, line: 299, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !593, line: 18, baseType: !136)
!593 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!594 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !546, file: !543, line: 773, baseType: !217, size: 32, offset: 1088)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !546, file: !543, line: 785, baseType: !217, size: 32, offset: 1120)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !546, file: !543, line: 795, baseType: !597, size: 64, offset: 1152)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !543, line: 726, size: 128, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !598, file: !543, line: 727, baseType: !177, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !598, file: !543, line: 728, baseType: !46, size: 32, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !546, file: !543, line: 801, baseType: !136, size: 64, offset: 1216)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !546, file: !543, line: 804, baseType: !156, size: 64, offset: 1280)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !546, file: !543, line: 806, baseType: !46, size: 32, offset: 1344)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !546, file: !543, line: 808, baseType: !560, size: 32, offset: 1376)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !546, file: !543, line: 823, baseType: !607, size: 320, offset: 1408)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !608, line: 48, size: 320, elements: !609)
!608 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!609 = !{!610, !611, !612, !617, !618}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !607, file: !608, line: 49, baseType: !156, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !607, file: !608, line: 55, baseType: !156, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !607, file: !608, line: 57, baseType: !613, size: 32, offset: 128)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !614, line: 15, size: 32, elements: !615)
!614 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!615 = !{!616}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !613, file: !614, line: 20, baseType: !217, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !607, file: !608, line: 59, baseType: !358, size: 32, offset: 160)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !607, file: !608, line: 60, baseType: !143, size: 128, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !546, file: !543, line: 825, baseType: !143, size: 128, offset: 1728)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !546, file: !543, line: 845, baseType: !46, size: 32, offset: 1856)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !546, file: !543, line: 849, baseType: !136, size: 64, offset: 1920)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !546, file: !543, line: 850, baseType: !136, size: 64, offset: 1984)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !546, file: !543, line: 852, baseType: !136, size: 64, offset: 2048)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !546, file: !543, line: 853, baseType: !136, size: 64, offset: 2112)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !546, file: !543, line: 854, baseType: !158, size: 64, offset: 2176)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !546, file: !543, line: 855, baseType: !136, size: 64, offset: 2240)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !546, file: !543, line: 856, baseType: !136, size: 64, offset: 2304)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !546, file: !543, line: 857, baseType: !136, size: 64, offset: 2368)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !546, file: !543, line: 858, baseType: !136, size: 64, offset: 2432)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !546, file: !543, line: 865, baseType: !415, size: 32, offset: 2496)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !546, file: !543, line: 867, baseType: !560, size: 32, offset: 2528)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !546, file: !543, line: 869, baseType: !136, size: 64, offset: 2560)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !546, file: !543, line: 869, baseType: !136, size: 64, offset: 2624)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !546, file: !543, line: 869, baseType: !136, size: 64, offset: 2688)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !546, file: !543, line: 869, baseType: !136, size: 64, offset: 2752)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !546, file: !543, line: 870, baseType: !136, size: 64, offset: 2816)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !546, file: !543, line: 870, baseType: !136, size: 64, offset: 2880)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !546, file: !543, line: 870, baseType: !136, size: 64, offset: 2944)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !546, file: !543, line: 871, baseType: !136, size: 64, offset: 3008)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !546, file: !543, line: 871, baseType: !136, size: 64, offset: 3072)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !546, file: !543, line: 871, baseType: !136, size: 64, offset: 3136)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !546, file: !543, line: 871, baseType: !136, size: 64, offset: 3200)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !546, file: !543, line: 873, baseType: !644, size: 3328, offset: 3264)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 3328, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 52)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !546, file: !543, line: 875, baseType: !648, size: 1280, offset: 6592)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, size: 1280, elements: !659)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !650, line: 22, size: 320, elements: !651)
!650 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!651 = !{!652, !653, !654, !655}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !649, file: !650, line: 23, baseType: !358, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !649, file: !650, line: 24, baseType: !162, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !649, file: !650, line: 26, baseType: !143, size: 128, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !649, file: !650, line: 28, baseType: !656, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !163, line: 20, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !165, line: 26, baseType: !46)
!659 = !{!660}
!660 = !DISubrange(count: 4)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !546, file: !543, line: 877, baseType: !662, size: 64, offset: 7872)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !543, line: 877, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !546, file: !543, line: 880, baseType: !665, size: 1088, offset: 7936)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !666, line: 72, baseType: !667)
!666 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !666, line: 23, size: 1088, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !676, !677, !685, !686, !714, !715, !716}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !667, file: !666, line: 28, baseType: !177, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !667, file: !666, line: 38, baseType: !158, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !667, file: !666, line: 40, baseType: !136, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !667, file: !666, line: 43, baseType: !607, size: 320, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !667, file: !666, line: 44, baseType: !674, size: 64, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !666, line: 44, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !666, line: 48, baseType: !136, size: 64, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !667, file: !666, line: 59, baseType: !678, size: 256, offset: 640)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !679, line: 66, size: 256, elements: !680)
!679 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!680 = !{!681, !682, !683, !684}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !678, file: !679, line: 67, baseType: !156, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !678, file: !679, line: 68, baseType: !358, size: 32, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !678, file: !679, line: 70, baseType: !613, size: 32, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !678, file: !679, line: 72, baseType: !143, size: 128, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !667, file: !666, line: 60, baseType: !135, size: 64, offset: 896)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !667, file: !666, line: 61, baseType: !687, size: 64, offset: 960)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !690, line: 13, size: 1216, elements: !691)
!690 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!691 = !{!692, !693, !694, !695, !696, !697, !698, !701, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !689, file: !690, line: 14, baseType: !135, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !689, file: !690, line: 15, baseType: !136, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !689, file: !690, line: 17, baseType: !136, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !689, file: !690, line: 17, baseType: !136, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !689, file: !690, line: 18, baseType: !136, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !689, file: !690, line: 18, baseType: !136, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !689, file: !690, line: 19, baseType: !699, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !689, file: !690, line: 21, baseType: !702, size: 64, offset: 448)
!702 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !689, file: !690, line: 23, baseType: !702, size: 64, offset: 512)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !689, file: !690, line: 24, baseType: !702, size: 64, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !689, file: !690, line: 25, baseType: !702, size: 64, offset: 640)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !689, file: !690, line: 26, baseType: !702, size: 64, offset: 704)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !689, file: !690, line: 27, baseType: !702, size: 64, offset: 768)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !689, file: !690, line: 28, baseType: !702, size: 64, offset: 832)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !689, file: !690, line: 29, baseType: !702, size: 64, offset: 896)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !689, file: !690, line: 30, baseType: !702, size: 64, offset: 960)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !689, file: !690, line: 31, baseType: !702, size: 64, offset: 1024)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !689, file: !690, line: 32, baseType: !702, size: 64, offset: 1088)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !689, file: !690, line: 33, baseType: !702, size: 64, offset: 1152)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !667, file: !666, line: 63, baseType: !217, size: 32, offset: 1024)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !667, file: !666, line: 69, baseType: !240, size: 16, offset: 1056)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !667, file: !666, line: 70, baseType: !717, size: 16, offset: 1072)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !163, line: 18, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !165, line: 23, baseType: !719)
!719 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !546, file: !543, line: 882, baseType: !136, size: 64, offset: 9024)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !546, file: !543, line: 885, baseType: !560, size: 32, offset: 9088)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !546, file: !543, line: 886, baseType: !723, size: 64, offset: 9152)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !543, line: 732, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !546, file: !543, line: 901, baseType: !726, size: 64, offset: 9216)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !728, line: 18, flags: DIFlagFwdDecl)
!728 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!729 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !546, file: !543, line: 904, baseType: !578, size: 64, offset: 9280)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !546, file: !543, line: 906, baseType: !731, size: 64, offset: 9344)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !543, line: 906, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !546, file: !543, line: 930, baseType: !217, size: 32, offset: 9408)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !546, file: !543, line: 933, baseType: !217, size: 32, offset: 9440)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !546, file: !543, line: 935, baseType: !736, size: 64, offset: 9472)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !90, line: 103, size: 64, elements: !737)
!737 = !{!738}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !736, file: !90, line: 104, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !90, line: 101, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !546, file: !543, line: 940, baseType: !156, size: 64, offset: 9536)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !546, file: !543, line: 942, baseType: !153, size: 256, offset: 9600)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !542, file: !543, line: 986, baseType: !744, offset: 10240)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: -1)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !196, file: !197, line: 882, baseType: !541, size: 64, offset: 9792)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !196, file: !197, line: 884, baseType: !46, size: 32, offset: 9856)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !196, file: !197, line: 885, baseType: !46, size: 32, offset: 9888)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !196, file: !197, line: 886, baseType: !46, size: 32, offset: 9920)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !196, file: !197, line: 888, baseType: !46, size: 32, offset: 9952)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !196, file: !197, line: 890, baseType: !136, size: 64, offset: 9984)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !196, file: !197, line: 893, baseType: !7, size: 32, offset: 10048)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !196, file: !197, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !196, file: !197, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !196, file: !197, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !196, file: !197, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !196, file: !197, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !196, file: !197, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !196, file: !197, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !196, file: !197, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !196, file: !197, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !196, file: !197, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !196, file: !197, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !196, file: !197, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !196, file: !197, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !196, file: !197, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !196, file: !197, line: 969, baseType: !136, size: 64, offset: 10176)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !196, file: !197, line: 971, baseType: !770, size: 448, offset: 10240)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !84, line: 25, size: 448, elements: !771)
!771 = !{!772, !773, !778}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !770, file: !84, line: 26, baseType: !136, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !770, file: !84, line: 27, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!702, !777}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !84, line: 28, baseType: !779, size: 320, offset: 128)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !84, line: 28, size: 320, elements: !780)
!780 = !{!781, !791, !816}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !779, file: !84, line: 37, baseType: !782, size: 320)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !84, line: 30, size: 320, elements: !783)
!783 = !{!784, !786, !787, !788, !789, !790}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !782, file: !84, line: 31, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !782, file: !84, line: 32, baseType: !206, size: 32, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !84, line: 33, baseType: !206, size: 32, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !782, file: !84, line: 34, baseType: !206, size: 32, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !782, file: !84, line: 35, baseType: !177, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !782, file: !84, line: 36, baseType: !785, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !779, file: !84, line: 47, baseType: !792, size: 192)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !84, line: 39, size: 192, elements: !793)
!793 = !{!794, !795, !796, !815}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !792, file: !84, line: 40, baseType: !406, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !792, file: !84, line: 41, baseType: !83, size: 32, offset: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !84, line: 42, baseType: !797, size: 64, offset: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !792, file: !84, line: 42, size: 64, elements: !798)
!798 = !{!799, !807}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !797, file: !84, line: 43, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !802, line: 7, size: 128, elements: !803)
!802 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!803 = !{!804, !806}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !801, file: !802, line: 8, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !408, line: 93, baseType: !166)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !801, file: !802, line: 9, baseType: !166, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !797, file: !84, line: 44, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !810, line: 7, size: 64, elements: !811)
!810 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!811 = !{!812, !814}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !809, file: !810, line: 8, baseType: !813, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !810, line: 5, baseType: !657)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !809, file: !810, line: 9, baseType: !657, size: 32, offset: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !792, file: !84, line: 46, baseType: !177, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !779, file: !84, line: 55, baseType: !817, size: 256)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !779, file: !84, line: 49, size: 256, elements: !818)
!818 = !{!819, !822, !823, !824, !825}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !817, file: !84, line: 50, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !84, line: 14, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !817, file: !84, line: 51, baseType: !46, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !817, file: !84, line: 52, baseType: !46, size: 32, offset: 96)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !817, file: !84, line: 53, baseType: !136, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !817, file: !84, line: 54, baseType: !136, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !196, file: !197, line: 973, baseType: !827, size: 32, offset: 10688)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !134, line: 27, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !408, line: 28, baseType: !46)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !196, file: !197, line: 974, baseType: !827, size: 32, offset: 10720)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !196, file: !197, line: 978, baseType: !136, size: 64, offset: 10752)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !196, file: !197, line: 987, baseType: !195, size: 64, offset: 10816)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !196, file: !197, line: 990, baseType: !195, size: 64, offset: 10880)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !196, file: !197, line: 995, baseType: !143, size: 128, offset: 10944)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !196, file: !197, line: 996, baseType: !143, size: 128, offset: 11072)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !196, file: !197, line: 997, baseType: !195, size: 64, offset: 11200)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !196, file: !197, line: 1005, baseType: !143, size: 128, offset: 11264)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !196, file: !197, line: 1006, baseType: !143, size: 128, offset: 11392)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !196, file: !197, line: 1009, baseType: !839, size: 64, offset: 11520)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !841, line: 59, size: 768, elements: !842)
!841 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!842 = !{!843, !844, !845, !846, !857, !858, !865, !874}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !840, file: !841, line: 61, baseType: !212, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !840, file: !841, line: 62, baseType: !7, size: 32, offset: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !840, file: !841, line: 63, baseType: !560, size: 32, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !840, file: !841, line: 65, baseType: !847, size: 256, offset: 128)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !848, size: 256, elements: !659)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !134, line: 194, size: 64, elements: !849)
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !848, file: !134, line: 195, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !134, line: 198, size: 128, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !852, file: !134, line: 199, baseType: !851, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !852, file: !134, line: 199, baseType: !856, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !840, file: !841, line: 66, baseType: !848, size: 64, offset: 384)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !840, file: !841, line: 68, baseType: !859, size: 192, offset: 448)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !860, line: 41, baseType: !861)
!860 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !860, line: 37, size: 192, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !861, file: !860, line: 38, baseType: !560, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !861, file: !860, line: 39, baseType: !143, size: 128, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !840, file: !841, line: 69, baseType: !866, size: 128, align: 64, offset: 640)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !134, line: 232, size: 128, align: 64, elements: !867)
!867 = !{!868, !870}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !866, file: !134, line: 233, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !866, file: !134, line: 234, baseType: !871, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !869}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !840, file: !841, line: 70, baseType: !875, offset: 768)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, elements: !745)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !841, line: 54, size: 128, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !876, file: !841, line: 55, baseType: !46, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !876, file: !841, line: 56, baseType: !880, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !841, line: 56, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !196, file: !197, line: 1010, baseType: !883, size: 512, offset: 11584)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 512, elements: !659)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !196, file: !197, line: 1011, baseType: !143, size: 128, offset: 12096)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !196, file: !197, line: 1012, baseType: !143, size: 128, offset: 12224)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !196, file: !197, line: 1014, baseType: !887, size: 64, offset: 12352)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !889, line: 26, size: 256, elements: !890)
!889 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !888, file: !889, line: 27, baseType: !7, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !888, file: !889, line: 28, baseType: !893, size: 192, offset: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !894, line: 43, size: 192, elements: !895)
!894 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !893, file: !894, line: 44, baseType: !358, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !893, file: !894, line: 45, baseType: !143, size: 128, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !196, file: !197, line: 1017, baseType: !899, size: 64, offset: 12416)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !196, file: !197, line: 1020, baseType: !899, size: 64, offset: 12480)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !196, file: !197, line: 1023, baseType: !135, size: 64, offset: 12544)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !196, file: !197, line: 1025, baseType: !177, size: 64, offset: 12608)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !196, file: !197, line: 1026, baseType: !177, size: 64, offset: 12672)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !196, file: !197, line: 1031, baseType: !177, size: 64, offset: 12736)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !196, file: !197, line: 1032, baseType: !906, size: 192, offset: 12800)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !197, line: 324, size: 192, elements: !907)
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !906, file: !197, line: 326, baseType: !177, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !906, file: !197, line: 327, baseType: !177, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !906, file: !197, line: 328, baseType: !358, size: 32, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !196, file: !197, line: 1041, baseType: !136, size: 64, offset: 12992)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !196, file: !197, line: 1042, baseType: !136, size: 64, offset: 13056)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !196, file: !197, line: 1045, baseType: !177, size: 64, offset: 13120)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !196, file: !197, line: 1048, baseType: !177, size: 64, offset: 13184)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !196, file: !197, line: 1051, baseType: !136, size: 64, offset: 13248)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !196, file: !197, line: 1052, baseType: !136, size: 64, offset: 13312)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !196, file: !197, line: 1055, baseType: !918, size: 640, offset: 13376)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !919, line: 132, size: 640, elements: !920)
!919 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!920 = !{!921, !929, !930}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !918, file: !919, line: 133, baseType: !922, size: 576)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, size: 576, elements: !927)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !919, line: 117, size: 192, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !923, file: !919, line: 118, baseType: !177, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !923, file: !919, line: 119, baseType: !421, size: 128, offset: 64)
!927 = !{!928}
!928 = !DISubrange(count: 3)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !918, file: !919, line: 134, baseType: !7, size: 32, offset: 576)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !918, file: !919, line: 135, baseType: !7, size: 32, offset: 608)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !196, file: !197, line: 1058, baseType: !932, size: 448, offset: 14016)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !919, line: 144, size: 448, elements: !933)
!933 = !{!934, !935, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !932, file: !919, line: 145, baseType: !866, size: 128, align: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !932, file: !919, line: 146, baseType: !678, size: 256, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !932, file: !919, line: 147, baseType: !7, size: 32, offset: 384)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !196, file: !197, line: 1064, baseType: !938, size: 64, offset: 14464)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !940)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !197, line: 1064, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !196, file: !197, line: 1067, baseType: !938, size: 64, offset: 14528)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !196, file: !197, line: 1070, baseType: !938, size: 64, offset: 14592)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !196, file: !197, line: 1074, baseType: !944, size: 64, offset: 14656)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !197, line: 1074, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !196, file: !197, line: 1084, baseType: !947, size: 128, offset: 14720)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 128, elements: !949)
!948 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!949 = !{!950}
!950 = !DISubrange(count: 16)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !196, file: !197, line: 1086, baseType: !952, size: 64, offset: 14848)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !197, line: 55, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !196, file: !197, line: 1089, baseType: !955, size: 64, offset: 14912)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !956, line: 12, size: 64, elements: !957)
!956 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!957 = !{!958}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !955, file: !956, line: 13, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !956, line: 8, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !196, file: !197, line: 1090, baseType: !962, size: 128, offset: 14976)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !963, line: 13, size: 128, elements: !964)
!963 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!964 = !{!965}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !962, file: !963, line: 14, baseType: !143, size: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !196, file: !197, line: 1097, baseType: !967, size: 64, offset: 15104)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !197, line: 50, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !196, file: !197, line: 1100, baseType: !970, size: 64, offset: 15168)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !197, line: 1100, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !196, file: !197, line: 1103, baseType: !973, size: 64, offset: 15232)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !197, line: 53, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !196, file: !197, line: 1107, baseType: !976, size: 64, offset: 15296)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !197, line: 56, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !196, file: !197, line: 1110, baseType: !979, size: 64, offset: 15360)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !919, line: 236, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !196, file: !197, line: 1111, baseType: !982, size: 64, offset: 15424)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !197, line: 67, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !196, file: !197, line: 1112, baseType: !985, size: 64, offset: 15488)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !986, line: 25, baseType: !987)
!986 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !986, line: 23, size: 64, elements: !988)
!988 = !{!989}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !987, file: !986, line: 24, baseType: !492, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !196, file: !197, line: 1113, baseType: !985, size: 64, offset: 15552)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !196, file: !197, line: 1115, baseType: !985, size: 64, offset: 15616)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !196, file: !197, line: 1116, baseType: !993, size: 192, offset: 15680)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !994, line: 32, size: 192, elements: !995)
!994 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !993, file: !994, line: 33, baseType: !143, size: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !993, file: !994, line: 34, baseType: !985, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !196, file: !197, line: 1117, baseType: !136, size: 64, offset: 15872)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !196, file: !197, line: 1118, baseType: !1000, size: 64, offset: 15936)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 61, baseType: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !408, line: 72, baseType: !1002)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !408, line: 16, baseType: !136)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !196, file: !197, line: 1119, baseType: !7, size: 32, offset: 16000)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !196, file: !197, line: 1121, baseType: !869, size: 64, offset: 16064)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !196, file: !197, line: 1125, baseType: !1006, size: 64, offset: 16128)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !197, line: 43, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !196, file: !197, line: 1127, baseType: !1009, size: 32, offset: 16192)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !728, line: 23, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !728, line: 21, size: 32, elements: !1011)
!1011 = !{!1012}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1010, file: !728, line: 22, baseType: !1013, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !134, line: 37, baseType: !1014)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !408, line: 49, baseType: !7)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !196, file: !197, line: 1128, baseType: !7, size: 32, offset: 16224)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !196, file: !197, line: 1130, baseType: !1017, size: 128, offset: 16256)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1018, line: 37, size: 128, elements: !1019)
!1018 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1019 = !{!1020, !1021, !1022}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1017, file: !1018, line: 38, baseType: !46, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1017, file: !1018, line: 39, baseType: !217, size: 32, offset: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1017, file: !1018, line: 40, baseType: !1023, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1018, line: 24, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !196, file: !197, line: 1131, baseType: !1026, size: 256, offset: 16384)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1027, line: 12, size: 256, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1028 = !{!1029, !1031, !1032, !1033}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1026, file: !1027, line: 13, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1026, file: !1027, line: 14, baseType: !136, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1026, file: !1027, line: 15, baseType: !136, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1026, file: !1027, line: 16, baseType: !1034, size: 8, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !134, line: 35, baseType: !1035)
!1035 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !196, file: !197, line: 1134, baseType: !177, size: 64, offset: 16640)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !196, file: !197, line: 1135, baseType: !177, size: 64, offset: 16704)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !196, file: !197, line: 1138, baseType: !560, size: 32, offset: 16768)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !196, file: !197, line: 1141, baseType: !358, size: 32, offset: 16800)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !196, file: !197, line: 1143, baseType: !1041, size: 64, offset: 16832)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !197, line: 735, size: 64, elements: !1042)
!1042 = !{!1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1041, file: !197, line: 736, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !196, file: !197, line: 1147, baseType: !424, size: 128, offset: 16896)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !196, file: !197, line: 1149, baseType: !195, size: 64, offset: 17024)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !196, file: !197, line: 1151, baseType: !1048, size: 64, offset: 17088)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !197, line: 1151, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !196, file: !197, line: 1188, baseType: !135, size: 64, offset: 17152)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !196, file: !197, line: 1191, baseType: !1052, size: 64, offset: 17216)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !197, line: 44, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !196, file: !197, line: 1194, baseType: !1055, size: 64, offset: 17280)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !197, line: 45, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !196, file: !197, line: 1197, baseType: !1058, size: 64, offset: 17344)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !197, line: 61, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !196, file: !197, line: 1199, baseType: !1061, size: 64, offset: 17408)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !197, line: 52, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !196, file: !197, line: 1202, baseType: !1064, size: 64, offset: 17472)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !197, line: 48, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !196, file: !197, line: 1205, baseType: !136, size: 64, offset: 17536)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !196, file: !197, line: 1206, baseType: !1068, size: 64, offset: 17600)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !994, line: 14, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !994, line: 12, size: 384, elements: !1071)
!1071 = !{!1072}
!1072 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !994, line: 13, baseType: !1073, size: 384)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1070, file: !994, line: 13, size: 384, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1078}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1073, file: !994, line: 13, baseType: !46, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1073, file: !994, line: 13, baseType: !46, size: 32, offset: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1073, file: !994, line: 13, baseType: !46, size: 32, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1073, file: !994, line: 13, baseType: !1079, size: 256, offset: 128)
!1079 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1080, line: 37, size: 256, elements: !1081)
!1080 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1081 = !{!1082, !1087, !1100, !1106, !1116, !1143, !1148}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1079, file: !1080, line: 42, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1079, file: !1080, line: 39, size: 64, elements: !1084)
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1083, file: !1080, line: 40, baseType: !828, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1083, file: !1080, line: 41, baseType: !1014, size: 32, offset: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1079, file: !1080, line: 50, baseType: !1088, size: 192)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1079, file: !1080, line: 45, size: 192, elements: !1089)
!1089 = !{!1090, !1092, !1093, !1099}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1088, file: !1080, line: 46, baseType: !1091, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !408, line: 95, baseType: !46)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1088, file: !1080, line: 47, baseType: !46, size: 32, offset: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1088, file: !1080, line: 48, baseType: !1094, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1080, line: 11, baseType: !1095)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1080, line: 8, size: 64, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1095, file: !1080, line: 9, baseType: !46, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1095, file: !1080, line: 10, baseType: !135, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1088, file: !1080, line: 49, baseType: !46, size: 32, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1079, file: !1080, line: 57, baseType: !1101, size: 128)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1079, file: !1080, line: 53, size: 128, elements: !1102)
!1102 = !{!1103, !1104, !1105}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1101, file: !1080, line: 54, baseType: !828, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1101, file: !1080, line: 55, baseType: !1014, size: 32, offset: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1101, file: !1080, line: 56, baseType: !1094, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1079, file: !1080, line: 66, baseType: !1107, size: 256)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1079, file: !1080, line: 60, size: 256, elements: !1108)
!1108 = !{!1109, !1110, !1111, !1112, !1115}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1107, file: !1080, line: 61, baseType: !828, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1107, file: !1080, line: 62, baseType: !1014, size: 32, offset: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1107, file: !1080, line: 63, baseType: !46, size: 32, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1107, file: !1080, line: 64, baseType: !1113, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !408, line: 94, baseType: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !408, line: 15, baseType: !702)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1107, file: !1080, line: 65, baseType: !1113, size: 64, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1079, file: !1080, line: 105, baseType: !1117, size: 256)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1079, file: !1080, line: 69, size: 256, elements: !1118)
!1118 = !{!1119, !1120}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1117, file: !1080, line: 70, baseType: !135, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, scope: !1117, file: !1080, line: 79, baseType: !1121, size: 192, offset: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1117, file: !1080, line: 79, size: 192, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1132, !1137}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1121, file: !1080, line: 81, baseType: !46, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1121, file: !1080, line: 86, baseType: !719, size: 16)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1121, file: !1080, line: 92, baseType: !1126, size: 192)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1121, file: !1080, line: 88, size: 192, elements: !1127)
!1127 = !{!1128, !1130, !1131}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1126, file: !1080, line: 89, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 64, elements: !402)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1126, file: !1080, line: 90, baseType: !135, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1126, file: !1080, line: 91, baseType: !135, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1121, file: !1080, line: 97, baseType: !1133, size: 96)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1121, file: !1080, line: 94, size: 96, elements: !1134)
!1134 = !{!1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1133, file: !1080, line: 95, baseType: !1129, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1133, file: !1080, line: 96, baseType: !207, size: 32, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1121, file: !1080, line: 103, baseType: !1138, size: 128)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1121, file: !1080, line: 99, size: 128, elements: !1139)
!1139 = !{!1140, !1141, !1142}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1138, file: !1080, line: 100, baseType: !136, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1138, file: !1080, line: 101, baseType: !207, size: 32, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1138, file: !1080, line: 102, baseType: !207, size: 32, offset: 96)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1079, file: !1080, line: 111, baseType: !1144, size: 128)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1079, file: !1080, line: 108, size: 128, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1144, file: !1080, line: 109, baseType: !702, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1144, file: !1080, line: 110, baseType: !46, size: 32, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1079, file: !1080, line: 118, baseType: !1149, size: 128)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1079, file: !1080, line: 114, size: 128, elements: !1150)
!1150 = !{!1151, !1152, !1153}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1149, file: !1080, line: 115, baseType: !135, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1149, file: !1080, line: 116, baseType: !46, size: 32, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1149, file: !1080, line: 117, baseType: !7, size: 32, offset: 96)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !196, file: !197, line: 1208, baseType: !1155, size: 448, offset: 17664)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1156, line: 12, size: 448, elements: !1157)
!1156 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1163, !1164}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1155, file: !1156, line: 15, baseType: !177, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1155, file: !1156, line: 17, baseType: !177, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1155, file: !1156, line: 19, baseType: !177, size: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1155, file: !1156, line: 21, baseType: !177, size: 64, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1155, file: !1156, line: 29, baseType: !177, size: 64, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1155, file: !1156, line: 35, baseType: !177, size: 64, offset: 320)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1155, file: !1156, line: 44, baseType: !177, size: 64, offset: 384)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !196, file: !197, line: 1215, baseType: !177, size: 64, offset: 18112)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !196, file: !197, line: 1217, baseType: !177, size: 64, offset: 18176)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !196, file: !197, line: 1219, baseType: !177, size: 64, offset: 18240)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !196, file: !197, line: 1223, baseType: !1169, size: 64, offset: 18304)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1170, line: 99, baseType: !1171)
!1170 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1170, line: 99, size: 64, elements: !1172)
!1172 = !{!1173}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1171, file: !1170, line: 99, baseType: !492, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !196, file: !197, line: 1225, baseType: !1175, size: 32, offset: 18368)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !411, line: 275, baseType: !1176)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !411, line: 275, size: 32, elements: !1177)
!1177 = !{!1178}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1176, file: !411, line: 275, baseType: !415, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !196, file: !197, line: 1226, baseType: !46, size: 32, offset: 18400)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !196, file: !197, line: 1227, baseType: !46, size: 32, offset: 18432)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !196, file: !197, line: 1231, baseType: !1182, size: 64, offset: 18496)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !197, line: 1231, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !196, file: !197, line: 1233, baseType: !143, size: 128, offset: 18560)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !196, file: !197, line: 1240, baseType: !1186, size: 64, offset: 18688)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !197, line: 62, flags: DIFlagFwdDecl)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !196, file: !197, line: 1242, baseType: !1189, size: 64, offset: 18752)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !197, line: 1242, flags: DIFlagFwdDecl)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !196, file: !197, line: 1244, baseType: !143, size: 128, offset: 18816)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !196, file: !197, line: 1245, baseType: !1193, size: 64, offset: 18944)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !197, line: 51, flags: DIFlagFwdDecl)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !196, file: !197, line: 1246, baseType: !678, size: 256, offset: 19008)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !196, file: !197, line: 1247, baseType: !7, size: 32, offset: 19264)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !196, file: !197, line: 1250, baseType: !1198, size: 64, offset: 19328)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !197, line: 57, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !196, file: !197, line: 1251, baseType: !678, size: 256, offset: 19392)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !196, file: !197, line: 1252, baseType: !143, size: 128, offset: 19648)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !196, file: !197, line: 1259, baseType: !1203, size: 64, offset: 19776)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !197, line: 54, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !196, file: !197, line: 1260, baseType: !719, size: 16, offset: 19840)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !196, file: !197, line: 1261, baseType: !719, size: 16, offset: 19856)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !196, file: !197, line: 1314, baseType: !1208, size: 64, offset: 19904)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1210, line: 62, size: 256, align: 256, elements: !1211)
!1210 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1211 = !{!1212, !1213, !1214, !1215, !1216, !1217, !1218}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1209, file: !1210, line: 75, baseType: !207, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1209, file: !1210, line: 90, baseType: !207, size: 32, offset: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1209, file: !1210, line: 112, baseType: !178, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1209, file: !1210, line: 132, baseType: !207, size: 32, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1209, file: !1210, line: 140, baseType: !207, size: 32, offset: 160)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1209, file: !1210, line: 149, baseType: !207, size: 32, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1209, file: !1210, line: 154, baseType: !1219, offset: 224)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, elements: !745)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !196, file: !197, line: 1315, baseType: !206, size: 32, offset: 19968)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !196, file: !197, line: 1316, baseType: !206, size: 32, offset: 20000)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !196, file: !197, line: 1321, baseType: !136, size: 64, offset: 20032)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !196, file: !197, line: 1325, baseType: !46, size: 32, offset: 20096)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !196, file: !197, line: 1326, baseType: !46, size: 32, offset: 20128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !196, file: !197, line: 1327, baseType: !46, size: 32, offset: 20160)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !196, file: !197, line: 1328, baseType: !46, size: 32, offset: 20192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !196, file: !197, line: 1329, baseType: !866, size: 128, align: 64, offset: 20224)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !196, file: !197, line: 1332, baseType: !1229, size: 128, offset: 20352)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1230, line: 51, size: 128, elements: !1231)
!1230 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1231 = !{!1232, !1237, !1238}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1229, file: !1230, line: 60, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1234, line: 7, size: 64, elements: !1235)
!1234 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1235 = !{!1236}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1233, file: !1234, line: 12, baseType: !489, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1229, file: !1230, line: 63, baseType: !1034, size: 8, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1229, file: !1230, line: 70, baseType: !1034, size: 8, offset: 72)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !196, file: !197, line: 1335, baseType: !1240, size: 64, offset: 20480)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !197, line: 59, flags: DIFlagFwdDecl)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !196, file: !197, line: 1337, baseType: !1243, size: 128, offset: 20544)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1230, line: 39, size: 128, elements: !1244)
!1244 = !{!1245, !1308, !1309}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1243, file: !1230, line: 40, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !543, line: 74, size: 512, align: 128, elements: !1248)
!1248 = !{!1249, !1250, !1302, !1307}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1247, file: !543, line: 75, baseType: !136, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, scope: !1247, file: !543, line: 83, baseType: !1251, size: 320, offset: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1247, file: !543, line: 83, size: 320, elements: !1252)
!1252 = !{!1253, !1276, !1290, !1294, !1301}
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !543, line: 84, baseType: !1254, size: 320)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1251, file: !543, line: 84, size: 320, elements: !1255)
!1255 = !{!1256, !1267, !1270, !1275}
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1254, file: !543, line: 90, baseType: !1257, size: 128)
!1257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1254, file: !543, line: 90, size: 128, elements: !1258)
!1258 = !{!1259, !1260, !1265, !1266}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1257, file: !543, line: 91, baseType: !143, size: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !543, line: 94, baseType: !1261, size: 128)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !543, line: 94, size: 128, elements: !1262)
!1262 = !{!1263, !1264}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1261, file: !543, line: 96, baseType: !135, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1261, file: !543, line: 98, baseType: !7, size: 32, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1257, file: !543, line: 102, baseType: !143, size: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1257, file: !543, line: 103, baseType: !143, size: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1254, file: !543, line: 106, baseType: !1268, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !543, line: 32, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1254, file: !543, line: 107, baseType: !1271, size: 64, offset: 192)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1254, file: !543, line: 107, size: 64, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1271, file: !543, line: 108, baseType: !136, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1271, file: !543, line: 109, baseType: !136, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1254, file: !543, line: 117, baseType: !136, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !543, line: 119, baseType: !1277, size: 320)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1251, file: !543, line: 119, size: 320, elements: !1278)
!1278 = !{!1279, !1280, !1283, !1284, !1285}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1277, file: !543, line: 124, baseType: !136, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1277, file: !543, line: 125, baseType: !1281, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !543, line: 125, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1277, file: !543, line: 126, baseType: !136, size: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1277, file: !543, line: 127, baseType: !136, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1277, file: !543, line: 128, baseType: !1286, size: 64, offset: 256)
!1286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1277, file: !543, line: 128, size: 64, elements: !1287)
!1287 = !{!1288, !1289}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1286, file: !543, line: 133, baseType: !136, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1286, file: !543, line: 138, baseType: !156, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !543, line: 141, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1251, file: !543, line: 141, size: 64, elements: !1292)
!1292 = !{!1293}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1291, file: !543, line: 142, baseType: !136, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !543, line: 144, baseType: !1295, size: 128)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1251, file: !543, line: 144, size: 128, elements: !1296)
!1296 = !{!1297, !1300}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1295, file: !543, line: 146, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !543, line: 146, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1295, file: !543, line: 147, baseType: !135, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1251, file: !543, line: 161, baseType: !866, size: 128, align: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1247, file: !543, line: 164, baseType: !1303, size: 32, offset: 384)
!1303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1247, file: !543, line: 164, size: 32, elements: !1304)
!1304 = !{!1305, !1306}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1303, file: !543, line: 169, baseType: !217, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1303, file: !543, line: 177, baseType: !7, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1247, file: !543, line: 181, baseType: !217, size: 32, offset: 416)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1243, file: !1230, line: 42, baseType: !207, size: 32, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1243, file: !1230, line: 43, baseType: !207, size: 32, offset: 96)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !196, file: !197, line: 1340, baseType: !1311, size: 64, offset: 20672)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !197, line: 69, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !196, file: !197, line: 1351, baseType: !46, size: 32, offset: 20736)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !196, file: !197, line: 1352, baseType: !46, size: 32, offset: 20768)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !196, file: !197, line: 1354, baseType: !136, size: 64, offset: 20800)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !196, file: !197, line: 1364, baseType: !177, size: 64, offset: 20864)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !196, file: !197, line: 1365, baseType: !177, size: 64, offset: 20928)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !196, file: !197, line: 1412, baseType: !136, size: 64, offset: 20992)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !196, file: !197, line: 1453, baseType: !1320, size: 64, offset: 21056)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !197, line: 1453, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !196, file: !197, line: 1457, baseType: !1323, size: 64, offset: 21120)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !90, line: 61, size: 576, elements: !1325)
!1325 = !{!1326, !1327, !1346, !1349, !1350, !1383, !1393}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1324, file: !90, line: 62, baseType: !89, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1324, file: !90, line: 64, baseType: !1328, size: 192, offset: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1324, file: !90, line: 64, size: 192, elements: !1329)
!1329 = !{!1330, !1341}
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !90, line: 65, baseType: !1331, size: 192)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1328, file: !90, line: 65, size: 192, elements: !1332)
!1332 = !{!1333, !1340}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1331, file: !90, line: 66, baseType: !1334, size: 128)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1335, line: 50, size: 128, elements: !1336)
!1335 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1336 = !{!1337, !1338, !1339}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1334, file: !1335, line: 52, baseType: !136, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1334, file: !1335, line: 54, baseType: !7, size: 32, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1334, file: !1335, line: 55, baseType: !7, size: 32, offset: 96)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1331, file: !90, line: 67, baseType: !136, size: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !90, line: 70, baseType: !1342, size: 192)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1328, file: !90, line: 70, size: 192, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1342, file: !90, line: 71, baseType: !866, size: 128, align: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1342, file: !90, line: 72, baseType: !136, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1324, file: !90, line: 76, baseType: !1347, size: 64, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !90, line: 76, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1324, file: !90, line: 77, baseType: !136, size: 64, offset: 320)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1324, file: !90, line: 79, baseType: !1351, size: 64, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1335, line: 25, size: 256, elements: !1353)
!1353 = !{!1354, !1360, !1364}
!1354 = !DIDerivedType(tag: DW_TAG_member, scope: !1352, file: !1335, line: 26, baseType: !1355, size: 128)
!1355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1352, file: !1335, line: 26, size: 128, elements: !1356)
!1356 = !{!1357, !1359}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1355, file: !1335, line: 27, baseType: !1358, size: 128)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 128, elements: !949)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1355, file: !1335, line: 28, baseType: !1358, size: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1352, file: !1335, line: 31, baseType: !1361, size: 64, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1363)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1335, line: 23, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, scope: !1352, file: !1335, line: 33, baseType: !1365, size: 64, offset: 192)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1352, file: !1335, line: 33, size: 64, elements: !1366)
!1366 = !{!1367, !1373, !1378}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1365, file: !1335, line: 38, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1365, file: !1335, line: 34, size: 64, elements: !1369)
!1369 = !{!1370, !1371, !1372}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1368, file: !1335, line: 35, baseType: !657, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1368, file: !1335, line: 36, baseType: !375, size: 8, offset: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1368, file: !1335, line: 37, baseType: !375, size: 8, offset: 40)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1365, file: !1335, line: 42, baseType: !1374, size: 16)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1365, file: !1335, line: 39, size: 16, elements: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1374, file: !1335, line: 40, baseType: !375, size: 8)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1374, file: !1335, line: 41, baseType: !375, size: 8, offset: 8)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1365, file: !1335, line: 46, baseType: !1379, size: 16)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1365, file: !1335, line: 43, size: 16, elements: !1380)
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1379, file: !1335, line: 44, baseType: !375, size: 8)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1379, file: !1335, line: 45, baseType: !375, size: 8, offset: 8)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1324, file: !90, line: 81, baseType: !1384, size: 64, offset: 448)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !90, line: 85, size: 384, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1390, !1391, !1392}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1385, file: !90, line: 86, baseType: !1347, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1385, file: !90, line: 87, baseType: !136, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1385, file: !90, line: 88, baseType: !136, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1385, file: !90, line: 89, baseType: !136, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1385, file: !90, line: 90, baseType: !1034, size: 8, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1385, file: !90, line: 92, baseType: !1384, size: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1324, file: !90, line: 82, baseType: !7, size: 32, offset: 512)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !196, file: !197, line: 1463, baseType: !1395, offset: 21184)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !197, line: 739, elements: !571)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !196, file: !197, line: 1470, baseType: !866, size: 128, align: 64, offset: 21184)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !196, file: !197, line: 1471, baseType: !212, size: 32, offset: 21312)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !196, file: !197, line: 1472, baseType: !46, size: 32, offset: 21344)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !196, file: !197, line: 1474, baseType: !195, size: 64, offset: 21376)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !196, file: !197, line: 1475, baseType: !1401, size: 320, offset: 21440)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1402, line: 11, size: 320, elements: !1403)
!1402 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1403 = !{!1404, !1405, !1406, !1411}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1401, file: !1402, line: 16, baseType: !852, size: 128)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1401, file: !1402, line: 17, baseType: !136, size: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1401, file: !1402, line: 18, baseType: !1407, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1401, file: !1402, line: 19, baseType: !206, size: 32, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !196, file: !197, line: 1478, baseType: !1413, size: 64, offset: 21760)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !197, line: 1478, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !196, file: !197, line: 1482, baseType: !212, size: 32, offset: 21824)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !196, file: !197, line: 1489, baseType: !135, size: 64, offset: 21888)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !196, file: !197, line: 1504, baseType: !135, size: 64, offset: 21952)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !196, file: !197, line: 1505, baseType: !178, size: 64, offset: 22016)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !196, file: !197, line: 1506, baseType: !177, size: 64, offset: 22080)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !196, file: !197, line: 1507, baseType: !178, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !196, file: !197, line: 1508, baseType: !178, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !196, file: !197, line: 1509, baseType: !178, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !196, file: !197, line: 1510, baseType: !866, size: 128, align: 64, offset: 22208)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !196, file: !197, line: 1511, baseType: !46, size: 32, offset: 22336)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !196, file: !197, line: 1515, baseType: !1426, size: 64, offset: 22400)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !230, line: 56, size: 64, elements: !1427)
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1426, file: !230, line: 57, baseType: !233, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !196, file: !197, line: 1518, baseType: !1426, size: 64, offset: 22464)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !196, file: !197, line: 1528, baseType: !866, size: 128, align: 64, offset: 22528)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !196, file: !197, line: 1552, baseType: !1432, size: 35328, offset: 23040)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1433, line: 430, size: 35328, elements: !1434)
!1433 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1434 = !{!1435, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1464, !1465, !1466, !1467, !1468, !1469, !1472, !1473, !1474, !1475}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1432, file: !1433, line: 432, baseType: !1436, size: 192)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1437, size: 192, elements: !927)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1438, line: 16, size: 64, elements: !1439)
!1438 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1437, file: !1438, line: 17, baseType: !240, size: 16)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1437, file: !1438, line: 18, baseType: !240, size: 16, offset: 16)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1437, file: !1438, line: 19, baseType: !240, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1437, file: !1438, line: 19, baseType: !240, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1437, file: !1438, line: 19, baseType: !240, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1437, file: !1438, line: 19, baseType: !240, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1437, file: !1438, line: 19, baseType: !240, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1437, file: !1438, line: 20, baseType: !240, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1437, file: !1438, line: 20, baseType: !240, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1437, file: !1438, line: 20, baseType: !240, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1437, file: !1438, line: 20, baseType: !240, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1437, file: !1438, line: 20, baseType: !240, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1437, file: !1438, line: 20, baseType: !240, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1432, file: !1433, line: 436, baseType: !136, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1432, file: !1433, line: 440, baseType: !242, size: 16, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1432, file: !1433, line: 441, baseType: !242, size: 16, offset: 272)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1432, file: !1433, line: 442, baseType: !242, size: 16, offset: 288)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1432, file: !1433, line: 443, baseType: !242, size: 16, offset: 304)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1432, file: !1433, line: 447, baseType: !136, size: 64, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1432, file: !1433, line: 448, baseType: !136, size: 64, offset: 384)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1432, file: !1433, line: 459, baseType: !1461, size: 256, offset: 448)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1462, size: 256, elements: !659)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1433, line: 428, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1432, file: !1433, line: 461, baseType: !136, size: 64, offset: 704)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1432, file: !1433, line: 463, baseType: !136, size: 64, offset: 768)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1432, file: !1433, line: 465, baseType: !136, size: 64, offset: 832)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1432, file: !1433, line: 466, baseType: !136, size: 64, offset: 896)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1432, file: !1433, line: 467, baseType: !136, size: 64, offset: 960)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1432, file: !1433, line: 473, baseType: !1470, size: 64, offset: 1024)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1433, line: 10, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1432, file: !1433, line: 480, baseType: !136, size: 64, offset: 1088)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1432, file: !1433, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1432, file: !1433, line: 491, baseType: !206, size: 32, offset: 1184)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1432, file: !1433, line: 501, baseType: !1476, size: 33792, offset: 1536)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1477, line: 448, size: 33792, elements: !1478)
!1477 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1478 = !{!1479, !1480, !1481, !1649, !1650, !1656, !1657}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1476, file: !1477, line: 461, baseType: !7, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1476, file: !1477, line: 468, baseType: !136, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1476, file: !1477, line: 476, baseType: !1482, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1477, line: 356, size: 33280, align: 512, elements: !1484)
!1484 = !{!1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1483, file: !1477, line: 358, baseType: !7, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1483, file: !1477, line: 361, baseType: !7, size: 32, offset: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1483, file: !1477, line: 364, baseType: !177, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1483, file: !1477, line: 367, baseType: !177, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1483, file: !1477, line: 370, baseType: !177, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1483, file: !1477, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1483, file: !1477, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1483, file: !1477, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1483, file: !1477, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1483, file: !1477, line: 397, baseType: !1495, size: 32768, offset: 512)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1477, line: 348, size: 32768, elements: !1496)
!1496 = !{!1497, !1512, !1553, !1630, !1645}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1495, file: !1477, line: 349, baseType: !1498, size: 896)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1477, line: 12, size: 896, elements: !1499)
!1499 = !{!1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1511}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1498, file: !1477, line: 13, baseType: !206, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1498, file: !1477, line: 14, baseType: !206, size: 32, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1498, file: !1477, line: 15, baseType: !206, size: 32, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1498, file: !1477, line: 16, baseType: !206, size: 32, offset: 96)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1498, file: !1477, line: 17, baseType: !206, size: 32, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1498, file: !1477, line: 18, baseType: !206, size: 32, offset: 160)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1498, file: !1477, line: 19, baseType: !206, size: 32, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1498, file: !1477, line: 22, baseType: !1508, size: 640, offset: 224)
!1508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 640, elements: !1509)
!1509 = !{!1510}
!1510 = !DISubrange(count: 20)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1498, file: !1477, line: 25, baseType: !206, size: 32, offset: 864)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1495, file: !1477, line: 350, baseType: !1513, size: 4096, align: 128)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1477, line: 34, size: 4096, align: 128, elements: !1514)
!1514 = !{!1515, !1516, !1517, !1518, !1519, !1534, !1535, !1536, !1540, !1544, !1548}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1513, file: !1477, line: 35, baseType: !240, size: 16)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1513, file: !1477, line: 36, baseType: !240, size: 16, offset: 16)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1513, file: !1477, line: 37, baseType: !240, size: 16, offset: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1513, file: !1477, line: 38, baseType: !240, size: 16, offset: 48)
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1513, file: !1477, line: 39, baseType: !1520, size: 128, offset: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1513, file: !1477, line: 39, size: 128, elements: !1521)
!1521 = !{!1522, !1527}
!1522 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !1477, line: 40, baseType: !1523, size: 128)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1520, file: !1477, line: 40, size: 128, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1523, file: !1477, line: 41, baseType: !177, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1523, file: !1477, line: 42, baseType: !177, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !1477, line: 44, baseType: !1528, size: 128)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1520, file: !1477, line: 44, size: 128, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1533}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1528, file: !1477, line: 45, baseType: !206, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1528, file: !1477, line: 46, baseType: !206, size: 32, offset: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1528, file: !1477, line: 47, baseType: !206, size: 32, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1528, file: !1477, line: 48, baseType: !206, size: 32, offset: 96)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1513, file: !1477, line: 51, baseType: !206, size: 32, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1513, file: !1477, line: 52, baseType: !206, size: 32, offset: 224)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1513, file: !1477, line: 55, baseType: !1537, size: 1024, offset: 256)
!1537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 1024, elements: !1538)
!1538 = !{!1539}
!1539 = !DISubrange(count: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1513, file: !1477, line: 58, baseType: !1541, size: 2048, offset: 1280)
!1541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 2048, elements: !1542)
!1542 = !{!1543}
!1543 = !DISubrange(count: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1513, file: !1477, line: 60, baseType: !1545, size: 384, offset: 3328)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 384, elements: !1546)
!1546 = !{!1547}
!1547 = !DISubrange(count: 12)
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1513, file: !1477, line: 62, baseType: !1549, size: 384, offset: 3712)
!1549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1513, file: !1477, line: 62, size: 384, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1549, file: !1477, line: 63, baseType: !1545, size: 384)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1549, file: !1477, line: 64, baseType: !1545, size: 384)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1495, file: !1477, line: 351, baseType: !1554, size: 1088)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1477, line: 79, size: 1088, elements: !1555)
!1555 = !{!1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1629}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1554, file: !1477, line: 80, baseType: !206, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1554, file: !1477, line: 81, baseType: !206, size: 32, offset: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1554, file: !1477, line: 82, baseType: !206, size: 32, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1554, file: !1477, line: 83, baseType: !206, size: 32, offset: 96)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1554, file: !1477, line: 84, baseType: !206, size: 32, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1554, file: !1477, line: 85, baseType: !206, size: 32, offset: 160)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1554, file: !1477, line: 86, baseType: !206, size: 32, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1554, file: !1477, line: 88, baseType: !1508, size: 640, offset: 224)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1554, file: !1477, line: 89, baseType: !375, size: 8, offset: 864)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1554, file: !1477, line: 90, baseType: !375, size: 8, offset: 872)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1554, file: !1477, line: 91, baseType: !375, size: 8, offset: 880)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1554, file: !1477, line: 92, baseType: !375, size: 8, offset: 888)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1554, file: !1477, line: 93, baseType: !375, size: 8, offset: 896)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1554, file: !1477, line: 94, baseType: !375, size: 8, offset: 904)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1554, file: !1477, line: 95, baseType: !1571, size: 64, offset: 960)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1573, line: 11, size: 128, elements: !1574)
!1573 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1572, file: !1573, line: 12, baseType: !702, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1572, file: !1573, line: 13, baseType: !1577, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1579, line: 103, size: 1344, elements: !1580)
!1579 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1609, !1610, !1611}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1578, file: !1579, line: 109, baseType: !136, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1578, file: !1579, line: 110, baseType: !136, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1578, file: !1579, line: 111, baseType: !136, size: 64, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1578, file: !1579, line: 112, baseType: !136, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1578, file: !1579, line: 113, baseType: !136, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1578, file: !1579, line: 114, baseType: !136, size: 64, offset: 320)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1578, file: !1579, line: 117, baseType: !136, size: 64, offset: 384)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1578, file: !1579, line: 118, baseType: !136, size: 64, offset: 448)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1578, file: !1579, line: 119, baseType: !136, size: 64, offset: 512)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1578, file: !1579, line: 120, baseType: !136, size: 64, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1578, file: !1579, line: 121, baseType: !136, size: 64, offset: 640)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1578, file: !1579, line: 122, baseType: !136, size: 64, offset: 704)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1578, file: !1579, line: 123, baseType: !136, size: 64, offset: 768)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1578, file: !1579, line: 124, baseType: !136, size: 64, offset: 832)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1578, file: !1579, line: 125, baseType: !136, size: 64, offset: 896)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1578, file: !1579, line: 139, baseType: !136, size: 64, offset: 960)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1578, file: !1579, line: 142, baseType: !136, size: 64, offset: 1024)
!1598 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !1579, line: 144, baseType: !1599, size: 64, offset: 1088)
!1599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !1579, line: 144, size: 64, elements: !1600)
!1600 = !{!1601, !1602, !1603}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1599, file: !1579, line: 146, baseType: !240, size: 16)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1599, file: !1579, line: 148, baseType: !177, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1599, file: !1579, line: 150, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1579, line: 59, size: 64, elements: !1605)
!1605 = !{!1606, !1607, !1608}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1604, file: !1579, line: 61, baseType: !177, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1604, file: !1579, line: 63, baseType: !177, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1604, file: !1579, line: 65, baseType: !177, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1578, file: !1579, line: 153, baseType: !136, size: 64, offset: 1152)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1578, file: !1579, line: 154, baseType: !136, size: 64, offset: 1216)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !1579, line: 156, baseType: !1612, size: 64, offset: 1280)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !1579, line: 156, size: 64, elements: !1613)
!1613 = !{!1614, !1615, !1616}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1612, file: !1579, line: 158, baseType: !240, size: 16)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1612, file: !1579, line: 160, baseType: !177, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1612, file: !1579, line: 162, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1579, line: 69, size: 64, elements: !1618)
!1618 = !{!1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1617, file: !1579, line: 71, baseType: !177, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1617, file: !1579, line: 73, baseType: !177, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1617, file: !1579, line: 75, baseType: !177, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1617, file: !1579, line: 77, baseType: !177, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1617, file: !1579, line: 80, baseType: !177, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1617, file: !1579, line: 83, baseType: !177, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1617, file: !1579, line: 86, baseType: !177, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1617, file: !1579, line: 88, baseType: !177, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1617, file: !1579, line: 93, baseType: !177, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1617, file: !1579, line: 100, baseType: !177, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1554, file: !1477, line: 96, baseType: !206, size: 32, offset: 1024)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1495, file: !1477, line: 352, baseType: !1631, size: 4608, align: 512)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1477, line: 333, size: 4608, align: 512, elements: !1632)
!1632 = !{!1633, !1634, !1643}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1631, file: !1477, line: 334, baseType: !1513, size: 4096, align: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1631, file: !1477, line: 335, baseType: !1635, size: 512, offset: 4096)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1477, line: 312, size: 512, elements: !1636)
!1636 = !{!1637, !1638, !1639}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1635, file: !1477, line: 313, baseType: !177, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1635, file: !1477, line: 314, baseType: !177, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1635, file: !1477, line: 315, baseType: !1640, size: 384, offset: 128)
!1640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 384, elements: !1641)
!1641 = !{!1642}
!1642 = !DISubrange(count: 6)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1631, file: !1477, line: 336, baseType: !1644, offset: 4608)
!1644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, elements: !745)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1495, file: !1477, line: 353, baseType: !1646, size: 32768)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 32768, elements: !1647)
!1647 = !{!1648}
!1648 = !DISubrange(count: 4096)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1476, file: !1477, line: 484, baseType: !1482, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1476, file: !1477, line: 491, baseType: !1651, size: 128, offset: 256)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1477, line: 404, size: 128, elements: !1652)
!1652 = !{!1653, !1654, !1655}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1651, file: !1477, line: 424, baseType: !177, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1651, file: !1477, line: 432, baseType: !7, size: 32, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1651, file: !1477, line: 440, baseType: !7, size: 32, offset: 96)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1476, file: !1477, line: 498, baseType: !1651, size: 128, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1476, file: !1477, line: 508, baseType: !1483, size: 33280, align: 512, offset: 512)
!1658 = !{!1659, !1661, !1663, !1665, !1667, !1669, !1671, !0, !1673, !1678, !1680, !1682, !1702, !1704, !1706, !1712}
!1659 = !DIGlobalVariableExpression(var: !1660, expr: !DIExpression())
!1660 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_async_schedule_node_domain205", scope: !2, file: !3, line: 225, type: !135, isLocal: true, isDefinition: true)
!1661 = !DIGlobalVariableExpression(var: !1662, expr: !DIExpression())
!1662 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_async_schedule_node206", scope: !2, file: !3, line: 244, type: !135, isLocal: true, isDefinition: true)
!1663 = !DIGlobalVariableExpression(var: !1664, expr: !DIExpression())
!1664 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_async_synchronize_full207", scope: !2, file: !3, line: 284, type: !135, isLocal: true, isDefinition: true)
!1665 = !DIGlobalVariableExpression(var: !1666, expr: !DIExpression())
!1666 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_async_synchronize_full_domain208", scope: !2, file: !3, line: 297, type: !135, isLocal: true, isDefinition: true)
!1667 = !DIGlobalVariableExpression(var: !1668, expr: !DIExpression())
!1668 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_async_synchronize_cookie_domain209", scope: !2, file: !3, line: 320, type: !135, isLocal: true, isDefinition: true)
!1669 = !DIGlobalVariableExpression(var: !1670, expr: !DIExpression())
!1670 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_async_synchronize_cookie210", scope: !2, file: !3, line: 333, type: !135, isLocal: true, isDefinition: true)
!1671 = !DIGlobalVariableExpression(var: !1672, expr: !DIExpression())
!1672 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_current_is_async211", scope: !2, file: !3, line: 346, type: !135, isLocal: true, isDefinition: true)
!1673 = !DIGlobalVariableExpression(var: !1674, expr: !DIExpression())
!1674 = distinct !DIGlobalVariable(scope: null, file: !97, line: 480, type: !1675, isLocal: true, isDefinition: true)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 168, elements: !1676)
!1676 = !{!1677}
!1677 = !DISubrange(count: 21)
!1678 = !DIGlobalVariableExpression(var: !1679, expr: !DIExpression())
!1679 = distinct !DIGlobalVariable(name: "async_lock", scope: !2, file: !3, line: 65, type: !560, isLocal: true, isDefinition: true)
!1680 = !DIGlobalVariableExpression(var: !1681, expr: !DIExpression())
!1681 = distinct !DIGlobalVariable(name: "next_cookie", scope: !2, file: !3, line: 58, type: !175, isLocal: true, isDefinition: true)
!1682 = !DIGlobalVariableExpression(var: !1683, expr: !DIExpression())
!1683 = distinct !DIGlobalVariable(name: "__key", scope: !1684, file: !3, line: 158, type: !1700, isLocal: true, isDefinition: true)
!1684 = distinct !DISubprogram(name: "__async_schedule_node_domain", scope: !3, file: !3, line: 148, type: !1685, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1687)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!175, !181, !135, !46, !187, !147}
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1699}
!1688 = !DILocalVariable(name: "func", arg: 1, scope: !1684, file: !3, line: 148, type: !181)
!1689 = !DILocalVariable(name: "data", arg: 2, scope: !1684, file: !3, line: 149, type: !135)
!1690 = !DILocalVariable(name: "node", arg: 3, scope: !1684, file: !3, line: 149, type: !46)
!1691 = !DILocalVariable(name: "domain", arg: 4, scope: !1684, file: !3, line: 150, type: !187)
!1692 = !DILocalVariable(name: "entry", arg: 5, scope: !1684, file: !3, line: 151, type: !147)
!1693 = !DILocalVariable(name: "newcookie", scope: !1684, file: !3, line: 153, type: !175)
!1694 = !DILocalVariable(name: "flags", scope: !1684, file: !3, line: 154, type: !136)
!1695 = !DILocalVariable(name: "__dummy", scope: !1696, file: !3, line: 163, type: !136)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 163, column: 2)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 163, column: 2)
!1698 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 163, column: 2)
!1699 = !DILocalVariable(name: "__dummy2", scope: !1696, file: !3, line: 163, type: !136)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1701, line: 206, elements: !571)
!1701 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1702 = !DIGlobalVariableExpression(var: !1703, expr: !DIExpression())
!1703 = distinct !DIGlobalVariable(name: "async_global_pending", scope: !2, file: !3, line: 63, type: !143, isLocal: true, isDefinition: true)
!1704 = !DIGlobalVariableExpression(var: !1705, expr: !DIExpression())
!1705 = distinct !DIGlobalVariable(name: "async_dfl_domain", scope: !2, file: !3, line: 64, type: !188, isLocal: true, isDefinition: true)
!1706 = !DIGlobalVariableExpression(var: !1707, expr: !DIExpression())
!1707 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !1708, file: !1709, line: 112, type: !135, isLocal: true, isDefinition: true)
!1708 = distinct !DISubprogram(name: "might_resched", scope: !1709, file: !1709, line: 110, type: !1710, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1709 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!1710 = !DISubroutineType(types: !1711)
!1711 = !{null}
!1712 = !DIGlobalVariableExpression(var: !1713, expr: !DIExpression())
!1713 = distinct !DIGlobalVariable(name: "async_done", scope: !2, file: !3, line: 77, type: !861, isLocal: true, isDefinition: true)
!1714 = !{i32 7, !"Dwarf Version", i32 5}
!1715 = !{i32 2, !"Debug Info Version", i32 3}
!1716 = !{i32 1, !"wchar_size", i32 2}
!1717 = !{i32 8, !"cf-protection-branch", i32 1}
!1718 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1719 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1720 = !{i32 1, !"Code Model", i32 2}
!1721 = !{i32 1, !"override-stack-alignment", i32 8}
!1722 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1723 = distinct !DISubprogram(name: "async_schedule_node_domain", scope: !3, file: !3, line: 198, type: !1724, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!175, !181, !135, !46, !187}
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1740}
!1727 = !DILocalVariable(name: "func", arg: 1, scope: !1723, file: !3, line: 198, type: !181)
!1728 = !DILocalVariable(name: "data", arg: 2, scope: !1723, file: !3, line: 198, type: !135)
!1729 = !DILocalVariable(name: "node", arg: 3, scope: !1723, file: !3, line: 199, type: !46)
!1730 = !DILocalVariable(name: "domain", arg: 4, scope: !1723, file: !3, line: 199, type: !187)
!1731 = !DILocalVariable(name: "entry", scope: !1723, file: !3, line: 201, type: !147)
!1732 = !DILocalVariable(name: "flags", scope: !1723, file: !3, line: 202, type: !136)
!1733 = !DILocalVariable(name: "newcookie", scope: !1723, file: !3, line: 203, type: !175)
!1734 = !DILocalVariable(name: "__dummy", scope: !1735, file: !3, line: 214, type: !136)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 214, column: 3)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 214, column: 3)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 214, column: 3)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 212, column: 54)
!1739 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 212, column: 6)
!1740 = !DILocalVariable(name: "__dummy2", scope: !1735, file: !3, line: 214, type: !136)
!1741 = !DILocation(line: 198, column: 56, scope: !1723)
!1742 = !DILocation(line: 198, column: 68, scope: !1723)
!1743 = !DILocation(line: 199, column: 12, scope: !1723)
!1744 = !DILocation(line: 199, column: 39, scope: !1723)
!1745 = !DILocation(line: 201, column: 2, scope: !1723)
!1746 = !DILocation(line: 201, column: 22, scope: !1723)
!1747 = !DILocation(line: 202, column: 2, scope: !1723)
!1748 = !DILocation(line: 202, column: 16, scope: !1723)
!1749 = !DILocation(line: 203, column: 2, scope: !1723)
!1750 = !DILocation(line: 203, column: 17, scope: !1723)
!1751 = !DILocation(line: 206, column: 10, scope: !1723)
!1752 = !DILocation(line: 206, column: 8, scope: !1723)
!1753 = !DILocation(line: 212, column: 7, scope: !1739)
!1754 = !DILocation(line: 212, column: 13, scope: !1739)
!1755 = !DILocation(line: 212, column: 16, scope: !1739)
!1756 = !DILocation(line: 212, column: 42, scope: !1739)
!1757 = !DILocation(line: 212, column: 6, scope: !1723)
!1758 = !DILocation(line: 213, column: 9, scope: !1738)
!1759 = !DILocation(line: 213, column: 3, scope: !1738)
!1760 = !DILocation(line: 214, column: 3, scope: !1738)
!1761 = !DILocation(line: 214, column: 3, scope: !1737)
!1762 = !DILocation(line: 214, column: 3, scope: !1735)
!1763 = !DILocation(line: 214, column: 3, scope: !1736)
!1764 = !DILocation(line: 215, column: 26, scope: !1738)
!1765 = !DILocation(line: 215, column: 13, scope: !1738)
!1766 = !DILocation(line: 216, column: 39, scope: !1738)
!1767 = !DILocation(line: 216, column: 3, scope: !1738)
!1768 = !DILocation(line: 219, column: 3, scope: !1738)
!1769 = !DILocation(line: 219, column: 8, scope: !1738)
!1770 = !DILocation(line: 219, column: 14, scope: !1738)
!1771 = !DILocation(line: 220, column: 10, scope: !1738)
!1772 = !DILocation(line: 220, column: 3, scope: !1738)
!1773 = !DILocation(line: 223, column: 38, scope: !1723)
!1774 = !DILocation(line: 223, column: 44, scope: !1723)
!1775 = !DILocation(line: 223, column: 50, scope: !1723)
!1776 = !DILocation(line: 223, column: 56, scope: !1723)
!1777 = !DILocation(line: 223, column: 64, scope: !1723)
!1778 = !DILocation(line: 223, column: 9, scope: !1723)
!1779 = !DILocation(line: 223, column: 2, scope: !1723)
!1780 = !DILocation(line: 224, column: 1, scope: !1723)
!1781 = distinct !DISubprogram(name: "kzalloc", scope: !97, file: !97, line: 719, type: !1782, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1784)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!135, !1000, !133}
!1784 = !{!1785, !1786}
!1785 = !DILocalVariable(name: "size", arg: 1, scope: !1781, file: !97, line: 719, type: !1000)
!1786 = !DILocalVariable(name: "flags", arg: 2, scope: !1781, file: !97, line: 719, type: !133)
!1787 = !DILocation(line: 719, column: 52, scope: !1781)
!1788 = !DILocation(line: 719, column: 64, scope: !1781)
!1789 = !DILocation(line: 721, column: 17, scope: !1781)
!1790 = !DILocation(line: 721, column: 23, scope: !1781)
!1791 = !DILocation(line: 721, column: 29, scope: !1781)
!1792 = !DILocation(line: 721, column: 9, scope: !1781)
!1793 = !DILocation(line: 721, column: 2, scope: !1781)
!1794 = distinct !DISubprogram(name: "atomic_read", scope: !1795, file: !1795, line: 30, type: !1796, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1800)
!1795 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!46, !1798}
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!1800 = !{!1801}
!1801 = !DILocalVariable(name: "v", arg: 1, scope: !1794, file: !1795, line: 30, type: !1798)
!1802 = !DILocation(line: 30, column: 29, scope: !1794)
!1803 = !DILocation(line: 32, column: 25, scope: !1794)
!1804 = !DILocation(line: 32, column: 2, scope: !1794)
!1805 = !DILocation(line: 33, column: 25, scope: !1794)
!1806 = !DILocation(line: 33, column: 9, scope: !1794)
!1807 = !DILocation(line: 33, column: 2, scope: !1794)
!1808 = !DISubprogram(name: "kfree", scope: !97, file: !97, line: 227, type: !1809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{null, !699}
!1811 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !1812, file: !1812, line: 32, type: !1813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1812 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!136, !1815}
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!1816 = distinct !DISubprogram(name: "spinlock_check", scope: !1817, file: !1817, line: 324, type: !1818, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1821)
!1817 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!1815, !1820}
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!1821 = !{!1822}
!1822 = !DILocalVariable(name: "lock", arg: 1, scope: !1816, file: !1817, line: 324, type: !1820)
!1823 = !DILocation(line: 324, column: 67, scope: !1816)
!1824 = !DILocation(line: 326, column: 10, scope: !1816)
!1825 = !DILocation(line: 326, column: 16, scope: !1816)
!1826 = !DILocation(line: 326, column: 2, scope: !1816)
!1827 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !1817, file: !1817, line: 404, type: !1828, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1830)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{null, !1820, !136}
!1830 = !{!1831, !1832, !1833, !1836}
!1831 = !DILocalVariable(name: "lock", arg: 1, scope: !1827, file: !1817, line: 404, type: !1820)
!1832 = !DILocalVariable(name: "flags", arg: 2, scope: !1827, file: !1817, line: 404, type: !136)
!1833 = !DILocalVariable(name: "__dummy", scope: !1834, file: !1817, line: 406, type: !136)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !1817, line: 406, column: 2)
!1835 = distinct !DILexicalBlock(scope: !1827, file: !1817, line: 406, column: 2)
!1836 = !DILocalVariable(name: "__dummy2", scope: !1834, file: !1817, line: 406, type: !136)
!1837 = !DILocation(line: 404, column: 64, scope: !1827)
!1838 = !DILocation(line: 404, column: 84, scope: !1827)
!1839 = !DILocation(line: 406, column: 2, scope: !1827)
!1840 = !DILocation(line: 406, column: 2, scope: !1834)
!1841 = !DILocation(line: 406, column: 2, scope: !1835)
!1842 = !DILocation(line: 407, column: 1, scope: !1827)
!1843 = !DILocation(line: 148, column: 65, scope: !1684)
!1844 = !DILocation(line: 149, column: 16, scope: !1684)
!1845 = !DILocation(line: 149, column: 26, scope: !1684)
!1846 = !DILocation(line: 150, column: 31, scope: !1684)
!1847 = !DILocation(line: 151, column: 30, scope: !1684)
!1848 = !DILocation(line: 153, column: 2, scope: !1684)
!1849 = !DILocation(line: 153, column: 17, scope: !1684)
!1850 = !DILocation(line: 154, column: 2, scope: !1684)
!1851 = !DILocation(line: 154, column: 16, scope: !1684)
!1852 = !DILocation(line: 156, column: 18, scope: !1684)
!1853 = !DILocation(line: 156, column: 25, scope: !1684)
!1854 = !DILocation(line: 156, column: 2, scope: !1684)
!1855 = !DILocation(line: 157, column: 18, scope: !1684)
!1856 = !DILocation(line: 157, column: 25, scope: !1684)
!1857 = !DILocation(line: 157, column: 2, scope: !1684)
!1858 = !DILocation(line: 158, column: 2, scope: !1684)
!1859 = !DILocation(line: 158, column: 2, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 158, column: 2)
!1861 = !DILocation(line: 158, column: 2, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 158, column: 2)
!1863 = !DILocation(line: 159, column: 16, scope: !1684)
!1864 = !DILocation(line: 159, column: 2, scope: !1684)
!1865 = !DILocation(line: 159, column: 9, scope: !1684)
!1866 = !DILocation(line: 159, column: 14, scope: !1684)
!1867 = !DILocation(line: 160, column: 16, scope: !1684)
!1868 = !DILocation(line: 160, column: 2, scope: !1684)
!1869 = !DILocation(line: 160, column: 9, scope: !1684)
!1870 = !DILocation(line: 160, column: 14, scope: !1684)
!1871 = !DILocation(line: 161, column: 18, scope: !1684)
!1872 = !DILocation(line: 161, column: 2, scope: !1684)
!1873 = !DILocation(line: 161, column: 9, scope: !1684)
!1874 = !DILocation(line: 161, column: 16, scope: !1684)
!1875 = !DILocation(line: 163, column: 2, scope: !1684)
!1876 = !DILocation(line: 163, column: 2, scope: !1698)
!1877 = !DILocation(line: 163, column: 2, scope: !1696)
!1878 = !DILocation(line: 163, column: 2, scope: !1697)
!1879 = !DILocation(line: 166, column: 41, scope: !1684)
!1880 = !DILocation(line: 166, column: 14, scope: !1684)
!1881 = !DILocation(line: 166, column: 21, scope: !1684)
!1882 = !DILocation(line: 166, column: 28, scope: !1684)
!1883 = !DILocation(line: 166, column: 12, scope: !1684)
!1884 = !DILocation(line: 168, column: 17, scope: !1684)
!1885 = !DILocation(line: 168, column: 24, scope: !1684)
!1886 = !DILocation(line: 168, column: 38, scope: !1684)
!1887 = !DILocation(line: 168, column: 46, scope: !1684)
!1888 = !DILocation(line: 168, column: 2, scope: !1684)
!1889 = !DILocation(line: 169, column: 6, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 169, column: 6)
!1891 = !DILocation(line: 169, column: 14, scope: !1890)
!1892 = !DILocation(line: 169, column: 6, scope: !1684)
!1893 = !DILocation(line: 170, column: 18, scope: !1890)
!1894 = !DILocation(line: 170, column: 25, scope: !1890)
!1895 = !DILocation(line: 170, column: 3, scope: !1890)
!1896 = !DILocation(line: 172, column: 2, scope: !1684)
!1897 = !DILocation(line: 173, column: 38, scope: !1684)
!1898 = !DILocation(line: 173, column: 2, scope: !1684)
!1899 = !DILocation(line: 176, column: 18, scope: !1684)
!1900 = !DILocation(line: 176, column: 24, scope: !1684)
!1901 = !DILocation(line: 176, column: 44, scope: !1684)
!1902 = !DILocation(line: 176, column: 51, scope: !1684)
!1903 = !DILocation(line: 176, column: 2, scope: !1684)
!1904 = !DILocation(line: 178, column: 9, scope: !1684)
!1905 = !DILocation(line: 179, column: 1, scope: !1684)
!1906 = !DILocation(line: 178, column: 2, scope: !1684)
!1907 = distinct !DISubprogram(name: "async_schedule_node", scope: !3, file: !3, line: 240, type: !1908, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!175, !181, !135, !46}
!1910 = !{!1911, !1912, !1913}
!1911 = !DILocalVariable(name: "func", arg: 1, scope: !1907, file: !3, line: 240, type: !181)
!1912 = !DILocalVariable(name: "data", arg: 2, scope: !1907, file: !3, line: 240, type: !135)
!1913 = !DILocalVariable(name: "node", arg: 3, scope: !1907, file: !3, line: 240, type: !46)
!1914 = !DILocation(line: 240, column: 49, scope: !1907)
!1915 = !DILocation(line: 240, column: 61, scope: !1907)
!1916 = !DILocation(line: 240, column: 71, scope: !1907)
!1917 = !DILocation(line: 242, column: 36, scope: !1907)
!1918 = !DILocation(line: 242, column: 42, scope: !1907)
!1919 = !DILocation(line: 242, column: 48, scope: !1907)
!1920 = !DILocation(line: 242, column: 9, scope: !1907)
!1921 = !DILocation(line: 242, column: 2, scope: !1907)
!1922 = distinct !DISubprogram(name: "async_schedule_dev_nocall", scope: !3, file: !3, line: 258, type: !1923, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2962)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!1034, !181, !1925}
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !1927)
!1927 = !{!1928, !2272, !2273, !2276, !2277, !2330, !2743, !2744, !2745, !2746, !2747, !2754, !2846, !2859, !2869, !2873, !2875, !2876, !2877, !2881, !2888, !2889, !2892, !2895, !2899, !2902, !2903, !2906, !2907, !2908, !2909, !2939, !2940, !2941, !2944, !2947, !2956, !2957, !2958, !2959, !2960, !2961}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1926, file: !26, line: 706, baseType: !1929, size: 512)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1930, line: 64, size: 512, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1931 = !{!1932, !1935, !1936, !1938, !1980, !2151, !2262, !2267, !2268, !2269, !2270, !2271}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1929, file: !1930, line: 65, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !948)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1929, file: !1930, line: 66, baseType: !143, size: 128, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1929, file: !1930, line: 67, baseType: !1937, size: 64, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1929, file: !1930, line: 68, baseType: !1939, size: 64, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1930, line: 168, size: 768, elements: !1941)
!1941 = !{!1942, !1943, !1944, !1945}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1940, file: !1930, line: 169, baseType: !143, size: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1940, file: !1930, line: 170, baseType: !560, size: 32, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1940, file: !1930, line: 171, baseType: !1929, size: 512, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1940, file: !1930, line: 172, baseType: !1946, size: 64, offset: 704)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1948)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1930, line: 133, size: 192, elements: !1949)
!1949 = !{!1950, !1957, !1962}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1948, file: !1930, line: 134, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1952)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!46, !1955}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1929)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1948, file: !1930, line: 135, baseType: !1958, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1959)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!1933, !1955}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1948, file: !1930, line: 136, baseType: !1963, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1964)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!46, !1955, !1967}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1930, line: 125, size: 20736, elements: !1969)
!1969 = !{!1970, !1972, !1974, !1975, !1979}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1968, file: !1930, line: 126, baseType: !1971, size: 192)
!1971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1030, size: 192, elements: !927)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1968, file: !1930, line: 127, baseType: !1973, size: 4096, offset: 192)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1030, size: 4096, elements: !1542)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1968, file: !1930, line: 128, baseType: !46, size: 32, offset: 4288)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1968, file: !1930, line: 129, baseType: !1976, size: 16384, offset: 4320)
!1976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 16384, elements: !1977)
!1977 = !{!1978}
!1978 = !DISubrange(count: 2048)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1968, file: !1930, line: 130, baseType: !46, size: 32, offset: 20704)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1929, file: !1930, line: 69, baseType: !1981, size: 64, offset: 320)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1983)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1930, line: 116, size: 384, elements: !1984)
!1984 = !{!1985, !1989, !2011, !2104, !2135, !2139}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1983, file: !1930, line: 117, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !1937}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1983, file: !1930, line: 118, baseType: !1990, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1992)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1993, line: 254, size: 128, elements: !1994)
!1993 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1994 = !{!1995, !2007}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1992, file: !1993, line: 255, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!1999, !1937, !2001, !1030}
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !134, line: 66, baseType: !2000)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !408, line: 73, baseType: !1114)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1993, line: 30, size: 128, elements: !2003)
!2003 = !{!2004, !2005}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2002, file: !1993, line: 31, baseType: !1933, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2002, file: !1993, line: 32, baseType: !2006, size: 16, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !134, line: 24, baseType: !242)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1992, file: !1993, line: 256, baseType: !2008, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!1999, !1937, !2001, !1933, !1000}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1983, file: !1930, line: 119, baseType: !2012, size: 64, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2015)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1993, line: 84, size: 320, elements: !2016)
!2016 = !{!2017, !2018, !2022, !2100, !2102}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2015, file: !1993, line: 85, baseType: !1933, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2015, file: !1993, line: 86, baseType: !2019, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!2006, !1937, !2001, !46}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2015, file: !1993, line: 88, baseType: !2023, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!2006, !1937, !2026, !46}
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1993, line: 175, size: 512, elements: !2028)
!2028 = !{!2029, !2030, !2031, !2032, !2036, !2042, !2043}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2027, file: !1993, line: 176, baseType: !2002, size: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2027, file: !1993, line: 177, baseType: !1000, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2027, file: !1993, line: 178, baseType: !135, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !2027, file: !1993, line: 179, baseType: !2033, size: 64, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!1268}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2027, file: !1993, line: 180, baseType: !2037, size: 64, offset: 320)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!1999, !578, !1937, !2026, !1030, !2040, !1000}
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !134, line: 52, baseType: !2041)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !408, line: 88, baseType: !166)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2027, file: !1993, line: 182, baseType: !2037, size: 64, offset: 384)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2027, file: !1993, line: 184, baseType: !2044, size: 64, offset: 448)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!46, !578, !1937, !2026, !2047}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !543, line: 625, size: 1344, elements: !2049)
!2049 = !{!2050, !2059, !2060, !2066, !2073, !2074, !2079, !2080, !2085, !2086, !2089, !2093, !2094, !2095, !2096, !2097, !2098}
!2050 = !DIDerivedType(tag: DW_TAG_member, scope: !2048, file: !543, line: 628, baseType: !2051, size: 128)
!2051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !543, line: 628, size: 128, elements: !2052)
!2052 = !{!2053, !2058}
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2051, file: !543, line: 629, baseType: !2054, size: 128)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2051, file: !543, line: 629, size: 128, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2054, file: !543, line: 631, baseType: !136, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2054, file: !543, line: 632, baseType: !136, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2051, file: !543, line: 635, baseType: !866, size: 128, align: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2048, file: !543, line: 639, baseType: !541, size: 64, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2048, file: !543, line: 640, baseType: !2061, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !580, line: 297, baseType: !2062)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !580, line: 297, size: 64, elements: !2063)
!2063 = !{!2064}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2062, file: !580, line: 297, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !593, line: 19, baseType: !136)
!2066 = !DIDerivedType(tag: DW_TAG_member, scope: !2048, file: !543, line: 646, baseType: !2067, size: 64, offset: 256)
!2067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2048, file: !543, line: 646, size: 64, elements: !2068)
!2068 = !{!2069, !2072}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2067, file: !543, line: 647, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2071)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !543, line: 542, baseType: !136)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2067, file: !543, line: 648, baseType: !2071, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2048, file: !543, line: 666, baseType: !46, size: 32, offset: 320)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2048, file: !543, line: 667, baseType: !2075, size: 64, offset: 384)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !543, line: 579, size: 320, elements: !2077)
!2077 = !{!2078}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2076, file: !543, line: 580, baseType: !607, size: 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2048, file: !543, line: 670, baseType: !1034, size: 8, offset: 448)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2048, file: !543, line: 681, baseType: !2081, size: 256, offset: 512)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2048, file: !543, line: 678, size: 256, elements: !2082)
!2082 = !{!2083, !2084}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2081, file: !543, line: 679, baseType: !263, size: 192, align: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2081, file: !543, line: 680, baseType: !136, size: 64, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2048, file: !543, line: 689, baseType: !143, size: 128, offset: 768)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2048, file: !543, line: 691, baseType: !2087, size: 64, offset: 896)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !543, line: 691, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2048, file: !543, line: 694, baseType: !2090, size: 64, offset: 960)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2092)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !543, line: 694, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2048, file: !543, line: 697, baseType: !136, size: 64, offset: 1024)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2048, file: !543, line: 699, baseType: !578, size: 64, offset: 1088)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2048, file: !543, line: 700, baseType: !135, size: 64, offset: 1152)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2048, file: !543, line: 711, baseType: !156, size: 64, offset: 1216)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2048, file: !543, line: 717, baseType: !1203, size: 64, offset: 1280)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2048, file: !543, line: 722, baseType: !2099, offset: 1344)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !543, line: 570, elements: !571)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2015, file: !1993, line: 90, baseType: !2101, size: 64, offset: 192)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2015, file: !1993, line: 91, baseType: !2103, size: 64, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1983, file: !1930, line: 120, baseType: !2105, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!2108, !1955}
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2110)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !2111)
!2111 = !{!2112, !2113, !2117, !2121, !2127, !2131}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2110, file: !6, line: 40, baseType: !5, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2110, file: !6, line: 41, baseType: !2114, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!1034}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2110, file: !6, line: 42, baseType: !2118, size: 64, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!135}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2110, file: !6, line: 43, baseType: !2122, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!699, !2125}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2110, file: !6, line: 44, baseType: !2128, size: 64, offset: 256)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!699}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2110, file: !6, line: 45, baseType: !2132, size: 64, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !135}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1983, file: !1930, line: 121, baseType: !2136, size: 64, offset: 256)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!699, !1955}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1983, file: !1930, line: 122, baseType: !2140, size: 64, offset: 320)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{null, !1955, !2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !728, line: 28, baseType: !2146)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !728, line: 26, size: 32, elements: !2147)
!2147 = !{!2148}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2146, file: !728, line: 27, baseType: !2149, size: 32)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !134, line: 38, baseType: !2150)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !408, line: 50, baseType: !7)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1929, file: !1930, line: 70, baseType: !2152, size: 64, offset: 384)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2154, line: 190, size: 1152, elements: !2155)
!2154 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2254, !2255, !2256, !2257, !2258, !2261}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2153, file: !2154, line: 191, baseType: !217, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2153, file: !2154, line: 192, baseType: !217, size: 32, offset: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2153, file: !2154, line: 202, baseType: !2152, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2153, file: !2154, line: 203, baseType: !1933, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2153, file: !2154, line: 205, baseType: !263, size: 192, align: 64, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2153, file: !2154, line: 207, baseType: !699, size: 64, offset: 384)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2153, file: !2154, line: 208, baseType: !7, size: 32, offset: 448)
!2163 = !DIDerivedType(tag: DW_TAG_member, scope: !2153, file: !2154, line: 209, baseType: !2164, size: 256, offset: 512)
!2164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2153, file: !2154, line: 209, size: 256, elements: !2165)
!2165 = !{!2166, !2175, !2179}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2164, file: !2154, line: 210, baseType: !2167, size: 256)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2154, line: 153, size: 256, elements: !2168)
!2168 = !{!2169, !2170, !2171, !2174}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2167, file: !2154, line: 154, baseType: !136, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2167, file: !2154, line: 156, baseType: !427, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2167, file: !2154, line: 162, baseType: !2172, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2154, line: 162, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2167, file: !2154, line: 167, baseType: !136, size: 64, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2164, file: !2154, line: 211, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2154, line: 170, size: 64, elements: !2177)
!2177 = !{!2178}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2176, file: !2154, line: 171, baseType: !2152, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2164, file: !2154, line: 212, baseType: !2180, size: 256)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2154, line: 174, size: 256, elements: !2181)
!2181 = !{!2182, !2249, !2252, !2253}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2180, file: !2154, line: 175, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2185)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2154, line: 271, size: 768, elements: !2186)
!2186 = !{!2187, !2209, !2213, !2217, !2222, !2226, !2230, !2234, !2235, !2236, !2237, !2245}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2185, file: !2154, line: 276, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!46, !2191}
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2154, line: 251, size: 1216, elements: !2193)
!2193 = !{!2194, !2195, !2196, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2192, file: !2154, line: 253, baseType: !2152, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2192, file: !2154, line: 254, baseType: !578, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2192, file: !2154, line: 255, baseType: !2197, size: 64, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !197, line: 66, flags: DIFlagFwdDecl)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2192, file: !2154, line: 256, baseType: !135, size: 64, offset: 192)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2192, file: !2154, line: 259, baseType: !678, size: 256, offset: 256)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2192, file: !2154, line: 260, baseType: !678, size: 256, offset: 512)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2192, file: !2154, line: 261, baseType: !46, size: 32, offset: 768)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2192, file: !2154, line: 262, baseType: !143, size: 128, offset: 832)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2192, file: !2154, line: 263, baseType: !1030, size: 64, offset: 960)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2192, file: !2154, line: 265, baseType: !1000, size: 64, offset: 1024)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2192, file: !2154, line: 266, baseType: !1034, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2192, file: !2154, line: 267, baseType: !1034, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2192, file: !2154, line: 268, baseType: !2090, size: 64, offset: 1152)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2185, file: !2154, line: 277, baseType: !2210, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{null, !2191}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2185, file: !2154, line: 290, baseType: !2214, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!46, !2197, !135}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2185, file: !2154, line: 292, baseType: !2218, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!135, !2197, !2221}
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2185, file: !2154, line: 293, baseType: !2223, size: 64, offset: 256)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!135, !2197, !135, !2221}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2185, file: !2154, line: 294, baseType: !2227, size: 64, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{null, !2197, !135}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2185, file: !2154, line: 296, baseType: !2231, size: 64, offset: 384)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!1999, !2191, !1030, !1000, !2040}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2185, file: !2154, line: 306, baseType: !1000, size: 64, offset: 448)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2185, file: !2154, line: 313, baseType: !1034, size: 8, offset: 512)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2185, file: !2154, line: 314, baseType: !2231, size: 64, offset: 576)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2185, file: !2154, line: 317, baseType: !2238, size: 64, offset: 640)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!2241, !2191, !2243}
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2242, line: 59, baseType: !7)
!2242 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2154, line: 31, flags: DIFlagFwdDecl)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2185, file: !2154, line: 320, baseType: !2246, size: 64, offset: 704)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!46, !2191, !2047}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2180, file: !2154, line: 176, baseType: !2250, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2154, line: 35, flags: DIFlagFwdDecl)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2180, file: !2154, line: 177, baseType: !2040, size: 64, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2180, file: !2154, line: 178, baseType: !2152, size: 64, offset: 192)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2153, file: !2154, line: 215, baseType: !135, size: 64, offset: 768)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2153, file: !2154, line: 221, baseType: !177, size: 64, offset: 832)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2153, file: !2154, line: 223, baseType: !242, size: 16, offset: 896)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2153, file: !2154, line: 224, baseType: !2006, size: 16, offset: 912)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2153, file: !2154, line: 225, baseType: !2259, size: 64, offset: 960)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2154, line: 36, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2153, file: !2154, line: 227, baseType: !866, size: 128, align: 64, offset: 1024)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1929, file: !1930, line: 71, baseType: !2263, size: 32, offset: 448)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2264, line: 19, size: 32, elements: !2265)
!2264 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2265 = !{!2266}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2263, file: !2264, line: 20, baseType: !212, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1929, file: !1930, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1929, file: !1930, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1929, file: !1930, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1929, file: !1930, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1929, file: !1930, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1926, file: !26, line: 707, baseType: !1925, size: 64, offset: 512)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1926, file: !26, line: 709, baseType: !2274, size: 64, offset: 576)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1926, file: !26, line: 711, baseType: !1933, size: 64, offset: 640)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1926, file: !26, line: 712, baseType: !2278, size: 64, offset: 704)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2280)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !2281)
!2281 = !{!2282, !2283, !2284, !2290, !2295, !2299}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2280, file: !26, line: 90, baseType: !1933, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2280, file: !26, line: 91, baseType: !2012, size: 64, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2280, file: !26, line: 92, baseType: !2285, size: 64, offset: 128)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!46, !2288, !1967}
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1926)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2280, file: !26, line: 93, baseType: !2291, size: 64, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!1030, !2288, !2294, !2143, !2144}
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2280, file: !26, line: 95, baseType: !2296, size: 64, offset: 256)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null, !1925}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2280, file: !26, line: 97, baseType: !2300, size: 64, offset: 320)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2302)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !2303)
!2303 = !{!2304, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2302, file: !38, line: 287, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!46, !1925}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2302, file: !38, line: 288, baseType: !2296, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2302, file: !38, line: 289, baseType: !2305, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2302, file: !38, line: 290, baseType: !2305, size: 64, offset: 192)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2302, file: !38, line: 291, baseType: !2305, size: 64, offset: 256)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2302, file: !38, line: 292, baseType: !2305, size: 64, offset: 320)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2302, file: !38, line: 293, baseType: !2305, size: 64, offset: 384)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2302, file: !38, line: 294, baseType: !2305, size: 64, offset: 448)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2302, file: !38, line: 295, baseType: !2305, size: 64, offset: 512)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2302, file: !38, line: 296, baseType: !2305, size: 64, offset: 576)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2302, file: !38, line: 297, baseType: !2305, size: 64, offset: 640)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2302, file: !38, line: 298, baseType: !2305, size: 64, offset: 704)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2302, file: !38, line: 299, baseType: !2305, size: 64, offset: 768)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2302, file: !38, line: 300, baseType: !2305, size: 64, offset: 832)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2302, file: !38, line: 301, baseType: !2305, size: 64, offset: 896)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2302, file: !38, line: 302, baseType: !2305, size: 64, offset: 960)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2302, file: !38, line: 303, baseType: !2305, size: 64, offset: 1024)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2302, file: !38, line: 304, baseType: !2305, size: 64, offset: 1088)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2302, file: !38, line: 305, baseType: !2305, size: 64, offset: 1152)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2302, file: !38, line: 306, baseType: !2305, size: 64, offset: 1216)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2302, file: !38, line: 307, baseType: !2305, size: 64, offset: 1280)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2302, file: !38, line: 308, baseType: !2305, size: 64, offset: 1344)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2302, file: !38, line: 309, baseType: !2305, size: 64, offset: 1408)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1926, file: !26, line: 714, baseType: !2331, size: 64, offset: 768)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2333)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2334, line: 80, size: 1344, elements: !2335)
!2334 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2335 = !{!2336, !2337, !2338, !2339, !2340, !2341, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2742}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2333, file: !2334, line: 81, baseType: !1933, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2333, file: !2334, line: 82, baseType: !1933, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2333, file: !2334, line: 83, baseType: !2012, size: 64, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2333, file: !2334, line: 84, baseType: !2012, size: 64, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2333, file: !2334, line: 85, baseType: !2012, size: 64, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2333, file: !2334, line: 87, baseType: !2342, size: 64, offset: 320)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!46, !1925, !2345}
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !2347)
!2347 = !{!2348, !2349, !2350, !2694, !2695, !2696, !2697, !2701, !2705, !2706, !2707, !2708, !2709, !2717, !2718, !2719, !2720, !2721, !2722}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2346, file: !20, line: 97, baseType: !1933, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2346, file: !20, line: 98, baseType: !2331, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2346, file: !20, line: 100, baseType: !2351, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !2353)
!2353 = !{!2354, !2355, !2356, !2360, !2370, !2396, !2397, !2398, !2399, !2403, !2406, !2407, !2408, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2471, !2475, !2495, !2512, !2513, !2514, !2515, !2524, !2547, !2548, !2551, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2565, !2566, !2654, !2662, !2663, !2664, !2666, !2670, !2671, !2675, !2676, !2677, !2678, !2680, !2681, !2682, !2689, !2690, !2691, !2693}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2352, file: !13, line: 403, baseType: !12, size: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2352, file: !13, line: 406, baseType: !143, size: 128, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2352, file: !13, line: 409, baseType: !2357, size: 448, offset: 192)
!2357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 448, elements: !2358)
!2358 = !{!2359}
!2359 = !DISubrange(count: 56)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !2352, file: !13, line: 417, baseType: !2361, size: 768, offset: 640)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !2362)
!2362 = !{!2363, !2364, !2365, !2366, !2369}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2361, file: !13, line: 46, baseType: !1929, size: 512)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2361, file: !13, line: 47, baseType: !2351, size: 64, offset: 512)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !2361, file: !13, line: 48, baseType: !1937, size: 64, offset: 576)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !2361, file: !13, line: 49, baseType: !2367, size: 64, offset: 640)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !2361, file: !13, line: 50, baseType: !887, size: 64, offset: 704)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !2352, file: !13, line: 418, baseType: !2371, size: 64, offset: 1408)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !2373)
!2373 = !{!2374, !2375, !2380, !2384, !2388, !2392}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2372, file: !13, line: 54, baseType: !2002, size: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2372, file: !13, line: 55, baseType: !2376, size: 64, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!1999, !2371, !2379, !1030}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2372, file: !13, line: 57, baseType: !2381, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!1999, !2371, !2379, !1933, !1000}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2372, file: !13, line: 59, baseType: !2385, size: 64, offset: 256)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !2351, !1933}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2372, file: !13, line: 60, baseType: !2389, size: 64, offset: 320)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!46, !2351}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2372, file: !13, line: 61, baseType: !2393, size: 64, offset: 384)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null, !2351}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2352, file: !13, line: 419, baseType: !1933, size: 64, offset: 1472)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !2352, file: !13, line: 420, baseType: !1933, size: 64, offset: 1536)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !2352, file: !13, line: 421, baseType: !1937, size: 64, offset: 1600)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !2352, file: !13, line: 424, baseType: !2400, size: 64, offset: 1664)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2402)
!2402 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !2352, file: !13, line: 425, baseType: !2404, size: 64, offset: 1728)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !2352, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !2352, file: !13, line: 435, baseType: !678, size: 256, offset: 1856)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !2352, file: !13, line: 437, baseType: !2409, size: 64, offset: 2112)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2411, line: 69, size: 320, elements: !2412)
!2411 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2412 = !{!2413, !2414, !2415, !2432, !2434, !2438, !2439}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2410, file: !2411, line: 70, baseType: !1933, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2410, file: !2411, line: 71, baseType: !2351, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2410, file: !2411, line: 72, baseType: !2416, size: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2418)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2411, line: 47, size: 256, elements: !2419)
!2419 = !{!2420, !2421, !2427, !2431}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2418, file: !2411, line: 49, baseType: !7, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2418, file: !2411, line: 51, baseType: !2422, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!46, !1933, !2425}
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2410)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2418, file: !2411, line: 53, baseType: !2428, size: 64, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!46, !1030, !2425}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2418, file: !2411, line: 55, baseType: !2132, size: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2410, file: !2411, line: 73, baseType: !2433, size: 16, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2410, file: !2411, line: 74, baseType: !2435, size: 8, offset: 208)
!2435 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !163, line: 16, baseType: !2436)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !165, line: 20, baseType: !2437)
!2437 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2410, file: !2411, line: 75, baseType: !375, size: 8, offset: 216)
!2439 = !DIDerivedType(tag: DW_TAG_member, scope: !2410, file: !2411, line: 76, baseType: !2440, size: 64, offset: 256)
!2440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2410, file: !2411, line: 76, size: 64, elements: !2441)
!2441 = !{!2442, !2443, !2450}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2440, file: !2411, line: 77, baseType: !135, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2440, file: !2411, line: 78, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2446)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2411, line: 86, size: 128, elements: !2447)
!2447 = !{!2448, !2449}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2446, file: !2411, line: 87, baseType: !7, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2446, file: !2411, line: 88, baseType: !1030, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2440, file: !2411, line: 79, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2453)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2411, line: 92, size: 256, elements: !2454)
!2454 = !{!2455, !2456, !2457, !2459, !2460}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2453, file: !2411, line: 94, baseType: !7, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2453, file: !2411, line: 95, baseType: !7, size: 32, offset: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2453, file: !2411, line: 96, baseType: !2458, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2453, file: !2411, line: 97, baseType: !2416, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2453, file: !2411, line: 98, baseType: !135, size: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !2352, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !2352, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !2352, file: !13, line: 442, baseType: !2400, size: 64, offset: 2240)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !2352, file: !13, line: 443, baseType: !2404, size: 64, offset: 2304)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !2352, file: !13, line: 444, baseType: !1034, size: 8, offset: 2368)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !2352, file: !13, line: 451, baseType: !1034, size: 8, offset: 2376)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !2352, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2352, file: !13, line: 455, baseType: !2469, size: 64, offset: 2432)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2352, file: !13, line: 458, baseType: !2472, size: 64, offset: 2496)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!46}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2352, file: !13, line: 460, baseType: !2476, size: 4032, align: 512, offset: 2560)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2477, size: 4032, elements: !2493)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !2478)
!2478 = !{!2479, !2480, !2481}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2477, file: !13, line: 363, baseType: !135, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2477, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2477, file: !13, line: 367, baseType: !2482, size: 448, offset: 128)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !2483)
!2483 = !{!2484, !2485}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2482, file: !13, line: 320, baseType: !2351, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2482, file: !13, line: 321, baseType: !2486, size: 384, offset: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2487, line: 40, size: 384, elements: !2488)
!2487 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2488 = !{!2489}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2486, file: !2487, line: 41, baseType: !2490, size: 384, align: 64)
!2490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 384, align: 64, elements: !2491)
!2491 = !{!2492}
!2492 = !DISubrange(count: 2)
!2493 = !{!2494}
!2494 = !DISubrange(count: 7)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2352, file: !13, line: 463, baseType: !2496, size: 192, offset: 6592)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2497, line: 8, size: 192, elements: !2498)
!2497 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2498 = !{!2499, !2500, !2501}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2496, file: !2497, line: 10, baseType: !7, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2496, file: !2497, line: 11, baseType: !899, size: 64, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2496, file: !2497, line: 12, baseType: !2502, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2504, line: 59, size: 48, elements: !2505)
!2504 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2505 = !{!2506, !2507, !2508, !2509, !2510, !2511}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2503, file: !2504, line: 60, baseType: !717, size: 16)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2503, file: !2504, line: 61, baseType: !717, size: 16, offset: 16)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2503, file: !2504, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2503, file: !2504, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2503, file: !2504, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2503, file: !2504, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !2352, file: !13, line: 465, baseType: !136, size: 64, offset: 6784)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !2352, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !2352, file: !13, line: 470, baseType: !143, size: 128, offset: 6912)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !2352, file: !13, line: 471, baseType: !2516, size: 64, offset: 7040)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2518, line: 33, size: 96, elements: !2519)
!2518 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2519 = !{!2520, !2521, !2522, !2523}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2517, file: !2518, line: 37, baseType: !46, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2517, file: !2518, line: 43, baseType: !46, size: 32, offset: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2517, file: !2518, line: 45, baseType: !242, size: 16, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2517, file: !2518, line: 47, baseType: !242, size: 16, offset: 80)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !2352, file: !13, line: 476, baseType: !2525, size: 64, offset: 7104)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !2527)
!2527 = !{!2528, !2544, !2545, !2546}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2526, file: !13, line: 379, baseType: !2529, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2531, line: 204, baseType: !2532)
!2531 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2531, line: 197, size: 192, elements: !2533)
!2533 = !{!2534, !2536, !2537, !2538, !2540, !2542}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2532, file: !2531, line: 198, baseType: !2535, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2531, line: 21, baseType: !207)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2532, file: !2531, line: 199, baseType: !377, size: 8, offset: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2532, file: !2531, line: 200, baseType: !377, size: 8, offset: 40)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2532, file: !2531, line: 201, baseType: !2539, size: 16, offset: 48)
!2539 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2531, line: 17, baseType: !241)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2532, file: !2531, line: 202, baseType: !2541, size: 64, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2531, line: 16, baseType: !178)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2532, file: !2531, line: 203, baseType: !2543, size: 64, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2531, line: 22, baseType: !178)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2526, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2526, file: !13, line: 381, baseType: !1030, size: 64, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2526, file: !13, line: 382, baseType: !1030, size: 64, offset: 192)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !2352, file: !13, line: 477, baseType: !2526, size: 256, offset: 7168)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !2352, file: !13, line: 480, baseType: !2549, size: 64, offset: 7424)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !2352, file: !13, line: 483, baseType: !2552, size: 64, offset: 7488)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2352, file: !13, line: 488, baseType: !1030, size: 64, offset: 7552)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !2352, file: !13, line: 492, baseType: !135, size: 64, offset: 7616)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !2352, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !2352, file: !13, line: 495, baseType: !135, size: 64, offset: 7744)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !2352, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !2352, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !2352, file: !13, line: 500, baseType: !2561, size: 64, offset: 7872)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2563, line: 45, baseType: !2564)
!2563 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !2352, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !2352, file: !13, line: 504, baseType: !2567, size: 64, offset: 8000)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2570, line: 96, size: 192, elements: !2571)
!2570 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2571 = !{!2572, !2573, !2616, !2618}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2569, file: !2570, line: 97, baseType: !7, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2569, file: !2570, line: 98, baseType: !2574, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2570, line: 24, size: 3072, elements: !2576)
!2576 = !{!2577, !2579, !2580, !2581, !2582, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2613, !2614, !2615}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2575, file: !2570, line: 26, baseType: !2578, size: 128)
!2578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 128, elements: !2491)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2575, file: !2570, line: 27, baseType: !2578, size: 128, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2575, file: !2570, line: 28, baseType: !46, size: 32, offset: 256)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2575, file: !2570, line: 31, baseType: !560, size: 32, align: 512, offset: 512)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2575, file: !2570, line: 32, baseType: !2583, size: 960, offset: 576)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2584, line: 206, size: 960, elements: !2585)
!2584 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2585 = !{!2586, !2587, !2590, !2592, !2593, !2595}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2583, file: !2584, line: 207, baseType: !869, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2583, file: !2584, line: 208, baseType: !2588, size: 256, offset: 64)
!2588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2589, size: 256, elements: !659)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2583, file: !2584, line: 209, baseType: !2591, size: 256, offset: 320)
!2591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 256, elements: !659)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2583, file: !2584, line: 213, baseType: !702, size: 64, offset: 576)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2583, file: !2584, line: 215, baseType: !2594, size: 256, offset: 640)
!2594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !702, size: 256, elements: !659)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2583, file: !2584, line: 216, baseType: !375, size: 8, offset: 896)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2575, file: !2570, line: 33, baseType: !136, size: 64, offset: 1536)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2575, file: !2570, line: 34, baseType: !136, size: 64, offset: 1600)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2575, file: !2570, line: 35, baseType: !1034, size: 8, offset: 1664)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2575, file: !2570, line: 36, baseType: !1401, size: 320, offset: 1728)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2575, file: !2570, line: 37, baseType: !153, size: 256, offset: 2048)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2575, file: !2570, line: 38, baseType: !866, size: 128, align: 64, offset: 2304)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2575, file: !2570, line: 39, baseType: !2603, size: 64, offset: 2432)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2570, line: 49, size: 768, elements: !2605)
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2611, !2612}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2604, file: !2570, line: 50, baseType: !560, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2604, file: !2570, line: 51, baseType: !2591, size: 256, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2604, file: !2570, line: 53, baseType: !2591, size: 256, offset: 320)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2604, file: !2570, line: 54, baseType: !136, size: 64, offset: 576)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2604, file: !2570, line: 55, baseType: !2603, size: 64, offset: 640)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2604, file: !2570, line: 56, baseType: !46, size: 32, offset: 704)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2604, file: !2570, line: 57, baseType: !46, size: 32, offset: 736)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2575, file: !2570, line: 40, baseType: !136, size: 64, offset: 2496)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2575, file: !2570, line: 42, baseType: !46, size: 32, offset: 2560)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2575, file: !2570, line: 43, baseType: !2568, size: 64, offset: 2624)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2569, file: !2570, line: 99, baseType: !2617, offset: 128)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1701, line: 211, elements: !571)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2569, file: !2570, line: 100, baseType: !2619, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2570, line: 63, size: 3008, elements: !2621)
!2621 = !{!2622, !2623, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2653}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2620, file: !2570, line: 64, baseType: !2603, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2620, file: !2570, line: 65, baseType: !2624, size: 192, offset: 64)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2603, size: 192, elements: !927)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2620, file: !2570, line: 67, baseType: !46, size: 32, offset: 256)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2620, file: !2570, line: 68, baseType: !678, size: 256, offset: 320)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2620, file: !2570, line: 69, baseType: !560, size: 32, offset: 576)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2620, file: !2570, line: 70, baseType: !678, size: 256, offset: 640)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2620, file: !2570, line: 71, baseType: !136, size: 64, offset: 896)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2620, file: !2570, line: 72, baseType: !136, size: 64, offset: 960)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2620, file: !2570, line: 73, baseType: !136, size: 64, offset: 1024)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2620, file: !2570, line: 74, baseType: !136, size: 64, offset: 1088)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2620, file: !2570, line: 75, baseType: !136, size: 64, offset: 1152)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2620, file: !2570, line: 76, baseType: !136, size: 64, offset: 1216)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2620, file: !2570, line: 77, baseType: !136, size: 64, offset: 1280)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2620, file: !2570, line: 78, baseType: !136, size: 64, offset: 1344)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2620, file: !2570, line: 79, baseType: !1034, size: 8, offset: 1408)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2620, file: !2570, line: 80, baseType: !136, size: 64, offset: 1472)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2620, file: !2570, line: 81, baseType: !678, size: 256, offset: 1536)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2620, file: !2570, line: 82, baseType: !888, size: 256, offset: 1792)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2620, file: !2570, line: 84, baseType: !217, size: 32, offset: 2048)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2620, file: !2570, line: 87, baseType: !136, size: 64, offset: 2112)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2620, file: !2570, line: 88, baseType: !136, size: 64, offset: 2176)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2620, file: !2570, line: 89, baseType: !2645, size: 704, offset: 2240)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !107, line: 111, size: 704, elements: !2646)
!2646 = !{!2647, !2648, !2649, !2652}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2645, file: !107, line: 112, baseType: !153, size: 256)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2645, file: !107, line: 113, baseType: !1401, size: 320, offset: 256)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2645, file: !107, line: 116, baseType: !2650, size: 64, offset: 576)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !107, line: 18, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2645, file: !107, line: 117, baseType: !46, size: 32, offset: 640)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2620, file: !2570, line: 90, baseType: !2568, size: 64, offset: 2944)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !2352, file: !13, line: 515, baseType: !2655, size: 64, offset: 8064)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2657, line: 117, size: 128, elements: !2658)
!2657 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2658 = !{!2659, !2660, !2661}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2656, file: !2657, line: 118, baseType: !657, size: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2656, file: !2657, line: 119, baseType: !657, size: 32, offset: 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2656, file: !2657, line: 120, baseType: !702, size: 64, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !2352, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !2352, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !2352, file: !13, line: 520, baseType: !2665, size: 64, offset: 8192)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !2352, file: !13, line: 523, baseType: !2667, size: 64, offset: 8256)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !2352, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !2352, file: !13, line: 525, baseType: !2672, size: 64, offset: 8384)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !2352, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !2352, file: !13, line: 533, baseType: !135, size: 64, offset: 8512)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !2352, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !2352, file: !13, line: 535, baseType: !2679, size: 64, offset: 8640)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !2352, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !2352, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !2352, file: !13, line: 540, baseType: !2683, size: 64, offset: 8768)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2685, line: 32, size: 64, elements: !2686)
!2685 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2686 = !{!2687, !2688}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2684, file: !2685, line: 33, baseType: !657, size: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2684, file: !2685, line: 34, baseType: !657, size: 32, offset: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !2352, file: !13, line: 563, baseType: !143, size: 128, offset: 8832)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !2352, file: !13, line: 565, baseType: !143, size: 128, offset: 8960)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2352, file: !13, line: 568, baseType: !2692, size: 64, offset: 9088)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2352, file: !13, line: 570, baseType: !217, size: 32, offset: 9152)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2346, file: !20, line: 101, baseType: !1933, size: 64, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2346, file: !20, line: 103, baseType: !1034, size: 8, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2346, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2346, file: !20, line: 106, baseType: !2698, size: 64, offset: 320)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2700)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2346, file: !20, line: 107, baseType: !2702, size: 64, offset: 384)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2704)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2346, file: !20, line: 109, baseType: !2305, size: 64, offset: 448)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2346, file: !20, line: 110, baseType: !2296, size: 64, offset: 512)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2346, file: !20, line: 111, baseType: !2305, size: 64, offset: 576)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2346, file: !20, line: 112, baseType: !2296, size: 64, offset: 640)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2346, file: !20, line: 113, baseType: !2710, size: 64, offset: 704)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!46, !1925, !2713}
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !2714)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !2715)
!2715 = !{!2716}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2714, file: !38, line: 59, baseType: !46, size: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2346, file: !20, line: 114, baseType: !2305, size: 64, offset: 768)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2346, file: !20, line: 115, baseType: !2012, size: 64, offset: 832)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2346, file: !20, line: 116, baseType: !2012, size: 64, offset: 896)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2346, file: !20, line: 118, baseType: !2300, size: 64, offset: 960)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2346, file: !20, line: 119, baseType: !2296, size: 64, offset: 1024)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2346, file: !20, line: 121, baseType: !2723, size: 64, offset: 1088)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2333, file: !2334, line: 88, baseType: !2285, size: 64, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2333, file: !2334, line: 89, baseType: !2305, size: 64, offset: 448)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2333, file: !2334, line: 90, baseType: !2296, size: 64, offset: 512)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2333, file: !2334, line: 91, baseType: !2296, size: 64, offset: 576)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2333, file: !2334, line: 92, baseType: !2296, size: 64, offset: 640)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2333, file: !2334, line: 94, baseType: !2305, size: 64, offset: 704)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2333, file: !2334, line: 95, baseType: !2305, size: 64, offset: 768)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2333, file: !2334, line: 97, baseType: !2710, size: 64, offset: 832)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2333, file: !2334, line: 98, baseType: !2305, size: 64, offset: 896)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2333, file: !2334, line: 100, baseType: !2305, size: 64, offset: 960)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2333, file: !2334, line: 102, baseType: !2305, size: 64, offset: 1024)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2333, file: !2334, line: 103, baseType: !2296, size: 64, offset: 1088)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2333, file: !2334, line: 105, baseType: !2300, size: 64, offset: 1152)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2333, file: !2334, line: 107, baseType: !2739, size: 64, offset: 1216)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2741)
!2741 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2334, line: 107, flags: DIFlagFwdDecl)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2333, file: !2334, line: 109, baseType: !1034, size: 8, offset: 1280)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1926, file: !26, line: 715, baseType: !2345, size: 64, offset: 832)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1926, file: !26, line: 717, baseType: !135, size: 64, offset: 896)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1926, file: !26, line: 719, baseType: !135, size: 64, offset: 960)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1926, file: !26, line: 721, baseType: !678, size: 256, offset: 1024)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1926, file: !26, line: 725, baseType: !2748, size: 448, offset: 1280)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !2749)
!2749 = !{!2750, !2751, !2752, !2753}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2748, file: !26, line: 518, baseType: !143, size: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2748, file: !26, line: 519, baseType: !143, size: 128, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2748, file: !26, line: 520, baseType: !143, size: 128, offset: 256)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2748, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1926, file: !26, line: 726, baseType: !2755, size: 2496, offset: 1728)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !2756)
!2756 = !{!2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2839, !2843}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2755, file: !38, line: 664, baseType: !2713, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2755, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2755, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2755, file: !38, line: 667, baseType: !1034, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2755, file: !38, line: 668, baseType: !1034, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2755, file: !38, line: 669, baseType: !1034, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2755, file: !38, line: 670, baseType: !1034, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2755, file: !38, line: 671, baseType: !1034, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2755, file: !38, line: 672, baseType: !1034, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2755, file: !38, line: 673, baseType: !1034, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2755, file: !38, line: 674, baseType: !1034, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2755, file: !38, line: 675, baseType: !206, size: 32, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2755, file: !38, line: 676, baseType: !560, size: 32, offset: 96)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2755, file: !38, line: 678, baseType: !143, size: 128, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2755, file: !38, line: 679, baseType: !888, size: 256, offset: 256)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2755, file: !38, line: 680, baseType: !2773, size: 64, offset: 512)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2775, line: 43, size: 1536, elements: !2776)
!2775 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2776 = !{!2777, !2778, !2779, !2780, !2781, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2774, file: !2775, line: 44, baseType: !1933, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2774, file: !2775, line: 45, baseType: !46, size: 32, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2774, file: !2775, line: 46, baseType: !143, size: 128, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2774, file: !2775, line: 47, baseType: !560, size: 32, offset: 256)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2774, file: !2775, line: 48, baseType: !2782, size: 64, offset: 320)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2774, file: !2775, line: 49, baseType: !1401, size: 320, offset: 384)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2774, file: !2775, line: 50, baseType: !136, size: 64, offset: 704)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2774, file: !2775, line: 51, baseType: !341, size: 64, offset: 768)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2774, file: !2775, line: 52, baseType: !341, size: 64, offset: 832)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2774, file: !2775, line: 53, baseType: !341, size: 64, offset: 896)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2774, file: !2775, line: 54, baseType: !341, size: 64, offset: 960)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2774, file: !2775, line: 55, baseType: !341, size: 64, offset: 1024)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2774, file: !2775, line: 56, baseType: !136, size: 64, offset: 1088)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2774, file: !2775, line: 57, baseType: !136, size: 64, offset: 1152)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2774, file: !2775, line: 58, baseType: !136, size: 64, offset: 1216)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2774, file: !2775, line: 59, baseType: !136, size: 64, offset: 1280)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2774, file: !2775, line: 60, baseType: !136, size: 64, offset: 1344)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2774, file: !2775, line: 61, baseType: !1925, size: 64, offset: 1408)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2774, file: !2775, line: 62, baseType: !1034, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2774, file: !2775, line: 63, baseType: !1034, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2755, file: !38, line: 681, baseType: !1034, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2755, file: !38, line: 682, baseType: !1034, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2755, file: !38, line: 683, baseType: !1034, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2755, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2755, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2755, file: !38, line: 690, baseType: !333, size: 512, offset: 640)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2755, file: !38, line: 691, baseType: !177, size: 64, offset: 1152)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2755, file: !38, line: 692, baseType: !153, size: 256, offset: 1216)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2755, file: !38, line: 693, baseType: !859, size: 192, offset: 1472)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2755, file: !38, line: 694, baseType: !2782, size: 64, offset: 1664)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2755, file: !38, line: 695, baseType: !217, size: 32, offset: 1728)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2755, file: !38, line: 696, baseType: !217, size: 32, offset: 1760)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2755, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2755, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2755, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2755, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2755, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2755, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2755, file: !38, line: 703, baseType: !1034, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2755, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2755, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2755, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2755, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2755, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2755, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2755, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2755, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2755, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2755, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2755, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2755, file: !38, line: 715, baseType: !177, size: 64, offset: 2048)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2755, file: !38, line: 716, baseType: !177, size: 64, offset: 2112)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2755, file: !38, line: 717, baseType: !177, size: 64, offset: 2176)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2755, file: !38, line: 718, baseType: !177, size: 64, offset: 2240)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2755, file: !38, line: 720, baseType: !2834, size: 64, offset: 2304)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !2836)
!2836 = !{!2837, !2838}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2835, file: !38, line: 633, baseType: !560, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2835, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2755, file: !38, line: 721, baseType: !2840, size: 64, offset: 2368)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{null, !1925, !657}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2755, file: !38, line: 722, baseType: !2844, size: 64, offset: 2432)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1926, file: !26, line: 727, baseType: !2847, size: 64, offset: 4224)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !2849)
!2849 = !{!2850, !2851, !2852, !2856, !2857, !2858}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2848, file: !38, line: 743, baseType: !2302, size: 1472)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2848, file: !38, line: 744, baseType: !2305, size: 64, offset: 1472)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2848, file: !38, line: 745, baseType: !2853, size: 64, offset: 1536)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{null, !1925, !1034}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2848, file: !38, line: 746, baseType: !2305, size: 64, offset: 1600)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2848, file: !38, line: 747, baseType: !2296, size: 64, offset: 1664)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2848, file: !38, line: 748, baseType: !2296, size: 64, offset: 1728)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1926, file: !26, line: 736, baseType: !2860, size: 128, offset: 4288)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !2861)
!2861 = !{!2862, !2866}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2860, file: !26, line: 531, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2865, line: 13, flags: DIFlagFwdDecl)
!2865 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2860, file: !26, line: 532, baseType: !2867, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1926, file: !26, line: 738, baseType: !2870, size: 64, offset: 4416)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2872)
!2872 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1926, file: !26, line: 740, baseType: !2874, size: 64, offset: 4480)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1926, file: !26, line: 741, baseType: !177, size: 64, offset: 4544)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1926, file: !26, line: 746, baseType: !177, size: 64, offset: 4608)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1926, file: !26, line: 747, baseType: !2878, size: 64, offset: 4672)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2880)
!2880 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1926, file: !26, line: 749, baseType: !2882, size: 64, offset: 4736)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !2884)
!2884 = !{!2885, !2886, !2887}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2883, file: !26, line: 433, baseType: !7, size: 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2883, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2883, file: !26, line: 435, baseType: !136, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1926, file: !26, line: 751, baseType: !143, size: 128, offset: 4800)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1926, file: !26, line: 762, baseType: !2890, size: 64, offset: 4928)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1926, file: !26, line: 770, baseType: !2893, offset: 4992)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2894, line: 5, elements: !571)
!2894 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1926, file: !26, line: 772, baseType: !2896, size: 64, offset: 4992)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2898, line: 18, flags: DIFlagFwdDecl)
!2898 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1926, file: !26, line: 773, baseType: !2900, size: 64, offset: 5056)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2334, line: 22, flags: DIFlagFwdDecl)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1926, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1926, file: !26, line: 778, baseType: !2904, size: 32, offset: 5152)
!2904 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !134, line: 21, baseType: !2905)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !134, line: 18, baseType: !206)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1926, file: !26, line: 779, baseType: !206, size: 32, offset: 5184)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1926, file: !26, line: 781, baseType: !560, size: 32, offset: 5216)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1926, file: !26, line: 782, baseType: !143, size: 128, offset: 5248)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1926, file: !26, line: 784, baseType: !2910, size: 64, offset: 5376)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2912)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2913, line: 52, size: 768, elements: !2914)
!2913 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2914 = !{!2915, !2916, !2917, !2918, !2919, !2923, !2927, !2928, !2929, !2930, !2934, !2938}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2912, file: !2913, line: 53, baseType: !1933, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2912, file: !2913, line: 55, baseType: !2012, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2912, file: !2913, line: 56, baseType: !2012, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2912, file: !2913, line: 58, baseType: !2285, size: 64, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2912, file: !2913, line: 59, baseType: !2920, size: 64, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!1030, !2288, !2294}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2912, file: !2913, line: 61, baseType: !2924, size: 64, offset: 320)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{null, !2910}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2912, file: !2913, line: 62, baseType: !2296, size: 64, offset: 384)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2912, file: !2913, line: 64, baseType: !2305, size: 64, offset: 448)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2912, file: !2913, line: 66, baseType: !2108, size: 64, offset: 512)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2912, file: !2913, line: 67, baseType: !2931, size: 64, offset: 576)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!699, !2288}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2912, file: !2913, line: 69, baseType: !2935, size: 64, offset: 640)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{null, !2288, !2143, !2144}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2912, file: !2913, line: 71, baseType: !2300, size: 64, offset: 704)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1926, file: !26, line: 785, baseType: !2012, size: 64, offset: 5440)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1926, file: !26, line: 787, baseType: !2296, size: 64, offset: 5504)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1926, file: !26, line: 788, baseType: !2942, size: 64, offset: 5568)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1926, file: !26, line: 789, baseType: !2945, size: 64, offset: 5632)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1926, file: !26, line: 791, baseType: !2948, size: 64, offset: 5696)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !2950)
!2950 = !{!2951, !2952, !2953, !2954, !2955}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2949, file: !26, line: 598, baseType: !53, size: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2949, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2949, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2949, file: !26, line: 601, baseType: !1034, size: 8, offset: 96)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2949, file: !26, line: 602, baseType: !1034, size: 8, offset: 104)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1926, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1926, file: !26, line: 795, baseType: !1034, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1926, file: !26, line: 796, baseType: !1034, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1926, file: !26, line: 797, baseType: !1034, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1926, file: !26, line: 798, baseType: !1034, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1926, file: !26, line: 799, baseType: !1034, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2962 = !{!2963, !2964, !2965}
!2963 = !DILocalVariable(name: "func", arg: 1, scope: !1922, file: !3, line: 258, type: !181)
!2964 = !DILocalVariable(name: "dev", arg: 2, scope: !1922, file: !3, line: 258, type: !1925)
!2965 = !DILocalVariable(name: "entry", scope: !1922, file: !3, line: 260, type: !147)
!2966 = !DILocation(line: 258, column: 45, scope: !1922)
!2967 = !DILocation(line: 258, column: 66, scope: !1922)
!2968 = !DILocation(line: 260, column: 2, scope: !1922)
!2969 = !DILocation(line: 260, column: 22, scope: !1922)
!2970 = !DILocation(line: 262, column: 10, scope: !1922)
!2971 = !DILocation(line: 262, column: 8, scope: !1922)
!2972 = !DILocation(line: 265, column: 7, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 265, column: 6)
!2974 = !DILocation(line: 265, column: 13, scope: !2973)
!2975 = !DILocation(line: 265, column: 16, scope: !2973)
!2976 = !DILocation(line: 265, column: 42, scope: !2973)
!2977 = !DILocation(line: 265, column: 6, scope: !1922)
!2978 = !DILocation(line: 266, column: 9, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 265, column: 54)
!2980 = !DILocation(line: 266, column: 3, scope: !2979)
!2981 = !DILocation(line: 267, column: 3, scope: !2979)
!2982 = !DILocation(line: 270, column: 31, scope: !1922)
!2983 = !DILocation(line: 270, column: 37, scope: !1922)
!2984 = !DILocation(line: 270, column: 54, scope: !1922)
!2985 = !DILocation(line: 270, column: 42, scope: !1922)
!2986 = !DILocation(line: 271, column: 29, scope: !1922)
!2987 = !DILocation(line: 270, column: 2, scope: !1922)
!2988 = !DILocation(line: 272, column: 2, scope: !1922)
!2989 = !DILocation(line: 273, column: 1, scope: !1922)
!2990 = distinct !DISubprogram(name: "dev_to_node", scope: !26, file: !26, line: 882, type: !2306, scopeLine: 883, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2991)
!2991 = !{!2992}
!2992 = !DILocalVariable(name: "dev", arg: 1, scope: !2990, file: !26, line: 882, type: !1925)
!2993 = !DILocation(line: 882, column: 46, scope: !2990)
!2994 = !DILocation(line: 884, column: 9, scope: !2990)
!2995 = !DILocation(line: 884, column: 14, scope: !2990)
!2996 = !DILocation(line: 884, column: 2, scope: !2990)
!2997 = distinct !DISubprogram(name: "async_synchronize_full", scope: !3, file: !3, line: 280, type: !1710, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2998 = !DILocation(line: 282, column: 2, scope: !2997)
!2999 = !DILocation(line: 283, column: 1, scope: !2997)
!3000 = distinct !DISubprogram(name: "async_synchronize_full_domain", scope: !3, file: !3, line: 293, type: !3001, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{null, !187}
!3003 = !{!3004}
!3004 = !DILocalVariable(name: "domain", arg: 1, scope: !3000, file: !3, line: 293, type: !187)
!3005 = !DILocation(line: 293, column: 57, scope: !3000)
!3006 = !DILocation(line: 295, column: 52, scope: !3000)
!3007 = !DILocation(line: 295, column: 2, scope: !3000)
!3008 = !DILocation(line: 296, column: 1, scope: !3000)
!3009 = distinct !DISubprogram(name: "async_synchronize_cookie_domain", scope: !3, file: !3, line: 308, type: !3010, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{null, !175, !187}
!3012 = !{!3013, !3014, !3015, !3016, !3030, !3031, !3035}
!3013 = !DILocalVariable(name: "cookie", arg: 1, scope: !3009, file: !3, line: 308, type: !175)
!3014 = !DILocalVariable(name: "domain", arg: 2, scope: !3009, file: !3, line: 308, type: !187)
!3015 = !DILocalVariable(name: "starttime", scope: !3009, file: !3, line: 310, type: !341)
!3016 = !DILocalVariable(name: "__wq_entry", scope: !3017, file: !3, line: 315, type: !3019)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 315, column: 2)
!3018 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 315, column: 2)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !860, line: 30, size: 320, elements: !3020)
!3020 = !{!3021, !3022, !3023, !3029}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3019, file: !860, line: 31, baseType: !7, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3019, file: !860, line: 32, baseType: !135, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3019, file: !860, line: 33, baseType: !3024, size: 64, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !860, line: 16, baseType: !3025)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!46, !3028, !7, !46, !135}
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3019, file: !860, line: 34, baseType: !143, size: 128, offset: 192)
!3030 = !DILocalVariable(name: "__ret", scope: !3017, file: !3, line: 315, type: !702)
!3031 = !DILocalVariable(name: "__int", scope: !3032, file: !3, line: 315, type: !702)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 315, column: 2)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 315, column: 2)
!3034 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 315, column: 2)
!3035 = !DILabel(scope: !3017, name: "__out", file: !3, line: 315)
!3036 = !DILocation(line: 308, column: 53, scope: !3009)
!3037 = !DILocation(line: 308, column: 82, scope: !3009)
!3038 = !DILocation(line: 310, column: 2, scope: !3009)
!3039 = !DILocation(line: 310, column: 10, scope: !3009)
!3040 = !DILocation(line: 312, column: 2, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 312, column: 2)
!3042 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 312, column: 2)
!3043 = !DILocation(line: 312, column: 2, scope: !3042)
!3044 = !DILocation(line: 313, column: 14, scope: !3009)
!3045 = !DILocation(line: 313, column: 12, scope: !3009)
!3046 = !DILocation(line: 315, column: 2, scope: !3009)
!3047 = !DILocation(line: 315, column: 2, scope: !3018)
!3048 = !DILocation(line: 315, column: 2, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 315, column: 2)
!3050 = !DILocation(line: 315, column: 2, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 315, column: 2)
!3052 = !DILocation(line: 315, column: 2, scope: !3017)
!3053 = !DILocation(line: 315, column: 2, scope: !3032)
!3054 = !DILocation(line: 315, column: 2, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 315, column: 2)
!3056 = !DILocation(line: 315, column: 2, scope: !3033)
!3057 = distinct !{!3057, !3058, !3058, !3059}
!3058 = !DILocation(line: 315, column: 2, scope: !3034)
!3059 = !{!"llvm.loop.unroll.disable"}
!3060 = !DILocation(line: 317, column: 2, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 317, column: 2)
!3062 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 317, column: 2)
!3063 = !DILocation(line: 317, column: 2, scope: !3062)
!3064 = !DILocation(line: 319, column: 1, scope: !3009)
!3065 = !DISubprogram(name: "ktime_get", scope: !3066, file: !3066, line: 67, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3066 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!3067 = !DILocation(line: 112, column: 2, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !1708, file: !1709, line: 112, column: 2)
!3069 = !DILocation(line: 112, column: 2, scope: !1708)
!3070 = !DILocation(line: 113, column: 1, scope: !1708)
!3071 = distinct !DISubprogram(name: "lowest_in_progress", scope: !3, file: !3, line: 87, type: !3072, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!175, !187}
!3074 = !{!3075, !3076, !3077, !3078, !3079, !3083, !3084, !3089}
!3075 = !DILocalVariable(name: "domain", arg: 1, scope: !3071, file: !3, line: 87, type: !187)
!3076 = !DILocalVariable(name: "first", scope: !3071, file: !3, line: 89, type: !147)
!3077 = !DILocalVariable(name: "ret", scope: !3071, file: !3, line: 90, type: !175)
!3078 = !DILocalVariable(name: "flags", scope: !3071, file: !3, line: 91, type: !136)
!3079 = !DILocalVariable(name: "__dummy", scope: !3080, file: !3, line: 93, type: !136)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 93, column: 2)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 93, column: 2)
!3082 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 93, column: 2)
!3083 = !DILocalVariable(name: "__dummy2", scope: !3080, file: !3, line: 93, type: !136)
!3084 = !DILocalVariable(name: "__mptr", scope: !3085, file: !3, line: 97, type: !135)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 97, column: 12)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 96, column: 7)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 95, column: 14)
!3088 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 95, column: 6)
!3089 = !DILocalVariable(name: "__mptr", scope: !3090, file: !3, line: 101, type: !135)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 101, column: 12)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 100, column: 7)
!3092 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 99, column: 9)
!3093 = !DILocation(line: 87, column: 63, scope: !3071)
!3094 = !DILocation(line: 89, column: 2, scope: !3071)
!3095 = !DILocation(line: 89, column: 22, scope: !3071)
!3096 = !DILocation(line: 90, column: 2, scope: !3071)
!3097 = !DILocation(line: 90, column: 17, scope: !3071)
!3098 = !DILocation(line: 91, column: 2, scope: !3071)
!3099 = !DILocation(line: 91, column: 16, scope: !3071)
!3100 = !DILocation(line: 93, column: 2, scope: !3071)
!3101 = !DILocation(line: 93, column: 2, scope: !3082)
!3102 = !DILocation(line: 93, column: 2, scope: !3080)
!3103 = !DILocation(line: 93, column: 2, scope: !3081)
!3104 = !DILocation(line: 95, column: 6, scope: !3088)
!3105 = !DILocation(line: 95, column: 6, scope: !3071)
!3106 = !DILocation(line: 96, column: 20, scope: !3086)
!3107 = !DILocation(line: 96, column: 28, scope: !3086)
!3108 = !DILocation(line: 96, column: 8, scope: !3086)
!3109 = !DILocation(line: 96, column: 7, scope: !3087)
!3110 = !DILocation(line: 97, column: 12, scope: !3085)
!3111 = !DILocation(line: 97, column: 12, scope: !3086)
!3112 = !DILocation(line: 97, column: 10, scope: !3086)
!3113 = !DILocation(line: 97, column: 4, scope: !3086)
!3114 = !DILocation(line: 99, column: 2, scope: !3087)
!3115 = !DILocation(line: 100, column: 8, scope: !3091)
!3116 = !DILocation(line: 100, column: 7, scope: !3092)
!3117 = !DILocation(line: 101, column: 12, scope: !3090)
!3118 = !DILocation(line: 101, column: 12, scope: !3091)
!3119 = !DILocation(line: 101, column: 10, scope: !3091)
!3120 = !DILocation(line: 101, column: 4, scope: !3091)
!3121 = !DILocation(line: 105, column: 6, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 105, column: 6)
!3123 = !DILocation(line: 105, column: 6, scope: !3071)
!3124 = !DILocation(line: 106, column: 9, scope: !3122)
!3125 = !DILocation(line: 106, column: 16, scope: !3122)
!3126 = !DILocation(line: 106, column: 7, scope: !3122)
!3127 = !DILocation(line: 106, column: 3, scope: !3122)
!3128 = !DILocation(line: 108, column: 38, scope: !3071)
!3129 = !DILocation(line: 108, column: 2, scope: !3071)
!3130 = !DILocation(line: 109, column: 9, scope: !3071)
!3131 = !DILocation(line: 110, column: 1, scope: !3071)
!3132 = !DILocation(line: 109, column: 2, scope: !3071)
!3133 = !DISubprogram(name: "init_wait_entry", scope: !860, file: !860, line: 290, type: !3134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{null, !3028, !46}
!3136 = !DISubprogram(name: "prepare_to_wait_event", scope: !860, file: !860, line: 1199, type: !3137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!702, !3139, !3028, !46}
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!3140 = !DISubprogram(name: "schedule", scope: !197, file: !197, line: 303, type: !1710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3141 = !DISubprogram(name: "finish_wait", scope: !860, file: !860, line: 1200, type: !3142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{null, !3139, !3028}
!3144 = distinct !DISubprogram(name: "async_synchronize_cookie", scope: !3, file: !3, line: 329, type: !3145, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3147)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !175}
!3147 = !{!3148}
!3148 = !DILocalVariable(name: "cookie", arg: 1, scope: !3144, file: !3, line: 329, type: !175)
!3149 = !DILocation(line: 329, column: 46, scope: !3144)
!3150 = !DILocation(line: 331, column: 34, scope: !3144)
!3151 = !DILocation(line: 331, column: 2, scope: !3144)
!3152 = !DILocation(line: 332, column: 1, scope: !3144)
!3153 = distinct !DISubprogram(name: "current_is_async", scope: !3, file: !3, line: 340, type: !2115, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3154)
!3154 = !{!3155}
!3155 = !DILocalVariable(name: "worker", scope: !3153, file: !3, line: 342, type: !3156)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "worker", file: !3158, line: 24, size: 1344, elements: !3159)
!3158 = !DIFile(filename: "kernel/workqueue_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5213431467b0565eb1e38a0ca7f989ec")
!3159 = !{!3160, !3165, !3166, !3167, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3179, !3180, !3181, !3182, !3183, !3185}
!3160 = !DIDerivedType(tag: DW_TAG_member, scope: !3157, file: !3158, line: 26, baseType: !3161, size: 128)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3157, file: !3158, line: 26, size: 128, elements: !3162)
!3162 = !{!3163, !3164}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3161, file: !3158, line: 27, baseType: !143, size: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "hentry", scope: !3161, file: !3158, line: 28, baseType: !852, size: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !3157, file: !3158, line: 31, baseType: !173, size: 64, offset: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "current_func", scope: !3157, file: !3158, line: 32, baseType: !169, size: 64, offset: 192)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "current_pwq", scope: !3157, file: !3158, line: 33, baseType: !3168, size: 64, offset: 256)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "pool_workqueue", file: !3158, line: 33, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "current_at", scope: !3157, file: !3158, line: 34, baseType: !177, size: 64, offset: 320)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "current_color", scope: !3157, file: !3158, line: 35, baseType: !7, size: 32, offset: 384)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "sleeping", scope: !3157, file: !3158, line: 37, baseType: !46, size: 32, offset: 416)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "last_func", scope: !3157, file: !3158, line: 40, baseType: !169, size: 64, offset: 448)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3157, file: !3158, line: 42, baseType: !143, size: 128, offset: 512)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3157, file: !3158, line: 44, baseType: !195, size: 64, offset: 640)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !3157, file: !3158, line: 45, baseType: !3177, size: 64, offset: 704)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DICompositeType(tag: DW_TAG_structure_type, name: "worker_pool", file: !3158, line: 15, flags: DIFlagFwdDecl)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3157, file: !3158, line: 47, baseType: !143, size: 128, offset: 768)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "last_active", scope: !3157, file: !3158, line: 50, baseType: !136, size: 64, offset: 896)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3157, file: !3158, line: 51, baseType: !7, size: 32, offset: 960)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3157, file: !3158, line: 52, baseType: !46, size: 32, offset: 992)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3157, file: !3158, line: 58, baseType: !3184, size: 256, offset: 1024)
!3184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 256, elements: !1538)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_wq", scope: !3157, file: !3158, line: 61, baseType: !2650, size: 64, offset: 1280)
!3186 = !DILocation(line: 342, column: 2, scope: !3153)
!3187 = !DILocation(line: 342, column: 17, scope: !3153)
!3188 = !DILocation(line: 342, column: 26, scope: !3153)
!3189 = !DILocation(line: 344, column: 9, scope: !3153)
!3190 = !DILocation(line: 344, column: 16, scope: !3153)
!3191 = !DILocation(line: 344, column: 19, scope: !3153)
!3192 = !DILocation(line: 344, column: 27, scope: !3153)
!3193 = !DILocation(line: 344, column: 40, scope: !3153)
!3194 = !DILocation(line: 0, scope: !3153)
!3195 = !DILocation(line: 345, column: 1, scope: !3153)
!3196 = !DILocation(line: 344, column: 2, scope: !3153)
!3197 = distinct !DISubprogram(name: "current_wq_worker", scope: !3158, file: !3158, line: 67, type: !3198, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!3156}
!3200 = !DILocation(line: 69, column: 6, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3197, file: !3158, line: 69, column: 6)
!3202 = !DILocation(line: 69, column: 16, scope: !3201)
!3203 = !DILocation(line: 69, column: 20, scope: !3201)
!3204 = !DILocation(line: 69, column: 29, scope: !3201)
!3205 = !DILocation(line: 69, column: 35, scope: !3201)
!3206 = !DILocation(line: 69, column: 6, scope: !3197)
!3207 = !DILocation(line: 70, column: 23, scope: !3201)
!3208 = !DILocation(line: 70, column: 10, scope: !3201)
!3209 = !DILocation(line: 70, column: 3, scope: !3201)
!3210 = !DILocation(line: 71, column: 2, scope: !3197)
!3211 = !DILocation(line: 72, column: 1, scope: !3197)
!3212 = distinct !DISubprogram(name: "async_run_entry_fn", scope: !3, file: !3, line: 115, type: !171, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3213)
!3213 = !{!3214, !3215, !3216, !3218, !3219, !3220, !3224}
!3214 = !DILocalVariable(name: "work", arg: 1, scope: !3212, file: !3, line: 115, type: !173)
!3215 = !DILocalVariable(name: "entry", scope: !3212, file: !3, line: 117, type: !147)
!3216 = !DILocalVariable(name: "__mptr", scope: !3217, file: !3, line: 118, type: !135)
!3217 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 118, column: 3)
!3218 = !DILocalVariable(name: "flags", scope: !3212, file: !3, line: 119, type: !136)
!3219 = !DILocalVariable(name: "calltime", scope: !3212, file: !3, line: 120, type: !341)
!3220 = !DILocalVariable(name: "__dummy", scope: !3221, file: !3, line: 134, type: !136)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 134, column: 2)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 134, column: 2)
!3223 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 134, column: 2)
!3224 = !DILocalVariable(name: "__dummy2", scope: !3221, file: !3, line: 134, type: !136)
!3225 = !DILocation(line: 115, column: 52, scope: !3212)
!3226 = !DILocation(line: 117, column: 2, scope: !3212)
!3227 = !DILocation(line: 117, column: 22, scope: !3212)
!3228 = !DILocation(line: 118, column: 3, scope: !3217)
!3229 = !DILocation(line: 118, column: 3, scope: !3212)
!3230 = !DILocation(line: 119, column: 2, scope: !3212)
!3231 = !DILocation(line: 119, column: 16, scope: !3212)
!3232 = !DILocation(line: 120, column: 2, scope: !3212)
!3233 = !DILocation(line: 120, column: 10, scope: !3212)
!3234 = !DILocation(line: 123, column: 2, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 123, column: 2)
!3236 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 123, column: 2)
!3237 = !DILocation(line: 123, column: 2, scope: !3236)
!3238 = !DILocation(line: 125, column: 13, scope: !3212)
!3239 = !DILocation(line: 125, column: 11, scope: !3212)
!3240 = !DILocation(line: 127, column: 2, scope: !3212)
!3241 = !DILocation(line: 127, column: 9, scope: !3212)
!3242 = !DILocation(line: 127, column: 14, scope: !3212)
!3243 = !DILocation(line: 127, column: 21, scope: !3212)
!3244 = !DILocation(line: 127, column: 27, scope: !3212)
!3245 = !DILocation(line: 127, column: 34, scope: !3212)
!3246 = !DILocation(line: 129, column: 2, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 129, column: 2)
!3248 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 129, column: 2)
!3249 = !DILocation(line: 129, column: 2, scope: !3248)
!3250 = !DILocation(line: 134, column: 2, scope: !3212)
!3251 = !DILocation(line: 134, column: 2, scope: !3223)
!3252 = !DILocation(line: 134, column: 2, scope: !3221)
!3253 = !DILocation(line: 134, column: 2, scope: !3222)
!3254 = !DILocation(line: 135, column: 17, scope: !3212)
!3255 = !DILocation(line: 135, column: 24, scope: !3212)
!3256 = !DILocation(line: 135, column: 2, scope: !3212)
!3257 = !DILocation(line: 136, column: 17, scope: !3212)
!3258 = !DILocation(line: 136, column: 24, scope: !3212)
!3259 = !DILocation(line: 136, column: 2, scope: !3212)
!3260 = !DILocation(line: 139, column: 8, scope: !3212)
!3261 = !DILocation(line: 139, column: 2, scope: !3212)
!3262 = !DILocation(line: 140, column: 2, scope: !3212)
!3263 = !DILocation(line: 142, column: 38, scope: !3212)
!3264 = !DILocation(line: 142, column: 2, scope: !3212)
!3265 = !DILocation(line: 145, column: 2, scope: !3212)
!3266 = !DILocation(line: 146, column: 1, scope: !3212)
!3267 = distinct !DISubprogram(name: "kmalloc", scope: !97, file: !97, line: 591, type: !1782, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3268)
!3268 = !{!3269, !3270, !3271}
!3269 = !DILocalVariable(name: "size", arg: 1, scope: !3267, file: !97, line: 591, type: !1000)
!3270 = !DILocalVariable(name: "flags", arg: 2, scope: !3267, file: !97, line: 591, type: !133)
!3271 = !DILocalVariable(name: "index", scope: !3272, file: !97, line: 594, type: !7)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !97, line: 593, column: 42)
!3273 = distinct !DILexicalBlock(scope: !3267, file: !97, line: 593, column: 6)
!3274 = !DILocation(line: 591, column: 61, scope: !3267)
!3275 = !DILocation(line: 591, column: 73, scope: !3267)
!3276 = !DILocation(line: 593, column: 27, scope: !3273)
!3277 = !DILocation(line: 593, column: 6, scope: !3273)
!3278 = !DILocation(line: 593, column: 33, scope: !3273)
!3279 = !DILocation(line: 593, column: 36, scope: !3273)
!3280 = !DILocation(line: 593, column: 6, scope: !3267)
!3281 = !DILocation(line: 594, column: 3, scope: !3272)
!3282 = !DILocation(line: 594, column: 16, scope: !3272)
!3283 = !DILocation(line: 596, column: 7, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3272, file: !97, line: 596, column: 7)
!3285 = !DILocation(line: 596, column: 12, scope: !3284)
!3286 = !DILocation(line: 596, column: 7, scope: !3272)
!3287 = !DILocation(line: 597, column: 25, scope: !3284)
!3288 = !DILocation(line: 597, column: 31, scope: !3284)
!3289 = !DILocation(line: 597, column: 11, scope: !3284)
!3290 = !DILocation(line: 597, column: 4, scope: !3284)
!3291 = !DILocation(line: 599, column: 11, scope: !3272)
!3292 = !DILocation(line: 599, column: 9, scope: !3272)
!3293 = !DILocation(line: 601, column: 33, scope: !3272)
!3294 = !DILocation(line: 601, column: 40, scope: !3272)
!3295 = !DILocation(line: 601, column: 20, scope: !3272)
!3296 = !DILocation(line: 601, column: 5, scope: !3272)
!3297 = !DILocation(line: 601, column: 51, scope: !3272)
!3298 = !DILocation(line: 602, column: 5, scope: !3272)
!3299 = !DILocation(line: 602, column: 12, scope: !3272)
!3300 = !DILocation(line: 600, column: 10, scope: !3272)
!3301 = !DILocation(line: 600, column: 3, scope: !3272)
!3302 = !DILocation(line: 603, column: 2, scope: !3273)
!3303 = !DILocation(line: 604, column: 19, scope: !3267)
!3304 = !DILocation(line: 604, column: 25, scope: !3267)
!3305 = !DILocation(line: 604, column: 9, scope: !3267)
!3306 = !DILocation(line: 604, column: 2, scope: !3267)
!3307 = !DILocation(line: 605, column: 1, scope: !3267)
!3308 = !DISubprogram(name: "kmalloc_large", scope: !97, file: !97, line: 531, type: !1782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3309 = distinct !DISubprogram(name: "__kmalloc_index", scope: !97, file: !97, line: 444, type: !3310, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3312)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!7, !1000, !1034}
!3312 = !{!3313, !3314}
!3313 = !DILocalVariable(name: "size", arg: 1, scope: !3309, file: !97, line: 444, type: !1000)
!3314 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3309, file: !97, line: 445, type: !1034)
!3315 = !DILocation(line: 444, column: 60, scope: !3309)
!3316 = !DILocation(line: 445, column: 16, scope: !3309)
!3317 = !DILocation(line: 447, column: 7, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 447, column: 6)
!3319 = !DILocation(line: 447, column: 6, scope: !3309)
!3320 = !DILocation(line: 448, column: 3, scope: !3318)
!3321 = !DILocation(line: 450, column: 6, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 450, column: 6)
!3323 = !DILocation(line: 450, column: 11, scope: !3322)
!3324 = !DILocation(line: 450, column: 6, scope: !3309)
!3325 = !DILocation(line: 451, column: 3, scope: !3322)
!3326 = !DILocation(line: 453, column: 32, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 453, column: 6)
!3328 = !DILocation(line: 453, column: 37, scope: !3327)
!3329 = !DILocation(line: 453, column: 42, scope: !3327)
!3330 = !DILocation(line: 453, column: 45, scope: !3327)
!3331 = !DILocation(line: 453, column: 50, scope: !3327)
!3332 = !DILocation(line: 453, column: 6, scope: !3309)
!3333 = !DILocation(line: 454, column: 3, scope: !3327)
!3334 = !DILocation(line: 455, column: 32, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 455, column: 6)
!3336 = !DILocation(line: 455, column: 37, scope: !3335)
!3337 = !DILocation(line: 455, column: 43, scope: !3335)
!3338 = !DILocation(line: 455, column: 46, scope: !3335)
!3339 = !DILocation(line: 455, column: 51, scope: !3335)
!3340 = !DILocation(line: 455, column: 6, scope: !3309)
!3341 = !DILocation(line: 456, column: 3, scope: !3335)
!3342 = !DILocation(line: 457, column: 6, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 457, column: 6)
!3344 = !DILocation(line: 457, column: 11, scope: !3343)
!3345 = !DILocation(line: 457, column: 6, scope: !3309)
!3346 = !DILocation(line: 457, column: 26, scope: !3343)
!3347 = !DILocation(line: 458, column: 6, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 458, column: 6)
!3349 = !DILocation(line: 458, column: 11, scope: !3348)
!3350 = !DILocation(line: 458, column: 6, scope: !3309)
!3351 = !DILocation(line: 458, column: 26, scope: !3348)
!3352 = !DILocation(line: 459, column: 6, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 459, column: 6)
!3354 = !DILocation(line: 459, column: 11, scope: !3353)
!3355 = !DILocation(line: 459, column: 6, scope: !3309)
!3356 = !DILocation(line: 459, column: 26, scope: !3353)
!3357 = !DILocation(line: 460, column: 6, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 460, column: 6)
!3359 = !DILocation(line: 460, column: 11, scope: !3358)
!3360 = !DILocation(line: 460, column: 6, scope: !3309)
!3361 = !DILocation(line: 460, column: 26, scope: !3358)
!3362 = !DILocation(line: 461, column: 6, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 461, column: 6)
!3364 = !DILocation(line: 461, column: 11, scope: !3363)
!3365 = !DILocation(line: 461, column: 6, scope: !3309)
!3366 = !DILocation(line: 461, column: 26, scope: !3363)
!3367 = !DILocation(line: 462, column: 6, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 462, column: 6)
!3369 = !DILocation(line: 462, column: 11, scope: !3368)
!3370 = !DILocation(line: 462, column: 6, scope: !3309)
!3371 = !DILocation(line: 462, column: 26, scope: !3368)
!3372 = !DILocation(line: 463, column: 6, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 463, column: 6)
!3374 = !DILocation(line: 463, column: 11, scope: !3373)
!3375 = !DILocation(line: 463, column: 6, scope: !3309)
!3376 = !DILocation(line: 463, column: 26, scope: !3373)
!3377 = !DILocation(line: 464, column: 6, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 464, column: 6)
!3379 = !DILocation(line: 464, column: 11, scope: !3378)
!3380 = !DILocation(line: 464, column: 6, scope: !3309)
!3381 = !DILocation(line: 464, column: 26, scope: !3378)
!3382 = !DILocation(line: 465, column: 6, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 465, column: 6)
!3384 = !DILocation(line: 465, column: 11, scope: !3383)
!3385 = !DILocation(line: 465, column: 6, scope: !3309)
!3386 = !DILocation(line: 465, column: 26, scope: !3383)
!3387 = !DILocation(line: 466, column: 6, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 466, column: 6)
!3389 = !DILocation(line: 466, column: 11, scope: !3388)
!3390 = !DILocation(line: 466, column: 6, scope: !3309)
!3391 = !DILocation(line: 466, column: 26, scope: !3388)
!3392 = !DILocation(line: 467, column: 6, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 467, column: 6)
!3394 = !DILocation(line: 467, column: 11, scope: !3393)
!3395 = !DILocation(line: 467, column: 6, scope: !3309)
!3396 = !DILocation(line: 467, column: 26, scope: !3393)
!3397 = !DILocation(line: 468, column: 6, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 468, column: 6)
!3399 = !DILocation(line: 468, column: 11, scope: !3398)
!3400 = !DILocation(line: 468, column: 6, scope: !3309)
!3401 = !DILocation(line: 468, column: 26, scope: !3398)
!3402 = !DILocation(line: 469, column: 6, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 469, column: 6)
!3404 = !DILocation(line: 469, column: 11, scope: !3403)
!3405 = !DILocation(line: 469, column: 6, scope: !3309)
!3406 = !DILocation(line: 469, column: 26, scope: !3403)
!3407 = !DILocation(line: 470, column: 6, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 470, column: 6)
!3409 = !DILocation(line: 470, column: 11, scope: !3408)
!3410 = !DILocation(line: 470, column: 6, scope: !3309)
!3411 = !DILocation(line: 470, column: 26, scope: !3408)
!3412 = !DILocation(line: 471, column: 6, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 471, column: 6)
!3414 = !DILocation(line: 471, column: 11, scope: !3413)
!3415 = !DILocation(line: 471, column: 6, scope: !3309)
!3416 = !DILocation(line: 471, column: 26, scope: !3413)
!3417 = !DILocation(line: 472, column: 6, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 472, column: 6)
!3419 = !DILocation(line: 472, column: 11, scope: !3418)
!3420 = !DILocation(line: 472, column: 6, scope: !3309)
!3421 = !DILocation(line: 472, column: 26, scope: !3418)
!3422 = !DILocation(line: 473, column: 6, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 473, column: 6)
!3424 = !DILocation(line: 473, column: 11, scope: !3423)
!3425 = !DILocation(line: 473, column: 6, scope: !3309)
!3426 = !DILocation(line: 473, column: 26, scope: !3423)
!3427 = !DILocation(line: 474, column: 6, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 474, column: 6)
!3429 = !DILocation(line: 474, column: 11, scope: !3428)
!3430 = !DILocation(line: 474, column: 6, scope: !3309)
!3431 = !DILocation(line: 474, column: 27, scope: !3428)
!3432 = !DILocation(line: 475, column: 6, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 475, column: 6)
!3434 = !DILocation(line: 475, column: 11, scope: !3433)
!3435 = !DILocation(line: 475, column: 6, scope: !3309)
!3436 = !DILocation(line: 475, column: 32, scope: !3433)
!3437 = !DILocation(line: 477, column: 50, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3309, file: !97, line: 477, column: 6)
!3439 = !{i8 0, i8 2}
!3440 = !DILocation(line: 477, column: 6, scope: !3309)
!3441 = !DILocation(line: 478, column: 3, scope: !3438)
!3442 = !DILocation(line: 478, column: 3, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !97, line: 478, column: 3)
!3444 = distinct !DILexicalBlock(scope: !3438, file: !97, line: 478, column: 3)
!3445 = !{i32 -2142310954}
!3446 = !DILocation(line: 478, column: 3, scope: !3444)
!3447 = !DILocation(line: 480, column: 3, scope: !3438)
!3448 = !DILocation(line: 480, column: 3, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3438, file: !97, line: 480, column: 3)
!3450 = !DILocation(line: 480, column: 3, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3449, file: !97, line: 480, column: 3)
!3452 = !DILocation(line: 480, column: 3, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3449, file: !97, line: 480, column: 3)
!3454 = !{i64 2152656545, i64 2152656574, i64 2152656620, i64 2152656678, i64 2152656732, i64 2152656786, i64 2152656841, i64 2152656872}
!3455 = !DILocation(line: 483, column: 2, scope: !3309)
!3456 = !DILocation(line: 484, column: 1, scope: !3309)
!3457 = !DISubprogram(name: "kmalloc_trace", scope: !97, file: !97, line: 525, type: !3458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!135, !3460, !133, !1000}
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3462, line: 11, flags: DIFlagFwdDecl)
!3462 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3463 = distinct !DISubprogram(name: "kmalloc_type", scope: !97, file: !97, line: 401, type: !3464, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3466)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!96, !133, !136}
!3466 = !{!3467, !3468}
!3467 = !DILocalVariable(name: "flags", arg: 1, scope: !3463, file: !97, line: 401, type: !133)
!3468 = !DILocalVariable(name: "caller", arg: 2, scope: !3463, file: !97, line: 401, type: !136)
!3469 = !DILocation(line: 401, column: 67, scope: !3463)
!3470 = !DILocation(line: 401, column: 88, scope: !3463)
!3471 = !DILocation(line: 407, column: 6, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3463, file: !97, line: 407, column: 6)
!3473 = !DILocation(line: 407, column: 6, scope: !3463)
!3474 = !DILocation(line: 413, column: 3, scope: !3472)
!3475 = !DILocation(line: 423, column: 38, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3463, file: !97, line: 423, column: 6)
!3477 = !DILocation(line: 423, column: 44, scope: !3476)
!3478 = !DILocation(line: 423, column: 6, scope: !3463)
!3479 = !DILocation(line: 424, column: 3, scope: !3476)
!3480 = !DILocation(line: 426, column: 3, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3463, file: !97, line: 425, column: 6)
!3482 = !DILocation(line: 429, column: 1, scope: !3463)
!3483 = !DISubprogram(name: "__kmalloc", scope: !97, file: !97, line: 488, type: !1782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3484 = !DISubprogram(name: "__compiletime_assert_204", scope: !97, file: !97, line: 478, type: !1710, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3485 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3486, file: !3486, line: 66, type: !3487, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3492)
!3486 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!3487 = !DISubroutineType(types: !3488)
!3488 = !{null, !3489, !1000}
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3491)
!3491 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3492 = !{!3493, !3494}
!3493 = !DILocalVariable(name: "v", arg: 1, scope: !3485, file: !3486, line: 66, type: !3489)
!3494 = !DILocalVariable(name: "size", arg: 2, scope: !3485, file: !3486, line: 66, type: !1000)
!3495 = !DILocation(line: 66, column: 73, scope: !3485)
!3496 = !DILocation(line: 66, column: 83, scope: !3485)
!3497 = !DILocation(line: 68, column: 19, scope: !3485)
!3498 = !DILocation(line: 68, column: 22, scope: !3485)
!3499 = !DILocation(line: 68, column: 2, scope: !3485)
!3500 = !DILocation(line: 69, column: 2, scope: !3485)
!3501 = !DILocation(line: 70, column: 1, scope: !3485)
!3502 = distinct !DISubprogram(name: "raw_atomic_read", scope: !3503, file: !3503, line: 442, type: !1796, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3504)
!3503 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!3504 = !{!3505}
!3505 = !DILocalVariable(name: "v", arg: 1, scope: !3502, file: !3503, line: 442, type: !1798)
!3506 = !DILocation(line: 442, column: 33, scope: !3502)
!3507 = !DILocation(line: 444, column: 26, scope: !3502)
!3508 = !DILocation(line: 444, column: 9, scope: !3502)
!3509 = !DILocation(line: 444, column: 2, scope: !3502)
!3510 = distinct !DISubprogram(name: "kasan_check_read", scope: !3511, file: !3511, line: 40, type: !3512, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3514)
!3511 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!1034, !3489, !7}
!3514 = !{!3515, !3516}
!3515 = !DILocalVariable(name: "p", arg: 1, scope: !3510, file: !3511, line: 40, type: !3489)
!3516 = !DILocalVariable(name: "size", arg: 2, scope: !3510, file: !3511, line: 40, type: !7)
!3517 = !DILocation(line: 40, column: 58, scope: !3510)
!3518 = !DILocation(line: 40, column: 74, scope: !3510)
!3519 = !DILocation(line: 42, column: 2, scope: !3510)
!3520 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3521, file: !3521, line: 229, type: !3522, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3524)
!3521 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3522 = !DISubroutineType(types: !3523)
!3523 = !{null, !3489, !1000, !46}
!3524 = !{!3525, !3526, !3527}
!3525 = !DILocalVariable(name: "ptr", arg: 1, scope: !3520, file: !3521, line: 229, type: !3489)
!3526 = !DILocalVariable(name: "size", arg: 2, scope: !3520, file: !3521, line: 229, type: !1000)
!3527 = !DILocalVariable(name: "type", arg: 3, scope: !3520, file: !3521, line: 230, type: !46)
!3528 = !DILocation(line: 229, column: 60, scope: !3520)
!3529 = !DILocation(line: 229, column: 72, scope: !3520)
!3530 = !DILocation(line: 230, column: 15, scope: !3520)
!3531 = !DILocation(line: 230, column: 23, scope: !3520)
!3532 = distinct !DISubprogram(name: "arch_atomic_read", scope: !3533, file: !3533, line: 17, type: !1796, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3534)
!3533 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!3534 = !{!3535}
!3535 = !DILocalVariable(name: "v", arg: 1, scope: !3532, file: !3533, line: 17, type: !1798)
!3536 = !DILocation(line: 17, column: 61, scope: !3532)
!3537 = !DILocation(line: 23, column: 9, scope: !3532)
!3538 = !DILocation(line: 23, column: 2, scope: !3532)
!3539 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !1812, file: !1812, line: 43, type: !3540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{null, !1815, !136}
!3542 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3543, file: !3543, line: 35, type: !3544, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3546)
!3543 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!3544 = !DISubroutineType(types: !3545)
!3545 = !{null, !142}
!3546 = !{!3547}
!3547 = !DILocalVariable(name: "list", arg: 1, scope: !3542, file: !3543, line: 35, type: !142)
!3548 = !DILocation(line: 35, column: 53, scope: !3542)
!3549 = !DILocation(line: 37, column: 2, scope: !3542)
!3550 = !DILocation(line: 37, column: 2, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3542, file: !3543, line: 37, column: 2)
!3552 = !DILocation(line: 37, column: 2, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3551, file: !3543, line: 37, column: 2)
!3554 = !DILocation(line: 37, column: 2, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3551, file: !3543, line: 37, column: 2)
!3556 = !DILocation(line: 38, column: 2, scope: !3542)
!3557 = !DILocation(line: 38, column: 2, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3542, file: !3543, line: 38, column: 2)
!3559 = !DILocation(line: 38, column: 2, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3558, file: !3543, line: 38, column: 2)
!3561 = !DILocation(line: 38, column: 2, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3558, file: !3543, line: 38, column: 2)
!3563 = !DILocation(line: 39, column: 1, scope: !3542)
!3564 = distinct !DISubprogram(name: "__init_work", scope: !107, file: !107, line: 263, type: !3565, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3567)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{null, !173, !46}
!3567 = !{!3568, !3569}
!3568 = !DILocalVariable(name: "work", arg: 1, scope: !3564, file: !107, line: 263, type: !173)
!3569 = !DILocalVariable(name: "onstack", arg: 2, scope: !3564, file: !107, line: 263, type: !46)
!3570 = !DILocation(line: 263, column: 52, scope: !3564)
!3571 = !DILocation(line: 263, column: 62, scope: !3564)
!3572 = !DILocation(line: 263, column: 73, scope: !3564)
!3573 = distinct !DISubprogram(name: "list_add_tail", scope: !3543, file: !3543, line: 181, type: !3574, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3576)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{null, !142, !142}
!3576 = !{!3577, !3578}
!3577 = !DILocalVariable(name: "new", arg: 1, scope: !3573, file: !3543, line: 181, type: !142)
!3578 = !DILocalVariable(name: "head", arg: 2, scope: !3573, file: !3543, line: 181, type: !142)
!3579 = !DILocation(line: 181, column: 52, scope: !3573)
!3580 = !DILocation(line: 181, column: 75, scope: !3573)
!3581 = !DILocation(line: 183, column: 13, scope: !3573)
!3582 = !DILocation(line: 183, column: 18, scope: !3573)
!3583 = !DILocation(line: 183, column: 24, scope: !3573)
!3584 = !DILocation(line: 183, column: 30, scope: !3573)
!3585 = !DILocation(line: 183, column: 2, scope: !3573)
!3586 = !DILocation(line: 184, column: 1, scope: !3573)
!3587 = distinct !DISubprogram(name: "atomic_inc", scope: !1795, file: !1795, line: 433, type: !3588, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3591)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{null, !3590}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!3591 = !{!3592}
!3592 = !DILocalVariable(name: "v", arg: 1, scope: !3587, file: !1795, line: 433, type: !3590)
!3593 = !DILocation(line: 433, column: 22, scope: !3587)
!3594 = !DILocation(line: 435, column: 31, scope: !3587)
!3595 = !DILocation(line: 435, column: 2, scope: !3587)
!3596 = !DILocation(line: 436, column: 17, scope: !3587)
!3597 = !DILocation(line: 436, column: 2, scope: !3587)
!3598 = !DILocation(line: 437, column: 1, scope: !3587)
!3599 = !DISubprogram(name: "queue_work_node", scope: !107, file: !107, line: 498, type: !3600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!1034, !46, !2650, !173}
!3602 = distinct !DISubprogram(name: "__list_add", scope: !3543, file: !3543, line: 146, type: !3603, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3605)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{null, !142, !142, !142}
!3605 = !{!3606, !3607, !3608}
!3606 = !DILocalVariable(name: "new", arg: 1, scope: !3602, file: !3543, line: 146, type: !142)
!3607 = !DILocalVariable(name: "prev", arg: 2, scope: !3602, file: !3543, line: 147, type: !142)
!3608 = !DILocalVariable(name: "next", arg: 3, scope: !3602, file: !3543, line: 148, type: !142)
!3609 = !DILocation(line: 146, column: 49, scope: !3602)
!3610 = !DILocation(line: 147, column: 28, scope: !3602)
!3611 = !DILocation(line: 148, column: 28, scope: !3602)
!3612 = !DILocation(line: 150, column: 24, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3602, file: !3543, line: 150, column: 6)
!3614 = !DILocation(line: 150, column: 29, scope: !3613)
!3615 = !DILocation(line: 150, column: 35, scope: !3613)
!3616 = !DILocation(line: 150, column: 7, scope: !3613)
!3617 = !DILocation(line: 150, column: 6, scope: !3602)
!3618 = !DILocation(line: 151, column: 3, scope: !3613)
!3619 = !DILocation(line: 153, column: 15, scope: !3602)
!3620 = !DILocation(line: 153, column: 2, scope: !3602)
!3621 = !DILocation(line: 153, column: 8, scope: !3602)
!3622 = !DILocation(line: 153, column: 13, scope: !3602)
!3623 = !DILocation(line: 154, column: 14, scope: !3602)
!3624 = !DILocation(line: 154, column: 2, scope: !3602)
!3625 = !DILocation(line: 154, column: 7, scope: !3602)
!3626 = !DILocation(line: 154, column: 12, scope: !3602)
!3627 = !DILocation(line: 155, column: 14, scope: !3602)
!3628 = !DILocation(line: 155, column: 2, scope: !3602)
!3629 = !DILocation(line: 155, column: 7, scope: !3602)
!3630 = !DILocation(line: 155, column: 12, scope: !3602)
!3631 = !DILocation(line: 156, column: 2, scope: !3602)
!3632 = !DILocation(line: 156, column: 2, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3602, file: !3543, line: 156, column: 2)
!3634 = !DILocation(line: 156, column: 2, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3633, file: !3543, line: 156, column: 2)
!3636 = !DILocation(line: 156, column: 2, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3633, file: !3543, line: 156, column: 2)
!3638 = !DILocation(line: 157, column: 1, scope: !3602)
!3639 = distinct !DISubprogram(name: "__list_add_valid", scope: !3543, file: !3543, line: 128, type: !3640, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!1034, !142, !142, !142}
!3642 = !{!3643, !3644, !3645}
!3643 = !DILocalVariable(name: "new", arg: 1, scope: !3639, file: !3543, line: 128, type: !142)
!3644 = !DILocalVariable(name: "prev", arg: 2, scope: !3639, file: !3543, line: 129, type: !142)
!3645 = !DILocalVariable(name: "next", arg: 3, scope: !3639, file: !3543, line: 130, type: !142)
!3646 = !DILocation(line: 128, column: 55, scope: !3639)
!3647 = !DILocation(line: 129, column: 23, scope: !3639)
!3648 = !DILocation(line: 130, column: 23, scope: !3639)
!3649 = !DILocation(line: 132, column: 2, scope: !3639)
!3650 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3486, file: !3486, line: 94, type: !3487, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3651)
!3651 = !{!3652, !3653}
!3652 = !DILocalVariable(name: "v", arg: 1, scope: !3650, file: !3486, line: 94, type: !3489)
!3653 = !DILocalVariable(name: "size", arg: 2, scope: !3650, file: !3486, line: 94, type: !1000)
!3654 = !DILocation(line: 94, column: 79, scope: !3650)
!3655 = !DILocation(line: 94, column: 89, scope: !3650)
!3656 = !DILocation(line: 96, column: 20, scope: !3650)
!3657 = !DILocation(line: 96, column: 23, scope: !3650)
!3658 = !DILocation(line: 96, column: 2, scope: !3650)
!3659 = !DILocation(line: 97, column: 2, scope: !3650)
!3660 = !DILocation(line: 98, column: 1, scope: !3650)
!3661 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !3503, file: !3503, line: 976, type: !3588, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3662)
!3662 = !{!3663}
!3663 = !DILocalVariable(name: "v", arg: 1, scope: !3661, file: !3503, line: 976, type: !3590)
!3664 = !DILocation(line: 976, column: 26, scope: !3661)
!3665 = !DILocation(line: 979, column: 18, scope: !3661)
!3666 = !DILocation(line: 979, column: 2, scope: !3661)
!3667 = !DILocation(line: 983, column: 1, scope: !3661)
!3668 = distinct !DISubprogram(name: "kasan_check_write", scope: !3511, file: !3511, line: 44, type: !3512, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3669)
!3669 = !{!3670, !3671}
!3670 = !DILocalVariable(name: "p", arg: 1, scope: !3668, file: !3511, line: 44, type: !3489)
!3671 = !DILocalVariable(name: "size", arg: 2, scope: !3668, file: !3511, line: 44, type: !7)
!3672 = !DILocation(line: 44, column: 59, scope: !3668)
!3673 = !DILocation(line: 44, column: 75, scope: !3668)
!3674 = !DILocation(line: 46, column: 2, scope: !3668)
!3675 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !3533, file: !3533, line: 51, type: !3588, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3676)
!3676 = !{!3677}
!3677 = !DILocalVariable(name: "v", arg: 1, scope: !3675, file: !3533, line: 51, type: !3590)
!3678 = !DILocation(line: 51, column: 55, scope: !3675)
!3679 = !DILocation(line: 54, column: 16, scope: !3675)
!3680 = !DILocation(line: 54, column: 19, scope: !3675)
!3681 = !DILocation(line: 53, column: 2, scope: !3675)
!3682 = !{i64 2148468033, i64 2148468072, i64 2148468093, i64 2148468130, i64 2148468153, i64 2148468023}
!3683 = !DILocation(line: 55, column: 1, scope: !3675)
!3684 = distinct !DISubprogram(name: "list_empty", scope: !3543, file: !3543, line: 371, type: !3685, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3689)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!46, !3687}
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!3689 = !{!3690}
!3690 = !DILocalVariable(name: "head", arg: 1, scope: !3684, file: !3543, line: 371, type: !3687)
!3691 = !DILocation(line: 371, column: 54, scope: !3684)
!3692 = !DILocation(line: 373, column: 9, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3684, file: !3543, line: 373, column: 9)
!3694 = !DILocation(line: 373, column: 9, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3693, file: !3543, line: 373, column: 9)
!3696 = !DILocation(line: 373, column: 34, scope: !3684)
!3697 = !DILocation(line: 373, column: 31, scope: !3684)
!3698 = !DILocation(line: 373, column: 2, scope: !3684)
!3699 = distinct !DISubprogram(name: "preempt_count", scope: !3700, file: !3700, line: 25, type: !2473, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3701)
!3700 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!3701 = !{!3702}
!3702 = !DILocalVariable(name: "pfo_val__", scope: !3703, file: !3700, line: 27, type: !206)
!3703 = distinct !DILexicalBlock(scope: !3699, file: !3700, line: 27, column: 9)
!3704 = !DILocation(line: 27, column: 9, scope: !3703)
!3705 = !{i64 2149649270}
!3706 = !DILocation(line: 27, column: 9, scope: !3699)
!3707 = !DILocation(line: 27, column: 48, scope: !3699)
!3708 = !DILocation(line: 27, column: 2, scope: !3699)
!3709 = distinct !DISubprogram(name: "get_current", scope: !3710, file: !3710, line: 39, type: !3711, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3713)
!3710 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!195}
!3713 = !{!3714, !3716, !3718}
!3714 = !DILocalVariable(name: "pscr_ret__", scope: !3715, file: !3710, line: 41, type: !195)
!3715 = distinct !DILexicalBlock(scope: !3709, file: !3710, line: 41, column: 9)
!3716 = !DILocalVariable(name: "__vpp_verify", scope: !3717, file: !3710, line: 41, type: !699)
!3717 = distinct !DILexicalBlock(scope: !3715, file: !3710, line: 41, column: 9)
!3718 = !DILocalVariable(name: "pfo_val__", scope: !3719, file: !3710, line: 41, type: !177)
!3719 = distinct !DILexicalBlock(scope: !3715, file: !3710, line: 41, column: 9)
!3720 = !DILocation(line: 41, column: 9, scope: !3715)
!3721 = !DILocation(line: 41, column: 9, scope: !3717)
!3722 = !DILocation(line: 41, column: 9, scope: !3719)
!3723 = !{i64 2148366264}
!3724 = !DILocation(line: 41, column: 9, scope: !3709)
!3725 = !DILocation(line: 41, column: 2, scope: !3709)
!3726 = !DISubprogram(name: "kthread_data", scope: !3727, file: !3727, line: 95, type: !3728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3727 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!135, !195}
!3730 = distinct !DISubprogram(name: "list_del_init", scope: !3543, file: !3543, line: 285, type: !3544, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3731)
!3731 = !{!3732}
!3732 = !DILocalVariable(name: "entry", arg: 1, scope: !3730, file: !3543, line: 285, type: !142)
!3733 = !DILocation(line: 285, column: 52, scope: !3730)
!3734 = !DILocation(line: 287, column: 19, scope: !3730)
!3735 = !DILocation(line: 287, column: 2, scope: !3730)
!3736 = !DILocation(line: 288, column: 17, scope: !3730)
!3737 = !DILocation(line: 288, column: 2, scope: !3730)
!3738 = !DILocation(line: 289, column: 1, scope: !3730)
!3739 = distinct !DISubprogram(name: "atomic_dec", scope: !1795, file: !1795, line: 590, type: !3588, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3740)
!3740 = !{!3741}
!3741 = !DILocalVariable(name: "v", arg: 1, scope: !3739, file: !1795, line: 590, type: !3590)
!3742 = !DILocation(line: 590, column: 22, scope: !3739)
!3743 = !DILocation(line: 592, column: 31, scope: !3739)
!3744 = !DILocation(line: 592, column: 2, scope: !3739)
!3745 = !DILocation(line: 593, column: 17, scope: !3739)
!3746 = !DILocation(line: 593, column: 2, scope: !3739)
!3747 = !DILocation(line: 594, column: 1, scope: !3739)
!3748 = !DISubprogram(name: "__wake_up", scope: !860, file: !860, line: 212, type: !3749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!46, !3139, !7, !46, !135}
!3751 = distinct !DISubprogram(name: "__list_del_entry", scope: !3543, file: !3543, line: 213, type: !3544, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3752)
!3752 = !{!3753}
!3753 = !DILocalVariable(name: "entry", arg: 1, scope: !3751, file: !3543, line: 213, type: !142)
!3754 = !DILocation(line: 213, column: 55, scope: !3751)
!3755 = !DILocation(line: 215, column: 30, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3751, file: !3543, line: 215, column: 6)
!3757 = !DILocation(line: 215, column: 7, scope: !3756)
!3758 = !DILocation(line: 215, column: 6, scope: !3751)
!3759 = !DILocation(line: 216, column: 3, scope: !3756)
!3760 = !DILocation(line: 218, column: 13, scope: !3751)
!3761 = !DILocation(line: 218, column: 20, scope: !3751)
!3762 = !DILocation(line: 218, column: 26, scope: !3751)
!3763 = !DILocation(line: 218, column: 33, scope: !3751)
!3764 = !DILocation(line: 218, column: 2, scope: !3751)
!3765 = !DILocation(line: 219, column: 1, scope: !3751)
!3766 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !3543, file: !3543, line: 134, type: !3767, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3769)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!1034, !142}
!3769 = !{!3770}
!3770 = !DILocalVariable(name: "entry", arg: 1, scope: !3766, file: !3543, line: 134, type: !142)
!3771 = !DILocation(line: 134, column: 61, scope: !3766)
!3772 = !DILocation(line: 136, column: 2, scope: !3766)
!3773 = distinct !DISubprogram(name: "__list_del", scope: !3543, file: !3543, line: 193, type: !3574, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3774)
!3774 = !{!3775, !3776}
!3775 = !DILocalVariable(name: "prev", arg: 1, scope: !3773, file: !3543, line: 193, type: !142)
!3776 = !DILocalVariable(name: "next", arg: 2, scope: !3773, file: !3543, line: 193, type: !142)
!3777 = !DILocation(line: 193, column: 50, scope: !3773)
!3778 = !DILocation(line: 193, column: 75, scope: !3773)
!3779 = !DILocation(line: 195, column: 15, scope: !3773)
!3780 = !DILocation(line: 195, column: 2, scope: !3773)
!3781 = !DILocation(line: 195, column: 8, scope: !3773)
!3782 = !DILocation(line: 195, column: 13, scope: !3773)
!3783 = !DILocation(line: 196, column: 2, scope: !3773)
!3784 = !DILocation(line: 196, column: 2, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3773, file: !3543, line: 196, column: 2)
!3786 = !DILocation(line: 196, column: 2, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3785, file: !3543, line: 196, column: 2)
!3788 = !DILocation(line: 196, column: 2, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3785, file: !3543, line: 196, column: 2)
!3790 = !DILocation(line: 197, column: 1, scope: !3773)
!3791 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !3503, file: !3503, line: 1194, type: !3588, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3792)
!3792 = !{!3793}
!3793 = !DILocalVariable(name: "v", arg: 1, scope: !3791, file: !3503, line: 1194, type: !3590)
!3794 = !DILocation(line: 1194, column: 26, scope: !3791)
!3795 = !DILocation(line: 1197, column: 18, scope: !3791)
!3796 = !DILocation(line: 1197, column: 2, scope: !3791)
!3797 = !DILocation(line: 1201, column: 1, scope: !3791)
!3798 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !3533, file: !3533, line: 58, type: !3588, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3799)
!3799 = !{!3800}
!3800 = !DILocalVariable(name: "v", arg: 1, scope: !3798, file: !3533, line: 58, type: !3590)
!3801 = !DILocation(line: 58, column: 55, scope: !3798)
!3802 = !DILocation(line: 61, column: 16, scope: !3798)
!3803 = !DILocation(line: 61, column: 19, scope: !3798)
!3804 = !DILocation(line: 60, column: 2, scope: !3798)
!3805 = !{i64 2148468396, i64 2148468435, i64 2148468456, i64 2148468493, i64 2148468516, i64 2148468386}
!3806 = !DILocation(line: 62, column: 1, scope: !3798)
