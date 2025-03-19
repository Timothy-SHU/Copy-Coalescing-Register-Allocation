; ModuleID = 'drivers/base/attribute_container.c'
source_filename = "drivers/base/attribute_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_attribute_container_classdev_to_container: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad attribute_container_classdev_to_container ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_attribute_container_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad attribute_container_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_attribute_container_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad attribute_container_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_attribute_container_find_class_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad attribute_container_find_class_device ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.internal_container = type { %struct.klist_node, ptr, %struct.device }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i64 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.klist_iter = type { ptr, ptr }

@__UNIQUE_ID___addressable_attribute_container_classdev_to_container205 = internal global ptr @attribute_container_classdev_to_container, section ".discard.addressable", align 8, !dbg !0
@attribute_container_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @attribute_container_mutex, i64 16), ptr getelementptr (i8, ptr @attribute_container_mutex, i64 16) } }, align 8, !dbg !1661
@attribute_container_list = internal global %struct.list_head { ptr @attribute_container_list, ptr @attribute_container_list }, align 8, !dbg !1663
@__UNIQUE_ID___addressable_attribute_container_register206 = internal global ptr @attribute_container_register, section ".discard.addressable", align 8, !dbg !1642
@__UNIQUE_ID___addressable_attribute_container_unregister207 = internal global ptr @attribute_container_unregister, section ".discard.addressable", align 8, !dbg !1644
@.str = private unnamed_addr constant [36 x i8] c"failed to allocate class container\0A\00", align 1, !dbg !1646
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !1651
@.str.2 = private unnamed_addr constant [35 x i8] c"drivers/base/attribute_container.c\00", align 1, !dbg !1654
@__UNIQUE_ID___addressable_attribute_container_find_class_device208 = internal global ptr @attribute_container_find_class_device, section ".discard.addressable", align 8, !dbg !1659
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1665
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_attribute_container_classdev_to_container205, ptr @__UNIQUE_ID___addressable_attribute_container_register206, ptr @__UNIQUE_ID___addressable_attribute_container_unregister207, ptr @__UNIQUE_ID___addressable_attribute_container_find_class_device208], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @attribute_container_classdev_to_container(ptr noundef %classdev) #0 align 16 !dbg !1679 {
entry:
  %classdev.addr = alloca ptr, align 8
  %ic = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %classdev, ptr %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %classdev.addr, metadata !1683, metadata !DIExpression()), !dbg !1687
  call void @llvm.lifetime.start.p0(i64 8, ptr %ic) #14, !dbg !1688
  call void @llvm.dbg.declare(metadata ptr %ic, metadata !1684, metadata !DIExpression()), !dbg !1689
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !1690
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1685, metadata !DIExpression()), !dbg !1690
  %0 = load ptr, ptr %classdev.addr, align 8, !dbg !1690
  store ptr %0, ptr %__mptr, align 8, !dbg !1690
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1690
  %add.ptr = getelementptr i8, ptr %1, i64 -40, !dbg !1690
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1690
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !1691
  %2 = load ptr, ptr %tmp, align 8, !dbg !1690
  store ptr %2, ptr %ic, align 8, !dbg !1689
  %3 = load ptr, ptr %ic, align 8, !dbg !1692
  %cont = getelementptr inbounds %struct.internal_container, ptr %3, i32 0, i32 1, !dbg !1693
  %4 = load ptr, ptr %cont, align 8, !dbg !1693
  call void @llvm.lifetime.end.p0(i64 8, ptr %ic) #14, !dbg !1694
  ret ptr %4, !dbg !1695
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @attribute_container_register(ptr noundef %cont) #0 align 16 !dbg !1696 {
entry:
  %cont.addr = alloca ptr, align 8
  store ptr %cont, ptr %cont.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cont.addr, metadata !1700, metadata !DIExpression()), !dbg !1701
  %0 = load ptr, ptr %cont.addr, align 8, !dbg !1702
  %node = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 0, !dbg !1703
  call void @INIT_LIST_HEAD(ptr noundef %node) #15, !dbg !1704
  %1 = load ptr, ptr %cont.addr, align 8, !dbg !1705
  %containers = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 1, !dbg !1706
  call void @klist_init(ptr noundef %containers, ptr noundef @internal_container_klist_get, ptr noundef @internal_container_klist_put) #15, !dbg !1707
  call void @mutex_lock(ptr noundef @attribute_container_mutex) #15, !dbg !1708
  %2 = load ptr, ptr %cont.addr, align 8, !dbg !1709
  %node1 = getelementptr inbounds %struct.attribute_container, ptr %2, i32 0, i32 0, !dbg !1710
  call void @list_add_tail(ptr noundef %node1, ptr noundef @attribute_container_list) #15, !dbg !1711
  call void @mutex_unlock(ptr noundef @attribute_container_mutex) #15, !dbg !1712
  ret i32 0, !dbg !1713
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !1714 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !1719, metadata !DIExpression()), !dbg !1720
  br label %do.body, !dbg !1721

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1722

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1724

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1722

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !1726
  %1 = load ptr, ptr %list.addr, align 8, !dbg !1726
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !1726
  store volatile ptr %0, ptr %next, align 8, !dbg !1726
  br label %do.end3, !dbg !1726

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1722

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !1728

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !1729

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1731

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !1729

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !1733
  %3 = load ptr, ptr %list.addr, align 8, !dbg !1733
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !1733
  store volatile ptr %2, ptr %prev, align 8, !dbg !1733
  br label %do.end9, !dbg !1733

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !1729

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !1735
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1736 dso_local void @klist_init(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @internal_container_klist_get(ptr noundef %n) #0 align 16 !dbg !1740 {
entry:
  %n.addr = alloca ptr, align 8
  %ic = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1742, metadata !DIExpression()), !dbg !1746
  call void @llvm.lifetime.start.p0(i64 8, ptr %ic) #14, !dbg !1747
  call void @llvm.dbg.declare(metadata ptr %ic, metadata !1743, metadata !DIExpression()), !dbg !1748
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !1749
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1744, metadata !DIExpression()), !dbg !1749
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1749
  store ptr %0, ptr %__mptr, align 8, !dbg !1749
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1749
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !1749
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1749
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !1750
  %2 = load ptr, ptr %tmp, align 8, !dbg !1749
  store ptr %2, ptr %ic, align 8, !dbg !1748
  %3 = load ptr, ptr %ic, align 8, !dbg !1751
  %classdev = getelementptr inbounds %struct.internal_container, ptr %3, i32 0, i32 2, !dbg !1752
  %call = call ptr @get_device(ptr noundef %classdev) #15, !dbg !1753
  call void @llvm.lifetime.end.p0(i64 8, ptr %ic) #14, !dbg !1754
  ret void, !dbg !1754
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @internal_container_klist_put(ptr noundef %n) #0 align 16 !dbg !1755 {
entry:
  %n.addr = alloca ptr, align 8
  %ic = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1757, metadata !DIExpression()), !dbg !1761
  call void @llvm.lifetime.start.p0(i64 8, ptr %ic) #14, !dbg !1762
  call void @llvm.dbg.declare(metadata ptr %ic, metadata !1758, metadata !DIExpression()), !dbg !1763
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !1764
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1759, metadata !DIExpression()), !dbg !1764
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1764
  store ptr %0, ptr %__mptr, align 8, !dbg !1764
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1764
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !1764
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1764
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !1765
  %2 = load ptr, ptr %tmp, align 8, !dbg !1764
  store ptr %2, ptr %ic, align 8, !dbg !1763
  %3 = load ptr, ptr %ic, align 8, !dbg !1766
  %classdev = getelementptr inbounds %struct.internal_container, ptr %3, i32 0, i32 2, !dbg !1767
  call void @put_device(ptr noundef %classdev) #15, !dbg !1768
  call void @llvm.lifetime.end.p0(i64 8, ptr %ic) #14, !dbg !1769
  ret void, !dbg !1769
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1770 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !1774 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1778, metadata !DIExpression()), !dbg !1780
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1779, metadata !DIExpression()), !dbg !1781
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1782
  %1 = load ptr, ptr %head.addr, align 8, !dbg !1783
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !1784
  %2 = load ptr, ptr %prev, align 8, !dbg !1784
  %3 = load ptr, ptr %head.addr, align 8, !dbg !1785
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #15, !dbg !1786
  ret void, !dbg !1787
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1788 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @attribute_container_unregister(ptr noundef %cont) #0 align 16 !dbg !1789 {
entry:
  %cont.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  store ptr %cont, ptr %cont.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cont.addr, metadata !1791, metadata !DIExpression()), !dbg !1794
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #14, !dbg !1795
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !1792, metadata !DIExpression()), !dbg !1796
  store i32 -16, ptr %retval1, align 4, !dbg !1796
  call void @mutex_lock(ptr noundef @attribute_container_mutex) #15, !dbg !1797
  %0 = load ptr, ptr %cont.addr, align 8, !dbg !1798
  %containers = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 1, !dbg !1799
  %k_lock = getelementptr inbounds %struct.klist, ptr %containers, i32 0, i32 0, !dbg !1800
  call void @spin_lock(ptr noundef %k_lock) #15, !dbg !1801
  %1 = load ptr, ptr %cont.addr, align 8, !dbg !1802
  %containers2 = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 1, !dbg !1804
  %k_list = getelementptr inbounds %struct.klist, ptr %containers2, i32 0, i32 1, !dbg !1805
  %call = call i32 @list_empty(ptr noundef %k_list) #15, !dbg !1806
  %tobool = icmp ne i32 %call, 0, !dbg !1806
  br i1 %tobool, label %if.end, label %if.then, !dbg !1807

if.then:                                          ; preds = %entry
  br label %out, !dbg !1808

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval1, align 4, !dbg !1809
  %2 = load ptr, ptr %cont.addr, align 8, !dbg !1810
  %node = getelementptr inbounds %struct.attribute_container, ptr %2, i32 0, i32 0, !dbg !1811
  call void @list_del(ptr noundef %node) #15, !dbg !1812
  br label %out, !dbg !1812

out:                                              ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !1793), !dbg !1813
  %3 = load ptr, ptr %cont.addr, align 8, !dbg !1814
  %containers3 = getelementptr inbounds %struct.attribute_container, ptr %3, i32 0, i32 1, !dbg !1815
  %k_lock4 = getelementptr inbounds %struct.klist, ptr %containers3, i32 0, i32 0, !dbg !1816
  call void @spin_unlock(ptr noundef %k_lock4) #15, !dbg !1817
  call void @mutex_unlock(ptr noundef @attribute_container_mutex) #15, !dbg !1818
  %4 = load i32, ptr %retval1, align 4, !dbg !1819
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #14, !dbg !1820
  ret i32 %4, !dbg !1821
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !1822 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1828, metadata !DIExpression()), !dbg !1829
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1830
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1830
  call void @_raw_spin_lock(ptr noundef %1) #15, !dbg !1830
  ret void, !dbg !1831
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !1832 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1838, metadata !DIExpression()), !dbg !1839
  br label %do.body, !dbg !1840

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1842

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !1840
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !1840
  %1 = load volatile ptr, ptr %next, align 8, !dbg !1840
  store ptr %1, ptr %tmp, align 8, !dbg !1842
  %2 = load ptr, ptr %tmp, align 8, !dbg !1840
  %3 = load ptr, ptr %head.addr, align 8, !dbg !1844
  %cmp = icmp eq ptr %2, %3, !dbg !1845
  %conv = zext i1 %cmp to i32, !dbg !1845
  ret i32 %conv, !dbg !1846
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !1847 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1849, metadata !DIExpression()), !dbg !1850
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1851
  call void @__list_del_entry(ptr noundef %0) #15, !dbg !1852
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !1853
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !1854
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !1855
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !1856
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !1857
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !1858
  ret void, !dbg !1859
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !1860 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1862, metadata !DIExpression()), !dbg !1863
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1864
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1864
  call void @_raw_spin_unlock(ptr noundef %1) #15, !dbg !1864
  ret void, !dbg !1865
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @attribute_container_add_device(ptr noundef %dev, ptr noundef %fn) #0 align 16 !dbg !1866 {
entry:
  %dev.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %cont = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ic = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr26 = alloca ptr, align 8
  %tmp28 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1873, metadata !DIExpression()), !dbg !1884
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !1874, metadata !DIExpression()), !dbg !1885
  call void @llvm.lifetime.start.p0(i64 8, ptr %cont) #14, !dbg !1886
  call void @llvm.dbg.declare(metadata ptr %cont, metadata !1875, metadata !DIExpression()), !dbg !1887
  call void @mutex_lock(ptr noundef @attribute_container_mutex) #15, !dbg !1888
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !1889
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1876, metadata !DIExpression()), !dbg !1889
  %0 = load ptr, ptr @attribute_container_list, align 8, !dbg !1889
  store ptr %0, ptr %__mptr, align 8, !dbg !1889
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1889
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !1889
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1889
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !1890
  %2 = load ptr, ptr %tmp, align 8, !dbg !1889
  store ptr %2, ptr %cont, align 8, !dbg !1890
  br label %for.cond, !dbg !1890

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %cont, align 8, !dbg !1891
  %node = getelementptr inbounds %struct.attribute_container, ptr %3, i32 0, i32 0, !dbg !1891
  %cmp = icmp eq ptr %node, @attribute_container_list, !dbg !1891
  %lnot = xor i1 %cmp, true, !dbg !1891
  br i1 %lnot, label %for.body, label %for.end, !dbg !1890

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ic) #14, !dbg !1892
  call void @llvm.dbg.declare(metadata ptr %ic, metadata !1879, metadata !DIExpression()), !dbg !1893
  %4 = load ptr, ptr %cont, align 8, !dbg !1894
  %call = call i32 @attribute_container_no_classdevs(ptr noundef %4) #15, !dbg !1896
  %tobool = icmp ne i32 %call, 0, !dbg !1896
  br i1 %tobool, label %if.then, label %if.end, !dbg !1897

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1898

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %cont, align 8, !dbg !1899
  %match = getelementptr inbounds %struct.attribute_container, ptr %5, i32 0, i32 5, !dbg !1901
  %6 = load ptr, ptr %match, align 8, !dbg !1901
  %7 = load ptr, ptr %cont, align 8, !dbg !1902
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !1903
  %call1 = call i32 %6(ptr noundef %7, ptr noundef %8) #15, !dbg !1899
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1899
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1904

if.then3:                                         ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1905

if.end4:                                          ; preds = %if.end
  %call5 = call noalias ptr @kzalloc(i64 noundef 768, i32 noundef 3264) #16, !dbg !1906
  store ptr %call5, ptr %ic, align 8, !dbg !1907
  %9 = load ptr, ptr %ic, align 8, !dbg !1908
  %tobool6 = icmp ne ptr %9, null, !dbg !1908
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1910

if.then7:                                         ; preds = %if.end4
  br label %do.body, !dbg !1911

do.body:                                          ; preds = %if.then7
  br label %do.cond, !dbg !1914

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1914

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1911
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef @.str) #17, !dbg !1911
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1916

if.end8:                                          ; preds = %if.end4
  %11 = load ptr, ptr %cont, align 8, !dbg !1917
  %12 = load ptr, ptr %ic, align 8, !dbg !1918
  %cont9 = getelementptr inbounds %struct.internal_container, ptr %12, i32 0, i32 1, !dbg !1919
  store ptr %11, ptr %cont9, align 8, !dbg !1920
  %13 = load ptr, ptr %ic, align 8, !dbg !1921
  %classdev = getelementptr inbounds %struct.internal_container, ptr %13, i32 0, i32 2, !dbg !1922
  call void @device_initialize(ptr noundef %classdev) #15, !dbg !1923
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !1924
  %call10 = call ptr @get_device(ptr noundef %14) #15, !dbg !1925
  %15 = load ptr, ptr %ic, align 8, !dbg !1926
  %classdev11 = getelementptr inbounds %struct.internal_container, ptr %15, i32 0, i32 2, !dbg !1927
  %parent = getelementptr inbounds %struct.device, ptr %classdev11, i32 0, i32 1, !dbg !1928
  store ptr %call10, ptr %parent, align 8, !dbg !1929
  %16 = load ptr, ptr %cont, align 8, !dbg !1930
  %class = getelementptr inbounds %struct.attribute_container, ptr %16, i32 0, i32 2, !dbg !1931
  %17 = load ptr, ptr %class, align 8, !dbg !1931
  %18 = load ptr, ptr %ic, align 8, !dbg !1932
  %classdev12 = getelementptr inbounds %struct.internal_container, ptr %18, i32 0, i32 2, !dbg !1933
  %class13 = getelementptr inbounds %struct.device, ptr %classdev12, i32 0, i32 30, !dbg !1934
  store ptr %17, ptr %class13, align 8, !dbg !1935
  %19 = load ptr, ptr %cont, align 8, !dbg !1936
  %class14 = getelementptr inbounds %struct.attribute_container, ptr %19, i32 0, i32 2, !dbg !1937
  %20 = load ptr, ptr %class14, align 8, !dbg !1937
  %dev_release = getelementptr inbounds %struct.class, ptr %20, i32 0, i32 6, !dbg !1938
  store ptr @attribute_container_release, ptr %dev_release, align 8, !dbg !1939
  %21 = load ptr, ptr %ic, align 8, !dbg !1940
  %classdev15 = getelementptr inbounds %struct.internal_container, ptr %21, i32 0, i32 2, !dbg !1941
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !1942
  %call16 = call ptr @dev_name(ptr noundef %22) #15, !dbg !1943
  %call17 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %classdev15, ptr noundef @.str.1, ptr noundef %call16) #15, !dbg !1944
  %23 = load ptr, ptr %fn.addr, align 8, !dbg !1945
  %tobool18 = icmp ne ptr %23, null, !dbg !1945
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !1947

if.then19:                                        ; preds = %if.end8
  %24 = load ptr, ptr %fn.addr, align 8, !dbg !1948
  %25 = load ptr, ptr %cont, align 8, !dbg !1949
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !1950
  %27 = load ptr, ptr %ic, align 8, !dbg !1951
  %classdev20 = getelementptr inbounds %struct.internal_container, ptr %27, i32 0, i32 2, !dbg !1952
  %call21 = call i32 %24(ptr noundef %25, ptr noundef %26, ptr noundef %classdev20) #15, !dbg !1948
  br label %if.end24, !dbg !1948

if.else:                                          ; preds = %if.end8
  %28 = load ptr, ptr %ic, align 8, !dbg !1953
  %classdev22 = getelementptr inbounds %struct.internal_container, ptr %28, i32 0, i32 2, !dbg !1954
  %call23 = call i32 @attribute_container_add_class_device(ptr noundef %classdev22) #15, !dbg !1955
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then19
  %29 = load ptr, ptr %ic, align 8, !dbg !1956
  %node25 = getelementptr inbounds %struct.internal_container, ptr %29, i32 0, i32 0, !dbg !1957
  %30 = load ptr, ptr %cont, align 8, !dbg !1958
  %containers = getelementptr inbounds %struct.attribute_container, ptr %30, i32 0, i32 1, !dbg !1959
  call void @klist_add_tail(ptr noundef %node25, ptr noundef %containers) #15, !dbg !1960
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1961
  br label %cleanup, !dbg !1961

cleanup:                                          ; preds = %if.end24, %do.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ic) #14, !dbg !1961
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1962

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr26) #14, !dbg !1963
  call void @llvm.dbg.declare(metadata ptr %__mptr26, metadata !1882, metadata !DIExpression()), !dbg !1963
  %31 = load ptr, ptr %cont, align 8, !dbg !1963
  %node27 = getelementptr inbounds %struct.attribute_container, ptr %31, i32 0, i32 0, !dbg !1963
  %next = getelementptr inbounds %struct.list_head, ptr %node27, i32 0, i32 0, !dbg !1963
  %32 = load ptr, ptr %next, align 8, !dbg !1963
  store ptr %32, ptr %__mptr26, align 8, !dbg !1963
  %33 = load ptr, ptr %__mptr26, align 8, !dbg !1963
  %add.ptr29 = getelementptr i8, ptr %33, i64 0, !dbg !1963
  store ptr %add.ptr29, ptr %tmp28, align 8, !dbg !1963
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr26) #14, !dbg !1891
  %34 = load ptr, ptr %tmp28, align 8, !dbg !1963
  store ptr %34, ptr %cont, align 8, !dbg !1891
  br label %for.cond, !dbg !1891, !llvm.loop !1964

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @attribute_container_mutex) #15, !dbg !1968
  call void @llvm.lifetime.end.p0(i64 8, ptr %cont) #14, !dbg !1969
  ret void, !dbg !1969

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @attribute_container_no_classdevs(ptr noundef %atc) #3 align 16 !dbg !1970 {
entry:
  %atc.addr = alloca ptr, align 8
  store ptr %atc, ptr %atc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %atc.addr, metadata !1972, metadata !DIExpression()), !dbg !1973
  %0 = load ptr, ptr %atc.addr, align 8, !dbg !1974
  %flags = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 6, !dbg !1975
  %1 = load i64, ptr %flags, align 8, !dbg !1975
  %and = and i64 %1, 1, !dbg !1976
  %conv = trunc i64 %and to i32, !dbg !1974
  ret i32 %conv, !dbg !1977
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !1978 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1982, metadata !DIExpression()), !dbg !1984
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1983, metadata !DIExpression()), !dbg !1985
  %0 = load i64, ptr %size.addr, align 8, !dbg !1986
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1987
  %or = or i32 %1, 256, !dbg !1988
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !1989
  ret ptr %call, !dbg !1990
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1991 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1995 dso_local void @device_initialize(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1996 dso_local ptr @get_device(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @attribute_container_release(ptr noundef %classdev) #0 align 16 !dbg !1999 {
entry:
  %classdev.addr = alloca ptr, align 8
  %ic = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store ptr %classdev, ptr %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %classdev.addr, metadata !2001, metadata !DIExpression()), !dbg !2006
  call void @llvm.lifetime.start.p0(i64 8, ptr %ic) #14, !dbg !2007
  call void @llvm.dbg.declare(metadata ptr %ic, metadata !2002, metadata !DIExpression()), !dbg !2008
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2009
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2003, metadata !DIExpression()), !dbg !2009
  %0 = load ptr, ptr %classdev.addr, align 8, !dbg !2009
  store ptr %0, ptr %__mptr, align 8, !dbg !2009
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2009
  %add.ptr = getelementptr i8, ptr %1, i64 -40, !dbg !2009
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2009
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2010
  %2 = load ptr, ptr %tmp, align 8, !dbg !2009
  store ptr %2, ptr %ic, align 8, !dbg !2008
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !2011
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2005, metadata !DIExpression()), !dbg !2012
  %3 = load ptr, ptr %classdev.addr, align 8, !dbg !2013
  %parent = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1, !dbg !2014
  %4 = load ptr, ptr %parent, align 8, !dbg !2014
  store ptr %4, ptr %dev, align 8, !dbg !2012
  %5 = load ptr, ptr %ic, align 8, !dbg !2015
  call void @kfree(ptr noundef %5) #15, !dbg !2016
  %6 = load ptr, ptr %dev, align 8, !dbg !2017
  call void @put_device(ptr noundef %6) #15, !dbg !2018
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !2019
  call void @llvm.lifetime.end.p0(i64 8, ptr %ic) #14, !dbg !2019
  ret void, !dbg !2019
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2020 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #3 align 16 !dbg !2023 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2027, metadata !DIExpression()), !dbg !2028
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2029
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !2031
  %1 = load ptr, ptr %init_name, align 8, !dbg !2031
  %tobool = icmp ne ptr %1, null, !dbg !2029
  br i1 %tobool, label %if.then, label %if.end, !dbg !2032

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2033
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !2034
  %3 = load ptr, ptr %init_name1, align 8, !dbg !2034
  store ptr %3, ptr %retval, align 8, !dbg !2035
  br label %return, !dbg !2035

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2036
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !2037
  %call = call ptr @kobject_name(ptr noundef %kobj) #15, !dbg !2038
  store ptr %call, ptr %retval, align 8, !dbg !2039
  br label %return, !dbg !2039

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !2040
  ret ptr %5, !dbg !2040
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @attribute_container_add_class_device(ptr noundef %classdev) #0 align 16 !dbg !2041 {
entry:
  %retval = alloca i32, align 4
  %classdev.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %classdev, ptr %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %classdev.addr, metadata !2043, metadata !DIExpression()), !dbg !2045
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #14, !dbg !2046
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2044, metadata !DIExpression()), !dbg !2047
  %0 = load ptr, ptr %classdev.addr, align 8, !dbg !2048
  %call = call i32 @device_add(ptr noundef %0) #15, !dbg !2049
  store i32 %call, ptr %error, align 4, !dbg !2047
  %1 = load i32, ptr %error, align 4, !dbg !2050
  %tobool = icmp ne i32 %1, 0, !dbg !2050
  br i1 %tobool, label %if.then, label %if.end, !dbg !2052

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %error, align 4, !dbg !2053
  store i32 %2, ptr %retval, align 4, !dbg !2054
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2054

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %classdev.addr, align 8, !dbg !2055
  %call1 = call i32 @attribute_container_add_attrs(ptr noundef %3) #15, !dbg !2056
  store i32 %call1, ptr %retval, align 4, !dbg !2057
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2057

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #14, !dbg !2058
  %4 = load i32, ptr %retval, align 4, !dbg !2058
  ret i32 %4, !dbg !2058
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2059 dso_local void @klist_add_tail(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @attribute_container_remove_device(ptr noundef %dev, ptr noundef %fn) #0 align 16 !dbg !2062 {
entry:
  %dev.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %cont = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ic = alloca ptr, align 8
  %iter = alloca %struct.klist_iter, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %n = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %__mptr26 = alloca ptr, align 8
  %tmp28 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2069, metadata !DIExpression()), !dbg !2091
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !2070, metadata !DIExpression()), !dbg !2092
  call void @llvm.lifetime.start.p0(i64 8, ptr %cont) #14, !dbg !2093
  call void @llvm.dbg.declare(metadata ptr %cont, metadata !2071, metadata !DIExpression()), !dbg !2094
  call void @mutex_lock(ptr noundef @attribute_container_mutex) #15, !dbg !2095
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2096
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2072, metadata !DIExpression()), !dbg !2096
  %0 = load ptr, ptr @attribute_container_list, align 8, !dbg !2096
  store ptr %0, ptr %__mptr, align 8, !dbg !2096
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2096
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2096
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2096
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2097
  %2 = load ptr, ptr %tmp, align 8, !dbg !2096
  store ptr %2, ptr %cont, align 8, !dbg !2097
  br label %for.cond, !dbg !2097

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %cont, align 8, !dbg !2098
  %node = getelementptr inbounds %struct.attribute_container, ptr %3, i32 0, i32 0, !dbg !2098
  %cmp = icmp eq ptr %node, @attribute_container_list, !dbg !2098
  %lnot = xor i1 %cmp, true, !dbg !2098
  br i1 %lnot, label %for.body, label %for.end30, !dbg !2097

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ic) #14, !dbg !2099
  call void @llvm.dbg.declare(metadata ptr %ic, metadata !2075, metadata !DIExpression()), !dbg !2100
  call void @llvm.lifetime.start.p0(i64 16, ptr %iter) #14, !dbg !2101
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !2078, metadata !DIExpression()), !dbg !2102
  %4 = load ptr, ptr %cont, align 8, !dbg !2103
  %call = call i32 @attribute_container_no_classdevs(ptr noundef %4) #15, !dbg !2105
  %tobool = icmp ne i32 %call, 0, !dbg !2105
  br i1 %tobool, label %if.then, label %if.end, !dbg !2106

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2107

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %cont, align 8, !dbg !2108
  %match = getelementptr inbounds %struct.attribute_container, ptr %5, i32 0, i32 5, !dbg !2110
  %6 = load ptr, ptr %match, align 8, !dbg !2110
  %7 = load ptr, ptr %cont, align 8, !dbg !2111
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2112
  %call1 = call i32 %6(ptr noundef %7, ptr noundef %8) #15, !dbg !2108
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2108
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2113

if.then3:                                         ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2114

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %cont, align 8, !dbg !2115
  %containers = getelementptr inbounds %struct.attribute_container, ptr %9, i32 0, i32 1, !dbg !2115
  call void @klist_iter_init(ptr noundef %containers, ptr noundef %iter) #15, !dbg !2115
  br label %for.cond5, !dbg !2115

for.cond5:                                        ; preds = %if.end24, %if.then16, %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #14, !dbg !2116
  call void @llvm.dbg.declare(metadata ptr %n, metadata !2083, metadata !DIExpression()), !dbg !2116
  %call6 = call ptr @klist_next(ptr noundef %iter) #15, !dbg !2116
  store ptr %call6, ptr %n, align 8, !dbg !2116
  %10 = load ptr, ptr %n, align 8, !dbg !2116
  %tobool8 = icmp ne ptr %10, null, !dbg !2116
  br i1 %tobool8, label %cond.true, label %cond.false, !dbg !2116

cond.true:                                        ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #14, !dbg !2117
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !2087, metadata !DIExpression()), !dbg !2117
  %11 = load ptr, ptr %n, align 8, !dbg !2117
  store ptr %11, ptr %__mptr9, align 8, !dbg !2117
  %12 = load ptr, ptr %__mptr9, align 8, !dbg !2117
  %add.ptr11 = getelementptr i8, ptr %12, i64 0, !dbg !2117
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !2117
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #14, !dbg !2116
  %13 = load ptr, ptr %tmp10, align 8, !dbg !2117
  br label %cond.end, !dbg !2116

cond.false:                                       ; preds = %for.cond5
  call void @klist_iter_exit(ptr noundef %iter) #15, !dbg !2118
  store ptr null, ptr %tmp12, align 8, !dbg !2118
  %14 = load ptr, ptr %tmp12, align 8, !dbg !2118
  br label %cond.end, !dbg !2116

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %13, %cond.true ], [ %14, %cond.false ], !dbg !2116
  store ptr %cond, ptr %tmp7, align 8, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #14, !dbg !2120
  %15 = load ptr, ptr %tmp7, align 8, !dbg !2116
  store ptr %15, ptr %ic, align 8, !dbg !2120
  %cmp13 = icmp ne ptr %15, null, !dbg !2120
  br i1 %cmp13, label %for.body14, label %for.end, !dbg !2115

for.body14:                                       ; preds = %cond.end
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !2121
  %17 = load ptr, ptr %ic, align 8, !dbg !2124
  %classdev = getelementptr inbounds %struct.internal_container, ptr %17, i32 0, i32 2, !dbg !2125
  %parent = getelementptr inbounds %struct.device, ptr %classdev, i32 0, i32 1, !dbg !2126
  %18 = load ptr, ptr %parent, align 8, !dbg !2126
  %cmp15 = icmp ne ptr %16, %18, !dbg !2127
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2128

if.then16:                                        ; preds = %for.body14
  br label %for.cond5, !dbg !2129, !llvm.loop !2130

if.end17:                                         ; preds = %for.body14
  %19 = load ptr, ptr %ic, align 8, !dbg !2132
  %node18 = getelementptr inbounds %struct.internal_container, ptr %19, i32 0, i32 0, !dbg !2133
  call void @klist_del(ptr noundef %node18) #15, !dbg !2134
  %20 = load ptr, ptr %fn.addr, align 8, !dbg !2135
  %tobool19 = icmp ne ptr %20, null, !dbg !2135
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !2137

if.then20:                                        ; preds = %if.end17
  %21 = load ptr, ptr %fn.addr, align 8, !dbg !2138
  %22 = load ptr, ptr %cont, align 8, !dbg !2139
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !2140
  %24 = load ptr, ptr %ic, align 8, !dbg !2141
  %classdev21 = getelementptr inbounds %struct.internal_container, ptr %24, i32 0, i32 2, !dbg !2142
  call void %21(ptr noundef %22, ptr noundef %23, ptr noundef %classdev21) #15, !dbg !2138
  br label %if.end24, !dbg !2138

