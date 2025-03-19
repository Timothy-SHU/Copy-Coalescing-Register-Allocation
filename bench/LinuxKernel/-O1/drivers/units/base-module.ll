; ModuleID = 'drivers/base/module.c'
source_filename = "drivers/base/module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.module = type { i32, %struct.list_head, [56 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [7 x %struct.module_memory], %struct.mod_arch_specific, i64, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_memory = type { ptr, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i64, ptr, ptr }
%struct.mod_arch_specific = type { i32, ptr, ptr }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, ptr, ptr }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@module_kset = external dso_local global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"module\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1, !dbg !7
@module_create_drivers_dir.drivers_dir_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @module_create_drivers_dir.drivers_dir_mutex, i64 16), ptr getelementptr (i8, ptr @module_create_drivers_dir.drivers_dir_mutex, i64 16) } }, align 8, !dbg !12
@.str.2 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1, !dbg !1137

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @module_add_driver(ptr noundef %mod, ptr noundef %drv) #0 align 16 !dbg !1153 {
entry:
  %retval = alloca i32, align 4
  %mod.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %driver_name = alloca ptr, align 8
  %mk = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %mkobj5 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !1618, metadata !DIExpression()), !dbg !1634
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1619, metadata !DIExpression()), !dbg !1635
  call void @llvm.lifetime.start.p0(i64 8, ptr %driver_name) #4, !dbg !1636
  call void @llvm.dbg.declare(metadata ptr %driver_name, metadata !1620, metadata !DIExpression()), !dbg !1637
  call void @llvm.lifetime.start.p0(i64 8, ptr %mk) #4, !dbg !1638
  call void @llvm.dbg.declare(metadata ptr %mk, metadata !1621, metadata !DIExpression()), !dbg !1639
  store ptr null, ptr %mk, align 8, !dbg !1639
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #4, !dbg !1640
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1622, metadata !DIExpression()), !dbg !1641
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !1642
  %tobool = icmp ne ptr %0, null, !dbg !1642
  br i1 %tobool, label %if.end, label %if.then, !dbg !1644

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1645

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %mod.addr, align 8, !dbg !1646
  %tobool1 = icmp ne ptr %1, null, !dbg !1646
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !1647

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %mod.addr, align 8, !dbg !1648
  %mkobj = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 3, !dbg !1649
  store ptr %mkobj, ptr %mk, align 8, !dbg !1650
  br label %if.end12, !dbg !1651

if.else:                                          ; preds = %if.end
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !1652
  %mod_name = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 3, !dbg !1653
  %4 = load ptr, ptr %mod_name, align 8, !dbg !1653
  %tobool3 = icmp ne ptr %4, null, !dbg !1652
  br i1 %tobool3, label %if.then4, label %if.end11, !dbg !1654

if.then4:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %mkobj5) #4, !dbg !1655
  call void @llvm.dbg.declare(metadata ptr %mkobj5, metadata !1623, metadata !DIExpression()), !dbg !1656
  %5 = load ptr, ptr @module_kset, align 8, !dbg !1657
  %6 = load ptr, ptr %drv.addr, align 8, !dbg !1658
  %mod_name6 = getelementptr inbounds %struct.device_driver, ptr %6, i32 0, i32 3, !dbg !1659
  %7 = load ptr, ptr %mod_name6, align 8, !dbg !1659
  %call = call ptr @kset_find_obj(ptr noundef %5, ptr noundef %7) #5, !dbg !1660
  store ptr %call, ptr %mkobj5, align 8, !dbg !1661
  %8 = load ptr, ptr %mkobj5, align 8, !dbg !1662
  %tobool7 = icmp ne ptr %8, null, !dbg !1662
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !1663

if.then8:                                         ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #4, !dbg !1664
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1627, metadata !DIExpression()), !dbg !1664
  %9 = load ptr, ptr %mkobj5, align 8, !dbg !1664
  store ptr %9, ptr %__mptr, align 8, !dbg !1664
  %10 = load ptr, ptr %__mptr, align 8, !dbg !1664
  %add.ptr = getelementptr i8, ptr %10, i64 0, !dbg !1664
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1664
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #4, !dbg !1665
  %11 = load ptr, ptr %tmp, align 8, !dbg !1664
  store ptr %11, ptr %mk, align 8, !dbg !1666
  %12 = load ptr, ptr %mk, align 8, !dbg !1667
  %13 = load ptr, ptr %drv.addr, align 8, !dbg !1668
  %p = getelementptr inbounds %struct.device_driver, ptr %13, i32 0, i32 18, !dbg !1669
  %14 = load ptr, ptr %p, align 8, !dbg !1669
  %mkobj9 = getelementptr inbounds %struct.driver_private, ptr %14, i32 0, i32 3, !dbg !1670
  store ptr %12, ptr %mkobj9, align 8, !dbg !1671
  %15 = load ptr, ptr %mkobj5, align 8, !dbg !1672
  call void @kobject_put(ptr noundef %15) #5, !dbg !1673
  br label %if.end10, !dbg !1674

if.end10:                                         ; preds = %if.then8, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mkobj5) #4, !dbg !1675
  br label %if.end11, !dbg !1676

if.end11:                                         ; preds = %if.end10, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then2
  %16 = load ptr, ptr %mk, align 8, !dbg !1677
  %tobool13 = icmp ne ptr %16, null, !dbg !1677
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1679

if.then14:                                        ; preds = %if.end12
  store i32 0, ptr %retval, align 4, !dbg !1680
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1680

if.end15:                                         ; preds = %if.end12
  %17 = load ptr, ptr %drv.addr, align 8, !dbg !1681
  %p16 = getelementptr inbounds %struct.device_driver, ptr %17, i32 0, i32 18, !dbg !1682
  %18 = load ptr, ptr %p16, align 8, !dbg !1682
  %kobj = getelementptr inbounds %struct.driver_private, ptr %18, i32 0, i32 0, !dbg !1683
  %19 = load ptr, ptr %mk, align 8, !dbg !1684
  %kobj17 = getelementptr inbounds %struct.module_kobject, ptr %19, i32 0, i32 0, !dbg !1685
  %call18 = call i32 @sysfs_create_link(ptr noundef %kobj, ptr noundef %kobj17, ptr noundef @.str) #5, !dbg !1686
  store i32 %call18, ptr %ret, align 4, !dbg !1687
  %20 = load i32, ptr %ret, align 4, !dbg !1688
  %tobool19 = icmp ne i32 %20, 0, !dbg !1688
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1690

if.then20:                                        ; preds = %if.end15
  %21 = load i32, ptr %ret, align 4, !dbg !1691
  store i32 %21, ptr %retval, align 4, !dbg !1692
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1692

if.end21:                                         ; preds = %if.end15
  %22 = load ptr, ptr %drv.addr, align 8, !dbg !1693
  %call22 = call ptr @make_driver_name(ptr noundef %22) #5, !dbg !1694
  store ptr %call22, ptr %driver_name, align 8, !dbg !1695
  %23 = load ptr, ptr %driver_name, align 8, !dbg !1696
  %tobool23 = icmp ne ptr %23, null, !dbg !1696
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !1698

if.then24:                                        ; preds = %if.end21
  store i32 -12, ptr %ret, align 4, !dbg !1699
  br label %out_remove_kobj, !dbg !1701

if.end25:                                         ; preds = %if.end21
  %24 = load ptr, ptr %mk, align 8, !dbg !1702
  call void @module_create_drivers_dir(ptr noundef %24) #5, !dbg !1703
  %25 = load ptr, ptr %mk, align 8, !dbg !1704
  %drivers_dir = getelementptr inbounds %struct.module_kobject, ptr %25, i32 0, i32 2, !dbg !1706
  %26 = load ptr, ptr %drivers_dir, align 8, !dbg !1706
  %tobool26 = icmp ne ptr %26, null, !dbg !1704
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !1707

if.then27:                                        ; preds = %if.end25
  store i32 -22, ptr %ret, align 4, !dbg !1708
  br label %out_free_driver_name, !dbg !1710

if.end28:                                         ; preds = %if.end25
  %27 = load ptr, ptr %mk, align 8, !dbg !1711
  %drivers_dir29 = getelementptr inbounds %struct.module_kobject, ptr %27, i32 0, i32 2, !dbg !1712
  %28 = load ptr, ptr %drivers_dir29, align 8, !dbg !1712
  %29 = load ptr, ptr %drv.addr, align 8, !dbg !1713
  %p30 = getelementptr inbounds %struct.device_driver, ptr %29, i32 0, i32 18, !dbg !1714
  %30 = load ptr, ptr %p30, align 8, !dbg !1714
  %kobj31 = getelementptr inbounds %struct.driver_private, ptr %30, i32 0, i32 0, !dbg !1715
  %31 = load ptr, ptr %driver_name, align 8, !dbg !1716
  %call32 = call i32 @sysfs_create_link(ptr noundef %28, ptr noundef %kobj31, ptr noundef %31) #5, !dbg !1717
  store i32 %call32, ptr %ret, align 4, !dbg !1718
  %32 = load i32, ptr %ret, align 4, !dbg !1719
  %tobool33 = icmp ne i32 %32, 0, !dbg !1719
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !1721

if.then34:                                        ; preds = %if.end28
  br label %out_remove_drivers_dir, !dbg !1722

if.end35:                                         ; preds = %if.end28
  %33 = load ptr, ptr %driver_name, align 8, !dbg !1723
  call void @kfree(ptr noundef %33) #5, !dbg !1724
  store i32 0, ptr %retval, align 4, !dbg !1725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1725

out_remove_drivers_dir:                           ; preds = %if.then34
  call void @llvm.dbg.label(metadata !1631), !dbg !1726
  %34 = load ptr, ptr %mk, align 8, !dbg !1727
  %drivers_dir36 = getelementptr inbounds %struct.module_kobject, ptr %34, i32 0, i32 2, !dbg !1728
  %35 = load ptr, ptr %drivers_dir36, align 8, !dbg !1728
  %36 = load ptr, ptr %driver_name, align 8, !dbg !1729
  call void @sysfs_remove_link(ptr noundef %35, ptr noundef %36) #5, !dbg !1730
  br label %out_free_driver_name, !dbg !1730

out_free_driver_name:                             ; preds = %out_remove_drivers_dir, %if.then27
  call void @llvm.dbg.label(metadata !1632), !dbg !1731
  %37 = load ptr, ptr %driver_name, align 8, !dbg !1732
  call void @kfree(ptr noundef %37) #5, !dbg !1733
  br label %out_remove_kobj, !dbg !1733

out_remove_kobj:                                  ; preds = %out_free_driver_name, %if.then24
  call void @llvm.dbg.label(metadata !1633), !dbg !1734
  %38 = load ptr, ptr %drv.addr, align 8, !dbg !1735
  %p37 = getelementptr inbounds %struct.device_driver, ptr %38, i32 0, i32 18, !dbg !1736
  %39 = load ptr, ptr %p37, align 8, !dbg !1736
  %kobj38 = getelementptr inbounds %struct.driver_private, ptr %39, i32 0, i32 0, !dbg !1737
  call void @sysfs_remove_link(ptr noundef %kobj38, ptr noundef @.str) #5, !dbg !1738
  %40 = load i32, ptr %ret, align 4, !dbg !1739
  store i32 %40, ptr %retval, align 4, !dbg !1740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1740

