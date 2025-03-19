; ModuleID = 'drivers/base/driver.c'
source_filename = "drivers/base/driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_driver_set_override: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad driver_set_override ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_driver_for_each_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad driver_for_each_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_driver_find_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad driver_find_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_driver_create_file: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad driver_create_file ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_driver_remove_file: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad driver_remove_file ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_driver_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad driver_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_driver_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad driver_unregister ; .previous"

%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.klist_iter = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, ptr, ptr }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, ptr, ptr, ptr, i8 }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@__UNIQUE_ID___addressable_driver_set_override205 = internal global ptr @driver_set_override, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_driver_for_each_device206 = internal global ptr @driver_for_each_device, section ".discard.addressable", align 8, !dbg !1599
@__UNIQUE_ID___addressable_driver_find_device207 = internal global ptr @driver_find_device, section ".discard.addressable", align 8, !dbg !1601
@__UNIQUE_ID___addressable_driver_create_file208 = internal global ptr @driver_create_file, section ".discard.addressable", align 8, !dbg !1603
@__UNIQUE_ID___addressable_driver_remove_file209 = internal global ptr @driver_remove_file, section ".discard.addressable", align 8, !dbg !1605
@.str = private unnamed_addr constant [94 x i8] c"\013Driver '%s' was unable to register with bus_type '%s' because the bus was not initialized.\0A\00", align 1, !dbg !1607
@.str.1 = private unnamed_addr constant [60 x i8] c"\014Driver '%s' needs updating - please use bus_type methods\0A\00", align 1, !dbg !1612
@.str.2 = private unnamed_addr constant [57 x i8] c"\013Error: Driver '%s' is already registered, aborting...\0A\00", align 1, !dbg !1617
@__UNIQUE_ID___addressable_driver_register210 = internal global ptr @driver_register, section ".discard.addressable", align 8, !dbg !1622
@.str.3 = private unnamed_addr constant [31 x i8] c"Unexpected driver unregister!\0A\00", align 1, !dbg !1624
@.str.4 = private unnamed_addr constant [22 x i8] c"drivers/base/driver.c\00", align 1, !dbg !1629
@__UNIQUE_ID___addressable_driver_unregister211 = internal global ptr @driver_unregister, section ".discard.addressable", align 8, !dbg !1634
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_driver_set_override205, ptr @__UNIQUE_ID___addressable_driver_for_each_device206, ptr @__UNIQUE_ID___addressable_driver_find_device207, ptr @__UNIQUE_ID___addressable_driver_create_file208, ptr @__UNIQUE_ID___addressable_driver_remove_file209, ptr @__UNIQUE_ID___addressable_driver_register210, ptr @__UNIQUE_ID___addressable_driver_unregister211], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @driver_set_override(ptr noundef %dev, ptr noundef %override, ptr noundef %s, i64 noundef %len) #0 align 16 !dbg !1645 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %override.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %new = alloca ptr, align 8
  %old = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1649, metadata !DIExpression()), !dbg !1656
  store ptr %override, ptr %override.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %override.addr, metadata !1650, metadata !DIExpression()), !dbg !1657
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1651, metadata !DIExpression()), !dbg !1658
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1652, metadata !DIExpression()), !dbg !1659
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #7, !dbg !1660
  call void @llvm.dbg.declare(metadata ptr %new, metadata !1653, metadata !DIExpression()), !dbg !1661
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #7, !dbg !1660
  call void @llvm.dbg.declare(metadata ptr %old, metadata !1654, metadata !DIExpression()), !dbg !1662
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #7, !dbg !1663
  call void @llvm.dbg.declare(metadata ptr %cp, metadata !1655, metadata !DIExpression()), !dbg !1664
  %0 = load ptr, ptr %override.addr, align 8, !dbg !1665
  %tobool = icmp ne ptr %0, null, !dbg !1665
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1667

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1668
  %tobool1 = icmp ne ptr %1, null, !dbg !1668
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1669

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !1670
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1670

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, ptr %len.addr, align 8, !dbg !1671
  %cmp = icmp uge i64 %2, 4095, !dbg !1673
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1674

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !1675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1675

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %s.addr, align 8, !dbg !1676
  %call = call i64 @strlen(ptr noundef %3) #8, !dbg !1677
  store i64 %call, ptr %len.addr, align 8, !dbg !1678
  %4 = load i64, ptr %len.addr, align 8, !dbg !1679
  %tobool4 = icmp ne i64 %4, 0, !dbg !1679
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1681

if.then5:                                         ; preds = %if.end3
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !1682
  call void @device_lock(ptr noundef %5) #8, !dbg !1684
  %6 = load ptr, ptr %override.addr, align 8, !dbg !1685
  %7 = load ptr, ptr %6, align 8, !dbg !1686
  store ptr %7, ptr %old, align 8, !dbg !1687
  %8 = load ptr, ptr %override.addr, align 8, !dbg !1688
  store ptr null, ptr %8, align 8, !dbg !1689
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !1690
  call void @device_unlock(ptr noundef %9) #8, !dbg !1691
  %10 = load ptr, ptr %old, align 8, !dbg !1692
  call void @kfree(ptr noundef %10) #8, !dbg !1693
  store i32 0, ptr %retval, align 4, !dbg !1694
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1694

if.end6:                                          ; preds = %if.end3
  %11 = load ptr, ptr %s.addr, align 8, !dbg !1695
  %12 = load i64, ptr %len.addr, align 8, !dbg !1696
  %call7 = call ptr @strnchr(ptr noundef %11, i64 noundef %12, i32 noundef 10) #8, !dbg !1697
  store ptr %call7, ptr %cp, align 8, !dbg !1698
  %13 = load ptr, ptr %cp, align 8, !dbg !1699
  %tobool8 = icmp ne ptr %13, null, !dbg !1699
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1701

if.then9:                                         ; preds = %if.end6
  %14 = load ptr, ptr %cp, align 8, !dbg !1702
  %15 = load ptr, ptr %s.addr, align 8, !dbg !1703
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i64, !dbg !1704
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i64, !dbg !1704
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1704
  store i64 %sub.ptr.sub, ptr %len.addr, align 8, !dbg !1705
  br label %if.end10, !dbg !1706

if.end10:                                         ; preds = %if.then9, %if.end6
  %16 = load ptr, ptr %s.addr, align 8, !dbg !1707
  %17 = load i64, ptr %len.addr, align 8, !dbg !1708
  %call11 = call ptr @kstrndup(ptr noundef %16, i64 noundef %17, i32 noundef 3264) #8, !dbg !1709
  store ptr %call11, ptr %new, align 8, !dbg !1710
  %18 = load ptr, ptr %new, align 8, !dbg !1711
  %tobool12 = icmp ne ptr %18, null, !dbg !1711
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1713

if.then13:                                        ; preds = %if.end10
  store i32 -12, ptr %retval, align 4, !dbg !1714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1714

if.end14:                                         ; preds = %if.end10
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !1715
  call void @device_lock(ptr noundef %19) #8, !dbg !1716
  %20 = load ptr, ptr %override.addr, align 8, !dbg !1717
  %21 = load ptr, ptr %20, align 8, !dbg !1718
  store ptr %21, ptr %old, align 8, !dbg !1719
  %22 = load ptr, ptr %cp, align 8, !dbg !1720
  %23 = load ptr, ptr %s.addr, align 8, !dbg !1722
  %cmp15 = icmp ne ptr %22, %23, !dbg !1723
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !1724

if.then16:                                        ; preds = %if.end14
  %24 = load ptr, ptr %new, align 8, !dbg !1725
  %25 = load ptr, ptr %override.addr, align 8, !dbg !1727
  store ptr %24, ptr %25, align 8, !dbg !1728
  br label %if.end17, !dbg !1729

if.else:                                          ; preds = %if.end14
  %26 = load ptr, ptr %new, align 8, !dbg !1730
  call void @kfree(ptr noundef %26) #8, !dbg !1732
  %27 = load ptr, ptr %override.addr, align 8, !dbg !1733
  store ptr null, ptr %27, align 8, !dbg !1734
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !1735
  call void @device_unlock(ptr noundef %28) #8, !dbg !1736
  %29 = load ptr, ptr %old, align 8, !dbg !1737
  call void @kfree(ptr noundef %29) #8, !dbg !1738
  store i32 0, ptr %retval, align 4, !dbg !1739
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1739

cleanup:                                          ; preds = %if.end17, %if.then13, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #7, !dbg !1740
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #7, !dbg !1740
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #7, !dbg !1740
  %30 = load i32, ptr %retval, align 4, !dbg !1740
  ret i32 %30, !dbg !1740
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1741 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_lock(ptr noundef %dev) #4 align 16 !dbg !1745 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1747, metadata !DIExpression()), !dbg !1748
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1749
  %mutex = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9, !dbg !1750
  call void @mutex_lock(ptr noundef %mutex) #8, !dbg !1751
  ret void, !dbg !1752
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_unlock(ptr noundef %dev) #4 align 16 !dbg !1753 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1755, metadata !DIExpression()), !dbg !1756
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1757
  %mutex = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9, !dbg !1758
  call void @mutex_unlock(ptr noundef %mutex) #8, !dbg !1759
  ret void, !dbg !1760
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1761 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1765 dso_local ptr @strnchr(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1768 dso_local ptr @kstrndup(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @driver_for_each_device(ptr noundef %drv, ptr noundef %start, ptr noundef %data, ptr noundef %fn) #0 align 16 !dbg !1771 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %i = alloca %struct.klist_iter, align 8
  %dev = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1778, metadata !DIExpression()), !dbg !1790
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1779, metadata !DIExpression()), !dbg !1791
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1780, metadata !DIExpression()), !dbg !1792
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !1781, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 16, ptr %i) #7, !dbg !1794
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1782, metadata !DIExpression()), !dbg !1795
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #7, !dbg !1796
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1788, metadata !DIExpression()), !dbg !1797
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !1798
  call void @llvm.dbg.declare(metadata ptr %error, metadata !1789, metadata !DIExpression()), !dbg !1799
  store i32 0, ptr %error, align 4, !dbg !1799
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !1800
  %tobool = icmp ne ptr %0, null, !dbg !1800
  br i1 %tobool, label %if.end, label %if.then, !dbg !1802

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1803
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1803

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !1804
  %p = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 18, !dbg !1805
  %2 = load ptr, ptr %p, align 8, !dbg !1805
  %klist_devices = getelementptr inbounds %struct.driver_private, ptr %2, i32 0, i32 1, !dbg !1806
  %3 = load ptr, ptr %start.addr, align 8, !dbg !1807
  %tobool1 = icmp ne ptr %3, null, !dbg !1807
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !1807

cond.true:                                        ; preds = %if.end
  %4 = load ptr, ptr %start.addr, align 8, !dbg !1808
  %p2 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2, !dbg !1809
  %5 = load ptr, ptr %p2, align 8, !dbg !1809
  %knode_driver = getelementptr inbounds %struct.device_private, ptr %5, i32 0, i32 2, !dbg !1810
  br label %cond.end, !dbg !1807

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1807

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %knode_driver, %cond.true ], [ null, %cond.false ], !dbg !1807
  call void @klist_iter_init_node(ptr noundef %klist_devices, ptr noundef %i, ptr noundef %cond) #8, !dbg !1811
  br label %while.cond, !dbg !1812

while.cond:                                       ; preds = %while.body, %cond.end
  %6 = load i32, ptr %error, align 4, !dbg !1813
  %tobool3 = icmp ne i32 %6, 0, !dbg !1813
  br i1 %tobool3, label %land.end, label %land.rhs, !dbg !1814

land.rhs:                                         ; preds = %while.cond
  %call = call ptr @next_device(ptr noundef %i) #8, !dbg !1815
  store ptr %call, ptr %dev, align 8, !dbg !1816
  %tobool4 = icmp ne ptr %call, null, !dbg !1814
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !1817
  br i1 %7, label %while.body, label %while.end, !dbg !1812

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %fn.addr, align 8, !dbg !1818
  %9 = load ptr, ptr %dev, align 8, !dbg !1819
  %10 = load ptr, ptr %data.addr, align 8, !dbg !1820
  %call5 = call i32 %8(ptr noundef %9, ptr noundef %10) #8, !dbg !1818
  store i32 %call5, ptr %error, align 4, !dbg !1821
  br label %while.cond, !dbg !1812, !llvm.loop !1822

while.end:                                        ; preds = %land.end
  call void @klist_iter_exit(ptr noundef %i) #8, !dbg !1826
  %11 = load i32, ptr %error, align 4, !dbg !1827
  store i32 %11, ptr %retval, align 4, !dbg !1828
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1828

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !1829
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #7, !dbg !1829
  call void @llvm.lifetime.end.p0(i64 16, ptr %i) #7, !dbg !1829
  %12 = load i32, ptr %retval, align 4, !dbg !1829
  ret i32 %12, !dbg !1829
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1830 dso_local void @klist_iter_init_node(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @next_device(ptr noundef %i) #0 align 16 !dbg !1834 {
entry:
  %i.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %dev_prv = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1838, metadata !DIExpression()), !dbg !1846
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #7, !dbg !1847
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1839, metadata !DIExpression()), !dbg !1848
  %0 = load ptr, ptr %i.addr, align 8, !dbg !1849
  %call = call ptr @klist_next(ptr noundef %0) #8, !dbg !1850
  store ptr %call, ptr %n, align 8, !dbg !1848
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #7, !dbg !1851
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1840, metadata !DIExpression()), !dbg !1852
  store ptr null, ptr %dev, align 8, !dbg !1852
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_prv) #7, !dbg !1853
  call void @llvm.dbg.declare(metadata ptr %dev_prv, metadata !1841, metadata !DIExpression()), !dbg !1854
  %1 = load ptr, ptr %n, align 8, !dbg !1855
  %tobool = icmp ne ptr %1, null, !dbg !1855
  br i1 %tobool, label %if.then, label %if.end, !dbg !1856

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !1857
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1842, metadata !DIExpression()), !dbg !1857
  %2 = load ptr, ptr %n, align 8, !dbg !1857
  store ptr %2, ptr %__mptr, align 8, !dbg !1857
  %3 = load ptr, ptr %__mptr, align 8, !dbg !1857
  %add.ptr = getelementptr i8, ptr %3, i64 -72, !dbg !1857
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1857
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !1858
  %4 = load ptr, ptr %tmp, align 8, !dbg !1857
  store ptr %4, ptr %dev_prv, align 8, !dbg !1859
  %5 = load ptr, ptr %dev_prv, align 8, !dbg !1860
  %device = getelementptr inbounds %struct.device_private, ptr %5, i32 0, i32 8, !dbg !1861
  %6 = load ptr, ptr %device, align 8, !dbg !1861
  store ptr %6, ptr %dev, align 8, !dbg !1862
  br label %if.end, !dbg !1863

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %dev, align 8, !dbg !1864
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_prv) #7, !dbg !1865
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #7, !dbg !1865
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #7, !dbg !1865
  ret ptr %7, !dbg !1866
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1867 dso_local void @klist_iter_exit(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @driver_find_device(ptr noundef %drv, ptr noundef %start, ptr noundef %data, ptr noundef %match) #0 align 16 !dbg !1870 {
entry:
  %retval = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %match.addr = alloca ptr, align 8
  %i = alloca %struct.klist_iter, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1877, metadata !DIExpression()), !dbg !1883
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1878, metadata !DIExpression()), !dbg !1884
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1879, metadata !DIExpression()), !dbg !1885
  store ptr %match, ptr %match.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !1880, metadata !DIExpression()), !dbg !1886
  call void @llvm.lifetime.start.p0(i64 16, ptr %i) #7, !dbg !1887
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1881, metadata !DIExpression()), !dbg !1888
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #7, !dbg !1889
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1882, metadata !DIExpression()), !dbg !1890
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !1891
  %tobool = icmp ne ptr %0, null, !dbg !1891
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1893

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !1894
  %p = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 18, !dbg !1895
  %2 = load ptr, ptr %p, align 8, !dbg !1895
  %tobool1 = icmp ne ptr %2, null, !dbg !1894
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1896

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !1897
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1897

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !1898
  %p2 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 18, !dbg !1899
  %4 = load ptr, ptr %p2, align 8, !dbg !1899
  %klist_devices = getelementptr inbounds %struct.driver_private, ptr %4, i32 0, i32 1, !dbg !1900
  %5 = load ptr, ptr %start.addr, align 8, !dbg !1901
  %tobool3 = icmp ne ptr %5, null, !dbg !1901
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !1901

cond.true:                                        ; preds = %if.end
  %6 = load ptr, ptr %start.addr, align 8, !dbg !1902
  %p4 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !1903
  %7 = load ptr, ptr %p4, align 8, !dbg !1903
  %knode_driver = getelementptr inbounds %struct.device_private, ptr %7, i32 0, i32 2, !dbg !1904
  br label %cond.end, !dbg !1901

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1901

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %knode_driver, %cond.true ], [ null, %cond.false ], !dbg !1901
  call void @klist_iter_init_node(ptr noundef %klist_devices, ptr noundef %i, ptr noundef %cond) #8, !dbg !1905
  br label %while.cond, !dbg !1906

while.cond:                                       ; preds = %if.end11, %cond.end
  %call = call ptr @next_device(ptr noundef %i) #8, !dbg !1907
  store ptr %call, ptr %dev, align 8, !dbg !1908
  %tobool5 = icmp ne ptr %call, null, !dbg !1906
  br i1 %tobool5, label %while.body, label %while.end, !dbg !1906

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %match.addr, align 8, !dbg !1909
  %9 = load ptr, ptr %dev, align 8, !dbg !1911
  %10 = load ptr, ptr %data.addr, align 8, !dbg !1912
  %call6 = call i32 %8(ptr noundef %9, ptr noundef %10) #8, !dbg !1909
  %tobool7 = icmp ne i32 %call6, 0, !dbg !1909
  br i1 %tobool7, label %land.lhs.true, label %if.end11, !dbg !1913

