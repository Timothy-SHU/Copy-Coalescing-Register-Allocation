; ModuleID = 'kernel/regset.c'
source_filename = "kernel/regset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_regset_get: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad regset_get ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_regset_get_alloc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad regset_get_alloc ; .previous"

%struct.membuf = type { ptr, i64 }
%struct.user_regset = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.user_regset_view = type { ptr, ptr, i32, i32, i16, i8 }

@__UNIQUE_ID___addressable_regset_get202 = internal global ptr @regset_get, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_regset_get_alloc203 = internal global ptr @regset_get_alloc, section ".discard.addressable", align 8, !dbg !46
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !48
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !54
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_regset_get202, ptr @__UNIQUE_ID___addressable_regset_get_alloc203], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @regset_get(ptr noundef %target, ptr noundef %regset, i32 noundef %size, ptr noundef %data) #0 align 16 !dbg !69 {
entry:
  %target.addr = alloca ptr, align 8
  %regset.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !1579, metadata !DIExpression()), !dbg !1583
  store ptr %regset, ptr %regset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regset.addr, metadata !1580, metadata !DIExpression()), !dbg !1584
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1581, metadata !DIExpression()), !dbg !1585
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1582, metadata !DIExpression()), !dbg !1586
  %0 = load ptr, ptr %target.addr, align 8, !dbg !1587
  %1 = load ptr, ptr %regset.addr, align 8, !dbg !1588
  %2 = load i32, ptr %size.addr, align 4, !dbg !1589
  %call = call i32 @__regset_get(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %data.addr) #15, !dbg !1590
  ret i32 %call, !dbg !1591
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__regset_get(ptr noundef %target, ptr noundef %regset, i32 noundef %size, ptr noundef %data) #0 align 16 !dbg !1592 {
entry:
  %retval = alloca i32, align 4
  %target.addr = alloca ptr, align 8
  %regset.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %to_free = alloca ptr, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.membuf, align 8
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !1597, metadata !DIExpression()), !dbg !1604
  store ptr %regset, ptr %regset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regset.addr, metadata !1598, metadata !DIExpression()), !dbg !1605
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1599, metadata !DIExpression()), !dbg !1606
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1600, metadata !DIExpression()), !dbg !1607
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !1608
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1601, metadata !DIExpression()), !dbg !1609
  %0 = load ptr, ptr %data.addr, align 8, !dbg !1610
  %1 = load ptr, ptr %0, align 8, !dbg !1611
  store ptr %1, ptr %p, align 8, !dbg !1609
  call void @llvm.lifetime.start.p0(i64 8, ptr %to_free) #16, !dbg !1608
  call void @llvm.dbg.declare(metadata ptr %to_free, metadata !1602, metadata !DIExpression()), !dbg !1612
  store ptr null, ptr %to_free, align 8, !dbg !1612
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #16, !dbg !1613
  call void @llvm.dbg.declare(metadata ptr %res, metadata !1603, metadata !DIExpression()), !dbg !1614
  %2 = load ptr, ptr %regset.addr, align 8, !dbg !1615
  %regset_get = getelementptr inbounds %struct.user_regset, ptr %2, i32 0, i32 0, !dbg !1617
  %3 = load ptr, ptr %regset_get, align 8, !dbg !1617
  %tobool = icmp ne ptr %3, null, !dbg !1615
  br i1 %tobool, label %if.end, label %if.then, !dbg !1618

if.then:                                          ; preds = %entry
  store i32 -95, ptr %retval, align 4, !dbg !1619
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1619

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %size.addr, align 4, !dbg !1620
  %5 = load ptr, ptr %regset.addr, align 8, !dbg !1622
  %n = getelementptr inbounds %struct.user_regset, ptr %5, i32 0, i32 4, !dbg !1623
  %6 = load i32, ptr %n, align 8, !dbg !1623
  %7 = load ptr, ptr %regset.addr, align 8, !dbg !1624
  %size1 = getelementptr inbounds %struct.user_regset, ptr %7, i32 0, i32 5, !dbg !1625
  %8 = load i32, ptr %size1, align 4, !dbg !1625
  %mul = mul i32 %6, %8, !dbg !1626
  %cmp = icmp ugt i32 %4, %mul, !dbg !1627
  br i1 %cmp, label %if.then2, label %if.end6, !dbg !1628

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %regset.addr, align 8, !dbg !1629
  %n3 = getelementptr inbounds %struct.user_regset, ptr %9, i32 0, i32 4, !dbg !1630
  %10 = load i32, ptr %n3, align 8, !dbg !1630
  %11 = load ptr, ptr %regset.addr, align 8, !dbg !1631
  %size4 = getelementptr inbounds %struct.user_regset, ptr %11, i32 0, i32 5, !dbg !1632
  %12 = load i32, ptr %size4, align 4, !dbg !1632
  %mul5 = mul i32 %10, %12, !dbg !1633
  store i32 %mul5, ptr %size.addr, align 4, !dbg !1634
  br label %if.end6, !dbg !1635

if.end6:                                          ; preds = %if.then2, %if.end
  %13 = load ptr, ptr %p, align 8, !dbg !1636
  %tobool7 = icmp ne ptr %13, null, !dbg !1636
  br i1 %tobool7, label %if.end12, label %if.then8, !dbg !1638

if.then8:                                         ; preds = %if.end6
  %14 = load i32, ptr %size.addr, align 4, !dbg !1639
  %conv = zext i32 %14 to i64, !dbg !1639
  %call = call noalias ptr @kzalloc(i64 noundef %conv, i32 noundef 3264) #17, !dbg !1641
  store ptr %call, ptr %p, align 8, !dbg !1642
  store ptr %call, ptr %to_free, align 8, !dbg !1643
  %15 = load ptr, ptr %p, align 8, !dbg !1644
  %tobool9 = icmp ne ptr %15, null, !dbg !1644
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !1646

if.then10:                                        ; preds = %if.then8
  store i32 -12, ptr %retval, align 4, !dbg !1647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1647

if.end11:                                         ; preds = %if.then8
  br label %if.end12, !dbg !1648

if.end12:                                         ; preds = %if.end11, %if.end6
  %16 = load ptr, ptr %regset.addr, align 8, !dbg !1649
  %regset_get13 = getelementptr inbounds %struct.user_regset, ptr %16, i32 0, i32 0, !dbg !1650
  %17 = load ptr, ptr %regset_get13, align 8, !dbg !1650
  %18 = load ptr, ptr %target.addr, align 8, !dbg !1651
  %19 = load ptr, ptr %regset.addr, align 8, !dbg !1652
  %p14 = getelementptr inbounds %struct.membuf, ptr %.compoundliteral, i32 0, i32 0, !dbg !1653
  %20 = load ptr, ptr %p, align 8, !dbg !1654
  store ptr %20, ptr %p14, align 8, !dbg !1653
  %left = getelementptr inbounds %struct.membuf, ptr %.compoundliteral, i32 0, i32 1, !dbg !1653
  %21 = load i32, ptr %size.addr, align 4, !dbg !1655
  %conv15 = zext i32 %21 to i64, !dbg !1655
  store i64 %conv15, ptr %left, align 8, !dbg !1653
  %22 = getelementptr inbounds { ptr, i64 }, ptr %.compoundliteral, i32 0, i32 0, !dbg !1649
  %23 = load ptr, ptr %22, align 8, !dbg !1649
  %24 = getelementptr inbounds { ptr, i64 }, ptr %.compoundliteral, i32 0, i32 1, !dbg !1649
  %25 = load i64, ptr %24, align 8, !dbg !1649
  %call16 = call i32 %17(ptr noundef %18, ptr noundef %19, ptr %23, i64 %25) #15, !dbg !1649
  store i32 %call16, ptr %res, align 4, !dbg !1656
  %26 = load i32, ptr %res, align 4, !dbg !1657
  %cmp17 = icmp slt i32 %26, 0, !dbg !1659
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !1660

if.then19:                                        ; preds = %if.end12
  %27 = load ptr, ptr %to_free, align 8, !dbg !1661
  call void @kfree(ptr noundef %27) #15, !dbg !1663
  %28 = load i32, ptr %res, align 4, !dbg !1664
  store i32 %28, ptr %retval, align 4, !dbg !1665
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1665