if.else:                                          ; preds = %if.end17
  %25 = load ptr, ptr %ic, align 8, !dbg !2143
  %classdev22 = getelementptr inbounds %struct.internal_container, ptr %25, i32 0, i32 2, !dbg !2145
  call void @attribute_container_remove_attrs(ptr noundef %classdev22) #15, !dbg !2146
  %26 = load ptr, ptr %ic, align 8, !dbg !2147
  %classdev23 = getelementptr inbounds %struct.internal_container, ptr %26, i32 0, i32 2, !dbg !2148
  call void @device_unregister(ptr noundef %classdev23) #15, !dbg !2149
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then20
  br label %for.cond5, !dbg !2120, !llvm.loop !2130

for.end:                                          ; preds = %cond.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2150
  br label %cleanup, !dbg !2150

cleanup:                                          ; preds = %for.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %iter) #14, !dbg !2150
  call void @llvm.lifetime.end.p0(i64 8, ptr %ic) #14, !dbg !2150
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2151

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr26) #14, !dbg !2152
  call void @llvm.dbg.declare(metadata ptr %__mptr26, metadata !2089, metadata !DIExpression()), !dbg !2152
  %27 = load ptr, ptr %cont, align 8, !dbg !2152
  %node27 = getelementptr inbounds %struct.attribute_container, ptr %27, i32 0, i32 0, !dbg !2152
  %next = getelementptr inbounds %struct.list_head, ptr %node27, i32 0, i32 0, !dbg !2152
  %28 = load ptr, ptr %next, align 8, !dbg !2152
  store ptr %28, ptr %__mptr26, align 8, !dbg !2152
  %29 = load ptr, ptr %__mptr26, align 8, !dbg !2152
  %add.ptr29 = getelementptr i8, ptr %29, i64 0, !dbg !2152
  store ptr %add.ptr29, ptr %tmp28, align 8, !dbg !2152
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr26) #14, !dbg !2098
  %30 = load ptr, ptr %tmp28, align 8, !dbg !2152
  store ptr %30, ptr %cont, align 8, !dbg !2098
  br label %for.cond, !dbg !2098, !llvm.loop !2153

for.end30:                                        ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @attribute_container_mutex) #15, !dbg !2155
  call void @llvm.lifetime.end.p0(i64 8, ptr %cont) #14, !dbg !2156
  ret void, !dbg !2156

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2157 dso_local void @klist_iter_init(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2161 dso_local ptr @klist_next(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2164 dso_local void @klist_iter_exit(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2167 dso_local void @klist_del(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @attribute_container_remove_attrs(ptr noundef %classdev) #0 align 16 !dbg !2168 {
entry:
  %classdev.addr = alloca ptr, align 8
  %cont = alloca ptr, align 8
  %attrs = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %classdev, ptr %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %classdev.addr, metadata !2170, metadata !DIExpression()), !dbg !2174
  call void @llvm.lifetime.start.p0(i64 8, ptr %cont) #14, !dbg !2175
  call void @llvm.dbg.declare(metadata ptr %cont, metadata !2171, metadata !DIExpression()), !dbg !2176
  %0 = load ptr, ptr %classdev.addr, align 8, !dbg !2177
  %call = call ptr @attribute_container_classdev_to_container(ptr noundef %0) #15, !dbg !2178
  store ptr %call, ptr %cont, align 8, !dbg !2176
  call void @llvm.lifetime.start.p0(i64 8, ptr %attrs) #14, !dbg !2179
  call void @llvm.dbg.declare(metadata ptr %attrs, metadata !2172, metadata !DIExpression()), !dbg !2180
  %1 = load ptr, ptr %cont, align 8, !dbg !2181
  %attrs1 = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 4, !dbg !2182
  %2 = load ptr, ptr %attrs1, align 8, !dbg !2182
  store ptr %2, ptr %attrs, align 8, !dbg !2180
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2183
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2173, metadata !DIExpression()), !dbg !2184
  %3 = load ptr, ptr %attrs, align 8, !dbg !2185
  %tobool = icmp ne ptr %3, null, !dbg !2185
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2187

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %cont, align 8, !dbg !2188
  %grp = getelementptr inbounds %struct.attribute_container, ptr %4, i32 0, i32 3, !dbg !2189
  %5 = load ptr, ptr %grp, align 8, !dbg !2189
  %tobool2 = icmp ne ptr %5, null, !dbg !2188
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2190

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2191

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %cont, align 8, !dbg !2192
  %grp3 = getelementptr inbounds %struct.attribute_container, ptr %6, i32 0, i32 3, !dbg !2194
  %7 = load ptr, ptr %grp3, align 8, !dbg !2194
  %tobool4 = icmp ne ptr %7, null, !dbg !2192
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !2195

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %classdev.addr, align 8, !dbg !2196
  %kobj = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 0, !dbg !2198
  %9 = load ptr, ptr %cont, align 8, !dbg !2199
  %grp6 = getelementptr inbounds %struct.attribute_container, ptr %9, i32 0, i32 3, !dbg !2200
  %10 = load ptr, ptr %grp6, align 8, !dbg !2200
  call void @sysfs_remove_group(ptr noundef %kobj, ptr noundef %10) #15, !dbg !2201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2202

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !2203
  br label %for.cond, !dbg !2205

for.cond:                                         ; preds = %for.inc, %if.end7
  %11 = load ptr, ptr %attrs, align 8, !dbg !2206
  %12 = load i32, ptr %i, align 4, !dbg !2208
  %idxprom = sext i32 %12 to i64, !dbg !2206
  %arrayidx = getelementptr ptr, ptr %11, i64 %idxprom, !dbg !2206
  %13 = load ptr, ptr %arrayidx, align 8, !dbg !2206
  %tobool8 = icmp ne ptr %13, null, !dbg !2209
  br i1 %tobool8, label %for.body, label %for.end, !dbg !2209

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %classdev.addr, align 8, !dbg !2210
  %15 = load ptr, ptr %attrs, align 8, !dbg !2211
  %16 = load i32, ptr %i, align 4, !dbg !2212
  %idxprom9 = sext i32 %16 to i64, !dbg !2211
  %arrayidx10 = getelementptr ptr, ptr %15, i64 %idxprom9, !dbg !2211
  %17 = load ptr, ptr %arrayidx10, align 8, !dbg !2211
  call void @device_remove_file(ptr noundef %14, ptr noundef %17) #15, !dbg !2213
  br label %for.inc, !dbg !2213

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4, !dbg !2214
  %inc = add i32 %18, 1, !dbg !2214
  store i32 %inc, ptr %i, align 4, !dbg !2214
  br label %for.cond, !dbg !2215, !llvm.loop !2216

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2218
  br label %cleanup, !dbg !2218

cleanup:                                          ; preds = %for.end, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2218
  call void @llvm.lifetime.end.p0(i64 8, ptr %attrs) #14, !dbg !2218
  call void @llvm.lifetime.end.p0(i64 8, ptr %cont) #14, !dbg !2218
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2218

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2219 dso_local void @device_unregister(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @attribute_container_device_trigger_safe(ptr noundef %dev, ptr noundef %fn, ptr noundef %undo) #0 align 16 !dbg !2220 {
entry:
  %dev.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %undo.addr = alloca ptr, align 8
  %cont = alloca ptr, align 8
  %failed = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp31 = alloca i64, align 8
  %__mptr41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %__mptr62 = alloca ptr, align 8
  %tmp65 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2224, metadata !DIExpression()), !dbg !2249
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !2225, metadata !DIExpression()), !dbg !2250
  store ptr %undo, ptr %undo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %undo.addr, metadata !2226, metadata !DIExpression()), !dbg !2251
  call void @llvm.lifetime.start.p0(i64 8, ptr %cont) #14, !dbg !2252
  call void @llvm.dbg.declare(metadata ptr %cont, metadata !2227, metadata !DIExpression()), !dbg !2253
  call void @llvm.lifetime.start.p0(i64 8, ptr %failed) #14, !dbg !2252
  call void @llvm.dbg.declare(metadata ptr %failed, metadata !2228, metadata !DIExpression()), !dbg !2254
  store ptr null, ptr %failed, align 8, !dbg !2254
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2255
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2229, metadata !DIExpression()), !dbg !2256
  store i32 0, ptr %ret, align 4, !dbg !2256
  call void @mutex_lock(ptr noundef @attribute_container_mutex) #15, !dbg !2257
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2258
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2230, metadata !DIExpression()), !dbg !2258
  %0 = load ptr, ptr @attribute_container_list, align 8, !dbg !2258
  store ptr %0, ptr %__mptr, align 8, !dbg !2258
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2258
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2258
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2258
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2259
  %2 = load ptr, ptr %tmp, align 8, !dbg !2258
  store ptr %2, ptr %cont, align 8, !dbg !2259
  br label %for.cond, !dbg !2259

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %cont, align 8, !dbg !2260
  %node = getelementptr inbounds %struct.attribute_container, ptr %3, i32 0, i32 0, !dbg !2260
  %cmp = icmp eq ptr %node, @attribute_container_list, !dbg !2260
  %lnot = xor i1 %cmp, true, !dbg !2260
  br i1 %lnot, label %for.body, label %for.end, !dbg !2259

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cont, align 8, !dbg !2261
  %match = getelementptr inbounds %struct.attribute_container, ptr %4, i32 0, i32 5, !dbg !2264
  %5 = load ptr, ptr %match, align 8, !dbg !2264
  %6 = load ptr, ptr %cont, align 8, !dbg !2265
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !2266
  %call = call i32 %5(ptr noundef %6, ptr noundef %7) #15, !dbg !2261
  %tobool = icmp ne i32 %call, 0, !dbg !2261
  br i1 %tobool, label %if.end, label %if.then, !dbg !2267

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !2268

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2269
  %9 = load ptr, ptr %cont, align 8, !dbg !2270
  %10 = load ptr, ptr %fn.addr, align 8, !dbg !2271
  %11 = load ptr, ptr %undo.addr, align 8, !dbg !2272
  %call1 = call i32 @do_attribute_container_device_trigger_safe(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #15, !dbg !2273
  store i32 %call1, ptr %ret, align 4, !dbg !2274
  %12 = load i32, ptr %ret, align 4, !dbg !2275
  %tobool2 = icmp ne i32 %12, 0, !dbg !2275
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2277

if.then3:                                         ; preds = %if.end
  %13 = load ptr, ptr %cont, align 8, !dbg !2278
  store ptr %13, ptr %failed, align 8, !dbg !2280
  br label %for.end, !dbg !2281

if.end4:                                          ; preds = %if.end
  br label %for.inc, !dbg !2282

for.inc:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #14, !dbg !2283
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !2233, metadata !DIExpression()), !dbg !2283
  %14 = load ptr, ptr %cont, align 8, !dbg !2283
  %node6 = getelementptr inbounds %struct.attribute_container, ptr %14, i32 0, i32 0, !dbg !2283
  %next = getelementptr inbounds %struct.list_head, ptr %node6, i32 0, i32 0, !dbg !2283
  %15 = load ptr, ptr %next, align 8, !dbg !2283
  store ptr %15, ptr %__mptr5, align 8, !dbg !2283
  %16 = load ptr, ptr %__mptr5, align 8, !dbg !2283
  %add.ptr8 = getelementptr i8, ptr %16, i64 0, !dbg !2283
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !2283
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #14, !dbg !2260
  %17 = load ptr, ptr %tmp7, align 8, !dbg !2283
  store ptr %17, ptr %cont, align 8, !dbg !2260
  br label %for.cond, !dbg !2260, !llvm.loop !2284

for.end:                                          ; preds = %if.then3, %for.cond
  %18 = load i32, ptr %ret, align 4, !dbg !2286
  %tobool9 = icmp ne i32 %18, 0, !dbg !2286
  br i1 %tobool9, label %land.lhs.true, label %if.end68, !dbg !2287

land.lhs.true:                                    ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2288
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2236, metadata !DIExpression()), !dbg !2288
  %19 = load ptr, ptr %undo.addr, align 8, !dbg !2288
  %tobool10 = icmp ne ptr %19, null, !dbg !2288
  %lnot11 = xor i1 %tobool10, true, !dbg !2288
  %lnot12 = xor i1 %lnot11, true, !dbg !2288
  %lnot13 = xor i1 %lnot12, true, !dbg !2288
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !2288
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2288
  %20 = load i32, ptr %__ret_warn_on, align 4, !dbg !2289
  %tobool14 = icmp ne i32 %20, 0, !dbg !2289
  %lnot15 = xor i1 %tobool14, true, !dbg !2289
  %lnot17 = xor i1 %lnot15, true, !dbg !2289
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !2289
  %conv = sext i32 %lnot.ext18 to i64, !dbg !2289
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2289
  %tobool19 = icmp ne i64 %expval, 0, !dbg !2289
  br i1 %tobool19, label %if.then20, label %if.end30, !dbg !2288

if.then20:                                        ; preds = %land.lhs.true
  br label %do.body, !dbg !2289

do.body:                                          ; preds = %if.then20
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !2290
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2239, metadata !DIExpression()), !dbg !2290
  store i32 2305, ptr %__flags, align 4, !dbg !2290
  br label %do.body21, !dbg !2290

do.body21:                                        ; preds = %do.body
  br label %do.cond, !dbg !2291

do.cond:                                          ; preds = %do.body21
  br label %do.end, !dbg !2291

do.end:                                           ; preds = %do.cond
  br label %do.body22, !dbg !2290

do.body22:                                        ; preds = %do.end
  %21 = load i32, ptr %__flags, align 4, !dbg !2293
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 323, i32 %21, i64 12) #14, !dbg !2293, !srcloc !2295
  br label %do.cond23, !dbg !2293

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !2293

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !2290

do.body25:                                        ; preds = %do.end24
  br label %do.cond26, !dbg !2296

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !2296

do.end27:                                         ; preds = %do.cond26
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !2289
  br label %do.cond28, !dbg !2290

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !2290

do.end29:                                         ; preds = %do.cond28
  br label %if.end30, !dbg !2290

if.end30:                                         ; preds = %do.end29, %land.lhs.true
  %22 = load i32, ptr %__ret_warn_on, align 4, !dbg !2288
  %tobool32 = icmp ne i32 %22, 0, !dbg !2288
  %lnot33 = xor i1 %tobool32, true, !dbg !2288
  %lnot35 = xor i1 %lnot33, true, !dbg !2288
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !2288
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !2288
  %expval38 = call i64 @llvm.expect.i64(i64 %conv37, i64 0), !dbg !2288
  store i64 %expval38, ptr %tmp31, align 8, !dbg !2289
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2298
  %23 = load i64, ptr %tmp31, align 8, !dbg !2288
  %tobool39 = icmp ne i64 %23, 0, !dbg !2298
  br i1 %tobool39, label %if.end68, label %if.then40, !dbg !2299

if.then40:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr41) #14, !dbg !2300
  call void @llvm.dbg.declare(metadata ptr %__mptr41, metadata !2242, metadata !DIExpression()), !dbg !2300
  %24 = load ptr, ptr @attribute_container_list, align 8, !dbg !2300
  store ptr %24, ptr %__mptr41, align 8, !dbg !2300
  %25 = load ptr, ptr %__mptr41, align 8, !dbg !2300
  %add.ptr43 = getelementptr i8, ptr %25, i64 0, !dbg !2300
  store ptr %add.ptr43, ptr %tmp42, align 8, !dbg !2300
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr41) #14, !dbg !2301
  %26 = load ptr, ptr %tmp42, align 8, !dbg !2300
  store ptr %26, ptr %cont, align 8, !dbg !2301
  br label %for.cond44, !dbg !2301

for.cond44:                                       ; preds = %for.inc61, %if.then40
  %27 = load ptr, ptr %cont, align 8, !dbg !2302
  %node45 = getelementptr inbounds %struct.attribute_container, ptr %27, i32 0, i32 0, !dbg !2302
  %cmp46 = icmp eq ptr %node45, @attribute_container_list, !dbg !2302
  %lnot48 = xor i1 %cmp46, true, !dbg !2302
  br i1 %lnot48, label %for.body50, label %for.end67, !dbg !2301

for.body50:                                       ; preds = %for.cond44
  %28 = load ptr, ptr %failed, align 8, !dbg !2303
  %29 = load ptr, ptr %cont, align 8, !dbg !2306
  %cmp51 = icmp eq ptr %28, %29, !dbg !2307
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !2308

if.then53:                                        ; preds = %for.body50
  br label %for.end67, !dbg !2309

if.end54:                                         ; preds = %for.body50
  %30 = load ptr, ptr %cont, align 8, !dbg !2310
  %match55 = getelementptr inbounds %struct.attribute_container, ptr %30, i32 0, i32 5, !dbg !2312
  %31 = load ptr, ptr %match55, align 8, !dbg !2312
  %32 = load ptr, ptr %cont, align 8, !dbg !2313
  %33 = load ptr, ptr %dev.addr, align 8, !dbg !2314
  %call56 = call i32 %31(ptr noundef %32, ptr noundef %33) #15, !dbg !2310
  %tobool57 = icmp ne i32 %call56, 0, !dbg !2310
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !2315

if.then58:                                        ; preds = %if.end54
  br label %for.inc61, !dbg !2316

if.end59:                                         ; preds = %if.end54
  %34 = load ptr, ptr %dev.addr, align 8, !dbg !2317
  %35 = load ptr, ptr %cont, align 8, !dbg !2318
  %36 = load ptr, ptr %undo.addr, align 8, !dbg !2319
  %call60 = call i32 @do_attribute_container_device_trigger_safe(ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef null) #15, !dbg !2320
  br label %for.inc61, !dbg !2321

for.inc61:                                        ; preds = %if.end59, %if.then58
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr62) #14, !dbg !2322
  call void @llvm.dbg.declare(metadata ptr %__mptr62, metadata !2246, metadata !DIExpression()), !dbg !2322
  %37 = load ptr, ptr %cont, align 8, !dbg !2322
  %node63 = getelementptr inbounds %struct.attribute_container, ptr %37, i32 0, i32 0, !dbg !2322
  %next64 = getelementptr inbounds %struct.list_head, ptr %node63, i32 0, i32 0, !dbg !2322
  %38 = load ptr, ptr %next64, align 8, !dbg !2322
  store ptr %38, ptr %__mptr62, align 8, !dbg !2322
  %39 = load ptr, ptr %__mptr62, align 8, !dbg !2322
  %add.ptr66 = getelementptr i8, ptr %39, i64 0, !dbg !2322
  store ptr %add.ptr66, ptr %tmp65, align 8, !dbg !2322
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr62) #14, !dbg !2302
  %40 = load ptr, ptr %tmp65, align 8, !dbg !2322
  store ptr %40, ptr %cont, align 8, !dbg !2302
  br label %for.cond44, !dbg !2302, !llvm.loop !2323

for.end67:                                        ; preds = %if.then53, %for.cond44
  br label %if.end68, !dbg !2325

if.end68:                                         ; preds = %for.end67, %if.end30, %for.end
  call void @mutex_unlock(ptr noundef @attribute_container_mutex) #15, !dbg !2326
  %41 = load i32, ptr %ret, align 4, !dbg !2327
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2328
  call void @llvm.lifetime.end.p0(i64 8, ptr %failed) #14, !dbg !2328
  call void @llvm.lifetime.end.p0(i64 8, ptr %cont) #14, !dbg !2328
  ret i32 %41, !dbg !2329
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_attribute_container_device_trigger_safe(ptr noundef %dev, ptr noundef %cont, ptr noundef %fn, ptr noundef %undo) #0 align 16 !dbg !2330 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %cont.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %undo.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %ic = alloca ptr, align 8
  %failed = alloca ptr, align 8
  %iter = alloca %struct.klist_iter, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %n = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %n19 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  %__mptr24 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  %tmp28 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2334, metadata !DIExpression()), !dbg !2355
  store ptr %cont, ptr %cont.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cont.addr, metadata !2335, metadata !DIExpression()), !dbg !2356
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !2336, metadata !DIExpression()), !dbg !2357
  store ptr %undo, ptr %undo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %undo.addr, metadata !2337, metadata !DIExpression()), !dbg !2358
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2359
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2338, metadata !DIExpression()), !dbg !2360
  call void @llvm.lifetime.start.p0(i64 8, ptr %ic) #14, !dbg !2361
  call void @llvm.dbg.declare(metadata ptr %ic, metadata !2339, metadata !DIExpression()), !dbg !2362
  call void @llvm.lifetime.start.p0(i64 8, ptr %failed) #14, !dbg !2361
  call void @llvm.dbg.declare(metadata ptr %failed, metadata !2340, metadata !DIExpression()), !dbg !2363
  call void @llvm.lifetime.start.p0(i64 16, ptr %iter) #14, !dbg !2364
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !2341, metadata !DIExpression()), !dbg !2365
  %0 = load ptr, ptr %cont.addr, align 8, !dbg !2366
  %call = call i32 @attribute_container_no_classdevs(ptr noundef %0) #15, !dbg !2368
  %tobool = icmp ne i32 %call, 0, !dbg !2368
  br i1 %tobool, label %if.then, label %if.end, !dbg !2369

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fn.addr, align 8, !dbg !2370
  %2 = load ptr, ptr %cont.addr, align 8, !dbg !2371
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2372
  %call1 = call i32 %1(ptr noundef %2, ptr noundef %3, ptr noundef null) #15, !dbg !2370
  store i32 %call1, ptr %retval, align 4, !dbg !2373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2373

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %cont.addr, align 8, !dbg !2374
  %containers = getelementptr inbounds %struct.attribute_container, ptr %4, i32 0, i32 1, !dbg !2374
  call void @klist_iter_init(ptr noundef %containers, ptr noundef %iter) #15, !dbg !2374
  br label %for.cond, !dbg !2374

for.cond:                                         ; preds = %if.end13, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #14, !dbg !2375
  call void @llvm.dbg.declare(metadata ptr %n, metadata !2342, metadata !DIExpression()), !dbg !2375
  %call2 = call ptr @klist_next(ptr noundef %iter) #15, !dbg !2375
  store ptr %call2, ptr %n, align 8, !dbg !2375
  %5 = load ptr, ptr %n, align 8, !dbg !2375
  %tobool3 = icmp ne ptr %5, null, !dbg !2375
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !2375

cond.true:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2376
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2346, metadata !DIExpression()), !dbg !2376
  %6 = load ptr, ptr %n, align 8, !dbg !2376
  store ptr %6, ptr %__mptr, align 8, !dbg !2376
  %7 = load ptr, ptr %__mptr, align 8, !dbg !2376
  %add.ptr = getelementptr i8, ptr %7, i64 0, !dbg !2376
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !2376
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2375
  %8 = load ptr, ptr %tmp4, align 8, !dbg !2376
  br label %cond.end, !dbg !2375

cond.false:                                       ; preds = %for.cond
  call void @klist_iter_exit(ptr noundef %iter) #15, !dbg !2377
  store ptr null, ptr %tmp5, align 8, !dbg !2377
  %9 = load ptr, ptr %tmp5, align 8, !dbg !2377
  br label %cond.end, !dbg !2375

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ %9, %cond.false ], !dbg !2375
  store ptr %cond, ptr %tmp, align 8, !dbg !2375
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #14, !dbg !2379
  %10 = load ptr, ptr %tmp, align 8, !dbg !2375
  store ptr %10, ptr %ic, align 8, !dbg !2379
  %cmp = icmp ne ptr %10, null, !dbg !2379
  br i1 %cmp, label %for.body, label %for.end, !dbg !2374

for.body:                                         ; preds = %cond.end
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !2380
  %12 = load ptr, ptr %ic, align 8, !dbg !2383
  %classdev = getelementptr inbounds %struct.internal_container, ptr %12, i32 0, i32 2, !dbg !2384
  %parent = getelementptr inbounds %struct.device, ptr %classdev, i32 0, i32 1, !dbg !2385
  %13 = load ptr, ptr %parent, align 8, !dbg !2385
  %cmp6 = icmp eq ptr %11, %13, !dbg !2386
  br i1 %cmp6, label %if.then7, label %if.end13, !dbg !2387

if.then7:                                         ; preds = %for.body
  %14 = load ptr, ptr %fn.addr, align 8, !dbg !2388
  %15 = load ptr, ptr %cont.addr, align 8, !dbg !2390
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !2391
  %17 = load ptr, ptr %ic, align 8, !dbg !2392
  %classdev8 = getelementptr inbounds %struct.internal_container, ptr %17, i32 0, i32 2, !dbg !2393
  %call9 = call i32 %14(ptr noundef %15, ptr noundef %16, ptr noundef %classdev8) #15, !dbg !2388
  store i32 %call9, ptr %ret, align 4, !dbg !2394
  %18 = load i32, ptr %ret, align 4, !dbg !2395
  %tobool10 = icmp ne i32 %18, 0, !dbg !2395
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2397

if.then11:                                        ; preds = %if.then7
  %19 = load ptr, ptr %ic, align 8, !dbg !2398
  store ptr %19, ptr %failed, align 8, !dbg !2400
  call void @klist_iter_exit(ptr noundef %iter) #15, !dbg !2401
  br label %fail, !dbg !2402

if.end12:                                         ; preds = %if.then7
  br label %if.end13, !dbg !2403

if.end13:                                         ; preds = %if.end12, %for.body
  br label %for.cond, !dbg !2379, !llvm.loop !2404

for.end:                                          ; preds = %cond.end
  store i32 0, ptr %retval, align 4, !dbg !2406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2406

fail:                                             ; preds = %if.then11
  call void @llvm.dbg.label(metadata !2348), !dbg !2407
  %20 = load ptr, ptr %undo.addr, align 8, !dbg !2408
  %tobool14 = icmp ne ptr %20, null, !dbg !2408
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !2410

if.then15:                                        ; preds = %fail
  %21 = load i32, ptr %ret, align 4, !dbg !2411
  store i32 %21, ptr %retval, align 4, !dbg !2412
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2412

if.end16:                                         ; preds = %fail
  %22 = load ptr, ptr %cont.addr, align 8, !dbg !2413
  %containers17 = getelementptr inbounds %struct.attribute_container, ptr %22, i32 0, i32 1, !dbg !2413
  call void @klist_iter_init(ptr noundef %containers17, ptr noundef %iter) #15, !dbg !2413
  br label %for.cond18, !dbg !2413

for.cond18:                                       ; preds = %if.end42, %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %n19) #14, !dbg !2414
  call void @llvm.dbg.declare(metadata ptr %n19, metadata !2349, metadata !DIExpression()), !dbg !2414
  %call20 = call ptr @klist_next(ptr noundef %iter) #15, !dbg !2414
  store ptr %call20, ptr %n19, align 8, !dbg !2414
  %23 = load ptr, ptr %n19, align 8, !dbg !2414
  %tobool22 = icmp ne ptr %23, null, !dbg !2414
  br i1 %tobool22, label %cond.true23, label %cond.false27, !dbg !2414

cond.true23:                                      ; preds = %for.cond18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr24) #14, !dbg !2415
  call void @llvm.dbg.declare(metadata ptr %__mptr24, metadata !2353, metadata !DIExpression()), !dbg !2415
  %24 = load ptr, ptr %n19, align 8, !dbg !2415
  store ptr %24, ptr %__mptr24, align 8, !dbg !2415
  %25 = load ptr, ptr %__mptr24, align 8, !dbg !2415
  %add.ptr26 = getelementptr i8, ptr %25, i64 0, !dbg !2415
  store ptr %add.ptr26, ptr %tmp25, align 8, !dbg !2415
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr24) #14, !dbg !2414
  %26 = load ptr, ptr %tmp25, align 8, !dbg !2415
  br label %cond.end29, !dbg !2414

cond.false27:                                     ; preds = %for.cond18
  call void @klist_iter_exit(ptr noundef %iter) #15, !dbg !2416
  store ptr null, ptr %tmp28, align 8, !dbg !2416
  %27 = load ptr, ptr %tmp28, align 8, !dbg !2416
  br label %cond.end29, !dbg !2414

cond.end29:                                       ; preds = %cond.false27, %cond.true23
  %cond30 = phi ptr [ %26, %cond.true23 ], [ %27, %cond.false27 ], !dbg !2414
  store ptr %cond30, ptr %tmp21, align 8, !dbg !2414
  call void @llvm.lifetime.end.p0(i64 8, ptr %n19) #14, !dbg !2418
  %28 = load ptr, ptr %tmp21, align 8, !dbg !2414
  store ptr %28, ptr %ic, align 8, !dbg !2418
  %cmp31 = icmp ne ptr %28, null, !dbg !2418
  br i1 %cmp31, label %for.body32, label %for.end43, !dbg !2413

for.body32:                                       ; preds = %cond.end29
  %29 = load ptr, ptr %ic, align 8, !dbg !2419
  %30 = load ptr, ptr %failed, align 8, !dbg !2422
  %cmp33 = icmp eq ptr %29, %30, !dbg !2423
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2424

if.then34:                                        ; preds = %for.body32
  call void @klist_iter_exit(ptr noundef %iter) #15, !dbg !2425
  br label %for.end43, !dbg !2427

if.end35:                                         ; preds = %for.body32
  %31 = load ptr, ptr %dev.addr, align 8, !dbg !2428
  %32 = load ptr, ptr %ic, align 8, !dbg !2430
  %classdev36 = getelementptr inbounds %struct.internal_container, ptr %32, i32 0, i32 2, !dbg !2431
  %parent37 = getelementptr inbounds %struct.device, ptr %classdev36, i32 0, i32 1, !dbg !2432
  %33 = load ptr, ptr %parent37, align 8, !dbg !2432
  %cmp38 = icmp eq ptr %31, %33, !dbg !2433
  br i1 %cmp38, label %if.then39, label %if.end42, !dbg !2434

if.then39:                                        ; preds = %if.end35
  %34 = load ptr, ptr %undo.addr, align 8, !dbg !2435
  %35 = load ptr, ptr %cont.addr, align 8, !dbg !2436
  %36 = load ptr, ptr %dev.addr, align 8, !dbg !2437
  %37 = load ptr, ptr %ic, align 8, !dbg !2438
  %classdev40 = getelementptr inbounds %struct.internal_container, ptr %37, i32 0, i32 2, !dbg !2439
  %call41 = call i32 %34(ptr noundef %35, ptr noundef %36, ptr noundef %classdev40) #15, !dbg !2435
  br label %if.end42, !dbg !2435

if.end42:                                         ; preds = %if.then39, %if.end35
  br label %for.cond18, !dbg !2418, !llvm.loop !2440

for.end43:                                        ; preds = %if.then34, %cond.end29
  %38 = load i32, ptr %ret, align 4, !dbg !2442
  store i32 %38, ptr %retval, align 4, !dbg !2443
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2443