land.lhs.true:                                    ; preds = %while.body
  %11 = load ptr, ptr %dev, align 8, !dbg !1914
  %call8 = call ptr @get_device(ptr noundef %11) #8, !dbg !1915
  %tobool9 = icmp ne ptr %call8, null, !dbg !1915
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1916

if.then10:                                        ; preds = %land.lhs.true
  br label %while.end, !dbg !1917

if.end11:                                         ; preds = %land.lhs.true, %while.body
  br label %while.cond, !dbg !1906, !llvm.loop !1918

while.end:                                        ; preds = %if.then10, %while.cond
  call void @klist_iter_exit(ptr noundef %i) #8, !dbg !1920
  %12 = load ptr, ptr %dev, align 8, !dbg !1921
  store ptr %12, ptr %retval, align 8, !dbg !1922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1922

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #7, !dbg !1923
  call void @llvm.lifetime.end.p0(i64 16, ptr %i) #7, !dbg !1923
  %13 = load ptr, ptr %retval, align 8, !dbg !1923
  ret ptr %13, !dbg !1923
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1924 dso_local ptr @get_device(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @driver_create_file(ptr noundef %drv, ptr noundef %attr) #0 align 16 !dbg !1927 {
entry:
  %drv.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1944, metadata !DIExpression()), !dbg !1947
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1945, metadata !DIExpression()), !dbg !1948
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #7, !dbg !1949
  call void @llvm.dbg.declare(metadata ptr %error, metadata !1946, metadata !DIExpression()), !dbg !1950
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !1951
  %tobool = icmp ne ptr %0, null, !dbg !1951
  br i1 %tobool, label %if.then, label %if.else, !dbg !1953

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !1954
  %p = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 18, !dbg !1955
  %2 = load ptr, ptr %p, align 8, !dbg !1955
  %kobj = getelementptr inbounds %struct.driver_private, ptr %2, i32 0, i32 0, !dbg !1956
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !1957
  %attr1 = getelementptr inbounds %struct.driver_attribute, ptr %3, i32 0, i32 0, !dbg !1958
  %call = call i32 @sysfs_create_file(ptr noundef %kobj, ptr noundef %attr1) #8, !dbg !1959
  store i32 %call, ptr %error, align 4, !dbg !1960
  br label %if.end, !dbg !1961

if.else:                                          ; preds = %entry
  store i32 -22, ptr %error, align 4, !dbg !1962
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, ptr %error, align 4, !dbg !1963
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #7, !dbg !1964
  ret i32 %4, !dbg !1965
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sysfs_create_file(ptr noundef %kobj, ptr noundef %attr) #4 align 16 !dbg !1966 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1972, metadata !DIExpression()), !dbg !1974
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1973, metadata !DIExpression()), !dbg !1975
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1976
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !1977
  %call = call i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #8, !dbg !1978
  ret i32 %call, !dbg !1979
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @driver_remove_file(ptr noundef %drv, ptr noundef %attr) #0 align 16 !dbg !1980 {
entry:
  %drv.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1984, metadata !DIExpression()), !dbg !1986
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !1985, metadata !DIExpression()), !dbg !1987
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !1988
  %tobool = icmp ne ptr %0, null, !dbg !1988
  br i1 %tobool, label %if.then, label %if.end, !dbg !1990

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !1991
  %p = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 18, !dbg !1992
  %2 = load ptr, ptr %p, align 8, !dbg !1992
  %kobj = getelementptr inbounds %struct.driver_private, ptr %2, i32 0, i32 0, !dbg !1993
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !1994
  %attr1 = getelementptr inbounds %struct.driver_attribute, ptr %3, i32 0, i32 0, !dbg !1995
  call void @sysfs_remove_file(ptr noundef %kobj, ptr noundef %attr1) #8, !dbg !1996
  br label %if.end, !dbg !1996

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1997
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sysfs_remove_file(ptr noundef %kobj, ptr noundef %attr) #4 align 16 !dbg !1998 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2002, metadata !DIExpression()), !dbg !2004
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2003, metadata !DIExpression()), !dbg !2005
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2006
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !2007
  call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #8, !dbg !2008
  ret void, !dbg !2009
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @driver_add_groups(ptr noundef %drv, ptr noundef %groups) #0 align 16 !dbg !2010 {
entry:
  %drv.addr = alloca ptr, align 8
  %groups.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2014, metadata !DIExpression()), !dbg !2016
  store ptr %groups, ptr %groups.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %groups.addr, metadata !2015, metadata !DIExpression()), !dbg !2017
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !2018
  %p = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 18, !dbg !2019
  %1 = load ptr, ptr %p, align 8, !dbg !2019
  %kobj = getelementptr inbounds %struct.driver_private, ptr %1, i32 0, i32 0, !dbg !2020
  %2 = load ptr, ptr %groups.addr, align 8, !dbg !2021
  %call = call i32 @sysfs_create_groups(ptr noundef %kobj, ptr noundef %2) #8, !dbg !2022
  ret i32 %call, !dbg !2023
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2024 dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @driver_remove_groups(ptr noundef %drv, ptr noundef %groups) #0 align 16 !dbg !2027 {
entry:
  %drv.addr = alloca ptr, align 8
  %groups.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2031, metadata !DIExpression()), !dbg !2033
  store ptr %groups, ptr %groups.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %groups.addr, metadata !2032, metadata !DIExpression()), !dbg !2034
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !2035
  %p = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 18, !dbg !2036
  %1 = load ptr, ptr %p, align 8, !dbg !2036
  %kobj = getelementptr inbounds %struct.driver_private, ptr %1, i32 0, i32 0, !dbg !2037
  %2 = load ptr, ptr %groups.addr, align 8, !dbg !2038
  call void @sysfs_remove_groups(ptr noundef %kobj, ptr noundef %2) #8, !dbg !2039
  ret void, !dbg !2040
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2041 dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @driver_register(ptr noundef %drv) #0 align 16 !dbg !2044 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %other = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2048, metadata !DIExpression()), !dbg !2051
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !2052
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2049, metadata !DIExpression()), !dbg !2053
  call void @llvm.lifetime.start.p0(i64 8, ptr %other) #7, !dbg !2054
  call void @llvm.dbg.declare(metadata ptr %other, metadata !2050, metadata !DIExpression()), !dbg !2055
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !2056
  %bus = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1, !dbg !2058
  %1 = load ptr, ptr %bus, align 8, !dbg !2058
  %call = call zeroext i1 @bus_is_registered(ptr noundef %1) #8, !dbg !2059
  br i1 %call, label %if.end, label %if.then, !dbg !2060

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2061

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2064

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2064

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %drv.addr, align 8, !dbg !2061
  %name = getelementptr inbounds %struct.device_driver, ptr %2, i32 0, i32 0, !dbg !2061
  %3 = load ptr, ptr %name, align 8, !dbg !2061
  %4 = load ptr, ptr %drv.addr, align 8, !dbg !2061
  %bus1 = getelementptr inbounds %struct.device_driver, ptr %4, i32 0, i32 1, !dbg !2061
  %5 = load ptr, ptr %bus1, align 8, !dbg !2061
  %name2 = getelementptr inbounds %struct.bus_type, ptr %5, i32 0, i32 0, !dbg !2061
  %6 = load ptr, ptr %name2, align 8, !dbg !2061
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %3, ptr noundef %6) #9, !dbg !2061
  store i32 %call3, ptr %tmp, align 4, !dbg !2064
  %7 = load i32, ptr %tmp, align 4, !dbg !2061
  store i32 -22, ptr %retval, align 4, !dbg !2066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2066

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %drv.addr, align 8, !dbg !2067
  %bus4 = getelementptr inbounds %struct.device_driver, ptr %8, i32 0, i32 1, !dbg !2069
  %9 = load ptr, ptr %bus4, align 8, !dbg !2069
  %probe = getelementptr inbounds %struct.bus_type, ptr %9, i32 0, i32 7, !dbg !2070
  %10 = load ptr, ptr %probe, align 8, !dbg !2070
  %tobool = icmp ne ptr %10, null, !dbg !2067
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false, !dbg !2071

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %drv.addr, align 8, !dbg !2072
  %probe5 = getelementptr inbounds %struct.device_driver, ptr %11, i32 0, i32 8, !dbg !2073
  %12 = load ptr, ptr %probe5, align 8, !dbg !2073
  %tobool6 = icmp ne ptr %12, null, !dbg !2072
  br i1 %tobool6, label %if.then18, label %lor.lhs.false, !dbg !2074

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %13 = load ptr, ptr %drv.addr, align 8, !dbg !2075
  %bus7 = getelementptr inbounds %struct.device_driver, ptr %13, i32 0, i32 1, !dbg !2076
  %14 = load ptr, ptr %bus7, align 8, !dbg !2076
  %remove = getelementptr inbounds %struct.bus_type, ptr %14, i32 0, i32 9, !dbg !2077
  %15 = load ptr, ptr %remove, align 8, !dbg !2077
  %tobool8 = icmp ne ptr %15, null, !dbg !2075
  br i1 %tobool8, label %land.lhs.true9, label %lor.lhs.false12, !dbg !2078

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %16 = load ptr, ptr %drv.addr, align 8, !dbg !2079
  %remove10 = getelementptr inbounds %struct.device_driver, ptr %16, i32 0, i32 10, !dbg !2080
  %17 = load ptr, ptr %remove10, align 8, !dbg !2080
  %tobool11 = icmp ne ptr %17, null, !dbg !2079
  br i1 %tobool11, label %if.then18, label %lor.lhs.false12, !dbg !2081

lor.lhs.false12:                                  ; preds = %land.lhs.true9, %lor.lhs.false
  %18 = load ptr, ptr %drv.addr, align 8, !dbg !2082
  %bus13 = getelementptr inbounds %struct.device_driver, ptr %18, i32 0, i32 1, !dbg !2083
  %19 = load ptr, ptr %bus13, align 8, !dbg !2083
  %shutdown = getelementptr inbounds %struct.bus_type, ptr %19, i32 0, i32 10, !dbg !2084
  %20 = load ptr, ptr %shutdown, align 8, !dbg !2084
  %tobool14 = icmp ne ptr %20, null, !dbg !2082
  br i1 %tobool14, label %land.lhs.true15, label %if.end25, !dbg !2085

land.lhs.true15:                                  ; preds = %lor.lhs.false12
  %21 = load ptr, ptr %drv.addr, align 8, !dbg !2086
  %shutdown16 = getelementptr inbounds %struct.device_driver, ptr %21, i32 0, i32 11, !dbg !2087
  %22 = load ptr, ptr %shutdown16, align 8, !dbg !2087
  %tobool17 = icmp ne ptr %22, null, !dbg !2086
  br i1 %tobool17, label %if.then18, label %if.end25, !dbg !2088

if.then18:                                        ; preds = %land.lhs.true15, %land.lhs.true9, %land.lhs.true
  br label %do.body19, !dbg !2089

do.body19:                                        ; preds = %if.then18
  br label %do.cond20, !dbg !2091

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !2091

do.end21:                                         ; preds = %do.cond20
  %23 = load ptr, ptr %drv.addr, align 8, !dbg !2089
  %name23 = getelementptr inbounds %struct.device_driver, ptr %23, i32 0, i32 0, !dbg !2089
  %24 = load ptr, ptr %name23, align 8, !dbg !2089
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %24) #9, !dbg !2089
  store i32 %call24, ptr %tmp22, align 4, !dbg !2091
  %25 = load i32, ptr %tmp22, align 4, !dbg !2089
  br label %if.end25, !dbg !2093

if.end25:                                         ; preds = %do.end21, %land.lhs.true15, %lor.lhs.false12
  %26 = load ptr, ptr %drv.addr, align 8, !dbg !2094
  %name26 = getelementptr inbounds %struct.device_driver, ptr %26, i32 0, i32 0, !dbg !2095
  %27 = load ptr, ptr %name26, align 8, !dbg !2095
  %28 = load ptr, ptr %drv.addr, align 8, !dbg !2096
  %bus27 = getelementptr inbounds %struct.device_driver, ptr %28, i32 0, i32 1, !dbg !2097
  %29 = load ptr, ptr %bus27, align 8, !dbg !2097
  %call28 = call ptr @driver_find(ptr noundef %27, ptr noundef %29) #8, !dbg !2098
  store ptr %call28, ptr %other, align 8, !dbg !2099
  %30 = load ptr, ptr %other, align 8, !dbg !2100
  %tobool29 = icmp ne ptr %30, null, !dbg !2100
  br i1 %tobool29, label %if.then30, label %if.end37, !dbg !2102

if.then30:                                        ; preds = %if.end25
  br label %do.body31, !dbg !2103

do.body31:                                        ; preds = %if.then30
  br label %do.cond32, !dbg !2106

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !2106

do.end33:                                         ; preds = %do.cond32
  %31 = load ptr, ptr %drv.addr, align 8, !dbg !2103
  %name35 = getelementptr inbounds %struct.device_driver, ptr %31, i32 0, i32 0, !dbg !2103
  %32 = load ptr, ptr %name35, align 8, !dbg !2103
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %32) #9, !dbg !2103
  store i32 %call36, ptr %tmp34, align 4, !dbg !2106
  %33 = load i32, ptr %tmp34, align 4, !dbg !2103
  store i32 -16, ptr %retval, align 4, !dbg !2108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2108

if.end37:                                         ; preds = %if.end25
  %34 = load ptr, ptr %drv.addr, align 8, !dbg !2109
  %call38 = call i32 @bus_add_driver(ptr noundef %34) #8, !dbg !2110
  store i32 %call38, ptr %ret, align 4, !dbg !2111
  %35 = load i32, ptr %ret, align 4, !dbg !2112
  %tobool39 = icmp ne i32 %35, 0, !dbg !2112
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !2114

if.then40:                                        ; preds = %if.end37
  %36 = load i32, ptr %ret, align 4, !dbg !2115
  store i32 %36, ptr %retval, align 4, !dbg !2116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2116

if.end41:                                         ; preds = %if.end37
  %37 = load ptr, ptr %drv.addr, align 8, !dbg !2117
  %38 = load ptr, ptr %drv.addr, align 8, !dbg !2118
  %groups = getelementptr inbounds %struct.device_driver, ptr %38, i32 0, i32 14, !dbg !2119
  %39 = load ptr, ptr %groups, align 8, !dbg !2119
  %call42 = call i32 @driver_add_groups(ptr noundef %37, ptr noundef %39) #8, !dbg !2120
  store i32 %call42, ptr %ret, align 4, !dbg !2121
  %40 = load i32, ptr %ret, align 4, !dbg !2122
  %tobool43 = icmp ne i32 %40, 0, !dbg !2122
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !2124

if.then44:                                        ; preds = %if.end41
  %41 = load ptr, ptr %drv.addr, align 8, !dbg !2125
  call void @bus_remove_driver(ptr noundef %41) #8, !dbg !2127
  %42 = load i32, ptr %ret, align 4, !dbg !2128
  store i32 %42, ptr %retval, align 4, !dbg !2129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2129

if.end45:                                         ; preds = %if.end41
  %43 = load ptr, ptr %drv.addr, align 8, !dbg !2130
  %p = getelementptr inbounds %struct.device_driver, ptr %43, i32 0, i32 18, !dbg !2131
  %44 = load ptr, ptr %p, align 8, !dbg !2131
  %kobj = getelementptr inbounds %struct.driver_private, ptr %44, i32 0, i32 0, !dbg !2132
  %call46 = call i32 @kobject_uevent(ptr noundef %kobj, i32 noundef 0) #8, !dbg !2133
  call void @deferred_probe_extend_timeout() #8, !dbg !2134
  %45 = load i32, ptr %ret, align 4, !dbg !2135
  store i32 %45, ptr %retval, align 4, !dbg !2136
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2136

cleanup:                                          ; preds = %if.end45, %if.then44, %if.then40, %do.end33, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %other) #7, !dbg !2137
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !2137
  %46 = load i32, ptr %retval, align 4, !dbg !2137
  ret i32 %46, !dbg !2137
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2138 dso_local zeroext i1 @bus_is_registered(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2141 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2145 dso_local ptr @driver_find(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2148 dso_local i32 @bus_add_driver(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2149 dso_local void @bus_remove_driver(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2152 dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2155 dso_local void @deferred_probe_extend_timeout() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @driver_unregister(ptr noundef %drv) #0 align 16 !dbg !2156 {
entry:
  %drv.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2158, metadata !DIExpression()), !dbg !2167
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !2168
  %tobool = icmp ne ptr %0, null, !dbg !2168
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2169

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !2170
  %p = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 18, !dbg !2171
  %2 = load ptr, ptr %p, align 8, !dbg !2171
  %tobool1 = icmp ne ptr %2, null, !dbg !2170
  br i1 %tobool1, label %if.end31, label %if.then, !dbg !2172

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !2173
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2159, metadata !DIExpression()), !dbg !2173
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !2173
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !2174
  %tobool2 = icmp ne i32 %3, 0, !dbg !2174
  %lnot = xor i1 %tobool2, true, !dbg !2174
  %lnot3 = xor i1 %lnot, true, !dbg !2174
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2174
  %conv = sext i32 %lnot.ext to i64, !dbg !2174
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2174
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2174
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !2173

if.then5:                                         ; preds = %if.then
  br label %do.body, !dbg !2174

do.body:                                          ; preds = %if.then5
  br label %do.body6, !dbg !2175

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !2176

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !2176

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.3) #8, !dbg !2175
  br label %do.body7, !dbg !2175

do.body7:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !2178
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2163, metadata !DIExpression()), !dbg !2178
  store i32 2313, ptr %__flags, align 4, !dbg !2178
  br label %do.body8, !dbg !2178

