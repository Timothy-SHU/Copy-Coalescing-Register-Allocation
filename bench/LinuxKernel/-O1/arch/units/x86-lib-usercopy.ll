; ModuleID = 'arch/x86/lib/usercopy.c'
source_filename = "arch/x86/lib/usercopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_copy_from_user_nmi: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad copy_from_user_nmi ; .previous"

%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
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
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }

@__UNIQUE_ID___addressable_copy_from_user_nmi177 = internal global ptr @copy_from_user_nmi, section ".discard.addressable", align 8, !dbg !0
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_copy_from_user_nmi177], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @copy_from_user_nmi(ptr noundef %to, ptr noundef %from, i64 noundef %n) #0 align 16 !dbg !1516 {
entry:
  %retval = alloca i64, align 8
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !1522, metadata !DIExpression()), !dbg !1526
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !1523, metadata !DIExpression()), !dbg !1527
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1524, metadata !DIExpression()), !dbg !1528
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #9, !dbg !1529
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1525, metadata !DIExpression()), !dbg !1530
  %0 = load ptr, ptr %from.addr, align 8, !dbg !1531
  %1 = load i64, ptr %n.addr, align 8, !dbg !1533
  %call = call zeroext i1 @__access_ok(ptr noundef %0, i64 noundef %1) #10, !dbg !1534
  br i1 %call, label %if.end, label %if.then, !dbg !1535

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %n.addr, align 8, !dbg !1536
  store i64 %2, ptr %retval, align 8, !dbg !1537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1537

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @nmi_uaccess_okay() #10, !dbg !1538
  br i1 %call1, label %if.end3, label %if.then2, !dbg !1540

if.then2:                                         ; preds = %if.end
  %3 = load i64, ptr %n.addr, align 8, !dbg !1541
  store i64 %3, ptr %retval, align 8, !dbg !1542
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1542