cleanup:                                          ; preds = %for.end43, %if.then15, %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %iter) #14, !dbg !2444
  call void @llvm.lifetime.end.p0(i64 8, ptr %failed) #14, !dbg !2444
  call void @llvm.lifetime.end.p0(i64 8, ptr %ic) #14, !dbg !2444
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2444
  %39 = load i32, ptr %retval, align 4, !dbg !2444
  ret i32 %39, !dbg !2444
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @attribute_container_device_trigger(ptr noundef %dev, ptr noundef %fn) #0 align 16 !dbg !2445 {
entry:
  %dev.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %cont = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ic = alloca ptr, align 8
  %iter = alloca %struct.klist_iter, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %n = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__mptr10 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %__mptr22 = alloca ptr, align 8
  %tmp24 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2447, metadata !DIExpression()), !dbg !2465
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !2448, metadata !DIExpression()), !dbg !2466
  call void @llvm.lifetime.start.p0(i64 8, ptr %cont) #14, !dbg !2467
  call void @llvm.dbg.declare(metadata ptr %cont, metadata !2449, metadata !DIExpression()), !dbg !2468
  call void @mutex_lock(ptr noundef @attribute_container_mutex) #15, !dbg !2469
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2470
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2450, metadata !DIExpression()), !dbg !2470
  %0 = load ptr, ptr @attribute_container_list, align 8, !dbg !2470
  store ptr %0, ptr %__mptr, align 8, !dbg !2470
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2470
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2470
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2470
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2471
  %2 = load ptr, ptr %tmp, align 8, !dbg !2470
  store ptr %2, ptr %cont, align 8, !dbg !2471
  br label %for.cond, !dbg !2471

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %cont, align 8, !dbg !2472
  %node = getelementptr inbounds %struct.attribute_container, ptr %3, i32 0, i32 0, !dbg !2472
  %cmp = icmp eq ptr %node, @attribute_container_list, !dbg !2472
  %lnot = xor i1 %cmp, true, !dbg !2472
  br i1 %lnot, label %for.body, label %for.end26, !dbg !2471

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ic) #14, !dbg !2473
  call void @llvm.dbg.declare(metadata ptr %ic, metadata !2453, metadata !DIExpression()), !dbg !2474
  call void @llvm.lifetime.start.p0(i64 16, ptr %iter) #14, !dbg !2475
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !2456, metadata !DIExpression()), !dbg !2476
  %4 = load ptr, ptr %cont, align 8, !dbg !2477
  %match = getelementptr inbounds %struct.attribute_container, ptr %4, i32 0, i32 5, !dbg !2479
  %5 = load ptr, ptr %match, align 8, !dbg !2479
  %6 = load ptr, ptr %cont, align 8, !dbg !2480
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !2481
  %call = call i32 %5(ptr noundef %6, ptr noundef %7) #15, !dbg !2477
  %tobool = icmp ne i32 %call, 0, !dbg !2477
  br i1 %tobool, label %if.end, label %if.then, !dbg !2482

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2483

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %cont, align 8, !dbg !2484
  %call1 = call i32 @attribute_container_no_classdevs(ptr noundef %8) #15, !dbg !2486
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2486
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !2487

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %fn.addr, align 8, !dbg !2488
  %10 = load ptr, ptr %cont, align 8, !dbg !2490
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !2491
  %call4 = call i32 %9(ptr noundef %10, ptr noundef %11, ptr noundef null) #15, !dbg !2488
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2492

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %cont, align 8, !dbg !2493
  %containers = getelementptr inbounds %struct.attribute_container, ptr %12, i32 0, i32 1, !dbg !2493
  call void @klist_iter_init(ptr noundef %containers, ptr noundef %iter) #15, !dbg !2493
  br label %for.cond6, !dbg !2493

for.cond6:                                        ; preds = %if.end20, %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #14, !dbg !2494
  call void @llvm.dbg.declare(metadata ptr %n, metadata !2457, metadata !DIExpression()), !dbg !2494
  %call7 = call ptr @klist_next(ptr noundef %iter) #15, !dbg !2494
  store ptr %call7, ptr %n, align 8, !dbg !2494
  %13 = load ptr, ptr %n, align 8, !dbg !2494
  %tobool9 = icmp ne ptr %13, null, !dbg !2494
  br i1 %tobool9, label %cond.true, label %cond.false, !dbg !2494

cond.true:                                        ; preds = %for.cond6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr10) #14, !dbg !2495
  call void @llvm.dbg.declare(metadata ptr %__mptr10, metadata !2461, metadata !DIExpression()), !dbg !2495
  %14 = load ptr, ptr %n, align 8, !dbg !2495
  store ptr %14, ptr %__mptr10, align 8, !dbg !2495
  %15 = load ptr, ptr %__mptr10, align 8, !dbg !2495
  %add.ptr12 = getelementptr i8, ptr %15, i64 0, !dbg !2495
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !2495
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr10) #14, !dbg !2494
  %16 = load ptr, ptr %tmp11, align 8, !dbg !2495
  br label %cond.end, !dbg !2494

cond.false:                                       ; preds = %for.cond6
  call void @klist_iter_exit(ptr noundef %iter) #15, !dbg !2496
  store ptr null, ptr %tmp13, align 8, !dbg !2496
  %17 = load ptr, ptr %tmp13, align 8, !dbg !2496
  br label %cond.end, !dbg !2494

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %16, %cond.true ], [ %17, %cond.false ], !dbg !2494
  store ptr %cond, ptr %tmp8, align 8, !dbg !2494
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #14, !dbg !2498
  %18 = load ptr, ptr %tmp8, align 8, !dbg !2494
  store ptr %18, ptr %ic, align 8, !dbg !2498
  %cmp14 = icmp ne ptr %18, null, !dbg !2498
  br i1 %cmp14, label %for.body15, label %for.end, !dbg !2493

for.body15:                                       ; preds = %cond.end
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !2499
  %20 = load ptr, ptr %ic, align 8, !dbg !2502
  %classdev = getelementptr inbounds %struct.internal_container, ptr %20, i32 0, i32 2, !dbg !2503
  %parent = getelementptr inbounds %struct.device, ptr %classdev, i32 0, i32 1, !dbg !2504
  %21 = load ptr, ptr %parent, align 8, !dbg !2504
  %cmp16 = icmp eq ptr %19, %21, !dbg !2505
  br i1 %cmp16, label %if.then17, label %if.end20, !dbg !2506

if.then17:                                        ; preds = %for.body15
  %22 = load ptr, ptr %fn.addr, align 8, !dbg !2507
  %23 = load ptr, ptr %cont, align 8, !dbg !2508
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !2509
  %25 = load ptr, ptr %ic, align 8, !dbg !2510
  %classdev18 = getelementptr inbounds %struct.internal_container, ptr %25, i32 0, i32 2, !dbg !2511
  %call19 = call i32 %22(ptr noundef %23, ptr noundef %24, ptr noundef %classdev18) #15, !dbg !2507
  br label %if.end20, !dbg !2507

if.end20:                                         ; preds = %if.then17, %for.body15
  br label %for.cond6, !dbg !2498, !llvm.loop !2512

for.end:                                          ; preds = %cond.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2514
  br label %cleanup, !dbg !2514

cleanup:                                          ; preds = %for.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %iter) #14, !dbg !2514
  call void @llvm.lifetime.end.p0(i64 8, ptr %ic) #14, !dbg !2514
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2515

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr22) #14, !dbg !2516
  call void @llvm.dbg.declare(metadata ptr %__mptr22, metadata !2463, metadata !DIExpression()), !dbg !2516
  %26 = load ptr, ptr %cont, align 8, !dbg !2516
  %node23 = getelementptr inbounds %struct.attribute_container, ptr %26, i32 0, i32 0, !dbg !2516
  %next = getelementptr inbounds %struct.list_head, ptr %node23, i32 0, i32 0, !dbg !2516
  %27 = load ptr, ptr %next, align 8, !dbg !2516
  store ptr %27, ptr %__mptr22, align 8, !dbg !2516
  %28 = load ptr, ptr %__mptr22, align 8, !dbg !2516
  %add.ptr25 = getelementptr i8, ptr %28, i64 0, !dbg !2516
  store ptr %add.ptr25, ptr %tmp24, align 8, !dbg !2516
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr22) #14, !dbg !2472
  %29 = load ptr, ptr %tmp24, align 8, !dbg !2516
  store ptr %29, ptr %cont, align 8, !dbg !2472
  br label %for.cond, !dbg !2472, !llvm.loop !2517

for.end26:                                        ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @attribute_container_mutex) #15, !dbg !2519
  call void @llvm.lifetime.end.p0(i64 8, ptr %cont) #14, !dbg !2520
  ret void, !dbg !2520

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @attribute_container_trigger(ptr noundef %dev, ptr noundef %fn) #0 align 16 !dbg !2521 {
entry:
  %dev.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %cont = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2525, metadata !DIExpression()), !dbg !2534
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !2526, metadata !DIExpression()), !dbg !2535
  call void @llvm.lifetime.start.p0(i64 8, ptr %cont) #14, !dbg !2536
  call void @llvm.dbg.declare(metadata ptr %cont, metadata !2527, metadata !DIExpression()), !dbg !2537
  call void @mutex_lock(ptr noundef @attribute_container_mutex) #15, !dbg !2538
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2539
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2528, metadata !DIExpression()), !dbg !2539
  %0 = load ptr, ptr @attribute_container_list, align 8, !dbg !2539
  store ptr %0, ptr %__mptr, align 8, !dbg !2539
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2539
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2539
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2539
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2540
  %2 = load ptr, ptr %tmp, align 8, !dbg !2539
  store ptr %2, ptr %cont, align 8, !dbg !2540
  br label %for.cond, !dbg !2540

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %cont, align 8, !dbg !2541
  %node = getelementptr inbounds %struct.attribute_container, ptr %3, i32 0, i32 0, !dbg !2541
  %cmp = icmp eq ptr %node, @attribute_container_list, !dbg !2541
  %lnot = xor i1 %cmp, true, !dbg !2541
  br i1 %lnot, label %for.body, label %for.end, !dbg !2540

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cont, align 8, !dbg !2542
  %match = getelementptr inbounds %struct.attribute_container, ptr %4, i32 0, i32 5, !dbg !2545
  %5 = load ptr, ptr %match, align 8, !dbg !2545
  %6 = load ptr, ptr %cont, align 8, !dbg !2546
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !2547
  %call = call i32 %5(ptr noundef %6, ptr noundef %7) #15, !dbg !2542
  %tobool = icmp ne i32 %call, 0, !dbg !2542
  br i1 %tobool, label %if.then, label %if.end, !dbg !2548

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %fn.addr, align 8, !dbg !2549
  %9 = load ptr, ptr %cont, align 8, !dbg !2550
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !2551
  %call1 = call i32 %8(ptr noundef %9, ptr noundef %10) #15, !dbg !2549
  br label %if.end, !dbg !2549

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2552

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #14, !dbg !2553
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !2531, metadata !DIExpression()), !dbg !2553
  %11 = load ptr, ptr %cont, align 8, !dbg !2553
  %node3 = getelementptr inbounds %struct.attribute_container, ptr %11, i32 0, i32 0, !dbg !2553
  %next = getelementptr inbounds %struct.list_head, ptr %node3, i32 0, i32 0, !dbg !2553
  %12 = load ptr, ptr %next, align 8, !dbg !2553
  store ptr %12, ptr %__mptr2, align 8, !dbg !2553
  %13 = load ptr, ptr %__mptr2, align 8, !dbg !2553
  %add.ptr5 = getelementptr i8, ptr %13, i64 0, !dbg !2553
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !2553
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #14, !dbg !2541
  %14 = load ptr, ptr %tmp4, align 8, !dbg !2553
  store ptr %14, ptr %cont, align 8, !dbg !2541
  br label %for.cond, !dbg !2541, !llvm.loop !2554

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @attribute_container_mutex) #15, !dbg !2556
  call void @llvm.lifetime.end.p0(i64 8, ptr %cont) #14, !dbg !2557
  ret void, !dbg !2557
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @attribute_container_add_attrs(ptr noundef %classdev) #0 align 16 !dbg !2558 {
entry:
  %retval = alloca i32, align 4
  %classdev.addr = alloca ptr, align 8
  %cont = alloca ptr, align 8
  %attrs = alloca ptr, align 8
  %i = alloca i32, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %classdev, ptr %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %classdev.addr, metadata !2560, metadata !DIExpression()), !dbg !2565
  call void @llvm.lifetime.start.p0(i64 8, ptr %cont) #14, !dbg !2566
  call void @llvm.dbg.declare(metadata ptr %cont, metadata !2561, metadata !DIExpression()), !dbg !2567
  %0 = load ptr, ptr %classdev.addr, align 8, !dbg !2568
  %call = call ptr @attribute_container_classdev_to_container(ptr noundef %0) #15, !dbg !2569
  store ptr %call, ptr %cont, align 8, !dbg !2567
  call void @llvm.lifetime.start.p0(i64 8, ptr %attrs) #14, !dbg !2570
  call void @llvm.dbg.declare(metadata ptr %attrs, metadata !2562, metadata !DIExpression()), !dbg !2571
  %1 = load ptr, ptr %cont, align 8, !dbg !2572
  %attrs1 = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 4, !dbg !2573
  %2 = load ptr, ptr %attrs1, align 8, !dbg !2573
  store ptr %2, ptr %attrs, align 8, !dbg !2571
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2574
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2563, metadata !DIExpression()), !dbg !2575
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #14, !dbg !2574
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2564, metadata !DIExpression()), !dbg !2576
  br label %do.body, !dbg !2577

do.body:                                          ; preds = %entry
  %3 = load ptr, ptr %attrs, align 8, !dbg !2578
  %tobool = icmp ne ptr %3, null, !dbg !2578
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2578

land.rhs:                                         ; preds = %do.body
  %4 = load ptr, ptr %cont, align 8, !dbg !2578
  %grp = getelementptr inbounds %struct.attribute_container, ptr %4, i32 0, i32 3, !dbg !2578
  %5 = load ptr, ptr %grp, align 8, !dbg !2578
  %tobool2 = icmp ne ptr %5, null, !dbg !2578
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body
  %6 = phi i1 [ false, %do.body ], [ %tobool2, %land.rhs ], !dbg !2581
  %lnot = xor i1 %6, true, !dbg !2578
  %lnot3 = xor i1 %lnot, true, !dbg !2578
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2578
  %conv = sext i32 %lnot.ext to i64, !dbg !2578
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2578
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2578
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2582

if.then:                                          ; preds = %land.end
  br label %do.body5, !dbg !2578

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !2583

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !2585

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !2585

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !2583

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 424, i32 0, i64 12) #14, !dbg !2587, !srcloc !2589
  br label %do.cond8, !dbg !2587

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2587

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !2583

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !2583

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !2583

if.end:                                           ; preds = %do.end11, %land.end
  br label %do.cond12, !dbg !2582

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !2582

do.end13:                                         ; preds = %do.cond12
  %7 = load ptr, ptr %attrs, align 8, !dbg !2590
  %tobool14 = icmp ne ptr %7, null, !dbg !2590
  br i1 %tobool14, label %if.end18, label %land.lhs.true, !dbg !2592

land.lhs.true:                                    ; preds = %do.end13
  %8 = load ptr, ptr %cont, align 8, !dbg !2593
  %grp15 = getelementptr inbounds %struct.attribute_container, ptr %8, i32 0, i32 3, !dbg !2594
  %9 = load ptr, ptr %grp15, align 8, !dbg !2594
  %tobool16 = icmp ne ptr %9, null, !dbg !2593
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !2595

if.then17:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !2596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2596

if.end18:                                         ; preds = %land.lhs.true, %do.end13
  %10 = load ptr, ptr %cont, align 8, !dbg !2597
  %grp19 = getelementptr inbounds %struct.attribute_container, ptr %10, i32 0, i32 3, !dbg !2599
  %11 = load ptr, ptr %grp19, align 8, !dbg !2599
  %tobool20 = icmp ne ptr %11, null, !dbg !2597
  br i1 %tobool20, label %if.then21, label %if.end24, !dbg !2600

if.then21:                                        ; preds = %if.end18
  %12 = load ptr, ptr %classdev.addr, align 8, !dbg !2601
  %kobj = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 0, !dbg !2602
  %13 = load ptr, ptr %cont, align 8, !dbg !2603
  %grp22 = getelementptr inbounds %struct.attribute_container, ptr %13, i32 0, i32 3, !dbg !2604
  %14 = load ptr, ptr %grp22, align 8, !dbg !2604
  %call23 = call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef %14) #15, !dbg !2605
  store i32 %call23, ptr %retval, align 4, !dbg !2606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2606

if.end24:                                         ; preds = %if.end18
  store i32 0, ptr %i, align 4, !dbg !2607
  br label %for.cond, !dbg !2609

for.cond:                                         ; preds = %for.inc, %if.end24
  %15 = load ptr, ptr %attrs, align 8, !dbg !2610
  %16 = load i32, ptr %i, align 4, !dbg !2612
  %idxprom = sext i32 %16 to i64, !dbg !2610
  %arrayidx = getelementptr ptr, ptr %15, i64 %idxprom, !dbg !2610
  %17 = load ptr, ptr %arrayidx, align 8, !dbg !2610
  %tobool25 = icmp ne ptr %17, null, !dbg !2613
  br i1 %tobool25, label %for.body, label %for.end, !dbg !2613

for.body:                                         ; preds = %for.cond
  br label %do.body26, !dbg !2614

do.body26:                                        ; preds = %for.body
  br label %do.cond27, !dbg !2616

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !2616

do.end28:                                         ; preds = %do.cond27
  %18 = load ptr, ptr %classdev.addr, align 8, !dbg !2618
  %19 = load ptr, ptr %attrs, align 8, !dbg !2619
  %20 = load i32, ptr %i, align 4, !dbg !2620
  %idxprom29 = sext i32 %20 to i64, !dbg !2619
  %arrayidx30 = getelementptr ptr, ptr %19, i64 %idxprom29, !dbg !2619
  %21 = load ptr, ptr %arrayidx30, align 8, !dbg !2619
  %call31 = call i32 @device_create_file(ptr noundef %18, ptr noundef %21) #15, !dbg !2621
  store i32 %call31, ptr %error, align 4, !dbg !2622
  %22 = load i32, ptr %error, align 4, !dbg !2623
  %tobool32 = icmp ne i32 %22, 0, !dbg !2623
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !2625

if.then33:                                        ; preds = %do.end28
  %23 = load i32, ptr %error, align 4, !dbg !2626
  store i32 %23, ptr %retval, align 4, !dbg !2627
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2627

if.end34:                                         ; preds = %do.end28
  br label %for.inc, !dbg !2628

for.inc:                                          ; preds = %if.end34
  %24 = load i32, ptr %i, align 4, !dbg !2629
  %inc = add i32 %24, 1, !dbg !2629
  store i32 %inc, ptr %i, align 4, !dbg !2629
  br label %for.cond, !dbg !2630, !llvm.loop !2631

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2633

cleanup:                                          ; preds = %for.end, %if.then33, %if.then21, %if.then17
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #14, !dbg !2634
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2634
  call void @llvm.lifetime.end.p0(i64 8, ptr %attrs) #14, !dbg !2634
  call void @llvm.lifetime.end.p0(i64 8, ptr %cont) #14, !dbg !2634
  %25 = load i32, ptr %retval, align 4, !dbg !2634
  ret i32 %25, !dbg !2634
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2635 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2638 dso_local i32 @device_create_file(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2643 dso_local i32 @device_add(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @attribute_container_add_class_device_adapter(ptr noundef %cont, ptr noundef %dev, ptr noundef %classdev) #0 align 16 !dbg !2644 {
entry:
  %cont.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %classdev.addr = alloca ptr, align 8
  store ptr %cont, ptr %cont.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cont.addr, metadata !2646, metadata !DIExpression()), !dbg !2649
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2647, metadata !DIExpression()), !dbg !2650
  store ptr %classdev, ptr %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %classdev.addr, metadata !2648, metadata !DIExpression()), !dbg !2651
  %0 = load ptr, ptr %classdev.addr, align 8, !dbg !2652
  %call = call i32 @attribute_container_add_class_device(ptr noundef %0) #15, !dbg !2653
  ret i32 %call, !dbg !2654
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2655 dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2658 dso_local void @device_remove_file(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @attribute_container_class_device_del(ptr noundef %classdev) #0 align 16 !dbg !2661 {
entry:
  %classdev.addr = alloca ptr, align 8
  store ptr %classdev, ptr %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %classdev.addr, metadata !2663, metadata !DIExpression()), !dbg !2664
  %0 = load ptr, ptr %classdev.addr, align 8, !dbg !2665
  call void @attribute_container_remove_attrs(ptr noundef %0) #15, !dbg !2666
  %1 = load ptr, ptr %classdev.addr, align 8, !dbg !2667
  call void @device_del(ptr noundef %1) #15, !dbg !2668
  ret void, !dbg !2669
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2670 dso_local void @device_del(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @attribute_container_find_class_device(ptr noundef %cont, ptr noundef %dev) #0 align 16 !dbg !2671 {
entry:
  %cont.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %cdev = alloca ptr, align 8
  %ic = alloca ptr, align 8
  %iter = alloca %struct.klist_iter, align 8
  %n = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %cont, ptr %cont.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cont.addr, metadata !2675, metadata !DIExpression()), !dbg !2686
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2676, metadata !DIExpression()), !dbg !2687
  call void @llvm.lifetime.start.p0(i64 8, ptr %cdev) #14, !dbg !2688
  call void @llvm.dbg.declare(metadata ptr %cdev, metadata !2677, metadata !DIExpression()), !dbg !2689
  store ptr null, ptr %cdev, align 8, !dbg !2689
  call void @llvm.lifetime.start.p0(i64 8, ptr %ic) #14, !dbg !2690
  call void @llvm.dbg.declare(metadata ptr %ic, metadata !2678, metadata !DIExpression()), !dbg !2691
  call void @llvm.lifetime.start.p0(i64 16, ptr %iter) #14, !dbg !2692
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !2679, metadata !DIExpression()), !dbg !2693
  %0 = load ptr, ptr %cont.addr, align 8, !dbg !2694
  %containers = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 1, !dbg !2694
  call void @klist_iter_init(ptr noundef %containers, ptr noundef %iter) #15, !dbg !2694
  br label %for.cond, !dbg !2694

for.cond:                                         ; preds = %if.end, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #14, !dbg !2695
  call void @llvm.dbg.declare(metadata ptr %n, metadata !2680, metadata !DIExpression()), !dbg !2695
  %call = call ptr @klist_next(ptr noundef %iter) #15, !dbg !2695
  store ptr %call, ptr %n, align 8, !dbg !2695
  %1 = load ptr, ptr %n, align 8, !dbg !2695
  %tobool = icmp ne ptr %1, null, !dbg !2695
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2695

cond.true:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2696
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2684, metadata !DIExpression()), !dbg !2696
  %2 = load ptr, ptr %n, align 8, !dbg !2696
  store ptr %2, ptr %__mptr, align 8, !dbg !2696
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2696
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !2696
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !2696
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2695
  %4 = load ptr, ptr %tmp1, align 8, !dbg !2696
  br label %cond.end, !dbg !2695

cond.false:                                       ; preds = %for.cond
  call void @klist_iter_exit(ptr noundef %iter) #15, !dbg !2697
  store ptr null, ptr %tmp2, align 8, !dbg !2697
  %5 = load ptr, ptr %tmp2, align 8, !dbg !2697
  br label %cond.end, !dbg !2695

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ %5, %cond.false ], !dbg !2695
  store ptr %cond, ptr %tmp, align 8, !dbg !2695
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #14, !dbg !2699
  %6 = load ptr, ptr %tmp, align 8, !dbg !2695
  store ptr %6, ptr %ic, align 8, !dbg !2699
  %cmp = icmp ne ptr %6, null, !dbg !2699
  br i1 %cmp, label %for.body, label %for.end, !dbg !2694

for.body:                                         ; preds = %cond.end
  %7 = load ptr, ptr %ic, align 8, !dbg !2700
  %classdev = getelementptr inbounds %struct.internal_container, ptr %7, i32 0, i32 2, !dbg !2703
  %parent = getelementptr inbounds %struct.device, ptr %classdev, i32 0, i32 1, !dbg !2704
  %8 = load ptr, ptr %parent, align 8, !dbg !2704
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2705
  %cmp3 = icmp eq ptr %8, %9, !dbg !2706
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2707

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %ic, align 8, !dbg !2708
  %classdev4 = getelementptr inbounds %struct.internal_container, ptr %10, i32 0, i32 2, !dbg !2710
  store ptr %classdev4, ptr %cdev, align 8, !dbg !2711
  call void @klist_iter_exit(ptr noundef %iter) #15, !dbg !2712
  br label %for.end, !dbg !2713

if.end:                                           ; preds = %for.body
  br label %for.cond, !dbg !2699, !llvm.loop !2714

for.end:                                          ; preds = %if.then, %cond.end
  %11 = load ptr, ptr %cdev, align 8, !dbg !2716
  call void @llvm.lifetime.end.p0(i64 16, ptr %iter) #14, !dbg !2717
  call void @llvm.lifetime.end.p0(i64 8, ptr %ic) #14, !dbg !2717
  call void @llvm.lifetime.end.p0(i64 8, ptr %cdev) #14, !dbg !2717
  ret ptr %11, !dbg !2718
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2719 dso_local void @put_device(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !2720 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2724, metadata !DIExpression()), !dbg !2727
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2725, metadata !DIExpression()), !dbg !2728
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2726, metadata !DIExpression()), !dbg !2729
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2730
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !2732
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2733
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15, !dbg !2734
  br i1 %call, label %if.end, label %if.then, !dbg !2735

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !2736

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !2737
  %4 = load ptr, ptr %next.addr, align 8, !dbg !2738
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !2739
  store ptr %3, ptr %prev1, align 8, !dbg !2740
  %5 = load ptr, ptr %next.addr, align 8, !dbg !2741
  %6 = load ptr, ptr %new.addr, align 8, !dbg !2742
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !2743
  store ptr %5, ptr %next2, align 8, !dbg !2744
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !2745
  %8 = load ptr, ptr %new.addr, align 8, !dbg !2746
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !2747
  store ptr %7, ptr %prev3, align 8, !dbg !2748
  br label %do.body, !dbg !2749

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !2750

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !2752

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !2750

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !2754
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !2754
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !2754
  store volatile ptr %9, ptr %next6, align 8, !dbg !2754
  br label %do.end7, !dbg !2754

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !2750

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !2756
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !2757 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2761, metadata !DIExpression()), !dbg !2764
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2762, metadata !DIExpression()), !dbg !2765
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2763, metadata !DIExpression()), !dbg !2766
  ret i1 true, !dbg !2767
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2768 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !2773 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2775, metadata !DIExpression()), !dbg !2776
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2777
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #15, !dbg !2779
  br i1 %call, label %if.end, label %if.then, !dbg !2780