cleanup:                                          ; preds = %out_remove_kobj, %if.end35, %if.then20, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #4, !dbg !1741
  call void @llvm.lifetime.end.p0(i64 8, ptr %mk) #4, !dbg !1741
  call void @llvm.lifetime.end.p0(i64 8, ptr %driver_name) #4, !dbg !1741
  %41 = load i32, ptr %retval, align 4, !dbg !1741
  ret i32 %41, !dbg !1741
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1742 dso_local ptr @kset_find_obj(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1745 dso_local void @kobject_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1746 dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @make_driver_name(ptr noundef %drv) #0 align 16 !dbg !1749 {
entry:
  %retval = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %driver_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1753, metadata !DIExpression()), !dbg !1755
  call void @llvm.lifetime.start.p0(i64 8, ptr %driver_name) #4, !dbg !1756
  call void @llvm.dbg.declare(metadata ptr %driver_name, metadata !1754, metadata !DIExpression()), !dbg !1757
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !1758
  %bus = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1, !dbg !1759
  %1 = load ptr, ptr %bus, align 8, !dbg !1759
  %name = getelementptr inbounds %struct.bus_type, ptr %1, i32 0, i32 0, !dbg !1760
  %2 = load ptr, ptr %name, align 8, !dbg !1760
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !1761
  %name1 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 0, !dbg !1762
  %4 = load ptr, ptr %name1, align 8, !dbg !1762
  %call = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef @.str.1, ptr noundef %2, ptr noundef %4) #5, !dbg !1763
  store ptr %call, ptr %driver_name, align 8, !dbg !1764
  %5 = load ptr, ptr %driver_name, align 8, !dbg !1765
  %tobool = icmp ne ptr %5, null, !dbg !1765
  br i1 %tobool, label %if.end, label %if.then, !dbg !1767

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1768
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1768

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %driver_name, align 8, !dbg !1769
  store ptr %6, ptr %retval, align 8, !dbg !1770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1770

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %driver_name) #4, !dbg !1771
  %7 = load ptr, ptr %retval, align 8, !dbg !1771
  ret ptr %7, !dbg !1771
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @module_create_drivers_dir(ptr noundef %mk) #0 align 16 !dbg !14 {
entry:
  %mk.addr = alloca ptr, align 8
  store ptr %mk, ptr %mk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mk.addr, metadata !1143, metadata !DIExpression()), !dbg !1772
  call void @mutex_lock(ptr noundef @module_create_drivers_dir.drivers_dir_mutex) #5, !dbg !1773
  %0 = load ptr, ptr %mk.addr, align 8, !dbg !1774
  %tobool = icmp ne ptr %0, null, !dbg !1774
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1776

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %mk.addr, align 8, !dbg !1777
  %drivers_dir = getelementptr inbounds %struct.module_kobject, ptr %1, i32 0, i32 2, !dbg !1778
  %2 = load ptr, ptr %drivers_dir, align 8, !dbg !1778
  %tobool1 = icmp ne ptr %2, null, !dbg !1777
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1779

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %mk.addr, align 8, !dbg !1780
  %kobj = getelementptr inbounds %struct.module_kobject, ptr %3, i32 0, i32 0, !dbg !1781
  %call = call ptr @kobject_create_and_add(ptr noundef @.str.2, ptr noundef %kobj) #5, !dbg !1782
  %4 = load ptr, ptr %mk.addr, align 8, !dbg !1783
  %drivers_dir2 = getelementptr inbounds %struct.module_kobject, ptr %4, i32 0, i32 2, !dbg !1784
  store ptr %call, ptr %drivers_dir2, align 8, !dbg !1785
  br label %if.end, !dbg !1783

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @mutex_unlock(ptr noundef @module_create_drivers_dir.drivers_dir_mutex) #5, !dbg !1786
  ret void, !dbg !1787
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1788 dso_local void @kfree(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1792 dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @module_remove_driver(ptr noundef %drv) #0 align 16 !dbg !1795 {
entry:
  %drv.addr = alloca ptr, align 8
  %mk = alloca ptr, align 8
  %driver_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1799, metadata !DIExpression()), !dbg !1802
  call void @llvm.lifetime.start.p0(i64 8, ptr %mk) #4, !dbg !1803
  call void @llvm.dbg.declare(metadata ptr %mk, metadata !1800, metadata !DIExpression()), !dbg !1804
  store ptr null, ptr %mk, align 8, !dbg !1804
  call void @llvm.lifetime.start.p0(i64 8, ptr %driver_name) #4, !dbg !1805
  call void @llvm.dbg.declare(metadata ptr %driver_name, metadata !1801, metadata !DIExpression()), !dbg !1806
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !1807
  %tobool = icmp ne ptr %0, null, !dbg !1807
  br i1 %tobool, label %if.end, label %if.then, !dbg !1809

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1810

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !1811
  %p = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 18, !dbg !1812
  %2 = load ptr, ptr %p, align 8, !dbg !1812
  %kobj = getelementptr inbounds %struct.driver_private, ptr %2, i32 0, i32 0, !dbg !1813
  call void @sysfs_remove_link(ptr noundef %kobj, ptr noundef @.str) #5, !dbg !1814
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !1815
  %owner = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 2, !dbg !1817
  %4 = load ptr, ptr %owner, align 8, !dbg !1817
  %tobool1 = icmp ne ptr %4, null, !dbg !1815
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !1818

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %drv.addr, align 8, !dbg !1819
  %owner3 = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 2, !dbg !1820
  %6 = load ptr, ptr %owner3, align 8, !dbg !1820
  %mkobj = getelementptr inbounds %struct.module, ptr %6, i32 0, i32 3, !dbg !1821
  store ptr %mkobj, ptr %mk, align 8, !dbg !1822
  br label %if.end11, !dbg !1823

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %drv.addr, align 8, !dbg !1824
  %p4 = getelementptr inbounds %struct.device_driver, ptr %7, i32 0, i32 18, !dbg !1826
  %8 = load ptr, ptr %p4, align 8, !dbg !1826
  %mkobj5 = getelementptr inbounds %struct.driver_private, ptr %8, i32 0, i32 3, !dbg !1827
  %9 = load ptr, ptr %mkobj5, align 8, !dbg !1827
  %tobool6 = icmp ne ptr %9, null, !dbg !1824
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !1828

if.then7:                                         ; preds = %if.else
  %10 = load ptr, ptr %drv.addr, align 8, !dbg !1829
  %p8 = getelementptr inbounds %struct.device_driver, ptr %10, i32 0, i32 18, !dbg !1830
  %11 = load ptr, ptr %p8, align 8, !dbg !1830
  %mkobj9 = getelementptr inbounds %struct.driver_private, ptr %11, i32 0, i32 3, !dbg !1831
  %12 = load ptr, ptr %mkobj9, align 8, !dbg !1831
  store ptr %12, ptr %mk, align 8, !dbg !1832
  br label %if.end10, !dbg !1833

if.end10:                                         ; preds = %if.then7, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then2
  %13 = load ptr, ptr %mk, align 8, !dbg !1834
  %tobool12 = icmp ne ptr %13, null, !dbg !1834
  br i1 %tobool12, label %land.lhs.true, label %if.end19, !dbg !1836

land.lhs.true:                                    ; preds = %if.end11
  %14 = load ptr, ptr %mk, align 8, !dbg !1837
  %drivers_dir = getelementptr inbounds %struct.module_kobject, ptr %14, i32 0, i32 2, !dbg !1838
  %15 = load ptr, ptr %drivers_dir, align 8, !dbg !1838
  %tobool13 = icmp ne ptr %15, null, !dbg !1837
  br i1 %tobool13, label %if.then14, label %if.end19, !dbg !1839

if.then14:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr %drv.addr, align 8, !dbg !1840
  %call = call ptr @make_driver_name(ptr noundef %16) #5, !dbg !1842
  store ptr %call, ptr %driver_name, align 8, !dbg !1843
  %17 = load ptr, ptr %driver_name, align 8, !dbg !1844
  %tobool15 = icmp ne ptr %17, null, !dbg !1844
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !1846

if.then16:                                        ; preds = %if.then14
  %18 = load ptr, ptr %mk, align 8, !dbg !1847
  %drivers_dir17 = getelementptr inbounds %struct.module_kobject, ptr %18, i32 0, i32 2, !dbg !1849
  %19 = load ptr, ptr %drivers_dir17, align 8, !dbg !1849
  %20 = load ptr, ptr %driver_name, align 8, !dbg !1850
  call void @sysfs_remove_link(ptr noundef %19, ptr noundef %20) #5, !dbg !1851
  %21 = load ptr, ptr %driver_name, align 8, !dbg !1852
  call void @kfree(ptr noundef %21) #5, !dbg !1853
  br label %if.end18, !dbg !1854

if.end18:                                         ; preds = %if.then16, %if.then14
  br label %if.end19, !dbg !1855

if.end19:                                         ; preds = %if.end18, %land.lhs.true, %if.end11
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1856
  br label %cleanup, !dbg !1856