do.body8:                                         ; preds = %do.body7
  br label %do.cond9, !dbg !2179

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2179

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !2178

do.body11:                                        ; preds = %do.end10
  %4 = load i32, ptr %__flags, align 4, !dbg !2181
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 270, i32 %4, i64 12) #7, !dbg !2181, !srcloc !2183
  br label %do.cond12, !dbg !2181

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2181

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2178

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !2184

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2184

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !2175
  br label %do.cond17, !dbg !2178

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !2178

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !2175

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !2186

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !2186

do.end21:                                         ; preds = %do.cond20
  br label %do.cond22, !dbg !2175

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !2175

do.end23:                                         ; preds = %do.cond22
  br label %if.end, !dbg !2175

if.end:                                           ; preds = %do.end23, %if.then
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !2173
  %tobool24 = icmp ne i32 %5, 0, !dbg !2173
  %lnot25 = xor i1 %tobool24, true, !dbg !2173
  %lnot27 = xor i1 %lnot25, true, !dbg !2173
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !2173
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !2173
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !2173
  store i64 %expval30, ptr %tmp, align 8, !dbg !2174
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !2188
  %6 = load i64, ptr %tmp, align 8, !dbg !2173
  br label %return, !dbg !2189

if.end31:                                         ; preds = %lor.lhs.false
  %7 = load ptr, ptr %drv.addr, align 8, !dbg !2190
  %8 = load ptr, ptr %drv.addr, align 8, !dbg !2191
  %groups = getelementptr inbounds %struct.device_driver, ptr %8, i32 0, i32 14, !dbg !2192
  %9 = load ptr, ptr %groups, align 8, !dbg !2192
  call void @driver_remove_groups(ptr noundef %7, ptr noundef %9) #8, !dbg !2193
  %10 = load ptr, ptr %drv.addr, align 8, !dbg !2194
  call void @bus_remove_driver(ptr noundef %10) #8, !dbg !2195
  br label %return, !dbg !2196