if.end3:                                          ; preds = %if.end
  call void @pagefault_disable() #10, !dbg !1543
  %4 = load ptr, ptr %to.addr, align 8, !dbg !1544
  %5 = load ptr, ptr %from.addr, align 8, !dbg !1545
  %6 = load i64, ptr %n.addr, align 8, !dbg !1546
  call void @instrument_copy_from_user_before(ptr noundef %4, ptr noundef %5, i64 noundef %6) #10, !dbg !1547
  %7 = load ptr, ptr %to.addr, align 8, !dbg !1548
  %8 = load ptr, ptr %from.addr, align 8, !dbg !1549
  %9 = load i64, ptr %n.addr, align 8, !dbg !1550
  %call4 = call i64 @raw_copy_from_user(ptr noundef %7, ptr noundef %8, i64 noundef %9) #10, !dbg !1551
  store i64 %call4, ptr %ret, align 8, !dbg !1552
  %10 = load ptr, ptr %to.addr, align 8, !dbg !1553
  %11 = load ptr, ptr %from.addr, align 8, !dbg !1554
  %12 = load i64, ptr %n.addr, align 8, !dbg !1555
  %13 = load i64, ptr %ret, align 8, !dbg !1556
  call void @instrument_copy_from_user_after(ptr noundef %10, ptr noundef %11, i64 noundef %12, i64 noundef %13) #10, !dbg !1557
  call void @pagefault_enable() #10, !dbg !1558
  %14 = load i64, ptr %ret, align 8, !dbg !1559
  store i64 %14, ptr %retval, align 8, !dbg !1560
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1560

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #9, !dbg !1561
  %15 = load i64, ptr %retval, align 8, !dbg !1561
  ret i64 %15, !dbg !1561
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #3 align 16 !dbg !1562 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1567, metadata !DIExpression()), !dbg !1572
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1568, metadata !DIExpression()), !dbg !1573
  %0 = load i64, ptr %size.addr, align 8, !dbg !1574
  %cmp = icmp ule i64 %0, 4096, !dbg !1575
  %conv = zext i1 %cmp to i32, !dbg !1575
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !1576
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !1577

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1578
  %cmp1 = icmp ule i64 %2, 4096, !dbg !1579
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1580

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !1581
  %4 = ptrtoint ptr %3 to i64, !dbg !1581
  %cmp3 = icmp sge i64 %4, 0, !dbg !1581
  store i1 %cmp3, ptr %retval, align 1, !dbg !1583
  br label %return, !dbg !1583

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #9, !dbg !1584
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !1569, metadata !DIExpression()), !dbg !1585
  %5 = load i64, ptr %size.addr, align 8, !dbg !1586
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !1587
  %7 = ptrtoint ptr %6 to i64, !dbg !1588
  %add = add i64 %5, %7, !dbg !1589
  store i64 %add, ptr %sum, align 8, !dbg !1585
  %8 = load i64, ptr %sum, align 8, !dbg !1590
  %cmp5 = icmp sge i64 %8, 0, !dbg !1590
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !1591

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !1592
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !1593
  %11 = ptrtoint ptr %10 to i64, !dbg !1594
  %cmp7 = icmp uge i64 %9, %11, !dbg !1595
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !1596
  store i1 %12, ptr %retval, align 1, !dbg !1597
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #9, !dbg !1598
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !1599
  ret i1 %13, !dbg !1599
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1600 dso_local zeroext i1 @nmi_uaccess_okay() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disable() #3 align 16 !dbg !1604 {
entry:
  call void @pagefault_disabled_inc() #10, !dbg !1608
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1609, !srcloc !1610
  ret void, !dbg !1611
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_from_user_before(ptr noundef %to, ptr noundef %from, i64 noundef %n) #5 align 16 !dbg !1612 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !1617, metadata !DIExpression()), !dbg !1620
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !1618, metadata !DIExpression()), !dbg !1621
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1619, metadata !DIExpression()), !dbg !1622
  %0 = load ptr, ptr %to.addr, align 8, !dbg !1623
  %1 = load i64, ptr %n.addr, align 8, !dbg !1624
  %conv = trunc i64 %1 to i32, !dbg !1624
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !1625
  %2 = load ptr, ptr %to.addr, align 8, !dbg !1626
  %3 = load i64, ptr %n.addr, align 8, !dbg !1626
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #10, !dbg !1626
  ret void, !dbg !1627
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_copy_from_user(ptr noundef %dst, ptr noundef %src, i64 noundef %size) #5 align 16 !dbg !1628 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1630, metadata !DIExpression()), !dbg !1633
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1631, metadata !DIExpression()), !dbg !1634
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1632, metadata !DIExpression()), !dbg !1635
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1636
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1637
  %2 = load i64, ptr %size.addr, align 8, !dbg !1638
  %call = call i64 @copy_user_generic(ptr noundef %0, ptr noundef %1, i64 noundef %2) #10, !dbg !1639
  ret i64 %call, !dbg !1640
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_from_user_after(ptr noundef %to, ptr noundef %from, i64 noundef %n, i64 noundef %left) #5 align 16 !dbg !1641 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !1645, metadata !DIExpression()), !dbg !1649
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !1646, metadata !DIExpression()), !dbg !1650
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1647, metadata !DIExpression()), !dbg !1651
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !1648, metadata !DIExpression()), !dbg !1652
  %0 = load ptr, ptr %to.addr, align 8, !dbg !1653
  %1 = load i64, ptr %n.addr, align 8, !dbg !1654
  %2 = load i64, ptr %left.addr, align 8, !dbg !1655
  %sub = sub i64 %1, %2, !dbg !1656
  call void @kmsan_unpoison_memory(ptr noundef %0, i64 noundef %sub) #10, !dbg !1657
  ret void, !dbg !1658
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_enable() #3 align 16 !dbg !1659 {
entry:
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1660, !srcloc !1661
  call void @pagefault_disabled_dec() #10, !dbg !1662
  ret void, !dbg !1663
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disabled_inc() #5 align 16 !dbg !1664 {
entry:
  %call = call ptr @get_current() #10, !dbg !1665
  %pagefault_disabled = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 181, !dbg !1666
  %0 = load i32, ptr %pagefault_disabled, align 4, !dbg !1667
  %inc = add i32 %0, 1, !dbg !1667
  store i32 %inc, ptr %pagefault_disabled, align 4, !dbg !1667
  ret void, !dbg !1668
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !1669 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #9, !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1674, metadata !DIExpression()), !dbg !1680
  br label %do.body, !dbg !1680

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !1681
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1676, metadata !DIExpression()), !dbg !1681
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1681
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1681
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !1680
  br label %do.cond, !dbg !1681

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1681

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #9, !dbg !1682
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1678, metadata !DIExpression()), !dbg !1682
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #11, !dbg !1682, !srcloc !1683
  store i64 %1, ptr %pfo_val__, align 8, !dbg !1682
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !1682
  %3 = inttoptr i64 %2 to ptr, !dbg !1682
  store ptr %3, ptr %tmp, align 8, !dbg !1682
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #9, !dbg !1680
  %4 = load ptr, ptr %tmp, align 8, !dbg !1682
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !1680
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !1680
  store ptr %5, ptr %tmp1, align 8, !dbg !1680
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #9, !dbg !1684
  %6 = load ptr, ptr %tmp1, align 8, !dbg !1680
  ret ptr %6, !dbg !1685
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !1686 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1694, metadata !DIExpression()), !dbg !1696
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1695, metadata !DIExpression()), !dbg !1697
  ret i1 true, !dbg !1698
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !1699 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1704, metadata !DIExpression()), !dbg !1707
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1705, metadata !DIExpression()), !dbg !1708
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1706, metadata !DIExpression()), !dbg !1709
  ret void, !dbg !1710
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_user_generic(ptr noundef %to, ptr noundef %from, i64 noundef %len) #5 align 16 !dbg !1711 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !1713, metadata !DIExpression()), !dbg !1716
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !1714, metadata !DIExpression()), !dbg !1717
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1715, metadata !DIExpression()), !dbg !1718
  call void @stac() #10, !dbg !1719
  %0 = load i64, ptr %len.addr, align 8, !dbg !1720
  %1 = load ptr, ptr %to.addr, align 8, !dbg !1720
  %2 = load ptr, ptr %from.addr, align 8, !dbg !1720
  %3 = call i64 @llvm.read_register.i64(metadata !1506), !dbg !1720
  %4 = call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldnstr\0A661:\0A\09rep movsb\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call rep_movs_alternative\0A6651:\0A.popsection\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 %0, ptr %1, ptr %2, i64 %3) #9, !dbg !1720, !srcloc !1721
  %asmresult = extractvalue { i64, ptr, ptr, i64 } %4, 0, !dbg !1720
  %asmresult1 = extractvalue { i64, ptr, ptr, i64 } %4, 1, !dbg !1720
  %asmresult2 = extractvalue { i64, ptr, ptr, i64 } %4, 2, !dbg !1720
  %asmresult3 = extractvalue { i64, ptr, ptr, i64 } %4, 3, !dbg !1720
  store i64 %asmresult, ptr %len.addr, align 8, !dbg !1720
  store ptr %asmresult1, ptr %to.addr, align 8, !dbg !1720
  store ptr %asmresult2, ptr %from.addr, align 8, !dbg !1720
  call void @llvm.write_register.i64(metadata !1506, i64 %asmresult3), !dbg !1720
  call void @clac() #10, !dbg !1722
  %5 = load i64, ptr %len.addr, align 8, !dbg !1723
  ret i64 %5, !dbg !1724
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #5 align 16 !dbg !1725 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1727, !srcloc !1728
  ret void, !dbg !1729
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #5 align 16 !dbg !1730 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !1731, !srcloc !1732
  ret void, !dbg !1733
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #3 align 16 !dbg !1734 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1739, metadata !DIExpression()), !dbg !1741
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1740, metadata !DIExpression()), !dbg !1742
  ret void, !dbg !1743
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disabled_dec() #5 align 16 !dbg !1744 {
entry:
  %call = call ptr @get_current() #10, !dbg !1745
  %pagefault_disabled = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 181, !dbg !1746
  %0 = load i32, ptr %pagefault_disabled, align 4, !dbg !1747
  %dec = add i32 %0, -1, !dbg !1747
  store i32 %dec, ptr %pagefault_disabled, align 4, !dbg !1747
  ret void, !dbg !1748
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!1506}
!llvm.module.flags = !{!1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514}
!llvm.ident = !{!1515}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_copy_from_user_nmi177", scope: !2, file: !3, line: 55, type: !30, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/lib/.usercopy.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/lib/usercopy\22 -D KBUILD_BASENAME=\22usercopy\22 -D KBUILD_MODNAME=\22usercopy\22 -D __KBUILD_MODNAME=kmod_usercopy -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/lib/usercopy.ll arch/x86/lib/usercopy.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !1505, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/lib/usercopy.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee24333e6611c7a01f2d32852dbd9f33")
!4 = !{!5, !11, !17, !24}
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
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !36, line: 746, size: 58368, elements: !37)
!36 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!37 = !{!38, !50, !51, !52, !64, !65, !66, !67, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !159, !170, !297, !301, !304, !335, !336, !337, !338, !349, !351, !352, !353, !354, !355, !356, !367, !368, !371, !372, !373, !374, !375, !376, !377, !378, !385, !386, !393, !394, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !673, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !729, !731, !732, !733, !745, !747, !748, !749, !750, !751, !752, !758, !759, !760, !761, !762, !763, !764, !778, !784, !788, !789, !790, !793, !798, !801, !808, !813, !816, !819, !822, !825, !828, !831, !837, !838, !839, !845, !846, !850, !851, !852, !855, !862, !863, !872, !883, !884, !885, !886, !887, !892, !893, !894, !897, !898, !901, !904, !907, !910, !913, !914, !1001, !1012, !1013, !1014, !1015, !1021, !1026, !1027, !1028, !1031, !1032, !1035, !1038, !1039, !1042, !1043, !1044, !1047, !1048, !1049, !1052, !1053, !1054, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1086, !1089, !1157, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1169, !1241, !1243, !1244, !1245, !1246, !1247, !1259, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1276, !1277, !1278}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !35, file: !36, line: 752, baseType: !39, size: 192)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !40, line: 56, size: 192, elements: !41)
!40 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!41 = !{!42, !43, !44, !49}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !40, line: 57, baseType: !32, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !39, file: !40, line: 58, baseType: !32, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !39, file: !40, line: 59, baseType: !45, size: 32, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !46, line: 21, baseType: !47)
!46 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !48, line: 27, baseType: !7)
!48 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!49 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !39, file: !40, line: 61, baseType: !45, size: 32, offset: 160)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !35, file: !36, line: 754, baseType: !7, size: 32, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !35, file: !36, line: 767, baseType: !30, size: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !35, file: !36, line: 768, baseType: !53, size: 32, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !54, line: 113, baseType: !55)
!54 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !54, line: 111, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !55, file: !54, line: 112, baseType: !58, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !59, line: 174, baseType: !60)
!59 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 172, size: 32, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !60, file: !59, line: 173, baseType: !63, size: 32)
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !35, file: !36, line: 770, baseType: !7, size: 32, offset: 352)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !35, file: !36, line: 771, baseType: !7, size: 32, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !35, file: !36, line: 774, baseType: !63, size: 32, offset: 416)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !35, file: !36, line: 775, baseType: !68, size: 128, offset: 448)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !69, line: 58, size: 128, elements: !70)
!69 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!70 = !{!71, !77, !82, !86}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !68, file: !69, line: 59, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !73, line: 60, size: 64, elements: !74)
!73 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !72, file: !73, line: 61, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, scope: !68, file: !69, line: 60, baseType: !78, size: 32, offset: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !68, file: !69, line: 60, size: 32, elements: !79)
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !78, file: !69, line: 61, baseType: !7, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !78, file: !69, line: 62, baseType: !58, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !68, file: !69, line: 65, baseType: !83, size: 16, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !46, line: 19, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !48, line: 24, baseType: !85)
!85 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !68, file: !69, line: 65, baseType: !83, size: 16, offset: 112)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !35, file: !36, line: 776, baseType: !7, size: 32, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !35, file: !36, line: 777, baseType: !32, size: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !35, file: !36, line: 778, baseType: !34, size: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !35, file: !36, line: 787, baseType: !63, size: 32, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !35, file: !36, line: 788, baseType: !63, size: 32, offset: 800)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !35, file: !36, line: 790, baseType: !63, size: 32, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !35, file: !36, line: 792, baseType: !63, size: 32, offset: 864)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !35, file: !36, line: 793, baseType: !63, size: 32, offset: 896)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !35, file: !36, line: 794, baseType: !63, size: 32, offset: 928)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !35, file: !36, line: 795, baseType: !7, size: 32, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !35, file: !36, line: 797, baseType: !98, size: 2048, offset: 1024)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !36, line: 551, size: 2048, elements: !99)
!99 = !{!100, !105, !113, !117, !118, !124, !125, !126, !127, !128, !129, !133, !134, !135, !136, !138, !141, !142, !143}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !98, file: !36, line: 553, baseType: !101, size: 128)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !36, line: 411, size: 128, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !101, file: !36, line: 412, baseType: !32, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !101, file: !36, line: 413, baseType: !45, size: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !98, file: !36, line: 554, baseType: !106, size: 192, align: 64, offset: 128)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !107, line: 5, size: 192, align: 64, elements: !108)
!107 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!108 = !{!109, !110, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !106, file: !107, line: 6, baseType: !32, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !106, file: !107, line: 7, baseType: !111, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !106, file: !107, line: 8, baseType: !111, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !98, file: !36, line: 555, baseType: !114, size: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !46, line: 23, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !48, line: 31, baseType: !116)
!116 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !98, file: !36, line: 556, baseType: !114, size: 64, offset: 384)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !98, file: !36, line: 558, baseType: !119, size: 128, offset: 448)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !59, line: 190, size: 128, elements: !120)
!120 = !{!121, !123}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !59, line: 191, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !119, file: !59, line: 191, baseType: !122, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !98, file: !36, line: 559, baseType: !7, size: 32, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !98, file: !36, line: 561, baseType: !114, size: 64, offset: 640)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !98, file: !36, line: 562, baseType: !114, size: 64, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !98, file: !36, line: 563, baseType: !114, size: 64, offset: 768)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !98, file: !36, line: 564, baseType: !114, size: 64, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !98, file: !36, line: 565, baseType: !130, size: 64, offset: 896)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !46, line: 22, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !48, line: 30, baseType: !132)
!132 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !98, file: !36, line: 566, baseType: !114, size: 64, offset: 960)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !98, file: !36, line: 568, baseType: !114, size: 64, offset: 1024)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !98, file: !36, line: 571, baseType: !63, size: 32, offset: 1088)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !98, file: !36, line: 572, baseType: !137, size: 64, offset: 1152)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !98, file: !36, line: 574, baseType: !139, size: 64, offset: 1216)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !36, line: 49, flags: DIFlagFwdDecl)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !98, file: !36, line: 576, baseType: !139, size: 64, offset: 1280)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !98, file: !36, line: 578, baseType: !32, size: 64, offset: 1344)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !98, file: !36, line: 588, baseType: !144, size: 512, align: 512, offset: 1536)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !36, line: 497, size: 512, align: 512, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !144, file: !36, line: 498, baseType: !114, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !144, file: !36, line: 499, baseType: !114, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !144, file: !36, line: 500, baseType: !114, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !144, file: !36, line: 501, baseType: !45, size: 32, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !144, file: !36, line: 502, baseType: !45, size: 32, offset: 224)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !144, file: !36, line: 503, baseType: !32, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !144, file: !36, line: 504, baseType: !32, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !144, file: !36, line: 505, baseType: !32, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !144, file: !36, line: 506, baseType: !155, size: 64, align: 64, offset: 448)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !36, line: 445, size: 64, align: 64, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !155, file: !36, line: 446, baseType: !7, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !155, file: !36, line: 447, baseType: !7, size: 32, offset: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !35, file: !36, line: 798, baseType: !160, size: 384, offset: 3072)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !36, line: 592, size: 384, elements: !161)
!161 = !{!162, !163, !164, !165, !166, !167, !168}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !160, file: !36, line: 593, baseType: !119, size: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !160, file: !36, line: 594, baseType: !32, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !160, file: !36, line: 595, baseType: !32, size: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !160, file: !36, line: 596, baseType: !7, size: 32, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !160, file: !36, line: 597, baseType: !85, size: 16, offset: 288)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !160, file: !36, line: 598, baseType: !85, size: 16, offset: 304)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !160, file: !36, line: 600, baseType: !169, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !35, file: !36, line: 799, baseType: !171, size: 1792, offset: 3456)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !36, line: 610, size: 1792, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !294, !295}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !171, file: !36, line: 611, baseType: !106, size: 192, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !171, file: !36, line: 618, baseType: !114, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !171, file: !36, line: 619, baseType: !114, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !171, file: !36, line: 620, baseType: !114, size: 64, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !171, file: !36, line: 621, baseType: !114, size: 64, offset: 384)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !171, file: !36, line: 622, baseType: !114, size: 64, offset: 448)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !171, file: !36, line: 629, baseType: !130, size: 64, offset: 512)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !171, file: !36, line: 630, baseType: !114, size: 64, offset: 576)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !171, file: !36, line: 631, baseType: !7, size: 32, offset: 640)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !171, file: !36, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !171, file: !36, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !171, file: !36, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !171, file: !36, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !171, file: !36, line: 662, baseType: !187, size: 512, offset: 704)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !188)
!188 = !{!189, !197, !198, !203, !290, !291, !292, !293}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !187, file: !6, line: 119, baseType: !190, size: 256)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !191, line: 9, size: 256, elements: !192)
!191 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!192 = !{!193, !194}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !190, file: !191, line: 10, baseType: !106, size: 192, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !190, file: !191, line: 11, baseType: !195, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !196, line: 29, baseType: !130)
!196 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !187, file: !6, line: 120, baseType: !195, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !187, file: !6, line: 121, baseType: !199, size: 64, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!5, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !187, file: !6, line: 122, baseType: !204, size: 64, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !206)
!206 = !{!207, !258, !259, !263, !273, !274, !285, !289}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !205, file: !6, line: 160, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !210)
!210 = !{!211, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !209, file: !6, line: 216, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !213, line: 23, baseType: !214)
!213 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !213, line: 14, size: 32, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !214, file: !213, line: 15, baseType: !217, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !218, line: 44, baseType: !219)
!218 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !218, line: 14, size: 32, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, scope: !219, file: !218, line: 15, baseType: !222, size: 32)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !219, file: !218, line: 15, size: 32, elements: !223)
!223 = !{!224, !225, !233}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !222, file: !218, line: 16, baseType: !58, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, scope: !222, file: !218, line: 24, baseType: !226, size: 16)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !222, file: !218, line: 24, size: 16, elements: !227)
!227 = !{!228, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !226, file: !218, line: 25, baseType: !229, size: 8)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !46, line: 17, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !48, line: 21, baseType: !231)
!231 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !226, file: !218, line: 26, baseType: !229, size: 8, offset: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, scope: !222, file: !218, line: 28, baseType: !234, size: 32)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !222, file: !218, line: 28, size: 32, elements: !235)
!235 = !{!236, !237}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !234, file: !218, line: 29, baseType: !83, size: 16)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !234, file: !218, line: 30, baseType: !83, size: 16, offset: 16)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !209, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !209, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !209, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !209, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !209, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !209, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !209, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !209, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !209, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !209, file: !6, line: 227, baseType: !85, size: 16, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !209, file: !6, line: 228, baseType: !85, size: 16, offset: 208)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !209, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !209, file: !6, line: 235, baseType: !195, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !209, file: !6, line: 236, baseType: !202, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !209, file: !6, line: 237, baseType: !195, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !209, file: !6, line: 238, baseType: !202, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !209, file: !6, line: 239, baseType: !255, size: 4096, align: 512, offset: 512)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 4096, align: 512, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 8)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !205, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !205, file: !6, line: 162, baseType: !260, size: 32, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !59, line: 32, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !262, line: 96, baseType: !63)
!262 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!263 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !205, file: !6, line: 163, baseType: !264, size: 32, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !265, line: 274, baseType: !266)
!265 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !265, line: 274, size: 32, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !266, file: !265, line: 274, baseType: !269, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !265, line: 69, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !265, line: 64, size: 32, elements: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !270, file: !265, line: 65, baseType: !7, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !205, file: !6, line: 164, baseType: !202, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !205, file: !6, line: 165, baseType: !275, size: 128, offset: 256)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !191, line: 14, size: 128, elements: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !275, file: !191, line: 15, baseType: !278, size: 128)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !107, line: 26, size: 128, elements: !279)
!279 = !{!280, !284}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !278, file: !107, line: 27, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !107, line: 12, size: 64, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !281, file: !107, line: 13, baseType: !111, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !278, file: !107, line: 28, baseType: !111, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !205, file: !6, line: 166, baseType: !286, size: 64, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!195}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !205, file: !6, line: 167, baseType: !195, size: 64, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !187, file: !6, line: 123, baseType: !229, size: 8, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !187, file: !6, line: 124, baseType: !229, size: 8, offset: 456)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !187, file: !6, line: 125, baseType: !229, size: 8, offset: 464)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !187, file: !6, line: 126, baseType: !229, size: 8, offset: 472)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !171, file: !36, line: 671, baseType: !187, size: 512, offset: 1216)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !171, file: !36, line: 679, baseType: !296, size: 64, offset: 1728)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !35, file: !36, line: 800, baseType: !298, size: 64, offset: 5248)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !36, line: 800, flags: DIFlagFwdDecl)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !35, file: !36, line: 809, baseType: !302, size: 64, offset: 5312)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !36, line: 70, flags: DIFlagFwdDecl)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !35, file: !36, line: 825, baseType: !305, size: 2048, align: 512, offset: 5632)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !36, line: 509, size: 2048, align: 512, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !305, file: !36, line: 511, baseType: !114, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !305, file: !36, line: 512, baseType: !114, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !305, file: !36, line: 513, baseType: !114, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !305, file: !36, line: 514, baseType: !114, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !305, file: !36, line: 515, baseType: !114, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !305, file: !36, line: 516, baseType: !114, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !305, file: !36, line: 518, baseType: !114, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !305, file: !36, line: 519, baseType: !114, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !305, file: !36, line: 520, baseType: !130, size: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !305, file: !36, line: 522, baseType: !114, size: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !305, file: !36, line: 523, baseType: !114, size: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !305, file: !36, line: 524, baseType: !130, size: 64, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !305, file: !36, line: 526, baseType: !130, size: 64, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !305, file: !36, line: 527, baseType: !114, size: 64, offset: 832)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !305, file: !36, line: 529, baseType: !114, size: 64, offset: 896)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !305, file: !36, line: 530, baseType: !114, size: 64, offset: 960)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !305, file: !36, line: 531, baseType: !114, size: 64, offset: 1024)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !305, file: !36, line: 532, baseType: !114, size: 64, offset: 1088)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !305, file: !36, line: 533, baseType: !114, size: 64, offset: 1152)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !305, file: !36, line: 535, baseType: !114, size: 64, offset: 1216)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !305, file: !36, line: 536, baseType: !114, size: 64, offset: 1280)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !305, file: !36, line: 537, baseType: !114, size: 64, offset: 1344)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !305, file: !36, line: 538, baseType: !114, size: 64, offset: 1408)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !305, file: !36, line: 539, baseType: !114, size: 64, offset: 1472)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !305, file: !36, line: 540, baseType: !114, size: 64, offset: 1536)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !305, file: !36, line: 541, baseType: !114, size: 64, offset: 1600)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !305, file: !36, line: 542, baseType: !114, size: 64, offset: 1664)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !305, file: !36, line: 543, baseType: !114, size: 64, offset: 1728)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !35, file: !36, line: 833, baseType: !7, size: 32, offset: 7680)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !35, file: !36, line: 836, baseType: !7, size: 32, offset: 7712)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !35, file: !36, line: 837, baseType: !63, size: 32, offset: 7744)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !35, file: !36, line: 838, baseType: !339, size: 64, offset: 7808)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !342, line: 19, baseType: !343)
!342 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !342, line: 19, size: 64, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !343, file: !342, line: 19, baseType: !346, size: 64)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 1)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !35, file: !36, line: 839, baseType: !350, size: 64, offset: 7872)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !35, file: !36, line: 840, baseType: !341, size: 64, offset: 7936)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !35, file: !36, line: 841, baseType: !30, size: 64, offset: 8000)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !35, file: !36, line: 843, baseType: !85, size: 16, offset: 8064)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !35, file: !36, line: 845, baseType: !85, size: 16, offset: 8080)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !35, file: !36, line: 848, baseType: !63, size: 32, offset: 8096)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !35, file: !36, line: 849, baseType: !357, size: 32, offset: 8128)
!357 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !36, line: 718, size: 32, elements: !358)
!358 = !{!359, !366}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !357, file: !36, line: 724, baseType: !360, size: 32)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !357, file: !36, line: 719, size: 32, elements: !361)
!361 = !{!362, !363, !364, !365}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !360, file: !36, line: 720, baseType: !229, size: 8)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !360, file: !36, line: 721, baseType: !229, size: 8, offset: 8)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !360, file: !36, line: 722, baseType: !229, size: 8, offset: 16)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !360, file: !36, line: 723, baseType: !229, size: 8, offset: 24)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !357, file: !36, line: 725, baseType: !45, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !35, file: !36, line: 850, baseType: !119, size: 128, offset: 8192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !35, file: !36, line: 851, baseType: !369, size: 64, offset: 8320)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !36, line: 60, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !35, file: !36, line: 855, baseType: !32, size: 64, offset: 8384)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !35, file: !36, line: 856, baseType: !229, size: 8, offset: 8448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !35, file: !36, line: 857, baseType: !229, size: 8, offset: 8456)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !35, file: !36, line: 858, baseType: !63, size: 32, offset: 8480)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !35, file: !36, line: 859, baseType: !119, size: 128, offset: 8512)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !35, file: !36, line: 860, baseType: !63, size: 32, offset: 8640)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !35, file: !36, line: 861, baseType: !119, size: 128, offset: 8704)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !35, file: !36, line: 873, baseType: !379, size: 256, offset: 8832)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !36, line: 376, size: 256, elements: !380)
!380 = !{!381, !382, !383, !384}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !379, file: !36, line: 381, baseType: !32, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !379, file: !36, line: 384, baseType: !116, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !379, file: !36, line: 389, baseType: !116, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !379, file: !36, line: 392, baseType: !116, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !35, file: !36, line: 875, baseType: !119, size: 128, offset: 9088)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !35, file: !36, line: 877, baseType: !387, size: 320, offset: 9216)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !388, line: 86, size: 320, elements: !389)
!388 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!389 = !{!390, !391, !392}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !387, file: !388, line: 87, baseType: !63, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !387, file: !388, line: 88, baseType: !119, size: 128, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !387, file: !388, line: 89, baseType: !119, size: 128, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !35, file: !36, line: 878, baseType: !106, size: 192, align: 64, offset: 9536)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !35, file: !36, line: 881, baseType: !395, size: 64, offset: 9728)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !397, line: 733, size: 10240, elements: !398)
!397 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!398 = !{!399, !590}
!399 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !397, line: 734, baseType: !400, size: 10240)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !396, file: !397, line: 734, size: 10240, elements: !401)
!401 = !{!402, !406, !428, !435, !436, !437, !438, !439, !440, !448, !449, !450, !456, !457, !464, !465, !466, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !507, !521, !524, !556, !557, !558, !561, !565, !566, !569, !570, !571, !577, !578}
!402 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !397, line: 739, baseType: !403, size: 512, align: 512)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !397, line: 739, size: 512, align: 512, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !403, file: !397, line: 747, baseType: !58, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !400, file: !397, line: 750, baseType: !407, size: 128, offset: 512)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !408, line: 218, size: 128, elements: !409)
!408 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!409 = !{!410, !426, !427}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !408, line: 219, baseType: !411, size: 32)
!411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !407, file: !408, line: 219, size: 32, elements: !412)
!412 = !{!413, !422}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !411, file: !408, line: 220, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !415, line: 29, baseType: !416)
!415 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !415, line: 17, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !415, line: 18, baseType: !419, size: 32)
!419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !415, line: 18, size: 32, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !419, file: !415, line: 19, baseType: !214, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !411, file: !408, line: 221, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !408, line: 197, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !408, line: 197, elements: !425)
!425 = !{}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !407, file: !408, line: 223, baseType: !7, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !407, file: !408, line: 224, baseType: !30, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !400, file: !397, line: 752, baseType: !429, size: 64, offset: 640)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!32, !432, !32, !32, !32, !32}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !434, line: 537, flags: DIFlagFwdDecl)
!434 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !400, file: !397, line: 756, baseType: !32, size: 64, offset: 704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !400, file: !397, line: 757, baseType: !32, size: 64, offset: 768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !400, file: !397, line: 760, baseType: !32, size: 64, offset: 832)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !400, file: !397, line: 761, baseType: !32, size: 64, offset: 896)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !400, file: !397, line: 763, baseType: !32, size: 64, offset: 960)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !400, file: !397, line: 764, baseType: !441, size: 64, offset: 1024)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !434, line: 299, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 299, size: 64, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !443, file: !434, line: 299, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !447, line: 18, baseType: !32)
!447 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!448 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !400, file: !397, line: 773, baseType: !58, size: 32, offset: 1088)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !400, file: !397, line: 785, baseType: !58, size: 32, offset: 1120)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !400, file: !397, line: 795, baseType: !451, size: 64, offset: 1152)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !397, line: 726, size: 128, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !452, file: !397, line: 727, baseType: !114, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !452, file: !397, line: 728, baseType: !63, size: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !400, file: !397, line: 801, baseType: !32, size: 64, offset: 1216)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !400, file: !397, line: 804, baseType: !458, size: 64, offset: 1280)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !459, line: 13, baseType: !460)
!459 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !59, line: 181, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 179, size: 64, elements: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !461, file: !59, line: 180, baseType: !130, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !400, file: !397, line: 806, baseType: !63, size: 32, offset: 1344)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !400, file: !397, line: 808, baseType: !414, size: 32, offset: 1376)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !400, file: !397, line: 823, baseType: !467, size: 320, offset: 1408)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !468, line: 48, size: 320, elements: !469)
!468 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!469 = !{!470, !471, !472, !477, !478}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !467, file: !468, line: 49, baseType: !458, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !467, file: !468, line: 55, baseType: !458, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !467, file: !468, line: 57, baseType: !473, size: 32, offset: 128)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !474, line: 15, size: 32, elements: !475)
!474 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !473, file: !474, line: 20, baseType: !58, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !467, file: !468, line: 59, baseType: !212, size: 32, offset: 160)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !467, file: !468, line: 60, baseType: !119, size: 128, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !400, file: !397, line: 825, baseType: !119, size: 128, offset: 1728)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !400, file: !397, line: 845, baseType: !63, size: 32, offset: 1856)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !400, file: !397, line: 849, baseType: !32, size: 64, offset: 1920)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !400, file: !397, line: 850, baseType: !32, size: 64, offset: 1984)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !400, file: !397, line: 852, baseType: !32, size: 64, offset: 2048)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !400, file: !397, line: 853, baseType: !32, size: 64, offset: 2112)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !400, file: !397, line: 854, baseType: !460, size: 64, offset: 2176)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !400, file: !397, line: 855, baseType: !32, size: 64, offset: 2240)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !400, file: !397, line: 856, baseType: !32, size: 64, offset: 2304)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !400, file: !397, line: 857, baseType: !32, size: 64, offset: 2368)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !400, file: !397, line: 858, baseType: !32, size: 64, offset: 2432)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !400, file: !397, line: 865, baseType: !269, size: 32, offset: 2496)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !400, file: !397, line: 867, baseType: !414, size: 32, offset: 2528)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !400, file: !397, line: 869, baseType: !32, size: 64, offset: 2560)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !400, file: !397, line: 869, baseType: !32, size: 64, offset: 2624)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !400, file: !397, line: 869, baseType: !32, size: 64, offset: 2688)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !400, file: !397, line: 869, baseType: !32, size: 64, offset: 2752)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !400, file: !397, line: 870, baseType: !32, size: 64, offset: 2816)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !400, file: !397, line: 870, baseType: !32, size: 64, offset: 2880)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !400, file: !397, line: 870, baseType: !32, size: 64, offset: 2944)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !400, file: !397, line: 871, baseType: !32, size: 64, offset: 3008)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !400, file: !397, line: 871, baseType: !32, size: 64, offset: 3072)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !400, file: !397, line: 871, baseType: !32, size: 64, offset: 3136)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !400, file: !397, line: 871, baseType: !32, size: 64, offset: 3200)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !400, file: !397, line: 873, baseType: !504, size: 3328, offset: 3264)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 3328, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 52)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !400, file: !397, line: 875, baseType: !508, size: 1280, offset: 6592)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 1280, elements: !519)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !510, line: 22, size: 320, elements: !511)
!510 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!511 = !{!512, !513, !514, !515}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !509, file: !510, line: 23, baseType: !212, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !509, file: !510, line: 24, baseType: !130, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !509, file: !510, line: 26, baseType: !119, size: 128, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !509, file: !510, line: 28, baseType: !516, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !46, line: 20, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !48, line: 26, baseType: !63)
!519 = !{!520}
!520 = !DISubrange(count: 4)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !400, file: !397, line: 877, baseType: !522, size: 64, offset: 7872)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !397, line: 877, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !400, file: !397, line: 880, baseType: !525, size: 1088, offset: 7936)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !526, line: 72, baseType: !527)
!526 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 23, size: 1088, elements: !528)
!528 = !{!529, !530, !531, !532, !533, !536, !537, !545, !546, !550, !551, !552}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !527, file: !526, line: 28, baseType: !114, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !527, file: !526, line: 38, baseType: !460, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !527, file: !526, line: 40, baseType: !32, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !527, file: !526, line: 43, baseType: !467, size: 320, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !527, file: !526, line: 44, baseType: !534, size: 64, offset: 512)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !526, line: 44, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !527, file: !526, line: 48, baseType: !32, size: 64, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !527, file: !526, line: 59, baseType: !538, size: 256, offset: 640)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !539, line: 66, size: 256, elements: !540)
!539 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!540 = !{!541, !542, !543, !544}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !538, file: !539, line: 67, baseType: !458, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !538, file: !539, line: 68, baseType: !212, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !538, file: !539, line: 70, baseType: !473, size: 32, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !538, file: !539, line: 72, baseType: !119, size: 128, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !527, file: !526, line: 60, baseType: !30, size: 64, offset: 896)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !527, file: !526, line: 61, baseType: !547, size: 64, offset: 960)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !526, line: 61, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !527, file: !526, line: 63, baseType: !58, size: 32, offset: 1024)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !527, file: !526, line: 69, baseType: !83, size: 16, offset: 1056)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !527, file: !526, line: 70, baseType: !553, size: 16, offset: 1072)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !46, line: 18, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !48, line: 23, baseType: !555)
!555 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !397, line: 882, baseType: !32, size: 64, offset: 9024)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !400, file: !397, line: 885, baseType: !414, size: 32, offset: 9088)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !400, file: !397, line: 886, baseType: !559, size: 64, offset: 9152)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !397, line: 732, flags: DIFlagFwdDecl)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !400, file: !397, line: 901, baseType: !562, size: 64, offset: 9216)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !564, line: 18, flags: DIFlagFwdDecl)
!564 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!565 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !400, file: !397, line: 904, baseType: !432, size: 64, offset: 9280)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !400, file: !397, line: 906, baseType: !567, size: 64, offset: 9344)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !397, line: 906, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !400, file: !397, line: 930, baseType: !58, size: 32, offset: 9408)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !400, file: !397, line: 933, baseType: !58, size: 32, offset: 9440)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !400, file: !397, line: 935, baseType: !572, size: 64, offset: 9472)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !18, line: 103, size: 64, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !572, file: !18, line: 104, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !18, line: 101, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !400, file: !397, line: 940, baseType: !458, size: 64, offset: 9536)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !400, file: !397, line: 942, baseType: !579, size: 256, offset: 9600)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !580, line: 98, size: 256, elements: !581)
!580 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!581 = !{!582, !583, !584}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !579, file: !580, line: 99, baseType: !458, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !579, file: !580, line: 100, baseType: !119, size: 128, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !579, file: !580, line: 101, baseType: !585, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !580, line: 21, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !396, file: !397, line: 986, baseType: !591, offset: 10240)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: -1)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !35, file: !36, line: 882, baseType: !395, size: 64, offset: 9792)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !35, file: !36, line: 884, baseType: !63, size: 32, offset: 9856)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !35, file: !36, line: 885, baseType: !63, size: 32, offset: 9888)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !35, file: !36, line: 886, baseType: !63, size: 32, offset: 9920)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !35, file: !36, line: 888, baseType: !63, size: 32, offset: 9952)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !35, file: !36, line: 890, baseType: !32, size: 64, offset: 9984)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !35, file: !36, line: 893, baseType: !7, size: 32, offset: 10048)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !35, file: !36, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !35, file: !36, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !35, file: !36, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !35, file: !36, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !35, file: !36, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !35, file: !36, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !35, file: !36, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !35, file: !36, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !35, file: !36, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !35, file: !36, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !35, file: !36, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !35, file: !36, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !35, file: !36, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !35, file: !36, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !35, file: !36, line: 969, baseType: !32, size: 64, offset: 10176)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !35, file: !36, line: 971, baseType: !617, size: 448, offset: 10240)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 448, elements: !618)
!618 = !{!619, !620, !625}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !617, file: !12, line: 26, baseType: !32, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !617, file: !12, line: 27, baseType: !621, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!31, !624}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !12, line: 28, baseType: !626, size: 320, offset: 128)
!626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !617, file: !12, line: 28, size: 320, elements: !627)
!627 = !{!628, !638, !663}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !626, file: !12, line: 37, baseType: !629, size: 320)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !626, file: !12, line: 30, size: 320, elements: !630)
!630 = !{!631, !633, !634, !635, !636, !637}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !629, file: !12, line: 31, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !629, file: !12, line: 32, baseType: !45, size: 32, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !629, file: !12, line: 33, baseType: !45, size: 32, offset: 96)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !629, file: !12, line: 34, baseType: !45, size: 32, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !629, file: !12, line: 35, baseType: !114, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !629, file: !12, line: 36, baseType: !632, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !626, file: !12, line: 47, baseType: !639, size: 192)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !626, file: !12, line: 39, size: 192, elements: !640)
!640 = !{!641, !642, !643, !662}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !639, file: !12, line: 40, baseType: !260, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !12, line: 41, baseType: !11, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !12, line: 42, baseType: !644, size: 64, offset: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !639, file: !12, line: 42, size: 64, elements: !645)
!645 = !{!646, !654}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !644, file: !12, line: 43, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !649, line: 7, size: 128, elements: !650)
!649 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!650 = !{!651, !653}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !648, file: !649, line: 8, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !262, line: 93, baseType: !132)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !648, file: !649, line: 9, baseType: !132, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !644, file: !12, line: 44, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !657, line: 7, size: 64, elements: !658)
!657 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!658 = !{!659, !661}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !656, file: !657, line: 8, baseType: !660, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !657, line: 5, baseType: !517)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !656, file: !657, line: 9, baseType: !517, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !639, file: !12, line: 46, baseType: !114, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !626, file: !12, line: 55, baseType: !664, size: 256)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !626, file: !12, line: 49, size: 256, elements: !665)
!665 = !{!666, !669, !670, !671, !672}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !664, file: !12, line: 50, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !664, file: !12, line: 51, baseType: !63, size: 32, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !664, file: !12, line: 52, baseType: !63, size: 32, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !664, file: !12, line: 53, baseType: !32, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !664, file: !12, line: 54, baseType: !32, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !35, file: !36, line: 973, baseType: !674, size: 32, offset: 10688)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !59, line: 27, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !262, line: 28, baseType: !63)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !35, file: !36, line: 974, baseType: !674, size: 32, offset: 10720)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !35, file: !36, line: 978, baseType: !32, size: 64, offset: 10752)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !35, file: !36, line: 987, baseType: !34, size: 64, offset: 10816)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !35, file: !36, line: 990, baseType: !34, size: 64, offset: 10880)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !35, file: !36, line: 995, baseType: !119, size: 128, offset: 10944)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !35, file: !36, line: 996, baseType: !119, size: 128, offset: 11072)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !35, file: !36, line: 997, baseType: !34, size: 64, offset: 11200)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !35, file: !36, line: 1005, baseType: !119, size: 128, offset: 11264)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !35, file: !36, line: 1006, baseType: !119, size: 128, offset: 11392)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !35, file: !36, line: 1009, baseType: !686, size: 64, offset: 11520)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !688, line: 59, size: 768, elements: !689)
!688 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!689 = !{!690, !691, !692, !693, !704, !705, !712, !721}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !687, file: !688, line: 61, baseType: !53, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !687, file: !688, line: 62, baseType: !7, size: 32, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !687, file: !688, line: 63, baseType: !414, size: 32, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !687, file: !688, line: 65, baseType: !694, size: 256, offset: 128)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 256, elements: !519)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !59, line: 194, size: 64, elements: !696)
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !695, file: !59, line: 195, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !59, line: 198, size: 128, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !59, line: 199, baseType: !698, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !699, file: !59, line: 199, baseType: !703, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !687, file: !688, line: 66, baseType: !695, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !687, file: !688, line: 68, baseType: !706, size: 192, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !707, line: 41, baseType: !708)
!707 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !707, line: 37, size: 192, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !708, file: !707, line: 38, baseType: !414, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !708, file: !707, line: 39, baseType: !119, size: 128, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !687, file: !688, line: 69, baseType: !713, size: 128, align: 64, offset: 640)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !59, line: 232, size: 128, align: 64, elements: !714)
!714 = !{!715, !717}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !713, file: !59, line: 233, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !713, file: !59, line: 234, baseType: !718, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !716}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !687, file: !688, line: 70, baseType: !722, offset: 768)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, elements: !592)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !688, line: 54, size: 128, elements: !724)
!724 = !{!725, !726}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !723, file: !688, line: 55, baseType: !63, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !723, file: !688, line: 56, baseType: !727, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !688, line: 56, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !35, file: !36, line: 1010, baseType: !730, size: 512, offset: 11584)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 512, elements: !519)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !35, file: !36, line: 1011, baseType: !119, size: 128, offset: 12096)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !35, file: !36, line: 1012, baseType: !119, size: 128, offset: 12224)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !35, file: !36, line: 1014, baseType: !734, size: 64, offset: 12352)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !736, line: 26, size: 256, elements: !737)
!736 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !735, file: !736, line: 27, baseType: !7, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !735, file: !736, line: 28, baseType: !740, size: 192, offset: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !741, line: 43, size: 192, elements: !742)
!741 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !740, file: !741, line: 44, baseType: !212, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !740, file: !741, line: 45, baseType: !119, size: 128, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !35, file: !36, line: 1017, baseType: !746, size: 64, offset: 12416)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !35, file: !36, line: 1020, baseType: !746, size: 64, offset: 12480)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !35, file: !36, line: 1023, baseType: !30, size: 64, offset: 12544)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !35, file: !36, line: 1025, baseType: !114, size: 64, offset: 12608)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !35, file: !36, line: 1026, baseType: !114, size: 64, offset: 12672)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !35, file: !36, line: 1031, baseType: !114, size: 64, offset: 12736)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !35, file: !36, line: 1032, baseType: !753, size: 192, offset: 12800)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !36, line: 324, size: 192, elements: !754)
!754 = !{!755, !756, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !753, file: !36, line: 326, baseType: !114, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !753, file: !36, line: 327, baseType: !114, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !753, file: !36, line: 328, baseType: !212, size: 32, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !35, file: !36, line: 1041, baseType: !32, size: 64, offset: 12992)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !35, file: !36, line: 1042, baseType: !32, size: 64, offset: 13056)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !35, file: !36, line: 1045, baseType: !114, size: 64, offset: 13120)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !35, file: !36, line: 1048, baseType: !114, size: 64, offset: 13184)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !35, file: !36, line: 1051, baseType: !32, size: 64, offset: 13248)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !35, file: !36, line: 1052, baseType: !32, size: 64, offset: 13312)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !35, file: !36, line: 1055, baseType: !765, size: 640, offset: 13376)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !766, line: 132, size: 640, elements: !767)
!766 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!767 = !{!768, !776, !777}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !765, file: !766, line: 133, baseType: !769, size: 576)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 576, elements: !774)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !766, line: 117, size: 192, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !770, file: !766, line: 118, baseType: !114, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !770, file: !766, line: 119, baseType: !275, size: 128, offset: 64)
!774 = !{!775}
!775 = !DISubrange(count: 3)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !765, file: !766, line: 134, baseType: !7, size: 32, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !765, file: !766, line: 135, baseType: !7, size: 32, offset: 608)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !35, file: !36, line: 1058, baseType: !779, size: 448, offset: 14016)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !766, line: 144, size: 448, elements: !780)
!780 = !{!781, !782, !783}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !779, file: !766, line: 145, baseType: !713, size: 128, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !779, file: !766, line: 146, baseType: !538, size: 256, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !779, file: !766, line: 147, baseType: !7, size: 32, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !35, file: !36, line: 1064, baseType: !785, size: 64, offset: 14464)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !787)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !36, line: 1064, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !35, file: !36, line: 1067, baseType: !785, size: 64, offset: 14528)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !35, file: !36, line: 1070, baseType: !785, size: 64, offset: 14592)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !35, file: !36, line: 1074, baseType: !791, size: 64, offset: 14656)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !36, line: 1074, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !35, file: !36, line: 1084, baseType: !794, size: 128, offset: 14720)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 128, elements: !796)
!795 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!796 = !{!797}
!797 = !DISubrange(count: 16)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !35, file: !36, line: 1086, baseType: !799, size: 64, offset: 14848)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !36, line: 55, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !35, file: !36, line: 1089, baseType: !802, size: 64, offset: 14912)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !803, line: 12, size: 64, elements: !804)
!803 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !802, file: !803, line: 13, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !803, line: 8, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !35, file: !36, line: 1090, baseType: !809, size: 128, offset: 14976)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !810, line: 13, size: 128, elements: !811)
!810 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!811 = !{!812}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !809, file: !810, line: 14, baseType: !119, size: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !35, file: !36, line: 1097, baseType: !814, size: 64, offset: 15104)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !36, line: 50, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !35, file: !36, line: 1100, baseType: !817, size: 64, offset: 15168)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !36, line: 1100, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !35, file: !36, line: 1103, baseType: !820, size: 64, offset: 15232)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !36, line: 53, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !35, file: !36, line: 1107, baseType: !823, size: 64, offset: 15296)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !36, line: 56, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !35, file: !36, line: 1110, baseType: !826, size: 64, offset: 15360)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !766, line: 236, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !35, file: !36, line: 1111, baseType: !829, size: 64, offset: 15424)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !36, line: 67, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !35, file: !36, line: 1112, baseType: !832, size: 64, offset: 15488)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !833, line: 25, baseType: !834)
!833 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !833, line: 23, size: 64, elements: !835)
!835 = !{!836}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !834, file: !833, line: 24, baseType: !346, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !35, file: !36, line: 1113, baseType: !832, size: 64, offset: 15552)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !35, file: !36, line: 1115, baseType: !832, size: 64, offset: 15616)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !35, file: !36, line: 1116, baseType: !840, size: 192, offset: 15680)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !841, line: 32, size: 192, elements: !842)
!841 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !840, file: !841, line: 33, baseType: !119, size: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !840, file: !841, line: 34, baseType: !832, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !35, file: !36, line: 1117, baseType: !32, size: 64, offset: 15872)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !35, file: !36, line: 1118, baseType: !847, size: 64, offset: 15936)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 61, baseType: !848)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !262, line: 72, baseType: !849)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !262, line: 16, baseType: !32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !35, file: !36, line: 1119, baseType: !7, size: 32, offset: 16000)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !35, file: !36, line: 1121, baseType: !716, size: 64, offset: 16064)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !35, file: !36, line: 1125, baseType: !853, size: 64, offset: 16128)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !36, line: 43, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !35, file: !36, line: 1127, baseType: !856, size: 32, offset: 16192)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !564, line: 23, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 21, size: 32, elements: !858)
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !857, file: !564, line: 22, baseType: !860, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !59, line: 37, baseType: !861)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !262, line: 49, baseType: !7)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !35, file: !36, line: 1128, baseType: !7, size: 32, offset: 16224)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !35, file: !36, line: 1130, baseType: !864, size: 128, offset: 16256)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !865, line: 37, size: 128, elements: !866)
!865 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!866 = !{!867, !868, !869}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !864, file: !865, line: 38, baseType: !63, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !864, file: !865, line: 39, baseType: !58, size: 32, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !864, file: !865, line: 40, baseType: !870, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !865, line: 24, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !35, file: !36, line: 1131, baseType: !873, size: 256, offset: 16384)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !874, line: 12, size: 256, elements: !875)
!874 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!875 = !{!876, !878, !879, !880}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !873, file: !874, line: 13, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !873, file: !874, line: 14, baseType: !32, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !873, file: !874, line: 15, baseType: !32, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !873, file: !874, line: 16, baseType: !881, size: 8, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !59, line: 35, baseType: !882)
!882 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !35, file: !36, line: 1134, baseType: !114, size: 64, offset: 16640)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !35, file: !36, line: 1135, baseType: !114, size: 64, offset: 16704)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !35, file: !36, line: 1138, baseType: !414, size: 32, offset: 16768)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !35, file: !36, line: 1141, baseType: !212, size: 32, offset: 16800)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !35, file: !36, line: 1143, baseType: !888, size: 64, offset: 16832)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !36, line: 735, size: 64, elements: !889)
!889 = !{!890}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !888, file: !36, line: 736, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !35, file: !36, line: 1147, baseType: !278, size: 128, offset: 16896)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !35, file: !36, line: 1149, baseType: !34, size: 64, offset: 17024)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !35, file: !36, line: 1151, baseType: !895, size: 64, offset: 17088)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !36, line: 1151, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !35, file: !36, line: 1188, baseType: !30, size: 64, offset: 17152)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !35, file: !36, line: 1191, baseType: !899, size: 64, offset: 17216)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !36, line: 44, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !35, file: !36, line: 1194, baseType: !902, size: 64, offset: 17280)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !36, line: 45, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !35, file: !36, line: 1197, baseType: !905, size: 64, offset: 17344)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !36, line: 61, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !35, file: !36, line: 1199, baseType: !908, size: 64, offset: 17408)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !36, line: 52, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !35, file: !36, line: 1202, baseType: !911, size: 64, offset: 17472)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !36, line: 48, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !35, file: !36, line: 1205, baseType: !32, size: 64, offset: 17536)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !35, file: !36, line: 1206, baseType: !915, size: 64, offset: 17600)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !841, line: 14, baseType: !917)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !841, line: 12, size: 384, elements: !918)
!918 = !{!919}
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !841, line: 13, baseType: !920, size: 384)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !841, line: 13, size: 384, elements: !921)
!921 = !{!922, !923, !924, !925}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !920, file: !841, line: 13, baseType: !63, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !920, file: !841, line: 13, baseType: !63, size: 32, offset: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !920, file: !841, line: 13, baseType: !63, size: 32, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !920, file: !841, line: 13, baseType: !926, size: 256, offset: 128)
!926 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !927, line: 37, size: 256, elements: !928)
!927 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!928 = !{!929, !934, !947, !953, !963, !990, !995}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !926, file: !927, line: 42, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !927, line: 39, size: 64, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !930, file: !927, line: 40, baseType: !675, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !930, file: !927, line: 41, baseType: !861, size: 32, offset: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !926, file: !927, line: 50, baseType: !935, size: 192)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !927, line: 45, size: 192, elements: !936)
!936 = !{!937, !939, !940, !946}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !935, file: !927, line: 46, baseType: !938, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !262, line: 95, baseType: !63)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !935, file: !927, line: 47, baseType: !63, size: 32, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !935, file: !927, line: 48, baseType: !941, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !927, line: 11, baseType: !942)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !927, line: 8, size: 64, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !942, file: !927, line: 9, baseType: !63, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !942, file: !927, line: 10, baseType: !30, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !935, file: !927, line: 49, baseType: !63, size: 32, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !926, file: !927, line: 57, baseType: !948, size: 128)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !927, line: 53, size: 128, elements: !949)
!949 = !{!950, !951, !952}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !948, file: !927, line: 54, baseType: !675, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !948, file: !927, line: 55, baseType: !861, size: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !948, file: !927, line: 56, baseType: !941, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !926, file: !927, line: 66, baseType: !954, size: 256)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !927, line: 60, size: 256, elements: !955)
!955 = !{!956, !957, !958, !959, !962}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !954, file: !927, line: 61, baseType: !675, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !954, file: !927, line: 62, baseType: !861, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !954, file: !927, line: 63, baseType: !63, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !954, file: !927, line: 64, baseType: !960, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !262, line: 94, baseType: !961)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !262, line: 15, baseType: !31)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !954, file: !927, line: 65, baseType: !960, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !926, file: !927, line: 105, baseType: !964, size: 256)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !927, line: 69, size: 256, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !964, file: !927, line: 70, baseType: !30, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, scope: !964, file: !927, line: 79, baseType: !968, size: 192, offset: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !964, file: !927, line: 79, size: 192, elements: !969)
!969 = !{!970, !971, !972, !979, !984}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !968, file: !927, line: 81, baseType: !63, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !968, file: !927, line: 86, baseType: !555, size: 16)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !968, file: !927, line: 92, baseType: !973, size: 192)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !968, file: !927, line: 88, size: 192, elements: !974)
!974 = !{!975, !977, !978}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !973, file: !927, line: 89, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 64, elements: !256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !973, file: !927, line: 90, baseType: !30, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !973, file: !927, line: 91, baseType: !30, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !968, file: !927, line: 97, baseType: !980, size: 96)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !968, file: !927, line: 94, size: 96, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !980, file: !927, line: 95, baseType: !976, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !980, file: !927, line: 96, baseType: !47, size: 32, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !968, file: !927, line: 103, baseType: !985, size: 128)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !968, file: !927, line: 99, size: 128, elements: !986)
!986 = !{!987, !988, !989}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !985, file: !927, line: 100, baseType: !32, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !985, file: !927, line: 101, baseType: !47, size: 32, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !985, file: !927, line: 102, baseType: !47, size: 32, offset: 96)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !926, file: !927, line: 111, baseType: !991, size: 128)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !927, line: 108, size: 128, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !991, file: !927, line: 109, baseType: !31, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !991, file: !927, line: 110, baseType: !63, size: 32, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !926, file: !927, line: 118, baseType: !996, size: 128)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !927, line: 114, size: 128, elements: !997)
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !996, file: !927, line: 115, baseType: !30, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !996, file: !927, line: 116, baseType: !63, size: 32, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !996, file: !927, line: 117, baseType: !7, size: 32, offset: 96)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !35, file: !36, line: 1208, baseType: !1002, size: 448, offset: 17664)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1003, line: 12, size: 448, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1004 = !{!1005, !1006, !1007, !1008, !1009, !1010, !1011}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1002, file: !1003, line: 15, baseType: !114, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1002, file: !1003, line: 17, baseType: !114, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1002, file: !1003, line: 19, baseType: !114, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1002, file: !1003, line: 21, baseType: !114, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1002, file: !1003, line: 29, baseType: !114, size: 64, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1002, file: !1003, line: 35, baseType: !114, size: 64, offset: 320)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1002, file: !1003, line: 44, baseType: !114, size: 64, offset: 384)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !35, file: !36, line: 1215, baseType: !114, size: 64, offset: 18112)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !35, file: !36, line: 1217, baseType: !114, size: 64, offset: 18176)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !35, file: !36, line: 1219, baseType: !114, size: 64, offset: 18240)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !35, file: !36, line: 1223, baseType: !1016, size: 64, offset: 18304)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1017, line: 99, baseType: !1018)
!1017 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1017, line: 99, size: 64, elements: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1018, file: !1017, line: 99, baseType: !346, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !35, file: !36, line: 1225, baseType: !1022, size: 32, offset: 18368)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !265, line: 275, baseType: !1023)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !265, line: 275, size: 32, elements: !1024)
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1023, file: !265, line: 275, baseType: !269, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !35, file: !36, line: 1226, baseType: !63, size: 32, offset: 18400)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !35, file: !36, line: 1227, baseType: !63, size: 32, offset: 18432)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !35, file: !36, line: 1231, baseType: !1029, size: 64, offset: 18496)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !36, line: 1231, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !35, file: !36, line: 1233, baseType: !119, size: 128, offset: 18560)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !35, file: !36, line: 1240, baseType: !1033, size: 64, offset: 18688)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !36, line: 62, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !35, file: !36, line: 1242, baseType: !1036, size: 64, offset: 18752)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !36, line: 1242, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !35, file: !36, line: 1244, baseType: !119, size: 128, offset: 18816)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !35, file: !36, line: 1245, baseType: !1040, size: 64, offset: 18944)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !36, line: 51, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !35, file: !36, line: 1246, baseType: !538, size: 256, offset: 19008)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !35, file: !36, line: 1247, baseType: !7, size: 32, offset: 19264)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !35, file: !36, line: 1250, baseType: !1045, size: 64, offset: 19328)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !36, line: 57, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !35, file: !36, line: 1251, baseType: !538, size: 256, offset: 19392)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !35, file: !36, line: 1252, baseType: !119, size: 128, offset: 19648)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !35, file: !36, line: 1259, baseType: !1050, size: 64, offset: 19776)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !36, line: 54, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !35, file: !36, line: 1260, baseType: !555, size: 16, offset: 19840)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !35, file: !36, line: 1261, baseType: !555, size: 16, offset: 19856)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !35, file: !36, line: 1314, baseType: !1055, size: 64, offset: 19904)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1057, line: 62, size: 256, align: 256, elements: !1058)
!1057 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1058 = !{!1059, !1060, !1061, !1062, !1063, !1064, !1065}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1056, file: !1057, line: 75, baseType: !47, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1056, file: !1057, line: 90, baseType: !47, size: 32, offset: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1056, file: !1057, line: 112, baseType: !115, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1056, file: !1057, line: 132, baseType: !47, size: 32, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1056, file: !1057, line: 140, baseType: !47, size: 32, offset: 160)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1056, file: !1057, line: 149, baseType: !47, size: 32, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1056, file: !1057, line: 154, baseType: !1066, offset: 224)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, elements: !592)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !35, file: !36, line: 1315, baseType: !45, size: 32, offset: 19968)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !35, file: !36, line: 1316, baseType: !45, size: 32, offset: 20000)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !35, file: !36, line: 1321, baseType: !32, size: 64, offset: 20032)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !35, file: !36, line: 1325, baseType: !63, size: 32, offset: 20096)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !35, file: !36, line: 1326, baseType: !63, size: 32, offset: 20128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !35, file: !36, line: 1327, baseType: !63, size: 32, offset: 20160)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !35, file: !36, line: 1328, baseType: !63, size: 32, offset: 20192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !35, file: !36, line: 1329, baseType: !713, size: 128, align: 64, offset: 20224)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !35, file: !36, line: 1332, baseType: !1076, size: 128, offset: 20352)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1077, line: 51, size: 128, elements: !1078)
!1077 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1078 = !{!1079, !1084, !1085}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1076, file: !1077, line: 60, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1081, line: 7, size: 64, elements: !1082)
!1081 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1080, file: !1081, line: 12, baseType: !343, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1076, file: !1077, line: 63, baseType: !881, size: 8, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1076, file: !1077, line: 70, baseType: !881, size: 8, offset: 72)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !35, file: !36, line: 1335, baseType: !1087, size: 64, offset: 20480)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !36, line: 59, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !35, file: !36, line: 1337, baseType: !1090, size: 128, offset: 20544)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1077, line: 39, size: 128, elements: !1091)
!1091 = !{!1092, !1155, !1156}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1090, file: !1077, line: 40, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !397, line: 74, size: 512, align: 128, elements: !1095)
!1095 = !{!1096, !1097, !1149, !1154}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1094, file: !397, line: 75, baseType: !32, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !397, line: 83, baseType: !1098, size: 320, offset: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !397, line: 83, size: 320, elements: !1099)
!1099 = !{!1100, !1123, !1137, !1141, !1148}
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !397, line: 84, baseType: !1101, size: 320)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1098, file: !397, line: 84, size: 320, elements: !1102)
!1102 = !{!1103, !1114, !1117, !1122}
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !397, line: 90, baseType: !1104, size: 128)
!1104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !397, line: 90, size: 128, elements: !1105)
!1105 = !{!1106, !1107, !1112, !1113}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1104, file: !397, line: 91, baseType: !119, size: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1104, file: !397, line: 94, baseType: !1108, size: 128)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1104, file: !397, line: 94, size: 128, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1108, file: !397, line: 96, baseType: !30, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1108, file: !397, line: 98, baseType: !7, size: 32, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1104, file: !397, line: 102, baseType: !119, size: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1104, file: !397, line: 103, baseType: !119, size: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1101, file: !397, line: 106, baseType: !1115, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !397, line: 32, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !397, line: 107, baseType: !1118, size: 64, offset: 192)
!1118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !397, line: 107, size: 64, elements: !1119)
!1119 = !{!1120, !1121}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1118, file: !397, line: 108, baseType: !32, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1118, file: !397, line: 109, baseType: !32, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1101, file: !397, line: 117, baseType: !32, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !397, line: 119, baseType: !1124, size: 320)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1098, file: !397, line: 119, size: 320, elements: !1125)
!1125 = !{!1126, !1127, !1130, !1131, !1132}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1124, file: !397, line: 124, baseType: !32, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1124, file: !397, line: 125, baseType: !1128, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !397, line: 125, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1124, file: !397, line: 126, baseType: !32, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1124, file: !397, line: 127, baseType: !32, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !397, line: 128, baseType: !1133, size: 64, offset: 256)
!1133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1124, file: !397, line: 128, size: 64, elements: !1134)
!1134 = !{!1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1133, file: !397, line: 133, baseType: !32, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1133, file: !397, line: 138, baseType: !458, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !397, line: 141, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1098, file: !397, line: 141, size: 64, elements: !1139)
!1139 = !{!1140}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1138, file: !397, line: 142, baseType: !32, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !397, line: 144, baseType: !1142, size: 128)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1098, file: !397, line: 144, size: 128, elements: !1143)
!1143 = !{!1144, !1147}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1142, file: !397, line: 146, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !397, line: 146, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1142, file: !397, line: 147, baseType: !30, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1098, file: !397, line: 161, baseType: !713, size: 128, align: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !397, line: 164, baseType: !1150, size: 32, offset: 384)
!1150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !397, line: 164, size: 32, elements: !1151)
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1150, file: !397, line: 169, baseType: !58, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1150, file: !397, line: 177, baseType: !7, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1094, file: !397, line: 181, baseType: !58, size: 32, offset: 416)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1090, file: !1077, line: 42, baseType: !47, size: 32, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1090, file: !1077, line: 43, baseType: !47, size: 32, offset: 96)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !35, file: !36, line: 1340, baseType: !1158, size: 64, offset: 20672)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !36, line: 69, flags: DIFlagFwdDecl)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !35, file: !36, line: 1351, baseType: !63, size: 32, offset: 20736)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !35, file: !36, line: 1352, baseType: !63, size: 32, offset: 20768)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !35, file: !36, line: 1354, baseType: !32, size: 64, offset: 20800)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !35, file: !36, line: 1364, baseType: !114, size: 64, offset: 20864)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !35, file: !36, line: 1365, baseType: !114, size: 64, offset: 20928)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !35, file: !36, line: 1412, baseType: !32, size: 64, offset: 20992)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !35, file: !36, line: 1453, baseType: !1167, size: 64, offset: 21056)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !36, line: 1453, flags: DIFlagFwdDecl)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !35, file: !36, line: 1457, baseType: !1170, size: 64, offset: 21120)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !18, line: 61, size: 576, elements: !1172)
!1172 = !{!1173, !1174, !1193, !1196, !1197, !1230, !1240}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1171, file: !18, line: 62, baseType: !17, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, scope: !1171, file: !18, line: 64, baseType: !1175, size: 192, offset: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1171, file: !18, line: 64, size: 192, elements: !1176)
!1176 = !{!1177, !1188}
!1177 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !18, line: 65, baseType: !1178, size: 192)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1175, file: !18, line: 65, size: 192, elements: !1179)
!1179 = !{!1180, !1187}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1178, file: !18, line: 66, baseType: !1181, size: 128)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1182, line: 50, size: 128, elements: !1183)
!1182 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1183 = !{!1184, !1185, !1186}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1181, file: !1182, line: 52, baseType: !32, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1181, file: !1182, line: 54, baseType: !7, size: 32, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1181, file: !1182, line: 55, baseType: !7, size: 32, offset: 96)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1178, file: !18, line: 67, baseType: !32, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !18, line: 70, baseType: !1189, size: 192)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1175, file: !18, line: 70, size: 192, elements: !1190)
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1189, file: !18, line: 71, baseType: !713, size: 128, align: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1189, file: !18, line: 72, baseType: !32, size: 64, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1171, file: !18, line: 76, baseType: !1194, size: 64, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !18, line: 76, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1171, file: !18, line: 77, baseType: !32, size: 64, offset: 320)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1171, file: !18, line: 79, baseType: !1198, size: 64, offset: 384)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1182, line: 25, size: 256, elements: !1200)
!1200 = !{!1201, !1207, !1211}
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1182, line: 26, baseType: !1202, size: 128)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !1182, line: 26, size: 128, elements: !1203)
!1203 = !{!1204, !1206}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1202, file: !1182, line: 27, baseType: !1205, size: 128)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 128, elements: !796)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1202, file: !1182, line: 28, baseType: !1205, size: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1199, file: !1182, line: 31, baseType: !1208, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1210)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1182, line: 23, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1182, line: 33, baseType: !1212, size: 64, offset: 192)
!1212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !1182, line: 33, size: 64, elements: !1213)
!1213 = !{!1214, !1220, !1225}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1212, file: !1182, line: 38, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !1182, line: 34, size: 64, elements: !1216)
!1216 = !{!1217, !1218, !1219}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1215, file: !1182, line: 35, baseType: !517, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1215, file: !1182, line: 36, baseType: !229, size: 8, offset: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1215, file: !1182, line: 37, baseType: !229, size: 8, offset: 40)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1212, file: !1182, line: 42, baseType: !1221, size: 16)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !1182, line: 39, size: 16, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1221, file: !1182, line: 40, baseType: !229, size: 8)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1221, file: !1182, line: 41, baseType: !229, size: 8, offset: 8)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1212, file: !1182, line: 46, baseType: !1226, size: 16)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !1182, line: 43, size: 16, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1226, file: !1182, line: 44, baseType: !229, size: 8)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1226, file: !1182, line: 45, baseType: !229, size: 8, offset: 8)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1171, file: !18, line: 81, baseType: !1231, size: 64, offset: 448)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !18, line: 85, size: 384, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1232, file: !18, line: 86, baseType: !1194, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1232, file: !18, line: 87, baseType: !32, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1232, file: !18, line: 88, baseType: !32, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1232, file: !18, line: 89, baseType: !32, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1232, file: !18, line: 90, baseType: !881, size: 8, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1232, file: !18, line: 92, baseType: !1231, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1171, file: !18, line: 82, baseType: !7, size: 32, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !35, file: !36, line: 1463, baseType: !1242, offset: 21184)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !36, line: 739, elements: !425)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !35, file: !36, line: 1470, baseType: !713, size: 128, align: 64, offset: 21184)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !35, file: !36, line: 1471, baseType: !53, size: 32, offset: 21312)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !35, file: !36, line: 1472, baseType: !63, size: 32, offset: 21344)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !35, file: !36, line: 1474, baseType: !34, size: 64, offset: 21376)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !35, file: !36, line: 1475, baseType: !1248, size: 320, offset: 21440)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1249, line: 11, size: 320, elements: !1250)
!1249 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1250 = !{!1251, !1252, !1253, !1258}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1248, file: !1249, line: 16, baseType: !699, size: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1248, file: !1249, line: 17, baseType: !32, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1248, file: !1249, line: 18, baseType: !1254, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{null, !1257}
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1248, file: !1249, line: 19, baseType: !45, size: 32, offset: 256)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !35, file: !36, line: 1478, baseType: !1260, size: 64, offset: 21760)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !36, line: 1478, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !35, file: !36, line: 1482, baseType: !53, size: 32, offset: 21824)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !35, file: !36, line: 1489, baseType: !30, size: 64, offset: 21888)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !35, file: !36, line: 1504, baseType: !30, size: 64, offset: 21952)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !35, file: !36, line: 1505, baseType: !115, size: 64, offset: 22016)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !35, file: !36, line: 1506, baseType: !114, size: 64, offset: 22080)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !35, file: !36, line: 1507, baseType: !115, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !35, file: !36, line: 1508, baseType: !115, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !35, file: !36, line: 1509, baseType: !115, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !35, file: !36, line: 1510, baseType: !713, size: 128, align: 64, offset: 22208)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !35, file: !36, line: 1511, baseType: !63, size: 32, offset: 22336)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !35, file: !36, line: 1515, baseType: !1273, size: 64, offset: 22400)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !73, line: 56, size: 64, elements: !1274)
!1274 = !{!1275}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1273, file: !73, line: 57, baseType: !76, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !35, file: !36, line: 1518, baseType: !1273, size: 64, offset: 22464)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !35, file: !36, line: 1528, baseType: !713, size: 128, align: 64, offset: 22528)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !35, file: !36, line: 1552, baseType: !1279, size: 35328, offset: 23040)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1280, line: 430, size: 35328, elements: !1281)
!1280 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1281 = !{!1282, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1311, !1312, !1313, !1314, !1315, !1316, !1319, !1320, !1321, !1322}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1279, file: !1280, line: 432, baseType: !1283, size: 192)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1284, size: 192, elements: !774)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1285, line: 16, size: 64, elements: !1286)
!1285 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1286 = !{!1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1284, file: !1285, line: 17, baseType: !83, size: 16)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1284, file: !1285, line: 18, baseType: !83, size: 16, offset: 16)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1284, file: !1285, line: 19, baseType: !83, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1284, file: !1285, line: 19, baseType: !83, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1284, file: !1285, line: 19, baseType: !83, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1284, file: !1285, line: 19, baseType: !83, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1284, file: !1285, line: 19, baseType: !83, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1284, file: !1285, line: 20, baseType: !83, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1284, file: !1285, line: 20, baseType: !83, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1284, file: !1285, line: 20, baseType: !83, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1284, file: !1285, line: 20, baseType: !83, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1284, file: !1285, line: 20, baseType: !83, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1284, file: !1285, line: 20, baseType: !83, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1279, file: !1280, line: 436, baseType: !32, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1279, file: !1280, line: 440, baseType: !85, size: 16, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1279, file: !1280, line: 441, baseType: !85, size: 16, offset: 272)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1279, file: !1280, line: 442, baseType: !85, size: 16, offset: 288)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1279, file: !1280, line: 443, baseType: !85, size: 16, offset: 304)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1279, file: !1280, line: 447, baseType: !32, size: 64, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1279, file: !1280, line: 448, baseType: !32, size: 64, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1279, file: !1280, line: 459, baseType: !1308, size: 256, offset: 448)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1309, size: 256, elements: !519)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1280, line: 428, flags: DIFlagFwdDecl)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1279, file: !1280, line: 461, baseType: !32, size: 64, offset: 704)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1279, file: !1280, line: 463, baseType: !32, size: 64, offset: 768)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1279, file: !1280, line: 465, baseType: !32, size: 64, offset: 832)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1279, file: !1280, line: 466, baseType: !32, size: 64, offset: 896)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1279, file: !1280, line: 467, baseType: !32, size: 64, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1279, file: !1280, line: 473, baseType: !1317, size: 64, offset: 1024)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1280, line: 10, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1279, file: !1280, line: 480, baseType: !32, size: 64, offset: 1088)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1279, file: !1280, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1279, file: !1280, line: 491, baseType: !45, size: 32, offset: 1184)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1279, file: !1280, line: 501, baseType: !1323, size: 33792, offset: 1536)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1324, line: 448, size: 33792, elements: !1325)
!1324 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1325 = !{!1326, !1327, !1328, !1496, !1497, !1503, !1504}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1323, file: !1324, line: 461, baseType: !7, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1323, file: !1324, line: 468, baseType: !32, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1323, file: !1324, line: 476, baseType: !1329, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1324, line: 356, size: 33280, align: 512, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1330, file: !1324, line: 358, baseType: !7, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1330, file: !1324, line: 361, baseType: !7, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1330, file: !1324, line: 364, baseType: !114, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1330, file: !1324, line: 367, baseType: !114, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1330, file: !1324, line: 370, baseType: !114, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1330, file: !1324, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1330, file: !1324, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1330, file: !1324, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1330, file: !1324, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1330, file: !1324, line: 397, baseType: !1342, size: 32768, offset: 512)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1324, line: 348, size: 32768, elements: !1343)
!1343 = !{!1344, !1359, !1400, !1477, !1492}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1342, file: !1324, line: 349, baseType: !1345, size: 896)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1324, line: 12, size: 896, elements: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1358}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1345, file: !1324, line: 13, baseType: !45, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1345, file: !1324, line: 14, baseType: !45, size: 32, offset: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1345, file: !1324, line: 15, baseType: !45, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1345, file: !1324, line: 16, baseType: !45, size: 32, offset: 96)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1345, file: !1324, line: 17, baseType: !45, size: 32, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1345, file: !1324, line: 18, baseType: !45, size: 32, offset: 160)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1345, file: !1324, line: 19, baseType: !45, size: 32, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1345, file: !1324, line: 22, baseType: !1355, size: 640, offset: 224)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 640, elements: !1356)
!1356 = !{!1357}
!1357 = !DISubrange(count: 20)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1345, file: !1324, line: 25, baseType: !45, size: 32, offset: 864)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1342, file: !1324, line: 350, baseType: !1360, size: 4096, align: 128)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1324, line: 34, size: 4096, align: 128, elements: !1361)
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1381, !1382, !1383, !1387, !1391, !1395}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1360, file: !1324, line: 35, baseType: !83, size: 16)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1360, file: !1324, line: 36, baseType: !83, size: 16, offset: 16)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1360, file: !1324, line: 37, baseType: !83, size: 16, offset: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1360, file: !1324, line: 38, baseType: !83, size: 16, offset: 48)
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1360, file: !1324, line: 39, baseType: !1367, size: 128, offset: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1360, file: !1324, line: 39, size: 128, elements: !1368)
!1368 = !{!1369, !1374}
!1369 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !1324, line: 40, baseType: !1370, size: 128)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1367, file: !1324, line: 40, size: 128, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1370, file: !1324, line: 41, baseType: !114, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1370, file: !1324, line: 42, baseType: !114, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !1324, line: 44, baseType: !1375, size: 128)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1367, file: !1324, line: 44, size: 128, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1375, file: !1324, line: 45, baseType: !45, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1375, file: !1324, line: 46, baseType: !45, size: 32, offset: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1375, file: !1324, line: 47, baseType: !45, size: 32, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1375, file: !1324, line: 48, baseType: !45, size: 32, offset: 96)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1360, file: !1324, line: 51, baseType: !45, size: 32, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1360, file: !1324, line: 52, baseType: !45, size: 32, offset: 224)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1360, file: !1324, line: 55, baseType: !1384, size: 1024, offset: 256)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1024, elements: !1385)
!1385 = !{!1386}
!1386 = !DISubrange(count: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1360, file: !1324, line: 58, baseType: !1388, size: 2048, offset: 1280)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, elements: !1389)
!1389 = !{!1390}
!1390 = !DISubrange(count: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1360, file: !1324, line: 60, baseType: !1392, size: 384, offset: 3328)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 384, elements: !1393)
!1393 = !{!1394}
!1394 = !DISubrange(count: 12)
!1395 = !DIDerivedType(tag: DW_TAG_member, scope: !1360, file: !1324, line: 62, baseType: !1396, size: 384, offset: 3712)
!1396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1360, file: !1324, line: 62, size: 384, elements: !1397)
!1397 = !{!1398, !1399}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1396, file: !1324, line: 63, baseType: !1392, size: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1396, file: !1324, line: 64, baseType: !1392, size: 384)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1342, file: !1324, line: 351, baseType: !1401, size: 1088)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1324, line: 79, size: 1088, elements: !1402)
!1402 = !{!1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1476}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1401, file: !1324, line: 80, baseType: !45, size: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1401, file: !1324, line: 81, baseType: !45, size: 32, offset: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1401, file: !1324, line: 82, baseType: !45, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1401, file: !1324, line: 83, baseType: !45, size: 32, offset: 96)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1401, file: !1324, line: 84, baseType: !45, size: 32, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1401, file: !1324, line: 85, baseType: !45, size: 32, offset: 160)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1401, file: !1324, line: 86, baseType: !45, size: 32, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1401, file: !1324, line: 88, baseType: !1355, size: 640, offset: 224)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1401, file: !1324, line: 89, baseType: !229, size: 8, offset: 864)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1401, file: !1324, line: 90, baseType: !229, size: 8, offset: 872)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1401, file: !1324, line: 91, baseType: !229, size: 8, offset: 880)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1401, file: !1324, line: 92, baseType: !229, size: 8, offset: 888)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1401, file: !1324, line: 93, baseType: !229, size: 8, offset: 896)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1401, file: !1324, line: 94, baseType: !229, size: 8, offset: 904)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1401, file: !1324, line: 95, baseType: !1418, size: 64, offset: 960)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1420, line: 11, size: 128, elements: !1421)
!1420 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1419, file: !1420, line: 12, baseType: !31, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1419, file: !1420, line: 13, baseType: !1424, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1426, line: 103, size: 1344, elements: !1427)
!1426 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1456, !1457, !1458}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1425, file: !1426, line: 109, baseType: !32, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1425, file: !1426, line: 110, baseType: !32, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1425, file: !1426, line: 111, baseType: !32, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1425, file: !1426, line: 112, baseType: !32, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1425, file: !1426, line: 113, baseType: !32, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1425, file: !1426, line: 114, baseType: !32, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1425, file: !1426, line: 117, baseType: !32, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1425, file: !1426, line: 118, baseType: !32, size: 64, offset: 448)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1425, file: !1426, line: 119, baseType: !32, size: 64, offset: 512)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1425, file: !1426, line: 120, baseType: !32, size: 64, offset: 576)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1425, file: !1426, line: 121, baseType: !32, size: 64, offset: 640)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1425, file: !1426, line: 122, baseType: !32, size: 64, offset: 704)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1425, file: !1426, line: 123, baseType: !32, size: 64, offset: 768)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1425, file: !1426, line: 124, baseType: !32, size: 64, offset: 832)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1425, file: !1426, line: 125, baseType: !32, size: 64, offset: 896)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1425, file: !1426, line: 139, baseType: !32, size: 64, offset: 960)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1425, file: !1426, line: 142, baseType: !32, size: 64, offset: 1024)
!1445 = !DIDerivedType(tag: DW_TAG_member, scope: !1425, file: !1426, line: 144, baseType: !1446, size: 64, offset: 1088)
!1446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1425, file: !1426, line: 144, size: 64, elements: !1447)
!1447 = !{!1448, !1449, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1446, file: !1426, line: 146, baseType: !83, size: 16)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1446, file: !1426, line: 148, baseType: !114, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1446, file: !1426, line: 150, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1426, line: 59, size: 64, elements: !1452)
!1452 = !{!1453, !1454, !1455}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1451, file: !1426, line: 61, baseType: !114, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1451, file: !1426, line: 63, baseType: !114, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1451, file: !1426, line: 65, baseType: !114, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1425, file: !1426, line: 153, baseType: !32, size: 64, offset: 1152)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1425, file: !1426, line: 154, baseType: !32, size: 64, offset: 1216)
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1425, file: !1426, line: 156, baseType: !1459, size: 64, offset: 1280)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1425, file: !1426, line: 156, size: 64, elements: !1460)
!1460 = !{!1461, !1462, !1463}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1459, file: !1426, line: 158, baseType: !83, size: 16)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1459, file: !1426, line: 160, baseType: !114, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1459, file: !1426, line: 162, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1426, line: 69, size: 64, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1464, file: !1426, line: 71, baseType: !114, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1464, file: !1426, line: 73, baseType: !114, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1464, file: !1426, line: 75, baseType: !114, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1464, file: !1426, line: 77, baseType: !114, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1464, file: !1426, line: 80, baseType: !114, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1464, file: !1426, line: 83, baseType: !114, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1464, file: !1426, line: 86, baseType: !114, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1464, file: !1426, line: 88, baseType: !114, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1464, file: !1426, line: 93, baseType: !114, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1464, file: !1426, line: 100, baseType: !114, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1401, file: !1324, line: 96, baseType: !45, size: 32, offset: 1024)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1342, file: !1324, line: 352, baseType: !1478, size: 4608, align: 512)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1324, line: 333, size: 4608, align: 512, elements: !1479)
!1479 = !{!1480, !1481, !1490}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1478, file: !1324, line: 334, baseType: !1360, size: 4096, align: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1478, file: !1324, line: 335, baseType: !1482, size: 512, offset: 4096)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1324, line: 312, size: 512, elements: !1483)
!1483 = !{!1484, !1485, !1486}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1482, file: !1324, line: 313, baseType: !114, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1482, file: !1324, line: 314, baseType: !114, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1482, file: !1324, line: 315, baseType: !1487, size: 384, offset: 128)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 384, elements: !1488)
!1488 = !{!1489}
!1489 = !DISubrange(count: 6)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1478, file: !1324, line: 336, baseType: !1491, offset: 4608)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, elements: !592)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1342, file: !1324, line: 353, baseType: !1493, size: 32768)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 32768, elements: !1494)
!1494 = !{!1495}
!1495 = !DISubrange(count: 4096)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1323, file: !1324, line: 484, baseType: !1329, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1323, file: !1324, line: 491, baseType: !1498, size: 128, offset: 256)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1324, line: 404, size: 128, elements: !1499)
!1499 = !{!1500, !1501, !1502}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1498, file: !1324, line: 424, baseType: !114, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1498, file: !1324, line: 432, baseType: !7, size: 32, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1498, file: !1324, line: 440, baseType: !7, size: 32, offset: 96)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1323, file: !1324, line: 498, baseType: !1498, size: 128, offset: 384)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1323, file: !1324, line: 508, baseType: !1330, size: 33280, align: 512, offset: 512)
!1505 = !{!0}
!1506 = !{!"rsp"}
!1507 = !{i32 7, !"Dwarf Version", i32 5}
!1508 = !{i32 2, !"Debug Info Version", i32 3}
!1509 = !{i32 1, !"wchar_size", i32 2}
!1510 = !{i32 8, !"cf-protection-branch", i32 1}
!1511 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1512 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1513 = !{i32 1, !"Code Model", i32 2}
!1514 = !{i32 1, !"override-stack-alignment", i32 8}
!1515 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1516 = distinct !DISubprogram(name: "copy_from_user_nmi", scope: !3, file: !3, line: 32, type: !1517, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1521)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!32, !30, !1519, !32}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1521 = !{!1522, !1523, !1524, !1525}
!1522 = !DILocalVariable(name: "to", arg: 1, scope: !1516, file: !3, line: 32, type: !30)
!1523 = !DILocalVariable(name: "from", arg: 2, scope: !1516, file: !3, line: 32, type: !1519)
!1524 = !DILocalVariable(name: "n", arg: 3, scope: !1516, file: !3, line: 32, type: !32)
!1525 = !DILocalVariable(name: "ret", scope: !1516, file: !3, line: 34, type: !32)
!1526 = !DILocation(line: 32, column: 26, scope: !1516)
!1527 = !DILocation(line: 32, column: 49, scope: !1516)
!1528 = !DILocation(line: 32, column: 69, scope: !1516)
!1529 = !DILocation(line: 34, column: 2, scope: !1516)
!1530 = !DILocation(line: 34, column: 16, scope: !1516)
!1531 = !DILocation(line: 36, column: 19, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 36, column: 6)
!1533 = !DILocation(line: 36, column: 25, scope: !1532)
!1534 = !DILocation(line: 36, column: 7, scope: !1532)
!1535 = !DILocation(line: 36, column: 6, scope: !1516)
!1536 = !DILocation(line: 37, column: 10, scope: !1532)
!1537 = !DILocation(line: 37, column: 3, scope: !1532)
!1538 = !DILocation(line: 39, column: 7, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 39, column: 6)
!1540 = !DILocation(line: 39, column: 6, scope: !1516)
!1541 = !DILocation(line: 40, column: 10, scope: !1539)
!1542 = !DILocation(line: 40, column: 3, scope: !1539)
!1543 = !DILocation(line: 47, column: 2, scope: !1516)
!1544 = !DILocation(line: 48, column: 35, scope: !1516)
!1545 = !DILocation(line: 48, column: 39, scope: !1516)
!1546 = !DILocation(line: 48, column: 45, scope: !1516)
!1547 = !DILocation(line: 48, column: 2, scope: !1516)
!1548 = !DILocation(line: 49, column: 27, scope: !1516)
!1549 = !DILocation(line: 49, column: 31, scope: !1516)
!1550 = !DILocation(line: 49, column: 37, scope: !1516)
!1551 = !DILocation(line: 49, column: 8, scope: !1516)
!1552 = !DILocation(line: 49, column: 6, scope: !1516)
!1553 = !DILocation(line: 50, column: 34, scope: !1516)
!1554 = !DILocation(line: 50, column: 38, scope: !1516)
!1555 = !DILocation(line: 50, column: 44, scope: !1516)
!1556 = !DILocation(line: 50, column: 47, scope: !1516)
!1557 = !DILocation(line: 50, column: 2, scope: !1516)
!1558 = !DILocation(line: 51, column: 2, scope: !1516)
!1559 = !DILocation(line: 53, column: 9, scope: !1516)
!1560 = !DILocation(line: 53, column: 2, scope: !1516)
!1561 = !DILocation(line: 54, column: 1, scope: !1516)
!1562 = distinct !DISubprogram(name: "__access_ok", scope: !1563, file: !1563, line: 85, type: !1564, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1566)
!1563 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!881, !1519, !32}
!1566 = !{!1567, !1568, !1569}
!1567 = !DILocalVariable(name: "ptr", arg: 1, scope: !1562, file: !1563, line: 85, type: !1519)
!1568 = !DILocalVariable(name: "size", arg: 2, scope: !1562, file: !1563, line: 85, type: !32)
!1569 = !DILocalVariable(name: "sum", scope: !1570, file: !1563, line: 90, type: !32)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !1563, line: 89, column: 9)
!1571 = distinct !DILexicalBlock(scope: !1562, file: !1563, line: 87, column: 6)
!1572 = !DILocation(line: 85, column: 51, scope: !1562)
!1573 = !DILocation(line: 85, column: 70, scope: !1562)
!1574 = !DILocation(line: 87, column: 27, scope: !1571)
!1575 = !DILocation(line: 87, column: 32, scope: !1571)
!1576 = !DILocation(line: 87, column: 6, scope: !1571)
!1577 = !DILocation(line: 87, column: 46, scope: !1571)
!1578 = !DILocation(line: 87, column: 49, scope: !1571)
!1579 = !DILocation(line: 87, column: 54, scope: !1571)
!1580 = !DILocation(line: 87, column: 6, scope: !1562)
!1581 = !DILocation(line: 88, column: 10, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1571, file: !1563, line: 87, column: 68)
!1583 = !DILocation(line: 88, column: 3, scope: !1582)
!1584 = !DILocation(line: 90, column: 3, scope: !1570)
!1585 = !DILocation(line: 90, column: 17, scope: !1570)
!1586 = !DILocation(line: 90, column: 23, scope: !1570)
!1587 = !DILocation(line: 90, column: 45, scope: !1570)
!1588 = !DILocation(line: 90, column: 30, scope: !1570)
!1589 = !DILocation(line: 90, column: 28, scope: !1570)
!1590 = !DILocation(line: 91, column: 10, scope: !1570)
!1591 = !DILocation(line: 91, column: 34, scope: !1570)
!1592 = !DILocation(line: 91, column: 37, scope: !1570)
!1593 = !DILocation(line: 91, column: 59, scope: !1570)
!1594 = !DILocation(line: 91, column: 44, scope: !1570)
!1595 = !DILocation(line: 91, column: 41, scope: !1570)
!1596 = !DILocation(line: 0, scope: !1570)
!1597 = !DILocation(line: 91, column: 3, scope: !1570)
!1598 = !DILocation(line: 92, column: 2, scope: !1571)
!1599 = !DILocation(line: 93, column: 1, scope: !1562)
!1600 = !DISubprogram(name: "nmi_uaccess_okay", scope: !1601, file: !1601, line: 174, type: !1602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1601 = !DIFile(filename: "./arch/x86/include/asm/tlbflush.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "855d4064bc03d0e3d0f10fca91c7b33f")
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!881}
!1604 = distinct !DISubprogram(name: "pagefault_disable", scope: !1605, file: !1605, line: 225, type: !1606, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1605 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null}
!1608 = !DILocation(line: 227, column: 2, scope: !1604)
!1609 = !DILocation(line: 232, column: 2, scope: !1604)
!1610 = !{i64 2151642595}
!1611 = !DILocation(line: 233, column: 1, scope: !1604)
!1612 = distinct !DISubprogram(name: "instrument_copy_from_user_before", scope: !1613, file: !1613, line: 127, type: !1614, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1616)
!1613 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !1519, !1519, !32}
!1616 = !{!1617, !1618, !1619}
!1617 = !DILocalVariable(name: "to", arg: 1, scope: !1612, file: !1613, line: 127, type: !1519)
!1618 = !DILocalVariable(name: "from", arg: 2, scope: !1612, file: !1613, line: 127, type: !1519)
!1619 = !DILocalVariable(name: "n", arg: 3, scope: !1612, file: !1613, line: 127, type: !32)
!1620 = !DILocation(line: 127, column: 46, scope: !1612)
!1621 = !DILocation(line: 127, column: 69, scope: !1612)
!1622 = !DILocation(line: 127, column: 89, scope: !1612)
!1623 = !DILocation(line: 129, column: 20, scope: !1612)
!1624 = !DILocation(line: 129, column: 24, scope: !1612)
!1625 = !DILocation(line: 129, column: 2, scope: !1612)
!1626 = !DILocation(line: 130, column: 2, scope: !1612)
!1627 = !DILocation(line: 131, column: 1, scope: !1612)
!1628 = distinct !DISubprogram(name: "raw_copy_from_user", scope: !1563, file: !1563, line: 125, type: !1517, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1629)
!1629 = !{!1630, !1631, !1632}
!1630 = !DILocalVariable(name: "dst", arg: 1, scope: !1628, file: !1563, line: 125, type: !30)
!1631 = !DILocalVariable(name: "src", arg: 2, scope: !1628, file: !1563, line: 125, type: !1519)
!1632 = !DILocalVariable(name: "size", arg: 3, scope: !1628, file: !1563, line: 125, type: !32)
!1633 = !DILocation(line: 125, column: 26, scope: !1628)
!1634 = !DILocation(line: 125, column: 50, scope: !1628)
!1635 = !DILocation(line: 125, column: 69, scope: !1628)
!1636 = !DILocation(line: 127, column: 27, scope: !1628)
!1637 = !DILocation(line: 127, column: 48, scope: !1628)
!1638 = !DILocation(line: 127, column: 53, scope: !1628)
!1639 = !DILocation(line: 127, column: 9, scope: !1628)
!1640 = !DILocation(line: 127, column: 2, scope: !1628)
!1641 = distinct !DISubprogram(name: "instrument_copy_from_user_after", scope: !1613, file: !1613, line: 144, type: !1642, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1644)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !1519, !1519, !32, !32}
!1644 = !{!1645, !1646, !1647, !1648}
!1645 = !DILocalVariable(name: "to", arg: 1, scope: !1641, file: !1613, line: 144, type: !1519)
!1646 = !DILocalVariable(name: "from", arg: 2, scope: !1641, file: !1613, line: 144, type: !1519)
!1647 = !DILocalVariable(name: "n", arg: 3, scope: !1641, file: !1613, line: 145, type: !32)
!1648 = !DILocalVariable(name: "left", arg: 4, scope: !1641, file: !1613, line: 145, type: !32)
!1649 = !DILocation(line: 144, column: 45, scope: !1641)
!1650 = !DILocation(line: 144, column: 68, scope: !1641)
!1651 = !DILocation(line: 145, column: 19, scope: !1641)
!1652 = !DILocation(line: 145, column: 36, scope: !1641)
!1653 = !DILocation(line: 147, column: 24, scope: !1641)
!1654 = !DILocation(line: 147, column: 28, scope: !1641)
!1655 = !DILocation(line: 147, column: 32, scope: !1641)
!1656 = !DILocation(line: 147, column: 30, scope: !1641)
!1657 = !DILocation(line: 147, column: 2, scope: !1641)
!1658 = !DILocation(line: 148, column: 1, scope: !1641)
!1659 = distinct !DISubprogram(name: "pagefault_enable", scope: !1605, file: !1605, line: 235, type: !1606, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1660 = !DILocation(line: 241, column: 2, scope: !1659)
!1661 = !{i64 2151642798}
!1662 = !DILocation(line: 242, column: 2, scope: !1659)
!1663 = !DILocation(line: 243, column: 1, scope: !1659)
!1664 = distinct !DISubprogram(name: "pagefault_disabled_inc", scope: !1605, file: !1605, line: 208, type: !1606, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1665 = !DILocation(line: 210, column: 2, scope: !1664)
!1666 = !DILocation(line: 210, column: 11, scope: !1664)
!1667 = !DILocation(line: 210, column: 29, scope: !1664)
!1668 = !DILocation(line: 211, column: 1, scope: !1664)
!1669 = distinct !DISubprogram(name: "get_current", scope: !1670, file: !1670, line: 39, type: !1671, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1673)
!1670 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!34}
!1673 = !{!1674, !1676, !1678}
!1674 = !DILocalVariable(name: "pscr_ret__", scope: !1675, file: !1670, line: 41, type: !34)
!1675 = distinct !DILexicalBlock(scope: !1669, file: !1670, line: 41, column: 9)
!1676 = !DILocalVariable(name: "__vpp_verify", scope: !1677, file: !1670, line: 41, type: !1519)
!1677 = distinct !DILexicalBlock(scope: !1675, file: !1670, line: 41, column: 9)
!1678 = !DILocalVariable(name: "pfo_val__", scope: !1679, file: !1670, line: 41, type: !114)
!1679 = distinct !DILexicalBlock(scope: !1675, file: !1670, line: 41, column: 9)
!1680 = !DILocation(line: 41, column: 9, scope: !1675)
!1681 = !DILocation(line: 41, column: 9, scope: !1677)
!1682 = !DILocation(line: 41, column: 9, scope: !1679)
!1683 = !{i64 2148206008}
!1684 = !DILocation(line: 41, column: 9, scope: !1669)
!1685 = !DILocation(line: 41, column: 2, scope: !1669)
!1686 = distinct !DISubprogram(name: "kasan_check_write", scope: !1687, file: !1687, line: 44, type: !1688, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1693)
!1687 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!881, !1690, !7}
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1692)
!1692 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1693 = !{!1694, !1695}
!1694 = !DILocalVariable(name: "p", arg: 1, scope: !1686, file: !1687, line: 44, type: !1690)
!1695 = !DILocalVariable(name: "size", arg: 2, scope: !1686, file: !1687, line: 44, type: !7)
!1696 = !DILocation(line: 44, column: 59, scope: !1686)
!1697 = !DILocation(line: 44, column: 75, scope: !1686)
!1698 = !DILocation(line: 46, column: 2, scope: !1686)
!1699 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1700, file: !1700, line: 229, type: !1701, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1703)
!1700 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1701 = !DISubroutineType(types: !1702)
!1702 = !{null, !1690, !847, !63}
!1703 = !{!1704, !1705, !1706}
!1704 = !DILocalVariable(name: "ptr", arg: 1, scope: !1699, file: !1700, line: 229, type: !1690)
!1705 = !DILocalVariable(name: "size", arg: 2, scope: !1699, file: !1700, line: 229, type: !847)
!1706 = !DILocalVariable(name: "type", arg: 3, scope: !1699, file: !1700, line: 230, type: !63)
!1707 = !DILocation(line: 229, column: 60, scope: !1699)
!1708 = !DILocation(line: 229, column: 72, scope: !1699)
!1709 = !DILocation(line: 230, column: 15, scope: !1699)
!1710 = !DILocation(line: 230, column: 23, scope: !1699)
!1711 = distinct !DISubprogram(name: "copy_user_generic", scope: !1563, file: !1563, line: 105, type: !1517, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1712)
!1712 = !{!1713, !1714, !1715}
!1713 = !DILocalVariable(name: "to", arg: 1, scope: !1711, file: !1563, line: 105, type: !30)
!1714 = !DILocalVariable(name: "from", arg: 2, scope: !1711, file: !1563, line: 105, type: !1519)
!1715 = !DILocalVariable(name: "len", arg: 3, scope: !1711, file: !1563, line: 105, type: !32)
!1716 = !DILocation(line: 105, column: 25, scope: !1711)
!1717 = !DILocation(line: 105, column: 41, scope: !1711)
!1718 = !DILocation(line: 105, column: 61, scope: !1711)
!1719 = !DILocation(line: 107, column: 2, scope: !1711)
!1720 = !DILocation(line: 112, column: 2, scope: !1711)
!1721 = !{i64 4145262, i64 4145267, i64 2151631957, i64 2151631963, i64 2151631979, i64 2151631995, i64 2151632022, i64 2151632345, i64 2151631556, i64 2151632351, i64 2151632399, i64 2151632463, i64 2151632527, i64 2151632584, i64 2151631637, i64 2151631662, i64 2151632868, i64 2151633009, i64 2151632929, i64 2151633023, i64 2151631754, i64 4145364, i64 2151633088, i64 2151633132, i64 2151633155, i64 2151633188, i64 2151633219, i64 2151633258}
!1722 = !DILocation(line: 120, column: 2, scope: !1711)
!1723 = !DILocation(line: 121, column: 9, scope: !1711)
!1724 = !DILocation(line: 121, column: 2, scope: !1711)
!1725 = distinct !DISubprogram(name: "stac", scope: !1726, file: !1726, line: 36, type: !1606, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1726 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!1727 = !DILocation(line: 39, column: 2, scope: !1725)
!1728 = !{i64 2151072144, i64 2151072172, i64 2151072178, i64 2151072194, i64 2151072210, i64 2151072237, i64 2151072551, i64 2151071894, i64 2151072557, i64 2151072605, i64 2151072669, i64 2151072733, i64 2151072790, i64 2151071975, i64 2151072000, i64 2151072997, i64 2151073133, i64 2151073058, i64 2151073147, i64 2151072092}
!1729 = !DILocation(line: 40, column: 1, scope: !1725)
!1730 = distinct !DISubprogram(name: "clac", scope: !1726, file: !1726, line: 30, type: !1606, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1731 = !DILocation(line: 33, column: 2, scope: !1730)
!1732 = !{i64 2151070477, i64 2151070505, i64 2151070511, i64 2151070527, i64 2151070543, i64 2151070570, i64 2151070884, i64 2151070227, i64 2151070890, i64 2151070938, i64 2151071002, i64 2151071066, i64 2151071123, i64 2151070308, i64 2151070333, i64 2151071330, i64 2151071466, i64 2151071391, i64 2151071480, i64 2151070425}
!1733 = !DILocation(line: 34, column: 1, scope: !1730)
!1734 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !1735, file: !1735, line: 70, type: !1736, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1738)
!1735 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !1519, !847}
!1738 = !{!1739, !1740}
!1739 = !DILocalVariable(name: "address", arg: 1, scope: !1734, file: !1735, line: 70, type: !1519)
!1740 = !DILocalVariable(name: "size", arg: 2, scope: !1734, file: !1735, line: 70, type: !847)
!1741 = !DILocation(line: 70, column: 54, scope: !1734)
!1742 = !DILocation(line: 70, column: 70, scope: !1734)
!1743 = !DILocation(line: 72, column: 1, scope: !1734)
!1744 = distinct !DISubprogram(name: "pagefault_disabled_dec", scope: !1605, file: !1605, line: 213, type: !1606, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1745 = !DILocation(line: 215, column: 2, scope: !1744)
!1746 = !DILocation(line: 215, column: 11, scope: !1744)
!1747 = !DILocation(line: 215, column: 29, scope: !1744)
!1748 = !DILocation(line: 216, column: 1, scope: !1744)