if.then:                                          ; preds = %entry
  br label %return, !dbg !2781

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2782
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2783
  %2 = load ptr, ptr %prev, align 8, !dbg !2783
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !2784
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2785
  %4 = load ptr, ptr %next, align 8, !dbg !2785
  call void @__list_del(ptr noundef %2, ptr noundef %4) #15, !dbg !2786
  br label %return, !dbg !2787

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2787
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !2788 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2792, metadata !DIExpression()), !dbg !2793
  ret i1 true, !dbg !2794
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !2795 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2797, metadata !DIExpression()), !dbg !2799
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2798, metadata !DIExpression()), !dbg !2800
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !2801
  %1 = load ptr, ptr %next.addr, align 8, !dbg !2802
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2803
  store ptr %0, ptr %prev1, align 8, !dbg !2804
  br label %do.body, !dbg !2805

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2806

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !2808

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !2806

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2810
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !2810
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2810
  store volatile ptr %2, ptr %next4, align 8, !dbg !2810
  br label %do.end5, !dbg !2810

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !2806

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !2812
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2813 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !2814 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2816, metadata !DIExpression()), !dbg !2821
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2817, metadata !DIExpression()), !dbg !2822
  %0 = load i64, ptr %size.addr, align 8, !dbg !2823
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2824
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2825

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2826
  %tobool = icmp ne i64 %2, 0, !dbg !2826
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2827

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !2828
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2818, metadata !DIExpression()), !dbg !2829
  %3 = load i64, ptr %size.addr, align 8, !dbg !2830
  %cmp = icmp ugt i64 %3, 8192, !dbg !2832
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2833

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2834
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2835
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !2836
  store ptr %call, ptr %retval, align 8, !dbg !2837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2837

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2838
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !2838
  store i32 %call2, ptr %index, align 4, !dbg !2839
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2840
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2841
  %9 = ptrtoint ptr %8 to i64, !dbg !2841
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !2842
  %idxprom = zext i32 %call3 to i64, !dbg !2843
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2843
  %10 = load i32, ptr %index, align 4, !dbg !2844
  %idxprom4 = zext i32 %10 to i64, !dbg !2843
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2843
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2843
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2845
  %13 = load i64, ptr %size.addr, align 8, !dbg !2846
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !2847
  store ptr %call6, ptr %retval, align 8, !dbg !2848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2848

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !2849
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2850
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2851
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !2852
  store ptr %call8, ptr %retval, align 8, !dbg !2853
  br label %return, !dbg !2853

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2854
  ret ptr %16, !dbg !2854
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2855 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !2856 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2860, metadata !DIExpression()), !dbg !2862
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2861, metadata !DIExpression()), !dbg !2863
  %0 = load i64, ptr %size.addr, align 8, !dbg !2864
  %tobool = icmp ne i64 %0, 0, !dbg !2864
  br i1 %tobool, label %if.end, label %if.then, !dbg !2866

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2867
  br label %return, !dbg !2867

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2868
  %cmp = icmp ule i64 %1, 8, !dbg !2870
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2871

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2872
  br label %return, !dbg !2872

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2873
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2875
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2876

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2877
  %cmp4 = icmp ule i64 %3, 96, !dbg !2878
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2879

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2880
  br label %return, !dbg !2880

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2881
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2883
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2884

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2885
  %cmp9 = icmp ule i64 %5, 192, !dbg !2886
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2887

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2888
  br label %return, !dbg !2888

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2889
  %cmp12 = icmp ule i64 %6, 8, !dbg !2891
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2892

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2893
  br label %return, !dbg !2893

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2894
  %cmp15 = icmp ule i64 %7, 16, !dbg !2896
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2897

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2898
  br label %return, !dbg !2898

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2899
  %cmp18 = icmp ule i64 %8, 32, !dbg !2901
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2902

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2903
  br label %return, !dbg !2903

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2904
  %cmp21 = icmp ule i64 %9, 64, !dbg !2906
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2907

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2908
  br label %return, !dbg !2908

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2909
  %cmp24 = icmp ule i64 %10, 128, !dbg !2911
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2912

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2913
  br label %return, !dbg !2913

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2914
  %cmp27 = icmp ule i64 %11, 256, !dbg !2916
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2917

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2918
  br label %return, !dbg !2918

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2919
  %cmp30 = icmp ule i64 %12, 512, !dbg !2921
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2922

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2923
  br label %return, !dbg !2923

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2924
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2926
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2927

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2928
  br label %return, !dbg !2928

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2929
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2931
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2932

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2933
  br label %return, !dbg !2933

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2934
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2936
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2937

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2938
  br label %return, !dbg !2938

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2939
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2941
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2942

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2943
  br label %return, !dbg !2943

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2944
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2946
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2947

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2948
  br label %return, !dbg !2948

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2949
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2951
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2952

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2953
  br label %return, !dbg !2953

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2954
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2956
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2957

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2958
  br label %return, !dbg !2958

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2959
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2961
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2962

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2963
  br label %return, !dbg !2963

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2964
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2966
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2967

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2968
  br label %return, !dbg !2968

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2969
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2971
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2972

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2973
  br label %return, !dbg !2973

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2974
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2976
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2977

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2978
  br label %return, !dbg !2978

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2979
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2981
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2982

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2983
  br label %return, !dbg !2983

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2984, !range !2986, !noundef !531
  %tobool69 = trunc i8 %25 to i1, !dbg !2984
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2987

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2988

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #19, !dbg !2989, !srcloc !2992
  unreachable, !dbg !2989

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2993

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2994

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2995

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2997

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2995

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #14, !dbg !2999, !srcloc !3001
  br label %do.end75, !dbg !2999

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2995

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3002
  br label %return, !dbg !3002

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3003
  ret i32 %26, !dbg !3003
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3004 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !3010 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3014, metadata !DIExpression()), !dbg !3016
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3015, metadata !DIExpression()), !dbg !3017
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3018
  %and = and i32 %0, 17, !dbg !3018
  %cmp = icmp eq i32 %and, 0, !dbg !3018
  %lnot = xor i1 %cmp, true, !dbg !3018
  %lnot1 = xor i1 %lnot, true, !dbg !3018
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3018
  %conv = sext i32 %lnot.ext to i64, !dbg !3018
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3018
  %tobool = icmp ne i64 %expval, 0, !dbg !3018
  br i1 %tobool, label %if.then, label %if.end, !dbg !3020

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3021
  br label %return, !dbg !3021

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3022
  %and2 = and i32 %1, 1, !dbg !3024
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3024
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3025

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3026
  br label %return, !dbg !3026

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3027
  br label %return, !dbg !3027

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3029
  ret i32 %2, !dbg !3029
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3030 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3031 dso_local void @__compiletime_assert_204() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3032 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #3 align 16 !dbg !3035 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3037, metadata !DIExpression()), !dbg !3038
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3039
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !3040
  %1 = load ptr, ptr %name, align 8, !dbg !3040
  ret ptr %1, !dbg !3041
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677}
!llvm.ident = !{!1678}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_attribute_container_classdev_to_container205", scope: !2, file: !3, line: 60, type: !94, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.attribute_container.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/attribute_container\22 -D KBUILD_BASENAME=\22attribute_container\22 -D KBUILD_MODNAME=\22attribute_container\22 -D __KBUILD_MODNAME=kmod_attribute_container -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/attribute_container.ll drivers/base/attribute_container.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !93, globals: !1641, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/attribute_container.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e510f421b3019a7022c7316988682800")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !83}
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
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !84, line: 364, baseType: !7, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!85 = !{!86, !87, !88, !89, !90, !91, !92}
!86 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!87 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!88 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!89 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!90 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!91 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!92 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!93 = !{!94, !95, !125, !1636, !1637, !1639, !290}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "internal_container", file: !3, line: 25, size: 6144, elements: !97)
!97 = !{!98, !124, !1635}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !96, file: !3, line: 26, baseType: !99, size: 256)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !100, line: 37, size: 256, elements: !101)
!100 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd49af8b7fc11d3fd997e9c112ace59a")
!101 = !{!102, !103, !110}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !99, file: !100, line: 38, baseType: !94, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !99, file: !100, line: 39, baseType: !104, size: 128, offset: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !105, line: 190, size: 128, elements: !106)
!105 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!106 = !{!107, !109}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !105, line: 191, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !104, file: !105, line: 191, baseType: !108, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !99, file: !100, line: 40, baseType: !111, size: 32, offset: 192)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !112, line: 19, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !111, file: !112, line: 20, baseType: !115, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !116, line: 113, baseType: !117)
!116 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !116, line: 111, size: 32, elements: !118)
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !117, file: !116, line: 112, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !105, line: 174, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !105, line: 172, size: 32, elements: !122)
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !121, file: !105, line: 173, baseType: !46, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "cont", scope: !96, file: !3, line: 27, baseType: !125, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_container", file: !127, line: 16, size: 768, elements: !128)
!127 = !DIFile(filename: "./include/linux/attribute_container.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "693585871664ed4d3c31cbad8ead9d64")
!128 = !{!129, !130, !179, !1615, !1616, !1630, !1634}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !126, file: !127, line: 17, baseType: !104, size: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "containers", scope: !126, file: !127, line: 18, baseType: !131, size: 320, align: 64, offset: 128)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !100, line: 18, size: 320, align: 64, elements: !132)
!132 = !{!133, !172, !173, !178}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !131, file: !100, line: 19, baseType: !134, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !135, line: 29, baseType: !136)
!135 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !135, line: 17, size: 32, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !135, line: 18, baseType: !139, size: 32)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !135, line: 18, size: 32, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !139, file: !135, line: 19, baseType: !142, size: 32)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !143, line: 14, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !142, file: !143, line: 15, baseType: !146, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !147, line: 44, baseType: !148)
!147 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !147, line: 14, size: 32, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, scope: !148, file: !147, line: 15, baseType: !151, size: 32)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !148, file: !147, line: 15, size: 32, elements: !152)
!152 = !{!153, !154, !164}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !151, file: !147, line: 16, baseType: !120, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !147, line: 24, baseType: !155, size: 16)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !147, line: 24, size: 16, elements: !156)
!156 = !{!157, !163}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !155, file: !147, line: 25, baseType: !158, size: 8)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !159, line: 17, baseType: !160)
!159 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !161, line: 21, baseType: !162)
!161 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!162 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !155, file: !147, line: 26, baseType: !158, size: 8, offset: 8)
!164 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !147, line: 28, baseType: !165, size: 32)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !147, line: 28, size: 32, elements: !166)
!166 = !{!167, !171}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !165, file: !147, line: 29, baseType: !168, size: 16)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !159, line: 19, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !161, line: 24, baseType: !170)
!170 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !165, file: !147, line: 30, baseType: !168, size: 16, offset: 16)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !131, file: !100, line: 20, baseType: !104, size: 128, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !131, file: !100, line: 21, baseType: !174, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !131, file: !100, line: 22, baseType: !174, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !126, file: !127, line: 19, baseType: !180, size: 64, offset: 448)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !182, line: 52, size: 768, elements: !183)
!182 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!183 = !{!184, !188, !796, !797, !1595, !1599, !1603, !1604, !1605, !1606, !1610, !1614}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !181, file: !182, line: 53, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !181, file: !182, line: 55, baseType: !189, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !193, line: 84, size: 320, elements: !194)
!193 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!194 = !{!195, !196, !767, !792, !794}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !192, file: !193, line: 85, baseType: !185, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !192, file: !193, line: 86, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!200, !201, !278, !46}
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !105, line: 24, baseType: !170)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !203, line: 64, size: 512, elements: !204)
!203 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!204 = !{!205, !206, !207, !208, !255, !350, !761, !762, !763, !764, !765, !766}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !203, line: 65, baseType: !185, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !202, file: !203, line: 66, baseType: !104, size: 128, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !202, file: !203, line: 67, baseType: !201, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !202, file: !203, line: 68, baseType: !209, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !203, line: 168, size: 768, elements: !211)
!211 = !{!212, !213, !214, !215}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !210, file: !203, line: 169, baseType: !104, size: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !210, file: !203, line: 170, baseType: !134, size: 32, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !210, file: !203, line: 171, baseType: !202, size: 512, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !210, file: !203, line: 172, baseType: !216, size: 64, offset: 704)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !203, line: 133, size: 192, elements: !219)
!219 = !{!220, !227, !232}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !218, file: !203, line: 134, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!46, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !203, line: 135, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!185, !225}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !218, file: !203, line: 136, baseType: !233, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!46, !225, !237}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !203, line: 125, size: 20736, elements: !239)
!239 = !{!240, !245, !249, !250, !254}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !238, file: !203, line: 126, baseType: !241, size: 192)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 192, elements: !243)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!243 = !{!244}
!244 = !DISubrange(count: 3)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !238, file: !203, line: 127, baseType: !246, size: 4096, offset: 192)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 4096, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !238, file: !203, line: 128, baseType: !46, size: 32, offset: 4288)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !238, file: !203, line: 129, baseType: !251, size: 16384, offset: 4320)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 16384, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 2048)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !238, file: !203, line: 130, baseType: !46, size: 32, offset: 20704)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !202, file: !203, line: 69, baseType: !256, size: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !203, line: 116, size: 384, elements: !259)
!259 = !{!260, !264, !291, !292, !327, !331}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !258, file: !203, line: 117, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !201}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !258, file: !203, line: 118, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !193, line: 254, size: 128, elements: !268)
!268 = !{!269, !283}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !267, file: !193, line: 255, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !201, !278, !242}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !105, line: 66, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !275, line: 73, baseType: !276)
!275 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !275, line: 15, baseType: !277)
!277 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !193, line: 30, size: 128, elements: !280)
!280 = !{!281, !282}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !279, file: !193, line: 31, baseType: !185, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !279, file: !193, line: 32, baseType: !200, size: 16, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !267, file: !193, line: 256, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!273, !201, !278, !185, !287}
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 61, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !275, line: 72, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !275, line: 16, baseType: !290)
!290 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !258, file: !203, line: 119, baseType: !189, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !258, file: !203, line: 120, baseType: !293, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!296, !225}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !299)
!299 = !{!300, !301, !307, !311, !319, !323}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !298, file: !6, line: 40, baseType: !5, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !298, file: !6, line: 41, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !105, line: 35, baseType: !306)
!306 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !298, file: !6, line: 42, baseType: !308, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!94}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !298, file: !6, line: 43, baseType: !312, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!315, !317}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !298, file: !6, line: 44, baseType: !320, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!315}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !298, file: !6, line: 45, baseType: !324, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !94}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !258, file: !203, line: 121, baseType: !328, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!315, !225}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !258, file: !203, line: 122, baseType: !332, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !225, !335, !343}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !337, line: 23, baseType: !338)
!337 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !337, line: 21, size: 32, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !338, file: !337, line: 22, baseType: !341, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !105, line: 37, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !275, line: 49, baseType: !7)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !337, line: 28, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !337, line: 26, size: 32, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !345, file: !337, line: 27, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !105, line: 38, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !275, line: 50, baseType: !7)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !202, file: !203, line: 70, baseType: !351, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !353, line: 190, size: 1152, elements: !354)
!353 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!354 = !{!355, !356, !357, !358, !359, !367, !368, !369, !753, !754, !755, !756, !757, !760}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !352, file: !353, line: 191, baseType: !120, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !352, file: !353, line: 192, baseType: !120, size: 32, offset: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !352, file: !353, line: 202, baseType: !351, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !352, file: !353, line: 203, baseType: !185, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !352, file: !353, line: 205, baseType: !360, size: 192, align: 64, offset: 192)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !361, line: 5, size: 192, align: 64, elements: !362)
!361 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!362 = !{!363, !364, !366}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !360, file: !361, line: 6, baseType: !290, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !360, file: !361, line: 7, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !360, file: !361, line: 8, baseType: !365, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !352, file: !353, line: 207, baseType: !315, size: 64, offset: 384)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !352, file: !353, line: 208, baseType: !7, size: 32, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !353, line: 209, baseType: !370, size: 256, offset: 512)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !353, line: 209, size: 256, elements: !371)
!371 = !{!372, !384, !388}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !370, file: !353, line: 210, baseType: !373, size: 256)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !353, line: 153, size: 256, elements: !374)
!374 = !{!375, !376, !380, !383}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !373, file: !353, line: 154, baseType: !290, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !373, file: !353, line: 156, baseType: !377, size: 64, offset: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !361, line: 12, size: 64, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !377, file: !361, line: 13, baseType: !365, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !373, file: !353, line: 162, baseType: !381, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !353, line: 162, flags: DIFlagFwdDecl)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !373, file: !353, line: 167, baseType: !290, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !370, file: !353, line: 211, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !353, line: 170, size: 64, elements: !386)
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !385, file: !353, line: 171, baseType: !351, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !370, file: !353, line: 212, baseType: !389, size: 256)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !353, line: 174, size: 256, elements: !390)
!390 = !{!391, !748, !751, !752}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !389, file: !353, line: 175, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !353, line: 271, size: 768, elements: !395)
!395 = !{!396, !447, !451, !455, !462, !466, !470, !474, !475, !476, !477, !485}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !394, file: !353, line: 276, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!46, !400}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !353, line: 251, size: 1216, elements: !402)
!402 = !{!403, !404, !408, !412, !413, !435, !436, !437, !438, !439, !440, !441, !442}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !401, file: !353, line: 253, baseType: !351, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !401, file: !353, line: 254, baseType: !405, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !407, line: 537, flags: DIFlagFwdDecl)
!407 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!408 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !401, file: !353, line: 255, baseType: !409, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !411, line: 66, flags: DIFlagFwdDecl)
!411 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!412 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !401, file: !353, line: 256, baseType: !94, size: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !401, file: !353, line: 259, baseType: !414, size: 256, offset: 256)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !415, line: 66, size: 256, elements: !416)
!415 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!416 = !{!417, !427, !429, !434}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !414, file: !415, line: 67, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !419, line: 13, baseType: !420)
!419 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !105, line: 181, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !105, line: 179, size: 64, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !421, file: !105, line: 180, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !159, line: 22, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !161, line: 30, baseType: !426)
!426 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !414, file: !415, line: 68, baseType: !428, size: 32, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !143, line: 23, baseType: !142)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !414, file: !415, line: 70, baseType: !430, size: 32, offset: 96)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !431, line: 15, size: 32, elements: !432)
!431 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !430, file: !431, line: 20, baseType: !120, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !414, file: !415, line: 72, baseType: !104, size: 128, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !401, file: !353, line: 260, baseType: !414, size: 256, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !401, file: !353, line: 261, baseType: !46, size: 32, offset: 768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !401, file: !353, line: 262, baseType: !104, size: 128, offset: 832)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !401, file: !353, line: 263, baseType: !242, size: 64, offset: 960)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !401, file: !353, line: 265, baseType: !287, size: 64, offset: 1024)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !401, file: !353, line: 266, baseType: !305, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !401, file: !353, line: 267, baseType: !305, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !401, file: !353, line: 268, baseType: !443, size: 64, offset: 1152)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !446, line: 694, flags: DIFlagFwdDecl)
!446 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!447 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !394, file: !353, line: 277, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !400}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !394, file: !353, line: 290, baseType: !452, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!46, !409, !94}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !394, file: !353, line: 292, baseType: !456, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!94, !409, !459}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !105, line: 52, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !275, line: 88, baseType: !426)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !394, file: !353, line: 293, baseType: !463, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!94, !409, !94, !459}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !394, file: !353, line: 294, baseType: !467, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !409, !94}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !394, file: !353, line: 296, baseType: !471, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!273, !400, !242, !287, !460}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !394, file: !353, line: 306, baseType: !287, size: 64, offset: 448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !394, file: !353, line: 313, baseType: !305, size: 8, offset: 512)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !394, file: !353, line: 314, baseType: !471, size: 64, offset: 576)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !394, file: !353, line: 317, baseType: !478, size: 64, offset: 640)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!481, !400, !483}
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !482, line: 59, baseType: !7)
!482 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !353, line: 31, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !394, file: !353, line: 320, baseType: !486, size: 64, offset: 704)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!46, !400, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !446, line: 625, size: 1344, elements: !491)
!491 = !{!492, !509, !709, !715, !722, !723, !728, !729, !734, !735, !738, !739, !740, !741, !742, !743, !746}
!492 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !446, line: 628, baseType: !493, size: 128)
!493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !446, line: 628, size: 128, elements: !494)
!494 = !{!495, !500}
!495 = !DIDerivedType(tag: DW_TAG_member, scope: !493, file: !446, line: 629, baseType: !496, size: 128)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !493, file: !446, line: 629, size: 128, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !496, file: !446, line: 631, baseType: !290, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !496, file: !446, line: 632, baseType: !290, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !493, file: !446, line: 635, baseType: !501, size: 128, align: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !105, line: 232, size: 128, align: 64, elements: !502)
!502 = !{!503, !505}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !501, file: !105, line: 233, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !501, file: !105, line: 234, baseType: !506, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !504}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !490, file: !446, line: 639, baseType: !510, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !446, line: 733, size: 10240, elements: !512)
!512 = !{!513, !705}
!513 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !446, line: 734, baseType: !514, size: 10240)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !511, file: !446, line: 734, size: 10240, elements: !515)
!515 = !{!516, !520, !534, !538, !539, !540, !541, !542, !543, !551, !552, !553, !562, !563, !564, !565, !566, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !608, !622, !625, !671, !672, !673, !676, !679, !680, !683, !684, !685, !692, !693}
!516 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !446, line: 739, baseType: !517, size: 512, align: 512)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !514, file: !446, line: 739, size: 512, align: 512, elements: !518)
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !517, file: !446, line: 747, baseType: !120, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !514, file: !446, line: 750, baseType: !521, size: 128, offset: 512)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !522, line: 218, size: 128, elements: !523)
!522 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!523 = !{!524, !532, !533}
!524 = !DIDerivedType(tag: DW_TAG_member, scope: !521, file: !522, line: 219, baseType: !525, size: 32)
!525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !521, file: !522, line: 219, size: 32, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !525, file: !522, line: 220, baseType: !134, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !525, file: !522, line: 221, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !522, line: 197, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !522, line: 197, elements: !531)
!531 = !{}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !521, file: !522, line: 223, baseType: !7, size: 32, offset: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !521, file: !522, line: 224, baseType: !94, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !514, file: !446, line: 752, baseType: !535, size: 64, offset: 640)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!290, !405, !290, !290, !290, !290}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !514, file: !446, line: 756, baseType: !290, size: 64, offset: 704)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !514, file: !446, line: 757, baseType: !290, size: 64, offset: 768)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !514, file: !446, line: 760, baseType: !290, size: 64, offset: 832)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !514, file: !446, line: 761, baseType: !290, size: 64, offset: 896)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !514, file: !446, line: 763, baseType: !290, size: 64, offset: 960)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !514, file: !446, line: 764, baseType: !544, size: 64, offset: 1024)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !407, line: 299, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !407, line: 299, size: 64, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !546, file: !407, line: 299, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !550, line: 18, baseType: !290)
!550 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!551 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !514, file: !446, line: 773, baseType: !120, size: 32, offset: 1088)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !514, file: !446, line: 785, baseType: !120, size: 32, offset: 1120)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !514, file: !446, line: 795, baseType: !554, size: 64, offset: 1152)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !446, line: 726, size: 128, elements: !556)
!556 = !{!557, !561}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !555, file: !446, line: 727, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !159, line: 23, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !161, line: 31, baseType: !560)
!560 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !555, file: !446, line: 728, baseType: !46, size: 32, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !514, file: !446, line: 801, baseType: !290, size: 64, offset: 1216)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !514, file: !446, line: 804, baseType: !418, size: 64, offset: 1280)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !514, file: !446, line: 806, baseType: !46, size: 32, offset: 1344)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !514, file: !446, line: 808, baseType: !134, size: 32, offset: 1376)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !514, file: !446, line: 823, baseType: !567, size: 320, offset: 1408)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !568, line: 48, size: 320, elements: !569)
!568 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!569 = !{!570, !571, !572, !573, !574}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !567, file: !568, line: 49, baseType: !418, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !567, file: !568, line: 55, baseType: !418, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !567, file: !568, line: 57, baseType: !430, size: 32, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !567, file: !568, line: 59, baseType: !428, size: 32, offset: 160)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !567, file: !568, line: 60, baseType: !104, size: 128, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !514, file: !446, line: 825, baseType: !104, size: 128, offset: 1728)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !514, file: !446, line: 845, baseType: !46, size: 32, offset: 1856)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !514, file: !446, line: 849, baseType: !290, size: 64, offset: 1920)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !514, file: !446, line: 850, baseType: !290, size: 64, offset: 1984)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !514, file: !446, line: 852, baseType: !290, size: 64, offset: 2048)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !514, file: !446, line: 853, baseType: !290, size: 64, offset: 2112)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !514, file: !446, line: 854, baseType: !420, size: 64, offset: 2176)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !514, file: !446, line: 855, baseType: !290, size: 64, offset: 2240)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !514, file: !446, line: 856, baseType: !290, size: 64, offset: 2304)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !514, file: !446, line: 857, baseType: !290, size: 64, offset: 2368)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !514, file: !446, line: 858, baseType: !290, size: 64, offset: 2432)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !514, file: !446, line: 865, baseType: !587, size: 32, offset: 2496)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !588, line: 69, baseType: !589)
!588 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !588, line: 64, size: 32, elements: !590)
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !589, file: !588, line: 65, baseType: !7, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !514, file: !446, line: 867, baseType: !134, size: 32, offset: 2528)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !514, file: !446, line: 869, baseType: !290, size: 64, offset: 2560)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !514, file: !446, line: 869, baseType: !290, size: 64, offset: 2624)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !514, file: !446, line: 869, baseType: !290, size: 64, offset: 2688)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !514, file: !446, line: 869, baseType: !290, size: 64, offset: 2752)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !514, file: !446, line: 870, baseType: !290, size: 64, offset: 2816)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !514, file: !446, line: 870, baseType: !290, size: 64, offset: 2880)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !514, file: !446, line: 870, baseType: !290, size: 64, offset: 2944)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !514, file: !446, line: 871, baseType: !290, size: 64, offset: 3008)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !514, file: !446, line: 871, baseType: !290, size: 64, offset: 3072)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !514, file: !446, line: 871, baseType: !290, size: 64, offset: 3136)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !514, file: !446, line: 871, baseType: !290, size: 64, offset: 3200)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !514, file: !446, line: 873, baseType: !605, size: 3328, offset: 3264)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 3328, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 52)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !514, file: !446, line: 875, baseType: !609, size: 1280, offset: 6592)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 1280, elements: !620)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !611, line: 22, size: 320, elements: !612)
!611 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!612 = !{!613, !614, !615, !616}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !610, file: !611, line: 23, baseType: !428, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !610, file: !611, line: 24, baseType: !424, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !610, file: !611, line: 26, baseType: !104, size: 128, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !610, file: !611, line: 28, baseType: !617, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !159, line: 20, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !161, line: 26, baseType: !46)
!620 = !{!621}
!621 = !DISubrange(count: 4)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !514, file: !446, line: 877, baseType: !623, size: 64, offset: 7872)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !446, line: 877, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !514, file: !446, line: 880, baseType: !626, size: 1088, offset: 7936)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !627, line: 72, baseType: !628)
!627 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !627, line: 23, size: 1088, elements: !629)
!629 = !{!630, !631, !632, !633, !634, !637, !638, !639, !640, !665, !666, !667}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !628, file: !627, line: 28, baseType: !558, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !628, file: !627, line: 38, baseType: !420, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !628, file: !627, line: 40, baseType: !290, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !628, file: !627, line: 43, baseType: !567, size: 320, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !628, file: !627, line: 44, baseType: !635, size: 64, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !627, line: 44, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !628, file: !627, line: 48, baseType: !290, size: 64, offset: 576)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !628, file: !627, line: 59, baseType: !414, size: 256, offset: 640)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !628, file: !627, line: 60, baseType: !94, size: 64, offset: 896)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !628, file: !627, line: 61, baseType: !641, size: 64, offset: 960)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !644, line: 13, size: 1216, elements: !645)
!644 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !643, file: !644, line: 14, baseType: !94, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !643, file: !644, line: 15, baseType: !290, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !643, file: !644, line: 17, baseType: !290, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !643, file: !644, line: 17, baseType: !290, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !643, file: !644, line: 18, baseType: !290, size: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !643, file: !644, line: 18, baseType: !290, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !643, file: !644, line: 19, baseType: !315, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !643, file: !644, line: 21, baseType: !277, size: 64, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !643, file: !644, line: 23, baseType: !277, size: 64, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !643, file: !644, line: 24, baseType: !277, size: 64, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !643, file: !644, line: 25, baseType: !277, size: 64, offset: 640)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !643, file: !644, line: 26, baseType: !277, size: 64, offset: 704)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !643, file: !644, line: 27, baseType: !277, size: 64, offset: 768)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !643, file: !644, line: 28, baseType: !277, size: 64, offset: 832)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !643, file: !644, line: 29, baseType: !277, size: 64, offset: 896)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !643, file: !644, line: 30, baseType: !277, size: 64, offset: 960)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !643, file: !644, line: 31, baseType: !277, size: 64, offset: 1024)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !643, file: !644, line: 32, baseType: !277, size: 64, offset: 1088)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !643, file: !644, line: 33, baseType: !277, size: 64, offset: 1152)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !628, file: !627, line: 63, baseType: !120, size: 32, offset: 1024)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !628, file: !627, line: 69, baseType: !168, size: 16, offset: 1056)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !628, file: !627, line: 70, baseType: !668, size: 16, offset: 1072)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !159, line: 18, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !161, line: 23, baseType: !670)
!670 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !514, file: !446, line: 882, baseType: !290, size: 64, offset: 9024)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !514, file: !446, line: 885, baseType: !134, size: 32, offset: 9088)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !514, file: !446, line: 886, baseType: !674, size: 64, offset: 9152)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !446, line: 732, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !514, file: !446, line: 901, baseType: !677, size: 64, offset: 9216)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !337, line: 18, flags: DIFlagFwdDecl)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !514, file: !446, line: 904, baseType: !405, size: 64, offset: 9280)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !514, file: !446, line: 906, baseType: !681, size: 64, offset: 9344)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !446, line: 906, flags: DIFlagFwdDecl)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !514, file: !446, line: 930, baseType: !120, size: 32, offset: 9408)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !514, file: !446, line: 933, baseType: !120, size: 32, offset: 9440)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !514, file: !446, line: 935, baseType: !686, size: 64, offset: 9472)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !687, line: 103, size: 64, elements: !688)
!687 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !686, file: !687, line: 104, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !687, line: 101, flags: DIFlagFwdDecl)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !514, file: !446, line: 940, baseType: !418, size: 64, offset: 9536)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !514, file: !446, line: 942, baseType: !694, size: 256, offset: 9600)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !695, line: 98, size: 256, elements: !696)
!695 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!696 = !{!697, !698, !699}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !694, file: !695, line: 99, baseType: !418, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !694, file: !695, line: 100, baseType: !104, size: 128, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !694, file: !695, line: 101, baseType: !700, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !695, line: 21, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !511, file: !446, line: 986, baseType: !706, offset: 10240)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, elements: !707)
!707 = !{!708}
!708 = !DISubrange(count: -1)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !490, file: !446, line: 640, baseType: !710, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !407, line: 297, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !407, line: 297, size: 64, elements: !712)
!712 = !{!713}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !711, file: !407, line: 297, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !550, line: 19, baseType: !290)
!715 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !446, line: 646, baseType: !716, size: 64, offset: 256)
!716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !446, line: 646, size: 64, elements: !717)
!717 = !{!718, !721}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !716, file: !446, line: 647, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !446, line: 542, baseType: !290)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !716, file: !446, line: 648, baseType: !720, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !490, file: !446, line: 666, baseType: !46, size: 32, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !490, file: !446, line: 667, baseType: !724, size: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !446, line: 579, size: 320, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !725, file: !446, line: 580, baseType: !567, size: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !490, file: !446, line: 670, baseType: !305, size: 8, offset: 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !490, file: !446, line: 681, baseType: !730, size: 256, offset: 512)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !490, file: !446, line: 678, size: 256, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !730, file: !446, line: 679, baseType: !360, size: 192, align: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !730, file: !446, line: 680, baseType: !290, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !490, file: !446, line: 689, baseType: !104, size: 128, offset: 768)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !490, file: !446, line: 691, baseType: !736, size: 64, offset: 896)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !446, line: 691, flags: DIFlagFwdDecl)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !490, file: !446, line: 694, baseType: !443, size: 64, offset: 960)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !490, file: !446, line: 697, baseType: !290, size: 64, offset: 1024)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !490, file: !446, line: 699, baseType: !405, size: 64, offset: 1088)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !490, file: !446, line: 700, baseType: !94, size: 64, offset: 1152)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !490, file: !446, line: 711, baseType: !418, size: 64, offset: 1216)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !490, file: !446, line: 717, baseType: !744, size: 64, offset: 1280)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !411, line: 54, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !490, file: !446, line: 722, baseType: !747, offset: 1344)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !446, line: 570, elements: !531)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !389, file: !353, line: 176, baseType: !749, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !353, line: 35, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !389, file: !353, line: 177, baseType: !460, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !389, file: !353, line: 178, baseType: !351, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !352, file: !353, line: 215, baseType: !94, size: 64, offset: 768)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !352, file: !353, line: 221, baseType: !558, size: 64, offset: 832)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !353, line: 223, baseType: !170, size: 16, offset: 896)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !352, file: !353, line: 224, baseType: !200, size: 16, offset: 912)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !352, file: !353, line: 225, baseType: !758, size: 64, offset: 960)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !353, line: 36, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !352, file: !353, line: 227, baseType: !501, size: 128, align: 64, offset: 1024)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !202, file: !203, line: 71, baseType: !111, size: 32, offset: 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !202, file: !203, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !202, file: !203, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !202, file: !203, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !202, file: !203, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !202, file: !203, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !192, file: !193, line: 88, baseType: !768, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!200, !201, !771, !46}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !193, line: 175, size: 512, elements: !773)
!773 = !{!774, !775, !776, !777, !783, !787, !788}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !772, file: !193, line: 176, baseType: !279, size: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !772, file: !193, line: 177, baseType: !287, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !772, file: !193, line: 178, baseType: !94, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !772, file: !193, line: 179, baseType: !778, size: 64, offset: 256)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !446, line: 32, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !772, file: !193, line: 180, baseType: !784, size: 64, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!273, !405, !201, !771, !242, !460, !287}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !772, file: !193, line: 182, baseType: !784, size: 64, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !772, file: !193, line: 184, baseType: !789, size: 64, offset: 448)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!46, !405, !201, !771, !489}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !192, file: !193, line: 90, baseType: !793, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !192, file: !193, line: 91, baseType: !795, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !181, file: !182, line: 56, baseType: !189, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !181, file: !182, line: 58, baseType: !798, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!46, !801, !237}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !804)
!804 = !{!805, !806, !808, !1308, !1309, !1324, !1325, !1326, !1327, !1328, !1329, !1336, !1506, !1519, !1529, !1533, !1535, !1536, !1537, !1541, !1548, !1549, !1552, !1555, !1559, !1562, !1563, !1566, !1567, !1568, !1569, !1572, !1573, !1574, !1577, !1580, !1589, !1590, !1591, !1592, !1593, !1594}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !803, file: !26, line: 706, baseType: !202, size: 512)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !803, file: !26, line: 707, baseType: !807, size: 64, offset: 512)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !803, file: !26, line: 709, baseType: !809, size: 64, offset: 576)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !811, line: 108, size: 1728, elements: !812)
!811 = !DIFile(filename: "drivers/base/base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5f3031875b0a7d87c5130cddf3a0079")
!812 = !{!813, !814, !815, !816, !817, !818, !819, !1305, !1306, !1307}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "klist_children", scope: !810, file: !811, line: 109, baseType: !131, size: 320, align: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "knode_parent", scope: !810, file: !811, line: 110, baseType: !99, size: 256, offset: 320)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "knode_driver", scope: !810, file: !811, line: 111, baseType: !99, size: 256, offset: 576)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !810, file: !811, line: 112, baseType: !99, size: 256, offset: 832)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "knode_class", scope: !810, file: !811, line: 113, baseType: !99, size: 256, offset: 1088)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe", scope: !810, file: !811, line: 114, baseType: !104, size: 128, offset: 1344)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "async_driver", scope: !810, file: !811, line: 115, baseType: !820, size: 64, offset: 1472)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !822)
!822 = !{!823, !824, !897, !1275, !1276, !1277, !1278, !1282, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !821, file: !20, line: 97, baseType: !185, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !821, file: !20, line: 98, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !828, line: 80, size: 1344, elements: !829)
!828 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!829 = !{!830, !831, !832, !833, !834, !835, !839, !840, !844, !848, !849, !850, !851, !852, !860, !861, !862, !863, !864, !892, !896}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !827, file: !828, line: 81, baseType: !185, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !827, file: !828, line: 82, baseType: !185, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !827, file: !828, line: 83, baseType: !189, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !827, file: !828, line: 84, baseType: !189, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !827, file: !828, line: 85, baseType: !189, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !827, file: !828, line: 87, baseType: !836, size: 64, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!46, !807, !820}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !827, file: !828, line: 88, baseType: !798, size: 64, offset: 384)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !827, file: !828, line: 89, baseType: !841, size: 64, offset: 448)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!46, !807}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !827, file: !828, line: 90, baseType: !845, size: 64, offset: 512)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !807}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !827, file: !828, line: 91, baseType: !845, size: 64, offset: 576)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !827, file: !828, line: 92, baseType: !845, size: 64, offset: 640)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !827, file: !828, line: 94, baseType: !841, size: 64, offset: 704)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !827, file: !828, line: 95, baseType: !841, size: 64, offset: 768)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !827, file: !828, line: 97, baseType: !853, size: 64, offset: 832)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!46, !807, !856}
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !858)
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !857, file: !38, line: 59, baseType: !46, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !827, file: !828, line: 98, baseType: !841, size: 64, offset: 896)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !827, file: !828, line: 100, baseType: !841, size: 64, offset: 960)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !827, file: !828, line: 102, baseType: !841, size: 64, offset: 1024)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !827, file: !828, line: 103, baseType: !845, size: 64, offset: 1088)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !827, file: !828, line: 105, baseType: !865, size: 64, offset: 1152)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !868)
!868 = !{!869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !867, file: !38, line: 287, baseType: !841, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !867, file: !38, line: 288, baseType: !845, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !867, file: !38, line: 289, baseType: !841, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !867, file: !38, line: 290, baseType: !841, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !867, file: !38, line: 291, baseType: !841, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !867, file: !38, line: 292, baseType: !841, size: 64, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !867, file: !38, line: 293, baseType: !841, size: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !867, file: !38, line: 294, baseType: !841, size: 64, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !867, file: !38, line: 295, baseType: !841, size: 64, offset: 512)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !867, file: !38, line: 296, baseType: !841, size: 64, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !867, file: !38, line: 297, baseType: !841, size: 64, offset: 640)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !867, file: !38, line: 298, baseType: !841, size: 64, offset: 704)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !867, file: !38, line: 299, baseType: !841, size: 64, offset: 768)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !867, file: !38, line: 300, baseType: !841, size: 64, offset: 832)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !867, file: !38, line: 301, baseType: !841, size: 64, offset: 896)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !867, file: !38, line: 302, baseType: !841, size: 64, offset: 960)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !867, file: !38, line: 303, baseType: !841, size: 64, offset: 1024)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !867, file: !38, line: 304, baseType: !841, size: 64, offset: 1088)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !867, file: !38, line: 305, baseType: !841, size: 64, offset: 1152)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !867, file: !38, line: 306, baseType: !841, size: 64, offset: 1216)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !867, file: !38, line: 307, baseType: !841, size: 64, offset: 1280)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !867, file: !38, line: 308, baseType: !841, size: 64, offset: 1344)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !867, file: !38, line: 309, baseType: !841, size: 64, offset: 1408)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !827, file: !828, line: 107, baseType: !893, size: 64, offset: 1216)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !828, line: 107, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !827, file: !828, line: 109, baseType: !305, size: 8, offset: 1280)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !821, file: !20, line: 100, baseType: !898, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !900)
!900 = !{!901, !902, !903, !907, !928, !954, !955, !956, !957, !961, !964, !965, !966, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1029, !1033, !1053, !1071, !1072, !1073, !1074, !1083, !1107, !1108, !1111, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1125, !1126, !1233, !1241, !1242, !1243, !1245, !1249, !1250, !1254, !1255, !1256, !1257, !1259, !1260, !1261, !1268, !1269, !1270, !1274}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !899, file: !13, line: 403, baseType: !12, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !899, file: !13, line: 406, baseType: !104, size: 128, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !899, file: !13, line: 409, baseType: !904, size: 448, offset: 192)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 448, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 56)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !899, file: !13, line: 417, baseType: !908, size: 768, offset: 640)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !909)
!909 = !{!910, !911, !912, !913, !916}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !908, file: !13, line: 46, baseType: !202, size: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !908, file: !13, line: 47, baseType: !898, size: 64, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !908, file: !13, line: 48, baseType: !201, size: 64, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !908, file: !13, line: 49, baseType: !914, size: 64, offset: 640)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !908, file: !13, line: 50, baseType: !917, size: 64, offset: 704)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !919, line: 26, size: 256, elements: !920)
!919 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !918, file: !919, line: 27, baseType: !7, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !918, file: !919, line: 28, baseType: !923, size: 192, offset: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !924, line: 43, size: 192, elements: !925)
!924 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !923, file: !924, line: 44, baseType: !428, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !923, file: !924, line: 45, baseType: !104, size: 128, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !899, file: !13, line: 418, baseType: !929, size: 64, offset: 1408)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !931)
!931 = !{!932, !933, !938, !942, !946, !950}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !930, file: !13, line: 54, baseType: !279, size: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !930, file: !13, line: 55, baseType: !934, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!273, !929, !937, !242}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !930, file: !13, line: 57, baseType: !939, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!273, !929, !937, !185, !287}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !930, file: !13, line: 59, baseType: !943, size: 64, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !898, !185}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !930, file: !13, line: 60, baseType: !947, size: 64, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!46, !898}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !930, file: !13, line: 61, baseType: !951, size: 64, offset: 384)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !898}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !899, file: !13, line: 419, baseType: !185, size: 64, offset: 1472)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !899, file: !13, line: 420, baseType: !185, size: 64, offset: 1536)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !899, file: !13, line: 421, baseType: !201, size: 64, offset: 1600)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !899, file: !13, line: 424, baseType: !958, size: 64, offset: 1664)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !960)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !899, file: !13, line: 425, baseType: !962, size: 64, offset: 1728)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !899, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !899, file: !13, line: 435, baseType: !414, size: 256, offset: 1856)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !899, file: !13, line: 437, baseType: !967, size: 64, offset: 2112)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !969, line: 69, size: 320, elements: !970)
!969 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!970 = !{!971, !972, !973, !990, !992, !996, !997}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !968, file: !969, line: 70, baseType: !185, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !968, file: !969, line: 71, baseType: !898, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !968, file: !969, line: 72, baseType: !974, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !976)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !969, line: 47, size: 256, elements: !977)
!977 = !{!978, !979, !985, !989}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !976, file: !969, line: 49, baseType: !7, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !976, file: !969, line: 51, baseType: !980, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!46, !185, !983}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !968)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !976, file: !969, line: 53, baseType: !986, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!46, !242, !983}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !976, file: !969, line: 55, baseType: !324, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !968, file: !969, line: 73, baseType: !991, size: 16, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !968, file: !969, line: 74, baseType: !993, size: 8, offset: 208)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !159, line: 16, baseType: !994)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !161, line: 20, baseType: !995)
!995 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !969, line: 75, baseType: !158, size: 8, offset: 216)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !969, line: 76, baseType: !998, size: 64, offset: 256)
!998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !968, file: !969, line: 76, size: 64, elements: !999)
!999 = !{!1000, !1001, !1008}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !998, file: !969, line: 77, baseType: !94, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !998, file: !969, line: 78, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !969, line: 86, size: 128, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1004, file: !969, line: 87, baseType: !7, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1004, file: !969, line: 88, baseType: !242, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !998, file: !969, line: 79, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !969, line: 92, size: 256, elements: !1012)
!1012 = !{!1013, !1014, !1015, !1017, !1018}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1011, file: !969, line: 94, baseType: !7, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1011, file: !969, line: 95, baseType: !7, size: 32, offset: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1011, file: !969, line: 96, baseType: !1016, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1011, file: !969, line: 97, baseType: !974, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1011, file: !969, line: 98, baseType: !94, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !899, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !899, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !899, file: !13, line: 442, baseType: !958, size: 64, offset: 2240)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !899, file: !13, line: 443, baseType: !962, size: 64, offset: 2304)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !899, file: !13, line: 444, baseType: !305, size: 8, offset: 2368)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !899, file: !13, line: 451, baseType: !305, size: 8, offset: 2376)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !899, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !899, file: !13, line: 455, baseType: !1027, size: 64, offset: 2432)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !899, file: !13, line: 458, baseType: !1030, size: 64, offset: 2496)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!46}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !899, file: !13, line: 460, baseType: !1034, size: 4032, align: 512, offset: 2560)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1035, size: 4032, elements: !1051)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1036)
!1036 = !{!1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1035, file: !13, line: 363, baseType: !94, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1035, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1035, file: !13, line: 367, baseType: !1040, size: 448, offset: 128)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1040, file: !13, line: 320, baseType: !898, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1040, file: !13, line: 321, baseType: !1044, size: 384, offset: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1045, line: 40, size: 384, elements: !1046)
!1045 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1046 = !{!1047}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1044, file: !1045, line: 41, baseType: !1048, size: 384, align: 64)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 384, align: 64, elements: !1049)
!1049 = !{!1050}
!1050 = !DISubrange(count: 2)
!1051 = !{!1052}
!1052 = !DISubrange(count: 7)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !899, file: !13, line: 463, baseType: !1054, size: 192, offset: 6592)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1055, line: 8, size: 192, elements: !1056)
!1055 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1056 = !{!1057, !1058, !1060}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1054, file: !1055, line: 10, baseType: !7, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1054, file: !1055, line: 11, baseType: !1059, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1054, file: !1055, line: 12, baseType: !1061, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1063, line: 59, size: 48, elements: !1064)
!1063 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1062, file: !1063, line: 60, baseType: !668, size: 16)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1062, file: !1063, line: 61, baseType: !668, size: 16, offset: 16)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1062, file: !1063, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1062, file: !1063, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1062, file: !1063, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1062, file: !1063, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !899, file: !13, line: 465, baseType: !290, size: 64, offset: 6784)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !899, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !899, file: !13, line: 470, baseType: !104, size: 128, offset: 6912)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !899, file: !13, line: 471, baseType: !1075, size: 64, offset: 7040)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1077, line: 33, size: 96, elements: !1078)
!1077 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1078 = !{!1079, !1080, !1081, !1082}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1076, file: !1077, line: 37, baseType: !46, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1076, file: !1077, line: 43, baseType: !46, size: 32, offset: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1076, file: !1077, line: 45, baseType: !170, size: 16, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1076, file: !1077, line: 47, baseType: !170, size: 16, offset: 80)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !899, file: !13, line: 476, baseType: !1084, size: 64, offset: 7104)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1086)
!1086 = !{!1087, !1104, !1105, !1106}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1085, file: !13, line: 379, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1090, line: 204, baseType: !1091)
!1090 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1090, line: 197, size: 192, elements: !1092)
!1092 = !{!1093, !1096, !1097, !1098, !1100, !1102}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1091, file: !1090, line: 198, baseType: !1094, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1090, line: 21, baseType: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !161, line: 27, baseType: !7)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1091, file: !1090, line: 199, baseType: !162, size: 8, offset: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1091, file: !1090, line: 200, baseType: !162, size: 8, offset: 40)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1091, file: !1090, line: 201, baseType: !1099, size: 16, offset: 48)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1090, line: 17, baseType: !169)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1091, file: !1090, line: 202, baseType: !1101, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1090, line: 16, baseType: !559)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1091, file: !1090, line: 203, baseType: !1103, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1090, line: 22, baseType: !559)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1085, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1085, file: !13, line: 381, baseType: !242, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1085, file: !13, line: 382, baseType: !242, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !899, file: !13, line: 477, baseType: !1085, size: 256, offset: 7168)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !899, file: !13, line: 480, baseType: !1109, size: 64, offset: 7424)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !899, file: !13, line: 483, baseType: !1112, size: 64, offset: 7488)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !899, file: !13, line: 488, baseType: !242, size: 64, offset: 7552)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !899, file: !13, line: 492, baseType: !94, size: 64, offset: 7616)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !899, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !899, file: !13, line: 495, baseType: !94, size: 64, offset: 7744)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !899, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !899, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !899, file: !13, line: 500, baseType: !1121, size: 64, offset: 7872)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1123, line: 45, baseType: !1124)
!1123 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !899, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !899, file: !13, line: 504, baseType: !1127, size: 64, offset: 8000)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1130, line: 96, size: 192, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1131 = !{!1132, !1133, !1194, !1197}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1129, file: !1130, line: 97, baseType: !7, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1129, file: !1130, line: 98, baseType: !1134, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1130, line: 24, size: 3072, elements: !1136)
!1136 = !{!1137, !1139, !1140, !1141, !1142, !1156, !1157, !1158, !1159, !1178, !1179, !1180, !1191, !1192, !1193}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1135, file: !1130, line: 26, baseType: !1138, size: 128)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 128, elements: !1049)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1135, file: !1130, line: 27, baseType: !1138, size: 128, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1135, file: !1130, line: 28, baseType: !46, size: 32, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1135, file: !1130, line: 31, baseType: !134, size: 32, align: 512, offset: 512)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1135, file: !1130, line: 32, baseType: !1143, size: 960, offset: 576)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1144, line: 206, size: 960, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1145 = !{!1146, !1147, !1150, !1152, !1153, !1155}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1143, file: !1144, line: 207, baseType: !504, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1143, file: !1144, line: 208, baseType: !1148, size: 256, offset: 64)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1149, size: 256, elements: !620)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1143, file: !1144, line: 209, baseType: !1151, size: 256, offset: 320)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 256, elements: !620)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1143, file: !1144, line: 213, baseType: !277, size: 64, offset: 576)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1143, file: !1144, line: 215, baseType: !1154, size: 256, offset: 640)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 256, elements: !620)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1143, file: !1144, line: 216, baseType: !158, size: 8, offset: 896)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1135, file: !1130, line: 33, baseType: !290, size: 64, offset: 1536)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1135, file: !1130, line: 34, baseType: !290, size: 64, offset: 1600)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1135, file: !1130, line: 35, baseType: !305, size: 8, offset: 1664)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1135, file: !1130, line: 36, baseType: !1160, size: 320, offset: 1728)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1161, line: 11, size: 320, elements: !1162)
!1161 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1162 = !{!1163, !1170, !1171, !1176}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1160, file: !1161, line: 16, baseType: !1164, size: 128)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !105, line: 198, size: 128, elements: !1165)
!1165 = !{!1166, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1164, file: !105, line: 199, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1164, file: !105, line: 199, baseType: !1169, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1160, file: !1161, line: 17, baseType: !290, size: 64, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1160, file: !1161, line: 18, baseType: !1172, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !1175}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1160, file: !1161, line: 19, baseType: !1177, size: 32, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !159, line: 21, baseType: !1095)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1135, file: !1130, line: 37, baseType: !694, size: 256, offset: 2048)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1135, file: !1130, line: 38, baseType: !501, size: 128, align: 64, offset: 2304)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1135, file: !1130, line: 39, baseType: !1181, size: 64, offset: 2432)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1130, line: 49, size: 768, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1182, file: !1130, line: 50, baseType: !134, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1182, file: !1130, line: 51, baseType: !1151, size: 256, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1182, file: !1130, line: 53, baseType: !1151, size: 256, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1182, file: !1130, line: 54, baseType: !290, size: 64, offset: 576)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1182, file: !1130, line: 55, baseType: !1181, size: 64, offset: 640)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1182, file: !1130, line: 56, baseType: !46, size: 32, offset: 704)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1182, file: !1130, line: 57, baseType: !46, size: 32, offset: 736)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1135, file: !1130, line: 40, baseType: !290, size: 64, offset: 2496)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1135, file: !1130, line: 42, baseType: !46, size: 32, offset: 2560)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1135, file: !1130, line: 43, baseType: !1128, size: 64, offset: 2624)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1129, file: !1130, line: 99, baseType: !1195, offset: 128)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1196, line: 211, elements: !531)
!1196 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1129, file: !1130, line: 100, baseType: !1198, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1130, line: 63, size: 3008, elements: !1200)
!1200 = !{!1201, !1202, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1232}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1199, file: !1130, line: 64, baseType: !1181, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1199, file: !1130, line: 65, baseType: !1203, size: 192, offset: 64)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1181, size: 192, elements: !243)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1199, file: !1130, line: 67, baseType: !46, size: 32, offset: 256)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1199, file: !1130, line: 68, baseType: !414, size: 256, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1199, file: !1130, line: 69, baseType: !134, size: 32, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1199, file: !1130, line: 70, baseType: !414, size: 256, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1199, file: !1130, line: 71, baseType: !290, size: 64, offset: 896)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1199, file: !1130, line: 72, baseType: !290, size: 64, offset: 960)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1199, file: !1130, line: 73, baseType: !290, size: 64, offset: 1024)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1199, file: !1130, line: 74, baseType: !290, size: 64, offset: 1088)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1199, file: !1130, line: 75, baseType: !290, size: 64, offset: 1152)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1199, file: !1130, line: 76, baseType: !290, size: 64, offset: 1216)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1199, file: !1130, line: 77, baseType: !290, size: 64, offset: 1280)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1199, file: !1130, line: 78, baseType: !290, size: 64, offset: 1344)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1199, file: !1130, line: 79, baseType: !305, size: 8, offset: 1408)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1199, file: !1130, line: 80, baseType: !290, size: 64, offset: 1472)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1199, file: !1130, line: 81, baseType: !414, size: 256, offset: 1536)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1199, file: !1130, line: 82, baseType: !918, size: 256, offset: 1792)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1199, file: !1130, line: 84, baseType: !120, size: 32, offset: 2048)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1199, file: !1130, line: 87, baseType: !290, size: 64, offset: 2112)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1199, file: !1130, line: 88, baseType: !290, size: 64, offset: 2176)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1199, file: !1130, line: 89, baseType: !1224, size: 704, offset: 2240)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !695, line: 111, size: 704, elements: !1225)
!1225 = !{!1226, !1227, !1228, !1231}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1224, file: !695, line: 112, baseType: !694, size: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1224, file: !695, line: 113, baseType: !1160, size: 320, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1224, file: !695, line: 116, baseType: !1229, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !695, line: 18, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1224, file: !695, line: 117, baseType: !46, size: 32, offset: 640)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1199, file: !1130, line: 90, baseType: !1128, size: 64, offset: 2944)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !899, file: !13, line: 515, baseType: !1234, size: 64, offset: 8064)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1236, line: 117, size: 128, elements: !1237)
!1236 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1237 = !{!1238, !1239, !1240}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1235, file: !1236, line: 118, baseType: !618, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1235, file: !1236, line: 119, baseType: !618, size: 32, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1235, file: !1236, line: 120, baseType: !277, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !899, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !899, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !899, file: !13, line: 520, baseType: !1244, size: 64, offset: 8192)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !899, file: !13, line: 523, baseType: !1246, size: 64, offset: 8256)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !899, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !899, file: !13, line: 525, baseType: !1251, size: 64, offset: 8384)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !899, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !899, file: !13, line: 533, baseType: !94, size: 64, offset: 8512)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !899, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !899, file: !13, line: 535, baseType: !1258, size: 64, offset: 8640)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !899, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !899, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !899, file: !13, line: 540, baseType: !1262, size: 64, offset: 8768)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1264, line: 32, size: 64, elements: !1265)
!1264 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1263, file: !1264, line: 33, baseType: !618, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1263, file: !1264, line: 34, baseType: !618, size: 32, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !899, file: !13, line: 563, baseType: !104, size: 128, offset: 8832)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !899, file: !13, line: 565, baseType: !104, size: 128, offset: 8960)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !899, file: !13, line: 568, baseType: !1271, size: 64, offset: 9088)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !899, file: !13, line: 570, baseType: !120, size: 32, offset: 9152)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !821, file: !20, line: 101, baseType: !185, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !821, file: !20, line: 103, baseType: !305, size: 8, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !821, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !821, file: !20, line: 106, baseType: !1279, size: 64, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1281)
!1281 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !821, file: !20, line: 107, baseType: !1283, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1285)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !821, file: !20, line: 109, baseType: !841, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !821, file: !20, line: 110, baseType: !845, size: 64, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !821, file: !20, line: 111, baseType: !841, size: 64, offset: 576)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !821, file: !20, line: 112, baseType: !845, size: 64, offset: 640)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !821, file: !20, line: 113, baseType: !853, size: 64, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !821, file: !20, line: 114, baseType: !841, size: 64, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !821, file: !20, line: 115, baseType: !189, size: 64, offset: 832)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !821, file: !20, line: 116, baseType: !189, size: 64, offset: 896)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !821, file: !20, line: 118, baseType: !865, size: 64, offset: 960)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !821, file: !20, line: 119, baseType: !845, size: 64, offset: 1024)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !821, file: !20, line: 121, baseType: !1297, size: 64, offset: 1088)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !811, line: 78, size: 1216, elements: !1299)
!1299 = !{!1300, !1301, !1302, !1303, !1304}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1298, file: !811, line: 79, baseType: !202, size: 512)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !1298, file: !811, line: 80, baseType: !131, size: 320, align: 64, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !1298, file: !811, line: 81, baseType: !99, size: 256, offset: 832)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1298, file: !811, line: 82, baseType: !937, size: 64, offset: 1088)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1298, file: !811, line: 83, baseType: !820, size: 64, offset: 1152)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe_reason", scope: !810, file: !811, line: 116, baseType: !242, size: 64, offset: 1536)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !810, file: !811, line: 117, baseType: !807, size: 64, offset: 1600)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !810, file: !811, line: 118, baseType: !158, size: 1, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !803, file: !26, line: 711, baseType: !185, size: 64, offset: 640)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !803, file: !26, line: 712, baseType: !1310, size: 64, offset: 704)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1312)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317, !1322, !1323}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1312, file: !26, line: 90, baseType: !185, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1312, file: !26, line: 91, baseType: !189, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1312, file: !26, line: 92, baseType: !798, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1312, file: !26, line: 93, baseType: !1318, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!242, !801, !1321, !335, !343}
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1312, file: !26, line: 95, baseType: !845, size: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1312, file: !26, line: 97, baseType: !865, size: 64, offset: 320)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !803, file: !26, line: 714, baseType: !825, size: 64, offset: 768)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !803, file: !26, line: 715, baseType: !820, size: 64, offset: 832)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !803, file: !26, line: 717, baseType: !94, size: 64, offset: 896)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !803, file: !26, line: 719, baseType: !94, size: 64, offset: 960)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !803, file: !26, line: 721, baseType: !414, size: 256, offset: 1024)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !803, file: !26, line: 725, baseType: !1330, size: 448, offset: 1280)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1335}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1330, file: !26, line: 518, baseType: !104, size: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1330, file: !26, line: 519, baseType: !104, size: 128, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1330, file: !26, line: 520, baseType: !104, size: 128, offset: 256)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1330, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !803, file: !26, line: 726, baseType: !1337, size: 2496, offset: 1728)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1383, !1384, !1385, !1386, !1387, !1388, !1459, !1460, !1461, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1499, !1503}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1337, file: !38, line: 664, baseType: !856, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1337, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1337, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1337, file: !38, line: 667, baseType: !305, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1337, file: !38, line: 668, baseType: !305, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1337, file: !38, line: 669, baseType: !305, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1337, file: !38, line: 670, baseType: !305, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1337, file: !38, line: 671, baseType: !305, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1337, file: !38, line: 672, baseType: !305, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1337, file: !38, line: 673, baseType: !305, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1337, file: !38, line: 674, baseType: !305, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1337, file: !38, line: 675, baseType: !1177, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1337, file: !38, line: 676, baseType: !134, size: 32, offset: 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1337, file: !38, line: 678, baseType: !104, size: 128, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1337, file: !38, line: 679, baseType: !918, size: 256, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1337, file: !38, line: 680, baseType: !1355, size: 64, offset: 512)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1357, line: 43, size: 1536, elements: !1358)
!1357 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1366, !1367, !1368, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1356, file: !1357, line: 44, baseType: !185, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1356, file: !1357, line: 45, baseType: !46, size: 32, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1356, file: !1357, line: 46, baseType: !104, size: 128, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1356, file: !1357, line: 47, baseType: !134, size: 32, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1356, file: !1357, line: 48, baseType: !1364, size: 64, offset: 320)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1356, file: !1357, line: 49, baseType: !1160, size: 320, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1356, file: !1357, line: 50, baseType: !290, size: 64, offset: 704)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1356, file: !1357, line: 51, baseType: !1369, size: 64, offset: 768)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1370, line: 29, baseType: !424)
!1370 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1356, file: !1357, line: 52, baseType: !1369, size: 64, offset: 832)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1356, file: !1357, line: 53, baseType: !1369, size: 64, offset: 896)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1356, file: !1357, line: 54, baseType: !1369, size: 64, offset: 960)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1356, file: !1357, line: 55, baseType: !1369, size: 64, offset: 1024)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1356, file: !1357, line: 56, baseType: !290, size: 64, offset: 1088)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1356, file: !1357, line: 57, baseType: !290, size: 64, offset: 1152)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1356, file: !1357, line: 58, baseType: !290, size: 64, offset: 1216)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1356, file: !1357, line: 59, baseType: !290, size: 64, offset: 1280)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1356, file: !1357, line: 60, baseType: !290, size: 64, offset: 1344)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1356, file: !1357, line: 61, baseType: !807, size: 64, offset: 1408)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1356, file: !1357, line: 62, baseType: !305, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1356, file: !1357, line: 63, baseType: !305, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1337, file: !38, line: 681, baseType: !305, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1337, file: !38, line: 682, baseType: !305, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1337, file: !38, line: 683, baseType: !305, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1337, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1337, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1337, file: !38, line: 690, baseType: !1389, size: 512, offset: 640)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1390)
!1390 = !{!1391, !1397, !1398, !1403, !1455, !1456, !1457, !1458}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1389, file: !33, line: 119, baseType: !1392, size: 256)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1393, line: 9, size: 256, elements: !1394)
!1393 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1392, file: !1393, line: 10, baseType: !360, size: 192, align: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1392, file: !1393, line: 11, baseType: !1369, size: 64, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1389, file: !33, line: 120, baseType: !1369, size: 64, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1389, file: !33, line: 121, baseType: !1399, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!32, !1402}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1389, file: !33, line: 122, baseType: !1404, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1406)
!1406 = !{!1407, !1432, !1433, !1436, !1441, !1442, !1450, !1454}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1405, file: !33, line: 160, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1410)
!1410 = !{!1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1409, file: !33, line: 216, baseType: !428, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1409, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1409, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1409, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1409, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1409, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1409, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1409, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1409, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1409, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1409, file: !33, line: 227, baseType: !170, size: 16, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1409, file: !33, line: 228, baseType: !170, size: 16, offset: 208)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1409, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1409, file: !33, line: 235, baseType: !1369, size: 64, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1409, file: !33, line: 236, baseType: !1402, size: 64, offset: 320)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1409, file: !33, line: 237, baseType: !1369, size: 64, offset: 384)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1409, file: !33, line: 238, baseType: !1402, size: 64, offset: 448)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1409, file: !33, line: 239, baseType: !1429, size: 4096, align: 512, offset: 512)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1405, size: 4096, align: 512, elements: !1430)
!1430 = !{!1431}
!1431 = !DISubrange(count: 8)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1405, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1405, file: !33, line: 162, baseType: !1434, size: 32, offset: 96)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !105, line: 32, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !275, line: 96, baseType: !46)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1405, file: !33, line: 163, baseType: !1437, size: 32, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !588, line: 274, baseType: !1438)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !588, line: 274, size: 32, elements: !1439)
!1439 = !{!1440}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1438, file: !588, line: 274, baseType: !587, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1405, file: !33, line: 164, baseType: !1402, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1405, file: !33, line: 165, baseType: !1443, size: 128, offset: 256)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1393, line: 14, size: 128, elements: !1444)
!1444 = !{!1445}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1443, file: !1393, line: 15, baseType: !1446, size: 128)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !361, line: 26, size: 128, elements: !1447)
!1447 = !{!1448, !1449}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1446, file: !361, line: 27, baseType: !377, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1446, file: !361, line: 28, baseType: !365, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1405, file: !33, line: 166, baseType: !1451, size: 64, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1369}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1405, file: !33, line: 167, baseType: !1369, size: 64, offset: 448)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1389, file: !33, line: 123, baseType: !158, size: 8, offset: 448)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1389, file: !33, line: 124, baseType: !158, size: 8, offset: 456)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1389, file: !33, line: 125, baseType: !158, size: 8, offset: 464)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1389, file: !33, line: 126, baseType: !158, size: 8, offset: 472)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1337, file: !38, line: 691, baseType: !558, size: 64, offset: 1152)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1337, file: !38, line: 692, baseType: !694, size: 256, offset: 1216)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1337, file: !38, line: 693, baseType: !1462, size: 192, offset: 1472)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1463, line: 41, baseType: !1464)
!1463 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1463, line: 37, size: 192, elements: !1465)
!1465 = !{!1466, !1467}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1464, file: !1463, line: 38, baseType: !134, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1464, file: !1463, line: 39, baseType: !104, size: 128, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1337, file: !38, line: 694, baseType: !1364, size: 64, offset: 1664)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1337, file: !38, line: 695, baseType: !120, size: 32, offset: 1728)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1337, file: !38, line: 696, baseType: !120, size: 32, offset: 1760)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1337, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1337, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1337, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1337, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1337, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1337, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1337, file: !38, line: 703, baseType: !305, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1337, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1337, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1337, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1337, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1337, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1337, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1337, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1337, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1337, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1337, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1337, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1337, file: !38, line: 715, baseType: !558, size: 64, offset: 2048)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1337, file: !38, line: 716, baseType: !558, size: 64, offset: 2112)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1337, file: !38, line: 717, baseType: !558, size: 64, offset: 2176)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1337, file: !38, line: 718, baseType: !558, size: 64, offset: 2240)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1337, file: !38, line: 720, baseType: !1494, size: 64, offset: 2304)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1495, file: !38, line: 633, baseType: !134, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1495, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1337, file: !38, line: 721, baseType: !1500, size: 64, offset: 2368)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{null, !807, !618}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1337, file: !38, line: 722, baseType: !1504, size: 64, offset: 2432)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !803, file: !26, line: 727, baseType: !1507, size: 64, offset: 4224)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1509)
!1509 = !{!1510, !1511, !1512, !1516, !1517, !1518}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1508, file: !38, line: 743, baseType: !867, size: 1472)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1508, file: !38, line: 744, baseType: !841, size: 64, offset: 1472)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1508, file: !38, line: 745, baseType: !1513, size: 64, offset: 1536)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{null, !807, !305}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1508, file: !38, line: 746, baseType: !841, size: 64, offset: 1600)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1508, file: !38, line: 747, baseType: !845, size: 64, offset: 1664)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1508, file: !38, line: 748, baseType: !845, size: 64, offset: 1728)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !803, file: !26, line: 736, baseType: !1520, size: 128, offset: 4288)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1521)
!1521 = !{!1522, !1526}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1520, file: !26, line: 531, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1525, line: 13, flags: DIFlagFwdDecl)
!1525 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1520, file: !26, line: 532, baseType: !1527, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !803, file: !26, line: 738, baseType: !1530, size: 64, offset: 4416)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1532)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !803, file: !26, line: 740, baseType: !1534, size: 64, offset: 4480)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !803, file: !26, line: 741, baseType: !558, size: 64, offset: 4544)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !803, file: !26, line: 746, baseType: !558, size: 64, offset: 4608)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !803, file: !26, line: 747, baseType: !1538, size: 64, offset: 4672)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1540)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !803, file: !26, line: 749, baseType: !1542, size: 64, offset: 4736)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1544)
!1544 = !{!1545, !1546, !1547}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1543, file: !26, line: 433, baseType: !7, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1543, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1543, file: !26, line: 435, baseType: !290, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !803, file: !26, line: 751, baseType: !104, size: 128, offset: 4800)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !803, file: !26, line: 762, baseType: !1550, size: 64, offset: 4928)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !803, file: !26, line: 770, baseType: !1553, offset: 4992)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1554, line: 5, elements: !531)
!1554 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !803, file: !26, line: 772, baseType: !1556, size: 64, offset: 4992)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1558, line: 18, flags: DIFlagFwdDecl)
!1558 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !803, file: !26, line: 773, baseType: !1560, size: 64, offset: 5056)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !828, line: 22, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !803, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !803, file: !26, line: 778, baseType: !1564, size: 32, offset: 5152)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !105, line: 21, baseType: !1565)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !105, line: 18, baseType: !1177)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !803, file: !26, line: 779, baseType: !1177, size: 32, offset: 5184)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !803, file: !26, line: 781, baseType: !134, size: 32, offset: 5216)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !803, file: !26, line: 782, baseType: !104, size: 128, offset: 5248)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !803, file: !26, line: 784, baseType: !1570, size: 64, offset: 5376)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !803, file: !26, line: 785, baseType: !189, size: 64, offset: 5440)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !803, file: !26, line: 787, baseType: !845, size: 64, offset: 5504)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !803, file: !26, line: 788, baseType: !1575, size: 64, offset: 5568)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !803, file: !26, line: 789, baseType: !1578, size: 64, offset: 5632)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !803, file: !26, line: 791, baseType: !1581, size: 64, offset: 5696)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1583)
!1583 = !{!1584, !1585, !1586, !1587, !1588}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1582, file: !26, line: 598, baseType: !53, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1582, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1582, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1582, file: !26, line: 601, baseType: !305, size: 8, offset: 96)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1582, file: !26, line: 602, baseType: !305, size: 8, offset: 104)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !803, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !803, file: !26, line: 795, baseType: !305, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !803, file: !26, line: 796, baseType: !305, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !803, file: !26, line: 797, baseType: !305, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !803, file: !26, line: 798, baseType: !305, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !803, file: !26, line: 799, baseType: !305, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !181, file: !182, line: 59, baseType: !1596, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!242, !801, !1321}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !181, file: !182, line: 61, baseType: !1600, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null, !1570}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !181, file: !182, line: 62, baseType: !845, size: 64, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !181, file: !182, line: 64, baseType: !841, size: 64, offset: 448)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !181, file: !182, line: 66, baseType: !296, size: 64, offset: 512)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !181, file: !182, line: 67, baseType: !1607, size: 64, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!315, !801}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !181, file: !182, line: 69, baseType: !1611, size: 64, offset: 640)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !801, !335, !343}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !181, file: !182, line: 71, baseType: !865, size: 64, offset: 704)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "grp", scope: !126, file: !127, line: 20, baseType: !190, size: 64, offset: 512)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !126, file: !127, line: 21, baseType: !1617, size: 64, offset: 576)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !1620)
!1620 = !{!1621, !1622, !1626}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1619, file: !26, line: 107, baseType: !279, size: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1619, file: !26, line: 108, baseType: !1623, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!273, !807, !1618, !242}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1619, file: !26, line: 110, baseType: !1627, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!273, !807, !1618, !185, !287}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !126, file: !127, line: 22, baseType: !1631, size: 64, offset: 640)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!46, !125, !807}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !127, line: 24, baseType: !290, size: 64, offset: 704)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "classdev", scope: !96, file: !3, line: 28, baseType: !803, size: 5824, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !105, line: 154, baseType: !7)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !108)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1641 = !{!0, !1642, !1644, !1646, !1651, !1654, !1659, !1661, !1663, !1665}
!1642 = !DIGlobalVariableExpression(var: !1643, expr: !DIExpression())
!1643 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_attribute_container_register206", scope: !2, file: !3, line: 85, type: !94, isLocal: true, isDefinition: true)
!1644 = !DIGlobalVariableExpression(var: !1645, expr: !DIExpression())
!1645 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_attribute_container_unregister207", scope: !2, file: !3, line: 109, type: !94, isLocal: true, isDefinition: true)
!1646 = !DIGlobalVariableExpression(var: !1647, expr: !DIExpression())
!1647 = distinct !DIGlobalVariable(scope: null, file: !3, line: 160, type: !1648, isLocal: true, isDefinition: true)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 288, elements: !1649)
!1649 = !{!1650}
!1650 = !DISubrange(count: 36)
!1651 = !DIGlobalVariableExpression(var: !1652, expr: !DIExpression())
!1652 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !1653, isLocal: true, isDefinition: true)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 24, elements: !243)
!1654 = !DIGlobalVariableExpression(var: !1655, expr: !DIExpression())
!1655 = distinct !DIGlobalVariable(scope: null, file: !3, line: 323, type: !1656, isLocal: true, isDefinition: true)
!1656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 280, elements: !1657)
!1657 = !{!1658}
!1658 = !DISubrange(count: 35)
!1659 = !DIGlobalVariableExpression(var: !1660, expr: !DIExpression())
!1660 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_attribute_container_find_class_device208", scope: !2, file: !3, line: 548, type: !94, isLocal: true, isDefinition: true)
!1661 = !DIGlobalVariableExpression(var: !1662, expr: !DIExpression())
!1662 = distinct !DIGlobalVariable(name: "attribute_container_mutex", scope: !2, file: !3, line: 64, type: !414, isLocal: true, isDefinition: true)
!1663 = !DIGlobalVariableExpression(var: !1664, expr: !DIExpression())
!1664 = distinct !DIGlobalVariable(name: "attribute_container_list", scope: !2, file: !3, line: 62, type: !104, isLocal: true, isDefinition: true)
!1665 = !DIGlobalVariableExpression(var: !1666, expr: !DIExpression())
!1666 = distinct !DIGlobalVariable(scope: null, file: !84, line: 480, type: !1667, isLocal: true, isDefinition: true)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 168, elements: !1668)
!1668 = !{!1669}
!1669 = !DISubrange(count: 21)
!1670 = !{i32 7, !"Dwarf Version", i32 5}
!1671 = !{i32 2, !"Debug Info Version", i32 3}
!1672 = !{i32 1, !"wchar_size", i32 2}
!1673 = !{i32 8, !"cf-protection-branch", i32 1}
!1674 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1675 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1676 = !{i32 1, !"Code Model", i32 2}
!1677 = !{i32 1, !"override-stack-alignment", i32 8}
!1678 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1679 = distinct !DISubprogram(name: "attribute_container_classdev_to_container", scope: !3, file: !3, line: 54, type: !1680, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1682)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!125, !807}
!1682 = !{!1683, !1684, !1685}
!1683 = !DILocalVariable(name: "classdev", arg: 1, scope: !1679, file: !3, line: 54, type: !807)
!1684 = !DILocalVariable(name: "ic", scope: !1679, file: !3, line: 56, type: !95)
!1685 = !DILocalVariable(name: "__mptr", scope: !1686, file: !3, line: 57, type: !94)
!1686 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 57, column: 3)
!1687 = !DILocation(line: 54, column: 58, scope: !1679)
!1688 = !DILocation(line: 56, column: 2, scope: !1679)
!1689 = !DILocation(line: 56, column: 29, scope: !1679)
!1690 = !DILocation(line: 57, column: 3, scope: !1686)
!1691 = !DILocation(line: 57, column: 3, scope: !1679)
!1692 = !DILocation(line: 58, column: 9, scope: !1679)
!1693 = !DILocation(line: 58, column: 13, scope: !1679)
!1694 = !DILocation(line: 59, column: 1, scope: !1679)
!1695 = !DILocation(line: 58, column: 2, scope: !1679)
!1696 = distinct !DISubprogram(name: "attribute_container_register", scope: !3, file: !3, line: 73, type: !1697, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1699)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!46, !125}
!1699 = !{!1700}
!1700 = !DILocalVariable(name: "cont", arg: 1, scope: !1696, file: !3, line: 73, type: !125)
!1701 = !DILocation(line: 73, column: 58, scope: !1696)
!1702 = !DILocation(line: 75, column: 18, scope: !1696)
!1703 = !DILocation(line: 75, column: 24, scope: !1696)
!1704 = !DILocation(line: 75, column: 2, scope: !1696)
!1705 = !DILocation(line: 76, column: 14, scope: !1696)
!1706 = !DILocation(line: 76, column: 20, scope: !1696)
!1707 = !DILocation(line: 76, column: 2, scope: !1696)
!1708 = !DILocation(line: 79, column: 2, scope: !1696)
!1709 = !DILocation(line: 80, column: 17, scope: !1696)
!1710 = !DILocation(line: 80, column: 23, scope: !1696)
!1711 = !DILocation(line: 80, column: 2, scope: !1696)
!1712 = !DILocation(line: 81, column: 2, scope: !1696)
!1713 = !DILocation(line: 83, column: 2, scope: !1696)
!1714 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !1715, file: !1715, line: 35, type: !1716, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1718)
!1715 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!1716 = !DISubroutineType(types: !1717)
!1717 = !{null, !108}
!1718 = !{!1719}
!1719 = !DILocalVariable(name: "list", arg: 1, scope: !1714, file: !1715, line: 35, type: !108)
!1720 = !DILocation(line: 35, column: 53, scope: !1714)
!1721 = !DILocation(line: 37, column: 2, scope: !1714)
!1722 = !DILocation(line: 37, column: 2, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1714, file: !1715, line: 37, column: 2)
!1724 = !DILocation(line: 37, column: 2, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1723, file: !1715, line: 37, column: 2)
!1726 = !DILocation(line: 37, column: 2, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !1715, line: 37, column: 2)
!1728 = !DILocation(line: 38, column: 2, scope: !1714)
!1729 = !DILocation(line: 38, column: 2, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1714, file: !1715, line: 38, column: 2)
!1731 = !DILocation(line: 38, column: 2, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1730, file: !1715, line: 38, column: 2)
!1733 = !DILocation(line: 38, column: 2, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1730, file: !1715, line: 38, column: 2)
!1735 = !DILocation(line: 39, column: 1, scope: !1714)
!1736 = !DISubprogram(name: "klist_init", scope: !100, file: !100, line: 34, type: !1737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !1739, !174, !174}
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!1740 = distinct !DISubprogram(name: "internal_container_klist_get", scope: !3, file: !3, line: 31, type: !175, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1741)
!1741 = !{!1742, !1743, !1744}
!1742 = !DILocalVariable(name: "n", arg: 1, scope: !1740, file: !3, line: 31, type: !177)
!1743 = !DILocalVariable(name: "ic", scope: !1740, file: !3, line: 33, type: !95)
!1744 = !DILocalVariable(name: "__mptr", scope: !1745, file: !3, line: 34, type: !94)
!1745 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 34, column: 3)
!1746 = !DILocation(line: 31, column: 61, scope: !1740)
!1747 = !DILocation(line: 33, column: 2, scope: !1740)
!1748 = !DILocation(line: 33, column: 29, scope: !1740)
!1749 = !DILocation(line: 34, column: 3, scope: !1745)
!1750 = !DILocation(line: 34, column: 3, scope: !1740)
!1751 = !DILocation(line: 35, column: 14, scope: !1740)
!1752 = !DILocation(line: 35, column: 18, scope: !1740)
!1753 = !DILocation(line: 35, column: 2, scope: !1740)
!1754 = !DILocation(line: 36, column: 1, scope: !1740)
!1755 = distinct !DISubprogram(name: "internal_container_klist_put", scope: !3, file: !3, line: 38, type: !175, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1756)
!1756 = !{!1757, !1758, !1759}
!1757 = !DILocalVariable(name: "n", arg: 1, scope: !1755, file: !3, line: 38, type: !177)
!1758 = !DILocalVariable(name: "ic", scope: !1755, file: !3, line: 40, type: !95)
!1759 = !DILocalVariable(name: "__mptr", scope: !1760, file: !3, line: 41, type: !94)
!1760 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 41, column: 3)
!1761 = !DILocation(line: 38, column: 61, scope: !1755)
!1762 = !DILocation(line: 40, column: 2, scope: !1755)
!1763 = !DILocation(line: 40, column: 29, scope: !1755)
!1764 = !DILocation(line: 41, column: 3, scope: !1760)
!1765 = !DILocation(line: 41, column: 3, scope: !1755)
!1766 = !DILocation(line: 42, column: 14, scope: !1755)
!1767 = !DILocation(line: 42, column: 18, scope: !1755)
!1768 = !DILocation(line: 42, column: 2, scope: !1755)
!1769 = !DILocation(line: 43, column: 1, scope: !1755)
!1770 = !DISubprogram(name: "mutex_lock", scope: !415, file: !415, line: 227, type: !1771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !1773}
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!1774 = distinct !DISubprogram(name: "list_add_tail", scope: !1715, file: !1715, line: 181, type: !1775, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1777)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null, !108, !108}
!1777 = !{!1778, !1779}
!1778 = !DILocalVariable(name: "new", arg: 1, scope: !1774, file: !1715, line: 181, type: !108)
!1779 = !DILocalVariable(name: "head", arg: 2, scope: !1774, file: !1715, line: 181, type: !108)
!1780 = !DILocation(line: 181, column: 52, scope: !1774)
!1781 = !DILocation(line: 181, column: 75, scope: !1774)
!1782 = !DILocation(line: 183, column: 13, scope: !1774)
!1783 = !DILocation(line: 183, column: 18, scope: !1774)
!1784 = !DILocation(line: 183, column: 24, scope: !1774)
!1785 = !DILocation(line: 183, column: 30, scope: !1774)
!1786 = !DILocation(line: 183, column: 2, scope: !1774)
!1787 = !DILocation(line: 184, column: 1, scope: !1774)
!1788 = !DISubprogram(name: "mutex_unlock", scope: !415, file: !415, line: 246, type: !1771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1789 = distinct !DISubprogram(name: "attribute_container_unregister", scope: !3, file: !3, line: 93, type: !1697, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1790)
!1790 = !{!1791, !1792, !1793}
!1791 = !DILocalVariable(name: "cont", arg: 1, scope: !1789, file: !3, line: 93, type: !125)
!1792 = !DILocalVariable(name: "retval", scope: !1789, file: !3, line: 95, type: !46)
!1793 = !DILabel(scope: !1789, name: "out", file: !3, line: 103)
!1794 = !DILocation(line: 93, column: 60, scope: !1789)
!1795 = !DILocation(line: 95, column: 2, scope: !1789)
!1796 = !DILocation(line: 95, column: 6, scope: !1789)
!1797 = !DILocation(line: 97, column: 2, scope: !1789)
!1798 = !DILocation(line: 98, column: 13, scope: !1789)
!1799 = !DILocation(line: 98, column: 19, scope: !1789)
!1800 = !DILocation(line: 98, column: 30, scope: !1789)
!1801 = !DILocation(line: 98, column: 2, scope: !1789)
!1802 = !DILocation(line: 99, column: 19, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 99, column: 6)
!1804 = !DILocation(line: 99, column: 25, scope: !1803)
!1805 = !DILocation(line: 99, column: 36, scope: !1803)
!1806 = !DILocation(line: 99, column: 7, scope: !1803)
!1807 = !DILocation(line: 99, column: 6, scope: !1789)
!1808 = !DILocation(line: 100, column: 3, scope: !1803)
!1809 = !DILocation(line: 101, column: 9, scope: !1789)
!1810 = !DILocation(line: 102, column: 12, scope: !1789)
!1811 = !DILocation(line: 102, column: 18, scope: !1789)
!1812 = !DILocation(line: 102, column: 2, scope: !1789)
!1813 = !DILocation(line: 103, column: 2, scope: !1789)
!1814 = !DILocation(line: 104, column: 15, scope: !1789)
!1815 = !DILocation(line: 104, column: 21, scope: !1789)
!1816 = !DILocation(line: 104, column: 32, scope: !1789)
!1817 = !DILocation(line: 104, column: 2, scope: !1789)
!1818 = !DILocation(line: 105, column: 2, scope: !1789)
!1819 = !DILocation(line: 106, column: 9, scope: !1789)
!1820 = !DILocation(line: 108, column: 1, scope: !1789)
!1821 = !DILocation(line: 106, column: 2, scope: !1789)
!1822 = distinct !DISubprogram(name: "spin_lock", scope: !1823, file: !1823, line: 349, type: !1824, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1827)
!1823 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !1826}
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!1827 = !{!1828}
!1828 = !DILocalVariable(name: "lock", arg: 1, scope: !1822, file: !1823, line: 349, type: !1826)
!1829 = !DILocation(line: 349, column: 51, scope: !1822)
!1830 = !DILocation(line: 351, column: 2, scope: !1822)
!1831 = !DILocation(line: 352, column: 1, scope: !1822)
!1832 = distinct !DISubprogram(name: "list_empty", scope: !1715, file: !1715, line: 371, type: !1833, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1837)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!46, !1835}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!1837 = !{!1838}
!1838 = !DILocalVariable(name: "head", arg: 1, scope: !1832, file: !1715, line: 371, type: !1835)
!1839 = !DILocation(line: 371, column: 54, scope: !1832)
!1840 = !DILocation(line: 373, column: 9, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1832, file: !1715, line: 373, column: 9)
!1842 = !DILocation(line: 373, column: 9, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1841, file: !1715, line: 373, column: 9)
!1844 = !DILocation(line: 373, column: 34, scope: !1832)
!1845 = !DILocation(line: 373, column: 31, scope: !1832)
!1846 = !DILocation(line: 373, column: 2, scope: !1832)
!1847 = distinct !DISubprogram(name: "list_del", scope: !1715, file: !1715, line: 227, type: !1716, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1848)
!1848 = !{!1849}
!1849 = !DILocalVariable(name: "entry", arg: 1, scope: !1847, file: !1715, line: 227, type: !108)
!1850 = !DILocation(line: 227, column: 47, scope: !1847)
!1851 = !DILocation(line: 229, column: 19, scope: !1847)
!1852 = !DILocation(line: 229, column: 2, scope: !1847)
!1853 = !DILocation(line: 230, column: 2, scope: !1847)
!1854 = !DILocation(line: 230, column: 9, scope: !1847)
!1855 = !DILocation(line: 230, column: 14, scope: !1847)
!1856 = !DILocation(line: 231, column: 2, scope: !1847)
!1857 = !DILocation(line: 231, column: 9, scope: !1847)
!1858 = !DILocation(line: 231, column: 14, scope: !1847)
!1859 = !DILocation(line: 232, column: 1, scope: !1847)
!1860 = distinct !DISubprogram(name: "spin_unlock", scope: !1823, file: !1823, line: 389, type: !1824, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1861)
!1861 = !{!1862}
!1862 = !DILocalVariable(name: "lock", arg: 1, scope: !1860, file: !1823, line: 389, type: !1826)
!1863 = !DILocation(line: 389, column: 53, scope: !1860)
!1864 = !DILocation(line: 391, column: 2, scope: !1860)
!1865 = !DILocation(line: 392, column: 1, scope: !1860)
!1866 = distinct !DISubprogram(name: "attribute_container_add_device", scope: !3, file: !3, line: 141, type: !1867, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1872)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !807, !1869}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!46, !125, !807, !807}
!1872 = !{!1873, !1874, !1875, !1876, !1879, !1882}
!1873 = !DILocalVariable(name: "dev", arg: 1, scope: !1866, file: !3, line: 141, type: !807)
!1874 = !DILocalVariable(name: "fn", arg: 2, scope: !1866, file: !3, line: 142, type: !1869)
!1875 = !DILocalVariable(name: "cont", scope: !1866, file: !3, line: 146, type: !125)
!1876 = !DILocalVariable(name: "__mptr", scope: !1877, file: !3, line: 149, type: !94)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 149, column: 2)
!1878 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 149, column: 2)
!1879 = !DILocalVariable(name: "ic", scope: !1880, file: !3, line: 150, type: !95)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 149, column: 61)
!1881 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 149, column: 2)
!1882 = !DILocalVariable(name: "__mptr", scope: !1883, file: !3, line: 149, type: !94)
!1883 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 149, column: 2)
!1884 = !DILocation(line: 141, column: 47, scope: !1866)
!1885 = !DILocation(line: 142, column: 17, scope: !1866)
!1886 = !DILocation(line: 146, column: 2, scope: !1866)
!1887 = !DILocation(line: 146, column: 30, scope: !1866)
!1888 = !DILocation(line: 148, column: 2, scope: !1866)
!1889 = !DILocation(line: 149, column: 2, scope: !1877)
!1890 = !DILocation(line: 149, column: 2, scope: !1878)
!1891 = !DILocation(line: 149, column: 2, scope: !1881)
!1892 = !DILocation(line: 150, column: 3, scope: !1880)
!1893 = !DILocation(line: 150, column: 30, scope: !1880)
!1894 = !DILocation(line: 152, column: 40, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 152, column: 7)
!1896 = !DILocation(line: 152, column: 7, scope: !1895)
!1897 = !DILocation(line: 152, column: 7, scope: !1880)
!1898 = !DILocation(line: 153, column: 4, scope: !1895)
!1899 = !DILocation(line: 155, column: 8, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 155, column: 7)
!1901 = !DILocation(line: 155, column: 14, scope: !1900)
!1902 = !DILocation(line: 155, column: 20, scope: !1900)
!1903 = !DILocation(line: 155, column: 26, scope: !1900)
!1904 = !DILocation(line: 155, column: 7, scope: !1880)
!1905 = !DILocation(line: 156, column: 4, scope: !1900)
!1906 = !DILocation(line: 158, column: 8, scope: !1880)
!1907 = !DILocation(line: 158, column: 6, scope: !1880)
!1908 = !DILocation(line: 159, column: 8, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 159, column: 7)
!1910 = !DILocation(line: 159, column: 7, scope: !1880)
!1911 = !DILocation(line: 160, column: 4, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 160, column: 4)
!1913 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 159, column: 12)
!1914 = !DILocation(line: 160, column: 4, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 160, column: 4)
!1916 = !DILocation(line: 161, column: 4, scope: !1913)
!1917 = !DILocation(line: 164, column: 14, scope: !1880)
!1918 = !DILocation(line: 164, column: 3, scope: !1880)
!1919 = !DILocation(line: 164, column: 7, scope: !1880)
!1920 = !DILocation(line: 164, column: 12, scope: !1880)
!1921 = !DILocation(line: 165, column: 22, scope: !1880)
!1922 = !DILocation(line: 165, column: 26, scope: !1880)
!1923 = !DILocation(line: 165, column: 3, scope: !1880)
!1924 = !DILocation(line: 166, column: 36, scope: !1880)
!1925 = !DILocation(line: 166, column: 25, scope: !1880)
!1926 = !DILocation(line: 166, column: 3, scope: !1880)
!1927 = !DILocation(line: 166, column: 7, scope: !1880)
!1928 = !DILocation(line: 166, column: 16, scope: !1880)
!1929 = !DILocation(line: 166, column: 23, scope: !1880)
!1930 = !DILocation(line: 167, column: 24, scope: !1880)
!1931 = !DILocation(line: 167, column: 30, scope: !1880)
!1932 = !DILocation(line: 167, column: 3, scope: !1880)
!1933 = !DILocation(line: 167, column: 7, scope: !1880)
!1934 = !DILocation(line: 167, column: 16, scope: !1880)
!1935 = !DILocation(line: 167, column: 22, scope: !1880)
!1936 = !DILocation(line: 168, column: 3, scope: !1880)
!1937 = !DILocation(line: 168, column: 9, scope: !1880)
!1938 = !DILocation(line: 168, column: 16, scope: !1880)
!1939 = !DILocation(line: 168, column: 28, scope: !1880)
!1940 = !DILocation(line: 169, column: 17, scope: !1880)
!1941 = !DILocation(line: 169, column: 21, scope: !1880)
!1942 = !DILocation(line: 169, column: 46, scope: !1880)
!1943 = !DILocation(line: 169, column: 37, scope: !1880)
!1944 = !DILocation(line: 169, column: 3, scope: !1880)
!1945 = !DILocation(line: 170, column: 7, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 170, column: 7)
!1947 = !DILocation(line: 170, column: 7, scope: !1880)
!1948 = !DILocation(line: 171, column: 4, scope: !1946)
!1949 = !DILocation(line: 171, column: 7, scope: !1946)
!1950 = !DILocation(line: 171, column: 13, scope: !1946)
!1951 = !DILocation(line: 171, column: 19, scope: !1946)
!1952 = !DILocation(line: 171, column: 23, scope: !1946)
!1953 = !DILocation(line: 173, column: 42, scope: !1946)
!1954 = !DILocation(line: 173, column: 46, scope: !1946)
!1955 = !DILocation(line: 173, column: 4, scope: !1946)
!1956 = !DILocation(line: 174, column: 19, scope: !1880)
!1957 = !DILocation(line: 174, column: 23, scope: !1880)
!1958 = !DILocation(line: 174, column: 30, scope: !1880)
!1959 = !DILocation(line: 174, column: 36, scope: !1880)
!1960 = !DILocation(line: 174, column: 3, scope: !1880)
!1961 = !DILocation(line: 175, column: 2, scope: !1881)
!1962 = !DILocation(line: 175, column: 2, scope: !1880)
!1963 = !DILocation(line: 149, column: 2, scope: !1883)
!1964 = distinct !{!1964, !1890, !1965, !1966, !1967}
!1965 = !DILocation(line: 175, column: 2, scope: !1878)
!1966 = !{!"llvm.loop.mustprogress"}
!1967 = !{!"llvm.loop.unroll.disable"}
!1968 = !DILocation(line: 176, column: 2, scope: !1866)
!1969 = !DILocation(line: 177, column: 1, scope: !1866)
!1970 = distinct !DISubprogram(name: "attribute_container_no_classdevs", scope: !127, file: !127, line: 28, type: !1697, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1971)
!1971 = !{!1972}
!1972 = !DILocalVariable(name: "atc", arg: 1, scope: !1970, file: !127, line: 28, type: !125)
!1973 = !DILocation(line: 28, column: 62, scope: !1970)
!1974 = !DILocation(line: 30, column: 9, scope: !1970)
!1975 = !DILocation(line: 30, column: 14, scope: !1970)
!1976 = !DILocation(line: 30, column: 20, scope: !1970)
!1977 = !DILocation(line: 30, column: 2, scope: !1970)
!1978 = distinct !DISubprogram(name: "kzalloc", scope: !84, file: !84, line: 719, type: !1979, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1981)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!94, !287, !1636}
!1981 = !{!1982, !1983}
!1982 = !DILocalVariable(name: "size", arg: 1, scope: !1978, file: !84, line: 719, type: !287)
!1983 = !DILocalVariable(name: "flags", arg: 2, scope: !1978, file: !84, line: 719, type: !1636)
!1984 = !DILocation(line: 719, column: 52, scope: !1978)
!1985 = !DILocation(line: 719, column: 64, scope: !1978)
!1986 = !DILocation(line: 721, column: 17, scope: !1978)
!1987 = !DILocation(line: 721, column: 23, scope: !1978)
!1988 = !DILocation(line: 721, column: 29, scope: !1978)
!1989 = !DILocation(line: 721, column: 9, scope: !1978)
!1990 = !DILocation(line: 721, column: 2, scope: !1978)
!1991 = !DISubprogram(name: "_dev_err", scope: !1992, file: !1992, line: 50, type: !1993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1992 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!1993 = !DISubroutineType(types: !1994)
!1994 = !{null, !801, !185, null}
!1995 = !DISubprogram(name: "device_initialize", scope: !26, file: !26, line: 1056, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1996 = !DISubprogram(name: "get_device", scope: !26, file: !26, line: 1230, type: !1997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!807, !807}
!1999 = distinct !DISubprogram(name: "attribute_container_release", scope: !3, file: !3, line: 112, type: !846, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2000)
!2000 = !{!2001, !2002, !2003, !2005}
!2001 = !DILocalVariable(name: "classdev", arg: 1, scope: !1999, file: !3, line: 112, type: !807)
!2002 = !DILocalVariable(name: "ic", scope: !1999, file: !3, line: 114, type: !95)
!2003 = !DILocalVariable(name: "__mptr", scope: !2004, file: !3, line: 115, type: !94)
!2004 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 115, column: 5)
!2005 = !DILocalVariable(name: "dev", scope: !1999, file: !3, line: 116, type: !807)
!2006 = !DILocation(line: 112, column: 56, scope: !1999)
!2007 = !DILocation(line: 114, column: 2, scope: !1999)
!2008 = !DILocation(line: 114, column: 29, scope: !1999)
!2009 = !DILocation(line: 115, column: 5, scope: !2004)
!2010 = !DILocation(line: 115, column: 5, scope: !1999)
!2011 = !DILocation(line: 116, column: 2, scope: !1999)
!2012 = !DILocation(line: 116, column: 17, scope: !1999)
!2013 = !DILocation(line: 116, column: 23, scope: !1999)
!2014 = !DILocation(line: 116, column: 33, scope: !1999)
!2015 = !DILocation(line: 118, column: 8, scope: !1999)
!2016 = !DILocation(line: 118, column: 2, scope: !1999)
!2017 = !DILocation(line: 119, column: 13, scope: !1999)
!2018 = !DILocation(line: 119, column: 2, scope: !1999)
!2019 = !DILocation(line: 120, column: 1, scope: !1999)
!2020 = !DISubprogram(name: "dev_set_name", scope: !26, file: !26, line: 879, type: !2021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!46, !807, !185, null}
!2023 = distinct !DISubprogram(name: "dev_name", scope: !26, file: !26, line: 858, type: !2024, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2026)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!185, !801}
!2026 = !{!2027}
!2027 = !DILocalVariable(name: "dev", arg: 1, scope: !2023, file: !26, line: 858, type: !801)
!2028 = !DILocation(line: 858, column: 57, scope: !2023)
!2029 = !DILocation(line: 861, column: 6, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2023, file: !26, line: 861, column: 6)
!2031 = !DILocation(line: 861, column: 11, scope: !2030)
!2032 = !DILocation(line: 861, column: 6, scope: !2023)
!2033 = !DILocation(line: 862, column: 10, scope: !2030)
!2034 = !DILocation(line: 862, column: 15, scope: !2030)
!2035 = !DILocation(line: 862, column: 3, scope: !2030)
!2036 = !DILocation(line: 864, column: 23, scope: !2023)
!2037 = !DILocation(line: 864, column: 28, scope: !2023)
!2038 = !DILocation(line: 864, column: 9, scope: !2023)
!2039 = !DILocation(line: 864, column: 2, scope: !2023)
!2040 = !DILocation(line: 865, column: 1, scope: !2023)
!2041 = distinct !DISubprogram(name: "attribute_container_add_class_device", scope: !3, file: !3, line: 452, type: !842, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2042)
!2042 = !{!2043, !2044}
!2043 = !DILocalVariable(name: "classdev", arg: 1, scope: !2041, file: !3, line: 452, type: !807)
!2044 = !DILocalVariable(name: "error", scope: !2041, file: !3, line: 454, type: !46)
!2045 = !DILocation(line: 452, column: 53, scope: !2041)
!2046 = !DILocation(line: 454, column: 2, scope: !2041)
!2047 = !DILocation(line: 454, column: 6, scope: !2041)
!2048 = !DILocation(line: 454, column: 25, scope: !2041)
!2049 = !DILocation(line: 454, column: 14, scope: !2041)
!2050 = !DILocation(line: 456, column: 6, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 456, column: 6)
!2052 = !DILocation(line: 456, column: 6, scope: !2041)
!2053 = !DILocation(line: 457, column: 10, scope: !2051)
!2054 = !DILocation(line: 457, column: 3, scope: !2051)
!2055 = !DILocation(line: 458, column: 39, scope: !2041)
!2056 = !DILocation(line: 458, column: 9, scope: !2041)
!2057 = !DILocation(line: 458, column: 2, scope: !2041)
!2058 = !DILocation(line: 459, column: 1, scope: !2041)
!2059 = !DISubprogram(name: "klist_add_tail", scope: !100, file: !100, line: 43, type: !2060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !177, !1739}
!2062 = distinct !DISubprogram(name: "attribute_container_remove_device", scope: !3, file: !3, line: 206, type: !2063, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2068)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{null, !807, !2065}
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !125, !807, !807}
!2068 = !{!2069, !2070, !2071, !2072, !2075, !2078, !2083, !2087, !2089}
!2069 = !DILocalVariable(name: "dev", arg: 1, scope: !2062, file: !3, line: 206, type: !807)
!2070 = !DILocalVariable(name: "fn", arg: 2, scope: !2062, file: !3, line: 207, type: !2065)
!2071 = !DILocalVariable(name: "cont", scope: !2062, file: !3, line: 211, type: !125)
!2072 = !DILocalVariable(name: "__mptr", scope: !2073, file: !3, line: 214, type: !94)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 214, column: 2)
!2074 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 214, column: 2)
!2075 = !DILocalVariable(name: "ic", scope: !2076, file: !3, line: 215, type: !95)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 214, column: 61)
!2077 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 214, column: 2)
!2078 = !DILocalVariable(name: "iter", scope: !2076, file: !3, line: 216, type: !2079)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_iter", file: !100, line: 54, size: 128, elements: !2080)
!2080 = !{!2081, !2082}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "i_klist", scope: !2079, file: !100, line: 55, baseType: !1739, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "i_cur", scope: !2079, file: !100, line: 56, baseType: !177, size: 64, offset: 64)
!2083 = !DILocalVariable(name: "n", scope: !2084, file: !3, line: 224, type: !177)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 224, column: 3)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 224, column: 3)
!2086 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 224, column: 3)
!2087 = !DILocalVariable(name: "__mptr", scope: !2088, file: !3, line: 224, type: !94)
!2088 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 224, column: 3)
!2089 = !DILocalVariable(name: "__mptr", scope: !2090, file: !3, line: 214, type: !94)
!2090 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 214, column: 2)
!2091 = !DILocation(line: 206, column: 50, scope: !2062)
!2092 = !DILocation(line: 207, column: 14, scope: !2062)
!2093 = !DILocation(line: 211, column: 2, scope: !2062)
!2094 = !DILocation(line: 211, column: 30, scope: !2062)
!2095 = !DILocation(line: 213, column: 2, scope: !2062)
!2096 = !DILocation(line: 214, column: 2, scope: !2073)
!2097 = !DILocation(line: 214, column: 2, scope: !2074)
!2098 = !DILocation(line: 214, column: 2, scope: !2077)
!2099 = !DILocation(line: 215, column: 3, scope: !2076)
!2100 = !DILocation(line: 215, column: 30, scope: !2076)
!2101 = !DILocation(line: 216, column: 3, scope: !2076)
!2102 = !DILocation(line: 216, column: 21, scope: !2076)
!2103 = !DILocation(line: 218, column: 40, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 218, column: 7)
!2105 = !DILocation(line: 218, column: 7, scope: !2104)
!2106 = !DILocation(line: 218, column: 7, scope: !2076)
!2107 = !DILocation(line: 219, column: 4, scope: !2104)
!2108 = !DILocation(line: 221, column: 8, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 221, column: 7)
!2110 = !DILocation(line: 221, column: 14, scope: !2109)
!2111 = !DILocation(line: 221, column: 20, scope: !2109)
!2112 = !DILocation(line: 221, column: 26, scope: !2109)
!2113 = !DILocation(line: 221, column: 7, scope: !2076)
!2114 = !DILocation(line: 222, column: 4, scope: !2109)
!2115 = !DILocation(line: 224, column: 3, scope: !2086)
!2116 = !DILocation(line: 224, column: 3, scope: !2084)
!2117 = !DILocation(line: 224, column: 3, scope: !2088)
!2118 = !DILocation(line: 224, column: 3, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 224, column: 3)
!2120 = !DILocation(line: 224, column: 3, scope: !2085)
!2121 = !DILocation(line: 225, column: 8, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 225, column: 8)
!2123 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 224, column: 60)
!2124 = !DILocation(line: 225, column: 15, scope: !2122)
!2125 = !DILocation(line: 225, column: 19, scope: !2122)
!2126 = !DILocation(line: 225, column: 28, scope: !2122)
!2127 = !DILocation(line: 225, column: 12, scope: !2122)
!2128 = !DILocation(line: 225, column: 8, scope: !2123)
!2129 = !DILocation(line: 226, column: 5, scope: !2122)
!2130 = distinct !{!2130, !2115, !2131, !1966, !1967}
!2131 = !DILocation(line: 234, column: 3, scope: !2086)
!2132 = !DILocation(line: 227, column: 15, scope: !2123)
!2133 = !DILocation(line: 227, column: 19, scope: !2123)
!2134 = !DILocation(line: 227, column: 4, scope: !2123)
!2135 = !DILocation(line: 228, column: 8, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 228, column: 8)
!2137 = !DILocation(line: 228, column: 8, scope: !2123)
!2138 = !DILocation(line: 229, column: 5, scope: !2136)
!2139 = !DILocation(line: 229, column: 8, scope: !2136)
!2140 = !DILocation(line: 229, column: 14, scope: !2136)
!2141 = !DILocation(line: 229, column: 20, scope: !2136)
!2142 = !DILocation(line: 229, column: 24, scope: !2136)
!2143 = !DILocation(line: 231, column: 39, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2136, file: !3, line: 230, column: 9)
!2145 = !DILocation(line: 231, column: 43, scope: !2144)
!2146 = !DILocation(line: 231, column: 5, scope: !2144)
!2147 = !DILocation(line: 232, column: 24, scope: !2144)
!2148 = !DILocation(line: 232, column: 28, scope: !2144)
!2149 = !DILocation(line: 232, column: 5, scope: !2144)
!2150 = !DILocation(line: 235, column: 2, scope: !2077)
!2151 = !DILocation(line: 235, column: 2, scope: !2076)
!2152 = !DILocation(line: 214, column: 2, scope: !2090)
!2153 = distinct !{!2153, !2097, !2154, !1966, !1967}
!2154 = !DILocation(line: 235, column: 2, scope: !2074)
!2155 = !DILocation(line: 236, column: 2, scope: !2062)
!2156 = !DILocation(line: 237, column: 1, scope: !2062)
!2157 = !DISubprogram(name: "klist_iter_init", scope: !100, file: !100, line: 60, type: !2158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !1739, !2160}
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2161 = !DISubprogram(name: "klist_next", scope: !100, file: !100, line: 65, type: !2162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!177, !2160}
!2164 = !DISubprogram(name: "klist_iter_exit", scope: !100, file: !100, line: 63, type: !2165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !2160}
!2167 = !DISubprogram(name: "klist_del", scope: !100, file: !100, line: 48, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2168 = distinct !DISubprogram(name: "attribute_container_remove_attrs", scope: !3, file: !3, line: 486, type: !846, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2169)
!2169 = !{!2170, !2171, !2172, !2173}
!2170 = !DILocalVariable(name: "classdev", arg: 1, scope: !2168, file: !3, line: 486, type: !807)
!2171 = !DILocalVariable(name: "cont", scope: !2168, file: !3, line: 488, type: !125)
!2172 = !DILocalVariable(name: "attrs", scope: !2168, file: !3, line: 490, type: !1617)
!2173 = !DILocalVariable(name: "i", scope: !2168, file: !3, line: 491, type: !46)
!2174 = !DILocation(line: 486, column: 49, scope: !2168)
!2175 = !DILocation(line: 488, column: 2, scope: !2168)
!2176 = !DILocation(line: 488, column: 30, scope: !2168)
!2177 = !DILocation(line: 489, column: 45, scope: !2168)
!2178 = !DILocation(line: 489, column: 3, scope: !2168)
!2179 = !DILocation(line: 490, column: 2, scope: !2168)
!2180 = !DILocation(line: 490, column: 28, scope: !2168)
!2181 = !DILocation(line: 490, column: 36, scope: !2168)
!2182 = !DILocation(line: 490, column: 42, scope: !2168)
!2183 = !DILocation(line: 491, column: 2, scope: !2168)
!2184 = !DILocation(line: 491, column: 6, scope: !2168)
!2185 = !DILocation(line: 493, column: 7, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 493, column: 6)
!2187 = !DILocation(line: 493, column: 13, scope: !2186)
!2188 = !DILocation(line: 493, column: 17, scope: !2186)
!2189 = !DILocation(line: 493, column: 23, scope: !2186)
!2190 = !DILocation(line: 493, column: 6, scope: !2168)
!2191 = !DILocation(line: 494, column: 3, scope: !2186)
!2192 = !DILocation(line: 496, column: 6, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 496, column: 6)
!2194 = !DILocation(line: 496, column: 12, scope: !2193)
!2195 = !DILocation(line: 496, column: 6, scope: !2168)
!2196 = !DILocation(line: 497, column: 23, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 496, column: 17)
!2198 = !DILocation(line: 497, column: 33, scope: !2197)
!2199 = !DILocation(line: 497, column: 39, scope: !2197)
!2200 = !DILocation(line: 497, column: 45, scope: !2197)
!2201 = !DILocation(line: 497, column: 3, scope: !2197)
!2202 = !DILocation(line: 498, column: 3, scope: !2197)
!2203 = !DILocation(line: 501, column: 9, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 501, column: 2)
!2205 = !DILocation(line: 501, column: 7, scope: !2204)
!2206 = !DILocation(line: 501, column: 14, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 501, column: 2)
!2208 = !DILocation(line: 501, column: 20, scope: !2207)
!2209 = !DILocation(line: 501, column: 2, scope: !2204)
!2210 = !DILocation(line: 502, column: 22, scope: !2207)
!2211 = !DILocation(line: 502, column: 32, scope: !2207)
!2212 = !DILocation(line: 502, column: 38, scope: !2207)
!2213 = !DILocation(line: 502, column: 3, scope: !2207)
!2214 = !DILocation(line: 501, column: 25, scope: !2207)
!2215 = !DILocation(line: 501, column: 2, scope: !2207)
!2216 = distinct !{!2216, !2209, !2217, !1966, !1967}
!2217 = !DILocation(line: 502, column: 40, scope: !2204)
!2218 = !DILocation(line: 503, column: 1, scope: !2168)
!2219 = !DISubprogram(name: "device_unregister", scope: !26, file: !26, line: 1055, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2220 = distinct !DISubprogram(name: "attribute_container_device_trigger_safe", scope: !3, file: !3, line: 297, type: !2221, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!46, !807, !1869, !1869}
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229, !2230, !2233, !2236, !2239, !2242, !2246}
!2224 = !DILocalVariable(name: "dev", arg: 1, scope: !2220, file: !3, line: 297, type: !807)
!2225 = !DILocalVariable(name: "fn", arg: 2, scope: !2220, file: !3, line: 298, type: !1869)
!2226 = !DILocalVariable(name: "undo", arg: 3, scope: !2220, file: !3, line: 301, type: !1869)
!2227 = !DILocalVariable(name: "cont", scope: !2220, file: !3, line: 305, type: !125)
!2228 = !DILocalVariable(name: "failed", scope: !2220, file: !3, line: 305, type: !125)
!2229 = !DILocalVariable(name: "ret", scope: !2220, file: !3, line: 306, type: !46)
!2230 = !DILocalVariable(name: "__mptr", scope: !2231, file: !3, line: 310, type: !94)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 310, column: 2)
!2232 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 310, column: 2)
!2233 = !DILocalVariable(name: "__mptr", scope: !2234, file: !3, line: 310, type: !94)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 310, column: 2)
!2235 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 310, column: 2)
!2236 = !DILocalVariable(name: "__ret_warn_on", scope: !2237, file: !3, line: 323, type: !46)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 323, column: 14)
!2238 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 323, column: 6)
!2239 = !DILocalVariable(name: "__flags", scope: !2240, file: !3, line: 323, type: !46)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 323, column: 14)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 323, column: 14)
!2242 = !DILocalVariable(name: "__mptr", scope: !2243, file: !3, line: 324, type: !94)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 324, column: 3)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 324, column: 3)
!2245 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 323, column: 30)
!2246 = !DILocalVariable(name: "__mptr", scope: !2247, file: !3, line: 324, type: !94)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 324, column: 3)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 324, column: 3)
!2249 = !DILocation(line: 297, column: 56, scope: !2220)
!2250 = !DILocation(line: 298, column: 12, scope: !2220)
!2251 = !DILocation(line: 301, column: 12, scope: !2220)
!2252 = !DILocation(line: 305, column: 2, scope: !2220)
!2253 = !DILocation(line: 305, column: 30, scope: !2220)
!2254 = !DILocation(line: 305, column: 37, scope: !2220)
!2255 = !DILocation(line: 306, column: 2, scope: !2220)
!2256 = !DILocation(line: 306, column: 6, scope: !2220)
!2257 = !DILocation(line: 308, column: 2, scope: !2220)
!2258 = !DILocation(line: 310, column: 2, scope: !2231)
!2259 = !DILocation(line: 310, column: 2, scope: !2232)
!2260 = !DILocation(line: 310, column: 2, scope: !2235)
!2261 = !DILocation(line: 312, column: 8, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 312, column: 7)
!2263 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 310, column: 61)
!2264 = !DILocation(line: 312, column: 14, scope: !2262)
!2265 = !DILocation(line: 312, column: 20, scope: !2262)
!2266 = !DILocation(line: 312, column: 26, scope: !2262)
!2267 = !DILocation(line: 312, column: 7, scope: !2263)
!2268 = !DILocation(line: 313, column: 4, scope: !2262)
!2269 = !DILocation(line: 315, column: 52, scope: !2263)
!2270 = !DILocation(line: 315, column: 57, scope: !2263)
!2271 = !DILocation(line: 316, column: 10, scope: !2263)
!2272 = !DILocation(line: 316, column: 14, scope: !2263)
!2273 = !DILocation(line: 315, column: 9, scope: !2263)
!2274 = !DILocation(line: 315, column: 7, scope: !2263)
!2275 = !DILocation(line: 317, column: 7, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 317, column: 7)
!2277 = !DILocation(line: 317, column: 7, scope: !2263)
!2278 = !DILocation(line: 318, column: 13, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 317, column: 12)
!2280 = !DILocation(line: 318, column: 11, scope: !2279)
!2281 = !DILocation(line: 319, column: 4, scope: !2279)
!2282 = !DILocation(line: 321, column: 2, scope: !2263)
!2283 = !DILocation(line: 310, column: 2, scope: !2234)
!2284 = distinct !{!2284, !2259, !2285, !1966, !1967}
!2285 = !DILocation(line: 321, column: 2, scope: !2232)
!2286 = !DILocation(line: 323, column: 6, scope: !2238)
!2287 = !DILocation(line: 323, column: 10, scope: !2238)
!2288 = !DILocation(line: 323, column: 14, scope: !2237)
!2289 = !DILocation(line: 323, column: 14, scope: !2241)
!2290 = !DILocation(line: 323, column: 14, scope: !2240)
!2291 = !DILocation(line: 323, column: 14, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 323, column: 14)
!2293 = !DILocation(line: 323, column: 14, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 323, column: 14)
!2295 = !{i64 2152709431, i64 2152709460, i64 2152709506, i64 2152709564, i64 2152709618, i64 2152709672, i64 2152709727, i64 2152709758, i64 2152710066, i64 2152710072, i64 2152710119, i64 2152710142, i64 2152710168}
!2296 = !DILocation(line: 323, column: 14, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 323, column: 14)
!2298 = !DILocation(line: 323, column: 14, scope: !2238)
!2299 = !DILocation(line: 323, column: 6, scope: !2220)
!2300 = !DILocation(line: 324, column: 3, scope: !2243)
!2301 = !DILocation(line: 324, column: 3, scope: !2244)
!2302 = !DILocation(line: 324, column: 3, scope: !2248)
!2303 = !DILocation(line: 326, column: 8, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 326, column: 8)
!2305 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 324, column: 62)
!2306 = !DILocation(line: 326, column: 18, scope: !2304)
!2307 = !DILocation(line: 326, column: 15, scope: !2304)
!2308 = !DILocation(line: 326, column: 8, scope: !2305)
!2309 = !DILocation(line: 327, column: 5, scope: !2304)
!2310 = !DILocation(line: 329, column: 9, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 329, column: 8)
!2312 = !DILocation(line: 329, column: 15, scope: !2311)
!2313 = !DILocation(line: 329, column: 21, scope: !2311)
!2314 = !DILocation(line: 329, column: 27, scope: !2311)
!2315 = !DILocation(line: 329, column: 8, scope: !2305)
!2316 = !DILocation(line: 330, column: 5, scope: !2311)
!2317 = !DILocation(line: 332, column: 47, scope: !2305)
!2318 = !DILocation(line: 332, column: 52, scope: !2305)
!2319 = !DILocation(line: 333, column: 12, scope: !2305)
!2320 = !DILocation(line: 332, column: 4, scope: !2305)
!2321 = !DILocation(line: 334, column: 3, scope: !2305)
!2322 = !DILocation(line: 324, column: 3, scope: !2247)
!2323 = distinct !{!2323, !2301, !2324, !1966, !1967}
!2324 = !DILocation(line: 334, column: 3, scope: !2244)
!2325 = !DILocation(line: 335, column: 2, scope: !2245)
!2326 = !DILocation(line: 337, column: 2, scope: !2220)
!2327 = !DILocation(line: 338, column: 9, scope: !2220)
!2328 = !DILocation(line: 340, column: 1, scope: !2220)
!2329 = !DILocation(line: 338, column: 2, scope: !2220)
!2330 = distinct !DISubprogram(name: "do_attribute_container_device_trigger_safe", scope: !3, file: !3, line: 240, type: !2331, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2333)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!46, !807, !125, !1869, !1869}
!2333 = !{!2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2346, !2348, !2349, !2353}
!2334 = !DILocalVariable(name: "dev", arg: 1, scope: !2330, file: !3, line: 240, type: !807)
!2335 = !DILocalVariable(name: "cont", arg: 2, scope: !2330, file: !3, line: 241, type: !125)
!2336 = !DILocalVariable(name: "fn", arg: 3, scope: !2330, file: !3, line: 242, type: !1869)
!2337 = !DILocalVariable(name: "undo", arg: 4, scope: !2330, file: !3, line: 244, type: !1869)
!2338 = !DILocalVariable(name: "ret", scope: !2330, file: !3, line: 247, type: !46)
!2339 = !DILocalVariable(name: "ic", scope: !2330, file: !3, line: 248, type: !95)
!2340 = !DILocalVariable(name: "failed", scope: !2330, file: !3, line: 248, type: !95)
!2341 = !DILocalVariable(name: "iter", scope: !2330, file: !3, line: 249, type: !2079)
!2342 = !DILocalVariable(name: "n", scope: !2343, file: !3, line: 254, type: !177)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 254, column: 2)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 254, column: 2)
!2345 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 254, column: 2)
!2346 = !DILocalVariable(name: "__mptr", scope: !2347, file: !3, line: 254, type: !94)
!2347 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 254, column: 2)
!2348 = !DILabel(scope: !2330, name: "fail", file: !3, line: 266)
!2349 = !DILocalVariable(name: "n", scope: !2350, file: !3, line: 271, type: !177)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 271, column: 2)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 271, column: 2)
!2352 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 271, column: 2)
!2353 = !DILocalVariable(name: "__mptr", scope: !2354, file: !3, line: 271, type: !94)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 271, column: 2)
!2355 = !DILocation(line: 240, column: 59, scope: !2330)
!2356 = !DILocation(line: 241, column: 37, scope: !2330)
!2357 = !DILocation(line: 242, column: 15, scope: !2330)
!2358 = !DILocation(line: 244, column: 15, scope: !2330)
!2359 = !DILocation(line: 247, column: 2, scope: !2330)
!2360 = !DILocation(line: 247, column: 6, scope: !2330)
!2361 = !DILocation(line: 248, column: 2, scope: !2330)
!2362 = !DILocation(line: 248, column: 29, scope: !2330)
!2363 = !DILocation(line: 248, column: 34, scope: !2330)
!2364 = !DILocation(line: 249, column: 2, scope: !2330)
!2365 = !DILocation(line: 249, column: 20, scope: !2330)
!2366 = !DILocation(line: 251, column: 39, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 251, column: 6)
!2368 = !DILocation(line: 251, column: 6, scope: !2367)
!2369 = !DILocation(line: 251, column: 6, scope: !2330)
!2370 = !DILocation(line: 252, column: 10, scope: !2367)
!2371 = !DILocation(line: 252, column: 13, scope: !2367)
!2372 = !DILocation(line: 252, column: 19, scope: !2367)
!2373 = !DILocation(line: 252, column: 3, scope: !2367)
!2374 = !DILocation(line: 254, column: 2, scope: !2345)
!2375 = !DILocation(line: 254, column: 2, scope: !2343)
!2376 = !DILocation(line: 254, column: 2, scope: !2347)
!2377 = !DILocation(line: 254, column: 2, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 254, column: 2)
!2379 = !DILocation(line: 254, column: 2, scope: !2344)
!2380 = !DILocation(line: 255, column: 7, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 255, column: 7)
!2382 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 254, column: 59)
!2383 = !DILocation(line: 255, column: 14, scope: !2381)
!2384 = !DILocation(line: 255, column: 18, scope: !2381)
!2385 = !DILocation(line: 255, column: 27, scope: !2381)
!2386 = !DILocation(line: 255, column: 11, scope: !2381)
!2387 = !DILocation(line: 255, column: 7, scope: !2382)
!2388 = !DILocation(line: 256, column: 10, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 255, column: 35)
!2390 = !DILocation(line: 256, column: 13, scope: !2389)
!2391 = !DILocation(line: 256, column: 19, scope: !2389)
!2392 = !DILocation(line: 256, column: 25, scope: !2389)
!2393 = !DILocation(line: 256, column: 29, scope: !2389)
!2394 = !DILocation(line: 256, column: 8, scope: !2389)
!2395 = !DILocation(line: 257, column: 8, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 257, column: 8)
!2397 = !DILocation(line: 257, column: 8, scope: !2389)
!2398 = !DILocation(line: 258, column: 14, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2396, file: !3, line: 257, column: 13)
!2400 = !DILocation(line: 258, column: 12, scope: !2399)
!2401 = !DILocation(line: 259, column: 5, scope: !2399)
!2402 = !DILocation(line: 260, column: 5, scope: !2399)
!2403 = !DILocation(line: 262, column: 3, scope: !2389)
!2404 = distinct !{!2404, !2374, !2405, !1966, !1967}
!2405 = !DILocation(line: 263, column: 2, scope: !2345)
!2406 = !DILocation(line: 264, column: 2, scope: !2330)
!2407 = !DILocation(line: 266, column: 1, scope: !2330)
!2408 = !DILocation(line: 267, column: 7, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 267, column: 6)
!2410 = !DILocation(line: 267, column: 6, scope: !2330)
!2411 = !DILocation(line: 268, column: 10, scope: !2409)
!2412 = !DILocation(line: 268, column: 3, scope: !2409)
!2413 = !DILocation(line: 271, column: 2, scope: !2352)
!2414 = !DILocation(line: 271, column: 2, scope: !2350)
!2415 = !DILocation(line: 271, column: 2, scope: !2354)
!2416 = !DILocation(line: 271, column: 2, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 271, column: 2)
!2418 = !DILocation(line: 271, column: 2, scope: !2351)
!2419 = !DILocation(line: 272, column: 7, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 272, column: 7)
!2421 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 271, column: 59)
!2422 = !DILocation(line: 272, column: 13, scope: !2420)
!2423 = !DILocation(line: 272, column: 10, scope: !2420)
!2424 = !DILocation(line: 272, column: 7, scope: !2421)
!2425 = !DILocation(line: 273, column: 4, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 272, column: 21)
!2427 = !DILocation(line: 274, column: 4, scope: !2426)
!2428 = !DILocation(line: 276, column: 7, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 276, column: 7)
!2430 = !DILocation(line: 276, column: 14, scope: !2429)
!2431 = !DILocation(line: 276, column: 18, scope: !2429)
!2432 = !DILocation(line: 276, column: 27, scope: !2429)
!2433 = !DILocation(line: 276, column: 11, scope: !2429)
!2434 = !DILocation(line: 276, column: 7, scope: !2421)
!2435 = !DILocation(line: 277, column: 4, scope: !2429)
!2436 = !DILocation(line: 277, column: 9, scope: !2429)
!2437 = !DILocation(line: 277, column: 15, scope: !2429)
!2438 = !DILocation(line: 277, column: 21, scope: !2429)
!2439 = !DILocation(line: 277, column: 25, scope: !2429)
!2440 = distinct !{!2440, !2413, !2441, !1966, !1967}
!2441 = !DILocation(line: 278, column: 2, scope: !2352)
!2442 = !DILocation(line: 279, column: 9, scope: !2330)
!2443 = !DILocation(line: 279, column: 2, scope: !2330)
!2444 = !DILocation(line: 280, column: 1, scope: !2330)
!2445 = distinct !DISubprogram(name: "attribute_container_device_trigger", scope: !3, file: !3, line: 353, type: !1867, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2446)
!2446 = !{!2447, !2448, !2449, !2450, !2453, !2456, !2457, !2461, !2463}
!2447 = !DILocalVariable(name: "dev", arg: 1, scope: !2445, file: !3, line: 353, type: !807)
!2448 = !DILocalVariable(name: "fn", arg: 2, scope: !2445, file: !3, line: 354, type: !1869)
!2449 = !DILocalVariable(name: "cont", scope: !2445, file: !3, line: 358, type: !125)
!2450 = !DILocalVariable(name: "__mptr", scope: !2451, file: !3, line: 361, type: !94)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 361, column: 2)
!2452 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 361, column: 2)
!2453 = !DILocalVariable(name: "ic", scope: !2454, file: !3, line: 362, type: !95)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 361, column: 61)
!2455 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 361, column: 2)
!2456 = !DILocalVariable(name: "iter", scope: !2454, file: !3, line: 363, type: !2079)
!2457 = !DILocalVariable(name: "n", scope: !2458, file: !3, line: 373, type: !177)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 373, column: 3)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 373, column: 3)
!2460 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 373, column: 3)
!2461 = !DILocalVariable(name: "__mptr", scope: !2462, file: !3, line: 373, type: !94)
!2462 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 373, column: 3)
!2463 = !DILocalVariable(name: "__mptr", scope: !2464, file: !3, line: 361, type: !94)
!2464 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 361, column: 2)
!2465 = !DILocation(line: 353, column: 51, scope: !2445)
!2466 = !DILocation(line: 354, column: 14, scope: !2445)
!2467 = !DILocation(line: 358, column: 2, scope: !2445)
!2468 = !DILocation(line: 358, column: 30, scope: !2445)
!2469 = !DILocation(line: 360, column: 2, scope: !2445)
!2470 = !DILocation(line: 361, column: 2, scope: !2451)
!2471 = !DILocation(line: 361, column: 2, scope: !2452)
!2472 = !DILocation(line: 361, column: 2, scope: !2455)
!2473 = !DILocation(line: 362, column: 3, scope: !2454)
!2474 = !DILocation(line: 362, column: 30, scope: !2454)
!2475 = !DILocation(line: 363, column: 3, scope: !2454)
!2476 = !DILocation(line: 363, column: 21, scope: !2454)
!2477 = !DILocation(line: 365, column: 8, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 365, column: 7)
!2479 = !DILocation(line: 365, column: 14, scope: !2478)
!2480 = !DILocation(line: 365, column: 20, scope: !2478)
!2481 = !DILocation(line: 365, column: 26, scope: !2478)
!2482 = !DILocation(line: 365, column: 7, scope: !2454)
!2483 = !DILocation(line: 366, column: 4, scope: !2478)
!2484 = !DILocation(line: 368, column: 40, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 368, column: 7)
!2486 = !DILocation(line: 368, column: 7, scope: !2485)
!2487 = !DILocation(line: 368, column: 7, scope: !2454)
!2488 = !DILocation(line: 369, column: 4, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 368, column: 47)
!2490 = !DILocation(line: 369, column: 7, scope: !2489)
!2491 = !DILocation(line: 369, column: 13, scope: !2489)
!2492 = !DILocation(line: 370, column: 4, scope: !2489)
!2493 = !DILocation(line: 373, column: 3, scope: !2460)
!2494 = !DILocation(line: 373, column: 3, scope: !2458)
!2495 = !DILocation(line: 373, column: 3, scope: !2462)
!2496 = !DILocation(line: 373, column: 3, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 373, column: 3)
!2498 = !DILocation(line: 373, column: 3, scope: !2459)
!2499 = !DILocation(line: 374, column: 8, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 374, column: 8)
!2501 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 373, column: 60)
!2502 = !DILocation(line: 374, column: 15, scope: !2500)
!2503 = !DILocation(line: 374, column: 19, scope: !2500)
!2504 = !DILocation(line: 374, column: 28, scope: !2500)
!2505 = !DILocation(line: 374, column: 12, scope: !2500)
!2506 = !DILocation(line: 374, column: 8, scope: !2501)
!2507 = !DILocation(line: 375, column: 5, scope: !2500)
!2508 = !DILocation(line: 375, column: 8, scope: !2500)
!2509 = !DILocation(line: 375, column: 14, scope: !2500)
!2510 = !DILocation(line: 375, column: 20, scope: !2500)
!2511 = !DILocation(line: 375, column: 24, scope: !2500)
!2512 = distinct !{!2512, !2493, !2513, !1966, !1967}
!2513 = !DILocation(line: 376, column: 3, scope: !2460)
!2514 = !DILocation(line: 377, column: 2, scope: !2455)
!2515 = !DILocation(line: 377, column: 2, scope: !2454)
!2516 = !DILocation(line: 361, column: 2, scope: !2464)
!2517 = distinct !{!2517, !2471, !2518, !1966, !1967}
!2518 = !DILocation(line: 377, column: 2, scope: !2452)
!2519 = !DILocation(line: 378, column: 2, scope: !2445)
!2520 = !DILocation(line: 379, column: 1, scope: !2445)
!2521 = distinct !DISubprogram(name: "attribute_container_trigger", scope: !3, file: !3, line: 394, type: !2522, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{null, !807, !1631}
!2524 = !{!2525, !2526, !2527, !2528, !2531}
!2525 = !DILocalVariable(name: "dev", arg: 1, scope: !2521, file: !3, line: 394, type: !807)
!2526 = !DILocalVariable(name: "fn", arg: 2, scope: !2521, file: !3, line: 395, type: !1631)
!2527 = !DILocalVariable(name: "cont", scope: !2521, file: !3, line: 398, type: !125)
!2528 = !DILocalVariable(name: "__mptr", scope: !2529, file: !3, line: 401, type: !94)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 401, column: 2)
!2530 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 401, column: 2)
!2531 = !DILocalVariable(name: "__mptr", scope: !2532, file: !3, line: 401, type: !94)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 401, column: 2)
!2533 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 401, column: 2)
!2534 = !DILocation(line: 394, column: 44, scope: !2521)
!2535 = !DILocation(line: 395, column: 14, scope: !2521)
!2536 = !DILocation(line: 398, column: 2, scope: !2521)
!2537 = !DILocation(line: 398, column: 30, scope: !2521)
!2538 = !DILocation(line: 400, column: 2, scope: !2521)
!2539 = !DILocation(line: 401, column: 2, scope: !2529)
!2540 = !DILocation(line: 401, column: 2, scope: !2530)
!2541 = !DILocation(line: 401, column: 2, scope: !2533)
!2542 = !DILocation(line: 402, column: 7, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 402, column: 7)
!2544 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 401, column: 61)
!2545 = !DILocation(line: 402, column: 13, scope: !2543)
!2546 = !DILocation(line: 402, column: 19, scope: !2543)
!2547 = !DILocation(line: 402, column: 25, scope: !2543)
!2548 = !DILocation(line: 402, column: 7, scope: !2544)
!2549 = !DILocation(line: 403, column: 4, scope: !2543)
!2550 = !DILocation(line: 403, column: 7, scope: !2543)
!2551 = !DILocation(line: 403, column: 13, scope: !2543)
!2552 = !DILocation(line: 404, column: 2, scope: !2544)
!2553 = !DILocation(line: 401, column: 2, scope: !2532)
!2554 = distinct !{!2554, !2540, !2555, !1966, !1967}
!2555 = !DILocation(line: 404, column: 2, scope: !2530)
!2556 = !DILocation(line: 405, column: 2, scope: !2521)
!2557 = !DILocation(line: 406, column: 1, scope: !2521)
!2558 = distinct !DISubprogram(name: "attribute_container_add_attrs", scope: !3, file: !3, line: 417, type: !842, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2559)
!2559 = !{!2560, !2561, !2562, !2563, !2564}
!2560 = !DILocalVariable(name: "classdev", arg: 1, scope: !2558, file: !3, line: 417, type: !807)
!2561 = !DILocalVariable(name: "cont", scope: !2558, file: !3, line: 419, type: !125)
!2562 = !DILocalVariable(name: "attrs", scope: !2558, file: !3, line: 421, type: !1617)
!2563 = !DILocalVariable(name: "i", scope: !2558, file: !3, line: 422, type: !46)
!2564 = !DILocalVariable(name: "error", scope: !2558, file: !3, line: 422, type: !46)
!2565 = !DILocation(line: 417, column: 46, scope: !2558)
!2566 = !DILocation(line: 419, column: 2, scope: !2558)
!2567 = !DILocation(line: 419, column: 30, scope: !2558)
!2568 = !DILocation(line: 420, column: 45, scope: !2558)
!2569 = !DILocation(line: 420, column: 3, scope: !2558)
!2570 = !DILocation(line: 421, column: 2, scope: !2558)
!2571 = !DILocation(line: 421, column: 28, scope: !2558)
!2572 = !DILocation(line: 421, column: 36, scope: !2558)
!2573 = !DILocation(line: 421, column: 42, scope: !2558)
!2574 = !DILocation(line: 422, column: 2, scope: !2558)
!2575 = !DILocation(line: 422, column: 6, scope: !2558)
!2576 = !DILocation(line: 422, column: 9, scope: !2558)
!2577 = !DILocation(line: 424, column: 2, scope: !2558)
!2578 = !DILocation(line: 424, column: 2, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 424, column: 2)
!2580 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 424, column: 2)
!2581 = !DILocation(line: 0, scope: !2579)
!2582 = !DILocation(line: 424, column: 2, scope: !2580)
!2583 = !DILocation(line: 424, column: 2, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 424, column: 2)
!2585 = !DILocation(line: 424, column: 2, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 424, column: 2)
!2587 = !DILocation(line: 424, column: 2, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 424, column: 2)
!2589 = !{i64 2152722072, i64 2152722101, i64 2152722147, i64 2152722205, i64 2152722259, i64 2152722313, i64 2152722368, i64 2152722399}
!2590 = !DILocation(line: 426, column: 7, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 426, column: 6)
!2592 = !DILocation(line: 426, column: 13, scope: !2591)
!2593 = !DILocation(line: 426, column: 17, scope: !2591)
!2594 = !DILocation(line: 426, column: 23, scope: !2591)
!2595 = !DILocation(line: 426, column: 6, scope: !2558)
!2596 = !DILocation(line: 427, column: 3, scope: !2591)
!2597 = !DILocation(line: 429, column: 6, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 429, column: 6)
!2599 = !DILocation(line: 429, column: 12, scope: !2598)
!2600 = !DILocation(line: 429, column: 6, scope: !2558)
!2601 = !DILocation(line: 430, column: 30, scope: !2598)
!2602 = !DILocation(line: 430, column: 40, scope: !2598)
!2603 = !DILocation(line: 430, column: 46, scope: !2598)
!2604 = !DILocation(line: 430, column: 52, scope: !2598)
!2605 = !DILocation(line: 430, column: 10, scope: !2598)
!2606 = !DILocation(line: 430, column: 3, scope: !2598)
!2607 = !DILocation(line: 432, column: 9, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 432, column: 2)
!2609 = !DILocation(line: 432, column: 7, scope: !2608)
!2610 = !DILocation(line: 432, column: 14, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 432, column: 2)
!2612 = !DILocation(line: 432, column: 20, scope: !2611)
!2613 = !DILocation(line: 432, column: 2, scope: !2608)
!2614 = !DILocation(line: 433, column: 3, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 432, column: 29)
!2616 = !DILocation(line: 433, column: 3, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 433, column: 3)
!2618 = !DILocation(line: 434, column: 30, scope: !2615)
!2619 = !DILocation(line: 434, column: 40, scope: !2615)
!2620 = !DILocation(line: 434, column: 46, scope: !2615)
!2621 = !DILocation(line: 434, column: 11, scope: !2615)
!2622 = !DILocation(line: 434, column: 9, scope: !2615)
!2623 = !DILocation(line: 435, column: 7, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 435, column: 7)
!2625 = !DILocation(line: 435, column: 7, scope: !2615)
!2626 = !DILocation(line: 436, column: 11, scope: !2624)
!2627 = !DILocation(line: 436, column: 4, scope: !2624)
!2628 = !DILocation(line: 437, column: 2, scope: !2615)
!2629 = !DILocation(line: 432, column: 25, scope: !2611)
!2630 = !DILocation(line: 432, column: 2, scope: !2611)
!2631 = distinct !{!2631, !2613, !2632, !1966, !1967}
!2632 = !DILocation(line: 437, column: 2, scope: !2608)
!2633 = !DILocation(line: 439, column: 2, scope: !2558)
!2634 = !DILocation(line: 440, column: 1, scope: !2558)
!2635 = !DISubprogram(name: "sysfs_create_group", scope: !193, file: !193, line: 307, type: !2636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!46, !201, !190}
!2638 = !DISubprogram(name: "device_create_file", scope: !26, file: !26, line: 259, type: !2639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!46, !807, !2641}
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1619)
!2643 = !DISubprogram(name: "device_add", scope: !26, file: !26, line: 1057, type: !842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2644 = distinct !DISubprogram(name: "attribute_container_add_class_device_adapter", scope: !3, file: !3, line: 472, type: !1870, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2645)
!2645 = !{!2646, !2647, !2648}
!2646 = !DILocalVariable(name: "cont", arg: 1, scope: !2644, file: !3, line: 472, type: !125)
!2647 = !DILocalVariable(name: "dev", arg: 2, scope: !2644, file: !3, line: 473, type: !807)
!2648 = !DILocalVariable(name: "classdev", arg: 3, scope: !2644, file: !3, line: 474, type: !807)
!2649 = !DILocation(line: 472, column: 74, scope: !2644)
!2650 = !DILocation(line: 473, column: 26, scope: !2644)
!2651 = !DILocation(line: 474, column: 26, scope: !2644)
!2652 = !DILocation(line: 476, column: 46, scope: !2644)
!2653 = !DILocation(line: 476, column: 9, scope: !2644)
!2654 = !DILocation(line: 476, column: 2, scope: !2644)
!2655 = !DISubprogram(name: "sysfs_remove_group", scope: !193, file: !193, line: 315, type: !2656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{null, !201, !190}
!2658 = !DISubprogram(name: "device_remove_file", scope: !26, file: !26, line: 261, type: !2659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{null, !807, !2641}
!2661 = distinct !DISubprogram(name: "attribute_container_class_device_del", scope: !3, file: !3, line: 514, type: !846, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2662)
!2662 = !{!2663}
!2663 = !DILocalVariable(name: "classdev", arg: 1, scope: !2661, file: !3, line: 514, type: !807)
!2664 = !DILocation(line: 514, column: 53, scope: !2661)
!2665 = !DILocation(line: 516, column: 35, scope: !2661)
!2666 = !DILocation(line: 516, column: 2, scope: !2661)
!2667 = !DILocation(line: 517, column: 13, scope: !2661)
!2668 = !DILocation(line: 517, column: 2, scope: !2661)
!2669 = !DILocation(line: 518, column: 1, scope: !2661)
!2670 = !DISubprogram(name: "device_del", scope: !26, file: !26, line: 1058, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2671 = distinct !DISubprogram(name: "attribute_container_find_class_device", scope: !3, file: !3, line: 530, type: !2672, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!807, !125, !807}
!2674 = !{!2675, !2676, !2677, !2678, !2679, !2680, !2684}
!2675 = !DILocalVariable(name: "cont", arg: 1, scope: !2671, file: !3, line: 530, type: !125)
!2676 = !DILocalVariable(name: "dev", arg: 2, scope: !2671, file: !3, line: 531, type: !807)
!2677 = !DILocalVariable(name: "cdev", scope: !2671, file: !3, line: 533, type: !807)
!2678 = !DILocalVariable(name: "ic", scope: !2671, file: !3, line: 534, type: !95)
!2679 = !DILocalVariable(name: "iter", scope: !2671, file: !3, line: 535, type: !2079)
!2680 = !DILocalVariable(name: "n", scope: !2681, file: !3, line: 537, type: !177)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 537, column: 2)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 537, column: 2)
!2683 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 537, column: 2)
!2684 = !DILocalVariable(name: "__mptr", scope: !2685, file: !3, line: 537, type: !94)
!2685 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 537, column: 2)
!2686 = !DILocation(line: 530, column: 67, scope: !2671)
!2687 = !DILocation(line: 531, column: 26, scope: !2671)
!2688 = !DILocation(line: 533, column: 2, scope: !2671)
!2689 = !DILocation(line: 533, column: 17, scope: !2671)
!2690 = !DILocation(line: 534, column: 2, scope: !2671)
!2691 = !DILocation(line: 534, column: 29, scope: !2671)
!2692 = !DILocation(line: 535, column: 2, scope: !2671)
!2693 = !DILocation(line: 535, column: 20, scope: !2671)
!2694 = !DILocation(line: 537, column: 2, scope: !2683)
!2695 = !DILocation(line: 537, column: 2, scope: !2681)
!2696 = !DILocation(line: 537, column: 2, scope: !2685)
!2697 = !DILocation(line: 537, column: 2, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 537, column: 2)
!2699 = !DILocation(line: 537, column: 2, scope: !2682)
!2700 = !DILocation(line: 538, column: 7, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 538, column: 7)
!2702 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 537, column: 59)
!2703 = !DILocation(line: 538, column: 11, scope: !2701)
!2704 = !DILocation(line: 538, column: 20, scope: !2701)
!2705 = !DILocation(line: 538, column: 30, scope: !2701)
!2706 = !DILocation(line: 538, column: 27, scope: !2701)
!2707 = !DILocation(line: 538, column: 7, scope: !2702)
!2708 = !DILocation(line: 539, column: 12, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 538, column: 35)
!2710 = !DILocation(line: 539, column: 16, scope: !2709)
!2711 = !DILocation(line: 539, column: 9, scope: !2709)
!2712 = !DILocation(line: 541, column: 4, scope: !2709)
!2713 = !DILocation(line: 542, column: 4, scope: !2709)
!2714 = distinct !{!2714, !2694, !2715, !1966, !1967}
!2715 = !DILocation(line: 544, column: 2, scope: !2683)
!2716 = !DILocation(line: 546, column: 9, scope: !2671)
!2717 = !DILocation(line: 547, column: 1, scope: !2671)
!2718 = !DILocation(line: 546, column: 2, scope: !2671)
!2719 = !DISubprogram(name: "put_device", scope: !26, file: !26, line: 1231, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2720 = distinct !DISubprogram(name: "__list_add", scope: !1715, file: !1715, line: 146, type: !2721, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{null, !108, !108, !108}
!2723 = !{!2724, !2725, !2726}
!2724 = !DILocalVariable(name: "new", arg: 1, scope: !2720, file: !1715, line: 146, type: !108)
!2725 = !DILocalVariable(name: "prev", arg: 2, scope: !2720, file: !1715, line: 147, type: !108)
!2726 = !DILocalVariable(name: "next", arg: 3, scope: !2720, file: !1715, line: 148, type: !108)
!2727 = !DILocation(line: 146, column: 49, scope: !2720)
!2728 = !DILocation(line: 147, column: 28, scope: !2720)
!2729 = !DILocation(line: 148, column: 28, scope: !2720)
!2730 = !DILocation(line: 150, column: 24, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2720, file: !1715, line: 150, column: 6)
!2732 = !DILocation(line: 150, column: 29, scope: !2731)
!2733 = !DILocation(line: 150, column: 35, scope: !2731)
!2734 = !DILocation(line: 150, column: 7, scope: !2731)
!2735 = !DILocation(line: 150, column: 6, scope: !2720)
!2736 = !DILocation(line: 151, column: 3, scope: !2731)
!2737 = !DILocation(line: 153, column: 15, scope: !2720)
!2738 = !DILocation(line: 153, column: 2, scope: !2720)
!2739 = !DILocation(line: 153, column: 8, scope: !2720)
!2740 = !DILocation(line: 153, column: 13, scope: !2720)
!2741 = !DILocation(line: 154, column: 14, scope: !2720)
!2742 = !DILocation(line: 154, column: 2, scope: !2720)
!2743 = !DILocation(line: 154, column: 7, scope: !2720)
!2744 = !DILocation(line: 154, column: 12, scope: !2720)
!2745 = !DILocation(line: 155, column: 14, scope: !2720)
!2746 = !DILocation(line: 155, column: 2, scope: !2720)
!2747 = !DILocation(line: 155, column: 7, scope: !2720)
!2748 = !DILocation(line: 155, column: 12, scope: !2720)
!2749 = !DILocation(line: 156, column: 2, scope: !2720)
!2750 = !DILocation(line: 156, column: 2, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2720, file: !1715, line: 156, column: 2)
!2752 = !DILocation(line: 156, column: 2, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2751, file: !1715, line: 156, column: 2)
!2754 = !DILocation(line: 156, column: 2, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2751, file: !1715, line: 156, column: 2)
!2756 = !DILocation(line: 157, column: 1, scope: !2720)
!2757 = distinct !DISubprogram(name: "__list_add_valid", scope: !1715, file: !1715, line: 128, type: !2758, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!305, !108, !108, !108}
!2760 = !{!2761, !2762, !2763}
!2761 = !DILocalVariable(name: "new", arg: 1, scope: !2757, file: !1715, line: 128, type: !108)
!2762 = !DILocalVariable(name: "prev", arg: 2, scope: !2757, file: !1715, line: 129, type: !108)
!2763 = !DILocalVariable(name: "next", arg: 3, scope: !2757, file: !1715, line: 130, type: !108)
!2764 = !DILocation(line: 128, column: 55, scope: !2757)
!2765 = !DILocation(line: 129, column: 23, scope: !2757)
!2766 = !DILocation(line: 130, column: 23, scope: !2757)
!2767 = !DILocation(line: 132, column: 2, scope: !2757)
!2768 = !DISubprogram(name: "_raw_spin_lock", scope: !2769, file: !2769, line: 22, type: !2770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2769 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2770 = !DISubroutineType(types: !2771)
!2771 = !{null, !2772}
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!2773 = distinct !DISubprogram(name: "__list_del_entry", scope: !1715, file: !1715, line: 213, type: !1716, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2774)
!2774 = !{!2775}
!2775 = !DILocalVariable(name: "entry", arg: 1, scope: !2773, file: !1715, line: 213, type: !108)
!2776 = !DILocation(line: 213, column: 55, scope: !2773)
!2777 = !DILocation(line: 215, column: 30, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2773, file: !1715, line: 215, column: 6)
!2779 = !DILocation(line: 215, column: 7, scope: !2778)
!2780 = !DILocation(line: 215, column: 6, scope: !2773)
!2781 = !DILocation(line: 216, column: 3, scope: !2778)
!2782 = !DILocation(line: 218, column: 13, scope: !2773)
!2783 = !DILocation(line: 218, column: 20, scope: !2773)
!2784 = !DILocation(line: 218, column: 26, scope: !2773)
!2785 = !DILocation(line: 218, column: 33, scope: !2773)
!2786 = !DILocation(line: 218, column: 2, scope: !2773)
!2787 = !DILocation(line: 219, column: 1, scope: !2773)
!2788 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !1715, file: !1715, line: 134, type: !2789, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!305, !108}
!2791 = !{!2792}
!2792 = !DILocalVariable(name: "entry", arg: 1, scope: !2788, file: !1715, line: 134, type: !108)
!2793 = !DILocation(line: 134, column: 61, scope: !2788)
!2794 = !DILocation(line: 136, column: 2, scope: !2788)
!2795 = distinct !DISubprogram(name: "__list_del", scope: !1715, file: !1715, line: 193, type: !1775, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2796)
!2796 = !{!2797, !2798}
!2797 = !DILocalVariable(name: "prev", arg: 1, scope: !2795, file: !1715, line: 193, type: !108)
!2798 = !DILocalVariable(name: "next", arg: 2, scope: !2795, file: !1715, line: 193, type: !108)
!2799 = !DILocation(line: 193, column: 50, scope: !2795)
!2800 = !DILocation(line: 193, column: 75, scope: !2795)
!2801 = !DILocation(line: 195, column: 15, scope: !2795)
!2802 = !DILocation(line: 195, column: 2, scope: !2795)
!2803 = !DILocation(line: 195, column: 8, scope: !2795)
!2804 = !DILocation(line: 195, column: 13, scope: !2795)
!2805 = !DILocation(line: 196, column: 2, scope: !2795)
!2806 = !DILocation(line: 196, column: 2, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2795, file: !1715, line: 196, column: 2)
!2808 = !DILocation(line: 196, column: 2, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2807, file: !1715, line: 196, column: 2)
!2810 = !DILocation(line: 196, column: 2, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2807, file: !1715, line: 196, column: 2)
!2812 = !DILocation(line: 197, column: 1, scope: !2795)
!2813 = !DISubprogram(name: "_raw_spin_unlock", scope: !2769, file: !2769, line: 39, type: !2770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2814 = distinct !DISubprogram(name: "kmalloc", scope: !84, file: !84, line: 591, type: !1979, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2815)
!2815 = !{!2816, !2817, !2818}
!2816 = !DILocalVariable(name: "size", arg: 1, scope: !2814, file: !84, line: 591, type: !287)
!2817 = !DILocalVariable(name: "flags", arg: 2, scope: !2814, file: !84, line: 591, type: !1636)
!2818 = !DILocalVariable(name: "index", scope: !2819, file: !84, line: 594, type: !7)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !84, line: 593, column: 42)
!2820 = distinct !DILexicalBlock(scope: !2814, file: !84, line: 593, column: 6)
!2821 = !DILocation(line: 591, column: 61, scope: !2814)
!2822 = !DILocation(line: 591, column: 73, scope: !2814)
!2823 = !DILocation(line: 593, column: 27, scope: !2820)
!2824 = !DILocation(line: 593, column: 6, scope: !2820)
!2825 = !DILocation(line: 593, column: 33, scope: !2820)
!2826 = !DILocation(line: 593, column: 36, scope: !2820)
!2827 = !DILocation(line: 593, column: 6, scope: !2814)
!2828 = !DILocation(line: 594, column: 3, scope: !2819)
!2829 = !DILocation(line: 594, column: 16, scope: !2819)
!2830 = !DILocation(line: 596, column: 7, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2819, file: !84, line: 596, column: 7)
!2832 = !DILocation(line: 596, column: 12, scope: !2831)
!2833 = !DILocation(line: 596, column: 7, scope: !2819)
!2834 = !DILocation(line: 597, column: 25, scope: !2831)
!2835 = !DILocation(line: 597, column: 31, scope: !2831)
!2836 = !DILocation(line: 597, column: 11, scope: !2831)
!2837 = !DILocation(line: 597, column: 4, scope: !2831)
!2838 = !DILocation(line: 599, column: 11, scope: !2819)
!2839 = !DILocation(line: 599, column: 9, scope: !2819)
!2840 = !DILocation(line: 601, column: 33, scope: !2819)
!2841 = !DILocation(line: 601, column: 40, scope: !2819)
!2842 = !DILocation(line: 601, column: 20, scope: !2819)
!2843 = !DILocation(line: 601, column: 5, scope: !2819)
!2844 = !DILocation(line: 601, column: 51, scope: !2819)
!2845 = !DILocation(line: 602, column: 5, scope: !2819)
!2846 = !DILocation(line: 602, column: 12, scope: !2819)
!2847 = !DILocation(line: 600, column: 10, scope: !2819)
!2848 = !DILocation(line: 600, column: 3, scope: !2819)
!2849 = !DILocation(line: 603, column: 2, scope: !2820)
!2850 = !DILocation(line: 604, column: 19, scope: !2814)
!2851 = !DILocation(line: 604, column: 25, scope: !2814)
!2852 = !DILocation(line: 604, column: 9, scope: !2814)
!2853 = !DILocation(line: 604, column: 2, scope: !2814)
!2854 = !DILocation(line: 605, column: 1, scope: !2814)
!2855 = !DISubprogram(name: "kmalloc_large", scope: !84, file: !84, line: 531, type: !1979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2856 = distinct !DISubprogram(name: "__kmalloc_index", scope: !84, file: !84, line: 444, type: !2857, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!7, !287, !305}
!2859 = !{!2860, !2861}
!2860 = !DILocalVariable(name: "size", arg: 1, scope: !2856, file: !84, line: 444, type: !287)
!2861 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2856, file: !84, line: 445, type: !305)
!2862 = !DILocation(line: 444, column: 60, scope: !2856)
!2863 = !DILocation(line: 445, column: 16, scope: !2856)
!2864 = !DILocation(line: 447, column: 7, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 447, column: 6)
!2866 = !DILocation(line: 447, column: 6, scope: !2856)
!2867 = !DILocation(line: 448, column: 3, scope: !2865)
!2868 = !DILocation(line: 450, column: 6, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 450, column: 6)
!2870 = !DILocation(line: 450, column: 11, scope: !2869)
!2871 = !DILocation(line: 450, column: 6, scope: !2856)
!2872 = !DILocation(line: 451, column: 3, scope: !2869)
!2873 = !DILocation(line: 453, column: 32, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 453, column: 6)
!2875 = !DILocation(line: 453, column: 37, scope: !2874)
!2876 = !DILocation(line: 453, column: 42, scope: !2874)
!2877 = !DILocation(line: 453, column: 45, scope: !2874)
!2878 = !DILocation(line: 453, column: 50, scope: !2874)
!2879 = !DILocation(line: 453, column: 6, scope: !2856)
!2880 = !DILocation(line: 454, column: 3, scope: !2874)
!2881 = !DILocation(line: 455, column: 32, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 455, column: 6)
!2883 = !DILocation(line: 455, column: 37, scope: !2882)
!2884 = !DILocation(line: 455, column: 43, scope: !2882)
!2885 = !DILocation(line: 455, column: 46, scope: !2882)
!2886 = !DILocation(line: 455, column: 51, scope: !2882)
!2887 = !DILocation(line: 455, column: 6, scope: !2856)
!2888 = !DILocation(line: 456, column: 3, scope: !2882)
!2889 = !DILocation(line: 457, column: 6, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 457, column: 6)
!2891 = !DILocation(line: 457, column: 11, scope: !2890)
!2892 = !DILocation(line: 457, column: 6, scope: !2856)
!2893 = !DILocation(line: 457, column: 26, scope: !2890)
!2894 = !DILocation(line: 458, column: 6, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 458, column: 6)
!2896 = !DILocation(line: 458, column: 11, scope: !2895)
!2897 = !DILocation(line: 458, column: 6, scope: !2856)
!2898 = !DILocation(line: 458, column: 26, scope: !2895)
!2899 = !DILocation(line: 459, column: 6, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 459, column: 6)
!2901 = !DILocation(line: 459, column: 11, scope: !2900)
!2902 = !DILocation(line: 459, column: 6, scope: !2856)
!2903 = !DILocation(line: 459, column: 26, scope: !2900)
!2904 = !DILocation(line: 460, column: 6, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 460, column: 6)
!2906 = !DILocation(line: 460, column: 11, scope: !2905)
!2907 = !DILocation(line: 460, column: 6, scope: !2856)
!2908 = !DILocation(line: 460, column: 26, scope: !2905)
!2909 = !DILocation(line: 461, column: 6, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 461, column: 6)
!2911 = !DILocation(line: 461, column: 11, scope: !2910)
!2912 = !DILocation(line: 461, column: 6, scope: !2856)
!2913 = !DILocation(line: 461, column: 26, scope: !2910)
!2914 = !DILocation(line: 462, column: 6, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 462, column: 6)
!2916 = !DILocation(line: 462, column: 11, scope: !2915)
!2917 = !DILocation(line: 462, column: 6, scope: !2856)
!2918 = !DILocation(line: 462, column: 26, scope: !2915)
!2919 = !DILocation(line: 463, column: 6, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 463, column: 6)
!2921 = !DILocation(line: 463, column: 11, scope: !2920)
!2922 = !DILocation(line: 463, column: 6, scope: !2856)
!2923 = !DILocation(line: 463, column: 26, scope: !2920)
!2924 = !DILocation(line: 464, column: 6, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 464, column: 6)
!2926 = !DILocation(line: 464, column: 11, scope: !2925)
!2927 = !DILocation(line: 464, column: 6, scope: !2856)
!2928 = !DILocation(line: 464, column: 26, scope: !2925)
!2929 = !DILocation(line: 465, column: 6, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 465, column: 6)
!2931 = !DILocation(line: 465, column: 11, scope: !2930)
!2932 = !DILocation(line: 465, column: 6, scope: !2856)
!2933 = !DILocation(line: 465, column: 26, scope: !2930)
!2934 = !DILocation(line: 466, column: 6, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 466, column: 6)
!2936 = !DILocation(line: 466, column: 11, scope: !2935)
!2937 = !DILocation(line: 466, column: 6, scope: !2856)
!2938 = !DILocation(line: 466, column: 26, scope: !2935)
!2939 = !DILocation(line: 467, column: 6, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 467, column: 6)
!2941 = !DILocation(line: 467, column: 11, scope: !2940)
!2942 = !DILocation(line: 467, column: 6, scope: !2856)
!2943 = !DILocation(line: 467, column: 26, scope: !2940)
!2944 = !DILocation(line: 468, column: 6, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 468, column: 6)
!2946 = !DILocation(line: 468, column: 11, scope: !2945)
!2947 = !DILocation(line: 468, column: 6, scope: !2856)
!2948 = !DILocation(line: 468, column: 26, scope: !2945)
!2949 = !DILocation(line: 469, column: 6, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 469, column: 6)
!2951 = !DILocation(line: 469, column: 11, scope: !2950)
!2952 = !DILocation(line: 469, column: 6, scope: !2856)
!2953 = !DILocation(line: 469, column: 26, scope: !2950)
!2954 = !DILocation(line: 470, column: 6, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 470, column: 6)
!2956 = !DILocation(line: 470, column: 11, scope: !2955)
!2957 = !DILocation(line: 470, column: 6, scope: !2856)
!2958 = !DILocation(line: 470, column: 26, scope: !2955)
!2959 = !DILocation(line: 471, column: 6, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 471, column: 6)
!2961 = !DILocation(line: 471, column: 11, scope: !2960)
!2962 = !DILocation(line: 471, column: 6, scope: !2856)
!2963 = !DILocation(line: 471, column: 26, scope: !2960)
!2964 = !DILocation(line: 472, column: 6, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 472, column: 6)
!2966 = !DILocation(line: 472, column: 11, scope: !2965)
!2967 = !DILocation(line: 472, column: 6, scope: !2856)
!2968 = !DILocation(line: 472, column: 26, scope: !2965)
!2969 = !DILocation(line: 473, column: 6, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 473, column: 6)
!2971 = !DILocation(line: 473, column: 11, scope: !2970)
!2972 = !DILocation(line: 473, column: 6, scope: !2856)
!2973 = !DILocation(line: 473, column: 26, scope: !2970)
!2974 = !DILocation(line: 474, column: 6, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 474, column: 6)
!2976 = !DILocation(line: 474, column: 11, scope: !2975)
!2977 = !DILocation(line: 474, column: 6, scope: !2856)
!2978 = !DILocation(line: 474, column: 27, scope: !2975)
!2979 = !DILocation(line: 475, column: 6, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 475, column: 6)
!2981 = !DILocation(line: 475, column: 11, scope: !2980)
!2982 = !DILocation(line: 475, column: 6, scope: !2856)
!2983 = !DILocation(line: 475, column: 32, scope: !2980)
!2984 = !DILocation(line: 477, column: 50, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2856, file: !84, line: 477, column: 6)
!2986 = !{i8 0, i8 2}
!2987 = !DILocation(line: 477, column: 6, scope: !2856)
!2988 = !DILocation(line: 478, column: 3, scope: !2985)
!2989 = !DILocation(line: 478, column: 3, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !84, line: 478, column: 3)
!2991 = distinct !DILexicalBlock(scope: !2985, file: !84, line: 478, column: 3)
!2992 = !{i32 -2142308726}
!2993 = !DILocation(line: 478, column: 3, scope: !2991)
!2994 = !DILocation(line: 480, column: 3, scope: !2985)
!2995 = !DILocation(line: 480, column: 3, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2985, file: !84, line: 480, column: 3)
!2997 = !DILocation(line: 480, column: 3, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2996, file: !84, line: 480, column: 3)
!2999 = !DILocation(line: 480, column: 3, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2996, file: !84, line: 480, column: 3)
!3001 = !{i64 2152658773, i64 2152658802, i64 2152658848, i64 2152658906, i64 2152658960, i64 2152659014, i64 2152659069, i64 2152659100}
!3002 = !DILocation(line: 483, column: 2, scope: !2856)
!3003 = !DILocation(line: 484, column: 1, scope: !2856)
!3004 = !DISubprogram(name: "kmalloc_trace", scope: !84, file: !84, line: 525, type: !3005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!94, !3007, !1636, !287}
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3009, line: 11, flags: DIFlagFwdDecl)
!3009 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3010 = distinct !DISubprogram(name: "kmalloc_type", scope: !84, file: !84, line: 401, type: !3011, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!83, !1636, !290}
!3013 = !{!3014, !3015}
!3014 = !DILocalVariable(name: "flags", arg: 1, scope: !3010, file: !84, line: 401, type: !1636)
!3015 = !DILocalVariable(name: "caller", arg: 2, scope: !3010, file: !84, line: 401, type: !290)
!3016 = !DILocation(line: 401, column: 67, scope: !3010)
!3017 = !DILocation(line: 401, column: 88, scope: !3010)
!3018 = !DILocation(line: 407, column: 6, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3010, file: !84, line: 407, column: 6)
!3020 = !DILocation(line: 407, column: 6, scope: !3010)
!3021 = !DILocation(line: 413, column: 3, scope: !3019)
!3022 = !DILocation(line: 423, column: 38, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3010, file: !84, line: 423, column: 6)
!3024 = !DILocation(line: 423, column: 44, scope: !3023)
!3025 = !DILocation(line: 423, column: 6, scope: !3010)
!3026 = !DILocation(line: 424, column: 3, scope: !3023)
!3027 = !DILocation(line: 426, column: 3, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3010, file: !84, line: 425, column: 6)
!3029 = !DILocation(line: 429, column: 1, scope: !3010)
!3030 = !DISubprogram(name: "__kmalloc", scope: !84, file: !84, line: 488, type: !1979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3031 = !DISubprogram(name: "__compiletime_assert_204", scope: !84, file: !84, line: 478, type: !1272, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3032 = !DISubprogram(name: "kfree", scope: !84, file: !84, line: 227, type: !3033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{null, !315}
!3035 = distinct !DISubprogram(name: "kobject_name", scope: !203, file: !203, line: 87, type: !230, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3036)
!3036 = !{!3037}
!3037 = !DILocalVariable(name: "kobj", arg: 1, scope: !3035, file: !203, line: 87, type: !225)
!3038 = !DILocation(line: 87, column: 62, scope: !3035)
!3039 = !DILocation(line: 89, column: 9, scope: !3035)
!3040 = !DILocation(line: 89, column: 15, scope: !3035)
!3041 = !DILocation(line: 89, column: 2, scope: !3035)