if.end20:                                         ; preds = %if.end12
  %29 = load ptr, ptr %p, align 8, !dbg !1666
  %30 = load ptr, ptr %data.addr, align 8, !dbg !1667
  store ptr %29, ptr %30, align 8, !dbg !1668
  %31 = load i32, ptr %size.addr, align 4, !dbg !1669
  %32 = load i32, ptr %res, align 4, !dbg !1670
  %sub = sub i32 %31, %32, !dbg !1671
  store i32 %sub, ptr %retval, align 4, !dbg !1672
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1672

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #16, !dbg !1673
  call void @llvm.lifetime.end.p0(i64 8, ptr %to_free) #16, !dbg !1673
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !1673
  %33 = load i32, ptr %retval, align 4, !dbg !1673
  ret i32 %33, !dbg !1673
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @regset_get_alloc(ptr noundef %target, ptr noundef %regset, i32 noundef %size, ptr noundef %data) #0 align 16 !dbg !1674 {
entry:
  %target.addr = alloca ptr, align 8
  %regset.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !1676, metadata !DIExpression()), !dbg !1680
  store ptr %regset, ptr %regset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regset.addr, metadata !1677, metadata !DIExpression()), !dbg !1681
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1678, metadata !DIExpression()), !dbg !1682
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1679, metadata !DIExpression()), !dbg !1683
  %0 = load ptr, ptr %data.addr, align 8, !dbg !1684
  store ptr null, ptr %0, align 8, !dbg !1685
  %1 = load ptr, ptr %target.addr, align 8, !dbg !1686
  %2 = load ptr, ptr %regset.addr, align 8, !dbg !1687
  %3 = load i32, ptr %size.addr, align 4, !dbg !1688
  %4 = load ptr, ptr %data.addr, align 8, !dbg !1689
  %call = call i32 @__regset_get(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #15, !dbg !1690
  ret i32 %call, !dbg !1691
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @copy_regset_to_user(ptr noundef %target, ptr noundef %view, i32 noundef %setno, i32 noundef %offset, i32 noundef %size, ptr noundef %data) #0 align 16 !dbg !1692 {
entry:
  %target.addr = alloca ptr, align 8
  %view.addr = alloca ptr, align 8
  %setno.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %regset = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !1708, metadata !DIExpression()), !dbg !1717
  store ptr %view, ptr %view.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %view.addr, metadata !1709, metadata !DIExpression()), !dbg !1718
  store i32 %setno, ptr %setno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %setno.addr, metadata !1710, metadata !DIExpression()), !dbg !1719
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !1711, metadata !DIExpression()), !dbg !1720
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1712, metadata !DIExpression()), !dbg !1721
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1713, metadata !DIExpression()), !dbg !1722
  call void @llvm.lifetime.start.p0(i64 8, ptr %regset) #16, !dbg !1723
  call void @llvm.dbg.declare(metadata ptr %regset, metadata !1714, metadata !DIExpression()), !dbg !1724
  %0 = load ptr, ptr %view.addr, align 8, !dbg !1725
  %regsets = getelementptr inbounds %struct.user_regset_view, ptr %0, i32 0, i32 1, !dbg !1726
  %1 = load ptr, ptr %regsets, align 8, !dbg !1726
  %2 = load i32, ptr %setno.addr, align 4, !dbg !1727
  %idxprom = zext i32 %2 to i64, !dbg !1725
  %arrayidx = getelementptr %struct.user_regset, ptr %1, i64 %idxprom, !dbg !1725
  store ptr %arrayidx, ptr %regset, align 8, !dbg !1724
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #16, !dbg !1728
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !1715, metadata !DIExpression()), !dbg !1729
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !1730
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1716, metadata !DIExpression()), !dbg !1731
  %3 = load ptr, ptr %target.addr, align 8, !dbg !1732
  %4 = load ptr, ptr %regset, align 8, !dbg !1733
  %5 = load i32, ptr %size.addr, align 4, !dbg !1734
  %call = call i32 @regset_get_alloc(ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %buf) #15, !dbg !1735
  store i32 %call, ptr %ret, align 4, !dbg !1736
  %6 = load i32, ptr %ret, align 4, !dbg !1737
  %cmp = icmp sgt i32 %6, 0, !dbg !1739
  br i1 %cmp, label %if.then, label %if.end, !dbg !1740

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %data.addr, align 8, !dbg !1741
  %8 = load ptr, ptr %buf, align 8, !dbg !1742
  %9 = load i32, ptr %ret, align 4, !dbg !1743
  %conv = sext i32 %9 to i64, !dbg !1743
  %call1 = call i64 @copy_to_user(ptr noundef %7, ptr noundef %8, i64 noundef %conv) #15, !dbg !1744
  %tobool = icmp ne i64 %call1, 0, !dbg !1744
  %10 = zext i1 %tobool to i64, !dbg !1744
  %cond = select i1 %tobool, i32 -14, i32 0, !dbg !1744
  store i32 %cond, ptr %ret, align 4, !dbg !1745
  br label %if.end, !dbg !1746

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %buf, align 8, !dbg !1747
  call void @kfree(ptr noundef %11) #15, !dbg !1748
  %12 = load i32, ptr %ret, align 4, !dbg !1749
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !1750
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #16, !dbg !1750
  call void @llvm.lifetime.end.p0(i64 8, ptr %regset) #16, !dbg !1750
  ret i32 %12, !dbg !1751
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !1752 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !1757, metadata !DIExpression()), !dbg !1760
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !1758, metadata !DIExpression()), !dbg !1761
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1759, metadata !DIExpression()), !dbg !1762
  %0 = load ptr, ptr %from.addr, align 8, !dbg !1763
  %1 = load i64, ptr %n.addr, align 8, !dbg !1765
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #15, !dbg !1766
  br i1 %call, label %if.then, label %if.end, !dbg !1767

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !1768
  %3 = load ptr, ptr %from.addr, align 8, !dbg !1769
  %4 = load i64, ptr %n.addr, align 8, !dbg !1770
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #15, !dbg !1771
  store i64 %call1, ptr %n.addr, align 8, !dbg !1772
  br label %if.end, !dbg !1773

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !1774
  ret i64 %5, !dbg !1775
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1776 dso_local void @kfree(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1779 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1783, metadata !DIExpression()), !dbg !1785
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1784, metadata !DIExpression()), !dbg !1786
  %0 = load i64, ptr %size.addr, align 8, !dbg !1787
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1788
  %or = or i32 %1, 256, !dbg !1789
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !1790
  ret ptr %call, !dbg !1791
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !1792 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1794, metadata !DIExpression()), !dbg !1799
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1795, metadata !DIExpression()), !dbg !1800
  %0 = load i64, ptr %size.addr, align 8, !dbg !1801
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1802
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1803

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1804
  %tobool = icmp ne i64 %2, 0, !dbg !1804
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1805

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !1806
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1796, metadata !DIExpression()), !dbg !1807
  %3 = load i64, ptr %size.addr, align 8, !dbg !1808
  %cmp = icmp ugt i64 %3, 8192, !dbg !1810
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1811

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1812
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1813
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !1814
  store ptr %call, ptr %retval, align 8, !dbg !1815
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1815

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1816
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !1816
  store i32 %call2, ptr %index, align 4, !dbg !1817
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1818
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1819
  %9 = ptrtoint ptr %8 to i64, !dbg !1819
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !1820
  %idxprom = zext i32 %call3 to i64, !dbg !1821
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1821
  %10 = load i32, ptr %index, align 4, !dbg !1822
  %idxprom4 = zext i32 %10 to i64, !dbg !1821
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1821
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1821
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1823
  %13 = load i64, ptr %size.addr, align 8, !dbg !1824
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !1825
  store ptr %call6, ptr %retval, align 8, !dbg !1826
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1826

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !1827
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1828
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1829
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !1830
  store ptr %call8, ptr %retval, align 8, !dbg !1831
  br label %return, !dbg !1831

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1832
  ret ptr %16, !dbg !1832
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1833 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !1834 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1838, metadata !DIExpression()), !dbg !1840
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1839, metadata !DIExpression()), !dbg !1841
  %0 = load i64, ptr %size.addr, align 8, !dbg !1842
  %tobool = icmp ne i64 %0, 0, !dbg !1842
  br i1 %tobool, label %if.end, label %if.then, !dbg !1844

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1845
  br label %return, !dbg !1845

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1846
  %cmp = icmp ule i64 %1, 8, !dbg !1848
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1849

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1850
  br label %return, !dbg !1850

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1851
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1853
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1854

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1855
  %cmp4 = icmp ule i64 %3, 96, !dbg !1856
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1857

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1858
  br label %return, !dbg !1858

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1859
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1861
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1862

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1863
  %cmp9 = icmp ule i64 %5, 192, !dbg !1864
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1865

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1866
  br label %return, !dbg !1866

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1867
  %cmp12 = icmp ule i64 %6, 8, !dbg !1869
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1870

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1871
  br label %return, !dbg !1871

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1872
  %cmp15 = icmp ule i64 %7, 16, !dbg !1874
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1875

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1876
  br label %return, !dbg !1876

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1877
  %cmp18 = icmp ule i64 %8, 32, !dbg !1879
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1880

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1881
  br label %return, !dbg !1881

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1882
  %cmp21 = icmp ule i64 %9, 64, !dbg !1884
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1885

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1886
  br label %return, !dbg !1886

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1887
  %cmp24 = icmp ule i64 %10, 128, !dbg !1889
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1890

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1891
  br label %return, !dbg !1891

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1892
  %cmp27 = icmp ule i64 %11, 256, !dbg !1894
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1895

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1896
  br label %return, !dbg !1896

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1897
  %cmp30 = icmp ule i64 %12, 512, !dbg !1899
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1900

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1901
  br label %return, !dbg !1901

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1902
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1904
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1905

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1906
  br label %return, !dbg !1906

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1907
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1909
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1910

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1911
  br label %return, !dbg !1911

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1912
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1914
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1915

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1916
  br label %return, !dbg !1916

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1917
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1919
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1920

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1921
  br label %return, !dbg !1921

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1922
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1924
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1925

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1926
  br label %return, !dbg !1926

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1927
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1929
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1930

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1931
  br label %return, !dbg !1931

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1932
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1934
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1935

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1936
  br label %return, !dbg !1936

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1937
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1939
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1940

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1941
  br label %return, !dbg !1941

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1942
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1944
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1945

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1946
  br label %return, !dbg !1946

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1947
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1949
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1950

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1951
  br label %return, !dbg !1951

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1952
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1954
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1955

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1956
  br label %return, !dbg !1956

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1957
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1959
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1960

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1961
  br label %return, !dbg !1961

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1962, !range !1964, !noundef !461
  %tobool69 = trunc i8 %25 to i1, !dbg !1962
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1965

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1966

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #19, !dbg !1967, !srcloc !1970
  unreachable, !dbg !1967

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1971

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1972

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1973

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1975

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1973

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #16, !dbg !1977, !srcloc !1979
  br label %do.end75, !dbg !1977

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1973

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1980
  br label %return, !dbg !1980

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1981
  ret i32 %26, !dbg !1981
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1982 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !1987 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1991, metadata !DIExpression()), !dbg !1993
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1992, metadata !DIExpression()), !dbg !1994
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1995
  %and = and i32 %0, 17, !dbg !1995
  %cmp = icmp eq i32 %and, 0, !dbg !1995
  %lnot = xor i1 %cmp, true, !dbg !1995
  %lnot1 = xor i1 %lnot, true, !dbg !1995
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1995
  %conv = sext i32 %lnot.ext to i64, !dbg !1995
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1995
  %tobool = icmp ne i64 %expval, 0, !dbg !1995
  br i1 %tobool, label %if.then, label %if.end, !dbg !1997

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1998
  br label %return, !dbg !1998

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1999
  %and2 = and i32 %1, 1, !dbg !2001
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2001
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2002

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2003
  br label %return, !dbg !2003

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2004
  br label %return, !dbg !2004

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2006
  ret i32 %2, !dbg !2006
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2007 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2008 dso_local void @__compiletime_assert_117() #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #3 align 16 !dbg !2011 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2015, metadata !DIExpression()), !dbg !2025
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !2016, metadata !DIExpression()), !dbg !2026
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !2017, metadata !DIExpression()), !dbg !2027
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #16, !dbg !2028
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !2018, metadata !DIExpression()), !dbg !2029
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2030
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !2031
  %conv = trunc i64 %1 to i32, !dbg !2031
  store i32 %conv, ptr %sz, align 4, !dbg !2029
  %2 = load i32, ptr %sz, align 4, !dbg !2032
  %cmp = icmp sge i32 %2, 0, !dbg !2032
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2032

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !2032
  %conv2 = sext i32 %3 to i64, !dbg !2032
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !2032
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !2032
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !2034
  %lnot = xor i1 %5, true, !dbg !2032
  %lnot5 = xor i1 %lnot, true, !dbg !2032
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !2032
  %conv6 = sext i32 %lnot.ext to i64, !dbg !2032
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !2032
  %tobool = icmp ne i64 %expval, 0, !dbg !2032
  br i1 %tobool, label %if.then, label %if.end12, !dbg !2035

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !2036
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !2039
  br i1 %7, label %if.else, label %if.then7, !dbg !2040

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !2041
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !2042
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #15, !dbg !2043
  br label %if.end11, !dbg !2043

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !2044, !range !1964, !noundef !461
  %tobool8 = trunc i8 %10 to i1, !dbg !2044
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !2046

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #15, !dbg !2047, !srcloc !2048
  br label %if.end, !dbg !2047

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #15, !dbg !2049, !srcloc !2050
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !2051
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2051

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !2052
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2019, metadata !DIExpression()), !dbg !2052
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !2052
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !2052
  %lnot15 = xor i1 %cmp13, true, !dbg !2052
  %lnot17 = xor i1 %lnot15, true, !dbg !2052
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !2052
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !2052
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !2053
  %tobool19 = icmp ne i32 %12, 0, !dbg !2053
  %lnot20 = xor i1 %tobool19, true, !dbg !2053
  %lnot22 = xor i1 %lnot20, true, !dbg !2053
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !2053
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !2053
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !2053
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !2053
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !2052

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !2053

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !2054
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2022, metadata !DIExpression()), !dbg !2054
  store i32 2307, ptr %__flags, align 4, !dbg !2054
  br label %do.body28, !dbg !2054

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !2055

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !2055

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !2054

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !2057
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 249, i32 %13, i64 12) #16, !dbg !2057, !srcloc !2059
  br label %do.cond30, !dbg !2057

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !2057

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !2054

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !2060

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !2060

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !2053
  br label %do.cond35, !dbg !2054

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !2054

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !2054

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !2052
  %tobool38 = icmp ne i32 %14, 0, !dbg !2052
  %lnot39 = xor i1 %tobool38, true, !dbg !2052
  %lnot41 = xor i1 %lnot39, true, !dbg !2052
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !2052
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !2052
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !2052
  store i64 %expval44, ptr %tmp, align 8, !dbg !2053
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !2062
  %15 = load i64, ptr %tmp, align 8, !dbg !2052
  %tobool45 = icmp ne i64 %15, 0, !dbg !2062
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !2063

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !2064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2064

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !2065
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !2066
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !2067, !range !1964, !noundef !461
  %tobool48 = trunc i8 %18 to i1, !dbg !2067
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #15, !dbg !2068
  store i1 true, ptr %retval, align 1, !dbg !2069
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2069

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #16, !dbg !2070
  %19 = load i1, ptr %retval, align 1, !dbg !2070
  ret i1 %19, !dbg !2070
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2071 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #12 align 16 !dbg !2072 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2076, metadata !DIExpression()), !dbg !2078
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2077, metadata !DIExpression()), !dbg !2079
  %0 = load i32, ptr %size.addr, align 4, !dbg !2080
  %1 = load i64, ptr %count.addr, align 8, !dbg !2082
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #15, !dbg !2083
  ret void, !dbg !2084
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2085 dso_local void @__bad_copy_from() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2086 dso_local void @__bad_copy_to() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #12 align 16 !dbg !2087 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2091, metadata !DIExpression()), !dbg !2094
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2092, metadata !DIExpression()), !dbg !2095
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !2093, metadata !DIExpression()), !dbg !2096
  ret void, !dbg !2097
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2098 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_regset_get202", scope: !2, file: !3, line: 40, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.regset.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/regset\22 -D KBUILD_BASENAME=\22regset\22 -D KBUILD_MODNAME=\22regset\22 -D __KBUILD_MODNAME=kmod_regset -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/regset.ll kernel/regset.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !39, globals: !45, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/regset.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d990a72920edf27ab747638d3f4b682")
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
!39 = !{!40, !41, !43, !44}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !42, line: 154, baseType: !7)
!42 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!43 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !{!0, !46, !48, !54}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_regset_get_alloc203", scope: !2, file: !3, line: 50, type: !40, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !30, line: 480, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 168, elements: !52)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !{!53}
!53 = !DISubrange(count: 21)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !56, line: 249, type: !57, isLocal: true, isDefinition: true)
!56 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 224, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 28)
!60 = !{i32 7, !"Dwarf Version", i32 5}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 8, !"cf-protection-branch", i32 1}
!64 = !{i32 4, !"function_return_thunk_extern", i32 1}
!65 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!66 = !{i32 1, !"Code Model", i32 2}
!67 = !{i32 1, !"override-stack-alignment", i32 8}
!68 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!69 = distinct !DISubprogram(name: "regset_get", scope: !3, file: !3, line: 33, type: !70, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1578)
!70 = !DISubroutineType(types: !71)
!71 = !{!44, !72, !1542, !7, !40}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !74, line: 746, size: 58368, elements: !75)
!74 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!75 = !{!76, !88, !89, !90, !100, !101, !102, !103, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !195, !206, !333, !337, !340, !371, !372, !373, !374, !385, !387, !388, !389, !390, !391, !392, !403, !404, !407, !408, !409, !410, !411, !412, !413, !414, !421, !422, !429, !430, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !709, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !765, !767, !768, !769, !781, !783, !784, !785, !786, !787, !788, !794, !795, !796, !797, !798, !799, !800, !814, !820, !824, !825, !826, !829, !833, !836, !843, !848, !851, !854, !857, !860, !863, !866, !872, !873, !874, !880, !881, !885, !886, !887, !890, !898, !899, !908, !919, !920, !921, !922, !923, !928, !929, !930, !933, !934, !937, !940, !943, !946, !949, !950, !1037, !1048, !1049, !1050, !1051, !1057, !1062, !1063, !1064, !1067, !1068, !1071, !1074, !1075, !1078, !1079, !1080, !1083, !1084, !1085, !1088, !1089, !1090, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1122, !1125, !1193, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1205, !1277, !1279, !1280, !1281, !1282, !1283, !1295, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1313, !1314, !1315}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !73, file: !74, line: 752, baseType: !77, size: 192)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !78, line: 56, size: 192, elements: !79)
!78 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!79 = !{!80, !81, !82, !87}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !78, line: 57, baseType: !43, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !77, file: !78, line: 58, baseType: !43, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !77, file: !78, line: 59, baseType: !83, size: 32, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !84, line: 21, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !7)
!86 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!87 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !77, file: !78, line: 61, baseType: !83, size: 32, offset: 160)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !73, file: !74, line: 754, baseType: !7, size: 32, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !73, file: !74, line: 767, baseType: !40, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !73, file: !74, line: 768, baseType: !91, size: 32, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !92, line: 113, baseType: !93)
!92 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !92, line: 111, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !93, file: !92, line: 112, baseType: !96, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !42, line: 174, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 172, size: 32, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !97, file: !42, line: 173, baseType: !44, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !73, file: !74, line: 770, baseType: !7, size: 32, offset: 352)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !73, file: !74, line: 771, baseType: !7, size: 32, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !73, file: !74, line: 774, baseType: !44, size: 32, offset: 416)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !73, file: !74, line: 775, baseType: !104, size: 128, offset: 448)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !105, line: 58, size: 128, elements: !106)
!105 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!106 = !{!107, !113, !118, !122}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !104, file: !105, line: 59, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !109, line: 60, size: 64, elements: !110)
!109 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !108, file: !109, line: 61, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, scope: !104, file: !105, line: 60, baseType: !114, size: 32, offset: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !105, line: 60, size: 32, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !114, file: !105, line: 61, baseType: !7, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !114, file: !105, line: 62, baseType: !96, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !104, file: !105, line: 65, baseType: !119, size: 16, offset: 96)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !84, line: 19, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !86, line: 24, baseType: !121)
!121 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !104, file: !105, line: 65, baseType: !119, size: 16, offset: 112)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !73, file: !74, line: 776, baseType: !7, size: 32, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !73, file: !74, line: 777, baseType: !43, size: 64, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !73, file: !74, line: 778, baseType: !72, size: 64, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !73, file: !74, line: 787, baseType: !44, size: 32, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !73, file: !74, line: 788, baseType: !44, size: 32, offset: 800)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !73, file: !74, line: 790, baseType: !44, size: 32, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !73, file: !74, line: 792, baseType: !44, size: 32, offset: 864)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !73, file: !74, line: 793, baseType: !44, size: 32, offset: 896)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !73, file: !74, line: 794, baseType: !44, size: 32, offset: 928)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !73, file: !74, line: 795, baseType: !7, size: 32, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !73, file: !74, line: 797, baseType: !134, size: 2048, offset: 1024)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !74, line: 551, size: 2048, elements: !135)
!135 = !{!136, !141, !149, !153, !154, !160, !161, !162, !163, !164, !165, !169, !170, !171, !172, !174, !177, !178, !179}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !134, file: !74, line: 553, baseType: !137, size: 128)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !74, line: 411, size: 128, elements: !138)
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !137, file: !74, line: 412, baseType: !43, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !137, file: !74, line: 413, baseType: !83, size: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !134, file: !74, line: 554, baseType: !142, size: 192, align: 64, offset: 128)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !143, line: 5, size: 192, align: 64, elements: !144)
!143 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!144 = !{!145, !146, !148}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !142, file: !143, line: 6, baseType: !43, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !142, file: !143, line: 7, baseType: !147, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !142, file: !143, line: 8, baseType: !147, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !134, file: !74, line: 555, baseType: !150, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !84, line: 23, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !86, line: 31, baseType: !152)
!152 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !134, file: !74, line: 556, baseType: !150, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !134, file: !74, line: 558, baseType: !155, size: 128, offset: 448)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !42, line: 190, size: 128, elements: !156)
!156 = !{!157, !159}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !42, line: 191, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !155, file: !42, line: 191, baseType: !158, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !134, file: !74, line: 559, baseType: !7, size: 32, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !134, file: !74, line: 561, baseType: !150, size: 64, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !134, file: !74, line: 562, baseType: !150, size: 64, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !134, file: !74, line: 563, baseType: !150, size: 64, offset: 768)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !134, file: !74, line: 564, baseType: !150, size: 64, offset: 832)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !134, file: !74, line: 565, baseType: !166, size: 64, offset: 896)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !84, line: 22, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 30, baseType: !168)
!168 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !134, file: !74, line: 566, baseType: !150, size: 64, offset: 960)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !134, file: !74, line: 568, baseType: !150, size: 64, offset: 1024)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !134, file: !74, line: 571, baseType: !44, size: 32, offset: 1088)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !134, file: !74, line: 572, baseType: !173, size: 64, offset: 1152)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !134, file: !74, line: 574, baseType: !175, size: 64, offset: 1216)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !74, line: 49, flags: DIFlagFwdDecl)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !134, file: !74, line: 576, baseType: !175, size: 64, offset: 1280)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !134, file: !74, line: 578, baseType: !43, size: 64, offset: 1344)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !134, file: !74, line: 588, baseType: !180, size: 512, align: 512, offset: 1536)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !74, line: 497, size: 512, align: 512, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !180, file: !74, line: 498, baseType: !150, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !180, file: !74, line: 499, baseType: !150, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !180, file: !74, line: 500, baseType: !150, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !180, file: !74, line: 501, baseType: !83, size: 32, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !180, file: !74, line: 502, baseType: !83, size: 32, offset: 224)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !180, file: !74, line: 503, baseType: !43, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !180, file: !74, line: 504, baseType: !43, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !180, file: !74, line: 505, baseType: !43, size: 64, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !180, file: !74, line: 506, baseType: !191, size: 64, align: 64, offset: 448)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !74, line: 445, size: 64, align: 64, elements: !192)
!192 = !{!193, !194}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !191, file: !74, line: 446, baseType: !7, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !191, file: !74, line: 447, baseType: !7, size: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !73, file: !74, line: 798, baseType: !196, size: 384, offset: 3072)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !74, line: 592, size: 384, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !196, file: !74, line: 593, baseType: !155, size: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !196, file: !74, line: 594, baseType: !43, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !196, file: !74, line: 595, baseType: !43, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !196, file: !74, line: 596, baseType: !7, size: 32, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !196, file: !74, line: 597, baseType: !121, size: 16, offset: 288)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !196, file: !74, line: 598, baseType: !121, size: 16, offset: 304)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !196, file: !74, line: 600, baseType: !205, size: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !73, file: !74, line: 799, baseType: !207, size: 1792, offset: 3456)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !74, line: 610, size: 1792, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !330, !331}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !207, file: !74, line: 611, baseType: !142, size: 192, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !207, file: !74, line: 618, baseType: !150, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !207, file: !74, line: 619, baseType: !150, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !207, file: !74, line: 620, baseType: !150, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !207, file: !74, line: 621, baseType: !150, size: 64, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !207, file: !74, line: 622, baseType: !150, size: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !207, file: !74, line: 629, baseType: !166, size: 64, offset: 512)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !207, file: !74, line: 630, baseType: !150, size: 64, offset: 576)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !207, file: !74, line: 631, baseType: !7, size: 32, offset: 640)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !207, file: !74, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !207, file: !74, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !207, file: !74, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !207, file: !74, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !207, file: !74, line: 662, baseType: !223, size: 512, offset: 704)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !224)
!224 = !{!225, !233, !234, !239, !326, !327, !328, !329}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !223, file: !6, line: 119, baseType: !226, size: 256)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !227, line: 9, size: 256, elements: !228)
!227 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !226, file: !227, line: 10, baseType: !142, size: 192, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !226, file: !227, line: 11, baseType: !231, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !232, line: 29, baseType: !166)
!232 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !223, file: !6, line: 120, baseType: !231, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !223, file: !6, line: 121, baseType: !235, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!5, !238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !223, file: !6, line: 122, baseType: !240, size: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !242)
!242 = !{!243, !294, !295, !299, !309, !310, !321, !325}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !241, file: !6, line: 160, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !246)
!246 = !{!247, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !245, file: !6, line: 216, baseType: !248, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !249, line: 23, baseType: !250)
!249 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !249, line: 14, size: 32, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !250, file: !249, line: 15, baseType: !253, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !254, line: 44, baseType: !255)
!254 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !254, line: 14, size: 32, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, scope: !255, file: !254, line: 15, baseType: !258, size: 32)
!258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !255, file: !254, line: 15, size: 32, elements: !259)
!259 = !{!260, !261, !269}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !258, file: !254, line: 16, baseType: !96, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !254, line: 24, baseType: !262, size: 16)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !258, file: !254, line: 24, size: 16, elements: !263)
!263 = !{!264, !268}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !262, file: !254, line: 25, baseType: !265, size: 8)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !84, line: 17, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !86, line: 21, baseType: !267)
!267 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !262, file: !254, line: 26, baseType: !265, size: 8, offset: 8)
!269 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !254, line: 28, baseType: !270, size: 32)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !258, file: !254, line: 28, size: 32, elements: !271)
!271 = !{!272, !273}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !270, file: !254, line: 29, baseType: !119, size: 16)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !270, file: !254, line: 30, baseType: !119, size: 16, offset: 16)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !245, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !245, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !245, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !245, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !245, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !245, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !245, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !245, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !245, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !245, file: !6, line: 227, baseType: !121, size: 16, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !245, file: !6, line: 228, baseType: !121, size: 16, offset: 208)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !245, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !245, file: !6, line: 235, baseType: !231, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !245, file: !6, line: 236, baseType: !238, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !245, file: !6, line: 237, baseType: !231, size: 64, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !245, file: !6, line: 238, baseType: !238, size: 64, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !245, file: !6, line: 239, baseType: !291, size: 4096, align: 512, offset: 512)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 4096, align: 512, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 8)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !241, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !241, file: !6, line: 162, baseType: !296, size: 32, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !42, line: 32, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !298, line: 96, baseType: !44)
!298 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!299 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !241, file: !6, line: 163, baseType: !300, size: 32, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !301, line: 274, baseType: !302)
!301 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !301, line: 274, size: 32, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !302, file: !301, line: 274, baseType: !305, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !301, line: 69, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !301, line: 64, size: 32, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !306, file: !301, line: 65, baseType: !7, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !241, file: !6, line: 164, baseType: !238, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !241, file: !6, line: 165, baseType: !311, size: 128, offset: 256)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !227, line: 14, size: 128, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !311, file: !227, line: 15, baseType: !314, size: 128)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !143, line: 26, size: 128, elements: !315)
!315 = !{!316, !320}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !314, file: !143, line: 27, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !143, line: 12, size: 64, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !317, file: !143, line: 13, baseType: !147, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !314, file: !143, line: 28, baseType: !147, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !241, file: !6, line: 166, baseType: !322, size: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!231}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !241, file: !6, line: 167, baseType: !231, size: 64, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !223, file: !6, line: 123, baseType: !265, size: 8, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !223, file: !6, line: 124, baseType: !265, size: 8, offset: 456)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !223, file: !6, line: 125, baseType: !265, size: 8, offset: 464)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !223, file: !6, line: 126, baseType: !265, size: 8, offset: 472)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !207, file: !74, line: 671, baseType: !223, size: 512, offset: 1216)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !207, file: !74, line: 679, baseType: !332, size: 64, offset: 1728)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !73, file: !74, line: 800, baseType: !334, size: 64, offset: 5248)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !74, line: 800, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !73, file: !74, line: 809, baseType: !338, size: 64, offset: 5312)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !74, line: 70, flags: DIFlagFwdDecl)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !73, file: !74, line: 825, baseType: !341, size: 2048, align: 512, offset: 5632)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !74, line: 509, size: 2048, align: 512, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !341, file: !74, line: 511, baseType: !150, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !341, file: !74, line: 512, baseType: !150, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !341, file: !74, line: 513, baseType: !150, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !341, file: !74, line: 514, baseType: !150, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !341, file: !74, line: 515, baseType: !150, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !341, file: !74, line: 516, baseType: !150, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !341, file: !74, line: 518, baseType: !150, size: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !341, file: !74, line: 519, baseType: !150, size: 64, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !341, file: !74, line: 520, baseType: !166, size: 64, offset: 512)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !341, file: !74, line: 522, baseType: !150, size: 64, offset: 576)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !341, file: !74, line: 523, baseType: !150, size: 64, offset: 640)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !341, file: !74, line: 524, baseType: !166, size: 64, offset: 704)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !341, file: !74, line: 526, baseType: !166, size: 64, offset: 768)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !341, file: !74, line: 527, baseType: !150, size: 64, offset: 832)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !341, file: !74, line: 529, baseType: !150, size: 64, offset: 896)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !341, file: !74, line: 530, baseType: !150, size: 64, offset: 960)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !341, file: !74, line: 531, baseType: !150, size: 64, offset: 1024)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !341, file: !74, line: 532, baseType: !150, size: 64, offset: 1088)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !341, file: !74, line: 533, baseType: !150, size: 64, offset: 1152)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !341, file: !74, line: 535, baseType: !150, size: 64, offset: 1216)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !341, file: !74, line: 536, baseType: !150, size: 64, offset: 1280)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !341, file: !74, line: 537, baseType: !150, size: 64, offset: 1344)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !341, file: !74, line: 538, baseType: !150, size: 64, offset: 1408)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !341, file: !74, line: 539, baseType: !150, size: 64, offset: 1472)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !341, file: !74, line: 540, baseType: !150, size: 64, offset: 1536)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !341, file: !74, line: 541, baseType: !150, size: 64, offset: 1600)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !341, file: !74, line: 542, baseType: !150, size: 64, offset: 1664)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !341, file: !74, line: 543, baseType: !150, size: 64, offset: 1728)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !73, file: !74, line: 833, baseType: !7, size: 32, offset: 7680)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !73, file: !74, line: 836, baseType: !7, size: 32, offset: 7712)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !73, file: !74, line: 837, baseType: !44, size: 32, offset: 7744)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !73, file: !74, line: 838, baseType: !375, size: 64, offset: 7808)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !378, line: 19, baseType: !379)
!378 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !378, line: 19, size: 64, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !379, file: !378, line: 19, baseType: !382, size: 64)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 1)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !73, file: !74, line: 839, baseType: !386, size: 64, offset: 7872)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !73, file: !74, line: 840, baseType: !377, size: 64, offset: 7936)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !73, file: !74, line: 841, baseType: !40, size: 64, offset: 8000)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !73, file: !74, line: 843, baseType: !121, size: 16, offset: 8064)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !73, file: !74, line: 845, baseType: !121, size: 16, offset: 8080)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !73, file: !74, line: 848, baseType: !44, size: 32, offset: 8096)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !73, file: !74, line: 849, baseType: !393, size: 32, offset: 8128)
!393 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !74, line: 718, size: 32, elements: !394)
!394 = !{!395, !402}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !393, file: !74, line: 724, baseType: !396, size: 32)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !393, file: !74, line: 719, size: 32, elements: !397)
!397 = !{!398, !399, !400, !401}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !396, file: !74, line: 720, baseType: !265, size: 8)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !396, file: !74, line: 721, baseType: !265, size: 8, offset: 8)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !396, file: !74, line: 722, baseType: !265, size: 8, offset: 16)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !396, file: !74, line: 723, baseType: !265, size: 8, offset: 24)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !393, file: !74, line: 725, baseType: !83, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !73, file: !74, line: 850, baseType: !155, size: 128, offset: 8192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !73, file: !74, line: 851, baseType: !405, size: 64, offset: 8320)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !74, line: 60, flags: DIFlagFwdDecl)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !73, file: !74, line: 855, baseType: !43, size: 64, offset: 8384)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !73, file: !74, line: 856, baseType: !265, size: 8, offset: 8448)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !73, file: !74, line: 857, baseType: !265, size: 8, offset: 8456)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !73, file: !74, line: 858, baseType: !44, size: 32, offset: 8480)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !73, file: !74, line: 859, baseType: !155, size: 128, offset: 8512)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !73, file: !74, line: 860, baseType: !44, size: 32, offset: 8640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !73, file: !74, line: 861, baseType: !155, size: 128, offset: 8704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !73, file: !74, line: 873, baseType: !415, size: 256, offset: 8832)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !74, line: 376, size: 256, elements: !416)
!416 = !{!417, !418, !419, !420}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !415, file: !74, line: 381, baseType: !43, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !415, file: !74, line: 384, baseType: !152, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !415, file: !74, line: 389, baseType: !152, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !415, file: !74, line: 392, baseType: !152, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !73, file: !74, line: 875, baseType: !155, size: 128, offset: 9088)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !73, file: !74, line: 877, baseType: !423, size: 320, offset: 9216)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !424, line: 86, size: 320, elements: !425)
!424 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!425 = !{!426, !427, !428}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !423, file: !424, line: 87, baseType: !44, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !423, file: !424, line: 88, baseType: !155, size: 128, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !423, file: !424, line: 89, baseType: !155, size: 128, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !73, file: !74, line: 878, baseType: !142, size: 192, align: 64, offset: 9536)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !73, file: !74, line: 881, baseType: !431, size: 64, offset: 9728)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !433, line: 733, size: 10240, elements: !434)
!433 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!434 = !{!435, !625}
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !433, line: 734, baseType: !436, size: 10240)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !432, file: !433, line: 734, size: 10240, elements: !437)
!437 = !{!438, !442, !464, !471, !472, !473, !474, !475, !476, !484, !485, !486, !492, !493, !500, !501, !502, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !543, !557, !560, !592, !593, !594, !597, !600, !601, !604, !605, !606, !612, !613}
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !433, line: 739, baseType: !439, size: 512, align: 512)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !436, file: !433, line: 739, size: 512, align: 512, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !439, file: !433, line: 747, baseType: !96, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !436, file: !433, line: 750, baseType: !443, size: 128, offset: 512)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !444, line: 218, size: 128, elements: !445)
!444 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!445 = !{!446, !462, !463}
!446 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !444, line: 219, baseType: !447, size: 32)
!447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !444, line: 219, size: 32, elements: !448)
!448 = !{!449, !458}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !447, file: !444, line: 220, baseType: !450, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !451, line: 29, baseType: !452)
!451 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !451, line: 17, size: 32, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !451, line: 18, baseType: !455, size: 32)
!455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !451, line: 18, size: 32, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !455, file: !451, line: 19, baseType: !250, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !447, file: !444, line: 221, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !444, line: 197, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 197, elements: !461)
!461 = !{}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !443, file: !444, line: 223, baseType: !7, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !443, file: !444, line: 224, baseType: !40, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !436, file: !433, line: 752, baseType: !465, size: 64, offset: 640)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!43, !468, !43, !43, !43, !43}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !470, line: 537, flags: DIFlagFwdDecl)
!470 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!471 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !436, file: !433, line: 756, baseType: !43, size: 64, offset: 704)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !436, file: !433, line: 757, baseType: !43, size: 64, offset: 768)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !436, file: !433, line: 760, baseType: !43, size: 64, offset: 832)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !436, file: !433, line: 761, baseType: !43, size: 64, offset: 896)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !436, file: !433, line: 763, baseType: !43, size: 64, offset: 960)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !436, file: !433, line: 764, baseType: !477, size: 64, offset: 1024)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !470, line: 299, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !470, line: 299, size: 64, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !479, file: !470, line: 299, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !483, line: 18, baseType: !43)
!483 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!484 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !436, file: !433, line: 773, baseType: !96, size: 32, offset: 1088)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !436, file: !433, line: 785, baseType: !96, size: 32, offset: 1120)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !436, file: !433, line: 795, baseType: !487, size: 64, offset: 1152)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !433, line: 726, size: 128, elements: !489)
!489 = !{!490, !491}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !488, file: !433, line: 727, baseType: !150, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !488, file: !433, line: 728, baseType: !44, size: 32, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !436, file: !433, line: 801, baseType: !43, size: 64, offset: 1216)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !436, file: !433, line: 804, baseType: !494, size: 64, offset: 1280)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !495, line: 13, baseType: !496)
!495 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !42, line: 181, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 179, size: 64, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !497, file: !42, line: 180, baseType: !166, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !436, file: !433, line: 806, baseType: !44, size: 32, offset: 1344)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !436, file: !433, line: 808, baseType: !450, size: 32, offset: 1376)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !436, file: !433, line: 823, baseType: !503, size: 320, offset: 1408)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !504, line: 48, size: 320, elements: !505)
!504 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!505 = !{!506, !507, !508, !513, !514}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !503, file: !504, line: 49, baseType: !494, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !503, file: !504, line: 55, baseType: !494, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !503, file: !504, line: 57, baseType: !509, size: 32, offset: 128)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !510, line: 15, size: 32, elements: !511)
!510 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !509, file: !510, line: 20, baseType: !96, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !503, file: !504, line: 59, baseType: !248, size: 32, offset: 160)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !503, file: !504, line: 60, baseType: !155, size: 128, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !436, file: !433, line: 825, baseType: !155, size: 128, offset: 1728)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !436, file: !433, line: 845, baseType: !44, size: 32, offset: 1856)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !436, file: !433, line: 849, baseType: !43, size: 64, offset: 1920)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !436, file: !433, line: 850, baseType: !43, size: 64, offset: 1984)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !436, file: !433, line: 852, baseType: !43, size: 64, offset: 2048)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !436, file: !433, line: 853, baseType: !43, size: 64, offset: 2112)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !436, file: !433, line: 854, baseType: !496, size: 64, offset: 2176)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !436, file: !433, line: 855, baseType: !43, size: 64, offset: 2240)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !436, file: !433, line: 856, baseType: !43, size: 64, offset: 2304)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !436, file: !433, line: 857, baseType: !43, size: 64, offset: 2368)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !436, file: !433, line: 858, baseType: !43, size: 64, offset: 2432)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !436, file: !433, line: 865, baseType: !305, size: 32, offset: 2496)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !436, file: !433, line: 867, baseType: !450, size: 32, offset: 2528)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !436, file: !433, line: 869, baseType: !43, size: 64, offset: 2560)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !436, file: !433, line: 869, baseType: !43, size: 64, offset: 2624)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !436, file: !433, line: 869, baseType: !43, size: 64, offset: 2688)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !436, file: !433, line: 869, baseType: !43, size: 64, offset: 2752)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !436, file: !433, line: 870, baseType: !43, size: 64, offset: 2816)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !436, file: !433, line: 870, baseType: !43, size: 64, offset: 2880)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !436, file: !433, line: 870, baseType: !43, size: 64, offset: 2944)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !436, file: !433, line: 871, baseType: !43, size: 64, offset: 3008)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !436, file: !433, line: 871, baseType: !43, size: 64, offset: 3072)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !436, file: !433, line: 871, baseType: !43, size: 64, offset: 3136)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !436, file: !433, line: 871, baseType: !43, size: 64, offset: 3200)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !436, file: !433, line: 873, baseType: !540, size: 3328, offset: 3264)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 3328, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 52)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !436, file: !433, line: 875, baseType: !544, size: 1280, offset: 6592)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 1280, elements: !555)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !546, line: 22, size: 320, elements: !547)
!546 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!547 = !{!548, !549, !550, !551}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !545, file: !546, line: 23, baseType: !248, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !545, file: !546, line: 24, baseType: !166, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !545, file: !546, line: 26, baseType: !155, size: 128, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !545, file: !546, line: 28, baseType: !552, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !84, line: 20, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !86, line: 26, baseType: !44)
!555 = !{!556}
!556 = !DISubrange(count: 4)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !436, file: !433, line: 877, baseType: !558, size: 64, offset: 7872)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !433, line: 877, flags: DIFlagFwdDecl)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !436, file: !433, line: 880, baseType: !561, size: 1088, offset: 7936)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !562, line: 72, baseType: !563)
!562 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !562, line: 23, size: 1088, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !572, !573, !581, !582, !586, !587, !588}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !563, file: !562, line: 28, baseType: !150, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !563, file: !562, line: 38, baseType: !496, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !563, file: !562, line: 40, baseType: !43, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !563, file: !562, line: 43, baseType: !503, size: 320, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !563, file: !562, line: 44, baseType: !570, size: 64, offset: 512)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !562, line: 44, flags: DIFlagFwdDecl)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !563, file: !562, line: 48, baseType: !43, size: 64, offset: 576)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !563, file: !562, line: 59, baseType: !574, size: 256, offset: 640)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !575, line: 66, size: 256, elements: !576)
!575 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!576 = !{!577, !578, !579, !580}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !574, file: !575, line: 67, baseType: !494, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !574, file: !575, line: 68, baseType: !248, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !574, file: !575, line: 70, baseType: !509, size: 32, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !574, file: !575, line: 72, baseType: !155, size: 128, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !563, file: !562, line: 60, baseType: !40, size: 64, offset: 896)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !563, file: !562, line: 61, baseType: !583, size: 64, offset: 960)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !562, line: 61, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !563, file: !562, line: 63, baseType: !96, size: 32, offset: 1024)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !563, file: !562, line: 69, baseType: !119, size: 16, offset: 1056)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !563, file: !562, line: 70, baseType: !589, size: 16, offset: 1072)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !84, line: 18, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !86, line: 23, baseType: !591)
!591 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !436, file: !433, line: 882, baseType: !43, size: 64, offset: 9024)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !436, file: !433, line: 885, baseType: !450, size: 32, offset: 9088)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !436, file: !433, line: 886, baseType: !595, size: 64, offset: 9152)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !433, line: 732, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !436, file: !433, line: 901, baseType: !598, size: 64, offset: 9216)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !433, line: 901, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !436, file: !433, line: 904, baseType: !468, size: 64, offset: 9280)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !436, file: !433, line: 906, baseType: !602, size: 64, offset: 9344)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !433, line: 906, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !436, file: !433, line: 930, baseType: !96, size: 32, offset: 9408)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !436, file: !433, line: 933, baseType: !96, size: 32, offset: 9440)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !436, file: !433, line: 935, baseType: !607, size: 64, offset: 9472)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !18, line: 103, size: 64, elements: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !607, file: !18, line: 104, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !18, line: 101, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !436, file: !433, line: 940, baseType: !494, size: 64, offset: 9536)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !436, file: !433, line: 942, baseType: !614, size: 256, offset: 9600)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !615, line: 98, size: 256, elements: !616)
!615 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!616 = !{!617, !618, !619}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !614, file: !615, line: 99, baseType: !494, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !614, file: !615, line: 100, baseType: !155, size: 128, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !614, file: !615, line: 101, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !615, line: 21, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !624}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !432, file: !433, line: 986, baseType: !626, offset: 10240)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: -1)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !73, file: !74, line: 882, baseType: !431, size: 64, offset: 9792)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !73, file: !74, line: 884, baseType: !44, size: 32, offset: 9856)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !73, file: !74, line: 885, baseType: !44, size: 32, offset: 9888)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !73, file: !74, line: 886, baseType: !44, size: 32, offset: 9920)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !73, file: !74, line: 888, baseType: !44, size: 32, offset: 9952)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !73, file: !74, line: 890, baseType: !43, size: 64, offset: 9984)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !73, file: !74, line: 893, baseType: !7, size: 32, offset: 10048)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !73, file: !74, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !73, file: !74, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !73, file: !74, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !73, file: !74, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !73, file: !74, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !73, file: !74, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !73, file: !74, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !73, file: !74, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !73, file: !74, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !73, file: !74, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !73, file: !74, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !73, file: !74, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !73, file: !74, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !73, file: !74, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !73, file: !74, line: 969, baseType: !43, size: 64, offset: 10176)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !73, file: !74, line: 971, baseType: !652, size: 448, offset: 10240)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 448, elements: !653)
!653 = !{!654, !655, !661}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !652, file: !12, line: 26, baseType: !43, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !652, file: !12, line: 27, baseType: !656, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!659, !660}
!659 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, scope: !652, file: !12, line: 28, baseType: !662, size: 320, offset: 128)
!662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !12, line: 28, size: 320, elements: !663)
!663 = !{!664, !674, !699}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !662, file: !12, line: 37, baseType: !665, size: 320)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !662, file: !12, line: 30, size: 320, elements: !666)
!666 = !{!667, !669, !670, !671, !672, !673}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !665, file: !12, line: 31, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !665, file: !12, line: 32, baseType: !83, size: 32, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !665, file: !12, line: 33, baseType: !83, size: 32, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !665, file: !12, line: 34, baseType: !83, size: 32, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !665, file: !12, line: 35, baseType: !150, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !665, file: !12, line: 36, baseType: !668, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !662, file: !12, line: 47, baseType: !675, size: 192)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !662, file: !12, line: 39, size: 192, elements: !676)
!676 = !{!677, !678, !679, !698}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !675, file: !12, line: 40, baseType: !296, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !675, file: !12, line: 41, baseType: !11, size: 32, offset: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, scope: !675, file: !12, line: 42, baseType: !680, size: 64, offset: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !675, file: !12, line: 42, size: 64, elements: !681)
!681 = !{!682, !690}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !680, file: !12, line: 43, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !685, line: 7, size: 128, elements: !686)
!685 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!686 = !{!687, !689}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !684, file: !685, line: 8, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !298, line: 93, baseType: !168)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !684, file: !685, line: 9, baseType: !168, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !680, file: !12, line: 44, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !693, line: 7, size: 64, elements: !694)
!693 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!694 = !{!695, !697}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !692, file: !693, line: 8, baseType: !696, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !693, line: 5, baseType: !553)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !692, file: !693, line: 9, baseType: !553, size: 32, offset: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !675, file: !12, line: 46, baseType: !150, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !662, file: !12, line: 55, baseType: !700, size: 256)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !662, file: !12, line: 49, size: 256, elements: !701)
!701 = !{!702, !705, !706, !707, !708}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !700, file: !12, line: 50, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !700, file: !12, line: 51, baseType: !44, size: 32, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !700, file: !12, line: 52, baseType: !44, size: 32, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !700, file: !12, line: 53, baseType: !43, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !700, file: !12, line: 54, baseType: !43, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !73, file: !74, line: 973, baseType: !710, size: 32, offset: 10688)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !42, line: 27, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !298, line: 28, baseType: !44)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !73, file: !74, line: 974, baseType: !710, size: 32, offset: 10720)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !73, file: !74, line: 978, baseType: !43, size: 64, offset: 10752)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !73, file: !74, line: 987, baseType: !72, size: 64, offset: 10816)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !73, file: !74, line: 990, baseType: !72, size: 64, offset: 10880)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !73, file: !74, line: 995, baseType: !155, size: 128, offset: 10944)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !73, file: !74, line: 996, baseType: !155, size: 128, offset: 11072)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !73, file: !74, line: 997, baseType: !72, size: 64, offset: 11200)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !73, file: !74, line: 1005, baseType: !155, size: 128, offset: 11264)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !73, file: !74, line: 1006, baseType: !155, size: 128, offset: 11392)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !73, file: !74, line: 1009, baseType: !722, size: 64, offset: 11520)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !724, line: 59, size: 768, elements: !725)
!724 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!725 = !{!726, !727, !728, !729, !740, !741, !748, !757}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !723, file: !724, line: 61, baseType: !91, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !723, file: !724, line: 62, baseType: !7, size: 32, offset: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !723, file: !724, line: 63, baseType: !450, size: 32, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !723, file: !724, line: 65, baseType: !730, size: 256, offset: 128)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 256, elements: !555)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !42, line: 194, size: 64, elements: !732)
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !731, file: !42, line: 195, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !42, line: 198, size: 128, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !735, file: !42, line: 199, baseType: !734, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !735, file: !42, line: 199, baseType: !739, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !723, file: !724, line: 66, baseType: !731, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !723, file: !724, line: 68, baseType: !742, size: 192, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !743, line: 41, baseType: !744)
!743 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !743, line: 37, size: 192, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !744, file: !743, line: 38, baseType: !450, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !744, file: !743, line: 39, baseType: !155, size: 128, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !723, file: !724, line: 69, baseType: !749, size: 128, align: 64, offset: 640)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !42, line: 232, size: 128, align: 64, elements: !750)
!750 = !{!751, !753}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !749, file: !42, line: 233, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !749, file: !42, line: 234, baseType: !754, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !752}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !723, file: !724, line: 70, baseType: !758, offset: 768)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, elements: !627)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !724, line: 54, size: 128, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !759, file: !724, line: 55, baseType: !44, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !759, file: !724, line: 56, baseType: !763, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !724, line: 56, flags: DIFlagFwdDecl)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !73, file: !74, line: 1010, baseType: !766, size: 512, offset: 11584)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 512, elements: !555)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !73, file: !74, line: 1011, baseType: !155, size: 128, offset: 12096)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !73, file: !74, line: 1012, baseType: !155, size: 128, offset: 12224)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !73, file: !74, line: 1014, baseType: !770, size: 64, offset: 12352)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !772, line: 26, size: 256, elements: !773)
!772 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !771, file: !772, line: 27, baseType: !7, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !771, file: !772, line: 28, baseType: !776, size: 192, offset: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !777, line: 43, size: 192, elements: !778)
!777 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !776, file: !777, line: 44, baseType: !248, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !776, file: !777, line: 45, baseType: !155, size: 128, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !73, file: !74, line: 1017, baseType: !782, size: 64, offset: 12416)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !73, file: !74, line: 1020, baseType: !782, size: 64, offset: 12480)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !73, file: !74, line: 1023, baseType: !40, size: 64, offset: 12544)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !73, file: !74, line: 1025, baseType: !150, size: 64, offset: 12608)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !73, file: !74, line: 1026, baseType: !150, size: 64, offset: 12672)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !73, file: !74, line: 1031, baseType: !150, size: 64, offset: 12736)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !73, file: !74, line: 1032, baseType: !789, size: 192, offset: 12800)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !74, line: 324, size: 192, elements: !790)
!790 = !{!791, !792, !793}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !789, file: !74, line: 326, baseType: !150, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !789, file: !74, line: 327, baseType: !150, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !789, file: !74, line: 328, baseType: !248, size: 32, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !73, file: !74, line: 1041, baseType: !43, size: 64, offset: 12992)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !73, file: !74, line: 1042, baseType: !43, size: 64, offset: 13056)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !73, file: !74, line: 1045, baseType: !150, size: 64, offset: 13120)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !73, file: !74, line: 1048, baseType: !150, size: 64, offset: 13184)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !73, file: !74, line: 1051, baseType: !43, size: 64, offset: 13248)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !73, file: !74, line: 1052, baseType: !43, size: 64, offset: 13312)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !73, file: !74, line: 1055, baseType: !801, size: 640, offset: 13376)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !802, line: 132, size: 640, elements: !803)
!802 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!803 = !{!804, !812, !813}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !801, file: !802, line: 133, baseType: !805, size: 576)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 576, elements: !810)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !802, line: 117, size: 192, elements: !807)
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !806, file: !802, line: 118, baseType: !150, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !806, file: !802, line: 119, baseType: !311, size: 128, offset: 64)
!810 = !{!811}
!811 = !DISubrange(count: 3)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !801, file: !802, line: 134, baseType: !7, size: 32, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !801, file: !802, line: 135, baseType: !7, size: 32, offset: 608)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !73, file: !74, line: 1058, baseType: !815, size: 448, offset: 14016)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !802, line: 144, size: 448, elements: !816)
!816 = !{!817, !818, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !815, file: !802, line: 145, baseType: !749, size: 128, align: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !815, file: !802, line: 146, baseType: !574, size: 256, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !815, file: !802, line: 147, baseType: !7, size: 32, offset: 384)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !73, file: !74, line: 1064, baseType: !821, size: 64, offset: 14464)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !823)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !74, line: 1064, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !73, file: !74, line: 1067, baseType: !821, size: 64, offset: 14528)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !73, file: !74, line: 1070, baseType: !821, size: 64, offset: 14592)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !73, file: !74, line: 1074, baseType: !827, size: 64, offset: 14656)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !74, line: 1074, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !73, file: !74, line: 1084, baseType: !830, size: 128, offset: 14720)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !831)
!831 = !{!832}
!832 = !DISubrange(count: 16)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !73, file: !74, line: 1086, baseType: !834, size: 64, offset: 14848)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !74, line: 55, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !73, file: !74, line: 1089, baseType: !837, size: 64, offset: 14912)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !838, line: 12, size: 64, elements: !839)
!838 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!839 = !{!840}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !837, file: !838, line: 13, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !838, line: 8, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !73, file: !74, line: 1090, baseType: !844, size: 128, offset: 14976)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !845, line: 13, size: 128, elements: !846)
!845 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!846 = !{!847}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !844, file: !845, line: 14, baseType: !155, size: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !73, file: !74, line: 1097, baseType: !849, size: 64, offset: 15104)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !74, line: 50, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !73, file: !74, line: 1100, baseType: !852, size: 64, offset: 15168)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !74, line: 1100, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !73, file: !74, line: 1103, baseType: !855, size: 64, offset: 15232)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !74, line: 53, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !73, file: !74, line: 1107, baseType: !858, size: 64, offset: 15296)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !74, line: 56, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !73, file: !74, line: 1110, baseType: !861, size: 64, offset: 15360)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !802, line: 236, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !73, file: !74, line: 1111, baseType: !864, size: 64, offset: 15424)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !74, line: 67, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !73, file: !74, line: 1112, baseType: !867, size: 64, offset: 15488)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !868, line: 25, baseType: !869)
!868 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !868, line: 23, size: 64, elements: !870)
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !869, file: !868, line: 24, baseType: !382, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !73, file: !74, line: 1113, baseType: !867, size: 64, offset: 15552)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !73, file: !74, line: 1115, baseType: !867, size: 64, offset: 15616)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !73, file: !74, line: 1116, baseType: !875, size: 192, offset: 15680)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !876, line: 32, size: 192, elements: !877)
!876 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !875, file: !876, line: 33, baseType: !155, size: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !875, file: !876, line: 34, baseType: !867, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !73, file: !74, line: 1117, baseType: !43, size: 64, offset: 15872)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !73, file: !74, line: 1118, baseType: !882, size: 64, offset: 15936)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 61, baseType: !883)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !298, line: 72, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !298, line: 16, baseType: !43)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !73, file: !74, line: 1119, baseType: !7, size: 32, offset: 16000)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !73, file: !74, line: 1121, baseType: !752, size: 64, offset: 16064)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !73, file: !74, line: 1125, baseType: !888, size: 64, offset: 16128)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !74, line: 43, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !73, file: !74, line: 1127, baseType: !891, size: 32, offset: 16192)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !892, line: 23, baseType: !893)
!892 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !892, line: 21, size: 32, elements: !894)
!894 = !{!895}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !893, file: !892, line: 22, baseType: !896, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !42, line: 37, baseType: !897)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !298, line: 49, baseType: !7)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !73, file: !74, line: 1128, baseType: !7, size: 32, offset: 16224)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !73, file: !74, line: 1130, baseType: !900, size: 128, offset: 16256)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !901, line: 37, size: 128, elements: !902)
!901 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!902 = !{!903, !904, !905}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !900, file: !901, line: 38, baseType: !44, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !900, file: !901, line: 39, baseType: !96, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !900, file: !901, line: 40, baseType: !906, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !901, line: 24, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !73, file: !74, line: 1131, baseType: !909, size: 256, offset: 16384)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !910, line: 12, size: 256, elements: !911)
!910 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!911 = !{!912, !914, !915, !916}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !909, file: !910, line: 13, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !909, file: !910, line: 14, baseType: !43, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !909, file: !910, line: 15, baseType: !43, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !909, file: !910, line: 16, baseType: !917, size: 8, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !42, line: 35, baseType: !918)
!918 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !73, file: !74, line: 1134, baseType: !150, size: 64, offset: 16640)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !73, file: !74, line: 1135, baseType: !150, size: 64, offset: 16704)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !73, file: !74, line: 1138, baseType: !450, size: 32, offset: 16768)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !73, file: !74, line: 1141, baseType: !248, size: 32, offset: 16800)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !73, file: !74, line: 1143, baseType: !924, size: 64, offset: 16832)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !74, line: 735, size: 64, elements: !925)
!925 = !{!926}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !924, file: !74, line: 736, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !73, file: !74, line: 1147, baseType: !314, size: 128, offset: 16896)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !73, file: !74, line: 1149, baseType: !72, size: 64, offset: 17024)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !73, file: !74, line: 1151, baseType: !931, size: 64, offset: 17088)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !74, line: 1151, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !73, file: !74, line: 1188, baseType: !40, size: 64, offset: 17152)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !73, file: !74, line: 1191, baseType: !935, size: 64, offset: 17216)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !74, line: 44, flags: DIFlagFwdDecl)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !73, file: !74, line: 1194, baseType: !938, size: 64, offset: 17280)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !74, line: 45, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !73, file: !74, line: 1197, baseType: !941, size: 64, offset: 17344)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !74, line: 61, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !73, file: !74, line: 1199, baseType: !944, size: 64, offset: 17408)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !74, line: 52, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !73, file: !74, line: 1202, baseType: !947, size: 64, offset: 17472)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !74, line: 48, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !73, file: !74, line: 1205, baseType: !43, size: 64, offset: 17536)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !73, file: !74, line: 1206, baseType: !951, size: 64, offset: 17600)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !876, line: 14, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !876, line: 12, size: 384, elements: !954)
!954 = !{!955}
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !876, line: 13, baseType: !956, size: 384)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !876, line: 13, size: 384, elements: !957)
!957 = !{!958, !959, !960, !961}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !956, file: !876, line: 13, baseType: !44, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !956, file: !876, line: 13, baseType: !44, size: 32, offset: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !956, file: !876, line: 13, baseType: !44, size: 32, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !956, file: !876, line: 13, baseType: !962, size: 256, offset: 128)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !963, line: 37, size: 256, elements: !964)
!963 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!964 = !{!965, !970, !983, !989, !999, !1026, !1031}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !962, file: !963, line: 42, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !963, line: 39, size: 64, elements: !967)
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !966, file: !963, line: 40, baseType: !711, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !966, file: !963, line: 41, baseType: !897, size: 32, offset: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !962, file: !963, line: 50, baseType: !971, size: 192)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !963, line: 45, size: 192, elements: !972)
!972 = !{!973, !975, !976, !982}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !971, file: !963, line: 46, baseType: !974, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !298, line: 95, baseType: !44)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !971, file: !963, line: 47, baseType: !44, size: 32, offset: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !971, file: !963, line: 48, baseType: !977, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !963, line: 11, baseType: !978)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !963, line: 8, size: 64, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !978, file: !963, line: 9, baseType: !44, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !978, file: !963, line: 10, baseType: !40, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !971, file: !963, line: 49, baseType: !44, size: 32, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !962, file: !963, line: 57, baseType: !984, size: 128)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !963, line: 53, size: 128, elements: !985)
!985 = !{!986, !987, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !984, file: !963, line: 54, baseType: !711, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !984, file: !963, line: 55, baseType: !897, size: 32, offset: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !984, file: !963, line: 56, baseType: !977, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !962, file: !963, line: 66, baseType: !990, size: 256)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !963, line: 60, size: 256, elements: !991)
!991 = !{!992, !993, !994, !995, !998}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !990, file: !963, line: 61, baseType: !711, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !990, file: !963, line: 62, baseType: !897, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !990, file: !963, line: 63, baseType: !44, size: 32, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !990, file: !963, line: 64, baseType: !996, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !298, line: 94, baseType: !997)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !298, line: 15, baseType: !659)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !990, file: !963, line: 65, baseType: !996, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !962, file: !963, line: 105, baseType: !1000, size: 256)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !963, line: 69, size: 256, elements: !1001)
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1000, file: !963, line: 70, baseType: !40, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !963, line: 79, baseType: !1004, size: 192, offset: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !963, line: 79, size: 192, elements: !1005)
!1005 = !{!1006, !1007, !1008, !1015, !1020}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1004, file: !963, line: 81, baseType: !44, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1004, file: !963, line: 86, baseType: !591, size: 16)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1004, file: !963, line: 92, baseType: !1009, size: 192)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !963, line: 88, size: 192, elements: !1010)
!1010 = !{!1011, !1013, !1014}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1009, file: !963, line: 89, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !292)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1009, file: !963, line: 90, baseType: !40, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1009, file: !963, line: 91, baseType: !40, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1004, file: !963, line: 97, baseType: !1016, size: 96)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !963, line: 94, size: 96, elements: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1016, file: !963, line: 95, baseType: !1012, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1016, file: !963, line: 96, baseType: !85, size: 32, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1004, file: !963, line: 103, baseType: !1021, size: 128)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !963, line: 99, size: 128, elements: !1022)
!1022 = !{!1023, !1024, !1025}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1021, file: !963, line: 100, baseType: !43, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1021, file: !963, line: 101, baseType: !85, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1021, file: !963, line: 102, baseType: !85, size: 32, offset: 96)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !962, file: !963, line: 111, baseType: !1027, size: 128)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !963, line: 108, size: 128, elements: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1027, file: !963, line: 109, baseType: !659, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1027, file: !963, line: 110, baseType: !44, size: 32, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !962, file: !963, line: 118, baseType: !1032, size: 128)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !963, line: 114, size: 128, elements: !1033)
!1033 = !{!1034, !1035, !1036}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1032, file: !963, line: 115, baseType: !40, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1032, file: !963, line: 116, baseType: !44, size: 32, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1032, file: !963, line: 117, baseType: !7, size: 32, offset: 96)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !73, file: !74, line: 1208, baseType: !1038, size: 448, offset: 17664)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1039, line: 12, size: 448, elements: !1040)
!1039 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1046, !1047}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1038, file: !1039, line: 15, baseType: !150, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1038, file: !1039, line: 17, baseType: !150, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1038, file: !1039, line: 19, baseType: !150, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1038, file: !1039, line: 21, baseType: !150, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1038, file: !1039, line: 29, baseType: !150, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1038, file: !1039, line: 35, baseType: !150, size: 64, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1038, file: !1039, line: 44, baseType: !150, size: 64, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !73, file: !74, line: 1215, baseType: !150, size: 64, offset: 18112)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !73, file: !74, line: 1217, baseType: !150, size: 64, offset: 18176)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !73, file: !74, line: 1219, baseType: !150, size: 64, offset: 18240)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !73, file: !74, line: 1223, baseType: !1052, size: 64, offset: 18304)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1053, line: 99, baseType: !1054)
!1053 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1053, line: 99, size: 64, elements: !1055)
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1054, file: !1053, line: 99, baseType: !382, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !73, file: !74, line: 1225, baseType: !1058, size: 32, offset: 18368)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !301, line: 275, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !301, line: 275, size: 32, elements: !1060)
!1060 = !{!1061}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1059, file: !301, line: 275, baseType: !305, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !73, file: !74, line: 1226, baseType: !44, size: 32, offset: 18400)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !73, file: !74, line: 1227, baseType: !44, size: 32, offset: 18432)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !73, file: !74, line: 1231, baseType: !1065, size: 64, offset: 18496)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !74, line: 1231, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !73, file: !74, line: 1233, baseType: !155, size: 128, offset: 18560)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !73, file: !74, line: 1240, baseType: !1069, size: 64, offset: 18688)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !74, line: 62, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !73, file: !74, line: 1242, baseType: !1072, size: 64, offset: 18752)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !74, line: 1242, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !73, file: !74, line: 1244, baseType: !155, size: 128, offset: 18816)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !73, file: !74, line: 1245, baseType: !1076, size: 64, offset: 18944)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !74, line: 51, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !73, file: !74, line: 1246, baseType: !574, size: 256, offset: 19008)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !73, file: !74, line: 1247, baseType: !7, size: 32, offset: 19264)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !73, file: !74, line: 1250, baseType: !1081, size: 64, offset: 19328)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !74, line: 57, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !73, file: !74, line: 1251, baseType: !574, size: 256, offset: 19392)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !73, file: !74, line: 1252, baseType: !155, size: 128, offset: 19648)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !73, file: !74, line: 1259, baseType: !1086, size: 64, offset: 19776)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !433, line: 717, flags: DIFlagFwdDecl)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !73, file: !74, line: 1260, baseType: !591, size: 16, offset: 19840)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !73, file: !74, line: 1261, baseType: !591, size: 16, offset: 19856)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !73, file: !74, line: 1314, baseType: !1091, size: 64, offset: 19904)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1093, line: 62, size: 256, align: 256, elements: !1094)
!1093 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1101}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1092, file: !1093, line: 75, baseType: !85, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1092, file: !1093, line: 90, baseType: !85, size: 32, offset: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1092, file: !1093, line: 112, baseType: !151, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1092, file: !1093, line: 132, baseType: !85, size: 32, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1092, file: !1093, line: 140, baseType: !85, size: 32, offset: 160)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1092, file: !1093, line: 149, baseType: !85, size: 32, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1092, file: !1093, line: 154, baseType: !1102, offset: 224)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, elements: !627)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !73, file: !74, line: 1315, baseType: !83, size: 32, offset: 19968)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !73, file: !74, line: 1316, baseType: !83, size: 32, offset: 20000)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !73, file: !74, line: 1321, baseType: !43, size: 64, offset: 20032)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !73, file: !74, line: 1325, baseType: !44, size: 32, offset: 20096)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !73, file: !74, line: 1326, baseType: !44, size: 32, offset: 20128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !73, file: !74, line: 1327, baseType: !44, size: 32, offset: 20160)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !73, file: !74, line: 1328, baseType: !44, size: 32, offset: 20192)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !73, file: !74, line: 1329, baseType: !749, size: 128, align: 64, offset: 20224)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !73, file: !74, line: 1332, baseType: !1112, size: 128, offset: 20352)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1113, line: 51, size: 128, elements: !1114)
!1113 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1114 = !{!1115, !1120, !1121}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1112, file: !1113, line: 60, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1117, line: 7, size: 64, elements: !1118)
!1117 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1118 = !{!1119}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1116, file: !1117, line: 12, baseType: !379, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1112, file: !1113, line: 63, baseType: !917, size: 8, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1112, file: !1113, line: 70, baseType: !917, size: 8, offset: 72)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !73, file: !74, line: 1335, baseType: !1123, size: 64, offset: 20480)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !74, line: 59, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !73, file: !74, line: 1337, baseType: !1126, size: 128, offset: 20544)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1113, line: 39, size: 128, elements: !1127)
!1127 = !{!1128, !1191, !1192}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1126, file: !1113, line: 40, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !433, line: 74, size: 512, align: 128, elements: !1131)
!1131 = !{!1132, !1133, !1185, !1190}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1130, file: !433, line: 75, baseType: !43, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !433, line: 83, baseType: !1134, size: 320, offset: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1130, file: !433, line: 83, size: 320, elements: !1135)
!1135 = !{!1136, !1159, !1173, !1177, !1184}
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1134, file: !433, line: 84, baseType: !1137, size: 320)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1134, file: !433, line: 84, size: 320, elements: !1138)
!1138 = !{!1139, !1150, !1153, !1158}
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !433, line: 90, baseType: !1140, size: 128)
!1140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1137, file: !433, line: 90, size: 128, elements: !1141)
!1141 = !{!1142, !1143, !1148, !1149}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1140, file: !433, line: 91, baseType: !155, size: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !433, line: 94, baseType: !1144, size: 128)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1140, file: !433, line: 94, size: 128, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1144, file: !433, line: 96, baseType: !40, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1144, file: !433, line: 98, baseType: !7, size: 32, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1140, file: !433, line: 102, baseType: !155, size: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1140, file: !433, line: 103, baseType: !155, size: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1137, file: !433, line: 106, baseType: !1151, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !433, line: 32, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !433, line: 107, baseType: !1154, size: 64, offset: 192)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1137, file: !433, line: 107, size: 64, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1154, file: !433, line: 108, baseType: !43, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1154, file: !433, line: 109, baseType: !43, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1137, file: !433, line: 117, baseType: !43, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1134, file: !433, line: 119, baseType: !1160, size: 320)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1134, file: !433, line: 119, size: 320, elements: !1161)
!1161 = !{!1162, !1163, !1166, !1167, !1168}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1160, file: !433, line: 124, baseType: !43, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1160, file: !433, line: 125, baseType: !1164, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !433, line: 125, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1160, file: !433, line: 126, baseType: !43, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1160, file: !433, line: 127, baseType: !43, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1160, file: !433, line: 128, baseType: !1169, size: 64, offset: 256)
!1169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1160, file: !433, line: 128, size: 64, elements: !1170)
!1170 = !{!1171, !1172}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1169, file: !433, line: 133, baseType: !43, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1169, file: !433, line: 138, baseType: !494, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1134, file: !433, line: 141, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1134, file: !433, line: 141, size: 64, elements: !1175)
!1175 = !{!1176}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1174, file: !433, line: 142, baseType: !43, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, scope: !1134, file: !433, line: 144, baseType: !1178, size: 128)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1134, file: !433, line: 144, size: 128, elements: !1179)
!1179 = !{!1180, !1183}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1178, file: !433, line: 146, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !433, line: 146, flags: DIFlagFwdDecl)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1178, file: !433, line: 147, baseType: !40, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1134, file: !433, line: 161, baseType: !749, size: 128, align: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !433, line: 164, baseType: !1186, size: 32, offset: 384)
!1186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1130, file: !433, line: 164, size: 32, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1186, file: !433, line: 169, baseType: !96, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1186, file: !433, line: 177, baseType: !7, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1130, file: !433, line: 181, baseType: !96, size: 32, offset: 416)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1126, file: !1113, line: 42, baseType: !85, size: 32, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1126, file: !1113, line: 43, baseType: !85, size: 32, offset: 96)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !73, file: !74, line: 1340, baseType: !1194, size: 64, offset: 20672)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !74, line: 69, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !73, file: !74, line: 1351, baseType: !44, size: 32, offset: 20736)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !73, file: !74, line: 1352, baseType: !44, size: 32, offset: 20768)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !73, file: !74, line: 1354, baseType: !43, size: 64, offset: 20800)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !73, file: !74, line: 1364, baseType: !150, size: 64, offset: 20864)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !73, file: !74, line: 1365, baseType: !150, size: 64, offset: 20928)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !73, file: !74, line: 1412, baseType: !43, size: 64, offset: 20992)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !73, file: !74, line: 1453, baseType: !1203, size: 64, offset: 21056)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !74, line: 1453, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !73, file: !74, line: 1457, baseType: !1206, size: 64, offset: 21120)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !18, line: 61, size: 576, elements: !1208)
!1208 = !{!1209, !1210, !1229, !1232, !1233, !1266, !1276}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1207, file: !18, line: 62, baseType: !17, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !18, line: 64, baseType: !1211, size: 192, offset: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !18, line: 64, size: 192, elements: !1212)
!1212 = !{!1213, !1224}
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !18, line: 65, baseType: !1214, size: 192)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1211, file: !18, line: 65, size: 192, elements: !1215)
!1215 = !{!1216, !1223}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1214, file: !18, line: 66, baseType: !1217, size: 128)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1218, line: 50, size: 128, elements: !1219)
!1218 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1219 = !{!1220, !1221, !1222}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1217, file: !1218, line: 52, baseType: !43, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1217, file: !1218, line: 54, baseType: !7, size: 32, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1217, file: !1218, line: 55, baseType: !7, size: 32, offset: 96)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1214, file: !18, line: 67, baseType: !43, size: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !18, line: 70, baseType: !1225, size: 192)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1211, file: !18, line: 70, size: 192, elements: !1226)
!1226 = !{!1227, !1228}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1225, file: !18, line: 71, baseType: !749, size: 128, align: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1225, file: !18, line: 72, baseType: !43, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1207, file: !18, line: 76, baseType: !1230, size: 64, offset: 256)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !18, line: 76, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1207, file: !18, line: 77, baseType: !43, size: 64, offset: 320)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1207, file: !18, line: 79, baseType: !1234, size: 64, offset: 384)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1218, line: 25, size: 256, elements: !1236)
!1236 = !{!1237, !1243, !1247}
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !1218, line: 26, baseType: !1238, size: 128)
!1238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !1218, line: 26, size: 128, elements: !1239)
!1239 = !{!1240, !1242}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1238, file: !1218, line: 27, baseType: !1241, size: 128)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 128, elements: !831)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1238, file: !1218, line: 28, baseType: !1241, size: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1235, file: !1218, line: 31, baseType: !1244, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1246)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1218, line: 23, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !1218, line: 33, baseType: !1248, size: 64, offset: 192)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !1218, line: 33, size: 64, elements: !1249)
!1249 = !{!1250, !1256, !1261}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1248, file: !1218, line: 38, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1248, file: !1218, line: 34, size: 64, elements: !1252)
!1252 = !{!1253, !1254, !1255}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1251, file: !1218, line: 35, baseType: !553, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1251, file: !1218, line: 36, baseType: !265, size: 8, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1251, file: !1218, line: 37, baseType: !265, size: 8, offset: 40)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1248, file: !1218, line: 42, baseType: !1257, size: 16)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1248, file: !1218, line: 39, size: 16, elements: !1258)
!1258 = !{!1259, !1260}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1257, file: !1218, line: 40, baseType: !265, size: 8)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1257, file: !1218, line: 41, baseType: !265, size: 8, offset: 8)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1248, file: !1218, line: 46, baseType: !1262, size: 16)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1248, file: !1218, line: 43, size: 16, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1262, file: !1218, line: 44, baseType: !265, size: 8)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1262, file: !1218, line: 45, baseType: !265, size: 8, offset: 8)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1207, file: !18, line: 81, baseType: !1267, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !18, line: 85, size: 384, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274, !1275}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1268, file: !18, line: 86, baseType: !1230, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1268, file: !18, line: 87, baseType: !43, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1268, file: !18, line: 88, baseType: !43, size: 64, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1268, file: !18, line: 89, baseType: !43, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1268, file: !18, line: 90, baseType: !917, size: 8, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1268, file: !18, line: 92, baseType: !1267, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1207, file: !18, line: 82, baseType: !7, size: 32, offset: 512)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !73, file: !74, line: 1463, baseType: !1278, offset: 21184)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !74, line: 739, elements: !461)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !73, file: !74, line: 1470, baseType: !749, size: 128, align: 64, offset: 21184)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !73, file: !74, line: 1471, baseType: !91, size: 32, offset: 21312)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !73, file: !74, line: 1472, baseType: !44, size: 32, offset: 21344)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !73, file: !74, line: 1474, baseType: !72, size: 64, offset: 21376)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !73, file: !74, line: 1475, baseType: !1284, size: 320, offset: 21440)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1285, line: 11, size: 320, elements: !1286)
!1285 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1286 = !{!1287, !1288, !1289, !1294}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1284, file: !1285, line: 16, baseType: !735, size: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1284, file: !1285, line: 17, baseType: !43, size: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1284, file: !1285, line: 18, baseType: !1290, size: 64, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !1293}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1284, file: !1285, line: 19, baseType: !83, size: 32, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !73, file: !74, line: 1478, baseType: !1296, size: 64, offset: 21760)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1298, line: 14, flags: DIFlagFwdDecl)
!1298 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !73, file: !74, line: 1482, baseType: !91, size: 32, offset: 21824)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !73, file: !74, line: 1489, baseType: !40, size: 64, offset: 21888)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !73, file: !74, line: 1504, baseType: !40, size: 64, offset: 21952)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !73, file: !74, line: 1505, baseType: !151, size: 64, offset: 22016)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !73, file: !74, line: 1506, baseType: !150, size: 64, offset: 22080)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !73, file: !74, line: 1507, baseType: !151, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !73, file: !74, line: 1508, baseType: !151, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !73, file: !74, line: 1509, baseType: !151, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !73, file: !74, line: 1510, baseType: !749, size: 128, align: 64, offset: 22208)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !73, file: !74, line: 1511, baseType: !44, size: 32, offset: 22336)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !73, file: !74, line: 1515, baseType: !1310, size: 64, offset: 22400)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !109, line: 56, size: 64, elements: !1311)
!1311 = !{!1312}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1310, file: !109, line: 57, baseType: !112, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !73, file: !74, line: 1518, baseType: !1310, size: 64, offset: 22464)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !73, file: !74, line: 1528, baseType: !749, size: 128, align: 64, offset: 22528)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !73, file: !74, line: 1552, baseType: !1316, size: 35328, offset: 23040)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1317, line: 430, size: 35328, elements: !1318)
!1317 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1318 = !{!1319, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1348, !1349, !1350, !1351, !1352, !1353, !1356, !1357, !1358, !1359}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1316, file: !1317, line: 432, baseType: !1320, size: 192)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1321, size: 192, elements: !810)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1322, line: 16, size: 64, elements: !1323)
!1322 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1323 = !{!1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1321, file: !1322, line: 17, baseType: !119, size: 16)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1321, file: !1322, line: 18, baseType: !119, size: 16, offset: 16)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1321, file: !1322, line: 19, baseType: !119, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1321, file: !1322, line: 19, baseType: !119, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1321, file: !1322, line: 19, baseType: !119, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1321, file: !1322, line: 19, baseType: !119, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1321, file: !1322, line: 19, baseType: !119, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1321, file: !1322, line: 20, baseType: !119, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1321, file: !1322, line: 20, baseType: !119, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1321, file: !1322, line: 20, baseType: !119, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1321, file: !1322, line: 20, baseType: !119, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1321, file: !1322, line: 20, baseType: !119, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1321, file: !1322, line: 20, baseType: !119, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1316, file: !1317, line: 436, baseType: !43, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1316, file: !1317, line: 440, baseType: !121, size: 16, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1316, file: !1317, line: 441, baseType: !121, size: 16, offset: 272)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1316, file: !1317, line: 442, baseType: !121, size: 16, offset: 288)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1316, file: !1317, line: 443, baseType: !121, size: 16, offset: 304)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1316, file: !1317, line: 447, baseType: !43, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1316, file: !1317, line: 448, baseType: !43, size: 64, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1316, file: !1317, line: 459, baseType: !1345, size: 256, offset: 448)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 256, elements: !555)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1317, line: 428, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1316, file: !1317, line: 461, baseType: !43, size: 64, offset: 704)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1316, file: !1317, line: 463, baseType: !43, size: 64, offset: 768)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1316, file: !1317, line: 465, baseType: !43, size: 64, offset: 832)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1316, file: !1317, line: 466, baseType: !43, size: 64, offset: 896)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1316, file: !1317, line: 467, baseType: !43, size: 64, offset: 960)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1316, file: !1317, line: 473, baseType: !1354, size: 64, offset: 1024)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1317, line: 10, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1316, file: !1317, line: 480, baseType: !43, size: 64, offset: 1088)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1316, file: !1317, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1316, file: !1317, line: 491, baseType: !83, size: 32, offset: 1184)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1316, file: !1317, line: 501, baseType: !1360, size: 33792, offset: 1536)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1361, line: 448, size: 33792, elements: !1362)
!1361 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1362 = !{!1363, !1364, !1365, !1533, !1534, !1540, !1541}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1360, file: !1361, line: 461, baseType: !7, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1360, file: !1361, line: 468, baseType: !43, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1360, file: !1361, line: 476, baseType: !1366, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1361, line: 356, size: 33280, align: 512, elements: !1368)
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1367, file: !1361, line: 358, baseType: !7, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1367, file: !1361, line: 361, baseType: !7, size: 32, offset: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1367, file: !1361, line: 364, baseType: !150, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1367, file: !1361, line: 367, baseType: !150, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1367, file: !1361, line: 370, baseType: !150, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1367, file: !1361, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1367, file: !1361, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1367, file: !1361, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1367, file: !1361, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1367, file: !1361, line: 397, baseType: !1379, size: 32768, offset: 512)
!1379 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1361, line: 348, size: 32768, elements: !1380)
!1380 = !{!1381, !1396, !1437, !1514, !1529}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1379, file: !1361, line: 349, baseType: !1382, size: 896)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1361, line: 12, size: 896, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1395}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1382, file: !1361, line: 13, baseType: !83, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1382, file: !1361, line: 14, baseType: !83, size: 32, offset: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1382, file: !1361, line: 15, baseType: !83, size: 32, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1382, file: !1361, line: 16, baseType: !83, size: 32, offset: 96)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1382, file: !1361, line: 17, baseType: !83, size: 32, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1382, file: !1361, line: 18, baseType: !83, size: 32, offset: 160)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1382, file: !1361, line: 19, baseType: !83, size: 32, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1382, file: !1361, line: 22, baseType: !1392, size: 640, offset: 224)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 640, elements: !1393)
!1393 = !{!1394}
!1394 = !DISubrange(count: 20)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1382, file: !1361, line: 25, baseType: !83, size: 32, offset: 864)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1379, file: !1361, line: 350, baseType: !1397, size: 4096, align: 128)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1361, line: 34, size: 4096, align: 128, elements: !1398)
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1418, !1419, !1420, !1424, !1428, !1432}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1397, file: !1361, line: 35, baseType: !119, size: 16)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1397, file: !1361, line: 36, baseType: !119, size: 16, offset: 16)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1397, file: !1361, line: 37, baseType: !119, size: 16, offset: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1397, file: !1361, line: 38, baseType: !119, size: 16, offset: 48)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1397, file: !1361, line: 39, baseType: !1404, size: 128, offset: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1397, file: !1361, line: 39, size: 128, elements: !1405)
!1405 = !{!1406, !1411}
!1406 = !DIDerivedType(tag: DW_TAG_member, scope: !1404, file: !1361, line: 40, baseType: !1407, size: 128)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !1361, line: 40, size: 128, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1407, file: !1361, line: 41, baseType: !150, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1407, file: !1361, line: 42, baseType: !150, size: 64, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, scope: !1404, file: !1361, line: 44, baseType: !1412, size: 128)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !1361, line: 44, size: 128, elements: !1413)
!1413 = !{!1414, !1415, !1416, !1417}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1412, file: !1361, line: 45, baseType: !83, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1412, file: !1361, line: 46, baseType: !83, size: 32, offset: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1412, file: !1361, line: 47, baseType: !83, size: 32, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1412, file: !1361, line: 48, baseType: !83, size: 32, offset: 96)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1397, file: !1361, line: 51, baseType: !83, size: 32, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1397, file: !1361, line: 52, baseType: !83, size: 32, offset: 224)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1397, file: !1361, line: 55, baseType: !1421, size: 1024, offset: 256)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 1024, elements: !1422)
!1422 = !{!1423}
!1423 = !DISubrange(count: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1397, file: !1361, line: 58, baseType: !1425, size: 2048, offset: 1280)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 2048, elements: !1426)
!1426 = !{!1427}
!1427 = !DISubrange(count: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1397, file: !1361, line: 60, baseType: !1429, size: 384, offset: 3328)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 384, elements: !1430)
!1430 = !{!1431}
!1431 = !DISubrange(count: 12)
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1397, file: !1361, line: 62, baseType: !1433, size: 384, offset: 3712)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1397, file: !1361, line: 62, size: 384, elements: !1434)
!1434 = !{!1435, !1436}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1433, file: !1361, line: 63, baseType: !1429, size: 384)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1433, file: !1361, line: 64, baseType: !1429, size: 384)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1379, file: !1361, line: 351, baseType: !1438, size: 1088)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1361, line: 79, size: 1088, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1513}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1438, file: !1361, line: 80, baseType: !83, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1438, file: !1361, line: 81, baseType: !83, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1438, file: !1361, line: 82, baseType: !83, size: 32, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1438, file: !1361, line: 83, baseType: !83, size: 32, offset: 96)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1438, file: !1361, line: 84, baseType: !83, size: 32, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1438, file: !1361, line: 85, baseType: !83, size: 32, offset: 160)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1438, file: !1361, line: 86, baseType: !83, size: 32, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1438, file: !1361, line: 88, baseType: !1392, size: 640, offset: 224)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1438, file: !1361, line: 89, baseType: !265, size: 8, offset: 864)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1438, file: !1361, line: 90, baseType: !265, size: 8, offset: 872)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1438, file: !1361, line: 91, baseType: !265, size: 8, offset: 880)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1438, file: !1361, line: 92, baseType: !265, size: 8, offset: 888)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1438, file: !1361, line: 93, baseType: !265, size: 8, offset: 896)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1438, file: !1361, line: 94, baseType: !265, size: 8, offset: 904)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1438, file: !1361, line: 95, baseType: !1455, size: 64, offset: 960)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1457, line: 11, size: 128, elements: !1458)
!1457 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1456, file: !1457, line: 12, baseType: !659, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1456, file: !1457, line: 13, baseType: !1461, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1463, line: 103, size: 1344, elements: !1464)
!1463 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1464 = !{!1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1493, !1494, !1495}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1462, file: !1463, line: 109, baseType: !43, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1462, file: !1463, line: 110, baseType: !43, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1462, file: !1463, line: 111, baseType: !43, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1462, file: !1463, line: 112, baseType: !43, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1462, file: !1463, line: 113, baseType: !43, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1462, file: !1463, line: 114, baseType: !43, size: 64, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1462, file: !1463, line: 117, baseType: !43, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1462, file: !1463, line: 118, baseType: !43, size: 64, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1462, file: !1463, line: 119, baseType: !43, size: 64, offset: 512)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1462, file: !1463, line: 120, baseType: !43, size: 64, offset: 576)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1462, file: !1463, line: 121, baseType: !43, size: 64, offset: 640)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1462, file: !1463, line: 122, baseType: !43, size: 64, offset: 704)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1462, file: !1463, line: 123, baseType: !43, size: 64, offset: 768)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1462, file: !1463, line: 124, baseType: !43, size: 64, offset: 832)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1462, file: !1463, line: 125, baseType: !43, size: 64, offset: 896)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1462, file: !1463, line: 139, baseType: !43, size: 64, offset: 960)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1462, file: !1463, line: 142, baseType: !43, size: 64, offset: 1024)
!1482 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1463, line: 144, baseType: !1483, size: 64, offset: 1088)
!1483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !1463, line: 144, size: 64, elements: !1484)
!1484 = !{!1485, !1486, !1487}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1483, file: !1463, line: 146, baseType: !119, size: 16)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1483, file: !1463, line: 148, baseType: !150, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1483, file: !1463, line: 150, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1463, line: 59, size: 64, elements: !1489)
!1489 = !{!1490, !1491, !1492}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1488, file: !1463, line: 61, baseType: !150, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1488, file: !1463, line: 63, baseType: !150, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1488, file: !1463, line: 65, baseType: !150, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1462, file: !1463, line: 153, baseType: !43, size: 64, offset: 1152)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1462, file: !1463, line: 154, baseType: !43, size: 64, offset: 1216)
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1463, line: 156, baseType: !1496, size: 64, offset: 1280)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !1463, line: 156, size: 64, elements: !1497)
!1497 = !{!1498, !1499, !1500}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1496, file: !1463, line: 158, baseType: !119, size: 16)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1496, file: !1463, line: 160, baseType: !150, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1496, file: !1463, line: 162, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1463, line: 69, size: 64, elements: !1502)
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1501, file: !1463, line: 71, baseType: !150, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1501, file: !1463, line: 73, baseType: !150, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1501, file: !1463, line: 75, baseType: !150, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1501, file: !1463, line: 77, baseType: !150, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1501, file: !1463, line: 80, baseType: !150, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1501, file: !1463, line: 83, baseType: !150, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1501, file: !1463, line: 86, baseType: !150, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1501, file: !1463, line: 88, baseType: !150, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1501, file: !1463, line: 93, baseType: !150, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1501, file: !1463, line: 100, baseType: !150, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1438, file: !1361, line: 96, baseType: !83, size: 32, offset: 1024)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1379, file: !1361, line: 352, baseType: !1515, size: 4608, align: 512)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1361, line: 333, size: 4608, align: 512, elements: !1516)
!1516 = !{!1517, !1518, !1527}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1515, file: !1361, line: 334, baseType: !1397, size: 4096, align: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1515, file: !1361, line: 335, baseType: !1519, size: 512, offset: 4096)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1361, line: 312, size: 512, elements: !1520)
!1520 = !{!1521, !1522, !1523}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1519, file: !1361, line: 313, baseType: !150, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1519, file: !1361, line: 314, baseType: !150, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1519, file: !1361, line: 315, baseType: !1524, size: 384, offset: 128)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 384, elements: !1525)
!1525 = !{!1526}
!1526 = !DISubrange(count: 6)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1515, file: !1361, line: 336, baseType: !1528, offset: 4608)
!1528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, elements: !627)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1379, file: !1361, line: 353, baseType: !1530, size: 32768)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 32768, elements: !1531)
!1531 = !{!1532}
!1532 = !DISubrange(count: 4096)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1360, file: !1361, line: 484, baseType: !1366, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1360, file: !1361, line: 491, baseType: !1535, size: 128, offset: 256)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1361, line: 404, size: 128, elements: !1536)
!1536 = !{!1537, !1538, !1539}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1535, file: !1361, line: 424, baseType: !150, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1535, file: !1361, line: 432, baseType: !7, size: 32, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1535, file: !1361, line: 440, baseType: !7, size: 32, offset: 96)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1360, file: !1361, line: 498, baseType: !1535, size: 128, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1360, file: !1361, line: 508, baseType: !1367, size: 33280, align: 512, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_regset", file: !1545, line: 200, size: 448, elements: !1546)
!1545 = !DIFile(filename: "./include/linux/regset.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0524d92e3e6b24697a98894d57839a2")
!1546 = !{!1547, !1556, !1563, !1568, !1573, !1574, !1575, !1576, !1577}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "regset_get", scope: !1544, file: !1545, line: 201, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_regset_get2_fn", file: !1545, line: 97, baseType: !1550)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!44, !72, !1542, !1552}
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "membuf", file: !1545, line: 20, size: 128, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1552, file: !1545, line: 21, baseType: !40, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1552, file: !1545, line: 22, baseType: !882, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1544, file: !1545, line: 202, baseType: !1557, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_regset_set_fn", file: !1545, line: 117, baseType: !1559)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!44, !72, !1542, !7, !7, !1561, !1561}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1544, file: !1545, line: 203, baseType: !1564, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_regset_active_fn", file: !1545, line: 94, baseType: !1566)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!44, !72, !1542}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "writeback", scope: !1544, file: !1545, line: 204, baseType: !1569, size: 64, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "user_regset_writeback_fn", file: !1545, line: 143, baseType: !1571)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!44, !72, !1542, !44}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1544, file: !1545, line: 205, baseType: !7, size: 32, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1544, file: !1545, line: 206, baseType: !7, size: 32, offset: 288)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1544, file: !1545, line: 207, baseType: !7, size: 32, offset: 320)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !1544, file: !1545, line: 208, baseType: !7, size: 32, offset: 352)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "core_note_type", scope: !1544, file: !1545, line: 209, baseType: !7, size: 32, offset: 384)
!1578 = !{!1579, !1580, !1581, !1582}
!1579 = !DILocalVariable(name: "target", arg: 1, scope: !69, file: !3, line: 33, type: !72)
!1580 = !DILocalVariable(name: "regset", arg: 2, scope: !69, file: !3, line: 34, type: !1542)
!1581 = !DILocalVariable(name: "size", arg: 3, scope: !69, file: !3, line: 35, type: !7)
!1582 = !DILocalVariable(name: "data", arg: 4, scope: !69, file: !3, line: 36, type: !40)
!1583 = !DILocation(line: 33, column: 36, scope: !69)
!1584 = !DILocation(line: 34, column: 35, scope: !69)
!1585 = !DILocation(line: 35, column: 22, scope: !69)
!1586 = !DILocation(line: 36, column: 15, scope: !69)
!1587 = !DILocation(line: 38, column: 22, scope: !69)
!1588 = !DILocation(line: 38, column: 30, scope: !69)
!1589 = !DILocation(line: 38, column: 38, scope: !69)
!1590 = !DILocation(line: 38, column: 9, scope: !69)
!1591 = !DILocation(line: 38, column: 2, scope: !69)
!1592 = distinct !DISubprogram(name: "__regset_get", scope: !3, file: !3, line: 6, type: !1593, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1596)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!44, !72, !1542, !7, !1595}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602, !1603}
!1597 = !DILocalVariable(name: "target", arg: 1, scope: !1592, file: !3, line: 6, type: !72)
!1598 = !DILocalVariable(name: "regset", arg: 2, scope: !1592, file: !3, line: 7, type: !1542)
!1599 = !DILocalVariable(name: "size", arg: 3, scope: !1592, file: !3, line: 8, type: !7)
!1600 = !DILocalVariable(name: "data", arg: 4, scope: !1592, file: !3, line: 9, type: !1595)
!1601 = !DILocalVariable(name: "p", scope: !1592, file: !3, line: 11, type: !40)
!1602 = !DILocalVariable(name: "to_free", scope: !1592, file: !3, line: 11, type: !40)
!1603 = !DILocalVariable(name: "res", scope: !1592, file: !3, line: 12, type: !44)
!1604 = !DILocation(line: 6, column: 45, scope: !1592)
!1605 = !DILocation(line: 7, column: 30, scope: !1592)
!1606 = !DILocation(line: 8, column: 17, scope: !1592)
!1607 = !DILocation(line: 9, column: 11, scope: !1592)
!1608 = !DILocation(line: 11, column: 2, scope: !1592)
!1609 = !DILocation(line: 11, column: 8, scope: !1592)
!1610 = !DILocation(line: 11, column: 13, scope: !1592)
!1611 = !DILocation(line: 11, column: 12, scope: !1592)
!1612 = !DILocation(line: 11, column: 20, scope: !1592)
!1613 = !DILocation(line: 12, column: 2, scope: !1592)
!1614 = !DILocation(line: 12, column: 6, scope: !1592)
!1615 = !DILocation(line: 14, column: 7, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 14, column: 6)
!1617 = !DILocation(line: 14, column: 15, scope: !1616)
!1618 = !DILocation(line: 14, column: 6, scope: !1592)
!1619 = !DILocation(line: 15, column: 3, scope: !1616)
!1620 = !DILocation(line: 16, column: 6, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 16, column: 6)
!1622 = !DILocation(line: 16, column: 13, scope: !1621)
!1623 = !DILocation(line: 16, column: 21, scope: !1621)
!1624 = !DILocation(line: 16, column: 25, scope: !1621)
!1625 = !DILocation(line: 16, column: 33, scope: !1621)
!1626 = !DILocation(line: 16, column: 23, scope: !1621)
!1627 = !DILocation(line: 16, column: 11, scope: !1621)
!1628 = !DILocation(line: 16, column: 6, scope: !1592)
!1629 = !DILocation(line: 17, column: 10, scope: !1621)
!1630 = !DILocation(line: 17, column: 18, scope: !1621)
!1631 = !DILocation(line: 17, column: 22, scope: !1621)
!1632 = !DILocation(line: 17, column: 30, scope: !1621)
!1633 = !DILocation(line: 17, column: 20, scope: !1621)
!1634 = !DILocation(line: 17, column: 8, scope: !1621)
!1635 = !DILocation(line: 17, column: 3, scope: !1621)
!1636 = !DILocation(line: 18, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 18, column: 6)
!1638 = !DILocation(line: 18, column: 6, scope: !1592)
!1639 = !DILocation(line: 19, column: 25, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 18, column: 10)
!1641 = !DILocation(line: 19, column: 17, scope: !1640)
!1642 = !DILocation(line: 19, column: 15, scope: !1640)
!1643 = !DILocation(line: 19, column: 11, scope: !1640)
!1644 = !DILocation(line: 20, column: 8, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 20, column: 7)
!1646 = !DILocation(line: 20, column: 7, scope: !1640)
!1647 = !DILocation(line: 21, column: 4, scope: !1645)
!1648 = !DILocation(line: 22, column: 2, scope: !1640)
!1649 = !DILocation(line: 23, column: 8, scope: !1592)
!1650 = !DILocation(line: 23, column: 16, scope: !1592)
!1651 = !DILocation(line: 23, column: 27, scope: !1592)
!1652 = !DILocation(line: 23, column: 35, scope: !1592)
!1653 = !DILocation(line: 24, column: 22, scope: !1592)
!1654 = !DILocation(line: 24, column: 28, scope: !1592)
!1655 = !DILocation(line: 24, column: 39, scope: !1592)
!1656 = !DILocation(line: 23, column: 6, scope: !1592)
!1657 = !DILocation(line: 25, column: 6, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 25, column: 6)
!1659 = !DILocation(line: 25, column: 10, scope: !1658)
!1660 = !DILocation(line: 25, column: 6, scope: !1592)
!1661 = !DILocation(line: 26, column: 9, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 25, column: 15)
!1663 = !DILocation(line: 26, column: 3, scope: !1662)
!1664 = !DILocation(line: 27, column: 10, scope: !1662)
!1665 = !DILocation(line: 27, column: 3, scope: !1662)
!1666 = !DILocation(line: 29, column: 10, scope: !1592)
!1667 = !DILocation(line: 29, column: 3, scope: !1592)
!1668 = !DILocation(line: 29, column: 8, scope: !1592)
!1669 = !DILocation(line: 30, column: 9, scope: !1592)
!1670 = !DILocation(line: 30, column: 16, scope: !1592)
!1671 = !DILocation(line: 30, column: 14, scope: !1592)
!1672 = !DILocation(line: 30, column: 2, scope: !1592)
!1673 = !DILocation(line: 31, column: 1, scope: !1592)
!1674 = distinct !DISubprogram(name: "regset_get_alloc", scope: !3, file: !3, line: 42, type: !1593, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1675)
!1675 = !{!1676, !1677, !1678, !1679}
!1676 = !DILocalVariable(name: "target", arg: 1, scope: !1674, file: !3, line: 42, type: !72)
!1677 = !DILocalVariable(name: "regset", arg: 2, scope: !1674, file: !3, line: 43, type: !1542)
!1678 = !DILocalVariable(name: "size", arg: 3, scope: !1674, file: !3, line: 44, type: !7)
!1679 = !DILocalVariable(name: "data", arg: 4, scope: !1674, file: !3, line: 45, type: !1595)
!1680 = !DILocation(line: 42, column: 42, scope: !1674)
!1681 = !DILocation(line: 43, column: 34, scope: !1674)
!1682 = !DILocation(line: 44, column: 21, scope: !1674)
!1683 = !DILocation(line: 45, column: 15, scope: !1674)
!1684 = !DILocation(line: 47, column: 3, scope: !1674)
!1685 = !DILocation(line: 47, column: 8, scope: !1674)
!1686 = !DILocation(line: 48, column: 22, scope: !1674)
!1687 = !DILocation(line: 48, column: 30, scope: !1674)
!1688 = !DILocation(line: 48, column: 38, scope: !1674)
!1689 = !DILocation(line: 48, column: 44, scope: !1674)
!1690 = !DILocation(line: 48, column: 9, scope: !1674)
!1691 = !DILocation(line: 48, column: 2, scope: !1674)
!1692 = distinct !DISubprogram(name: "copy_regset_to_user", scope: !3, file: !3, line: 61, type: !1693, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1707)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!44, !72, !1695, !7, !7, !7, !40}
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1697)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_regset_view", file: !1545, line: 230, size: 256, elements: !1698)
!1698 = !{!1699, !1702, !1703, !1704, !1705, !1706}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1697, file: !1545, line: 231, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "regsets", scope: !1697, file: !1545, line: 232, baseType: !1542, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1697, file: !1545, line: 233, baseType: !7, size: 32, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "e_flags", scope: !1697, file: !1545, line: 234, baseType: !83, size: 32, offset: 160)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "e_machine", scope: !1697, file: !1545, line: 235, baseType: !119, size: 16, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ei_osabi", scope: !1697, file: !1545, line: 236, baseType: !265, size: 8, offset: 208)
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716}
!1708 = !DILocalVariable(name: "target", arg: 1, scope: !1692, file: !3, line: 61, type: !72)
!1709 = !DILocalVariable(name: "view", arg: 2, scope: !1692, file: !3, line: 62, type: !1695)
!1710 = !DILocalVariable(name: "setno", arg: 3, scope: !1692, file: !3, line: 63, type: !7)
!1711 = !DILocalVariable(name: "offset", arg: 4, scope: !1692, file: !3, line: 64, type: !7)
!1712 = !DILocalVariable(name: "size", arg: 5, scope: !1692, file: !3, line: 64, type: !7)
!1713 = !DILocalVariable(name: "data", arg: 6, scope: !1692, file: !3, line: 65, type: !40)
!1714 = !DILocalVariable(name: "regset", scope: !1692, file: !3, line: 67, type: !1542)
!1715 = !DILocalVariable(name: "buf", scope: !1692, file: !3, line: 68, type: !40)
!1716 = !DILocalVariable(name: "ret", scope: !1692, file: !3, line: 69, type: !44)
!1717 = !DILocation(line: 61, column: 45, scope: !1692)
!1718 = !DILocation(line: 62, column: 35, scope: !1692)
!1719 = !DILocation(line: 63, column: 17, scope: !1692)
!1720 = !DILocation(line: 64, column: 17, scope: !1692)
!1721 = !DILocation(line: 64, column: 38, scope: !1692)
!1722 = !DILocation(line: 65, column: 17, scope: !1692)
!1723 = !DILocation(line: 67, column: 2, scope: !1692)
!1724 = !DILocation(line: 67, column: 28, scope: !1692)
!1725 = !DILocation(line: 67, column: 38, scope: !1692)
!1726 = !DILocation(line: 67, column: 44, scope: !1692)
!1727 = !DILocation(line: 67, column: 52, scope: !1692)
!1728 = !DILocation(line: 68, column: 2, scope: !1692)
!1729 = !DILocation(line: 68, column: 8, scope: !1692)
!1730 = !DILocation(line: 69, column: 2, scope: !1692)
!1731 = !DILocation(line: 69, column: 6, scope: !1692)
!1732 = !DILocation(line: 71, column: 25, scope: !1692)
!1733 = !DILocation(line: 71, column: 33, scope: !1692)
!1734 = !DILocation(line: 71, column: 41, scope: !1692)
!1735 = !DILocation(line: 71, column: 8, scope: !1692)
!1736 = !DILocation(line: 71, column: 6, scope: !1692)
!1737 = !DILocation(line: 72, column: 6, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 72, column: 6)
!1739 = !DILocation(line: 72, column: 10, scope: !1738)
!1740 = !DILocation(line: 72, column: 6, scope: !1692)
!1741 = !DILocation(line: 73, column: 22, scope: !1738)
!1742 = !DILocation(line: 73, column: 28, scope: !1738)
!1743 = !DILocation(line: 73, column: 33, scope: !1738)
!1744 = !DILocation(line: 73, column: 9, scope: !1738)
!1745 = !DILocation(line: 73, column: 7, scope: !1738)
!1746 = !DILocation(line: 73, column: 3, scope: !1738)
!1747 = !DILocation(line: 74, column: 8, scope: !1692)
!1748 = !DILocation(line: 74, column: 2, scope: !1692)
!1749 = !DILocation(line: 75, column: 9, scope: !1692)
!1750 = !DILocation(line: 76, column: 1, scope: !1692)
!1751 = !DILocation(line: 75, column: 2, scope: !1692)
!1752 = distinct !DISubprogram(name: "copy_to_user", scope: !1753, file: !1753, line: 188, type: !1754, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1756)
!1753 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!43, !40, !1561, !43}
!1756 = !{!1757, !1758, !1759}
!1757 = !DILocalVariable(name: "to", arg: 1, scope: !1752, file: !1753, line: 188, type: !40)
!1758 = !DILocalVariable(name: "from", arg: 2, scope: !1752, file: !1753, line: 188, type: !1561)
!1759 = !DILocalVariable(name: "n", arg: 3, scope: !1752, file: !1753, line: 188, type: !43)
!1760 = !DILocation(line: 188, column: 27, scope: !1752)
!1761 = !DILocation(line: 188, column: 43, scope: !1752)
!1762 = !DILocation(line: 188, column: 63, scope: !1752)
!1763 = !DILocation(line: 190, column: 22, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1752, file: !1753, line: 190, column: 6)
!1765 = !DILocation(line: 190, column: 28, scope: !1764)
!1766 = !DILocation(line: 190, column: 6, scope: !1764)
!1767 = !DILocation(line: 190, column: 6, scope: !1752)
!1768 = !DILocation(line: 191, column: 21, scope: !1764)
!1769 = !DILocation(line: 191, column: 25, scope: !1764)
!1770 = !DILocation(line: 191, column: 31, scope: !1764)
!1771 = !DILocation(line: 191, column: 7, scope: !1764)
!1772 = !DILocation(line: 191, column: 5, scope: !1764)
!1773 = !DILocation(line: 191, column: 3, scope: !1764)
!1774 = !DILocation(line: 192, column: 9, scope: !1752)
!1775 = !DILocation(line: 192, column: 2, scope: !1752)
!1776 = !DISubprogram(name: "kfree", scope: !30, file: !30, line: 227, type: !1777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{null, !1561}
!1779 = distinct !DISubprogram(name: "kzalloc", scope: !30, file: !30, line: 719, type: !1780, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1782)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!40, !882, !41}
!1782 = !{!1783, !1784}
!1783 = !DILocalVariable(name: "size", arg: 1, scope: !1779, file: !30, line: 719, type: !882)
!1784 = !DILocalVariable(name: "flags", arg: 2, scope: !1779, file: !30, line: 719, type: !41)
!1785 = !DILocation(line: 719, column: 52, scope: !1779)
!1786 = !DILocation(line: 719, column: 64, scope: !1779)
!1787 = !DILocation(line: 721, column: 17, scope: !1779)
!1788 = !DILocation(line: 721, column: 23, scope: !1779)
!1789 = !DILocation(line: 721, column: 29, scope: !1779)
!1790 = !DILocation(line: 721, column: 9, scope: !1779)
!1791 = !DILocation(line: 721, column: 2, scope: !1779)
!1792 = distinct !DISubprogram(name: "kmalloc", scope: !30, file: !30, line: 591, type: !1780, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1793)
!1793 = !{!1794, !1795, !1796}
!1794 = !DILocalVariable(name: "size", arg: 1, scope: !1792, file: !30, line: 591, type: !882)
!1795 = !DILocalVariable(name: "flags", arg: 2, scope: !1792, file: !30, line: 591, type: !41)
!1796 = !DILocalVariable(name: "index", scope: !1797, file: !30, line: 594, type: !7)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !30, line: 593, column: 42)
!1798 = distinct !DILexicalBlock(scope: !1792, file: !30, line: 593, column: 6)
!1799 = !DILocation(line: 591, column: 61, scope: !1792)
!1800 = !DILocation(line: 591, column: 73, scope: !1792)
!1801 = !DILocation(line: 593, column: 27, scope: !1798)
!1802 = !DILocation(line: 593, column: 6, scope: !1798)
!1803 = !DILocation(line: 593, column: 33, scope: !1798)
!1804 = !DILocation(line: 593, column: 36, scope: !1798)
!1805 = !DILocation(line: 593, column: 6, scope: !1792)
!1806 = !DILocation(line: 594, column: 3, scope: !1797)
!1807 = !DILocation(line: 594, column: 16, scope: !1797)
!1808 = !DILocation(line: 596, column: 7, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1797, file: !30, line: 596, column: 7)
!1810 = !DILocation(line: 596, column: 12, scope: !1809)
!1811 = !DILocation(line: 596, column: 7, scope: !1797)
!1812 = !DILocation(line: 597, column: 25, scope: !1809)
!1813 = !DILocation(line: 597, column: 31, scope: !1809)
!1814 = !DILocation(line: 597, column: 11, scope: !1809)
!1815 = !DILocation(line: 597, column: 4, scope: !1809)
!1816 = !DILocation(line: 599, column: 11, scope: !1797)
!1817 = !DILocation(line: 599, column: 9, scope: !1797)
!1818 = !DILocation(line: 601, column: 33, scope: !1797)
!1819 = !DILocation(line: 601, column: 40, scope: !1797)
!1820 = !DILocation(line: 601, column: 20, scope: !1797)
!1821 = !DILocation(line: 601, column: 5, scope: !1797)
!1822 = !DILocation(line: 601, column: 51, scope: !1797)
!1823 = !DILocation(line: 602, column: 5, scope: !1797)
!1824 = !DILocation(line: 602, column: 12, scope: !1797)
!1825 = !DILocation(line: 600, column: 10, scope: !1797)
!1826 = !DILocation(line: 600, column: 3, scope: !1797)
!1827 = !DILocation(line: 603, column: 2, scope: !1798)
!1828 = !DILocation(line: 604, column: 19, scope: !1792)
!1829 = !DILocation(line: 604, column: 25, scope: !1792)
!1830 = !DILocation(line: 604, column: 9, scope: !1792)
!1831 = !DILocation(line: 604, column: 2, scope: !1792)
!1832 = !DILocation(line: 605, column: 1, scope: !1792)
!1833 = !DISubprogram(name: "kmalloc_large", scope: !30, file: !30, line: 531, type: !1780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1834 = distinct !DISubprogram(name: "__kmalloc_index", scope: !30, file: !30, line: 444, type: !1835, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1837)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!7, !882, !917}
!1837 = !{!1838, !1839}
!1838 = !DILocalVariable(name: "size", arg: 1, scope: !1834, file: !30, line: 444, type: !882)
!1839 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1834, file: !30, line: 445, type: !917)
!1840 = !DILocation(line: 444, column: 60, scope: !1834)
!1841 = !DILocation(line: 445, column: 16, scope: !1834)
!1842 = !DILocation(line: 447, column: 7, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 447, column: 6)
!1844 = !DILocation(line: 447, column: 6, scope: !1834)
!1845 = !DILocation(line: 448, column: 3, scope: !1843)
!1846 = !DILocation(line: 450, column: 6, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 450, column: 6)
!1848 = !DILocation(line: 450, column: 11, scope: !1847)
!1849 = !DILocation(line: 450, column: 6, scope: !1834)
!1850 = !DILocation(line: 451, column: 3, scope: !1847)
!1851 = !DILocation(line: 453, column: 32, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 453, column: 6)
!1853 = !DILocation(line: 453, column: 37, scope: !1852)
!1854 = !DILocation(line: 453, column: 42, scope: !1852)
!1855 = !DILocation(line: 453, column: 45, scope: !1852)
!1856 = !DILocation(line: 453, column: 50, scope: !1852)
!1857 = !DILocation(line: 453, column: 6, scope: !1834)
!1858 = !DILocation(line: 454, column: 3, scope: !1852)
!1859 = !DILocation(line: 455, column: 32, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 455, column: 6)
!1861 = !DILocation(line: 455, column: 37, scope: !1860)
!1862 = !DILocation(line: 455, column: 43, scope: !1860)
!1863 = !DILocation(line: 455, column: 46, scope: !1860)
!1864 = !DILocation(line: 455, column: 51, scope: !1860)
!1865 = !DILocation(line: 455, column: 6, scope: !1834)
!1866 = !DILocation(line: 456, column: 3, scope: !1860)
!1867 = !DILocation(line: 457, column: 6, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 457, column: 6)
!1869 = !DILocation(line: 457, column: 11, scope: !1868)
!1870 = !DILocation(line: 457, column: 6, scope: !1834)
!1871 = !DILocation(line: 457, column: 26, scope: !1868)
!1872 = !DILocation(line: 458, column: 6, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 458, column: 6)
!1874 = !DILocation(line: 458, column: 11, scope: !1873)
!1875 = !DILocation(line: 458, column: 6, scope: !1834)
!1876 = !DILocation(line: 458, column: 26, scope: !1873)
!1877 = !DILocation(line: 459, column: 6, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 459, column: 6)
!1879 = !DILocation(line: 459, column: 11, scope: !1878)
!1880 = !DILocation(line: 459, column: 6, scope: !1834)
!1881 = !DILocation(line: 459, column: 26, scope: !1878)
!1882 = !DILocation(line: 460, column: 6, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 460, column: 6)
!1884 = !DILocation(line: 460, column: 11, scope: !1883)
!1885 = !DILocation(line: 460, column: 6, scope: !1834)
!1886 = !DILocation(line: 460, column: 26, scope: !1883)
!1887 = !DILocation(line: 461, column: 6, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 461, column: 6)
!1889 = !DILocation(line: 461, column: 11, scope: !1888)
!1890 = !DILocation(line: 461, column: 6, scope: !1834)
!1891 = !DILocation(line: 461, column: 26, scope: !1888)
!1892 = !DILocation(line: 462, column: 6, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 462, column: 6)
!1894 = !DILocation(line: 462, column: 11, scope: !1893)
!1895 = !DILocation(line: 462, column: 6, scope: !1834)
!1896 = !DILocation(line: 462, column: 26, scope: !1893)
!1897 = !DILocation(line: 463, column: 6, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 463, column: 6)
!1899 = !DILocation(line: 463, column: 11, scope: !1898)
!1900 = !DILocation(line: 463, column: 6, scope: !1834)
!1901 = !DILocation(line: 463, column: 26, scope: !1898)
!1902 = !DILocation(line: 464, column: 6, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 464, column: 6)
!1904 = !DILocation(line: 464, column: 11, scope: !1903)
!1905 = !DILocation(line: 464, column: 6, scope: !1834)
!1906 = !DILocation(line: 464, column: 26, scope: !1903)
!1907 = !DILocation(line: 465, column: 6, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 465, column: 6)
!1909 = !DILocation(line: 465, column: 11, scope: !1908)
!1910 = !DILocation(line: 465, column: 6, scope: !1834)
!1911 = !DILocation(line: 465, column: 26, scope: !1908)
!1912 = !DILocation(line: 466, column: 6, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 466, column: 6)
!1914 = !DILocation(line: 466, column: 11, scope: !1913)
!1915 = !DILocation(line: 466, column: 6, scope: !1834)
!1916 = !DILocation(line: 466, column: 26, scope: !1913)
!1917 = !DILocation(line: 467, column: 6, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 467, column: 6)
!1919 = !DILocation(line: 467, column: 11, scope: !1918)
!1920 = !DILocation(line: 467, column: 6, scope: !1834)
!1921 = !DILocation(line: 467, column: 26, scope: !1918)
!1922 = !DILocation(line: 468, column: 6, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 468, column: 6)
!1924 = !DILocation(line: 468, column: 11, scope: !1923)
!1925 = !DILocation(line: 468, column: 6, scope: !1834)
!1926 = !DILocation(line: 468, column: 26, scope: !1923)
!1927 = !DILocation(line: 469, column: 6, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 469, column: 6)
!1929 = !DILocation(line: 469, column: 11, scope: !1928)
!1930 = !DILocation(line: 469, column: 6, scope: !1834)
!1931 = !DILocation(line: 469, column: 26, scope: !1928)
!1932 = !DILocation(line: 470, column: 6, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 470, column: 6)
!1934 = !DILocation(line: 470, column: 11, scope: !1933)
!1935 = !DILocation(line: 470, column: 6, scope: !1834)
!1936 = !DILocation(line: 470, column: 26, scope: !1933)
!1937 = !DILocation(line: 471, column: 6, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 471, column: 6)
!1939 = !DILocation(line: 471, column: 11, scope: !1938)
!1940 = !DILocation(line: 471, column: 6, scope: !1834)
!1941 = !DILocation(line: 471, column: 26, scope: !1938)
!1942 = !DILocation(line: 472, column: 6, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 472, column: 6)
!1944 = !DILocation(line: 472, column: 11, scope: !1943)
!1945 = !DILocation(line: 472, column: 6, scope: !1834)
!1946 = !DILocation(line: 472, column: 26, scope: !1943)
!1947 = !DILocation(line: 473, column: 6, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 473, column: 6)
!1949 = !DILocation(line: 473, column: 11, scope: !1948)
!1950 = !DILocation(line: 473, column: 6, scope: !1834)
!1951 = !DILocation(line: 473, column: 26, scope: !1948)
!1952 = !DILocation(line: 474, column: 6, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 474, column: 6)
!1954 = !DILocation(line: 474, column: 11, scope: !1953)
!1955 = !DILocation(line: 474, column: 6, scope: !1834)
!1956 = !DILocation(line: 474, column: 27, scope: !1953)
!1957 = !DILocation(line: 475, column: 6, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 475, column: 6)
!1959 = !DILocation(line: 475, column: 11, scope: !1958)
!1960 = !DILocation(line: 475, column: 6, scope: !1834)
!1961 = !DILocation(line: 475, column: 32, scope: !1958)
!1962 = !DILocation(line: 477, column: 50, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1834, file: !30, line: 477, column: 6)
!1964 = !{i8 0, i8 2}
!1965 = !DILocation(line: 477, column: 6, scope: !1834)
!1966 = !DILocation(line: 478, column: 3, scope: !1963)
!1967 = !DILocation(line: 478, column: 3, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !30, line: 478, column: 3)
!1969 = distinct !DILexicalBlock(scope: !1963, file: !30, line: 478, column: 3)
!1970 = !{i32 -2143568662}
!1971 = !DILocation(line: 478, column: 3, scope: !1969)
!1972 = !DILocation(line: 480, column: 3, scope: !1963)
!1973 = !DILocation(line: 480, column: 3, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1963, file: !30, line: 480, column: 3)
!1975 = !DILocation(line: 480, column: 3, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1974, file: !30, line: 480, column: 3)
!1977 = !DILocation(line: 480, column: 3, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1974, file: !30, line: 480, column: 3)
!1979 = !{i64 2151398837, i64 2151398866, i64 2151398912, i64 2151398970, i64 2151399024, i64 2151399078, i64 2151399133, i64 2151399164}
!1980 = !DILocation(line: 483, column: 2, scope: !1834)
!1981 = !DILocation(line: 484, column: 1, scope: !1834)
!1982 = !DISubprogram(name: "kmalloc_trace", scope: !30, file: !30, line: 525, type: !1983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!40, !1985, !41, !882}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1298, line: 11, flags: DIFlagFwdDecl)
!1987 = distinct !DISubprogram(name: "kmalloc_type", scope: !30, file: !30, line: 401, type: !1988, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1990)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!29, !41, !43}
!1990 = !{!1991, !1992}
!1991 = !DILocalVariable(name: "flags", arg: 1, scope: !1987, file: !30, line: 401, type: !41)
!1992 = !DILocalVariable(name: "caller", arg: 2, scope: !1987, file: !30, line: 401, type: !43)
!1993 = !DILocation(line: 401, column: 67, scope: !1987)
!1994 = !DILocation(line: 401, column: 88, scope: !1987)
!1995 = !DILocation(line: 407, column: 6, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1987, file: !30, line: 407, column: 6)
!1997 = !DILocation(line: 407, column: 6, scope: !1987)
!1998 = !DILocation(line: 413, column: 3, scope: !1996)
!1999 = !DILocation(line: 423, column: 38, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1987, file: !30, line: 423, column: 6)
!2001 = !DILocation(line: 423, column: 44, scope: !2000)
!2002 = !DILocation(line: 423, column: 6, scope: !1987)
!2003 = !DILocation(line: 424, column: 3, scope: !2000)
!2004 = !DILocation(line: 426, column: 3, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1987, file: !30, line: 425, column: 6)
!2006 = !DILocation(line: 429, column: 1, scope: !1987)
!2007 = !DISubprogram(name: "__kmalloc", scope: !30, file: !30, line: 488, type: !1780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2008 = !DISubprogram(name: "__compiletime_assert_117", scope: !30, file: !30, line: 478, type: !2009, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{null}
!2011 = distinct !DISubprogram(name: "check_copy_size", scope: !56, file: !56, line: 237, type: !2012, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2014)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!917, !1561, !882, !917}
!2014 = !{!2015, !2016, !2017, !2018, !2019, !2022}
!2015 = !DILocalVariable(name: "addr", arg: 1, scope: !2011, file: !56, line: 237, type: !1561)
!2016 = !DILocalVariable(name: "bytes", arg: 2, scope: !2011, file: !56, line: 237, type: !882)
!2017 = !DILocalVariable(name: "is_source", arg: 3, scope: !2011, file: !56, line: 237, type: !917)
!2018 = !DILocalVariable(name: "sz", scope: !2011, file: !56, line: 239, type: !44)
!2019 = !DILocalVariable(name: "__ret_warn_on", scope: !2020, file: !56, line: 249, type: !44)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !56, line: 249, column: 6)
!2021 = distinct !DILexicalBlock(scope: !2011, file: !56, line: 249, column: 6)
!2022 = !DILocalVariable(name: "__flags", scope: !2023, file: !56, line: 249, type: !44)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !56, line: 249, column: 6)
!2024 = distinct !DILexicalBlock(scope: !2020, file: !56, line: 249, column: 6)
!2025 = !DILocation(line: 237, column: 29, scope: !2011)
!2026 = !DILocation(line: 237, column: 42, scope: !2011)
!2027 = !DILocation(line: 237, column: 54, scope: !2011)
!2028 = !DILocation(line: 239, column: 2, scope: !2011)
!2029 = !DILocation(line: 239, column: 6, scope: !2011)
!2030 = !DILocation(line: 239, column: 33, scope: !2011)
!2031 = !DILocation(line: 239, column: 11, scope: !2011)
!2032 = !DILocation(line: 240, column: 6, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2011, file: !56, line: 240, column: 6)
!2034 = !DILocation(line: 0, scope: !2033)
!2035 = !DILocation(line: 240, column: 6, scope: !2011)
!2036 = !DILocation(line: 241, column: 29, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !56, line: 241, column: 7)
!2038 = distinct !DILexicalBlock(scope: !2033, file: !56, line: 240, column: 39)
!2039 = !DILocation(line: 241, column: 8, scope: !2037)
!2040 = !DILocation(line: 241, column: 7, scope: !2038)
!2041 = !DILocation(line: 242, column: 18, scope: !2037)
!2042 = !DILocation(line: 242, column: 22, scope: !2037)
!2043 = !DILocation(line: 242, column: 4, scope: !2037)
!2044 = !DILocation(line: 243, column: 12, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2037, file: !56, line: 243, column: 12)
!2046 = !DILocation(line: 243, column: 12, scope: !2037)
!2047 = !DILocation(line: 244, column: 4, scope: !2045)
!2048 = !{i32 897685}
!2049 = !DILocation(line: 246, column: 4, scope: !2045)
!2050 = !{i32 897714}
!2051 = !DILocation(line: 247, column: 3, scope: !2038)
!2052 = !DILocation(line: 249, column: 6, scope: !2020)
!2053 = !DILocation(line: 249, column: 6, scope: !2024)
!2054 = !DILocation(line: 249, column: 6, scope: !2023)
!2055 = !DILocation(line: 249, column: 6, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2023, file: !56, line: 249, column: 6)
!2057 = !DILocation(line: 249, column: 6, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2023, file: !56, line: 249, column: 6)
!2059 = !{i64 2149534715, i64 2149534744, i64 2149534790, i64 2149534848, i64 2149534902, i64 2149534956, i64 2149535011, i64 2149535042, i64 2149535350, i64 2149535356, i64 2149535403, i64 2149535426, i64 2149535452}
!2060 = !DILocation(line: 249, column: 6, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2023, file: !56, line: 249, column: 6)
!2062 = !DILocation(line: 249, column: 6, scope: !2021)
!2063 = !DILocation(line: 249, column: 6, scope: !2011)
!2064 = !DILocation(line: 250, column: 3, scope: !2021)
!2065 = !DILocation(line: 251, column: 20, scope: !2011)
!2066 = !DILocation(line: 251, column: 26, scope: !2011)
!2067 = !DILocation(line: 251, column: 33, scope: !2011)
!2068 = !DILocation(line: 251, column: 2, scope: !2011)
!2069 = !DILocation(line: 252, column: 2, scope: !2011)
!2070 = !DILocation(line: 253, column: 1, scope: !2011)
!2071 = !DISubprogram(name: "_copy_to_user", scope: !1753, file: !1753, line: 176, type: !1754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2072 = distinct !DISubprogram(name: "copy_overflow", scope: !56, file: !56, line: 230, type: !2073, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2075)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{null, !44, !43}
!2075 = !{!2076, !2077}
!2076 = !DILocalVariable(name: "size", arg: 1, scope: !2072, file: !56, line: 230, type: !44)
!2077 = !DILocalVariable(name: "count", arg: 2, scope: !2072, file: !56, line: 230, type: !43)
!2078 = !DILocation(line: 230, column: 38, scope: !2072)
!2079 = !DILocation(line: 230, column: 58, scope: !2072)
!2080 = !DILocation(line: 233, column: 19, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2072, file: !56, line: 232, column: 6)
!2082 = !DILocation(line: 233, column: 25, scope: !2081)
!2083 = !DILocation(line: 233, column: 3, scope: !2081)
!2084 = !DILocation(line: 234, column: 1, scope: !2072)
!2085 = !DISubprogram(name: "__bad_copy_from", scope: !56, file: !56, line: 224, type: !2009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2086 = !DISubprogram(name: "__bad_copy_to", scope: !56, file: !56, line: 226, type: !2009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2087 = distinct !DISubprogram(name: "check_object_size", scope: !56, file: !56, line: 218, type: !2088, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2090)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !1561, !43, !917}
!2090 = !{!2091, !2092, !2093}
!2091 = !DILocalVariable(name: "ptr", arg: 1, scope: !2087, file: !56, line: 218, type: !1561)
!2092 = !DILocalVariable(name: "n", arg: 2, scope: !2087, file: !56, line: 218, type: !43)
!2093 = !DILocalVariable(name: "to_user", arg: 3, scope: !2087, file: !56, line: 219, type: !917)
!2094 = !DILocation(line: 218, column: 50, scope: !2087)
!2095 = !DILocation(line: 218, column: 69, scope: !2087)
!2096 = !DILocation(line: 219, column: 15, scope: !2087)
!2097 = !DILocation(line: 220, column: 3, scope: !2087)
!2098 = !DISubprogram(name: "__copy_overflow", scope: !56, file: !56, line: 228, type: !2073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