return:                                           ; preds = %if.end31, %if.end
  ret void, !dbg !2196
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2197 dso_local void @__warn_printk(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2200 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2204 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2205 dso_local ptr @klist_next(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2208 dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2211 dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643}
!llvm.ident = !{!1644}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_driver_set_override205", scope: !2, file: !3, line: 106, type: !92, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.driver.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/driver\22 -D KBUILD_BASENAME=\22driver\22 -D KBUILD_MODNAME=\22driver\22 -D __KBUILD_MODNAME=kmod_driver -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/driver.ll drivers/base/driver.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !89, globals: !1598, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/driver.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "614026a846d62deff0e88ce0b9f7a7d9")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78}
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
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !79, line: 53, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88}
!81 = !DIEnumerator(name: "KOBJ_ADD", value: 0)
!82 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1)
!83 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2)
!84 = !DIEnumerator(name: "KOBJ_MOVE", value: 3)
!85 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4)
!86 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5)
!87 = !DIEnumerator(name: "KOBJ_BIND", value: 6)
!88 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7)
!89 = !{!90, !92, !93}
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !91, line: 154, baseType: !7)
!91 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !95, line: 108, size: 1728, elements: !96)
!95 = !DIFile(filename: "drivers/base/base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5f3031875b0a7d87c5130cddf3a0079")
!96 = !{!97, !170, !171, !172, !173, !174, !175, !1595, !1596, !1597}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "klist_children", scope: !94, file: !95, line: 109, baseType: !98, size: 320, align: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !99, line: 18, size: 320, align: 64, elements: !100)
!99 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd49af8b7fc11d3fd997e9c112ace59a")
!100 = !{!101, !144, !150, !169}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !98, file: !99, line: 19, baseType: !102, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !103, line: 29, baseType: !104)
!103 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !103, line: 17, size: 32, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, scope: !104, file: !103, line: 18, baseType: !107, size: 32)
!107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !103, line: 18, size: 32, elements: !108)
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !107, file: !103, line: 19, baseType: !110, size: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !111, line: 14, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !110, file: !111, line: 15, baseType: !114, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !115, line: 44, baseType: !116)
!115 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !115, line: 14, size: 32, elements: !117)
!117 = !{!118}
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !115, line: 15, baseType: !119, size: 32)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !115, line: 15, size: 32, elements: !120)
!120 = !{!121, !126, !136}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !119, file: !115, line: 16, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !91, line: 174, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 172, size: 32, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !123, file: !91, line: 173, baseType: !46, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !119, file: !115, line: 24, baseType: !127, size: 16)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !119, file: !115, line: 24, size: 16, elements: !128)
!128 = !{!129, !135}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !127, file: !115, line: 25, baseType: !130, size: 8)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !131, line: 17, baseType: !132)
!131 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !133, line: 21, baseType: !134)
!133 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!134 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !127, file: !115, line: 26, baseType: !130, size: 8, offset: 8)
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !119, file: !115, line: 28, baseType: !137, size: 32)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !119, file: !115, line: 28, size: 32, elements: !138)
!138 = !{!139, !143}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !137, file: !115, line: 29, baseType: !140, size: 16)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !131, line: 19, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !133, line: 24, baseType: !142)
!142 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !137, file: !115, line: 30, baseType: !140, size: 16, offset: 16)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !98, file: !99, line: 20, baseType: !145, size: 128, offset: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !91, line: 190, size: 128, elements: !146)
!146 = !{!147, !149}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !91, line: 191, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !145, file: !91, line: 191, baseType: !148, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !98, file: !99, line: 21, baseType: !151, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !99, line: 37, size: 256, elements: !156)
!156 = !{!157, !158, !159}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !155, file: !99, line: 38, baseType: !92, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !155, file: !99, line: 39, baseType: !145, size: 128, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !155, file: !99, line: 40, baseType: !160, size: 32, offset: 192)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !161, line: 19, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !160, file: !161, line: 20, baseType: !164, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !165, line: 113, baseType: !166)
!165 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !165, line: 111, size: 32, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !166, file: !165, line: 112, baseType: !122, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !98, file: !99, line: 22, baseType: !151, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "knode_parent", scope: !94, file: !95, line: 110, baseType: !155, size: 256, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "knode_driver", scope: !94, file: !95, line: 111, baseType: !155, size: 256, offset: 576)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !94, file: !95, line: 112, baseType: !155, size: 256, offset: 832)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "knode_class", scope: !94, file: !95, line: 113, baseType: !155, size: 256, offset: 1088)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe", scope: !94, file: !95, line: 114, baseType: !145, size: 128, offset: 1344)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "async_driver", scope: !94, file: !95, line: 115, baseType: !176, size: 64, offset: 1472)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !178)
!178 = !{!179, !183, !1216, !1565, !1566, !1567, !1568, !1572, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !20, line: 97, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !177, file: !20, line: 98, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !187, line: 80, size: 1344, elements: !188)
!187 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!188 = !{!189, !190, !191, !798, !799, !800, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1206, !1207, !1208, !1209, !1210, !1211, !1215}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !186, file: !187, line: 81, baseType: !180, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !186, file: !187, line: 82, baseType: !180, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !186, file: !187, line: 83, baseType: !192, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !196, line: 84, size: 320, elements: !197)
!196 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!197 = !{!198, !199, !769, !794, !796}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !195, file: !196, line: 85, baseType: !180, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !195, file: !196, line: 86, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !204, !280, !46}
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !91, line: 24, baseType: !142)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !79, line: 64, size: 512, elements: !206)
!206 = !{!207, !208, !209, !210, !257, !352, !763, !764, !765, !766, !767, !768}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !79, line: 65, baseType: !180, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !205, file: !79, line: 66, baseType: !145, size: 128, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !205, file: !79, line: 67, baseType: !204, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !205, file: !79, line: 68, baseType: !211, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !79, line: 168, size: 768, elements: !213)
!213 = !{!214, !215, !216, !217}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !212, file: !79, line: 169, baseType: !145, size: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !212, file: !79, line: 170, baseType: !102, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !212, file: !79, line: 171, baseType: !205, size: 512, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !212, file: !79, line: 172, baseType: !218, size: 64, offset: 704)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !79, line: 133, size: 192, elements: !221)
!221 = !{!222, !229, !234}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !220, file: !79, line: 134, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!46, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !220, file: !79, line: 135, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!180, !227}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !220, file: !79, line: 136, baseType: !235, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!46, !227, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !79, line: 125, size: 20736, elements: !241)
!241 = !{!242, !247, !251, !252, !256}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !240, file: !79, line: 126, baseType: !243, size: 192)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 192, elements: !245)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!245 = !{!246}
!246 = !DISubrange(count: 3)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !240, file: !79, line: 127, baseType: !248, size: 4096, offset: 192)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 4096, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !240, file: !79, line: 128, baseType: !46, size: 32, offset: 4288)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !240, file: !79, line: 129, baseType: !253, size: 16384, offset: 4320)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 16384, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 2048)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !240, file: !79, line: 130, baseType: !46, size: 32, offset: 20704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !205, file: !79, line: 69, baseType: !258, size: 64, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !79, line: 116, size: 384, elements: !261)
!261 = !{!262, !266, !293, !294, !329, !333}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !260, file: !79, line: 117, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !204}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !260, file: !79, line: 118, baseType: !267, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !196, line: 254, size: 128, elements: !270)
!270 = !{!271, !285}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !269, file: !196, line: 255, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !204, !280, !244}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !91, line: 66, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !277, line: 73, baseType: !278)
!277 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !277, line: 15, baseType: !279)
!279 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !196, line: 30, size: 128, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !281, file: !196, line: 31, baseType: !180, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !281, file: !196, line: 32, baseType: !203, size: 16, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !269, file: !196, line: 256, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!275, !204, !280, !180, !289}
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !91, line: 61, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !277, line: 72, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !277, line: 16, baseType: !292)
!292 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !260, file: !79, line: 119, baseType: !192, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !260, file: !79, line: 120, baseType: !295, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!298, !227}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !301)
!301 = !{!302, !303, !309, !313, !321, !325}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !300, file: !6, line: 40, baseType: !5, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !300, file: !6, line: 41, baseType: !304, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !91, line: 35, baseType: !308)
!308 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !300, file: !6, line: 42, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!92}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !300, file: !6, line: 43, baseType: !314, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!317, !319}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !300, file: !6, line: 44, baseType: !322, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!317}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !300, file: !6, line: 45, baseType: !326, size: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !92}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !260, file: !79, line: 121, baseType: !330, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!317, !227}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !260, file: !79, line: 122, baseType: !334, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !227, !337, !345}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !339, line: 23, baseType: !340)
!339 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 21, size: 32, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !340, file: !339, line: 22, baseType: !343, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !91, line: 37, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !277, line: 49, baseType: !7)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !339, line: 28, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 26, size: 32, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !347, file: !339, line: 27, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !91, line: 38, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !277, line: 50, baseType: !7)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !205, file: !79, line: 70, baseType: !353, size: 64, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !355, line: 190, size: 1152, elements: !356)
!355 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!356 = !{!357, !358, !359, !360, !361, !369, !370, !371, !755, !756, !757, !758, !759, !762}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !354, file: !355, line: 191, baseType: !122, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !354, file: !355, line: 192, baseType: !122, size: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !354, file: !355, line: 202, baseType: !353, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !354, file: !355, line: 203, baseType: !180, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !354, file: !355, line: 205, baseType: !362, size: 192, align: 64, offset: 192)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !363, line: 5, size: 192, align: 64, elements: !364)
!363 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!364 = !{!365, !366, !368}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !362, file: !363, line: 6, baseType: !292, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !362, file: !363, line: 7, baseType: !367, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !362, file: !363, line: 8, baseType: !367, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !354, file: !355, line: 207, baseType: !317, size: 64, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !354, file: !355, line: 208, baseType: !7, size: 32, offset: 448)
!371 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !355, line: 209, baseType: !372, size: 256, offset: 512)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !355, line: 209, size: 256, elements: !373)
!373 = !{!374, !386, !390}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !372, file: !355, line: 210, baseType: !375, size: 256)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !355, line: 153, size: 256, elements: !376)
!376 = !{!377, !378, !382, !385}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !375, file: !355, line: 154, baseType: !292, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !375, file: !355, line: 156, baseType: !379, size: 64, offset: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !363, line: 12, size: 64, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !379, file: !363, line: 13, baseType: !367, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !375, file: !355, line: 162, baseType: !383, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !355, line: 162, flags: DIFlagFwdDecl)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !375, file: !355, line: 167, baseType: !292, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !372, file: !355, line: 211, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !355, line: 170, size: 64, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !387, file: !355, line: 171, baseType: !353, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !372, file: !355, line: 212, baseType: !391, size: 256)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !355, line: 174, size: 256, elements: !392)
!392 = !{!393, !750, !753, !754}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !391, file: !355, line: 175, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !355, line: 271, size: 768, elements: !397)
!397 = !{!398, !449, !453, !457, !464, !468, !472, !476, !477, !478, !479, !487}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !396, file: !355, line: 276, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!46, !402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !355, line: 251, size: 1216, elements: !404)
!404 = !{!405, !406, !410, !414, !415, !437, !438, !439, !440, !441, !442, !443, !444}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !403, file: !355, line: 253, baseType: !353, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !403, file: !355, line: 254, baseType: !407, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !409, line: 537, flags: DIFlagFwdDecl)
!409 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!410 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !403, file: !355, line: 255, baseType: !411, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !413, line: 66, flags: DIFlagFwdDecl)
!413 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!414 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !403, file: !355, line: 256, baseType: !92, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !403, file: !355, line: 259, baseType: !416, size: 256, offset: 256)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !417, line: 66, size: 256, elements: !418)
!417 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!418 = !{!419, !429, !431, !436}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !416, file: !417, line: 67, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !421, line: 13, baseType: !422)
!421 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !91, line: 181, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 179, size: 64, elements: !424)
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !423, file: !91, line: 180, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !131, line: 22, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !133, line: 30, baseType: !428)
!428 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !416, file: !417, line: 68, baseType: !430, size: 32, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !111, line: 23, baseType: !110)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !416, file: !417, line: 70, baseType: !432, size: 32, offset: 96)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !433, line: 15, size: 32, elements: !434)
!433 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !432, file: !433, line: 20, baseType: !122, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !416, file: !417, line: 72, baseType: !145, size: 128, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !403, file: !355, line: 260, baseType: !416, size: 256, offset: 512)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !403, file: !355, line: 261, baseType: !46, size: 32, offset: 768)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !403, file: !355, line: 262, baseType: !145, size: 128, offset: 832)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !403, file: !355, line: 263, baseType: !244, size: 64, offset: 960)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !403, file: !355, line: 265, baseType: !289, size: 64, offset: 1024)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !403, file: !355, line: 266, baseType: !307, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !403, file: !355, line: 267, baseType: !307, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !403, file: !355, line: 268, baseType: !445, size: 64, offset: 1152)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !448, line: 694, flags: DIFlagFwdDecl)
!448 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!449 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !396, file: !355, line: 277, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !402}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !396, file: !355, line: 290, baseType: !454, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!46, !411, !92}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !396, file: !355, line: 292, baseType: !458, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!92, !411, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !91, line: 52, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !277, line: 88, baseType: !428)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !396, file: !355, line: 293, baseType: !465, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!92, !411, !92, !461}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !396, file: !355, line: 294, baseType: !469, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !411, !92}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !396, file: !355, line: 296, baseType: !473, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!275, !402, !244, !289, !462}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !396, file: !355, line: 306, baseType: !289, size: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !396, file: !355, line: 313, baseType: !307, size: 8, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !396, file: !355, line: 314, baseType: !473, size: 64, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !396, file: !355, line: 317, baseType: !480, size: 64, offset: 640)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !402, !485}
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !484, line: 59, baseType: !7)
!484 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !355, line: 31, flags: DIFlagFwdDecl)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !396, file: !355, line: 320, baseType: !488, size: 64, offset: 704)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!46, !402, !491}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !448, line: 625, size: 1344, elements: !493)
!493 = !{!494, !511, !711, !717, !724, !725, !730, !731, !736, !737, !740, !741, !742, !743, !744, !745, !748}
!494 = !DIDerivedType(tag: DW_TAG_member, scope: !492, file: !448, line: 628, baseType: !495, size: 128)
!495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !492, file: !448, line: 628, size: 128, elements: !496)
!496 = !{!497, !502}
!497 = !DIDerivedType(tag: DW_TAG_member, scope: !495, file: !448, line: 629, baseType: !498, size: 128)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !495, file: !448, line: 629, size: 128, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !498, file: !448, line: 631, baseType: !292, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !498, file: !448, line: 632, baseType: !292, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !495, file: !448, line: 635, baseType: !503, size: 128, align: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !91, line: 232, size: 128, align: 64, elements: !504)
!504 = !{!505, !507}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !91, line: 233, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !503, file: !91, line: 234, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !506}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !492, file: !448, line: 639, baseType: !512, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !448, line: 733, size: 10240, elements: !514)
!514 = !{!515, !707}
!515 = !DIDerivedType(tag: DW_TAG_member, scope: !513, file: !448, line: 734, baseType: !516, size: 10240)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !513, file: !448, line: 734, size: 10240, elements: !517)
!517 = !{!518, !522, !536, !540, !541, !542, !543, !544, !545, !553, !554, !555, !564, !565, !566, !567, !568, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !610, !624, !627, !673, !674, !675, !678, !681, !682, !685, !686, !687, !694, !695}
!518 = !DIDerivedType(tag: DW_TAG_member, scope: !516, file: !448, line: 739, baseType: !519, size: 512, align: 512)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !516, file: !448, line: 739, size: 512, align: 512, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !519, file: !448, line: 747, baseType: !122, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !516, file: !448, line: 750, baseType: !523, size: 128, offset: 512)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !524, line: 218, size: 128, elements: !525)
!524 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!525 = !{!526, !534, !535}
!526 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !524, line: 219, baseType: !527, size: 32)
!527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !523, file: !524, line: 219, size: 32, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !527, file: !524, line: 220, baseType: !102, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !527, file: !524, line: 221, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !524, line: 197, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !524, line: 197, elements: !533)
!533 = !{}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !523, file: !524, line: 223, baseType: !7, size: 32, offset: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !523, file: !524, line: 224, baseType: !92, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !516, file: !448, line: 752, baseType: !537, size: 64, offset: 640)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!292, !407, !292, !292, !292, !292}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !516, file: !448, line: 756, baseType: !292, size: 64, offset: 704)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !516, file: !448, line: 757, baseType: !292, size: 64, offset: 768)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !516, file: !448, line: 760, baseType: !292, size: 64, offset: 832)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !516, file: !448, line: 761, baseType: !292, size: 64, offset: 896)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !516, file: !448, line: 763, baseType: !292, size: 64, offset: 960)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !516, file: !448, line: 764, baseType: !546, size: 64, offset: 1024)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !409, line: 299, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 299, size: 64, elements: !549)
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !548, file: !409, line: 299, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !552, line: 18, baseType: !292)
!552 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!553 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !516, file: !448, line: 773, baseType: !122, size: 32, offset: 1088)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !516, file: !448, line: 785, baseType: !122, size: 32, offset: 1120)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !516, file: !448, line: 795, baseType: !556, size: 64, offset: 1152)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !448, line: 726, size: 128, elements: !558)
!558 = !{!559, !563}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !557, file: !448, line: 727, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !131, line: 23, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !133, line: 31, baseType: !562)
!562 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !557, file: !448, line: 728, baseType: !46, size: 32, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !516, file: !448, line: 801, baseType: !292, size: 64, offset: 1216)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !516, file: !448, line: 804, baseType: !420, size: 64, offset: 1280)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !516, file: !448, line: 806, baseType: !46, size: 32, offset: 1344)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !516, file: !448, line: 808, baseType: !102, size: 32, offset: 1376)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !516, file: !448, line: 823, baseType: !569, size: 320, offset: 1408)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !570, line: 48, size: 320, elements: !571)
!570 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!571 = !{!572, !573, !574, !575, !576}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !569, file: !570, line: 49, baseType: !420, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !569, file: !570, line: 55, baseType: !420, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !569, file: !570, line: 57, baseType: !432, size: 32, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !569, file: !570, line: 59, baseType: !430, size: 32, offset: 160)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !569, file: !570, line: 60, baseType: !145, size: 128, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !516, file: !448, line: 825, baseType: !145, size: 128, offset: 1728)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !516, file: !448, line: 845, baseType: !46, size: 32, offset: 1856)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !516, file: !448, line: 849, baseType: !292, size: 64, offset: 1920)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !516, file: !448, line: 850, baseType: !292, size: 64, offset: 1984)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !516, file: !448, line: 852, baseType: !292, size: 64, offset: 2048)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !516, file: !448, line: 853, baseType: !292, size: 64, offset: 2112)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !516, file: !448, line: 854, baseType: !422, size: 64, offset: 2176)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !516, file: !448, line: 855, baseType: !292, size: 64, offset: 2240)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !516, file: !448, line: 856, baseType: !292, size: 64, offset: 2304)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !516, file: !448, line: 857, baseType: !292, size: 64, offset: 2368)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !516, file: !448, line: 858, baseType: !292, size: 64, offset: 2432)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !516, file: !448, line: 865, baseType: !589, size: 32, offset: 2496)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !590, line: 69, baseType: !591)
!590 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !590, line: 64, size: 32, elements: !592)
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !591, file: !590, line: 65, baseType: !7, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !516, file: !448, line: 867, baseType: !102, size: 32, offset: 2528)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !516, file: !448, line: 869, baseType: !292, size: 64, offset: 2560)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !516, file: !448, line: 869, baseType: !292, size: 64, offset: 2624)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !516, file: !448, line: 869, baseType: !292, size: 64, offset: 2688)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !516, file: !448, line: 869, baseType: !292, size: 64, offset: 2752)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !516, file: !448, line: 870, baseType: !292, size: 64, offset: 2816)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !516, file: !448, line: 870, baseType: !292, size: 64, offset: 2880)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !516, file: !448, line: 870, baseType: !292, size: 64, offset: 2944)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !516, file: !448, line: 871, baseType: !292, size: 64, offset: 3008)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !516, file: !448, line: 871, baseType: !292, size: 64, offset: 3072)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !516, file: !448, line: 871, baseType: !292, size: 64, offset: 3136)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !516, file: !448, line: 871, baseType: !292, size: 64, offset: 3200)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !516, file: !448, line: 873, baseType: !607, size: 3328, offset: 3264)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 3328, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 52)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !516, file: !448, line: 875, baseType: !611, size: 1280, offset: 6592)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 1280, elements: !622)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !613, line: 22, size: 320, elements: !614)
!613 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!614 = !{!615, !616, !617, !618}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !612, file: !613, line: 23, baseType: !430, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !612, file: !613, line: 24, baseType: !426, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !612, file: !613, line: 26, baseType: !145, size: 128, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !612, file: !613, line: 28, baseType: !619, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !131, line: 20, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !133, line: 26, baseType: !46)
!622 = !{!623}
!623 = !DISubrange(count: 4)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !516, file: !448, line: 877, baseType: !625, size: 64, offset: 7872)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !448, line: 877, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !516, file: !448, line: 880, baseType: !628, size: 1088, offset: 7936)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !629, line: 72, baseType: !630)
!629 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !629, line: 23, size: 1088, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !639, !640, !641, !642, !667, !668, !669}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !630, file: !629, line: 28, baseType: !560, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !630, file: !629, line: 38, baseType: !422, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !630, file: !629, line: 40, baseType: !292, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !630, file: !629, line: 43, baseType: !569, size: 320, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !630, file: !629, line: 44, baseType: !637, size: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !629, line: 44, flags: DIFlagFwdDecl)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !629, line: 48, baseType: !292, size: 64, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !630, file: !629, line: 59, baseType: !416, size: 256, offset: 640)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !630, file: !629, line: 60, baseType: !92, size: 64, offset: 896)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !630, file: !629, line: 61, baseType: !643, size: 64, offset: 960)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !646, line: 13, size: 1216, elements: !647)
!646 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!647 = !{!648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !645, file: !646, line: 14, baseType: !92, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !645, file: !646, line: 15, baseType: !292, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !645, file: !646, line: 17, baseType: !292, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !645, file: !646, line: 17, baseType: !292, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !645, file: !646, line: 18, baseType: !292, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !645, file: !646, line: 18, baseType: !292, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !645, file: !646, line: 19, baseType: !317, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !645, file: !646, line: 21, baseType: !279, size: 64, offset: 448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !645, file: !646, line: 23, baseType: !279, size: 64, offset: 512)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !645, file: !646, line: 24, baseType: !279, size: 64, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !645, file: !646, line: 25, baseType: !279, size: 64, offset: 640)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !645, file: !646, line: 26, baseType: !279, size: 64, offset: 704)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !645, file: !646, line: 27, baseType: !279, size: 64, offset: 768)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !645, file: !646, line: 28, baseType: !279, size: 64, offset: 832)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !645, file: !646, line: 29, baseType: !279, size: 64, offset: 896)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !645, file: !646, line: 30, baseType: !279, size: 64, offset: 960)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !645, file: !646, line: 31, baseType: !279, size: 64, offset: 1024)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !645, file: !646, line: 32, baseType: !279, size: 64, offset: 1088)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !645, file: !646, line: 33, baseType: !279, size: 64, offset: 1152)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !630, file: !629, line: 63, baseType: !122, size: 32, offset: 1024)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !630, file: !629, line: 69, baseType: !140, size: 16, offset: 1056)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !630, file: !629, line: 70, baseType: !670, size: 16, offset: 1072)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !131, line: 18, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !133, line: 23, baseType: !672)
!672 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !516, file: !448, line: 882, baseType: !292, size: 64, offset: 9024)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !516, file: !448, line: 885, baseType: !102, size: 32, offset: 9088)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !516, file: !448, line: 886, baseType: !676, size: 64, offset: 9152)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !448, line: 732, flags: DIFlagFwdDecl)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !516, file: !448, line: 901, baseType: !679, size: 64, offset: 9216)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !448, line: 901, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !516, file: !448, line: 904, baseType: !407, size: 64, offset: 9280)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !516, file: !448, line: 906, baseType: !683, size: 64, offset: 9344)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !448, line: 906, flags: DIFlagFwdDecl)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !516, file: !448, line: 930, baseType: !122, size: 32, offset: 9408)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !516, file: !448, line: 933, baseType: !122, size: 32, offset: 9440)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !516, file: !448, line: 935, baseType: !688, size: 64, offset: 9472)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !689, line: 103, size: 64, elements: !690)
!689 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !688, file: !689, line: 104, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !689, line: 101, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !516, file: !448, line: 940, baseType: !420, size: 64, offset: 9536)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !516, file: !448, line: 942, baseType: !696, size: 256, offset: 9600)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !697, line: 98, size: 256, elements: !698)
!697 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!698 = !{!699, !700, !701}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !696, file: !697, line: 99, baseType: !420, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !696, file: !697, line: 100, baseType: !145, size: 128, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !696, file: !697, line: 101, baseType: !702, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !697, line: 21, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !706}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !513, file: !448, line: 986, baseType: !708, offset: 10240)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: -1)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !492, file: !448, line: 640, baseType: !712, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !409, line: 297, baseType: !713)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !409, line: 297, size: 64, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !713, file: !409, line: 297, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !552, line: 19, baseType: !292)
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !492, file: !448, line: 646, baseType: !718, size: 64, offset: 256)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !492, file: !448, line: 646, size: 64, elements: !719)
!719 = !{!720, !723}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !718, file: !448, line: 647, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !448, line: 542, baseType: !292)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !718, file: !448, line: 648, baseType: !722, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !492, file: !448, line: 666, baseType: !46, size: 32, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !492, file: !448, line: 667, baseType: !726, size: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !448, line: 579, size: 320, elements: !728)
!728 = !{!729}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !727, file: !448, line: 580, baseType: !569, size: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !492, file: !448, line: 670, baseType: !307, size: 8, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !492, file: !448, line: 681, baseType: !732, size: 256, offset: 512)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !492, file: !448, line: 678, size: 256, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !732, file: !448, line: 679, baseType: !362, size: 192, align: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !732, file: !448, line: 680, baseType: !292, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !492, file: !448, line: 689, baseType: !145, size: 128, offset: 768)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !492, file: !448, line: 691, baseType: !738, size: 64, offset: 896)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !448, line: 691, flags: DIFlagFwdDecl)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !492, file: !448, line: 694, baseType: !445, size: 64, offset: 960)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !492, file: !448, line: 697, baseType: !292, size: 64, offset: 1024)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !492, file: !448, line: 699, baseType: !407, size: 64, offset: 1088)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !492, file: !448, line: 700, baseType: !92, size: 64, offset: 1152)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !492, file: !448, line: 711, baseType: !420, size: 64, offset: 1216)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !492, file: !448, line: 717, baseType: !746, size: 64, offset: 1280)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !448, line: 717, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !492, file: !448, line: 722, baseType: !749, offset: 1344)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !448, line: 570, elements: !533)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !391, file: !355, line: 176, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !355, line: 35, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !391, file: !355, line: 177, baseType: !462, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !391, file: !355, line: 178, baseType: !353, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !354, file: !355, line: 215, baseType: !92, size: 64, offset: 768)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !354, file: !355, line: 221, baseType: !560, size: 64, offset: 832)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !355, line: 223, baseType: !142, size: 16, offset: 896)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !354, file: !355, line: 224, baseType: !203, size: 16, offset: 912)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !354, file: !355, line: 225, baseType: !760, size: 64, offset: 960)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !355, line: 36, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !354, file: !355, line: 227, baseType: !503, size: 128, align: 64, offset: 1024)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !205, file: !79, line: 71, baseType: !160, size: 32, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !205, file: !79, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !205, file: !79, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !205, file: !79, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !205, file: !79, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !205, file: !79, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !195, file: !196, line: 88, baseType: !770, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!203, !204, !773, !46}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !196, line: 175, size: 512, elements: !775)
!775 = !{!776, !777, !778, !779, !785, !789, !790}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !774, file: !196, line: 176, baseType: !281, size: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !774, file: !196, line: 177, baseType: !289, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !774, file: !196, line: 178, baseType: !92, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !774, file: !196, line: 179, baseType: !780, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !448, line: 32, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !774, file: !196, line: 180, baseType: !786, size: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!275, !407, !204, !773, !244, !462, !289}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !774, file: !196, line: 182, baseType: !786, size: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !774, file: !196, line: 184, baseType: !791, size: 64, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!46, !407, !204, !773, !491}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !195, file: !196, line: 90, baseType: !795, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !195, file: !196, line: 91, baseType: !797, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !186, file: !187, line: 84, baseType: !192, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !186, file: !187, line: 85, baseType: !192, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !186, file: !187, line: 87, baseType: !801, size: 64, offset: 320)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!46, !804, !176}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !806)
!806 = !{!807, !808, !809, !810, !811, !864, !865, !866, !867, !868, !869, !876, !1079, !1092, !1102, !1106, !1108, !1109, !1110, !1114, !1121, !1122, !1125, !1128, !1132, !1135, !1136, !1139, !1140, !1141, !1142, !1172, !1173, !1174, !1177, !1180, !1189, !1190, !1191, !1192, !1193, !1194}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !805, file: !26, line: 706, baseType: !205, size: 512)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !805, file: !26, line: 707, baseType: !804, size: 64, offset: 512)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !805, file: !26, line: 709, baseType: !93, size: 64, offset: 576)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !805, file: !26, line: 711, baseType: !180, size: 64, offset: 640)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !805, file: !26, line: 712, baseType: !812, size: 64, offset: 704)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !815)
!815 = !{!816, !817, !818, !824, !829, !833}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !814, file: !26, line: 90, baseType: !180, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !814, file: !26, line: 91, baseType: !192, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !814, file: !26, line: 92, baseType: !819, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!46, !822, !239}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !805)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !814, file: !26, line: 93, baseType: !825, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!244, !822, !828, !337, !345}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !814, file: !26, line: 95, baseType: !830, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !804}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !814, file: !26, line: 97, baseType: !834, size: 64, offset: 320)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !837)
!837 = !{!838, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !836, file: !38, line: 287, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!46, !804}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !836, file: !38, line: 288, baseType: !830, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !836, file: !38, line: 289, baseType: !839, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !836, file: !38, line: 290, baseType: !839, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !836, file: !38, line: 291, baseType: !839, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !836, file: !38, line: 292, baseType: !839, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !836, file: !38, line: 293, baseType: !839, size: 64, offset: 384)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !836, file: !38, line: 294, baseType: !839, size: 64, offset: 448)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !836, file: !38, line: 295, baseType: !839, size: 64, offset: 512)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !836, file: !38, line: 296, baseType: !839, size: 64, offset: 576)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !836, file: !38, line: 297, baseType: !839, size: 64, offset: 640)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !836, file: !38, line: 298, baseType: !839, size: 64, offset: 704)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !836, file: !38, line: 299, baseType: !839, size: 64, offset: 768)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !836, file: !38, line: 300, baseType: !839, size: 64, offset: 832)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !836, file: !38, line: 301, baseType: !839, size: 64, offset: 896)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !836, file: !38, line: 302, baseType: !839, size: 64, offset: 960)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !836, file: !38, line: 303, baseType: !839, size: 64, offset: 1024)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !836, file: !38, line: 304, baseType: !839, size: 64, offset: 1088)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !836, file: !38, line: 305, baseType: !839, size: 64, offset: 1152)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !836, file: !38, line: 306, baseType: !839, size: 64, offset: 1216)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !836, file: !38, line: 307, baseType: !839, size: 64, offset: 1280)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !836, file: !38, line: 308, baseType: !839, size: 64, offset: 1344)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !836, file: !38, line: 309, baseType: !839, size: 64, offset: 1408)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !805, file: !26, line: 714, baseType: !184, size: 64, offset: 768)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !805, file: !26, line: 715, baseType: !176, size: 64, offset: 832)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !805, file: !26, line: 717, baseType: !92, size: 64, offset: 896)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !805, file: !26, line: 719, baseType: !92, size: 64, offset: 960)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !805, file: !26, line: 721, baseType: !416, size: 256, offset: 1024)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !805, file: !26, line: 725, baseType: !870, size: 448, offset: 1280)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !871)
!871 = !{!872, !873, !874, !875}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !870, file: !26, line: 518, baseType: !145, size: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !870, file: !26, line: 519, baseType: !145, size: 128, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !870, file: !26, line: 520, baseType: !145, size: 128, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !870, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !805, file: !26, line: 726, baseType: !877, size: 2496, offset: 1728)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !878)
!878 = !{!879, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !897, !898, !899, !910, !956, !957, !958, !959, !960, !961, !1032, !1033, !1034, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1072, !1076}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !877, file: !38, line: 664, baseType: !880, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !881)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !881, file: !38, line: 59, baseType: !46, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !877, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !877, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !877, file: !38, line: 667, baseType: !307, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !877, file: !38, line: 668, baseType: !307, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !877, file: !38, line: 669, baseType: !307, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !877, file: !38, line: 670, baseType: !307, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !877, file: !38, line: 671, baseType: !307, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !877, file: !38, line: 672, baseType: !307, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !877, file: !38, line: 673, baseType: !307, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !877, file: !38, line: 674, baseType: !307, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !877, file: !38, line: 675, baseType: !895, size: 32, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !131, line: 21, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !133, line: 27, baseType: !7)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !877, file: !38, line: 676, baseType: !102, size: 32, offset: 96)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !877, file: !38, line: 678, baseType: !145, size: 128, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !877, file: !38, line: 679, baseType: !900, size: 256, offset: 256)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !901, line: 26, size: 256, elements: !902)
!901 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !900, file: !901, line: 27, baseType: !7, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !900, file: !901, line: 28, baseType: !905, size: 192, offset: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !906, line: 43, size: 192, elements: !907)
!906 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !905, file: !906, line: 44, baseType: !430, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !905, file: !906, line: 45, baseType: !145, size: 128, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !877, file: !38, line: 680, baseType: !911, size: 64, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !913, line: 43, size: 1536, elements: !914)
!913 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!914 = !{!915, !916, !917, !918, !919, !922, !940, !941, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !912, file: !913, line: 44, baseType: !180, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !912, file: !913, line: 45, baseType: !46, size: 32, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !912, file: !913, line: 46, baseType: !145, size: 128, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !912, file: !913, line: 47, baseType: !102, size: 32, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !912, file: !913, line: 48, baseType: !920, size: 64, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !912, file: !913, line: 49, baseType: !923, size: 320, offset: 384)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !924, line: 11, size: 320, elements: !925)
!924 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!925 = !{!926, !933, !934, !939}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !923, file: !924, line: 16, baseType: !927, size: 128)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !91, line: 198, size: 128, elements: !928)
!928 = !{!929, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !927, file: !91, line: 199, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !927, file: !91, line: 199, baseType: !932, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !923, file: !924, line: 17, baseType: !292, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !923, file: !924, line: 18, baseType: !935, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !938}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !923, file: !924, line: 19, baseType: !895, size: 32, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !912, file: !913, line: 50, baseType: !292, size: 64, offset: 704)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !912, file: !913, line: 51, baseType: !942, size: 64, offset: 768)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !943, line: 29, baseType: !426)
!943 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!944 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !912, file: !913, line: 52, baseType: !942, size: 64, offset: 832)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !912, file: !913, line: 53, baseType: !942, size: 64, offset: 896)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !912, file: !913, line: 54, baseType: !942, size: 64, offset: 960)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !912, file: !913, line: 55, baseType: !942, size: 64, offset: 1024)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !912, file: !913, line: 56, baseType: !292, size: 64, offset: 1088)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !912, file: !913, line: 57, baseType: !292, size: 64, offset: 1152)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !912, file: !913, line: 58, baseType: !292, size: 64, offset: 1216)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !912, file: !913, line: 59, baseType: !292, size: 64, offset: 1280)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !912, file: !913, line: 60, baseType: !292, size: 64, offset: 1344)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !912, file: !913, line: 61, baseType: !804, size: 64, offset: 1408)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !912, file: !913, line: 62, baseType: !307, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !912, file: !913, line: 63, baseType: !307, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !877, file: !38, line: 681, baseType: !307, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !877, file: !38, line: 682, baseType: !307, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !877, file: !38, line: 683, baseType: !307, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !877, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !877, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !877, file: !38, line: 690, baseType: !962, size: 512, offset: 640)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !963)
!963 = !{!964, !970, !971, !976, !1028, !1029, !1030, !1031}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !962, file: !33, line: 119, baseType: !965, size: 256)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !966, line: 9, size: 256, elements: !967)
!966 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !965, file: !966, line: 10, baseType: !362, size: 192, align: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !965, file: !966, line: 11, baseType: !942, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !962, file: !33, line: 120, baseType: !942, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !962, file: !33, line: 121, baseType: !972, size: 64, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!32, !975}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !962, file: !33, line: 122, baseType: !977, size: 64, offset: 384)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !979)
!979 = !{!980, !1005, !1006, !1009, !1014, !1015, !1023, !1027}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !978, file: !33, line: 160, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !983)
!983 = !{!984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !982, file: !33, line: 216, baseType: !430, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !982, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !982, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !982, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !982, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !982, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !982, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !982, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !982, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !982, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !982, file: !33, line: 227, baseType: !142, size: 16, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !982, file: !33, line: 228, baseType: !142, size: 16, offset: 208)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !982, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !982, file: !33, line: 235, baseType: !942, size: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !982, file: !33, line: 236, baseType: !975, size: 64, offset: 320)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !982, file: !33, line: 237, baseType: !942, size: 64, offset: 384)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !982, file: !33, line: 238, baseType: !975, size: 64, offset: 448)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !982, file: !33, line: 239, baseType: !1002, size: 4096, align: 512, offset: 512)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !978, size: 4096, align: 512, elements: !1003)
!1003 = !{!1004}
!1004 = !DISubrange(count: 8)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !978, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !978, file: !33, line: 162, baseType: !1007, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !91, line: 32, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !277, line: 96, baseType: !46)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !978, file: !33, line: 163, baseType: !1010, size: 32, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !590, line: 274, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !590, line: 274, size: 32, elements: !1012)
!1012 = !{!1013}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1011, file: !590, line: 274, baseType: !589, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !978, file: !33, line: 164, baseType: !975, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !978, file: !33, line: 165, baseType: !1016, size: 128, offset: 256)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !966, line: 14, size: 128, elements: !1017)
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1016, file: !966, line: 15, baseType: !1019, size: 128)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !363, line: 26, size: 128, elements: !1020)
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1019, file: !363, line: 27, baseType: !379, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1019, file: !363, line: 28, baseType: !367, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !978, file: !33, line: 166, baseType: !1024, size: 64, offset: 384)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!942}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !978, file: !33, line: 167, baseType: !942, size: 64, offset: 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !962, file: !33, line: 123, baseType: !130, size: 8, offset: 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !962, file: !33, line: 124, baseType: !130, size: 8, offset: 456)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !962, file: !33, line: 125, baseType: !130, size: 8, offset: 464)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !962, file: !33, line: 126, baseType: !130, size: 8, offset: 472)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !877, file: !38, line: 691, baseType: !560, size: 64, offset: 1152)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !877, file: !38, line: 692, baseType: !696, size: 256, offset: 1216)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !877, file: !38, line: 693, baseType: !1035, size: 192, offset: 1472)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1036, line: 41, baseType: !1037)
!1036 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1036, line: 37, size: 192, elements: !1038)
!1038 = !{!1039, !1040}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1037, file: !1036, line: 38, baseType: !102, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1037, file: !1036, line: 39, baseType: !145, size: 128, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !877, file: !38, line: 694, baseType: !920, size: 64, offset: 1664)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !877, file: !38, line: 695, baseType: !122, size: 32, offset: 1728)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !877, file: !38, line: 696, baseType: !122, size: 32, offset: 1760)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !877, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !877, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !877, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !877, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !877, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !877, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !877, file: !38, line: 703, baseType: !307, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !877, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !877, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !877, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !877, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !877, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !877, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !877, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !877, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !877, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !877, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !877, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !877, file: !38, line: 715, baseType: !560, size: 64, offset: 2048)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !877, file: !38, line: 716, baseType: !560, size: 64, offset: 2112)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !877, file: !38, line: 717, baseType: !560, size: 64, offset: 2176)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !877, file: !38, line: 718, baseType: !560, size: 64, offset: 2240)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !877, file: !38, line: 720, baseType: !1067, size: 64, offset: 2304)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1068, file: !38, line: 633, baseType: !102, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1068, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !877, file: !38, line: 721, baseType: !1073, size: 64, offset: 2368)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !804, !620}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !877, file: !38, line: 722, baseType: !1077, size: 64, offset: 2432)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !805, file: !26, line: 727, baseType: !1080, size: 64, offset: 4224)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1089, !1090, !1091}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1081, file: !38, line: 743, baseType: !836, size: 1472)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1081, file: !38, line: 744, baseType: !839, size: 64, offset: 1472)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1081, file: !38, line: 745, baseType: !1086, size: 64, offset: 1536)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !804, !307}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1081, file: !38, line: 746, baseType: !839, size: 64, offset: 1600)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1081, file: !38, line: 747, baseType: !830, size: 64, offset: 1664)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1081, file: !38, line: 748, baseType: !830, size: 64, offset: 1728)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !805, file: !26, line: 736, baseType: !1093, size: 128, offset: 4288)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1094)
!1094 = !{!1095, !1099}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1093, file: !26, line: 531, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1098, line: 13, flags: DIFlagFwdDecl)
!1098 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1093, file: !26, line: 532, baseType: !1100, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !805, file: !26, line: 738, baseType: !1103, size: 64, offset: 4416)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1105)
!1105 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !805, file: !26, line: 740, baseType: !1107, size: 64, offset: 4480)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !805, file: !26, line: 741, baseType: !560, size: 64, offset: 4544)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !805, file: !26, line: 746, baseType: !560, size: 64, offset: 4608)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !805, file: !26, line: 747, baseType: !1111, size: 64, offset: 4672)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1113)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !805, file: !26, line: 749, baseType: !1115, size: 64, offset: 4736)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1117)
!1117 = !{!1118, !1119, !1120}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1116, file: !26, line: 433, baseType: !7, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1116, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1116, file: !26, line: 435, baseType: !292, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !805, file: !26, line: 751, baseType: !145, size: 128, offset: 4800)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !805, file: !26, line: 762, baseType: !1123, size: 64, offset: 4928)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !805, file: !26, line: 770, baseType: !1126, offset: 4992)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1127, line: 5, elements: !533)
!1127 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !805, file: !26, line: 772, baseType: !1129, size: 64, offset: 4992)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1131, line: 18, flags: DIFlagFwdDecl)
!1131 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !805, file: !26, line: 773, baseType: !1133, size: 64, offset: 5056)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !187, line: 22, flags: DIFlagFwdDecl)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !805, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !805, file: !26, line: 778, baseType: !1137, size: 32, offset: 5152)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !91, line: 21, baseType: !1138)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !91, line: 18, baseType: !895)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !805, file: !26, line: 779, baseType: !895, size: 32, offset: 5184)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !805, file: !26, line: 781, baseType: !102, size: 32, offset: 5216)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !805, file: !26, line: 782, baseType: !145, size: 128, offset: 5248)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !805, file: !26, line: 784, baseType: !1143, size: 64, offset: 5376)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1145)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1146, line: 52, size: 768, elements: !1147)
!1146 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1147 = !{!1148, !1149, !1150, !1151, !1152, !1156, !1160, !1161, !1162, !1163, !1167, !1171}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1145, file: !1146, line: 53, baseType: !180, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1145, file: !1146, line: 55, baseType: !192, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1145, file: !1146, line: 56, baseType: !192, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1145, file: !1146, line: 58, baseType: !819, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1145, file: !1146, line: 59, baseType: !1153, size: 64, offset: 256)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!244, !822, !828}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1145, file: !1146, line: 61, baseType: !1157, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !1143}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1145, file: !1146, line: 62, baseType: !830, size: 64, offset: 384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1145, file: !1146, line: 64, baseType: !839, size: 64, offset: 448)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1145, file: !1146, line: 66, baseType: !298, size: 64, offset: 512)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1145, file: !1146, line: 67, baseType: !1164, size: 64, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!317, !822}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1145, file: !1146, line: 69, baseType: !1168, size: 64, offset: 640)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !822, !337, !345}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1145, file: !1146, line: 71, baseType: !834, size: 64, offset: 704)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !805, file: !26, line: 785, baseType: !192, size: 64, offset: 5440)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !805, file: !26, line: 787, baseType: !830, size: 64, offset: 5504)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !805, file: !26, line: 788, baseType: !1175, size: 64, offset: 5568)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !805, file: !26, line: 789, baseType: !1178, size: 64, offset: 5632)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !805, file: !26, line: 791, baseType: !1181, size: 64, offset: 5696)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187, !1188}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1182, file: !26, line: 598, baseType: !53, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1182, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1182, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1182, file: !26, line: 601, baseType: !307, size: 8, offset: 96)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1182, file: !26, line: 602, baseType: !307, size: 8, offset: 104)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !805, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !805, file: !26, line: 795, baseType: !307, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !805, file: !26, line: 796, baseType: !307, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !805, file: !26, line: 797, baseType: !307, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !805, file: !26, line: 798, baseType: !307, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !805, file: !26, line: 799, baseType: !307, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !186, file: !187, line: 88, baseType: !819, size: 64, offset: 384)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !186, file: !187, line: 89, baseType: !839, size: 64, offset: 448)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !186, file: !187, line: 90, baseType: !830, size: 64, offset: 512)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !186, file: !187, line: 91, baseType: !830, size: 64, offset: 576)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !186, file: !187, line: 92, baseType: !830, size: 64, offset: 640)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !186, file: !187, line: 94, baseType: !839, size: 64, offset: 704)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !186, file: !187, line: 95, baseType: !839, size: 64, offset: 768)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !186, file: !187, line: 97, baseType: !1203, size: 64, offset: 832)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!46, !804, !880}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !186, file: !187, line: 98, baseType: !839, size: 64, offset: 896)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !186, file: !187, line: 100, baseType: !839, size: 64, offset: 960)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !186, file: !187, line: 102, baseType: !839, size: 64, offset: 1024)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !186, file: !187, line: 103, baseType: !830, size: 64, offset: 1088)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !186, file: !187, line: 105, baseType: !834, size: 64, offset: 1152)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !186, file: !187, line: 107, baseType: !1212, size: 64, offset: 1216)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1214)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !187, line: 107, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !186, file: !187, line: 109, baseType: !307, size: 8, offset: 1280)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !177, file: !20, line: 100, baseType: !1217, size: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !1219)
!1219 = !{!1220, !1221, !1222, !1226, !1237, !1263, !1264, !1265, !1266, !1270, !1273, !1274, !1275, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1338, !1342, !1362, !1380, !1381, !1382, !1383, !1392, !1415, !1416, !1419, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1433, !1434, !1523, !1531, !1532, !1533, !1535, !1539, !1540, !1544, !1545, !1546, !1547, !1549, !1550, !1551, !1558, !1559, !1560, !1564}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1218, file: !13, line: 403, baseType: !12, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1218, file: !13, line: 406, baseType: !145, size: 128, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1218, file: !13, line: 409, baseType: !1223, size: 448, offset: 192)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 448, elements: !1224)
!1224 = !{!1225}
!1225 = !DISubrange(count: 56)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1218, file: !13, line: 417, baseType: !1227, size: 768, offset: 640)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232, !1235}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1227, file: !13, line: 46, baseType: !205, size: 512)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1227, file: !13, line: 47, baseType: !1217, size: 64, offset: 512)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1227, file: !13, line: 48, baseType: !204, size: 64, offset: 576)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1227, file: !13, line: 49, baseType: !1233, size: 64, offset: 640)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1227, file: !13, line: 50, baseType: !1236, size: 64, offset: 704)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1218, file: !13, line: 418, baseType: !1238, size: 64, offset: 1408)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !1240)
!1240 = !{!1241, !1242, !1247, !1251, !1255, !1259}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1239, file: !13, line: 54, baseType: !281, size: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1239, file: !13, line: 55, baseType: !1243, size: 64, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!275, !1238, !1246, !244}
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1239, file: !13, line: 57, baseType: !1248, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!275, !1238, !1246, !180, !289}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1239, file: !13, line: 59, baseType: !1252, size: 64, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{null, !1217, !180}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1239, file: !13, line: 60, baseType: !1256, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!46, !1217}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1239, file: !13, line: 61, baseType: !1260, size: 64, offset: 384)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !1217}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1218, file: !13, line: 419, baseType: !180, size: 64, offset: 1472)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1218, file: !13, line: 420, baseType: !180, size: 64, offset: 1536)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1218, file: !13, line: 421, baseType: !204, size: 64, offset: 1600)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1218, file: !13, line: 424, baseType: !1267, size: 64, offset: 1664)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1269)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1218, file: !13, line: 425, baseType: !1271, size: 64, offset: 1728)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1218, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1218, file: !13, line: 435, baseType: !416, size: 256, offset: 1856)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1218, file: !13, line: 437, baseType: !1276, size: 64, offset: 2112)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1278, line: 69, size: 320, elements: !1279)
!1278 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1279 = !{!1280, !1281, !1282, !1299, !1301, !1305, !1306}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1277, file: !1278, line: 70, baseType: !180, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1277, file: !1278, line: 71, baseType: !1217, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1277, file: !1278, line: 72, baseType: !1283, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1285)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1278, line: 47, size: 256, elements: !1286)
!1286 = !{!1287, !1288, !1294, !1298}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1285, file: !1278, line: 49, baseType: !7, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1285, file: !1278, line: 51, baseType: !1289, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!46, !180, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1277)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1285, file: !1278, line: 53, baseType: !1295, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!46, !244, !1292}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1285, file: !1278, line: 55, baseType: !326, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1277, file: !1278, line: 73, baseType: !1300, size: 16, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1277, file: !1278, line: 74, baseType: !1302, size: 8, offset: 208)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !131, line: 16, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !133, line: 20, baseType: !1304)
!1304 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1277, file: !1278, line: 75, baseType: !130, size: 8, offset: 216)
!1306 = !DIDerivedType(tag: DW_TAG_member, scope: !1277, file: !1278, line: 76, baseType: !1307, size: 64, offset: 256)
!1307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1277, file: !1278, line: 76, size: 64, elements: !1308)
!1308 = !{!1309, !1310, !1317}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1307, file: !1278, line: 77, baseType: !92, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1307, file: !1278, line: 78, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1313)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1278, line: 86, size: 128, elements: !1314)
!1314 = !{!1315, !1316}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1313, file: !1278, line: 87, baseType: !7, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1313, file: !1278, line: 88, baseType: !244, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1307, file: !1278, line: 79, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1320)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1278, line: 92, size: 256, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1326, !1327}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1320, file: !1278, line: 94, baseType: !7, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1320, file: !1278, line: 95, baseType: !7, size: 32, offset: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1320, file: !1278, line: 96, baseType: !1325, size: 64, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1320, file: !1278, line: 97, baseType: !1283, size: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1320, file: !1278, line: 98, baseType: !92, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1218, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1218, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1218, file: !13, line: 442, baseType: !1267, size: 64, offset: 2240)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1218, file: !13, line: 443, baseType: !1271, size: 64, offset: 2304)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1218, file: !13, line: 444, baseType: !307, size: 8, offset: 2368)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1218, file: !13, line: 451, baseType: !307, size: 8, offset: 2376)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1218, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1218, file: !13, line: 455, baseType: !1336, size: 64, offset: 2432)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1218, file: !13, line: 458, baseType: !1339, size: 64, offset: 2496)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!46}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1218, file: !13, line: 460, baseType: !1343, size: 4032, align: 512, offset: 2560)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1344, size: 4032, elements: !1360)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1345)
!1345 = !{!1346, !1347, !1348}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1344, file: !13, line: 363, baseType: !92, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1344, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1344, file: !13, line: 367, baseType: !1349, size: 448, offset: 128)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1350)
!1350 = !{!1351, !1352}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1349, file: !13, line: 320, baseType: !1217, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1349, file: !13, line: 321, baseType: !1353, size: 384, offset: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1354, line: 40, size: 384, elements: !1355)
!1354 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1355 = !{!1356}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1353, file: !1354, line: 41, baseType: !1357, size: 384, align: 64)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 384, align: 64, elements: !1358)
!1358 = !{!1359}
!1359 = !DISubrange(count: 2)
!1360 = !{!1361}
!1361 = !DISubrange(count: 7)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1218, file: !13, line: 463, baseType: !1363, size: 192, offset: 6592)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1364, line: 8, size: 192, elements: !1365)
!1364 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1365 = !{!1366, !1367, !1369}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1363, file: !1364, line: 10, baseType: !7, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1363, file: !1364, line: 11, baseType: !1368, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1363, file: !1364, line: 12, baseType: !1370, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1372, line: 59, size: 48, elements: !1373)
!1372 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1371, file: !1372, line: 60, baseType: !670, size: 16)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1371, file: !1372, line: 61, baseType: !670, size: 16, offset: 16)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1371, file: !1372, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1371, file: !1372, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1371, file: !1372, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1371, file: !1372, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1218, file: !13, line: 465, baseType: !292, size: 64, offset: 6784)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1218, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1218, file: !13, line: 470, baseType: !145, size: 128, offset: 6912)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1218, file: !13, line: 471, baseType: !1384, size: 64, offset: 7040)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1386, line: 33, size: 96, elements: !1387)
!1386 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1387 = !{!1388, !1389, !1390, !1391}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1385, file: !1386, line: 37, baseType: !46, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1385, file: !1386, line: 43, baseType: !46, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1385, file: !1386, line: 45, baseType: !142, size: 16, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1385, file: !1386, line: 47, baseType: !142, size: 16, offset: 80)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1218, file: !13, line: 476, baseType: !1393, size: 64, offset: 7104)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1395)
!1395 = !{!1396, !1412, !1413, !1414}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1394, file: !13, line: 379, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1399, line: 204, baseType: !1400)
!1399 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1399, line: 197, size: 192, elements: !1401)
!1401 = !{!1402, !1404, !1405, !1406, !1408, !1410}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1400, file: !1399, line: 198, baseType: !1403, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1399, line: 21, baseType: !896)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1400, file: !1399, line: 199, baseType: !134, size: 8, offset: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1400, file: !1399, line: 200, baseType: !134, size: 8, offset: 40)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1400, file: !1399, line: 201, baseType: !1407, size: 16, offset: 48)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1399, line: 17, baseType: !141)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1400, file: !1399, line: 202, baseType: !1409, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1399, line: 16, baseType: !561)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1400, file: !1399, line: 203, baseType: !1411, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1399, line: 22, baseType: !561)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1394, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1394, file: !13, line: 381, baseType: !244, size: 64, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1394, file: !13, line: 382, baseType: !244, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1218, file: !13, line: 477, baseType: !1394, size: 256, offset: 7168)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1218, file: !13, line: 480, baseType: !1417, size: 64, offset: 7424)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1218, file: !13, line: 483, baseType: !1420, size: 64, offset: 7488)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1218, file: !13, line: 488, baseType: !244, size: 64, offset: 7552)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1218, file: !13, line: 492, baseType: !92, size: 64, offset: 7616)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1218, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1218, file: !13, line: 495, baseType: !92, size: 64, offset: 7744)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1218, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1218, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1218, file: !13, line: 500, baseType: !1429, size: 64, offset: 7872)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1431, line: 45, baseType: !1432)
!1431 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1218, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1218, file: !13, line: 504, baseType: !1435, size: 64, offset: 8000)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1438, line: 96, size: 192, elements: !1439)
!1438 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1439 = !{!1440, !1441, !1484, !1487}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1437, file: !1438, line: 97, baseType: !7, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1437, file: !1438, line: 98, baseType: !1442, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1438, line: 24, size: 3072, elements: !1444)
!1444 = !{!1445, !1447, !1448, !1449, !1450, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1481, !1482, !1483}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1443, file: !1438, line: 26, baseType: !1446, size: 128)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 128, elements: !1358)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1443, file: !1438, line: 27, baseType: !1446, size: 128, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1443, file: !1438, line: 28, baseType: !46, size: 32, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1443, file: !1438, line: 31, baseType: !102, size: 32, align: 512, offset: 512)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1443, file: !1438, line: 32, baseType: !1451, size: 960, offset: 576)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1452, line: 206, size: 960, elements: !1453)
!1452 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1453 = !{!1454, !1455, !1458, !1460, !1461, !1463}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1451, file: !1452, line: 207, baseType: !506, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1451, file: !1452, line: 208, baseType: !1456, size: 256, offset: 64)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1457, size: 256, elements: !622)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1451, file: !1452, line: 209, baseType: !1459, size: 256, offset: 320)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 256, elements: !622)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1451, file: !1452, line: 213, baseType: !279, size: 64, offset: 576)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1451, file: !1452, line: 215, baseType: !1462, size: 256, offset: 640)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 256, elements: !622)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1451, file: !1452, line: 216, baseType: !130, size: 8, offset: 896)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1443, file: !1438, line: 33, baseType: !292, size: 64, offset: 1536)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1443, file: !1438, line: 34, baseType: !292, size: 64, offset: 1600)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1443, file: !1438, line: 35, baseType: !307, size: 8, offset: 1664)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1443, file: !1438, line: 36, baseType: !923, size: 320, offset: 1728)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1443, file: !1438, line: 37, baseType: !696, size: 256, offset: 2048)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1443, file: !1438, line: 38, baseType: !503, size: 128, align: 64, offset: 2304)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1443, file: !1438, line: 39, baseType: !1471, size: 64, offset: 2432)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1438, line: 49, size: 768, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1478, !1479, !1480}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1472, file: !1438, line: 50, baseType: !102, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1472, file: !1438, line: 51, baseType: !1459, size: 256, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1472, file: !1438, line: 53, baseType: !1459, size: 256, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1472, file: !1438, line: 54, baseType: !292, size: 64, offset: 576)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1472, file: !1438, line: 55, baseType: !1471, size: 64, offset: 640)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1472, file: !1438, line: 56, baseType: !46, size: 32, offset: 704)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1472, file: !1438, line: 57, baseType: !46, size: 32, offset: 736)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1443, file: !1438, line: 40, baseType: !292, size: 64, offset: 2496)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1443, file: !1438, line: 42, baseType: !46, size: 32, offset: 2560)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1443, file: !1438, line: 43, baseType: !1436, size: 64, offset: 2624)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1437, file: !1438, line: 99, baseType: !1485, offset: 128)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1486, line: 211, elements: !533)
!1486 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1437, file: !1438, line: 100, baseType: !1488, size: 64, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1438, line: 63, size: 3008, elements: !1490)
!1490 = !{!1491, !1492, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1522}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1489, file: !1438, line: 64, baseType: !1471, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1489, file: !1438, line: 65, baseType: !1493, size: 192, offset: 64)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1471, size: 192, elements: !245)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1489, file: !1438, line: 67, baseType: !46, size: 32, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1489, file: !1438, line: 68, baseType: !416, size: 256, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1489, file: !1438, line: 69, baseType: !102, size: 32, offset: 576)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1489, file: !1438, line: 70, baseType: !416, size: 256, offset: 640)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1489, file: !1438, line: 71, baseType: !292, size: 64, offset: 896)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1489, file: !1438, line: 72, baseType: !292, size: 64, offset: 960)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1489, file: !1438, line: 73, baseType: !292, size: 64, offset: 1024)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1489, file: !1438, line: 74, baseType: !292, size: 64, offset: 1088)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1489, file: !1438, line: 75, baseType: !292, size: 64, offset: 1152)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1489, file: !1438, line: 76, baseType: !292, size: 64, offset: 1216)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1489, file: !1438, line: 77, baseType: !292, size: 64, offset: 1280)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1489, file: !1438, line: 78, baseType: !292, size: 64, offset: 1344)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1489, file: !1438, line: 79, baseType: !307, size: 8, offset: 1408)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1489, file: !1438, line: 80, baseType: !292, size: 64, offset: 1472)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1489, file: !1438, line: 81, baseType: !416, size: 256, offset: 1536)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1489, file: !1438, line: 82, baseType: !900, size: 256, offset: 1792)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1489, file: !1438, line: 84, baseType: !122, size: 32, offset: 2048)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1489, file: !1438, line: 87, baseType: !292, size: 64, offset: 2112)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1489, file: !1438, line: 88, baseType: !292, size: 64, offset: 2176)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1489, file: !1438, line: 89, baseType: !1514, size: 704, offset: 2240)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !697, line: 111, size: 704, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1521}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1514, file: !697, line: 112, baseType: !696, size: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1514, file: !697, line: 113, baseType: !923, size: 320, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1514, file: !697, line: 116, baseType: !1519, size: 64, offset: 576)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !697, line: 18, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1514, file: !697, line: 117, baseType: !46, size: 32, offset: 640)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1489, file: !1438, line: 90, baseType: !1436, size: 64, offset: 2944)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1218, file: !13, line: 515, baseType: !1524, size: 64, offset: 8064)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1526, line: 117, size: 128, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1527 = !{!1528, !1529, !1530}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1525, file: !1526, line: 118, baseType: !620, size: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1525, file: !1526, line: 119, baseType: !620, size: 32, offset: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1525, file: !1526, line: 120, baseType: !279, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1218, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1218, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1218, file: !13, line: 520, baseType: !1534, size: 64, offset: 8192)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1218, file: !13, line: 523, baseType: !1536, size: 64, offset: 8256)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1218, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1218, file: !13, line: 525, baseType: !1541, size: 64, offset: 8384)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1218, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1218, file: !13, line: 533, baseType: !92, size: 64, offset: 8512)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1218, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1218, file: !13, line: 535, baseType: !1548, size: 64, offset: 8640)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1218, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1218, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1218, file: !13, line: 540, baseType: !1552, size: 64, offset: 8768)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1554, line: 32, size: 64, elements: !1555)
!1554 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1553, file: !1554, line: 33, baseType: !620, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1553, file: !1554, line: 34, baseType: !620, size: 32, offset: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1218, file: !13, line: 563, baseType: !145, size: 128, offset: 8832)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1218, file: !13, line: 565, baseType: !145, size: 128, offset: 8960)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1218, file: !13, line: 568, baseType: !1561, size: 64, offset: 9088)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{null}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1218, file: !13, line: 570, baseType: !122, size: 32, offset: 9152)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !177, file: !20, line: 101, baseType: !180, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !177, file: !20, line: 103, baseType: !307, size: 8, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !177, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !177, file: !20, line: 106, baseType: !1569, size: 64, offset: 320)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1571)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !177, file: !20, line: 107, baseType: !1573, size: 64, offset: 384)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1575)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !177, file: !20, line: 109, baseType: !839, size: 64, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !177, file: !20, line: 110, baseType: !830, size: 64, offset: 512)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !177, file: !20, line: 111, baseType: !839, size: 64, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !177, file: !20, line: 112, baseType: !830, size: 64, offset: 640)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !177, file: !20, line: 113, baseType: !1203, size: 64, offset: 704)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !177, file: !20, line: 114, baseType: !839, size: 64, offset: 768)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !177, file: !20, line: 115, baseType: !192, size: 64, offset: 832)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !177, file: !20, line: 116, baseType: !192, size: 64, offset: 896)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !177, file: !20, line: 118, baseType: !834, size: 64, offset: 960)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !177, file: !20, line: 119, baseType: !830, size: 64, offset: 1024)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !177, file: !20, line: 121, baseType: !1587, size: 64, offset: 1088)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !95, line: 78, size: 1216, elements: !1589)
!1589 = !{!1590, !1591, !1592, !1593, !1594}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1588, file: !95, line: 79, baseType: !205, size: 512)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !1588, file: !95, line: 80, baseType: !98, size: 320, align: 64, offset: 512)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !1588, file: !95, line: 81, baseType: !155, size: 256, offset: 832)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1588, file: !95, line: 82, baseType: !1246, size: 64, offset: 1088)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1588, file: !95, line: 83, baseType: !176, size: 64, offset: 1152)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe_reason", scope: !94, file: !95, line: 116, baseType: !244, size: 64, offset: 1536)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !94, file: !95, line: 117, baseType: !804, size: 64, offset: 1600)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !94, file: !95, line: 118, baseType: !130, size: 1, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1598 = !{!0, !1599, !1601, !1603, !1605, !1607, !1612, !1617, !1622, !1624, !1629, !1634}
!1599 = !DIGlobalVariableExpression(var: !1600, expr: !DIExpression())
!1600 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_driver_for_each_device206", scope: !2, file: !3, line: 134, type: !92, isLocal: true, isDefinition: true)
!1601 = !DIGlobalVariableExpression(var: !1602, expr: !DIExpression())
!1602 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_driver_find_device207", scope: !2, file: !3, line: 169, type: !92, isLocal: true, isDefinition: true)
!1603 = !DIGlobalVariableExpression(var: !1604, expr: !DIExpression())
!1604 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_driver_create_file208", scope: !2, file: !3, line: 187, type: !92, isLocal: true, isDefinition: true)
!1605 = !DIGlobalVariableExpression(var: !1606, expr: !DIExpression())
!1606 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_driver_remove_file209", scope: !2, file: !3, line: 200, type: !92, isLocal: true, isDefinition: true)
!1607 = !DIGlobalVariableExpression(var: !1608, expr: !DIExpression())
!1608 = distinct !DIGlobalVariable(scope: null, file: !3, line: 228, type: !1609, isLocal: true, isDefinition: true)
!1609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 752, elements: !1610)
!1610 = !{!1611}
!1611 = !DISubrange(count: 94)
!1612 = !DIGlobalVariableExpression(var: !1613, expr: !DIExpression())
!1613 = distinct !DIGlobalVariable(scope: null, file: !3, line: 236, type: !1614, isLocal: true, isDefinition: true)
!1614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 480, elements: !1615)
!1615 = !{!1616}
!1616 = !DISubrange(count: 60)
!1617 = !DIGlobalVariableExpression(var: !1618, expr: !DIExpression())
!1618 = distinct !DIGlobalVariable(scope: null, file: !3, line: 241, type: !1619, isLocal: true, isDefinition: true)
!1619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 456, elements: !1620)
!1620 = !{!1621}
!1621 = !DISubrange(count: 57)
!1622 = !DIGlobalVariableExpression(var: !1623, expr: !DIExpression())
!1623 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_driver_register210", scope: !2, file: !3, line: 259, type: !92, isLocal: true, isDefinition: true)
!1624 = !DIGlobalVariableExpression(var: !1625, expr: !DIExpression())
!1625 = distinct !DIGlobalVariable(scope: null, file: !3, line: 270, type: !1626, isLocal: true, isDefinition: true)
!1626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 248, elements: !1627)
!1627 = !{!1628}
!1628 = !DISubrange(count: 31)
!1629 = !DIGlobalVariableExpression(var: !1630, expr: !DIExpression())
!1630 = distinct !DIGlobalVariable(scope: null, file: !3, line: 270, type: !1631, isLocal: true, isDefinition: true)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 176, elements: !1632)
!1632 = !{!1633}
!1633 = !DISubrange(count: 22)
!1634 = !DIGlobalVariableExpression(var: !1635, expr: !DIExpression())
!1635 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_driver_unregister211", scope: !2, file: !3, line: 276, type: !92, isLocal: true, isDefinition: true)
!1636 = !{i32 7, !"Dwarf Version", i32 5}
!1637 = !{i32 2, !"Debug Info Version", i32 3}
!1638 = !{i32 1, !"wchar_size", i32 2}
!1639 = !{i32 8, !"cf-protection-branch", i32 1}
!1640 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1641 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1642 = !{i32 1, !"Code Model", i32 2}
!1643 = !{i32 1, !"override-stack-alignment", i32 8}
!1644 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1645 = distinct !DISubprogram(name: "driver_set_override", scope: !3, file: !3, line: 48, type: !1646, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1648)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!46, !804, !1534, !180, !289}
!1648 = !{!1649, !1650, !1651, !1652, !1653, !1654, !1655}
!1649 = !DILocalVariable(name: "dev", arg: 1, scope: !1645, file: !3, line: 48, type: !804)
!1650 = !DILocalVariable(name: "override", arg: 2, scope: !1645, file: !3, line: 48, type: !1534)
!1651 = !DILocalVariable(name: "s", arg: 3, scope: !1645, file: !3, line: 49, type: !180)
!1652 = !DILocalVariable(name: "len", arg: 4, scope: !1645, file: !3, line: 49, type: !289)
!1653 = !DILocalVariable(name: "new", scope: !1645, file: !3, line: 51, type: !180)
!1654 = !DILocalVariable(name: "old", scope: !1645, file: !3, line: 51, type: !180)
!1655 = !DILocalVariable(name: "cp", scope: !1645, file: !3, line: 52, type: !244)
!1656 = !DILocation(line: 48, column: 40, scope: !1645)
!1657 = !DILocation(line: 48, column: 58, scope: !1645)
!1658 = !DILocation(line: 49, column: 16, scope: !1645)
!1659 = !DILocation(line: 49, column: 26, scope: !1645)
!1660 = !DILocation(line: 51, column: 2, scope: !1645)
!1661 = !DILocation(line: 51, column: 14, scope: !1645)
!1662 = !DILocation(line: 51, column: 20, scope: !1645)
!1663 = !DILocation(line: 52, column: 2, scope: !1645)
!1664 = !DILocation(line: 52, column: 8, scope: !1645)
!1665 = !DILocation(line: 54, column: 7, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 54, column: 6)
!1667 = !DILocation(line: 54, column: 16, scope: !1666)
!1668 = !DILocation(line: 54, column: 20, scope: !1666)
!1669 = !DILocation(line: 54, column: 6, scope: !1645)
!1670 = !DILocation(line: 55, column: 3, scope: !1666)
!1671 = !DILocation(line: 63, column: 6, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 63, column: 6)
!1673 = !DILocation(line: 63, column: 10, scope: !1672)
!1674 = !DILocation(line: 63, column: 6, scope: !1645)
!1675 = !DILocation(line: 64, column: 3, scope: !1672)
!1676 = !DILocation(line: 70, column: 15, scope: !1645)
!1677 = !DILocation(line: 70, column: 8, scope: !1645)
!1678 = !DILocation(line: 70, column: 6, scope: !1645)
!1679 = !DILocation(line: 72, column: 7, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 72, column: 6)
!1681 = !DILocation(line: 72, column: 6, scope: !1645)
!1682 = !DILocation(line: 74, column: 15, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 72, column: 12)
!1684 = !DILocation(line: 74, column: 3, scope: !1683)
!1685 = !DILocation(line: 75, column: 10, scope: !1683)
!1686 = !DILocation(line: 75, column: 9, scope: !1683)
!1687 = !DILocation(line: 75, column: 7, scope: !1683)
!1688 = !DILocation(line: 76, column: 4, scope: !1683)
!1689 = !DILocation(line: 76, column: 13, scope: !1683)
!1690 = !DILocation(line: 77, column: 17, scope: !1683)
!1691 = !DILocation(line: 77, column: 3, scope: !1683)
!1692 = !DILocation(line: 78, column: 9, scope: !1683)
!1693 = !DILocation(line: 78, column: 3, scope: !1683)
!1694 = !DILocation(line: 80, column: 3, scope: !1683)
!1695 = !DILocation(line: 83, column: 15, scope: !1645)
!1696 = !DILocation(line: 83, column: 18, scope: !1645)
!1697 = !DILocation(line: 83, column: 7, scope: !1645)
!1698 = !DILocation(line: 83, column: 5, scope: !1645)
!1699 = !DILocation(line: 84, column: 6, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 84, column: 6)
!1701 = !DILocation(line: 84, column: 6, scope: !1645)
!1702 = !DILocation(line: 85, column: 9, scope: !1700)
!1703 = !DILocation(line: 85, column: 14, scope: !1700)
!1704 = !DILocation(line: 85, column: 12, scope: !1700)
!1705 = !DILocation(line: 85, column: 7, scope: !1700)
!1706 = !DILocation(line: 85, column: 3, scope: !1700)
!1707 = !DILocation(line: 87, column: 17, scope: !1645)
!1708 = !DILocation(line: 87, column: 20, scope: !1645)
!1709 = !DILocation(line: 87, column: 8, scope: !1645)
!1710 = !DILocation(line: 87, column: 6, scope: !1645)
!1711 = !DILocation(line: 88, column: 7, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 88, column: 6)
!1713 = !DILocation(line: 88, column: 6, scope: !1645)
!1714 = !DILocation(line: 89, column: 3, scope: !1712)
!1715 = !DILocation(line: 91, column: 14, scope: !1645)
!1716 = !DILocation(line: 91, column: 2, scope: !1645)
!1717 = !DILocation(line: 92, column: 9, scope: !1645)
!1718 = !DILocation(line: 92, column: 8, scope: !1645)
!1719 = !DILocation(line: 92, column: 6, scope: !1645)
!1720 = !DILocation(line: 93, column: 6, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 93, column: 6)
!1722 = !DILocation(line: 93, column: 12, scope: !1721)
!1723 = !DILocation(line: 93, column: 9, scope: !1721)
!1724 = !DILocation(line: 93, column: 6, scope: !1645)
!1725 = !DILocation(line: 94, column: 15, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 93, column: 15)
!1727 = !DILocation(line: 94, column: 4, scope: !1726)
!1728 = !DILocation(line: 94, column: 13, scope: !1726)
!1729 = !DILocation(line: 95, column: 2, scope: !1726)
!1730 = !DILocation(line: 97, column: 9, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 95, column: 9)
!1732 = !DILocation(line: 97, column: 3, scope: !1731)
!1733 = !DILocation(line: 98, column: 4, scope: !1731)
!1734 = !DILocation(line: 98, column: 13, scope: !1731)
!1735 = !DILocation(line: 100, column: 16, scope: !1645)
!1736 = !DILocation(line: 100, column: 2, scope: !1645)
!1737 = !DILocation(line: 102, column: 8, scope: !1645)
!1738 = !DILocation(line: 102, column: 2, scope: !1645)
!1739 = !DILocation(line: 104, column: 2, scope: !1645)
!1740 = !DILocation(line: 105, column: 1, scope: !1645)
!1741 = !DISubprogram(name: "strlen", scope: !1742, file: !1742, line: 128, type: !1743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1742 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!292, !180}
!1745 = distinct !DISubprogram(name: "device_lock", scope: !26, file: !26, line: 990, type: !831, scopeLine: 991, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1746)
!1746 = !{!1747}
!1747 = !DILocalVariable(name: "dev", arg: 1, scope: !1745, file: !26, line: 990, type: !804)
!1748 = !DILocation(line: 990, column: 47, scope: !1745)
!1749 = !DILocation(line: 992, column: 14, scope: !1745)
!1750 = !DILocation(line: 992, column: 19, scope: !1745)
!1751 = !DILocation(line: 992, column: 2, scope: !1745)
!1752 = !DILocation(line: 993, column: 1, scope: !1745)
!1753 = distinct !DISubprogram(name: "device_unlock", scope: !26, file: !26, line: 1005, type: !831, scopeLine: 1006, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1754)
!1754 = !{!1755}
!1755 = !DILocalVariable(name: "dev", arg: 1, scope: !1753, file: !26, line: 1005, type: !804)
!1756 = !DILocation(line: 1005, column: 49, scope: !1753)
!1757 = !DILocation(line: 1007, column: 16, scope: !1753)
!1758 = !DILocation(line: 1007, column: 21, scope: !1753)
!1759 = !DILocation(line: 1007, column: 2, scope: !1753)
!1760 = !DILocation(line: 1008, column: 1, scope: !1753)
!1761 = !DISubprogram(name: "kfree", scope: !1762, file: !1762, line: 227, type: !1763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1762 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1763 = !DISubroutineType(types: !1764)
!1764 = !{null, !317}
!1765 = !DISubprogram(name: "strnchr", scope: !1742, file: !1742, line: 107, type: !1766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!244, !180, !289, !46}
!1768 = !DISubprogram(name: "kstrndup", scope: !1742, file: !1742, line: 218, type: !1769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!244, !180, !289, !90}
!1771 = distinct !DISubprogram(name: "driver_for_each_device", scope: !3, file: !3, line: 117, type: !1772, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1777)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!46, !176, !804, !92, !1774}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!46, !804, !92}
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1788, !1789}
!1778 = !DILocalVariable(name: "drv", arg: 1, scope: !1771, file: !3, line: 117, type: !176)
!1779 = !DILocalVariable(name: "start", arg: 2, scope: !1771, file: !3, line: 117, type: !804)
!1780 = !DILocalVariable(name: "data", arg: 3, scope: !1771, file: !3, line: 118, type: !92)
!1781 = !DILocalVariable(name: "fn", arg: 4, scope: !1771, file: !3, line: 118, type: !1774)
!1782 = !DILocalVariable(name: "i", scope: !1771, file: !3, line: 120, type: !1783)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_iter", file: !99, line: 54, size: 128, elements: !1784)
!1784 = !{!1785, !1787}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "i_klist", scope: !1783, file: !99, line: 55, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "i_cur", scope: !1783, file: !99, line: 56, baseType: !154, size: 64, offset: 64)
!1788 = !DILocalVariable(name: "dev", scope: !1771, file: !3, line: 121, type: !804)
!1789 = !DILocalVariable(name: "error", scope: !1771, file: !3, line: 122, type: !46)
!1790 = !DILocation(line: 117, column: 50, scope: !1771)
!1791 = !DILocation(line: 117, column: 70, scope: !1771)
!1792 = !DILocation(line: 118, column: 13, scope: !1771)
!1793 = !DILocation(line: 118, column: 25, scope: !1771)
!1794 = !DILocation(line: 120, column: 2, scope: !1771)
!1795 = !DILocation(line: 120, column: 20, scope: !1771)
!1796 = !DILocation(line: 121, column: 2, scope: !1771)
!1797 = !DILocation(line: 121, column: 17, scope: !1771)
!1798 = !DILocation(line: 122, column: 2, scope: !1771)
!1799 = !DILocation(line: 122, column: 6, scope: !1771)
!1800 = !DILocation(line: 124, column: 7, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 124, column: 6)
!1802 = !DILocation(line: 124, column: 6, scope: !1771)
!1803 = !DILocation(line: 125, column: 3, scope: !1801)
!1804 = !DILocation(line: 127, column: 24, scope: !1771)
!1805 = !DILocation(line: 127, column: 29, scope: !1771)
!1806 = !DILocation(line: 127, column: 32, scope: !1771)
!1807 = !DILocation(line: 128, column: 9, scope: !1771)
!1808 = !DILocation(line: 128, column: 18, scope: !1771)
!1809 = !DILocation(line: 128, column: 25, scope: !1771)
!1810 = !DILocation(line: 128, column: 28, scope: !1771)
!1811 = !DILocation(line: 127, column: 2, scope: !1771)
!1812 = !DILocation(line: 129, column: 2, scope: !1771)
!1813 = !DILocation(line: 129, column: 10, scope: !1771)
!1814 = !DILocation(line: 129, column: 16, scope: !1771)
!1815 = !DILocation(line: 129, column: 26, scope: !1771)
!1816 = !DILocation(line: 129, column: 24, scope: !1771)
!1817 = !DILocation(line: 0, scope: !1771)
!1818 = !DILocation(line: 130, column: 11, scope: !1771)
!1819 = !DILocation(line: 130, column: 14, scope: !1771)
!1820 = !DILocation(line: 130, column: 19, scope: !1771)
!1821 = !DILocation(line: 130, column: 9, scope: !1771)
!1822 = distinct !{!1822, !1812, !1823, !1824, !1825}
!1823 = !DILocation(line: 130, column: 23, scope: !1771)
!1824 = !{!"llvm.loop.mustprogress"}
!1825 = !{!"llvm.loop.unroll.disable"}
!1826 = !DILocation(line: 131, column: 2, scope: !1771)
!1827 = !DILocation(line: 132, column: 9, scope: !1771)
!1828 = !DILocation(line: 132, column: 2, scope: !1771)
!1829 = !DILocation(line: 133, column: 1, scope: !1771)
!1830 = !DISubprogram(name: "klist_iter_init_node", scope: !99, file: !99, line: 61, type: !1831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !1786, !1833, !154}
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1834 = distinct !DISubprogram(name: "next_device", scope: !3, file: !3, line: 20, type: !1835, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1837)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!804, !1833}
!1837 = !{!1838, !1839, !1840, !1841, !1842}
!1838 = !DILocalVariable(name: "i", arg: 1, scope: !1834, file: !3, line: 20, type: !1833)
!1839 = !DILocalVariable(name: "n", scope: !1834, file: !3, line: 22, type: !154)
!1840 = !DILocalVariable(name: "dev", scope: !1834, file: !3, line: 23, type: !804)
!1841 = !DILocalVariable(name: "dev_prv", scope: !1834, file: !3, line: 24, type: !93)
!1842 = !DILocalVariable(name: "__mptr", scope: !1843, file: !3, line: 27, type: !92)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 27, column: 13)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 26, column: 9)
!1845 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 26, column: 6)
!1846 = !DILocation(line: 20, column: 54, scope: !1834)
!1847 = !DILocation(line: 22, column: 2, scope: !1834)
!1848 = !DILocation(line: 22, column: 21, scope: !1834)
!1849 = !DILocation(line: 22, column: 36, scope: !1834)
!1850 = !DILocation(line: 22, column: 25, scope: !1834)
!1851 = !DILocation(line: 23, column: 2, scope: !1834)
!1852 = !DILocation(line: 23, column: 17, scope: !1834)
!1853 = !DILocation(line: 24, column: 2, scope: !1834)
!1854 = !DILocation(line: 24, column: 25, scope: !1834)
!1855 = !DILocation(line: 26, column: 6, scope: !1845)
!1856 = !DILocation(line: 26, column: 6, scope: !1834)
!1857 = !DILocation(line: 27, column: 13, scope: !1843)
!1858 = !DILocation(line: 27, column: 13, scope: !1844)
!1859 = !DILocation(line: 27, column: 11, scope: !1844)
!1860 = !DILocation(line: 28, column: 9, scope: !1844)
!1861 = !DILocation(line: 28, column: 18, scope: !1844)
!1862 = !DILocation(line: 28, column: 7, scope: !1844)
!1863 = !DILocation(line: 29, column: 2, scope: !1844)
!1864 = !DILocation(line: 30, column: 9, scope: !1834)
!1865 = !DILocation(line: 31, column: 1, scope: !1834)
!1866 = !DILocation(line: 30, column: 2, scope: !1834)
!1867 = !DISubprogram(name: "klist_iter_exit", scope: !99, file: !99, line: 63, type: !1868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !1833}
!1870 = distinct !DISubprogram(name: "driver_find_device", scope: !3, file: !3, line: 151, type: !1871, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1876)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!804, !176, !804, !317, !1873}
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!46, !804, !317}
!1876 = !{!1877, !1878, !1879, !1880, !1881, !1882}
!1877 = !DILocalVariable(name: "drv", arg: 1, scope: !1870, file: !3, line: 151, type: !176)
!1878 = !DILocalVariable(name: "start", arg: 2, scope: !1870, file: !3, line: 152, type: !804)
!1879 = !DILocalVariable(name: "data", arg: 3, scope: !1870, file: !3, line: 152, type: !317)
!1880 = !DILocalVariable(name: "match", arg: 4, scope: !1870, file: !3, line: 153, type: !1873)
!1881 = !DILocalVariable(name: "i", scope: !1870, file: !3, line: 155, type: !1783)
!1882 = !DILocalVariable(name: "dev", scope: !1870, file: !3, line: 156, type: !804)
!1883 = !DILocation(line: 151, column: 57, scope: !1870)
!1884 = !DILocation(line: 152, column: 22, scope: !1870)
!1885 = !DILocation(line: 152, column: 41, scope: !1870)
!1886 = !DILocation(line: 153, column: 13, scope: !1870)
!1887 = !DILocation(line: 155, column: 2, scope: !1870)
!1888 = !DILocation(line: 155, column: 20, scope: !1870)
!1889 = !DILocation(line: 156, column: 2, scope: !1870)
!1890 = !DILocation(line: 156, column: 17, scope: !1870)
!1891 = !DILocation(line: 158, column: 7, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 158, column: 6)
!1893 = !DILocation(line: 158, column: 11, scope: !1892)
!1894 = !DILocation(line: 158, column: 15, scope: !1892)
!1895 = !DILocation(line: 158, column: 20, scope: !1892)
!1896 = !DILocation(line: 158, column: 6, scope: !1870)
!1897 = !DILocation(line: 159, column: 3, scope: !1892)
!1898 = !DILocation(line: 161, column: 24, scope: !1870)
!1899 = !DILocation(line: 161, column: 29, scope: !1870)
!1900 = !DILocation(line: 161, column: 32, scope: !1870)
!1901 = !DILocation(line: 162, column: 10, scope: !1870)
!1902 = !DILocation(line: 162, column: 19, scope: !1870)
!1903 = !DILocation(line: 162, column: 26, scope: !1870)
!1904 = !DILocation(line: 162, column: 29, scope: !1870)
!1905 = !DILocation(line: 161, column: 2, scope: !1870)
!1906 = !DILocation(line: 163, column: 2, scope: !1870)
!1907 = !DILocation(line: 163, column: 16, scope: !1870)
!1908 = !DILocation(line: 163, column: 14, scope: !1870)
!1909 = !DILocation(line: 164, column: 7, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 164, column: 7)
!1911 = !DILocation(line: 164, column: 13, scope: !1910)
!1912 = !DILocation(line: 164, column: 18, scope: !1910)
!1913 = !DILocation(line: 164, column: 24, scope: !1910)
!1914 = !DILocation(line: 164, column: 38, scope: !1910)
!1915 = !DILocation(line: 164, column: 27, scope: !1910)
!1916 = !DILocation(line: 164, column: 7, scope: !1870)
!1917 = !DILocation(line: 165, column: 4, scope: !1910)
!1918 = distinct !{!1918, !1906, !1919, !1824, !1825}
!1919 = !DILocation(line: 165, column: 4, scope: !1870)
!1920 = !DILocation(line: 166, column: 2, scope: !1870)
!1921 = !DILocation(line: 167, column: 9, scope: !1870)
!1922 = !DILocation(line: 167, column: 2, scope: !1870)
!1923 = !DILocation(line: 168, column: 1, scope: !1870)
!1924 = !DISubprogram(name: "get_device", scope: !26, file: !26, line: 1230, type: !1925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!804, !804}
!1927 = distinct !DISubprogram(name: "driver_create_file", scope: !3, file: !3, line: 176, type: !1928, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1943)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!46, !176, !1930}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1932)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_attribute", file: !20, line: 135, size: 256, elements: !1933)
!1933 = !{!1934, !1935, !1939}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1932, file: !20, line: 136, baseType: !281, size: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1932, file: !20, line: 137, baseType: !1936, size: 64, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!275, !176, !244}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1932, file: !20, line: 138, baseType: !1940, size: 64, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!275, !176, !180, !289}
!1943 = !{!1944, !1945, !1946}
!1944 = !DILocalVariable(name: "drv", arg: 1, scope: !1927, file: !3, line: 176, type: !176)
!1945 = !DILocalVariable(name: "attr", arg: 2, scope: !1927, file: !3, line: 177, type: !1930)
!1946 = !DILocalVariable(name: "error", scope: !1927, file: !3, line: 179, type: !46)
!1947 = !DILocation(line: 176, column: 46, scope: !1927)
!1948 = !DILocation(line: 177, column: 41, scope: !1927)
!1949 = !DILocation(line: 179, column: 2, scope: !1927)
!1950 = !DILocation(line: 179, column: 6, scope: !1927)
!1951 = !DILocation(line: 181, column: 6, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 181, column: 6)
!1953 = !DILocation(line: 181, column: 6, scope: !1927)
!1954 = !DILocation(line: 182, column: 30, scope: !1952)
!1955 = !DILocation(line: 182, column: 35, scope: !1952)
!1956 = !DILocation(line: 182, column: 38, scope: !1952)
!1957 = !DILocation(line: 182, column: 45, scope: !1952)
!1958 = !DILocation(line: 182, column: 51, scope: !1952)
!1959 = !DILocation(line: 182, column: 11, scope: !1952)
!1960 = !DILocation(line: 182, column: 9, scope: !1952)
!1961 = !DILocation(line: 182, column: 3, scope: !1952)
!1962 = !DILocation(line: 184, column: 9, scope: !1952)
!1963 = !DILocation(line: 185, column: 9, scope: !1927)
!1964 = !DILocation(line: 186, column: 1, scope: !1927)
!1965 = !DILocation(line: 185, column: 2, scope: !1927)
!1966 = distinct !DISubprogram(name: "sysfs_create_file", scope: !196, file: !196, line: 620, type: !1967, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1971)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!46, !204, !1969}
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!1971 = !{!1972, !1973}
!1972 = !DILocalVariable(name: "kobj", arg: 1, scope: !1966, file: !196, line: 620, type: !204)
!1973 = !DILocalVariable(name: "attr", arg: 2, scope: !1966, file: !196, line: 621, type: !1969)
!1974 = !DILocation(line: 620, column: 66, scope: !1966)
!1975 = !DILocation(line: 621, column: 32, scope: !1966)
!1976 = !DILocation(line: 623, column: 30, scope: !1966)
!1977 = !DILocation(line: 623, column: 36, scope: !1966)
!1978 = !DILocation(line: 623, column: 9, scope: !1966)
!1979 = !DILocation(line: 623, column: 2, scope: !1966)
!1980 = distinct !DISubprogram(name: "driver_remove_file", scope: !3, file: !3, line: 194, type: !1981, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !176, !1930}
!1983 = !{!1984, !1985}
!1984 = !DILocalVariable(name: "drv", arg: 1, scope: !1980, file: !3, line: 194, type: !176)
!1985 = !DILocalVariable(name: "attr", arg: 2, scope: !1980, file: !3, line: 195, type: !1930)
!1986 = !DILocation(line: 194, column: 47, scope: !1980)
!1987 = !DILocation(line: 195, column: 35, scope: !1980)
!1988 = !DILocation(line: 197, column: 6, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 197, column: 6)
!1990 = !DILocation(line: 197, column: 6, scope: !1980)
!1991 = !DILocation(line: 198, column: 22, scope: !1989)
!1992 = !DILocation(line: 198, column: 27, scope: !1989)
!1993 = !DILocation(line: 198, column: 30, scope: !1989)
!1994 = !DILocation(line: 198, column: 37, scope: !1989)
!1995 = !DILocation(line: 198, column: 43, scope: !1989)
!1996 = !DILocation(line: 198, column: 3, scope: !1989)
!1997 = !DILocation(line: 199, column: 1, scope: !1980)
!1998 = distinct !DISubprogram(name: "sysfs_remove_file", scope: !196, file: !196, line: 626, type: !1999, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2001)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !204, !1969}
!2001 = !{!2002, !2003}
!2002 = !DILocalVariable(name: "kobj", arg: 1, scope: !1998, file: !196, line: 626, type: !204)
!2003 = !DILocalVariable(name: "attr", arg: 2, scope: !1998, file: !196, line: 627, type: !1969)
!2004 = !DILocation(line: 626, column: 54, scope: !1998)
!2005 = !DILocation(line: 627, column: 34, scope: !1998)
!2006 = !DILocation(line: 629, column: 23, scope: !1998)
!2007 = !DILocation(line: 629, column: 29, scope: !1998)
!2008 = !DILocation(line: 629, column: 2, scope: !1998)
!2009 = !DILocation(line: 630, column: 1, scope: !1998)
!2010 = distinct !DISubprogram(name: "driver_add_groups", scope: !3, file: !3, line: 202, type: !2011, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!46, !176, !192}
!2013 = !{!2014, !2015}
!2014 = !DILocalVariable(name: "drv", arg: 1, scope: !2010, file: !3, line: 202, type: !176)
!2015 = !DILocalVariable(name: "groups", arg: 2, scope: !2010, file: !3, line: 203, type: !192)
!2016 = !DILocation(line: 202, column: 45, scope: !2010)
!2017 = !DILocation(line: 203, column: 40, scope: !2010)
!2018 = !DILocation(line: 205, column: 30, scope: !2010)
!2019 = !DILocation(line: 205, column: 35, scope: !2010)
!2020 = !DILocation(line: 205, column: 38, scope: !2010)
!2021 = !DILocation(line: 205, column: 44, scope: !2010)
!2022 = !DILocation(line: 205, column: 9, scope: !2010)
!2023 = !DILocation(line: 205, column: 2, scope: !2010)
!2024 = !DISubprogram(name: "sysfs_create_groups", scope: !196, file: !196, line: 309, type: !2025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!46, !204, !192}
!2027 = distinct !DISubprogram(name: "driver_remove_groups", scope: !3, file: !3, line: 208, type: !2028, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2030)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !176, !192}
!2030 = !{!2031, !2032}
!2031 = !DILocalVariable(name: "drv", arg: 1, scope: !2027, file: !3, line: 208, type: !176)
!2032 = !DILocalVariable(name: "groups", arg: 2, scope: !2027, file: !3, line: 209, type: !192)
!2033 = !DILocation(line: 208, column: 49, scope: !2027)
!2034 = !DILocation(line: 209, column: 37, scope: !2027)
!2035 = !DILocation(line: 211, column: 23, scope: !2027)
!2036 = !DILocation(line: 211, column: 28, scope: !2027)
!2037 = !DILocation(line: 211, column: 31, scope: !2027)
!2038 = !DILocation(line: 211, column: 37, scope: !2027)
!2039 = !DILocation(line: 211, column: 2, scope: !2027)
!2040 = !DILocation(line: 212, column: 1, scope: !2027)
!2041 = !DISubprogram(name: "sysfs_remove_groups", scope: !196, file: !196, line: 317, type: !2042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !204, !192}
!2044 = distinct !DISubprogram(name: "driver_register", scope: !3, file: !3, line: 222, type: !2045, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2047)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!46, !176}
!2047 = !{!2048, !2049, !2050}
!2048 = !DILocalVariable(name: "drv", arg: 1, scope: !2044, file: !3, line: 222, type: !176)
!2049 = !DILocalVariable(name: "ret", scope: !2044, file: !3, line: 224, type: !46)
!2050 = !DILocalVariable(name: "other", scope: !2044, file: !3, line: 225, type: !176)
!2051 = !DILocation(line: 222, column: 43, scope: !2044)
!2052 = !DILocation(line: 224, column: 2, scope: !2044)
!2053 = !DILocation(line: 224, column: 6, scope: !2044)
!2054 = !DILocation(line: 225, column: 2, scope: !2044)
!2055 = !DILocation(line: 225, column: 24, scope: !2044)
!2056 = !DILocation(line: 227, column: 25, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 227, column: 6)
!2058 = !DILocation(line: 227, column: 30, scope: !2057)
!2059 = !DILocation(line: 227, column: 7, scope: !2057)
!2060 = !DILocation(line: 227, column: 6, scope: !2044)
!2061 = !DILocation(line: 228, column: 3, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 228, column: 3)
!2063 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 227, column: 36)
!2064 = !DILocation(line: 228, column: 3, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 228, column: 3)
!2066 = !DILocation(line: 230, column: 3, scope: !2063)
!2067 = !DILocation(line: 233, column: 7, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 233, column: 6)
!2069 = !DILocation(line: 233, column: 12, scope: !2068)
!2070 = !DILocation(line: 233, column: 17, scope: !2068)
!2071 = !DILocation(line: 233, column: 23, scope: !2068)
!2072 = !DILocation(line: 233, column: 26, scope: !2068)
!2073 = !DILocation(line: 233, column: 31, scope: !2068)
!2074 = !DILocation(line: 233, column: 38, scope: !2068)
!2075 = !DILocation(line: 234, column: 7, scope: !2068)
!2076 = !DILocation(line: 234, column: 12, scope: !2068)
!2077 = !DILocation(line: 234, column: 17, scope: !2068)
!2078 = !DILocation(line: 234, column: 24, scope: !2068)
!2079 = !DILocation(line: 234, column: 27, scope: !2068)
!2080 = !DILocation(line: 234, column: 32, scope: !2068)
!2081 = !DILocation(line: 234, column: 40, scope: !2068)
!2082 = !DILocation(line: 235, column: 7, scope: !2068)
!2083 = !DILocation(line: 235, column: 12, scope: !2068)
!2084 = !DILocation(line: 235, column: 17, scope: !2068)
!2085 = !DILocation(line: 235, column: 26, scope: !2068)
!2086 = !DILocation(line: 235, column: 29, scope: !2068)
!2087 = !DILocation(line: 235, column: 34, scope: !2068)
!2088 = !DILocation(line: 233, column: 6, scope: !2044)
!2089 = !DILocation(line: 236, column: 3, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 236, column: 3)
!2091 = !DILocation(line: 236, column: 3, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 236, column: 3)
!2093 = !DILocation(line: 236, column: 3, scope: !2068)
!2094 = !DILocation(line: 239, column: 22, scope: !2044)
!2095 = !DILocation(line: 239, column: 27, scope: !2044)
!2096 = !DILocation(line: 239, column: 33, scope: !2044)
!2097 = !DILocation(line: 239, column: 38, scope: !2044)
!2098 = !DILocation(line: 239, column: 10, scope: !2044)
!2099 = !DILocation(line: 239, column: 8, scope: !2044)
!2100 = !DILocation(line: 240, column: 6, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 240, column: 6)
!2102 = !DILocation(line: 240, column: 6, scope: !2044)
!2103 = !DILocation(line: 241, column: 3, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 241, column: 3)
!2105 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 240, column: 13)
!2106 = !DILocation(line: 241, column: 3, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 241, column: 3)
!2108 = !DILocation(line: 243, column: 3, scope: !2105)
!2109 = !DILocation(line: 246, column: 23, scope: !2044)
!2110 = !DILocation(line: 246, column: 8, scope: !2044)
!2111 = !DILocation(line: 246, column: 6, scope: !2044)
!2112 = !DILocation(line: 247, column: 6, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 247, column: 6)
!2114 = !DILocation(line: 247, column: 6, scope: !2044)
!2115 = !DILocation(line: 248, column: 10, scope: !2113)
!2116 = !DILocation(line: 248, column: 3, scope: !2113)
!2117 = !DILocation(line: 249, column: 26, scope: !2044)
!2118 = !DILocation(line: 249, column: 31, scope: !2044)
!2119 = !DILocation(line: 249, column: 36, scope: !2044)
!2120 = !DILocation(line: 249, column: 8, scope: !2044)
!2121 = !DILocation(line: 249, column: 6, scope: !2044)
!2122 = !DILocation(line: 250, column: 6, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 250, column: 6)
!2124 = !DILocation(line: 250, column: 6, scope: !2044)
!2125 = !DILocation(line: 251, column: 21, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 250, column: 11)
!2127 = !DILocation(line: 251, column: 3, scope: !2126)
!2128 = !DILocation(line: 252, column: 10, scope: !2126)
!2129 = !DILocation(line: 252, column: 3, scope: !2126)
!2130 = !DILocation(line: 254, column: 18, scope: !2044)
!2131 = !DILocation(line: 254, column: 23, scope: !2044)
!2132 = !DILocation(line: 254, column: 26, scope: !2044)
!2133 = !DILocation(line: 254, column: 2, scope: !2044)
!2134 = !DILocation(line: 255, column: 2, scope: !2044)
!2135 = !DILocation(line: 257, column: 9, scope: !2044)
!2136 = !DILocation(line: 257, column: 2, scope: !2044)
!2137 = !DILocation(line: 258, column: 1, scope: !2044)
!2138 = !DISubprogram(name: "bus_is_registered", scope: !95, file: !95, line: 154, type: !2139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!307, !184}
!2141 = !DISubprogram(name: "_printk", scope: !2142, file: !2142, line: 153, type: !2143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2142 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!46, !180, null}
!2145 = !DISubprogram(name: "driver_find", scope: !20, file: !20, line: 128, type: !2146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!176, !180, !184}
!2148 = !DISubprogram(name: "bus_add_driver", scope: !95, file: !95, line: 156, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2149 = !DISubprogram(name: "bus_remove_driver", scope: !95, file: !95, line: 157, type: !2150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !176}
!2152 = !DISubprogram(name: "kobject_uevent", scope: !79, file: !79, line: 214, type: !2153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!46, !204, !78}
!2155 = !DISubprogram(name: "deferred_probe_extend_timeout", scope: !95, file: !95, line: 185, type: !1562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2156 = distinct !DISubprogram(name: "driver_unregister", scope: !3, file: !3, line: 267, type: !2150, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2157)
!2157 = !{!2158, !2159, !2163}
!2158 = !DILocalVariable(name: "drv", arg: 1, scope: !2156, file: !3, line: 267, type: !176)
!2159 = !DILocalVariable(name: "__ret_warn_on", scope: !2160, file: !3, line: 270, type: !46)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 270, column: 3)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 269, column: 23)
!2162 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 269, column: 6)
!2163 = !DILocalVariable(name: "__flags", scope: !2164, file: !3, line: 270, type: !46)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 270, column: 3)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 270, column: 3)
!2166 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 270, column: 3)
!2167 = !DILocation(line: 267, column: 46, scope: !2156)
!2168 = !DILocation(line: 269, column: 7, scope: !2162)
!2169 = !DILocation(line: 269, column: 11, scope: !2162)
!2170 = !DILocation(line: 269, column: 15, scope: !2162)
!2171 = !DILocation(line: 269, column: 20, scope: !2162)
!2172 = !DILocation(line: 269, column: 6, scope: !2156)
!2173 = !DILocation(line: 270, column: 3, scope: !2160)
!2174 = !DILocation(line: 270, column: 3, scope: !2166)
!2175 = !DILocation(line: 270, column: 3, scope: !2165)
!2176 = !DILocation(line: 270, column: 3, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 270, column: 3)
!2178 = !DILocation(line: 270, column: 3, scope: !2164)
!2179 = !DILocation(line: 270, column: 3, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 270, column: 3)
!2181 = !DILocation(line: 270, column: 3, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 270, column: 3)
!2183 = !{i64 2152685934, i64 2152685963, i64 2152686009, i64 2152686067, i64 2152686121, i64 2152686175, i64 2152686230, i64 2152686261, i64 2152686569, i64 2152686575, i64 2152686622, i64 2152686645, i64 2152686671}
!2184 = !DILocation(line: 270, column: 3, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 270, column: 3)
!2186 = !DILocation(line: 270, column: 3, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 270, column: 3)
!2188 = !DILocation(line: 270, column: 3, scope: !2161)
!2189 = !DILocation(line: 271, column: 3, scope: !2161)
!2190 = !DILocation(line: 273, column: 23, scope: !2156)
!2191 = !DILocation(line: 273, column: 28, scope: !2156)
!2192 = !DILocation(line: 273, column: 33, scope: !2156)
!2193 = !DILocation(line: 273, column: 2, scope: !2156)
!2194 = !DILocation(line: 274, column: 20, scope: !2156)
!2195 = !DILocation(line: 274, column: 2, scope: !2156)
!2196 = !DILocation(line: 275, column: 1, scope: !2156)
!2197 = !DISubprogram(name: "__warn_printk", scope: !1386, file: !1386, line: 93, type: !2198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{null, !180, null}
!2200 = !DISubprogram(name: "mutex_lock", scope: !417, file: !417, line: 227, type: !2201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !2203}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!2204 = !DISubprogram(name: "mutex_unlock", scope: !417, file: !417, line: 246, type: !2201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2205 = !DISubprogram(name: "klist_next", scope: !99, file: !99, line: 65, type: !2206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!154, !1833}
!2208 = !DISubprogram(name: "sysfs_create_file_ns", scope: !196, file: !196, line: 273, type: !2209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!46, !204, !1969, !317}
!2211 = !DISubprogram(name: "sysfs_remove_file_ns", scope: !196, file: !196, line: 283, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{null, !204, !1969, !317}