cleanup:                                          ; preds = %if.end19, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %driver_name) #4, !dbg !1856
  call void @llvm.lifetime.end.p0(i64 8, ptr %mk) #4, !dbg !1856
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1856

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1857 dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1861 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1865 dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1868 dso_local void @mutex_unlock(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!1074}
!llvm.module.flags = !{!1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151}
!llvm.ident = !{!1152}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/base/module.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fbcf1c37f3f58c59df062f597f516e8")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 7)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 16, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "drivers_dir_mutex", scope: !14, file: !2, line: 25, type: !373, isLocal: true, isDefinition: true)
!14 = distinct !DISubprogram(name: "module_create_drivers_dir", scope: !2, file: !2, line: 23, type: !15, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !1142)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !19, line: 45, size: 768, elements: !20)
!19 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!20 = !{!21, !697, !1068, !1069, !1072}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !18, file: !19, line: 46, baseType: !22, size: 512)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !23, line: 64, size: 512, elements: !24)
!23 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!24 = !{!25, !28, !35, !37, !127, !568, !682, !692, !693, !694, !695, !696}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !22, file: !23, line: 65, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !22, file: !23, line: 66, baseType: !29, size: 128, offset: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !30, line: 190, size: 128, elements: !31)
!30 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!31 = !{!32, !34}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !29, file: !30, line: 191, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !29, file: !30, line: 191, baseType: !33, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !22, file: !23, line: 67, baseType: !36, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !22, file: !23, line: 68, baseType: !38, size: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !23, line: 168, size: 768, elements: !40)
!40 = !{!41, !42, !86, !87}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !39, file: !23, line: 169, baseType: !29, size: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !39, file: !23, line: 170, baseType: !43, size: 32, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !44, line: 29, baseType: !45)
!44 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !44, line: 17, size: 32, elements: !46)
!46 = !{!47}
!47 = !DIDerivedType(tag: DW_TAG_member, scope: !45, file: !44, line: 18, baseType: !48, size: 32)
!48 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !45, file: !44, line: 18, size: 32, elements: !49)
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !48, file: !44, line: 19, baseType: !51, size: 32)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !52, line: 14, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!53 = !{!54}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !51, file: !52, line: 15, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !56, line: 44, baseType: !57)
!56 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !56, line: 14, size: 32, elements: !58)
!58 = !{!59}
!59 = !DIDerivedType(tag: DW_TAG_member, scope: !57, file: !56, line: 15, baseType: !60, size: 32)
!60 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !57, file: !56, line: 15, size: 32, elements: !61)
!61 = !{!62, !68, !78}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !60, file: !56, line: 16, baseType: !63, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !30, line: 174, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 172, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !64, file: !30, line: 173, baseType: !67, size: 32)
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, scope: !60, file: !56, line: 24, baseType: !69, size: 16)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !60, file: !56, line: 24, size: 16, elements: !70)
!70 = !{!71, !77}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !69, file: !56, line: 25, baseType: !72, size: 8)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !73, line: 17, baseType: !74)
!73 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !75, line: 21, baseType: !76)
!75 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!76 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !69, file: !56, line: 26, baseType: !72, size: 8, offset: 8)
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !60, file: !56, line: 28, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !60, file: !56, line: 28, size: 32, elements: !80)
!80 = !{!81, !85}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !79, file: !56, line: 29, baseType: !82, size: 16)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !73, line: 19, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !75, line: 24, baseType: !84)
!84 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !79, file: !56, line: 30, baseType: !82, size: 16, offset: 16)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !39, file: !23, line: 171, baseType: !22, size: 512, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !39, file: !23, line: 172, baseType: !88, size: 64, offset: 704)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !23, line: 133, size: 192, elements: !91)
!91 = !{!92, !99, !104}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !90, file: !23, line: 134, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!67, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !90, file: !23, line: 135, baseType: !100, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!26, !97}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !90, file: !23, line: 136, baseType: !105, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!67, !97, !109}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !23, line: 125, size: 20736, elements: !111)
!111 = !{!112, !117, !121, !122, !126}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !110, file: !23, line: 126, baseType: !113, size: 192)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 192, elements: !115)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!115 = !{!116}
!116 = !DISubrange(count: 3)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !110, file: !23, line: 127, baseType: !118, size: 4096, offset: 192)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 4096, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !110, file: !23, line: 128, baseType: !67, size: 32, offset: 4288)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !110, file: !23, line: 129, baseType: !123, size: 16384, offset: 4320)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 2048)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !110, file: !23, line: 130, baseType: !67, size: 32, offset: 20704)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !22, file: !23, line: 69, baseType: !128, size: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !23, line: 116, size: 384, elements: !131)
!131 = !{!132, !136, !165, !509, !546, !550}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !130, file: !23, line: 117, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !36}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !130, file: !23, line: 118, baseType: !137, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !140, line: 254, size: 128, elements: !141)
!140 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!141 = !{!142, !157}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !139, file: !140, line: 255, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !36, !151, !114}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !30, line: 66, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !148, line: 73, baseType: !149)
!148 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !148, line: 15, baseType: !150)
!150 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !140, line: 30, size: 128, elements: !153)
!153 = !{!154, !155}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !152, file: !140, line: 31, baseType: !26, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !152, file: !140, line: 32, baseType: !156, size: 16, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !30, line: 24, baseType: !84)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !139, file: !140, line: 256, baseType: !158, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!146, !36, !151, !26, !161}
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 61, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !148, line: 72, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !148, line: 16, baseType: !164)
!164 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !130, file: !23, line: 119, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !140, line: 84, size: 320, elements: !170)
!170 = !{!171, !172, !176, !505, !507}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !169, file: !140, line: 85, baseType: !26, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !169, file: !140, line: 86, baseType: !173, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!156, !36, !151, !67}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !169, file: !140, line: 88, baseType: !177, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!156, !36, !180, !67}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !140, line: 175, size: 512, elements: !182)
!182 = !{!183, !184, !185, !187, !194, !204, !205}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !181, file: !140, line: 176, baseType: !152, size: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !181, file: !140, line: 177, baseType: !161, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !181, file: !140, line: 178, baseType: !186, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !181, file: !140, line: 179, baseType: !188, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !193, line: 32, flags: DIFlagFwdDecl)
!193 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!194 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !181, file: !140, line: 180, baseType: !195, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!146, !198, !36, !180, !114, !201, !161}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !200, line: 537, flags: DIFlagFwdDecl)
!200 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !30, line: 52, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !148, line: 88, baseType: !203)
!203 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !181, file: !140, line: 182, baseType: !195, size: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !181, file: !140, line: 184, baseType: !206, size: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!67, !198, !36, !180, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !193, line: 625, size: 1344, elements: !211)
!211 = !{!212, !229, !453, !459, !466, !467, !472, !475, !487, !488, !491, !495, !496, !497, !498, !499, !503}
!212 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !193, line: 628, baseType: !213, size: 128)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !193, line: 628, size: 128, elements: !214)
!214 = !{!215, !220}
!215 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !193, line: 629, baseType: !216, size: 128)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !213, file: !193, line: 629, size: 128, elements: !217)
!217 = !{!218, !219}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !216, file: !193, line: 631, baseType: !164, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !216, file: !193, line: 632, baseType: !164, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !213, file: !193, line: 635, baseType: !221, size: 128, align: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !30, line: 232, size: 128, align: 64, elements: !222)
!222 = !{!223, !225}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !30, line: 233, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !221, file: !30, line: 234, baseType: !226, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !224}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !210, file: !193, line: 639, baseType: !230, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !193, line: 733, size: 10240, elements: !232)
!232 = !{!233, !449}
!233 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !193, line: 734, baseType: !234, size: 10240)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !193, line: 734, size: 10240, elements: !235)
!235 = !{!236, !240, !255, !259, !260, !261, !262, !263, !264, !272, !273, !274, !283, !284, !293, !294, !295, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !342, !356, !359, !414, !415, !416, !419, !423, !424, !427, !428, !429, !436, !437}
!236 = !DIDerivedType(tag: DW_TAG_member, scope: !234, file: !193, line: 739, baseType: !237, size: 512, align: 512)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !234, file: !193, line: 739, size: 512, align: 512, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !237, file: !193, line: 747, baseType: !63, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !234, file: !193, line: 750, baseType: !241, size: 128, offset: 512)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !242, line: 218, size: 128, elements: !243)
!242 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!243 = !{!244, !252, !254}
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !242, line: 219, baseType: !245, size: 32)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !242, line: 219, size: 32, elements: !246)
!246 = !{!247, !248}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !245, file: !242, line: 220, baseType: !43, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !245, file: !242, line: 221, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !242, line: 197, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 197, elements: !251)
!251 = !{}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !241, file: !242, line: 223, baseType: !253, size: 32, offset: 32)
!253 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !241, file: !242, line: 224, baseType: !186, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !234, file: !193, line: 752, baseType: !256, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!164, !198, !164, !164, !164, !164}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !234, file: !193, line: 756, baseType: !164, size: 64, offset: 704)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !234, file: !193, line: 757, baseType: !164, size: 64, offset: 768)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !234, file: !193, line: 760, baseType: !164, size: 64, offset: 832)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !234, file: !193, line: 761, baseType: !164, size: 64, offset: 896)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !234, file: !193, line: 763, baseType: !164, size: 64, offset: 960)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !234, file: !193, line: 764, baseType: !265, size: 64, offset: 1024)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !200, line: 299, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !200, line: 299, size: 64, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !267, file: !200, line: 299, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !271, line: 18, baseType: !164)
!271 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!272 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !234, file: !193, line: 773, baseType: !63, size: 32, offset: 1088)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !234, file: !193, line: 785, baseType: !63, size: 32, offset: 1120)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !234, file: !193, line: 795, baseType: !275, size: 64, offset: 1152)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !193, line: 726, size: 128, elements: !277)
!277 = !{!278, !282}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !276, file: !193, line: 727, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !73, line: 23, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !75, line: 31, baseType: !281)
!281 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !276, file: !193, line: 728, baseType: !67, size: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !234, file: !193, line: 801, baseType: !164, size: 64, offset: 1216)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !234, file: !193, line: 804, baseType: !285, size: 64, offset: 1280)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !286, line: 13, baseType: !287)
!286 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !30, line: 181, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 179, size: 64, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !288, file: !30, line: 180, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !73, line: 22, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !75, line: 30, baseType: !203)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !234, file: !193, line: 806, baseType: !67, size: 32, offset: 1344)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !234, file: !193, line: 808, baseType: !43, size: 32, offset: 1376)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !234, file: !193, line: 823, baseType: !296, size: 320, offset: 1408)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !297, line: 48, size: 320, elements: !298)
!297 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!298 = !{!299, !300, !301, !306, !308}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !296, file: !297, line: 49, baseType: !285, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !296, file: !297, line: 55, baseType: !285, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !296, file: !297, line: 57, baseType: !302, size: 32, offset: 128)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !303, line: 15, size: 32, elements: !304)
!303 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !302, file: !303, line: 20, baseType: !63, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !296, file: !297, line: 59, baseType: !307, size: 32, offset: 160)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !52, line: 23, baseType: !51)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !296, file: !297, line: 60, baseType: !29, size: 128, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !234, file: !193, line: 825, baseType: !29, size: 128, offset: 1728)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !234, file: !193, line: 845, baseType: !67, size: 32, offset: 1856)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !234, file: !193, line: 849, baseType: !164, size: 64, offset: 1920)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !234, file: !193, line: 850, baseType: !164, size: 64, offset: 1984)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !234, file: !193, line: 852, baseType: !164, size: 64, offset: 2048)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !234, file: !193, line: 853, baseType: !164, size: 64, offset: 2112)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !234, file: !193, line: 854, baseType: !287, size: 64, offset: 2176)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !234, file: !193, line: 855, baseType: !164, size: 64, offset: 2240)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !234, file: !193, line: 856, baseType: !164, size: 64, offset: 2304)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !234, file: !193, line: 857, baseType: !164, size: 64, offset: 2368)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !234, file: !193, line: 858, baseType: !164, size: 64, offset: 2432)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !234, file: !193, line: 865, baseType: !321, size: 32, offset: 2496)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !322, line: 69, baseType: !323)
!322 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !322, line: 64, size: 32, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !323, file: !322, line: 65, baseType: !253, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !234, file: !193, line: 867, baseType: !43, size: 32, offset: 2528)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !234, file: !193, line: 869, baseType: !164, size: 64, offset: 2560)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !234, file: !193, line: 869, baseType: !164, size: 64, offset: 2624)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !234, file: !193, line: 869, baseType: !164, size: 64, offset: 2688)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !234, file: !193, line: 869, baseType: !164, size: 64, offset: 2752)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !234, file: !193, line: 870, baseType: !164, size: 64, offset: 2816)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !234, file: !193, line: 870, baseType: !164, size: 64, offset: 2880)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !234, file: !193, line: 870, baseType: !164, size: 64, offset: 2944)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !234, file: !193, line: 871, baseType: !164, size: 64, offset: 3008)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !234, file: !193, line: 871, baseType: !164, size: 64, offset: 3072)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !234, file: !193, line: 871, baseType: !164, size: 64, offset: 3136)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !234, file: !193, line: 871, baseType: !164, size: 64, offset: 3200)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !234, file: !193, line: 873, baseType: !339, size: 3328, offset: 3264)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 3328, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 52)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !234, file: !193, line: 875, baseType: !343, size: 1280, offset: 6592)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 1280, elements: !354)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !345, line: 22, size: 320, elements: !346)
!345 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!346 = !{!347, !348, !349, !350}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !344, file: !345, line: 23, baseType: !307, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !344, file: !345, line: 24, baseType: !291, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !344, file: !345, line: 26, baseType: !29, size: 128, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !344, file: !345, line: 28, baseType: !351, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !73, line: 20, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !75, line: 26, baseType: !67)
!354 = !{!355}
!355 = !DISubrange(count: 4)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !234, file: !193, line: 877, baseType: !357, size: 64, offset: 7872)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !193, line: 877, flags: DIFlagFwdDecl)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !234, file: !193, line: 880, baseType: !360, size: 1088, offset: 7936)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !361, line: 72, baseType: !362)
!361 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 23, size: 1088, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !371, !372, !380, !381, !408, !409, !410}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !362, file: !361, line: 28, baseType: !279, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !362, file: !361, line: 38, baseType: !287, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !362, file: !361, line: 40, baseType: !164, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !362, file: !361, line: 43, baseType: !296, size: 320, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !362, file: !361, line: 44, baseType: !369, size: 64, offset: 512)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !361, line: 44, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !361, line: 48, baseType: !164, size: 64, offset: 576)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !362, file: !361, line: 59, baseType: !373, size: 256, offset: 640)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !374, line: 66, size: 256, elements: !375)
!374 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!375 = !{!376, !377, !378, !379}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !373, file: !374, line: 67, baseType: !285, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !373, file: !374, line: 68, baseType: !307, size: 32, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !373, file: !374, line: 70, baseType: !302, size: 32, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !373, file: !374, line: 72, baseType: !29, size: 128, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !362, file: !361, line: 60, baseType: !186, size: 64, offset: 896)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !362, file: !361, line: 61, baseType: !382, size: 64, offset: 960)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !385, line: 13, size: 1216, elements: !386)
!385 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!386 = !{!387, !388, !389, !390, !391, !392, !393, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !384, file: !385, line: 14, baseType: !186, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !384, file: !385, line: 15, baseType: !164, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !384, file: !385, line: 17, baseType: !164, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !384, file: !385, line: 17, baseType: !164, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !384, file: !385, line: 18, baseType: !164, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !384, file: !385, line: 18, baseType: !164, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !384, file: !385, line: 19, baseType: !394, size: 64, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !384, file: !385, line: 21, baseType: !150, size: 64, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !384, file: !385, line: 23, baseType: !150, size: 64, offset: 512)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !384, file: !385, line: 24, baseType: !150, size: 64, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !384, file: !385, line: 25, baseType: !150, size: 64, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !384, file: !385, line: 26, baseType: !150, size: 64, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !384, file: !385, line: 27, baseType: !150, size: 64, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !384, file: !385, line: 28, baseType: !150, size: 64, offset: 832)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !384, file: !385, line: 29, baseType: !150, size: 64, offset: 896)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !384, file: !385, line: 30, baseType: !150, size: 64, offset: 960)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !384, file: !385, line: 31, baseType: !150, size: 64, offset: 1024)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !384, file: !385, line: 32, baseType: !150, size: 64, offset: 1088)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !384, file: !385, line: 33, baseType: !150, size: 64, offset: 1152)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !362, file: !361, line: 63, baseType: !63, size: 32, offset: 1024)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !362, file: !361, line: 69, baseType: !82, size: 16, offset: 1056)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !362, file: !361, line: 70, baseType: !411, size: 16, offset: 1072)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !73, line: 18, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !75, line: 23, baseType: !413)
!413 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !234, file: !193, line: 882, baseType: !164, size: 64, offset: 9024)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !234, file: !193, line: 885, baseType: !43, size: 32, offset: 9088)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !234, file: !193, line: 886, baseType: !417, size: 64, offset: 9152)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !193, line: 732, flags: DIFlagFwdDecl)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !234, file: !193, line: 901, baseType: !420, size: 64, offset: 9216)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !422, line: 18, flags: DIFlagFwdDecl)
!422 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!423 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !234, file: !193, line: 904, baseType: !198, size: 64, offset: 9280)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !234, file: !193, line: 906, baseType: !425, size: 64, offset: 9344)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !193, line: 906, flags: DIFlagFwdDecl)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !234, file: !193, line: 930, baseType: !63, size: 32, offset: 9408)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !234, file: !193, line: 933, baseType: !63, size: 32, offset: 9440)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !234, file: !193, line: 935, baseType: !430, size: 64, offset: 9472)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !431, line: 103, size: 64, elements: !432)
!431 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !430, file: !431, line: 104, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !431, line: 101, flags: DIFlagFwdDecl)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !234, file: !193, line: 940, baseType: !285, size: 64, offset: 9536)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !234, file: !193, line: 942, baseType: !438, size: 256, offset: 9600)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !439, line: 98, size: 256, elements: !440)
!439 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!440 = !{!441, !442, !443}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !438, file: !439, line: 99, baseType: !285, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !438, file: !439, line: 100, baseType: !29, size: 128, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !438, file: !439, line: 101, baseType: !444, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !439, line: 21, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !231, file: !193, line: 986, baseType: !450, offset: 10240)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: -1)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !210, file: !193, line: 640, baseType: !454, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !200, line: 297, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !200, line: 297, size: 64, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !455, file: !200, line: 297, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !271, line: 19, baseType: !164)
!459 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !193, line: 646, baseType: !460, size: 64, offset: 256)
!460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !193, line: 646, size: 64, elements: !461)
!461 = !{!462, !465}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !460, file: !193, line: 647, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !193, line: 542, baseType: !164)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !460, file: !193, line: 648, baseType: !464, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !210, file: !193, line: 666, baseType: !67, size: 32, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !210, file: !193, line: 667, baseType: !468, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !193, line: 579, size: 320, elements: !470)
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !469, file: !193, line: 580, baseType: !296, size: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !210, file: !193, line: 670, baseType: !473, size: 8, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !30, line: 35, baseType: !474)
!474 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !210, file: !193, line: 681, baseType: !476, size: 256, offset: 512)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !210, file: !193, line: 678, size: 256, elements: !477)
!477 = !{!478, !486}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !476, file: !193, line: 679, baseType: !479, size: 192, align: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !480, line: 5, size: 192, align: 64, elements: !481)
!480 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!481 = !{!482, !483, !485}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !479, file: !480, line: 6, baseType: !164, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !479, file: !480, line: 7, baseType: !484, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !479, file: !480, line: 8, baseType: !484, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !476, file: !193, line: 680, baseType: !164, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !210, file: !193, line: 689, baseType: !29, size: 128, offset: 768)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !210, file: !193, line: 691, baseType: !489, size: 64, offset: 896)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !193, line: 691, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !210, file: !193, line: 694, baseType: !492, size: 64, offset: 960)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !193, line: 694, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !210, file: !193, line: 697, baseType: !164, size: 64, offset: 1024)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !210, file: !193, line: 699, baseType: !198, size: 64, offset: 1088)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !210, file: !193, line: 700, baseType: !186, size: 64, offset: 1152)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !210, file: !193, line: 711, baseType: !285, size: 64, offset: 1216)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !210, file: !193, line: 717, baseType: !500, size: 64, offset: 1280)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !502, line: 54, flags: DIFlagFwdDecl)
!502 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!503 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !210, file: !193, line: 722, baseType: !504, offset: 1344)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !193, line: 570, elements: !251)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !169, file: !140, line: 90, baseType: !506, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !169, file: !140, line: 91, baseType: !508, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !130, file: !23, line: 120, baseType: !510, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!513, !97}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !516, line: 39, size: 384, elements: !517)
!516 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!517 = !{!518, !524, !528, !532, !538, !542}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !515, file: !516, line: 40, baseType: !519, size: 32)
!519 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !516, line: 26, baseType: !253, size: 32, elements: !520)
!520 = !{!521, !522, !523}
!521 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!522 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!523 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !515, file: !516, line: 41, baseType: !525, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!473}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !515, file: !516, line: 42, baseType: !529, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!186}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !515, file: !516, line: 43, baseType: !533, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!394, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !516, line: 19, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !515, file: !516, line: 44, baseType: !539, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!394}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !515, file: !516, line: 45, baseType: !543, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !186}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !130, file: !23, line: 121, baseType: !547, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!394, !97}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !130, file: !23, line: 122, baseType: !551, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !97, !554, !561}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !422, line: 23, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !422, line: 21, size: 32, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !556, file: !422, line: 22, baseType: !559, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !30, line: 37, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !148, line: 49, baseType: !253)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !422, line: 28, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !422, line: 26, size: 32, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !563, file: !422, line: 27, baseType: !566, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !30, line: 38, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !148, line: 50, baseType: !253)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !22, file: !23, line: 70, baseType: !569, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !571, line: 190, size: 1152, elements: !572)
!571 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!572 = !{!573, !574, !575, !576, !577, !578, !579, !580, !674, !675, !676, !677, !678, !681}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !570, file: !571, line: 191, baseType: !63, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !570, file: !571, line: 192, baseType: !63, size: 32, offset: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !570, file: !571, line: 202, baseType: !569, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !570, file: !571, line: 203, baseType: !26, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !570, file: !571, line: 205, baseType: !479, size: 192, align: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !570, file: !571, line: 207, baseType: !394, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !570, file: !571, line: 208, baseType: !253, size: 32, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, scope: !570, file: !571, line: 209, baseType: !581, size: 256, offset: 512)
!581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !570, file: !571, line: 209, size: 256, elements: !582)
!582 = !{!583, !595, !599}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !581, file: !571, line: 210, baseType: !584, size: 256)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !571, line: 153, size: 256, elements: !585)
!585 = !{!586, !587, !591, !594}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !584, file: !571, line: 154, baseType: !164, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !584, file: !571, line: 156, baseType: !588, size: 64, offset: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !480, line: 12, size: 64, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !588, file: !480, line: 13, baseType: !484, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !584, file: !571, line: 162, baseType: !592, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !571, line: 162, flags: DIFlagFwdDecl)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !584, file: !571, line: 167, baseType: !164, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !581, file: !571, line: 211, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !571, line: 170, size: 64, elements: !597)
!597 = !{!598}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !596, file: !571, line: 171, baseType: !569, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !581, file: !571, line: 212, baseType: !600, size: 256)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !571, line: 174, size: 256, elements: !601)
!601 = !{!602, !669, !672, !673}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !600, file: !571, line: 175, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !571, line: 271, size: 768, elements: !606)
!606 = !{!607, !629, !633, !637, !642, !646, !650, !654, !655, !656, !657, !665}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !605, file: !571, line: 276, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!67, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !571, line: 251, size: 1216, elements: !613)
!613 = !{!614, !615, !616, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !612, file: !571, line: 253, baseType: !569, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !612, file: !571, line: 254, baseType: !198, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !612, file: !571, line: 255, baseType: !617, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !502, line: 66, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !612, file: !571, line: 256, baseType: !186, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !612, file: !571, line: 259, baseType: !373, size: 256, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !612, file: !571, line: 260, baseType: !373, size: 256, offset: 512)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !612, file: !571, line: 261, baseType: !67, size: 32, offset: 768)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !612, file: !571, line: 262, baseType: !29, size: 128, offset: 832)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !612, file: !571, line: 263, baseType: !114, size: 64, offset: 960)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !612, file: !571, line: 265, baseType: !161, size: 64, offset: 1024)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !612, file: !571, line: 266, baseType: !473, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !612, file: !571, line: 267, baseType: !473, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !612, file: !571, line: 268, baseType: !492, size: 64, offset: 1152)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !605, file: !571, line: 277, baseType: !630, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !611}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !605, file: !571, line: 290, baseType: !634, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!67, !617, !186}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !605, file: !571, line: 292, baseType: !638, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!186, !617, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !605, file: !571, line: 293, baseType: !643, size: 64, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!186, !617, !186, !641}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !605, file: !571, line: 294, baseType: !647, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !617, !186}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !605, file: !571, line: 296, baseType: !651, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!146, !611, !114, !161, !201}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !605, file: !571, line: 306, baseType: !161, size: 64, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !605, file: !571, line: 313, baseType: !473, size: 8, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !605, file: !571, line: 314, baseType: !651, size: 64, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !605, file: !571, line: 317, baseType: !658, size: 64, offset: 640)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!661, !611, !663}
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !662, line: 59, baseType: !253)
!662 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !571, line: 31, flags: DIFlagFwdDecl)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !605, file: !571, line: 320, baseType: !666, size: 64, offset: 704)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!67, !611, !209}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !600, file: !571, line: 176, baseType: !670, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !571, line: 35, flags: DIFlagFwdDecl)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !600, file: !571, line: 177, baseType: !201, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !600, file: !571, line: 178, baseType: !569, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !570, file: !571, line: 215, baseType: !186, size: 64, offset: 768)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !570, file: !571, line: 221, baseType: !279, size: 64, offset: 832)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !570, file: !571, line: 223, baseType: !84, size: 16, offset: 896)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !570, file: !571, line: 224, baseType: !156, size: 16, offset: 912)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !570, file: !571, line: 225, baseType: !679, size: 64, offset: 960)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !571, line: 36, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !570, file: !571, line: 227, baseType: !221, size: 128, align: 64, offset: 1024)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !22, file: !23, line: 71, baseType: !683, size: 32, offset: 448)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !684, line: 19, size: 32, elements: !685)
!684 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !683, file: !684, line: 20, baseType: !687, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !688, line: 113, baseType: !689)
!688 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !688, line: 111, size: 32, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !689, file: !688, line: 112, baseType: !63, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !22, file: !23, line: 73, baseType: !253, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !22, file: !23, line: 74, baseType: !253, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !22, file: !23, line: 75, baseType: !253, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !22, file: !23, line: 76, baseType: !253, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !22, file: !23, line: 77, baseType: !253, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !18, file: !19, line: 47, baseType: !698, size: 64, offset: 512)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !19, line: 402, size: 9216, align: 512, elements: !700)
!700 = !{!701, !708, !709, !713, !714, !739, !740, !741, !742, !746, !749, !750, !751, !804, !805, !806, !807, !808, !809, !810, !811, !814, !818, !836, !854, !855, !856, !857, !866, !890, !891, !894, !897, !898, !899, !900, !901, !902, !903, !908, !909, !1026, !1034, !1035, !1036, !1038, !1042, !1043, !1047, !1048, !1049, !1050, !1052, !1053, !1054, !1061, !1062, !1063, !1067}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !699, file: !19, line: 403, baseType: !702, size: 32)
!702 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !19, line: 312, baseType: !253, size: 32, elements: !703)
!703 = !{!704, !705, !706, !707}
!704 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!705 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!706 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!707 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !699, file: !19, line: 406, baseType: !29, size: 128, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !699, file: !19, line: 409, baseType: !710, size: 448, offset: 192)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 56)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !699, file: !19, line: 417, baseType: !18, size: 768, offset: 640)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !699, file: !19, line: 418, baseType: !715, size: 64, offset: 1408)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !19, line: 53, size: 448, elements: !717)
!717 = !{!718, !719, !723, !727, !731, !735}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !716, file: !19, line: 54, baseType: !152, size: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !716, file: !19, line: 55, baseType: !720, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!146, !715, !17, !114}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !716, file: !19, line: 57, baseType: !724, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!146, !715, !17, !26, !161}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !716, file: !19, line: 59, baseType: !728, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !698, !26}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !716, file: !19, line: 60, baseType: !732, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!67, !698}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !716, file: !19, line: 61, baseType: !736, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !698}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !699, file: !19, line: 419, baseType: !26, size: 64, offset: 1472)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !699, file: !19, line: 420, baseType: !26, size: 64, offset: 1536)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !699, file: !19, line: 421, baseType: !36, size: 64, offset: 1600)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !699, file: !19, line: 424, baseType: !743, size: 64, offset: 1664)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !745)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !19, line: 424, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !699, file: !19, line: 425, baseType: !747, size: 64, offset: 1728)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !699, file: !19, line: 426, baseType: !253, size: 32, offset: 1792)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !699, file: !19, line: 435, baseType: !373, size: 256, offset: 1856)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !699, file: !19, line: 437, baseType: !752, size: 64, offset: 2112)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !754, line: 69, size: 320, elements: !755)
!754 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!755 = !{!756, !757, !758, !775, !777, !781, !782}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !753, file: !754, line: 70, baseType: !26, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !753, file: !754, line: 71, baseType: !698, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !753, file: !754, line: 72, baseType: !759, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !754, line: 47, size: 256, elements: !762)
!762 = !{!763, !764, !770, !774}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !761, file: !754, line: 49, baseType: !253, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !761, file: !754, line: 51, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!67, !26, !768}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !761, file: !754, line: 53, baseType: !771, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!67, !114, !768}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !761, file: !754, line: 55, baseType: !543, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !753, file: !754, line: 73, baseType: !776, size: 16, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !753, file: !754, line: 74, baseType: !778, size: 8, offset: 208)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !73, line: 16, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !75, line: 20, baseType: !780)
!780 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !753, file: !754, line: 75, baseType: !72, size: 8, offset: 216)
!782 = !DIDerivedType(tag: DW_TAG_member, scope: !753, file: !754, line: 76, baseType: !783, size: 64, offset: 256)
!783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !753, file: !754, line: 76, size: 64, elements: !784)
!784 = !{!785, !786, !793}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !783, file: !754, line: 77, baseType: !186, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !783, file: !754, line: 78, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !754, line: 86, size: 128, elements: !790)
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !789, file: !754, line: 87, baseType: !253, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !789, file: !754, line: 88, baseType: !114, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !783, file: !754, line: 79, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !754, line: 92, size: 256, elements: !797)
!797 = !{!798, !799, !800, !802, !803}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !796, file: !754, line: 94, baseType: !253, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !796, file: !754, line: 95, baseType: !253, size: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !796, file: !754, line: 96, baseType: !801, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !796, file: !754, line: 97, baseType: !759, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !796, file: !754, line: 98, baseType: !186, size: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !699, file: !19, line: 438, baseType: !253, size: 32, offset: 2176)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !699, file: !19, line: 441, baseType: !253, size: 32, offset: 2208)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !699, file: !19, line: 442, baseType: !743, size: 64, offset: 2240)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !699, file: !19, line: 443, baseType: !747, size: 64, offset: 2304)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !699, file: !19, line: 444, baseType: !473, size: 8, offset: 2368)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !699, file: !19, line: 451, baseType: !473, size: 8, offset: 2376)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !699, file: !19, line: 454, baseType: !253, size: 32, offset: 2400)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !699, file: !19, line: 455, baseType: !812, size: 64, offset: 2432)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !19, line: 43, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !699, file: !19, line: 458, baseType: !815, size: 64, offset: 2496)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!67}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !699, file: !19, line: 460, baseType: !819, size: 4032, align: 512, offset: 2560)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 4032, elements: !5)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !19, line: 362, size: 576, elements: !821)
!821 = !{!822, !823, !824}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !820, file: !19, line: 363, baseType: !186, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !820, file: !19, line: 364, baseType: !253, size: 32, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !820, file: !19, line: 367, baseType: !825, size: 448, offset: 128)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !19, line: 319, size: 448, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !825, file: !19, line: 320, baseType: !698, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !825, file: !19, line: 321, baseType: !829, size: 384, offset: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !830, line: 40, size: 384, elements: !831)
!830 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!831 = !{!832}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !829, file: !830, line: 41, baseType: !833, size: 384, align: 64)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 384, align: 64, elements: !834)
!834 = !{!835}
!835 = !DISubrange(count: 2)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !699, file: !19, line: 463, baseType: !837, size: 192, offset: 6592)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !838, line: 8, size: 192, elements: !839)
!838 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!839 = !{!840, !841, !843}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !837, file: !838, line: 10, baseType: !253, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !837, file: !838, line: 11, baseType: !842, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !837, file: !838, line: 12, baseType: !844, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !846, line: 59, size: 48, elements: !847)
!846 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!847 = !{!848, !849, !850, !851, !852, !853}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !845, file: !846, line: 60, baseType: !411, size: 16)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !845, file: !846, line: 61, baseType: !411, size: 16, offset: 16)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !845, file: !846, line: 63, baseType: !253, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !845, file: !846, line: 64, baseType: !253, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !845, file: !846, line: 65, baseType: !253, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !845, file: !846, line: 66, baseType: !253, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !699, file: !19, line: 465, baseType: !164, size: 64, offset: 6784)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !699, file: !19, line: 469, baseType: !253, size: 32, offset: 6848)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !699, file: !19, line: 470, baseType: !29, size: 128, offset: 6912)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !699, file: !19, line: 471, baseType: !858, size: 64, offset: 7040)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !860, line: 33, size: 96, elements: !861)
!860 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!861 = !{!862, !863, !864, !865}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !859, file: !860, line: 37, baseType: !67, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !859, file: !860, line: 43, baseType: !67, size: 32, offset: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !859, file: !860, line: 45, baseType: !84, size: 16, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !859, file: !860, line: 47, baseType: !84, size: 16, offset: 80)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !699, file: !19, line: 476, baseType: !867, size: 64, offset: 7104)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !19, line: 378, size: 256, elements: !869)
!869 = !{!870, !887, !888, !889}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !868, file: !19, line: 379, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !873, line: 204, baseType: !874)
!873 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !873, line: 197, size: 192, elements: !875)
!875 = !{!876, !879, !880, !881, !883, !885}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !874, file: !873, line: 198, baseType: !877, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !873, line: 21, baseType: !878)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !75, line: 27, baseType: !253)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !874, file: !873, line: 199, baseType: !76, size: 8, offset: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !874, file: !873, line: 200, baseType: !76, size: 8, offset: 40)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !874, file: !873, line: 201, baseType: !882, size: 16, offset: 48)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !873, line: 17, baseType: !83)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !874, file: !873, line: 202, baseType: !884, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !873, line: 16, baseType: !280)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !874, file: !873, line: 203, baseType: !886, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !873, line: 22, baseType: !280)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !868, file: !19, line: 380, baseType: !253, size: 32, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !868, file: !19, line: 381, baseType: !114, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !868, file: !19, line: 382, baseType: !114, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !699, file: !19, line: 477, baseType: !868, size: 256, offset: 7168)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !699, file: !19, line: 480, baseType: !892, size: 64, offset: 7424)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !19, line: 480, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !699, file: !19, line: 483, baseType: !895, size: 64, offset: 7488)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !19, line: 483, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !699, file: !19, line: 488, baseType: !114, size: 64, offset: 7552)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !699, file: !19, line: 492, baseType: !186, size: 64, offset: 7616)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !699, file: !19, line: 493, baseType: !253, size: 32, offset: 7680)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !699, file: !19, line: 495, baseType: !186, size: 64, offset: 7744)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !699, file: !19, line: 496, baseType: !253, size: 32, offset: 7808)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !699, file: !19, line: 499, baseType: !253, size: 32, offset: 7840)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !699, file: !19, line: 500, baseType: !904, size: 64, offset: 7872)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !906, line: 45, baseType: !907)
!906 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !699, file: !19, line: 503, baseType: !253, size: 32, offset: 7936)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !699, file: !19, line: 504, baseType: !910, size: 64, offset: 8000)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !913, line: 96, size: 192, elements: !914)
!913 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!914 = !{!915, !916, !977, !980}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !912, file: !913, line: 97, baseType: !253, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !912, file: !913, line: 98, baseType: !917, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !913, line: 24, size: 3072, elements: !919)
!919 = !{!920, !922, !923, !924, !925, !939, !940, !941, !942, !961, !962, !963, !974, !975, !976}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !918, file: !913, line: 26, baseType: !921, size: 128)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 128, elements: !834)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !918, file: !913, line: 27, baseType: !921, size: 128, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !918, file: !913, line: 28, baseType: !67, size: 32, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !918, file: !913, line: 31, baseType: !43, size: 32, align: 512, offset: 512)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !918, file: !913, line: 32, baseType: !926, size: 960, offset: 576)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !927, line: 206, size: 960, elements: !928)
!927 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!928 = !{!929, !930, !933, !935, !936, !938}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !926, file: !927, line: 207, baseType: !224, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !926, file: !927, line: 208, baseType: !931, size: 256, offset: 64)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 256, elements: !354)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !926, file: !927, line: 209, baseType: !934, size: 256, offset: 320)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 256, elements: !354)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !926, file: !927, line: 213, baseType: !150, size: 64, offset: 576)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !926, file: !927, line: 215, baseType: !937, size: 256, offset: 640)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !354)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !926, file: !927, line: 216, baseType: !72, size: 8, offset: 896)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !918, file: !913, line: 33, baseType: !164, size: 64, offset: 1536)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !918, file: !913, line: 34, baseType: !164, size: 64, offset: 1600)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !918, file: !913, line: 35, baseType: !473, size: 8, offset: 1664)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !918, file: !913, line: 36, baseType: !943, size: 320, offset: 1728)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !944, line: 11, size: 320, elements: !945)
!944 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!945 = !{!946, !953, !954, !959}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !943, file: !944, line: 16, baseType: !947, size: 128)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !30, line: 198, size: 128, elements: !948)
!948 = !{!949, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !947, file: !30, line: 199, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !947, file: !30, line: 199, baseType: !952, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !943, file: !944, line: 17, baseType: !164, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !943, file: !944, line: 18, baseType: !955, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !958}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !943, file: !944, line: 19, baseType: !960, size: 32, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !73, line: 21, baseType: !878)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !918, file: !913, line: 37, baseType: !438, size: 256, offset: 2048)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !918, file: !913, line: 38, baseType: !221, size: 128, align: 64, offset: 2304)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !918, file: !913, line: 39, baseType: !964, size: 64, offset: 2432)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !913, line: 49, size: 768, elements: !966)
!966 = !{!967, !968, !969, !970, !971, !972, !973}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !965, file: !913, line: 50, baseType: !43, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !965, file: !913, line: 51, baseType: !934, size: 256, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !965, file: !913, line: 53, baseType: !934, size: 256, offset: 320)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !965, file: !913, line: 54, baseType: !164, size: 64, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !965, file: !913, line: 55, baseType: !964, size: 64, offset: 640)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !965, file: !913, line: 56, baseType: !67, size: 32, offset: 704)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !965, file: !913, line: 57, baseType: !67, size: 32, offset: 736)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !918, file: !913, line: 40, baseType: !164, size: 64, offset: 2496)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !918, file: !913, line: 42, baseType: !67, size: 32, offset: 2560)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !918, file: !913, line: 43, baseType: !911, size: 64, offset: 2624)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !912, file: !913, line: 99, baseType: !978, offset: 128)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !979, line: 211, elements: !251)
!979 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !912, file: !913, line: 100, baseType: !981, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !913, line: 63, size: 3008, elements: !983)
!983 = !{!984, !985, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1013, !1014, !1015, !1016, !1025}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !982, file: !913, line: 64, baseType: !964, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !982, file: !913, line: 65, baseType: !986, size: 192, offset: 64)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !964, size: 192, elements: !115)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !982, file: !913, line: 67, baseType: !67, size: 32, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !982, file: !913, line: 68, baseType: !373, size: 256, offset: 320)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !982, file: !913, line: 69, baseType: !43, size: 32, offset: 576)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !982, file: !913, line: 70, baseType: !373, size: 256, offset: 640)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !982, file: !913, line: 71, baseType: !164, size: 64, offset: 896)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !982, file: !913, line: 72, baseType: !164, size: 64, offset: 960)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !982, file: !913, line: 73, baseType: !164, size: 64, offset: 1024)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !982, file: !913, line: 74, baseType: !164, size: 64, offset: 1088)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !982, file: !913, line: 75, baseType: !164, size: 64, offset: 1152)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !982, file: !913, line: 76, baseType: !164, size: 64, offset: 1216)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !982, file: !913, line: 77, baseType: !164, size: 64, offset: 1280)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !982, file: !913, line: 78, baseType: !164, size: 64, offset: 1344)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !982, file: !913, line: 79, baseType: !473, size: 8, offset: 1408)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !982, file: !913, line: 80, baseType: !164, size: 64, offset: 1472)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !982, file: !913, line: 81, baseType: !373, size: 256, offset: 1536)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !982, file: !913, line: 82, baseType: !1003, size: 256, offset: 1792)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1004, line: 26, size: 256, elements: !1005)
!1004 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1003, file: !1004, line: 27, baseType: !253, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1003, file: !1004, line: 28, baseType: !1008, size: 192, offset: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1009, line: 43, size: 192, elements: !1010)
!1009 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1008, file: !1009, line: 44, baseType: !307, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1008, file: !1009, line: 45, baseType: !29, size: 128, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !982, file: !913, line: 84, baseType: !63, size: 32, offset: 2048)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !982, file: !913, line: 87, baseType: !164, size: 64, offset: 2112)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !982, file: !913, line: 88, baseType: !164, size: 64, offset: 2176)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !982, file: !913, line: 89, baseType: !1017, size: 704, offset: 2240)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !439, line: 111, size: 704, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1024}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1017, file: !439, line: 112, baseType: !438, size: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1017, file: !439, line: 113, baseType: !943, size: 320, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1017, file: !439, line: 116, baseType: !1022, size: 64, offset: 576)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !439, line: 18, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1017, file: !439, line: 117, baseType: !67, size: 32, offset: 640)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !982, file: !913, line: 90, baseType: !911, size: 64, offset: 2944)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !699, file: !19, line: 515, baseType: !1027, size: 64, offset: 8064)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1029, line: 117, size: 128, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1030 = !{!1031, !1032, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1028, file: !1029, line: 118, baseType: !352, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1028, file: !1029, line: 119, baseType: !352, size: 32, offset: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1028, file: !1029, line: 120, baseType: !150, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !699, file: !19, line: 516, baseType: !253, size: 32, offset: 8128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !699, file: !19, line: 519, baseType: !253, size: 32, offset: 8160)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !699, file: !19, line: 520, baseType: !1037, size: 64, offset: 8192)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !699, file: !19, line: 523, baseType: !1039, size: 64, offset: 8256)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !19, line: 523, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !699, file: !19, line: 524, baseType: !253, size: 32, offset: 8320)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !699, file: !19, line: 525, baseType: !1044, size: 64, offset: 8384)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !19, line: 525, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !699, file: !19, line: 526, baseType: !253, size: 32, offset: 8448)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !699, file: !19, line: 533, baseType: !186, size: 64, offset: 8512)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !699, file: !19, line: 534, baseType: !253, size: 32, offset: 8576)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !699, file: !19, line: 535, baseType: !1051, size: 64, offset: 8640)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !699, file: !19, line: 536, baseType: !253, size: 32, offset: 8704)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !699, file: !19, line: 539, baseType: !67, size: 32, offset: 8736)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !699, file: !19, line: 540, baseType: !1055, size: 64, offset: 8768)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1057, line: 32, size: 64, elements: !1058)
!1057 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1056, file: !1057, line: 33, baseType: !352, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1056, file: !1057, line: 34, baseType: !352, size: 32, offset: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !699, file: !19, line: 563, baseType: !29, size: 128, offset: 8832)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !699, file: !19, line: 565, baseType: !29, size: 128, offset: 8960)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !699, file: !19, line: 568, baseType: !1064, size: 64, offset: 9088)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !699, file: !19, line: 570, baseType: !63, size: 32, offset: 9152)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !18, file: !19, line: 48, baseType: !36, size: 64, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !18, file: !19, line: 49, baseType: !1070, size: 64, offset: 640)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !19, line: 49, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !18, file: !19, line: 50, baseType: !1073, size: 64, offset: 704)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1074 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.module.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/module\22 -D KBUILD_BASENAME=\22module\22 -D KBUILD_MODNAME=\22module\22 -D __KBUILD_MODNAME=kmod_module -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/module.ll drivers/base/module.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !1075, retainedTypes: !1134, globals: !1136, splitDebugInlining: false, nameTableKind: None)
!1075 = !{!702, !519, !1076, !1083, !1088, !1096, !1103, !1112, !1117, !1122, !1128}
!1076 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !1077, line: 487, baseType: !253, size: 32, elements: !1078)
!1077 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!1078 = !{!1079, !1080, !1081, !1082}
!1079 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!1080 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!1081 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!1082 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!1083 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !1084, line: 65, baseType: !253, size: 32, elements: !1085)
!1084 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!1085 = !{!1086, !1087}
!1086 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!1087 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!1088 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !1089, line: 620, baseType: !253, size: 32, elements: !1090)
!1089 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!1090 = !{!1091, !1092, !1093, !1094, !1095}
!1091 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!1092 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!1093 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!1094 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!1095 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!1096 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !1089, line: 597, baseType: !67, size: 32, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102}
!1098 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!1099 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!1100 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!1101 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!1102 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!1103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !1077, line: 547, baseType: !253, size: 32, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !1111}
!1105 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!1106 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!1107 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!1108 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!1109 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!1110 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!1111 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!1112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !1077, line: 564, baseType: !253, size: 32, elements: !1113)
!1113 = !{!1114, !1115, !1116}
!1114 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!1115 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!1116 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!1117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !1077, line: 577, baseType: !253, size: 32, elements: !1118)
!1118 = !{!1119, !1120, !1121}
!1119 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!1120 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!1121 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!1122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !1077, line: 503, baseType: !253, size: 32, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127}
!1124 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!1125 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!1126 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!1127 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!1128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !1129, line: 45, baseType: !253, size: 32, elements: !1130)
!1129 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!1130 = !{!1131, !1132, !1133}
!1131 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!1132 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!1133 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!1134 = !{!186, !17, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !30, line: 154, baseType: !253)
!1136 = !{!0, !7, !12, !1137}
!1137 = !DIGlobalVariableExpression(var: !1138, expr: !DIExpression())
!1138 = distinct !DIGlobalVariable(scope: null, file: !2, line: 29, type: !1139, isLocal: true, isDefinition: true)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1140)
!1140 = !{!1141}
!1141 = !DISubrange(count: 8)
!1142 = !{!1143}
!1143 = !DILocalVariable(name: "mk", arg: 1, scope: !14, file: !2, line: 23, type: !17)
!1144 = !{i32 7, !"Dwarf Version", i32 5}
!1145 = !{i32 2, !"Debug Info Version", i32 3}
!1146 = !{i32 1, !"wchar_size", i32 2}
!1147 = !{i32 8, !"cf-protection-branch", i32 1}
!1148 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1149 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1150 = !{i32 1, !"Code Model", i32 2}
!1151 = !{i32 1, !"override-stack-alignment", i32 8}
!1152 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1153 = distinct !DISubprogram(name: "module_add_driver", scope: !2, file: !2, line: 33, type: !1154, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !1617)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!67, !698, !1156}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !1129, line: 96, size: 1152, elements: !1158)
!1158 = !{!1159, !1160, !1586, !1587, !1588, !1589, !1590, !1594, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1157, file: !1129, line: 97, baseType: !26, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1157, file: !1129, line: 98, baseType: !1161, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1163)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1164, line: 80, size: 1344, elements: !1165)
!1164 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1576, !1577, !1578, !1579, !1580, !1581, !1585}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1163, file: !1164, line: 81, baseType: !26, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1163, file: !1164, line: 82, baseType: !26, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1163, file: !1164, line: 83, baseType: !166, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1163, file: !1164, line: 84, baseType: !166, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1163, file: !1164, line: 85, baseType: !166, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1163, file: !1164, line: 87, baseType: !1172, size: 64, offset: 320)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!67, !1175, !1156}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !1077, line: 705, size: 5824, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1211, !1212, !1265, !1266, !1267, !1268, !1269, !1270, !1277, !1449, !1462, !1472, !1476, !1478, !1479, !1480, !1484, !1491, !1492, !1495, !1498, !1502, !1505, !1506, !1509, !1510, !1511, !1512, !1542, !1543, !1544, !1547, !1550, !1559, !1560, !1561, !1562, !1563, !1564}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1176, file: !1077, line: 706, baseType: !22, size: 512)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1176, file: !1077, line: 707, baseType: !1175, size: 64, offset: 512)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1176, file: !1077, line: 709, baseType: !1181, size: 64, offset: 576)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !1183, line: 108, size: 1728, elements: !1184)
!1183 = !DIFile(filename: "drivers/base/base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5f3031875b0a7d87c5130cddf3a0079")
!1184 = !{!1185, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "klist_children", scope: !1182, file: !1183, line: 109, baseType: !1186, size: 320, align: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !1187, line: 18, size: 320, align: 64, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd49af8b7fc11d3fd997e9c112ace59a")
!1188 = !{!1189, !1190, !1191, !1201}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !1186, file: !1187, line: 19, baseType: !43, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !1186, file: !1187, line: 20, baseType: !29, size: 128, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1186, file: !1187, line: 21, baseType: !1192, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !1195}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !1187, line: 37, size: 256, elements: !1197)
!1197 = !{!1198, !1199, !1200}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !1196, file: !1187, line: 38, baseType: !186, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !1196, file: !1187, line: 39, baseType: !29, size: 128, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !1196, file: !1187, line: 40, baseType: !683, size: 32, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1186, file: !1187, line: 22, baseType: !1192, size: 64, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "knode_parent", scope: !1182, file: !1183, line: 110, baseType: !1196, size: 256, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "knode_driver", scope: !1182, file: !1183, line: 111, baseType: !1196, size: 256, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !1182, file: !1183, line: 112, baseType: !1196, size: 256, offset: 832)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "knode_class", scope: !1182, file: !1183, line: 113, baseType: !1196, size: 256, offset: 1088)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe", scope: !1182, file: !1183, line: 114, baseType: !29, size: 128, offset: 1344)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "async_driver", scope: !1182, file: !1183, line: 115, baseType: !1156, size: 64, offset: 1472)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe_reason", scope: !1182, file: !1183, line: 116, baseType: !114, size: 64, offset: 1536)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1182, file: !1183, line: 117, baseType: !1175, size: 64, offset: 1600)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1182, file: !1183, line: 118, baseType: !72, size: 1, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1176, file: !1077, line: 711, baseType: !26, size: 64, offset: 640)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1176, file: !1077, line: 712, baseType: !1213, size: 64, offset: 704)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !1077, line: 89, size: 384, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1225, !1230, !1234}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1215, file: !1077, line: 90, baseType: !26, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1215, file: !1077, line: 91, baseType: !166, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1215, file: !1077, line: 92, baseType: !1220, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!67, !1223, !109}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1176)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1215, file: !1077, line: 93, baseType: !1226, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!114, !1223, !1229, !554, !561}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1215, file: !1077, line: 95, baseType: !1231, size: 64, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !1175}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1215, file: !1077, line: 97, baseType: !1235, size: 64, offset: 320)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1237)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !1089, line: 286, size: 1472, elements: !1238)
!1238 = !{!1239, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1237, file: !1089, line: 287, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!67, !1175}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1237, file: !1089, line: 288, baseType: !1231, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1237, file: !1089, line: 289, baseType: !1240, size: 64, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1237, file: !1089, line: 290, baseType: !1240, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1237, file: !1089, line: 291, baseType: !1240, size: 64, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1237, file: !1089, line: 292, baseType: !1240, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1237, file: !1089, line: 293, baseType: !1240, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1237, file: !1089, line: 294, baseType: !1240, size: 64, offset: 448)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1237, file: !1089, line: 295, baseType: !1240, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1237, file: !1089, line: 296, baseType: !1240, size: 64, offset: 576)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1237, file: !1089, line: 297, baseType: !1240, size: 64, offset: 640)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1237, file: !1089, line: 298, baseType: !1240, size: 64, offset: 704)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1237, file: !1089, line: 299, baseType: !1240, size: 64, offset: 768)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1237, file: !1089, line: 300, baseType: !1240, size: 64, offset: 832)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1237, file: !1089, line: 301, baseType: !1240, size: 64, offset: 896)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1237, file: !1089, line: 302, baseType: !1240, size: 64, offset: 960)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1237, file: !1089, line: 303, baseType: !1240, size: 64, offset: 1024)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1237, file: !1089, line: 304, baseType: !1240, size: 64, offset: 1088)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1237, file: !1089, line: 305, baseType: !1240, size: 64, offset: 1152)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1237, file: !1089, line: 306, baseType: !1240, size: 64, offset: 1216)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1237, file: !1089, line: 307, baseType: !1240, size: 64, offset: 1280)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1237, file: !1089, line: 308, baseType: !1240, size: 64, offset: 1344)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1237, file: !1089, line: 309, baseType: !1240, size: 64, offset: 1408)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1176, file: !1077, line: 714, baseType: !1161, size: 64, offset: 768)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1176, file: !1077, line: 715, baseType: !1156, size: 64, offset: 832)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1176, file: !1077, line: 717, baseType: !186, size: 64, offset: 896)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1176, file: !1077, line: 719, baseType: !186, size: 64, offset: 960)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1176, file: !1077, line: 721, baseType: !373, size: 256, offset: 1024)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1176, file: !1077, line: 725, baseType: !1271, size: 448, offset: 1280)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !1077, line: 517, size: 448, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1271, file: !1077, line: 518, baseType: !29, size: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1271, file: !1077, line: 519, baseType: !29, size: 128, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1271, file: !1077, line: 520, baseType: !29, size: 128, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1271, file: !1077, line: 521, baseType: !1076, size: 32, offset: 384)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1176, file: !1077, line: 726, baseType: !1278, size: 2496, offset: 1728)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !1089, line: 663, size: 2496, elements: !1279)
!1279 = !{!1280, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1328, !1329, !1330, !1331, !1332, !1333, !1402, !1403, !1404, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1442, !1446}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1278, file: !1089, line: 664, baseType: !1281, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !1089, line: 60, baseType: !1282)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !1089, line: 58, size: 32, elements: !1283)
!1283 = !{!1284}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1282, file: !1089, line: 59, baseType: !67, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1278, file: !1089, line: 665, baseType: !253, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1278, file: !1089, line: 666, baseType: !253, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1278, file: !1089, line: 667, baseType: !473, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1278, file: !1089, line: 668, baseType: !473, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1278, file: !1089, line: 669, baseType: !473, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1278, file: !1089, line: 670, baseType: !473, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1278, file: !1089, line: 671, baseType: !473, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1278, file: !1089, line: 672, baseType: !473, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1278, file: !1089, line: 673, baseType: !473, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1278, file: !1089, line: 674, baseType: !473, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1278, file: !1089, line: 675, baseType: !960, size: 32, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1278, file: !1089, line: 676, baseType: !43, size: 32, offset: 96)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1278, file: !1089, line: 678, baseType: !29, size: 128, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1278, file: !1089, line: 679, baseType: !1003, size: 256, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1278, file: !1089, line: 680, baseType: !1300, size: 64, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1302, line: 43, size: 1536, elements: !1303)
!1302 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1311, !1312, !1313, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1301, file: !1302, line: 44, baseType: !26, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1301, file: !1302, line: 45, baseType: !67, size: 32, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1301, file: !1302, line: 46, baseType: !29, size: 128, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1301, file: !1302, line: 47, baseType: !43, size: 32, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1301, file: !1302, line: 48, baseType: !1309, size: 64, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !1089, line: 629, flags: DIFlagFwdDecl)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1301, file: !1302, line: 49, baseType: !943, size: 320, offset: 384)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1301, file: !1302, line: 50, baseType: !164, size: 64, offset: 704)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1301, file: !1302, line: 51, baseType: !1314, size: 64, offset: 768)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1315, line: 29, baseType: !291)
!1315 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1301, file: !1302, line: 52, baseType: !1314, size: 64, offset: 832)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1301, file: !1302, line: 53, baseType: !1314, size: 64, offset: 896)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1301, file: !1302, line: 54, baseType: !1314, size: 64, offset: 960)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1301, file: !1302, line: 55, baseType: !1314, size: 64, offset: 1024)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1301, file: !1302, line: 56, baseType: !164, size: 64, offset: 1088)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1301, file: !1302, line: 57, baseType: !164, size: 64, offset: 1152)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1301, file: !1302, line: 58, baseType: !164, size: 64, offset: 1216)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1301, file: !1302, line: 59, baseType: !164, size: 64, offset: 1280)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1301, file: !1302, line: 60, baseType: !164, size: 64, offset: 1344)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1301, file: !1302, line: 61, baseType: !1175, size: 64, offset: 1408)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1301, file: !1302, line: 62, baseType: !473, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1301, file: !1302, line: 63, baseType: !473, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1278, file: !1089, line: 681, baseType: !473, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1278, file: !1089, line: 682, baseType: !473, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1278, file: !1089, line: 683, baseType: !473, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1278, file: !1089, line: 684, baseType: !253, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1278, file: !1089, line: 685, baseType: !253, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1278, file: !1089, line: 690, baseType: !1334, size: 512, offset: 640)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !1084, line: 118, size: 512, elements: !1335)
!1335 = !{!1336, !1342, !1343, !1348, !1398, !1399, !1400, !1401}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1334, file: !1084, line: 119, baseType: !1337, size: 256)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1338, line: 9, size: 256, elements: !1339)
!1338 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1337, file: !1338, line: 10, baseType: !479, size: 192, align: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1337, file: !1338, line: 11, baseType: !1314, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1334, file: !1084, line: 120, baseType: !1314, size: 64, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1334, file: !1084, line: 121, baseType: !1344, size: 64, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!1083, !1347}
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1334, file: !1084, line: 122, baseType: !1349, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !1084, line: 159, size: 512, align: 512, elements: !1351)
!1351 = !{!1352, !1375, !1376, !1379, !1384, !1385, !1393, !1397}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1350, file: !1084, line: 160, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !1084, line: 215, size: 4608, align: 512, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1354, file: !1084, line: 216, baseType: !307, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1354, file: !1084, line: 217, baseType: !253, size: 32, offset: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1354, file: !1084, line: 218, baseType: !253, size: 32, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1354, file: !1084, line: 219, baseType: !253, size: 32, offset: 96)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1354, file: !1084, line: 220, baseType: !253, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1354, file: !1084, line: 221, baseType: !253, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1354, file: !1084, line: 222, baseType: !253, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1354, file: !1084, line: 223, baseType: !253, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1354, file: !1084, line: 224, baseType: !253, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1354, file: !1084, line: 226, baseType: !253, size: 32, offset: 160)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1354, file: !1084, line: 227, baseType: !84, size: 16, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1354, file: !1084, line: 228, baseType: !84, size: 16, offset: 208)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1354, file: !1084, line: 229, baseType: !253, size: 32, offset: 224)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1354, file: !1084, line: 235, baseType: !1314, size: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1354, file: !1084, line: 236, baseType: !1347, size: 64, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1354, file: !1084, line: 237, baseType: !1314, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1354, file: !1084, line: 238, baseType: !1347, size: 64, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1354, file: !1084, line: 239, baseType: !1374, size: 4096, align: 512, offset: 512)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1350, size: 4096, align: 512, elements: !1140)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1350, file: !1084, line: 161, baseType: !253, size: 32, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1350, file: !1084, line: 162, baseType: !1377, size: 32, offset: 96)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !30, line: 32, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !148, line: 96, baseType: !67)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1350, file: !1084, line: 163, baseType: !1380, size: 32, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !322, line: 274, baseType: !1381)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !322, line: 274, size: 32, elements: !1382)
!1382 = !{!1383}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1381, file: !322, line: 274, baseType: !321, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1350, file: !1084, line: 164, baseType: !1347, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1350, file: !1084, line: 165, baseType: !1386, size: 128, offset: 256)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1338, line: 14, size: 128, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1386, file: !1338, line: 15, baseType: !1389, size: 128)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !480, line: 26, size: 128, elements: !1390)
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1389, file: !480, line: 27, baseType: !588, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1389, file: !480, line: 28, baseType: !484, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1350, file: !1084, line: 166, baseType: !1394, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!1314}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1350, file: !1084, line: 167, baseType: !1314, size: 64, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1334, file: !1084, line: 123, baseType: !72, size: 8, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1334, file: !1084, line: 124, baseType: !72, size: 8, offset: 456)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1334, file: !1084, line: 125, baseType: !72, size: 8, offset: 464)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1334, file: !1084, line: 126, baseType: !72, size: 8, offset: 472)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1278, file: !1089, line: 691, baseType: !279, size: 64, offset: 1152)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1278, file: !1089, line: 692, baseType: !438, size: 256, offset: 1216)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1278, file: !1089, line: 693, baseType: !1405, size: 192, offset: 1472)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1406, line: 41, baseType: !1407)
!1406 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1406, line: 37, size: 192, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1407, file: !1406, line: 38, baseType: !43, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1407, file: !1406, line: 39, baseType: !29, size: 128, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1278, file: !1089, line: 694, baseType: !1309, size: 64, offset: 1664)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1278, file: !1089, line: 695, baseType: !63, size: 32, offset: 1728)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1278, file: !1089, line: 696, baseType: !63, size: 32, offset: 1760)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1278, file: !1089, line: 697, baseType: !253, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1278, file: !1089, line: 698, baseType: !253, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1278, file: !1089, line: 699, baseType: !253, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1278, file: !1089, line: 700, baseType: !253, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1278, file: !1089, line: 701, baseType: !253, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1278, file: !1089, line: 702, baseType: !253, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1278, file: !1089, line: 703, baseType: !473, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1278, file: !1089, line: 704, baseType: !253, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1278, file: !1089, line: 705, baseType: !253, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1278, file: !1089, line: 706, baseType: !253, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1278, file: !1089, line: 707, baseType: !253, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1278, file: !1089, line: 708, baseType: !253, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1278, file: !1089, line: 709, baseType: !253, size: 32, offset: 1824)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1278, file: !1089, line: 710, baseType: !1088, size: 32, offset: 1856)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1278, file: !1089, line: 711, baseType: !1096, size: 32, offset: 1888)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1278, file: !1089, line: 712, baseType: !1096, size: 32, offset: 1920)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1278, file: !1089, line: 713, baseType: !67, size: 32, offset: 1952)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1278, file: !1089, line: 714, baseType: !67, size: 32, offset: 1984)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1278, file: !1089, line: 715, baseType: !279, size: 64, offset: 2048)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1278, file: !1089, line: 716, baseType: !279, size: 64, offset: 2112)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1278, file: !1089, line: 717, baseType: !279, size: 64, offset: 2176)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1278, file: !1089, line: 718, baseType: !279, size: 64, offset: 2240)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1278, file: !1089, line: 720, baseType: !1437, size: 64, offset: 2304)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !1089, line: 632, size: 64, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1438, file: !1089, line: 633, baseType: !43, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1438, file: !1089, line: 634, baseType: !253, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1278, file: !1089, line: 721, baseType: !1443, size: 64, offset: 2368)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{null, !1175, !352}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1278, file: !1089, line: 722, baseType: !1447, size: 64, offset: 2432)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !1089, line: 722, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1176, file: !1077, line: 727, baseType: !1450, size: 64, offset: 4224)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !1089, line: 742, size: 1792, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1459, !1460, !1461}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1451, file: !1089, line: 743, baseType: !1237, size: 1472)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1451, file: !1089, line: 744, baseType: !1240, size: 64, offset: 1472)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1451, file: !1089, line: 745, baseType: !1456, size: 64, offset: 1536)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{null, !1175, !473}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1451, file: !1089, line: 746, baseType: !1240, size: 64, offset: 1600)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1451, file: !1089, line: 747, baseType: !1231, size: 64, offset: 1664)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1451, file: !1089, line: 748, baseType: !1231, size: 64, offset: 1728)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1176, file: !1077, line: 736, baseType: !1463, size: 128, offset: 4288)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !1077, line: 529, size: 128, elements: !1464)
!1464 = !{!1465, !1469}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1463, file: !1077, line: 531, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1468, line: 13, flags: DIFlagFwdDecl)
!1468 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1463, file: !1077, line: 532, baseType: !1470, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !1077, line: 49, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1176, file: !1077, line: 738, baseType: !1473, size: 64, offset: 4416)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1475)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !1077, line: 738, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1176, file: !1077, line: 740, baseType: !1477, size: 64, offset: 4480)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1176, file: !1077, line: 741, baseType: !279, size: 64, offset: 4544)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1176, file: !1077, line: 746, baseType: !279, size: 64, offset: 4608)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1176, file: !1077, line: 747, baseType: !1481, size: 64, offset: 4672)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !1077, line: 747, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1176, file: !1077, line: 749, baseType: !1485, size: 64, offset: 4736)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !1077, line: 428, size: 128, elements: !1487)
!1487 = !{!1488, !1489, !1490}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1486, file: !1077, line: 433, baseType: !253, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1486, file: !1077, line: 434, baseType: !253, size: 32, offset: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1486, file: !1077, line: 435, baseType: !164, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1176, file: !1077, line: 751, baseType: !29, size: 128, offset: 4800)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1176, file: !1077, line: 762, baseType: !1493, size: 64, offset: 4928)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !1077, line: 762, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1176, file: !1077, line: 770, baseType: !1496, offset: 4992)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1497, line: 5, elements: !251)
!1497 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1176, file: !1077, line: 772, baseType: !1499, size: 64, offset: 4992)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1501, line: 18, flags: DIFlagFwdDecl)
!1501 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1176, file: !1077, line: 773, baseType: !1503, size: 64, offset: 5056)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1164, line: 22, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1176, file: !1077, line: 776, baseType: !67, size: 32, offset: 5120)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1176, file: !1077, line: 778, baseType: !1507, size: 32, offset: 5152)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !30, line: 21, baseType: !1508)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !30, line: 18, baseType: !960)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1176, file: !1077, line: 779, baseType: !960, size: 32, offset: 5184)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1176, file: !1077, line: 781, baseType: !43, size: 32, offset: 5216)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1176, file: !1077, line: 782, baseType: !29, size: 128, offset: 5248)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1176, file: !1077, line: 784, baseType: !1513, size: 64, offset: 5376)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1515)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1516, line: 52, size: 768, elements: !1517)
!1516 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1526, !1530, !1531, !1532, !1533, !1537, !1541}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1515, file: !1516, line: 53, baseType: !26, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1515, file: !1516, line: 55, baseType: !166, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1515, file: !1516, line: 56, baseType: !166, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1515, file: !1516, line: 58, baseType: !1220, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1515, file: !1516, line: 59, baseType: !1523, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!114, !1223, !1229}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1515, file: !1516, line: 61, baseType: !1527, size: 64, offset: 320)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !1513}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1515, file: !1516, line: 62, baseType: !1231, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1515, file: !1516, line: 64, baseType: !1240, size: 64, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1515, file: !1516, line: 66, baseType: !513, size: 64, offset: 512)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1515, file: !1516, line: 67, baseType: !1534, size: 64, offset: 576)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!394, !1223}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1515, file: !1516, line: 69, baseType: !1538, size: 64, offset: 640)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !1223, !554, !561}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1515, file: !1516, line: 71, baseType: !1235, size: 64, offset: 704)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1176, file: !1077, line: 785, baseType: !166, size: 64, offset: 5440)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1176, file: !1077, line: 787, baseType: !1231, size: 64, offset: 5504)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1176, file: !1077, line: 788, baseType: !1545, size: 64, offset: 5568)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !1077, line: 46, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1176, file: !1077, line: 789, baseType: !1548, size: 64, offset: 5632)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !1077, line: 48, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1176, file: !1077, line: 791, baseType: !1551, size: 64, offset: 5696)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !1077, line: 597, size: 128, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1552, file: !1077, line: 598, baseType: !1103, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1552, file: !1077, line: 599, baseType: !1112, size: 32, offset: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1552, file: !1077, line: 600, baseType: !1117, size: 32, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1552, file: !1077, line: 601, baseType: !473, size: 8, offset: 96)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1552, file: !1077, line: 602, baseType: !473, size: 8, offset: 104)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1176, file: !1077, line: 793, baseType: !1122, size: 32, offset: 5760)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1176, file: !1077, line: 795, baseType: !473, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1176, file: !1077, line: 796, baseType: !473, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1176, file: !1077, line: 797, baseType: !473, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1176, file: !1077, line: 798, baseType: !473, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1176, file: !1077, line: 799, baseType: !473, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1163, file: !1164, line: 88, baseType: !1220, size: 64, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1163, file: !1164, line: 89, baseType: !1240, size: 64, offset: 448)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1163, file: !1164, line: 90, baseType: !1231, size: 64, offset: 512)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1163, file: !1164, line: 91, baseType: !1231, size: 64, offset: 576)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1163, file: !1164, line: 92, baseType: !1231, size: 64, offset: 640)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1163, file: !1164, line: 94, baseType: !1240, size: 64, offset: 704)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1163, file: !1164, line: 95, baseType: !1240, size: 64, offset: 768)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1163, file: !1164, line: 97, baseType: !1573, size: 64, offset: 832)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!67, !1175, !1281}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1163, file: !1164, line: 98, baseType: !1240, size: 64, offset: 896)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1163, file: !1164, line: 100, baseType: !1240, size: 64, offset: 960)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1163, file: !1164, line: 102, baseType: !1240, size: 64, offset: 1024)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1163, file: !1164, line: 103, baseType: !1231, size: 64, offset: 1088)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1163, file: !1164, line: 105, baseType: !1235, size: 64, offset: 1152)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1163, file: !1164, line: 107, baseType: !1582, size: 64, offset: 1216)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1584)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1164, line: 107, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1163, file: !1164, line: 109, baseType: !473, size: 8, offset: 1280)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1157, file: !1129, line: 100, baseType: !698, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1157, file: !1129, line: 101, baseType: !26, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1157, file: !1129, line: 103, baseType: !473, size: 8, offset: 256)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1157, file: !1129, line: 104, baseType: !1128, size: 32, offset: 288)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1157, file: !1129, line: 106, baseType: !1591, size: 64, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1129, line: 106, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1157, file: !1129, line: 107, baseType: !1595, size: 64, offset: 384)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1129, line: 107, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1157, file: !1129, line: 109, baseType: !1240, size: 64, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1157, file: !1129, line: 110, baseType: !1231, size: 64, offset: 512)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1157, file: !1129, line: 111, baseType: !1240, size: 64, offset: 576)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1157, file: !1129, line: 112, baseType: !1231, size: 64, offset: 640)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1157, file: !1129, line: 113, baseType: !1573, size: 64, offset: 704)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1157, file: !1129, line: 114, baseType: !1240, size: 64, offset: 768)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1157, file: !1129, line: 115, baseType: !166, size: 64, offset: 832)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1157, file: !1129, line: 116, baseType: !166, size: 64, offset: 896)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1157, file: !1129, line: 118, baseType: !1235, size: 64, offset: 960)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1157, file: !1129, line: 119, baseType: !1231, size: 64, offset: 1024)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1157, file: !1129, line: 121, baseType: !1609, size: 64, offset: 1088)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !1183, line: 78, size: 1216, elements: !1611)
!1611 = !{!1612, !1613, !1614, !1615, !1616}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1610, file: !1183, line: 79, baseType: !22, size: 512)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !1610, file: !1183, line: 80, baseType: !1186, size: 320, align: 64, offset: 512)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !1610, file: !1183, line: 81, baseType: !1196, size: 256, offset: 832)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1610, file: !1183, line: 82, baseType: !17, size: 64, offset: 1088)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1610, file: !1183, line: 83, baseType: !1156, size: 64, offset: 1152)
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1627, !1631, !1632, !1633}
!1618 = !DILocalVariable(name: "mod", arg: 1, scope: !1153, file: !2, line: 33, type: !698)
!1619 = !DILocalVariable(name: "drv", arg: 2, scope: !1153, file: !2, line: 33, type: !1156)
!1620 = !DILocalVariable(name: "driver_name", scope: !1153, file: !2, line: 35, type: !114)
!1621 = !DILocalVariable(name: "mk", scope: !1153, file: !2, line: 36, type: !17)
!1622 = !DILocalVariable(name: "ret", scope: !1153, file: !2, line: 37, type: !67)
!1623 = !DILocalVariable(name: "mkobj", scope: !1624, file: !2, line: 45, type: !36)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 44, column: 26)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 44, column: 11)
!1626 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 42, column: 6)
!1627 = !DILocalVariable(name: "__mptr", scope: !1628, file: !2, line: 50, type: !186)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !2, line: 50, column: 9)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !2, line: 49, column: 14)
!1630 = distinct !DILexicalBlock(scope: !1624, file: !2, line: 49, column: 7)
!1631 = !DILabel(scope: !1153, name: "out_remove_drivers_dir", file: !2, line: 85)
!1632 = !DILabel(scope: !1153, name: "out_free_driver_name", file: !2, line: 88)
!1633 = !DILabel(scope: !1153, name: "out_remove_kobj", file: !2, line: 91)
!1634 = !DILocation(line: 33, column: 38, scope: !1153)
!1635 = !DILocation(line: 33, column: 65, scope: !1153)
!1636 = !DILocation(line: 35, column: 2, scope: !1153)
!1637 = !DILocation(line: 35, column: 8, scope: !1153)
!1638 = !DILocation(line: 36, column: 2, scope: !1153)
!1639 = !DILocation(line: 36, column: 25, scope: !1153)
!1640 = !DILocation(line: 37, column: 2, scope: !1153)
!1641 = !DILocation(line: 37, column: 6, scope: !1153)
!1642 = !DILocation(line: 39, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 39, column: 6)
!1644 = !DILocation(line: 39, column: 6, scope: !1153)
!1645 = !DILocation(line: 40, column: 3, scope: !1643)
!1646 = !DILocation(line: 42, column: 6, scope: !1626)
!1647 = !DILocation(line: 42, column: 6, scope: !1153)
!1648 = !DILocation(line: 43, column: 9, scope: !1626)
!1649 = !DILocation(line: 43, column: 14, scope: !1626)
!1650 = !DILocation(line: 43, column: 6, scope: !1626)
!1651 = !DILocation(line: 43, column: 3, scope: !1626)
!1652 = !DILocation(line: 44, column: 11, scope: !1625)
!1653 = !DILocation(line: 44, column: 16, scope: !1625)
!1654 = !DILocation(line: 44, column: 11, scope: !1626)
!1655 = !DILocation(line: 45, column: 3, scope: !1624)
!1656 = !DILocation(line: 45, column: 19, scope: !1624)
!1657 = !DILocation(line: 48, column: 25, scope: !1624)
!1658 = !DILocation(line: 48, column: 38, scope: !1624)
!1659 = !DILocation(line: 48, column: 43, scope: !1624)
!1660 = !DILocation(line: 48, column: 11, scope: !1624)
!1661 = !DILocation(line: 48, column: 9, scope: !1624)
!1662 = !DILocation(line: 49, column: 7, scope: !1630)
!1663 = !DILocation(line: 49, column: 7, scope: !1624)
!1664 = !DILocation(line: 50, column: 9, scope: !1628)
!1665 = !DILocation(line: 50, column: 9, scope: !1629)
!1666 = !DILocation(line: 50, column: 7, scope: !1629)
!1667 = !DILocation(line: 52, column: 20, scope: !1629)
!1668 = !DILocation(line: 52, column: 4, scope: !1629)
!1669 = !DILocation(line: 52, column: 9, scope: !1629)
!1670 = !DILocation(line: 52, column: 12, scope: !1629)
!1671 = !DILocation(line: 52, column: 18, scope: !1629)
!1672 = !DILocation(line: 54, column: 16, scope: !1629)
!1673 = !DILocation(line: 54, column: 4, scope: !1629)
!1674 = !DILocation(line: 55, column: 3, scope: !1629)
!1675 = !DILocation(line: 56, column: 2, scope: !1625)
!1676 = !DILocation(line: 56, column: 2, scope: !1624)
!1677 = !DILocation(line: 58, column: 7, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 58, column: 6)
!1679 = !DILocation(line: 58, column: 6, scope: !1153)
!1680 = !DILocation(line: 59, column: 3, scope: !1678)
!1681 = !DILocation(line: 61, column: 27, scope: !1153)
!1682 = !DILocation(line: 61, column: 32, scope: !1153)
!1683 = !DILocation(line: 61, column: 35, scope: !1153)
!1684 = !DILocation(line: 61, column: 42, scope: !1153)
!1685 = !DILocation(line: 61, column: 46, scope: !1153)
!1686 = !DILocation(line: 61, column: 8, scope: !1153)
!1687 = !DILocation(line: 61, column: 6, scope: !1153)
!1688 = !DILocation(line: 62, column: 6, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 62, column: 6)
!1690 = !DILocation(line: 62, column: 6, scope: !1153)
!1691 = !DILocation(line: 63, column: 10, scope: !1689)
!1692 = !DILocation(line: 63, column: 3, scope: !1689)
!1693 = !DILocation(line: 65, column: 33, scope: !1153)
!1694 = !DILocation(line: 65, column: 16, scope: !1153)
!1695 = !DILocation(line: 65, column: 14, scope: !1153)
!1696 = !DILocation(line: 66, column: 7, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 66, column: 6)
!1698 = !DILocation(line: 66, column: 6, scope: !1153)
!1699 = !DILocation(line: 67, column: 7, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1697, file: !2, line: 66, column: 20)
!1701 = !DILocation(line: 68, column: 3, scope: !1700)
!1702 = !DILocation(line: 71, column: 28, scope: !1153)
!1703 = !DILocation(line: 71, column: 2, scope: !1153)
!1704 = !DILocation(line: 72, column: 7, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 72, column: 6)
!1706 = !DILocation(line: 72, column: 11, scope: !1705)
!1707 = !DILocation(line: 72, column: 6, scope: !1153)
!1708 = !DILocation(line: 73, column: 7, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1705, file: !2, line: 72, column: 24)
!1710 = !DILocation(line: 74, column: 3, scope: !1709)
!1711 = !DILocation(line: 77, column: 26, scope: !1153)
!1712 = !DILocation(line: 77, column: 30, scope: !1153)
!1713 = !DILocation(line: 77, column: 44, scope: !1153)
!1714 = !DILocation(line: 77, column: 49, scope: !1153)
!1715 = !DILocation(line: 77, column: 52, scope: !1153)
!1716 = !DILocation(line: 77, column: 58, scope: !1153)
!1717 = !DILocation(line: 77, column: 8, scope: !1153)
!1718 = !DILocation(line: 77, column: 6, scope: !1153)
!1719 = !DILocation(line: 78, column: 6, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 78, column: 6)
!1721 = !DILocation(line: 78, column: 6, scope: !1153)
!1722 = !DILocation(line: 79, column: 3, scope: !1720)
!1723 = !DILocation(line: 81, column: 8, scope: !1153)
!1724 = !DILocation(line: 81, column: 2, scope: !1153)
!1725 = !DILocation(line: 83, column: 2, scope: !1153)
!1726 = !DILocation(line: 85, column: 1, scope: !1153)
!1727 = !DILocation(line: 86, column: 20, scope: !1153)
!1728 = !DILocation(line: 86, column: 24, scope: !1153)
!1729 = !DILocation(line: 86, column: 37, scope: !1153)
!1730 = !DILocation(line: 86, column: 2, scope: !1153)
!1731 = !DILocation(line: 88, column: 1, scope: !1153)
!1732 = !DILocation(line: 89, column: 8, scope: !1153)
!1733 = !DILocation(line: 89, column: 2, scope: !1153)
!1734 = !DILocation(line: 91, column: 1, scope: !1153)
!1735 = !DILocation(line: 92, column: 21, scope: !1153)
!1736 = !DILocation(line: 92, column: 26, scope: !1153)
!1737 = !DILocation(line: 92, column: 29, scope: !1153)
!1738 = !DILocation(line: 92, column: 2, scope: !1153)
!1739 = !DILocation(line: 93, column: 9, scope: !1153)
!1740 = !DILocation(line: 93, column: 2, scope: !1153)
!1741 = !DILocation(line: 94, column: 1, scope: !1153)
!1742 = !DISubprogram(name: "kset_find_obj", scope: !23, file: !23, line: 201, type: !1743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!36, !38, !26}
!1745 = !DISubprogram(name: "kobject_put", scope: !23, file: !23, line: 110, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1746 = !DISubprogram(name: "sysfs_create_link", scope: !140, file: !140, line: 293, type: !1747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!67, !36, !36, !26}
!1749 = distinct !DISubprogram(name: "make_driver_name", scope: !2, file: !2, line: 12, type: !1750, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !1752)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!114, !1156}
!1752 = !{!1753, !1754}
!1753 = !DILocalVariable(name: "drv", arg: 1, scope: !1749, file: !2, line: 12, type: !1156)
!1754 = !DILocalVariable(name: "driver_name", scope: !1749, file: !2, line: 14, type: !114)
!1755 = !DILocation(line: 12, column: 53, scope: !1749)
!1756 = !DILocation(line: 14, column: 2, scope: !1749)
!1757 = !DILocation(line: 14, column: 8, scope: !1749)
!1758 = !DILocation(line: 16, column: 47, scope: !1749)
!1759 = !DILocation(line: 16, column: 52, scope: !1749)
!1760 = !DILocation(line: 16, column: 57, scope: !1749)
!1761 = !DILocation(line: 16, column: 63, scope: !1749)
!1762 = !DILocation(line: 16, column: 68, scope: !1749)
!1763 = !DILocation(line: 16, column: 16, scope: !1749)
!1764 = !DILocation(line: 16, column: 14, scope: !1749)
!1765 = !DILocation(line: 17, column: 7, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 17, column: 6)
!1767 = !DILocation(line: 17, column: 6, scope: !1749)
!1768 = !DILocation(line: 18, column: 3, scope: !1766)
!1769 = !DILocation(line: 20, column: 9, scope: !1749)
!1770 = !DILocation(line: 20, column: 2, scope: !1749)
!1771 = !DILocation(line: 21, column: 1, scope: !1749)
!1772 = !DILocation(line: 23, column: 62, scope: !14)
!1773 = !DILocation(line: 27, column: 2, scope: !14)
!1774 = !DILocation(line: 28, column: 6, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !14, file: !2, line: 28, column: 6)
!1776 = !DILocation(line: 28, column: 9, scope: !1775)
!1777 = !DILocation(line: 28, column: 13, scope: !1775)
!1778 = !DILocation(line: 28, column: 17, scope: !1775)
!1779 = !DILocation(line: 28, column: 6, scope: !14)
!1780 = !DILocation(line: 29, column: 56, scope: !1775)
!1781 = !DILocation(line: 29, column: 60, scope: !1775)
!1782 = !DILocation(line: 29, column: 21, scope: !1775)
!1783 = !DILocation(line: 29, column: 3, scope: !1775)
!1784 = !DILocation(line: 29, column: 7, scope: !1775)
!1785 = !DILocation(line: 29, column: 19, scope: !1775)
!1786 = !DILocation(line: 30, column: 2, scope: !14)
!1787 = !DILocation(line: 31, column: 1, scope: !14)
!1788 = !DISubprogram(name: "kfree", scope: !1789, file: !1789, line: 227, type: !1790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1789 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1790 = !DISubroutineType(types: !1791)
!1791 = !{null, !394}
!1792 = !DISubprogram(name: "sysfs_remove_link", scope: !140, file: !140, line: 298, type: !1793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{null, !36, !26}
!1795 = distinct !DISubprogram(name: "module_remove_driver", scope: !2, file: !2, line: 96, type: !1796, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !1798)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{null, !1156}
!1798 = !{!1799, !1800, !1801}
!1799 = !DILocalVariable(name: "drv", arg: 1, scope: !1795, file: !2, line: 96, type: !1156)
!1800 = !DILocalVariable(name: "mk", scope: !1795, file: !2, line: 98, type: !17)
!1801 = !DILocalVariable(name: "driver_name", scope: !1795, file: !2, line: 99, type: !114)
!1802 = !DILocation(line: 96, column: 49, scope: !1795)
!1803 = !DILocation(line: 98, column: 2, scope: !1795)
!1804 = !DILocation(line: 98, column: 25, scope: !1795)
!1805 = !DILocation(line: 99, column: 2, scope: !1795)
!1806 = !DILocation(line: 99, column: 8, scope: !1795)
!1807 = !DILocation(line: 101, column: 7, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1795, file: !2, line: 101, column: 6)
!1809 = !DILocation(line: 101, column: 6, scope: !1795)
!1810 = !DILocation(line: 102, column: 3, scope: !1808)
!1811 = !DILocation(line: 104, column: 21, scope: !1795)
!1812 = !DILocation(line: 104, column: 26, scope: !1795)
!1813 = !DILocation(line: 104, column: 29, scope: !1795)
!1814 = !DILocation(line: 104, column: 2, scope: !1795)
!1815 = !DILocation(line: 106, column: 6, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1795, file: !2, line: 106, column: 6)
!1817 = !DILocation(line: 106, column: 11, scope: !1816)
!1818 = !DILocation(line: 106, column: 6, scope: !1795)
!1819 = !DILocation(line: 107, column: 9, scope: !1816)
!1820 = !DILocation(line: 107, column: 14, scope: !1816)
!1821 = !DILocation(line: 107, column: 21, scope: !1816)
!1822 = !DILocation(line: 107, column: 6, scope: !1816)
!1823 = !DILocation(line: 107, column: 3, scope: !1816)
!1824 = !DILocation(line: 108, column: 11, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 108, column: 11)
!1826 = !DILocation(line: 108, column: 16, scope: !1825)
!1827 = !DILocation(line: 108, column: 19, scope: !1825)
!1828 = !DILocation(line: 108, column: 11, scope: !1816)
!1829 = !DILocation(line: 109, column: 8, scope: !1825)
!1830 = !DILocation(line: 109, column: 13, scope: !1825)
!1831 = !DILocation(line: 109, column: 16, scope: !1825)
!1832 = !DILocation(line: 109, column: 6, scope: !1825)
!1833 = !DILocation(line: 109, column: 3, scope: !1825)
!1834 = !DILocation(line: 110, column: 6, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1795, file: !2, line: 110, column: 6)
!1836 = !DILocation(line: 110, column: 9, scope: !1835)
!1837 = !DILocation(line: 110, column: 12, scope: !1835)
!1838 = !DILocation(line: 110, column: 16, scope: !1835)
!1839 = !DILocation(line: 110, column: 6, scope: !1795)
!1840 = !DILocation(line: 111, column: 34, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 110, column: 29)
!1842 = !DILocation(line: 111, column: 17, scope: !1841)
!1843 = !DILocation(line: 111, column: 15, scope: !1841)
!1844 = !DILocation(line: 112, column: 7, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1841, file: !2, line: 112, column: 7)
!1846 = !DILocation(line: 112, column: 7, scope: !1841)
!1847 = !DILocation(line: 113, column: 22, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1845, file: !2, line: 112, column: 20)
!1849 = !DILocation(line: 113, column: 26, scope: !1848)
!1850 = !DILocation(line: 113, column: 39, scope: !1848)
!1851 = !DILocation(line: 113, column: 4, scope: !1848)
!1852 = !DILocation(line: 114, column: 10, scope: !1848)
!1853 = !DILocation(line: 114, column: 4, scope: !1848)
!1854 = !DILocation(line: 115, column: 3, scope: !1848)
!1855 = !DILocation(line: 116, column: 2, scope: !1841)
!1856 = !DILocation(line: 117, column: 1, scope: !1795)
!1857 = !DISubprogram(name: "kasprintf", scope: !1858, file: !1858, line: 16, type: !1859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1858 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!114, !1135, !26, null}
!1861 = !DISubprogram(name: "mutex_lock", scope: !374, file: !374, line: 227, type: !1862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!1865 = !DISubprogram(name: "kobject_create_and_add", scope: !23, file: !23, line: 103, type: !1866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!36, !26, !36}
!1868 = !DISubprogram(name: "mutex_unlock", scope: !374, file: !374, line: 246, type: !1862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
